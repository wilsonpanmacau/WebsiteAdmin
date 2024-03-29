using System;
using System.Collections.Generic;
using XueFu.Model;

namespace XueFu.IDAL
{
    public interface IArticle
    {        
        int AddArticle(ArticleInfo article);
        void DeleteArticle(string strID);
        ArticleInfo ReadArticle(int id);
        List<ArticleInfo> SearchArticleList(ArticleSearchInfo articleSearch);
        List<ArticleInfo> SearchArticleList(int currentPage, int pageSize, ArticleSearchInfo article, ref int count);
        void UpdateArticle(ArticleInfo article);
    }
}
