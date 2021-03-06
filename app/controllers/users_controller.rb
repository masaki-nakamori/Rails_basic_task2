class UsersController < ApplicationController
    #一覧画面に対応するアクション
    def index
        #userクラスのデータを全て持ってくる
        @users = User.all
    end
    #新規作成画面に対応するアクション
    def new
        @user = User.new
    end

    #新規登録するためのアクション
    def create
        User.create(user_params)
    end

    def edit
        @user = User.find(params[:id])
    end

    #更新を行うためのアクション
    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

    #削除をするためのアクション
    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private
    def user_params
        #データベースに登録する変数を制限する
        params.require(:user).permit(:name, :age)
    end
end
