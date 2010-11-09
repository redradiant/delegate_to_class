module DelegateToClass
  def delegation_receiver
    self.class
  end

  def method_missing(method, *args, &block)
    delegation_receiver.respond_to?(method) ? delegation_receiver.send(method, *args, &block) : super(method, *args, &block)
  end
end
