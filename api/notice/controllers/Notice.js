'use strict';

/**
 * Notice.js controller
 *
 * @description: A set of functions called "actions" for managing `Notice`.
 */

module.exports = {

  /**
   * Retrieve notice records.
   *
   * @return {Object|Array}
   */

  find: async (ctx, next, { populate } = {}) => {
    if (ctx.query._q) {
      return strapi.services.notice.search(ctx.query);
    } else {
      return strapi.services.notice.fetchAll(ctx.query, populate);
    }
  },

  /**
   * Retrieve a notice record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.notice.fetch(ctx.params);
  },

  /**
   * Count notice records.
   *
   * @return {Number}
   */

  count: async (ctx, next, { populate } = {}) => {
    return strapi.services.notice.count(ctx.query, populate);
  },

  /**
   * Create a/an notice record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.notice.add(ctx.request.body);
  },

  /**
   * Update a/an notice record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.notice.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an notice record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.notice.remove(ctx.params);
  }
};
