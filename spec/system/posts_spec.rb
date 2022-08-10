require 'rails_helper'

RSpec.describe 'Posts', type: :system do
  describe '一覧表示機能' do
    let(:user) { create(:user) }
    let(:post) { create(:post) }

    describe 'ログイン前' do
      describe 'ページ遷移確認' do
        context '投稿の新規登録ページにアクセス' do
          it '新規登録ページへのアクセスが失敗する' do
            visit new_post_path
            expect(current_path).to eq login_path
          end
        end
        context '投稿の一覧ページにアクセス' do
          it 'すべてのユーザーの投稿情報が表示される' do
            posts = create_list(:post, 3)
            visit posts_path
            expect(page).to have_content posts[0].id
            expect(page).to have_content posts[1].id
            expect(page).to have_content posts[2].id
            expect(current_path).to eq posts_path
          end
        end
        context '投稿の詳細ページにアクセス' do
          it '投稿の詳細情報が表示される' do
            visit post_path(post)
            expect(page).to have_content post.body
            expect(current_path).to eq post_path(post)
          end
        end
      end
    end
  end
end
