module Stupidedi
  module Values

    class AbstractVal
      include Inspect
      include Color

      # @return [SimpleElementDef, CompositeElementDef, LoopDef, SegmentDef, TableDef]
      abstract :definition

      # @see X222.pdf B.1.3.10 Absence of Data
      abstract :empty?

      abstract :leaf?

      # Number of segments in this subtree
      #
      # @return [Integer]
      abstract :size

      # True except for {InvalidSegmentVal} and {AbstractElementVal} values
      # that could not be parsed -- "abc" in a numeric field, for example.
      def valid?
        true
      end

      def invalid?
        not valid?
      end

      # Is the element not blank?
      def present?
        not empty?
      end

      # Is the element not present?
      def blank?
        empty?
      end

      # Is this a {TransmissionVal}?
      def transmission?
        false
      end

      # Is this an {InterchangeVal}?
      def interchange?
        false
      end

      # Is this an {FunctionalGroupVal}?
      def functional_group?
        false
      end

      # Is this an {TransactionSetVal}?
      def transaction_set?
        false
      end

      # Is this a {TableVal}?
      def table?
        false
      end

      # Is this a {LoopVal}?
      def loop?
        false
      end

      # Is this a {SegmentVal} or {InvalidSegmentVal}?
      def segment?
        false
      end

      # Is this a {AbstractElementVal}?
      def element?
        false
      end

      # Is this a {CompositeElementVal}?
      def composite?
        false
      end

      # Is this a component {SimpleElementVal}?
      def component?
        false
      end

      # Is this a repeated {AbstractElementVal}?
      def repeated?
        false
      end

      # Is this a non-component {SimpleElementVal}?
      def simple?
        false
      end
    end

  end
end
