# -*- encoding: utf-8; frozen_string_literal: true -*-
#
#--
# This file is part of HexaPDF.
#
# HexaPDF - A Versatile PDF Creation and Manipulation Library For Ruby
# Copyright (C) 2014-2024 Thomas Leitner
#
# HexaPDF is free software: you can redistribute it and/or modify it
# under the terms of the GNU Affero General Public License version 3 as
# published by the Free Software Foundation with the addition of the
# following permission added to Section 15 as permitted in Section 7(a):
# FOR ANY PART OF THE COVERED WORK IN WHICH THE COPYRIGHT IS OWNED BY
# THOMAS LEITNER, THOMAS LEITNER DISCLAIMS THE WARRANTY OF NON
# INFRINGEMENT OF THIRD PARTY RIGHTS.
#
# HexaPDF is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public
# License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with HexaPDF. If not, see <http://www.gnu.org/licenses/>.
#
# The interactive user interfaces in modified source and object code
# versions of HexaPDF must display Appropriate Legal Notices, as required
# under Section 5 of the GNU Affero General Public License version 3.
#
# In accordance with Section 7(b) of the GNU Affero General Public
# License, a covered work must retain the producer line in every PDF that
# is created or manipulated using HexaPDF.
#
# If the GNU Affero General Public License doesn't fit your need,
# commercial licenses are available at <https://gettalong.at/hexapdf/>.
#++

require 'hexapdf/dictionary'

module HexaPDF
  module Type

    # Represents an output intent dictionary.
    #
    # Such a dictionary may be referenced from the catalog's /OutputIntents entry or from the
    # /OutputIntents entry of a page object.
    #
    # See: PDF2.0 s14.11.5, Catalog
    class OutputIntent < Dictionary

      # Represents a destination output profile reference dictionary.
      #
      # Such a dictionary is referenced from the /DestOutputProfileRef entry of an OutputIntent
      # dictionary.
      #
      # See: PDF2.0 s14.11.5
      class DestOutputProfileRef < Dictionary

        define_type :XXDestOutputProfileRef

        define_field :CheckSum,      type: String,   version: "2.0"
        define_field :ColorantTable, type: PDFArray, version: "2.0"
        define_field :ICCVersion,    type: String,   version: "2.0"
        define_field :ProfileCS,     type: String,   version: "2.0"
        define_field :ProfileName,   type: String,   version: "2.0"
        define_field :URLs,          type: PDFArray, version: "2.0"

      end

      define_type :OutputIntent

      define_field :Type, type: Symbol, required: false, default: type
      define_field :S,    type: Symbol, required: true
      define_field :OutputCondition,           type: String
      define_field :OutputConditionIdentifier, type: String, required: true
      define_field :RegistryName, type: String
      define_field :Info,         type: String
      define_field :DestOutputProfile,    type: Stream
      define_field :DestOutputProfileRef, type: :XXDestOutputProfileRef, version: "2.0"
      define_field :MixingHints,          type: Dictionary, version: "2.0"
      define_field :SpectralData,         type: Dictionary, version: "2.0"

    end

  end
end
