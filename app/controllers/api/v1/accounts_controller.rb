# frozen_string_literal: true

module Api
  module V1
    class AccountsController < ApplicationController
      before_action :set_account, only: %i[show update destroy]

      def index
        @accounts = Account.all

        render json: @accounts
      end

      def show
        render json: @account
      end

      def create
        @account = Account.new(account_params)

        if @account.save
          render json: @account, status: :created, location: @account
        else
          render json: @account.errors, status: :unprocessable_entity
        end
      end

      def update
        if @account.update(account_params)
          render json: @account
        else
          render json: @account.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @account.destroy
      end

      private

      def set_account
        @account = Account.find(params[:id])
      end

      def account_params
        params.fetch(:account, {})
      end
    end
  end
end
