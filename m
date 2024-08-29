Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A109649B3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D512B419CA;
	Thu, 29 Aug 2024 15:17:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_CADWOBnF2Z; Thu, 29 Aug 2024 15:17:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2F8C4197C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724944677;
	bh=pfITCTrpRVwMQQVPIyVLo+2A+KZDKRqqLpBaZRwHqWk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tp3iskPjLMk3xTHIsz3tYZlB8JUljnLz0qM7+3e61yGNE7KmPbPGYeCtoL5ICBcrT
	 Jv4Y8s3yDRpiYBq6WMzkeHR8ZCzyv3JlLBmM+0L+IGhbS3pKvRS/BCFsKleDoPycIU
	 WAs244gO7in7lmGfIwylXWsl2XxhYBHMdbsI3myNj/PfL8Md77Zfne3yBRhqOizgCo
	 6Otrk+2yL3+zPkZzE4qZR16MH2TmBXpyEQzufJtnG8MuvL45qVPMfZxOj1adY9cfc9
	 b9PX7EoTIrB9B4KWZG9E0PrZZ9GbbA/zm0Rcww6zur8PiBbo2vjksLRnLK1nSHEt6B
	 YOxV3mTXtL3CQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2F8C4197C;
	Thu, 29 Aug 2024 15:17:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33B951BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20CC4404AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:17:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y4KSNhDs8dvf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 15:17:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7BF134016D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BF134016D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BF134016D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:17:54 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-583-f-vbMuBfMeCwDLb69UyxIw-1; Thu,
 29 Aug 2024 11:17:50 -0400
X-MC-Unique: f-vbMuBfMeCwDLb69UyxIw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 12C8E19560A2; Thu, 29 Aug 2024 15:17:48 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.217])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 14311300019C; Thu, 29 Aug 2024 15:17:42 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 29 Aug 2024 17:16:57 +0200
Message-ID: <f67b0502e7e9e9e8452760c4d3ad7cdac648ecda.1724944117.git.pabeni@redhat.com>
In-Reply-To: <cover.1724944116.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724944673;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pfITCTrpRVwMQQVPIyVLo+2A+KZDKRqqLpBaZRwHqWk=;
 b=R5OQoYzUKO36bBCBBkA2uiYGFPOLHij3/rKmk6g+pKX2CME1mcAvRy0nWHSa0XMOzXur3Z
 DlXgfbDIvFf7ek4mbJV00wzY5nGO+5q95jFrwFqiisqLt+Ka9sUCVjkyDaNoUcmUS4/2B8
 Cr5/Jde7IVZl1D971j/y7HrAKK9D870=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=R5OQoYzU
Subject: [Intel-wired-lan] [PATCH v5 net-next 04/12] net-shapers: implement
 NL group operation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow grouping multiple leaves shaper under the given root.
The root and the leaves shapers are created, if needed, otherwise
the existing shapers are re-linked as requested.

Try hard to pre-allocated the needed resources, to avoid non
trivial H/W configuration rollbacks in case of any failure.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v4 -> v5:
 - replace net_device* with binding* in most helpers
 - factor out net_shaper_fill_binding() helper for re-use in later patch
 - move most sanity check at parse time and use NL_SET_BAD_ATTR
 - reused net_shaper_fill_handle() in net_shaper_group_send_reply()
   instead of open-coding it.

v3 -> v4:
 - cleanup left-over scope node shaper after re-link, as needed
 - add locking
 - separate arguments for shaper handle

RFC v2 -> RFC v3:
 - dev_put() -> netdev_put()
---
 net/shaper/shaper.c | 348 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 346 insertions(+), 2 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index a58bdd2ec013..f5e8464b8408 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -72,6 +72,24 @@ net_shaper_binding_ops(struct net_shaper_binding *binding)
 	return NULL;
 }
 
+/* Count the number of [multi] attributes of the given type. */
+static int net_shaper_list_len(struct genl_info *info, int type)
+{
+	struct nlattr *attr;
+	int rem, cnt = 0;
+
+	nla_for_each_attr_type(attr, type, genlmsg_data(info->genlhdr),
+			       genlmsg_len(info->genlhdr), rem)
+		cnt++;
+	return cnt;
+}
+
+static int net_shaper_handle_size(void)
+{
+	return nla_total_size(nla_total_size(sizeof(u32)) +
+			      nla_total_size(sizeof(u32)));
+}
+
 static int net_shaper_fill_binding(struct sk_buff *msg,
 				   const struct net_shaper_binding *binding,
 				   u32 type)
@@ -359,6 +377,29 @@ static void net_shaper_cache_commit(struct net_shaper_binding *binding,
 	xa_unlock(&data->shapers);
 }
 
