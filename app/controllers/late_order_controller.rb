class LateOrderController < ApplicationController
  def dashboard
    @main = Lateorder.all
    d = Time.now.strftime("%Y-%m-%d 00:00:00")
    @today = Lateorder.where(sale_date: d).all
    @today = @today.sort_by { |a| [ a.group_id, a.sls_rep ] }
    @main = @main.sort_by { |a| [ a.group_id, a.sls_rep ] }
    get_totals
  end

  def get_totals
    first = true
    @total_array = []
    current_group = ' '
    current_rep = ' '
    current_cutoff = ' '
    group_count = 1
    rep_count = 1
    group_total = Hash.new
    rep_total = Hash.new
    @main.each do |s|
      if first
        current_group = s.group_id
        current_rep = s.sls_rep
        current_cutoff = s.cutoff_time.strftime("%I:%M:%S %p")
        first = false
      elsif current_group != s.group_id
        group_total = { :group => current_group, :rep => ' ', :count => group_count, :cutoff_time => current_cutoff }
        rep_total = { :group => current_group, :rep => current_rep, :count => rep_count, :cutoff_time => current_cutoff }
        @total_array.push(rep_total)
        @total_array.push(group_total)
        current_group = s.group_id
        current_rep = s.sls_rep
        current_cutoff = s.cutoff_time.strftime("%I:%M:%S %p")
        group_count = 1
        rep_count = 1
      elsif current_rep != s.sls_rep
        rep_total = { :group => current_group, :rep => current_rep, :count => rep_count, :cutoff_time => current_cutoff }
        @total_array.push(rep_total)
        current_rep = s.sls_rep
        rep_count = 1
        group_count += 1
      else
        group_count += 1
        rep_count += 1
      end
    end
    group_total = { :group => current_group, :rep => ' ', :count => group_count, :cutoff_time => current_cutoff }
    rep_total = { :group => current_group, :rep => current_rep, :count => rep_count, :cutoff_time => current_cutoff }
    @total_array.push(rep_total)
    @total_array.push(group_total)
  end

end
