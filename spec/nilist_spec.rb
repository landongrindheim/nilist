require "spec_helper"

describe Nilist do
  context "when sent a message from Object's interface" do
    describe "#instance_of?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.instance_of? Nilist }.to raise_error(UnprovableError)
      end
    end

    describe "#kind_of?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.kind_of? Nilist }.to raise_error(UnprovableError)
      end
    end

    describe "#is_a?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.is_a? Nilist }.to raise_error(UnprovableError)
      end
    end

    describe "#tap" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.tap {}).to be_nil
      end
    end

    describe "#public_send" do
      context "when given a predicate method name as an argument" do
        it "raises UnprovableError" do
          nilist = Nilist.new

          expect { nilist.public_send(:nil?) }.to raise_error(UnprovableError)
        end
      end

      context "when given a non-predicate method name as an argument" do
        it "returns nil" do
          nilist = Nilist.new

          expect(nilist.public_send(:foo)).to be_nil
        end
      end
    end

    describe "#remove_instance_variable" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.remove_instance_variable(:@truth)).to be_nil
      end
    end

    describe "#singleton_method" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.singleton_method(:foo)).to be_nil
      end
    end

    describe "#instance_variable_set" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.instance_variable_set(:@truth, true)).to be_nil
      end
    end

    describe "#define_singleton_method" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.defind_singleton_method(:truth) { true }).to be_nil
      end
    end

    describe "#method" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.method(:itself)).to be_nil
      end
    end

    describe "#public_method" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.public_method(:tap)).to be_nil
      end
    end

    describe "#extend" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.extend(Enumerable)).to be_nil
      end
    end

    describe "#to_enum" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.to_enum).to be_nil
      end
    end

    describe "#enum_for" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.enum_for).to be_nil
      end
    end

    describe "#<=>" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist <=> nilist).to be_nil
      end
    end

    describe "#===" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist === nilist).to be_nil
      end
    end

    describe "#=~" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist =~ nilist).to be_nil
      end
    end

    describe "#!~" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist !~ true).to be_nil
      end
    end

    describe "#eql?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.eql?(42) }.to raise_error(UnprovableError)
      end
    end

    describe "#respond_to?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.respond_to?(:foo) }.to raise_error(UnprovableError)
      end
    end

    describe "#freeze" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.freeze).to be_nil
      end
    end

    describe "#inspect" do
      it "returns typical Ruby object presentation" do
        nilist = Nilist.new
        object_display_regex = /#<Nilist:[[:alnum:]]+>/

        expect(nilist.inspect).to match(object_display_regex)
      end
    end

    describe "#object_id" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.object_id).to be_nil
      end
    end

    describe "#send" do
      context "when given a predicate method name as an argument" do
        it "raises UnprovableError" do
          nilist = Nilist.new

          expect { nilist.send(:nil?) }.to raise_error(UnprovableError)
        end
      end

      context "when given a non-predicate method name as an argument" do
        it "returns nil" do
          nilist = Nilist.new

          expect(nilist.send(:foo)).to be_nil
        end
      end
    end

    describe "#display" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.display).to be_nil
      end
    end

    describe "#to_s" do
      it "returns typical Ruby object presentation" do
        nilist = Nilist.new

        expect(nilist.to_s).to be_nil
      end
    end

    describe "#nil?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.nil? }.to raise_error(UnprovableError)
      end
    end

    describe "#hash" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.hash).to be_nil
      end
    end

    describe "#class" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.class).to be_nil
      end
    end

    describe "#singleton_class" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.singleton_class).to be_nil
      end
    end

    describe "#clone" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.clone).to be_nil
      end
    end

    describe "#dup" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.dup).to be_nil
      end
    end

    describe "#itself" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.itself).to be_nil
      end
    end

    describe "#taint" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.taint).to be_nil
      end
    end

    describe "#tainted?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.tainted? }.to raise_error(UnprovableError)
      end
    end

    describe "#untaint" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.untaint).to be_nil
      end
    end

    describe "#untrust" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.untrust).to be_nil
      end
    end

    describe "#untrusted?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.untrusted? }.to raise_error(UnprovableError)
      end
    end

    describe "#trust" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.trust).to be_nil
      end
    end

    describe "#frozen?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.frozen? }.to raise_error(UnprovableError)
      end
    end

    describe "#methods" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.methods).to be_nil
      end
    end

    describe "#singleton_methods" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.singleton_methods).to be_nil
      end
    end

    describe "#protected_methods" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.protected_methods).to be_nil
      end
    end

    describe "#private_methods" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.private_methods).to be_nil
      end
    end

    describe "#public_methods" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.public_methods).to be_nil
      end
    end

    describe "#instance_variable_get" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.instance_variable_get(:@truth)).to be_nil
      end
    end

    describe "#instance_variables" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.instance_variables).to be_nil
      end
    end

    describe "#instance_variable_defined?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.instance_variable_defined?(:@truth) }.
          to raise_error(UnprovableError)
      end
    end

    describe "#!" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.!).to be_nil
      end
    end

    describe "#==" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist == nilist).to be_nil
      end
    end

    describe "#!=" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist != nilist).to be_nil
      end
    end

    describe "#__send__" do
      context "when given a predicate method name as an argument" do
        it "raises UnprovableError" do
          nilist = Nilist.new

          expect { nilist.__send__(:nil?) }.to raise_error(UnprovableError)
        end

      end

      context "when given a non-predicate method name as an argument" do
        it "returns nil" do
          nilist = Nilist.new

          expect(nilist.__send__(:foo)).to be_nil
        end
      end
    end

    describe "#equal?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.equal?(42) }.to raise_error(UnprovableError)
      end
    end

    describe "#instance_eval" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.instance_eval(true)).to be_nil
      end
    end

    describe "#instance_exec" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.instance_exec("true")).to be_nil
      end
    end

    describe "#__id__" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.__id__).to be_nil
      end
    end
  end

  context "when passed a message not iherited from object" do
    describe "#upcase" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.upcase).to be_nil
      end
    end

    describe "#reduce" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.reduce(:+)).to be_nil
      end
    end

    describe "#map" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.map(&:itself)).to be_nil
      end
    end

    describe "#non_existent_method" do
      it "returns nil" do
        nilist = Nilist.new

        expect(nilist.non_existent_method).to be_nil
      end
    end

    describe "#exist?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.exist? }.to raise_error(UnprovableError)
      end
    end

    describe "#present?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.present? }.to raise_error(UnprovableError)
      end
    end

    describe "#blank?" do
      it "raises UnprovableError" do
        nilist = Nilist.new

        expect { nilist.blank? }.to raise_error(UnprovableError)
      end
    end
  end
end