+/* Rollback all the tentative inserts from the shaper cache. */
+static void net_shaper_cache_rollback(struct net_shaper_binding *binding)
+{
+	struct net_shaper_data *data = net_shaper_binding_data(binding);
+	struct net_shaper_handle handle;
+	struct net_shaper_info *cur;
+	unsigned long index;
+
+	if (!data)
+		return;
+
+	xa_lock(&data->shapers);
+	xa_for_each_marked(&data->shapers, index, cur,
+			   NET_SHAPER_CACHE_NOT_VALID) {
+		net_shaper_index_to_handle(index, &handle);
+		if (handle.scope == NET_SHAPER_SCOPE_NODE)
+			idr_remove(&data->node_ids, handle.id);
+		__xa_erase(&data->shapers, index);
+		kfree(cur);
+	}
+	xa_unlock(&data->shapers);
+}
+
 static int net_shaper_parse_handle(const struct nlattr *attr,
 				   const struct genl_info *info,
 				   struct net_shaper_handle *handle)
@@ -455,6 +496,7 @@ static int net_shaper_parse_info(struct net_shaper_binding *binding,
 static int net_shaper_parse_info_nest(struct net_shaper_binding *binding,
 				      const struct nlattr *attr,
 				      const struct genl_info *info,
+				      enum net_shaper_scope expected_scope,
 				      struct net_shaper_handle *handle,
 				      struct net_shaper_info *shaper)
 {
@@ -471,11 +513,62 @@ static int net_shaper_parse_info_nest(struct net_shaper_binding *binding,
 	if (ret < 0)
 		return ret;
 
+	if (expected_scope != NET_SHAPER_SCOPE_UNSPEC &&
+	    handle->scope != expected_scope) {
+		NL_SET_BAD_ATTR(info->extack, tb[NET_SHAPER_A_HANDLE]);
+		return -EINVAL;
+	}
+
 	if (!cached)
 		net_shaper_default_parent(handle, &shaper->parent);
 	return 0;
 }
 
+/* Alike net_parse_shaper_info(), but additionally allow the user specifying
+ * the shaper's parent handle.
+ */
+static int net_shaper_parse_node(struct net_shaper_binding *binding,
+				 const struct nlattr *attr,
+				 const struct genl_info *info,
+				 struct net_shaper_handle *handle,
+				 struct net_shaper_info *shaper)
+{
+	struct nlattr *tb[NET_SHAPER_A_PARENT + 1];
+	bool cached;
+	int ret;
+
+	ret = nla_parse_nested(tb, NET_SHAPER_A_PARENT, attr,
+			       net_shaper_node_info_nl_policy,
+			       info->extack);
+	if (ret < 0)
+		return ret;
+
+	ret = net_shaper_parse_info(binding, tb, info, handle, shaper,
+				    &cached);
+	if (ret)
+		return ret;
+
+	if (handle->scope != NET_SHAPER_SCOPE_NODE &&
+	    handle->scope != NET_SHAPER_SCOPE_NETDEV) {
+		NL_SET_BAD_ATTR(info->extack, tb[NET_SHAPER_A_HANDLE]);
+		return -EINVAL;
+	}
+
+	if (tb[NET_SHAPER_A_PARENT]) {
+		ret = net_shaper_parse_handle(tb[NET_SHAPER_A_PARENT], info,
+					      &shaper->parent);
+		if (ret)
+			return ret;
+
+		if (shaper->parent.scope != NET_SHAPER_SCOPE_NODE &&
+		    shaper->parent.scope != NET_SHAPER_SCOPE_NETDEV) {
+			NL_SET_BAD_ATTR(info->extack, tb[NET_SHAPER_A_PARENT]);
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
 static int net_shaper_generic_pre(struct genl_info *info, int type)
 {
 	struct net_shaper_nl_ctx *ctx;
@@ -657,8 +750,9 @@ int net_shaper_nl_set_doit(struct sk_buff *skb, struct genl_info *info)
 
 	binding = net_shaper_binding_from_ctx(info->user_ptr[0]);
 	attr = info->attrs[NET_SHAPER_A_SHAPER];
-	ret = net_shaper_parse_info_nest(binding, attr, info, &handle,
-					 &shaper);
+	ret = net_shaper_parse_info_nest(binding, attr, info,
+					 NET_SHAPER_SCOPE_UNSPEC,
+					 &handle, &shaper);
 	if (ret)
 		return ret;
 
@@ -704,6 +798,100 @@ static int __net_shaper_delete(struct net_shaper_binding *binding,
 	return 0;
 }
 
+static int __net_shaper_group(struct net_shaper_binding *binding,
+			      int leaves_count,
+			      const struct net_shaper_handle *leaves_handles,
+			      struct net_shaper_info *leaves,
+			      struct net_shaper_handle *node_handle,
+			      struct net_shaper_info *node,
+			      struct netlink_ext_ack *extack)
+{
+	const struct net_shaper_ops *ops = net_shaper_binding_ops(binding);
+	struct net_shaper_info *parent = NULL;
+	struct net_shaper_handle leaf_handle;
+	int i, ret;
+
+	if (node_handle->scope == NET_SHAPER_SCOPE_NODE) {
+		if (node_handle->id != NET_SHAPER_ID_UNSPEC &&
+		    !net_shaper_cache_lookup(binding, node_handle)) {
+			NL_SET_ERR_MSG_FMT(extack, "Node shaper %d:%d does not exists",
+					   node_handle->scope, node_handle->id);
+			return -ENOENT;
+		}
+
+		/* When unspecified, the node parent scope is inherited from
+		 * the leaves.
+		 */
+		if (node->parent.scope == NET_SHAPER_SCOPE_UNSPEC) {
+			for (i = 1; i < leaves_count; ++i) {
+				if (leaves[i].parent.scope !=
+				    leaves[0].parent.scope ||
+				    leaves[i].parent.id !=
+				    leaves[0].parent.id) {
+					NL_SET_ERR_MSG_FMT(extack, "All the leaves shapers must have the same old parent");
+					return -EINVAL;
+				}
+			}
+
+			if (leaves_count > 0)
+				node->parent = leaves[0].parent;
+		}
+
+	} else {
+		net_shaper_default_parent(node_handle, &node->parent);
+	}
+
+	if (node->parent.scope == NET_SHAPER_SCOPE_NODE) {
+		parent = net_shaper_cache_lookup(binding, &node->parent);
+		if (!parent) {
+			NL_SET_ERR_MSG_FMT(extack, "Node parent shaper %d:%d does not exists",
+					   node->parent.scope, node->parent.id);
+			return -ENOENT;
+		}
+	}
+
+	/* For newly created node scope shaper, the following will update
+	 * the handle, due to id allocation.
+	 */
+	ret = net_shaper_cache_pre_insert(binding, node_handle, extack);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < leaves_count; ++i) {
+		leaf_handle = leaves_handles[i];
+
+		ret = net_shaper_cache_pre_insert(binding, &leaf_handle,
+						  extack);
+		if (ret)
+			goto rollback;
+
+		if (leaves[i].parent.scope == node_handle->scope &&
+		    leaves[i].parent.id == node_handle->id)
+			continue;
+
+		/* The leaves shapers will be nested to the node, update the
+		 * linking accordingly.
+		 */
+		leaves[i].parent = *node_handle;
+		node->leaves++;
+	}
+
+	ret = ops->group(binding, leaves_count, leaves_handles, leaves,
+			 node_handle, node, extack);
+	if (ret < 0)
+		goto rollback;
+
+	if (parent)
+		parent->leaves++;
+	net_shaper_cache_commit(binding, 1, node_handle, node);
+	net_shaper_cache_commit(binding, leaves_count, leaves_handles, leaves);
+	return 0;
+
+rollback:
+	net_shaper_cache_rollback(binding);
+	return ret;
+}
+
 static int net_shaper_delete(struct net_shaper_binding *binding,
 			     const struct net_shaper_handle *handle,
 			     struct netlink_ext_ack *extack)
@@ -756,6 +944,162 @@ int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 	return net_shaper_delete(binding, &handle, info->extack);
 }
 
+/* Update the H/W and on success update the local cache, too */
+static int net_shaper_group(struct net_shaper_binding *binding,
+			    int leaves_count,
+			    const struct net_shaper_handle *leaves_handles,
+			    struct net_shaper_info *leaves,
+			    struct net_shaper_handle *node_handle,
+			    struct net_shaper_info *node,
+			    struct netlink_ext_ack *extack)
+{
+	struct net_shaper_data *data = net_shaper_cache_init(binding, extack);
+	struct net_shaper_handle *old_nodes;
+	int i, ret, old_nodes_count = 0;
+
+	if (!data)
+		return -ENOMEM;
+
+	old_nodes = kcalloc(leaves_count, sizeof(struct net_shaper_handle),
+			    GFP_KERNEL);
+	if (!old_nodes)
+		return -ENOMEM;
+
+	for (i = 0; i < leaves_count; i++)
+		if (leaves[i].parent.scope == NET_SHAPER_SCOPE_NODE &&
+		    (leaves[i].parent.scope != node_handle->scope ||
+		     leaves[i].parent.id != node_handle->id))
+			old_nodes[old_nodes_count++] = leaves[i].parent;
+
+	mutex_lock(&data->lock);
+	ret = __net_shaper_group(binding, leaves_count, leaves_handles,
+				 leaves, node_handle, node, extack);
+
+	/* Check if we need to delete any NODE left alone by the new leaves
+	 * linkage.
+	 */
+	for (i = 0; i < old_nodes_count; ++i) {
+		node = net_shaper_cache_lookup(binding, &old_nodes[i]);
+		if (!node)
+			continue;
+
+		if (--node->leaves > 0)
+			continue;
+
+		/* Errors here are not fatal: the grouping operation is
+		 * completed, and user-space can still explicitly clean-up
+		 * left-over nodes.
+		 */
+		__net_shaper_delete(binding, &old_nodes[i], node, extack);
+	}
+
+	mutex_unlock(&data->lock);
+
+	kfree(old_nodes);
+	return ret;
+}
+
+static int net_shaper_group_send_reply(struct genl_info *info,
+				       struct net_shaper_handle *handle)
+{
+	struct net_shaper_binding *binding = info->user_ptr[0];
+	struct sk_buff *msg;
+	int ret = -EMSGSIZE;
+	void *hdr;
+
+	/* Prepare the msg reply in advance, to avoid device operation
+	 * rollback.
+	 */
+	msg = genlmsg_new(net_shaper_handle_size(), GFP_KERNEL);
+	if (!msg)
+		return ret;
+
+	hdr = genlmsg_iput(msg, info);
+	if (!hdr)
+		goto free_msg;
+
+	if (net_shaper_fill_binding(msg, binding, NET_SHAPER_A_IFINDEX))
+		goto free_msg;
+
+	if (net_shaper_fill_handle(msg, handle, NET_SHAPER_A_HANDLE))
+		goto free_msg;
+
+	genlmsg_end(msg, hdr);
+
+	ret = genlmsg_reply(msg, info);
+	if (ret)
+		goto free_msg;
+
+	return ret;
+
+free_msg:
+	nlmsg_free(msg);
+	return ret;
+}
+
+int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net_shaper_handle *leaves_handles, node_handle;
+	struct net_shaper_info *leaves, node;
+	struct net_shaper_binding *binding;
+	int i, ret, rem, leaves_count;
+	struct nlattr *attr;
+
+	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_LEAVES) ||
+	    GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_NODE))
+		return -EINVAL;
+
+	binding = net_shaper_binding_from_ctx(info->user_ptr[0]);
+	leaves_count = net_shaper_list_len(info, NET_SHAPER_A_LEAVES);
+	leaves = kcalloc(leaves_count, sizeof(struct net_shaper_info) +
+			 sizeof(struct net_shaper_handle), GFP_KERNEL);
+	if (!leaves) {
+		GENL_SET_ERR_MSG_FMT(info, "Can't allocate memory for %d leaves shapers",
+				     leaves_count);
+		return -ENOMEM;
+	}
+	leaves_handles = (struct net_shaper_handle *)&leaves[leaves_count];
+
+	ret = net_shaper_parse_node(binding, info->attrs[NET_SHAPER_A_NODE],
+				    info, &node_handle, &node);
+	if (ret)
+		goto free_shapers;
+
+	i = 0;
+	nla_for_each_attr_type(attr, NET_SHAPER_A_LEAVES,
+			       genlmsg_data(info->genlhdr),
+			       genlmsg_len(info->genlhdr), rem) {
+		if (WARN_ON_ONCE(i >= leaves_count))
+			goto free_shapers;
+
+		ret = net_shaper_parse_info_nest(binding, attr, info,
+						 NET_SHAPER_SCOPE_QUEUE,
+						 &leaves_handles[i],
+						 &leaves[i]);
+		if (ret)
+			goto free_shapers;
+		i++;
+	}
+
+	ret = net_shaper_group(binding, leaves_count, leaves_handles, leaves,
+			       &node_handle, &node, info->extack);
+	if (ret < 0)
+		goto free_shapers;
+
+	ret = net_shaper_group_send_reply(info, &node_handle);
+	if (ret) {
+		/* Error on reply is not fatal to avoid rollback a successful
+		 * configuration.
+		 */
+		GENL_SET_ERR_MSG_FMT(info, "Can't send reply %d", ret);
+		ret = 0;
+	}
+
+free_shapers:
+	kfree(leaves);
+	return ret;
+}
+
 static void net_shaper_flush(struct net_shaper_binding *binding)
 {
 	struct net_shaper_data *data = net_shaper_binding_data(binding);
-- 
2.45.2

