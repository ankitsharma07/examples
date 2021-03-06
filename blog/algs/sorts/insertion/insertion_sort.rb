# Copyright 2016 Google
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'pry'

class Array
  def insertion_sort
    sorted = []

    self.each do |item|
      (0..sorted.length).each do |index|
        if sorted.fetch(index, Float::INFINITY) > item then
          sorted.insert index, item
          break
        end
      end
    end

    sorted
  end

  def insertion_sort!
    (1...self.length).each do |i|
      j = i
      while j > 0 and self[j - 1] > self[j]
        self[j], self[j - 1] = self[j - 1], self[j]
        j -= 1
      end
    end
  end
end
