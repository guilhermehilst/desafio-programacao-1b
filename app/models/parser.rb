class Parser
  def initialize(args)
    @file = args.fetch(:file)
  end

  def parse_file
      lines = @file.split(/\n/)
      # removing header
      lines.shift.split(/\t/)
      sales = Array.new
      total = 0
      lines.each do |line|
        values = line.split(/\t/)
        sale = Sale.create( buyer: values[0].to_s, 
                            description: values[1].to_s, 
                            price: values[2].to_f, 
                            amount: values[3].to_i, 
                            address: values[4].to_s, 
                            provider: values[5].to_s )
        total += values[2].to_f * values[3].to_i
        sales.push(sale)
      end
      return sales,total
    end
end