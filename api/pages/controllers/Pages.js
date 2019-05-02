'use strict';

/**
 * Pages.js controller
 *
 * @description: A set of functions called "actions" for managing `Pages`.
 */

module.exports = {

  /**
   * Retrieve pages records.
   *
   * @return {Object|Array}
   */

  find: async (ctx, next, { populate } = {}) => {
    if (ctx.query._q) {
      return strapi.services.pages.search(ctx.query);
    } else {
      return strapi.services.pages.fetchAll(ctx.query, populate);
    }
  },

  /**
   * Retrieve a pages record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.pages.fetch(ctx.params);
  },

  /**
   * Count pages records.
   *
   * @return {Number}
   */

  count: async (ctx, next, { populate } = {}) => {
    return strapi.services.pages.count(ctx.query, populate);
  },

  /**
   * Create a/an pages record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.pages.add(ctx.request.body);
  },

  /**
   * Update a/an pages record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.pages.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an pages record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.pages.remove(ctx.params);
  }
};
