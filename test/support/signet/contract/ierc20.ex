defmodule Signet.Contract.IERC20 do
  @moduledoc ~S"""
  This module was auto-generated by Signet. Any changes may be lost.

  See `mix help signet.gen` for more information.
  """
  use Signet.Hex

  def contract_name do
    "IERC20"
  end

  def allowance_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "allowance",
      function_type: :function,
      returns: [%{name: "", type: {:uint, 256}}],
      state_mutability: :view,
      types: [%{name: "owner", type: :address}, %{name: "spender", type: :address}]
    }
  end

  def encode_allowance(owner, spender) do
    ABI.encode(allowance_selector(), [owner, spender])
  end

  def prepare_allowance(contract, owner, spender, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_allowance(owner, spender), opts)
  end

  def build_trx_allowance(contract, owner, spender) do
    %Signet.Transaction.V2{destination: contract, data: encode_allowance(owner, spender)}
  end

  def call_allowance(contract, owner, spender, opts \\ []) do
    Signet.RPC.call_trx(build_trx_allowance(contract, owner, spender), opts)
  end

  def estimate_gas_allowance(contract, owner, spender, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_allowance(contract, owner, spender), opts)
  end

  def execute_allowance(contract, owner, spender, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_allowance(owner, spender), opts)
  end

  def decode_allowance_call(<<221, 98, 237, 62>> <> calldata) do
    ABI.decode(allowance_selector(), calldata)
  end

  def approve_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "approve",
      function_type: :function,
      returns: [%{name: "", type: :bool}],
      state_mutability: :nonpayable,
      types: [%{name: "spender", type: :address}, %{name: "amount", type: {:uint, 256}}]
    }
  end

  def encode_approve(spender, amount) do
    ABI.encode(approve_selector(), [spender, amount])
  end

  def prepare_approve(contract, spender, amount, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_approve(spender, amount), opts)
  end

  def build_trx_approve(contract, spender, amount) do
    %Signet.Transaction.V2{destination: contract, data: encode_approve(spender, amount)}
  end

  def call_approve(contract, spender, amount, opts \\ []) do
    Signet.RPC.call_trx(build_trx_approve(contract, spender, amount), opts)
  end

  def estimate_gas_approve(contract, spender, amount, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_approve(contract, spender, amount), opts)
  end

  def execute_approve(contract, spender, amount, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_approve(spender, amount), opts)
  end

  def decode_approve_call(<<9, 94, 167, 179>> <> calldata) do
    ABI.decode(approve_selector(), calldata)
  end

  def balance_of_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "balanceOf",
      function_type: :function,
      returns: [%{name: "", type: {:uint, 256}}],
      state_mutability: :view,
      types: [%{name: "account", type: :address}]
    }
  end

  def encode_balance_of(account) do
    ABI.encode(balance_of_selector(), [account])
  end

  def prepare_balance_of(contract, account, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_balance_of(account), opts)
  end

  def build_trx_balance_of(contract, account) do
    %Signet.Transaction.V2{destination: contract, data: encode_balance_of(account)}
  end

  def call_balance_of(contract, account, opts \\ []) do
    Signet.RPC.call_trx(build_trx_balance_of(contract, account), opts)
  end

  def estimate_gas_balance_of(contract, account, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_balance_of(contract, account), opts)
  end

  def execute_balance_of(contract, account, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_balance_of(account), opts)
  end

  def decode_balance_of_call(<<112, 160, 130, 49>> <> calldata) do
    ABI.decode(balance_of_selector(), calldata)
  end

  def decimals_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "decimals",
      function_type: :function,
      returns: [%{name: "", type: {:uint, 8}}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_decimals() do
    ABI.encode(decimals_selector(), [])
  end

  def prepare_decimals(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_decimals(), opts)
  end

  def build_trx_decimals(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_decimals()}
  end

  def call_decimals(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_decimals(contract), opts)
  end

  def estimate_gas_decimals(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_decimals(contract), opts)
  end

  def execute_decimals(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_decimals(), opts)
  end

  def decode_decimals_call(<<49, 60, 229, 103>> <> calldata) do
    ABI.decode(decimals_selector(), calldata)
  end

  def name_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "name",
      function_type: :function,
      returns: [%{name: "", type: :string}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_name() do
    ABI.encode(name_selector(), [])
  end

  def prepare_name(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_name(), opts)
  end

  def build_trx_name(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_name()}
  end

  def call_name(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_name(contract), opts)
  end

  def estimate_gas_name(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_name(contract), opts)
  end

  def execute_name(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_name(), opts)
  end

  def decode_name_call(<<6, 253, 222, 3>> <> calldata) do
    ABI.decode(name_selector(), calldata)
  end

  def symbol_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "symbol",
      function_type: :function,
      returns: [%{name: "", type: :string}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_symbol() do
    ABI.encode(symbol_selector(), [])
  end

  def prepare_symbol(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_symbol(), opts)
  end

  def build_trx_symbol(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_symbol()}
  end

  def call_symbol(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_symbol(contract), opts)
  end

  def estimate_gas_symbol(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_symbol(contract), opts)
  end

  def execute_symbol(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_symbol(), opts)
  end

  def decode_symbol_call(<<149, 216, 155, 65>> <> calldata) do
    ABI.decode(symbol_selector(), calldata)
  end

  def total_supply_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "totalSupply",
      function_type: :function,
      returns: [%{name: "", type: {:uint, 256}}],
      state_mutability: :view,
      types: []
    }
  end

  def encode_total_supply() do
    ABI.encode(total_supply_selector(), [])
  end

  def prepare_total_supply(contract, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_total_supply(), opts)
  end

  def build_trx_total_supply(contract) do
    %Signet.Transaction.V2{destination: contract, data: encode_total_supply()}
  end

  def call_total_supply(contract, opts \\ []) do
    Signet.RPC.call_trx(build_trx_total_supply(contract), opts)
  end

  def estimate_gas_total_supply(contract, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_total_supply(contract), opts)
  end

  def execute_total_supply(contract, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_total_supply(), opts)
  end

  def decode_total_supply_call(<<24, 22, 13, 221>> <> calldata) do
    ABI.decode(total_supply_selector(), calldata)
  end

  def transfer_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "transfer",
      function_type: :function,
      returns: [%{name: "", type: :bool}],
      state_mutability: :nonpayable,
      types: [%{name: "to", type: :address}, %{name: "amount", type: {:uint, 256}}]
    }
  end

  def encode_transfer(to, amount) do
    ABI.encode(transfer_selector(), [to, amount])
  end

  def prepare_transfer(contract, to, amount, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_transfer(to, amount), opts)
  end

  def build_trx_transfer(contract, to, amount) do
    %Signet.Transaction.V2{destination: contract, data: encode_transfer(to, amount)}
  end

  def call_transfer(contract, to, amount, opts \\ []) do
    Signet.RPC.call_trx(build_trx_transfer(contract, to, amount), opts)
  end

  def estimate_gas_transfer(contract, to, amount, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_transfer(contract, to, amount), opts)
  end

  def execute_transfer(contract, to, amount, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_transfer(to, amount), opts)
  end

  def decode_transfer_call(<<169, 5, 156, 187>> <> calldata) do
    ABI.decode(transfer_selector(), calldata)
  end

  def transfer_from_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "transferFrom",
      function_type: :function,
      returns: [%{name: "", type: :bool}],
      state_mutability: :nonpayable,
      types: [
        %{name: "from", type: :address},
        %{name: "to", type: :address},
        %{name: "amount", type: {:uint, 256}}
      ]
    }
  end

  def encode_transfer_from(from, to, amount) do
    ABI.encode(transfer_from_selector(), [from, to, amount])
  end

  def prepare_transfer_from(contract, from, to, amount, opts \\ []) do
    Signet.RPC.prepare_trx(contract, encode_transfer_from(from, to, amount), opts)
  end

  def build_trx_transfer_from(contract, from, to, amount) do
    %Signet.Transaction.V2{destination: contract, data: encode_transfer_from(from, to, amount)}
  end

  def call_transfer_from(contract, from, to, amount, opts \\ []) do
    Signet.RPC.call_trx(build_trx_transfer_from(contract, from, to, amount), opts)
  end

  def estimate_gas_transfer_from(contract, from, to, amount, opts \\ []) do
    Signet.RPC.estimate_gas(build_trx_transfer_from(contract, from, to, amount), opts)
  end

  def execute_transfer_from(contract, from, to, amount, opts \\ []) do
    Signet.RPC.execute_trx(contract, encode_transfer_from(from, to, amount), opts)
  end

  def decode_transfer_from_call(<<35, 184, 114, 221>> <> calldata) do
    ABI.decode(transfer_from_selector(), calldata)
  end

  def approval_event_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "Approval",
      function_type: :event,
      returns: nil,
      state_mutability: nil,
      types: [
        %{indexed: true, name: "owner", type: :address},
        %{indexed: true, name: "spender", type: :address},
        %{indexed: false, name: "value", type: {:uint, 256}}
      ]
    }
  end

  def encode_approval_event(owner, spender, value) do
    ABI.encode(approval_event_selector(), [owner, spender, value])
  end

  def decode_approval_event(topics, data) when is_list(topics) do
    ABI.Event.decode_event(data, topics, approval_event_selector())
  end

  def transfer_ddf252ad_event_selector() do
    %{
      __struct__: ABI.FunctionSelector,
      function: "Transfer",
      function_type: :event,
      returns: nil,
      state_mutability: nil,
      types: [
        %{indexed: true, name: "from", type: :address},
        %{indexed: true, name: "to", type: :address},
        %{indexed: false, name: "value", type: {:uint, 256}}
      ]
    }
  end

  def encode_transfer_ddf252ad_event(from, to, value) do
    ABI.encode(transfer_ddf252ad_event_selector(), [from, to, value])
  end

  def decode_transfer_ddf252ad_event(topics, data) when is_list(topics) do
    ABI.Event.decode_event(data, topics, transfer_ddf252ad_event_selector())
  end

  def decode_call(calldata = <<221, 98, 237, 62>> <> _) do
    {:ok, "allowance", decode_allowance_call(calldata)}
  end

  def decode_call(calldata = <<9, 94, 167, 179>> <> _) do
    {:ok, "approve", decode_approve_call(calldata)}
  end

  def decode_call(calldata = <<112, 160, 130, 49>> <> _) do
    {:ok, "balanceOf", decode_balance_of_call(calldata)}
  end

  def decode_call(calldata = <<49, 60, 229, 103>> <> _) do
    {:ok, "decimals", decode_decimals_call(calldata)}
  end

  def decode_call(calldata = <<6, 253, 222, 3>> <> _) do
    {:ok, "name", decode_name_call(calldata)}
  end

  def decode_call(calldata = <<149, 216, 155, 65>> <> _) do
    {:ok, "symbol", decode_symbol_call(calldata)}
  end

  def decode_call(calldata = <<24, 22, 13, 221>> <> _) do
    {:ok, "totalSupply", decode_total_supply_call(calldata)}
  end

  def decode_call(calldata = <<169, 5, 156, 187>> <> _) do
    {:ok, "transfer", decode_transfer_call(calldata)}
  end

  def decode_call(calldata = <<35, 184, 114, 221>> <> _) do
    {:ok, "transferFrom", decode_transfer_from_call(calldata)}
  end

  def decode_call(_) do
    :not_found
  end

  def decode_event(
        topics = [
          <<140, 91, 225, 229, 235, 236, 125, 91, 209, 79, 113, 66, 125, 30, 132, 243, 221, 3, 20,
            192, 247, 178, 41, 30, 91, 32, 10, 200, 199, 195, 185, 37>>
          | _
        ],
        data
      ) do
    decode_approval_event(topics, data)
  end

  def decode_event(
        topics = [
          <<221, 242, 82, 173, 27, 226, 200, 155, 105, 194, 176, 104, 252, 55, 141, 170, 149, 43,
            167, 241, 99, 196, 161, 22, 40, 245, 90, 77, 245, 35, 179, 239>>
          | _
        ],
        data
      ) do
    decode_transfer_ddf252ad_event(topics, data)
  end

  def decode_event(_, _) do
    :not_found
  end

  def decode_error(_) do
    :not_found
  end
end
