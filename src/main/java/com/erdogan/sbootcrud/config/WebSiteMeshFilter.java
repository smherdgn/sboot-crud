package com.erdogan.sbootcrud.config;
/**
 * Created by IntelliJ IDEA.
 * User: ibrahim
 * Date: 7.03.2018
 * Time: 22:47
 */
import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.sitemesh.content.tagrules.html.DivExtractingTagRuleBundle;

public class WebSiteMeshFilter extends ConfigurableSiteMeshFilter {

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/*", "/resources/decorators/default-decorator.jsp")
                .addExcludedPath("/resources/decorators/*")
                .addExcludedPath("/views/admin/*")
                .addTagRuleBundle(new DivExtractingTagRuleBundle());

        builder.addDecoratorPath("/admin/*", "/resources/decorators/admin-decorator.jsp")
                .addExcludedPath("/resources/decorators/*")
                .addExcludedPath("/user/*");
    }
}
