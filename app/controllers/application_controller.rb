class ApplicationController < ActionController::Base
    before_action :request_path

def request_path
    @path = controller_path + '#' + action_name
    def @path.is(*str)
        # str.map{|s| self.include?(s)}の部分は
        # 引数でコントローラ名とアクション名を配列で取得。順番に現在のcontrollerとactionである@pathと一致するか判定。
        # もし一致すれば[true]と配列で帰ってくるので、さらにtrueがincludeされているか判定。=>true or false
        # str.map{|s| @path.include?(s)}
        str.map{|s| self.include?(s)}.include?(true)
    end
end
end
