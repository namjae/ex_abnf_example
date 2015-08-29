defmodule ABNFApp do
  @moduledoc """
  Main module. A simple application to demonstrate the use of ex_abnf.

      Copyright 2015 Marcelo Gornstein <marcelog@gmail.com>
      Licensed under the Apache License, Version 2.0 (the "License");
      you may not use this file except in compliance with the License.
      You may obtain a copy of the License at
      http://www.apache.org/licenses/LICENSE-2.0
      Unless required by applicable law or agreed to in writing, software
      distributed under the License is distributed on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
      See the License for the specific language governing permissions and
      limitations under the License.
  """
  def init() do
    my_priv = :code.priv_dir :ex_abnf_example
    ABNF.load_file "#{my_priv}/postal_code.abnf"
  end

  def parse(grammar, input, rule \\ "postal-address") do
    ABNF.apply grammar, rule, input, %{}
  end
end