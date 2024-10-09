Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50131996202
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 10:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7940B4060C;
	Wed,  9 Oct 2024 08:12:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GI00O_IOGCcg; Wed,  9 Oct 2024 08:12:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1824D40B50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728461521;
	bh=IhDuH2YkKco9gmJfZvgGV6IJ1LqQvF+qLfUjrtQJySs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f9JIbo1B5Qv5/MSHL8YxEa8w1L4RFTOnQYtZGr68Zy0bmSQhzOzHyRwBijFXEYKmn
	 knVZ57Uje/HrJSFWOMaHLsSJhowvXtOztk7mlvqnXDoK/Dx/EXRMTR7oqd07bee6yB
	 tl7v37j2Ebc4wx2TakDbKrlwdFxu0/AOPLbqM/NQspmHKfa00Oa5awOtX7doCbGer4
	 zWJ9nzWy3h2dD+Ms7EWuVO/f7zDnvVB5a7D0/7pP24aVMqaO02MsTMVpYT5z8DEkg/
	 A5xK7TxTQ7TKsVAY1FIRQgjpOd63d5PniZTjYzGQaTdvpLcJEZQCoJUzeZurMbepyl
	 1pTq2CzI16uSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1824D40B50;
	Wed,  9 Oct 2024 08:12:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B4B51BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C6635401E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vTssXHdqwnCN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 08:11:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E31B40639
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E31B40639
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E31B40639
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 08:11:55 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-492-J_--y-Y5OSS58D-JcdVwqQ-1; Wed,
 09 Oct 2024 04:11:48 -0400
X-MC-Unique: J_--y-Y5OSS58D-JcdVwqQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id BC5511970ADC; Wed,  9 Oct 2024 08:10:44 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.249])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 005D719560A2; Wed,  9 Oct 2024 08:10:38 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Oct 2024 10:09:51 +0200
Message-ID: <8a721274fde18b872d1e3a61aaa916bb7b7996d3.1728460186.git.pabeni@redhat.com>
In-Reply-To: <cover.1728460186.git.pabeni@redhat.com>
References: <cover.1728460186.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1728461514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IhDuH2YkKco9gmJfZvgGV6IJ1LqQvF+qLfUjrtQJySs=;
 b=UXfl+O/OvdYihBrU3pLHhYbiIVuTWO+uq8pK3a7TkKMDy9LPhq1wIPdcIEBKU+TJ58uVNB
 hPJMpEl2ExXQ0ZtXOjNms8qnt6kse9HfvkFeMG1Sx4/knTqNXR9CRLg/NY5mfu5tI44BUG
 k5/mg/9mThVq0XJqnJ1IGR0VrSKINrE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UXfl+O/O
Subject: [Intel-wired-lan] [PATCH v9 net-next 05/15] net-shapers: implement
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
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow grouping multiple leaves shaper under the given root.
The node and the leaves shapers are created, if needed, otherwise
the existing shapers are re-linked as requested.

Try hard to pre-allocated the needed resources, to avoid non
trivial H/W configuration rollbacks in case of any failure.

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v7 -> v8:
 - always init 'node' in group_do_it()

v6 -> v7:
 - moved the parsing under the shaper lock, dropping the
   net_shaper_group() helper.
 - rename net_shaper_parse_info_nest to net_shaper_parse_leaf()
 - updated node parsing to cope with not nested attrs
 - fix leaf accounting when updating existing nodes

v5 -> v6:
 - pre-allocate msg in net_shaper_nl_group_doit()
 - factor out handle_cmp() and parent_from_leaves() helpers
 - driver group() implementation is optional
 - move the 0 leaves check earlier
 - net_shaper_cache_rollback ->net_shaper_rollback
 - report the failure on reply generation error (no rollback)
 - several net_shaper_group_send_reply() fixup

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
 net/shaper/shaper.c | 350 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 350 insertions(+)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index 5946f140f3d0..c23ac611850d 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -75,6 +75,24 @@ net_shaper_ops(struct net_shaper_binding *binding)
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
@@ -472,6 +490,74 @@ static int net_shaper_parse_info(struct net_shaper_binding *binding,
 	return 0;
 }
 
+/* Fetch the existing leaf and update it with the user-provided
+ * attributes.
+ */
+static int net_shaper_parse_leaf(struct net_shaper_binding *binding,
+				 const struct nlattr *attr,
+				 const struct genl_info *info,
+				 const struct net_shaper *node,
+				 struct net_shaper *shaper)
+{
+	struct nlattr *tb[NET_SHAPER_A_WEIGHT + 1];
+	bool exists;
+	int ret;
+
+	ret = nla_parse_nested(tb, NET_SHAPER_A_WEIGHT, attr,
+			       net_shaper_leaf_info_nl_policy, info->extack);
+	if (ret < 0)
+		return ret;
+
+	ret = net_shaper_parse_info(binding, tb, info, shaper, &exists);
+	if (ret < 0)
+		return ret;
+
+	if (shaper->handle.scope != NET_SHAPER_SCOPE_QUEUE) {
+		NL_SET_BAD_ATTR(info->extack, tb[NET_SHAPER_A_HANDLE]);
+		return -EINVAL;
+	}
+
+	if (!exists)
+		net_shaper_default_parent(&shaper->handle, &shaper->parent);
+	return 0;
+}
+
+/* Alike net_parse_shaper_info(), but additionally allow the user specifying
+ * the shaper's parent handle.
+ */
+static int net_shaper_parse_node(struct net_shaper_binding *binding,
+				 struct nlattr **tb,
+				 const struct genl_info *info,
+				 struct net_shaper *shaper)
+{
+	bool exists;
+	int ret;
+
+	ret = net_shaper_parse_info(binding, tb, info, shaper, &exists);
+	if (ret)
+		return ret;
+
+	if (shaper->handle.scope != NET_SHAPER_SCOPE_NODE &&
+	    shaper->handle.scope != NET_SHAPER_SCOPE_NETDEV) {
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
 	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)info->ctx;
@@ -670,6 +756,123 @@ static int __net_shaper_delete(struct net_shaper_binding *binding,
 	return 0;
 }
 
+static int net_shaper_handle_cmp(const struct net_shaper_handle *a,
+				 const struct net_shaper_handle *b)
+{
+	/* Must avoid holes in struct net_shaper_handle. */
+	BUILD_BUG_ON(sizeof(*a) != 8);
+
+	return memcmp(a, b, sizeof(*a));
+}
+
+static int net_shaper_parent_from_leaves(int leaves_count,
+					 const struct net_shaper *leaves,
+					 struct net_shaper *node,
+					 struct netlink_ext_ack *extack)
+{
+	struct net_shaper_handle parent = leaves[0].parent;
+	int i;
+
+	for (i = 1; i < leaves_count; ++i) {
+		if (net_shaper_handle_cmp(&leaves[i].parent, &parent)) {
+			NL_SET_ERR_MSG_FMT(extack, "All the leaves shapers must have the same old parent");
+			return -EINVAL;
+		}
+	}
+
+	node->parent = parent;
+	return 0;
+}
+
+static int __net_shaper_group(struct net_shaper_binding *binding,
+			      int leaves_count, struct net_shaper *leaves,
+			      struct net_shaper *node,
+			      struct netlink_ext_ack *extack)
+{
+	const struct net_shaper_ops *ops = net_shaper_ops(binding);
+	struct net_shaper_handle leaf_handle;
+	struct net_shaper *parent = NULL;
+	bool new_node = false;
+	int i, ret;
+
+	if (node->handle.scope == NET_SHAPER_SCOPE_NODE) {
+		new_node = node->handle.id == NET_SHAPER_ID_UNSPEC;
+
+		if (!new_node && !net_shaper_lookup(binding, &node->handle)) {
+			/* The related attribute is not available when
+			 * reaching here from the delete() op.
+			 */
+			NL_SET_ERR_MSG_FMT(extack, "Node shaper %d:%d does not exists",
+					   node->handle.scope, node->handle.id);
+			return -ENOENT;
+		}
+
+		/* When unspecified, the node parent scope is inherited from
+		 * the leaves.
+		 */
+		if (node->parent.scope == NET_SHAPER_SCOPE_UNSPEC) {
+			ret = net_shaper_parent_from_leaves(leaves_count,
+							    leaves, node,
+							    extack);
+			if (ret)
+				return ret;
+		}
+
+	} else {
+		net_shaper_default_parent(&node->handle, &node->parent);
+	}
+
+	if (node->parent.scope == NET_SHAPER_SCOPE_NODE) {
+		parent = net_shaper_lookup(binding, &node->parent);
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
+	ret = net_shaper_pre_insert(binding, &node->handle, extack);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < leaves_count; ++i) {
+		leaf_handle = leaves[i].handle;
+
+		ret = net_shaper_pre_insert(binding, &leaf_handle, extack);
+		if (ret)
+			goto rollback;
+
+		if (!net_shaper_handle_cmp(&leaves[i].parent, &node->handle))
+			continue;
+
+		/* The leaves shapers will be nested to the node, update the
+		 * linking accordingly.
+		 */
+		leaves[i].parent = node->handle;
+		node->leaves++;
+	}
+
+	ret = ops->group(binding, leaves_count, leaves, node, extack);
+	if (ret < 0)
+		goto rollback;
+
+	/* The node's parent gains a new leaf only when the node itself
+	 * is created by this group operation
+	 */
+	if (new_node && parent)
+		parent->leaves++;
+	net_shaper_commit(binding, 1, node);
+	net_shaper_commit(binding, leaves_count, leaves);
+	return 0;
+
+rollback:
+	net_shaper_rollback(binding);
+	return ret;
+}
+
 int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 {
 	struct net_shaper_hierarchy *hierarchy;
@@ -714,6 +917,153 @@ int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 	return ret;
 }
 
+static int net_shaper_group_send_reply(struct net_shaper_binding *binding,
+				       const struct net_shaper_handle *handle,
+				       struct genl_info *info,
+				       struct sk_buff *msg)
+{
+	void *hdr;
+
+	hdr = genlmsg_iput(msg, info);
+	if (!hdr)
+		goto free_msg;
+
+	if (net_shaper_fill_binding(msg, binding, NET_SHAPER_A_IFINDEX) ||
+	    net_shaper_fill_handle(msg, handle, NET_SHAPER_A_HANDLE))
+		goto free_msg;
+
+	genlmsg_end(msg, hdr);
+
+	return genlmsg_reply(msg, info);
+
+free_msg:
+	/* Should never happen as msg is pre-allocated with enough space. */
+	WARN_ONCE(true, "calculated message payload length (%d)",
+		  net_shaper_handle_size());
+	nlmsg_free(msg);
+	return -EMSGSIZE;
+}
+
+int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net_shaper **old_nodes, *leaves, node = {};
+	struct net_shaper_hierarchy *hierarchy;
+	struct net_shaper_binding *binding;
+	int i, ret, rem, leaves_count;
+	int old_nodes_count = 0;
+	struct sk_buff *msg;
+	struct nlattr *attr;
+
+	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_LEAVES))
+		return -EINVAL;
+
+	binding = net_shaper_binding_from_ctx(info->ctx);
+
+	/* The group operation is optional. */
+	if (!net_shaper_ops(binding)->group)
+		return -EOPNOTSUPP;
+
+	net_shaper_lock(binding);
+	leaves_count = net_shaper_list_len(info, NET_SHAPER_A_LEAVES);
+	if (!leaves_count) {
+		NL_SET_BAD_ATTR(info->extack,
+				info->attrs[NET_SHAPER_A_LEAVES]);
+		ret = -EINVAL;
+		goto unlock;
+	}
+
+	leaves = kcalloc(leaves_count, sizeof(struct net_shaper) +
+			 sizeof(struct net_shaper *), GFP_KERNEL);
+	if (!leaves) {
+		ret = -ENOMEM;
+		goto unlock;
+	}
+	old_nodes = (void *)&leaves[leaves_count];
+
+	ret = net_shaper_parse_node(binding, info->attrs, info, &node);
+	if (ret)
+		goto free_leaves;
+
+	i = 0;
+	nla_for_each_attr_type(attr, NET_SHAPER_A_LEAVES,
+			       genlmsg_data(info->genlhdr),
+			       genlmsg_len(info->genlhdr), rem) {
+		if (WARN_ON_ONCE(i >= leaves_count))
+			goto free_leaves;
+
+		ret = net_shaper_parse_leaf(binding, attr, info,
+					    &node, &leaves[i]);
+		if (ret)
+			goto free_leaves;
+		i++;
+	}
+
+	/* Prepare the msg reply in advance, to avoid device operation
+	 * rollback on allocation failure.
+	 */
+	msg = genlmsg_new(net_shaper_handle_size(), GFP_KERNEL);
+	if (!msg)
+		goto free_leaves;
+
+	hierarchy = net_shaper_hierarchy_setup(binding);
+	if (!hierarchy) {
+		ret = -ENOMEM;
+		goto free_msg;
+	}
+
+	/* Record the node shapers that this group() operation can make
+	 * childless for later cleanup.
+	 */
+	for (i = 0; i < leaves_count; i++) {
+		if (leaves[i].parent.scope == NET_SHAPER_SCOPE_NODE &&
+		    net_shaper_handle_cmp(&leaves[i].parent, &node.handle)) {
+			struct net_shaper *tmp;
+
+			tmp = net_shaper_lookup(binding, &leaves[i].parent);
+			if (!tmp)
+				continue;
+
+			old_nodes[old_nodes_count++] = tmp;
+		}
+	}
+
+	ret = __net_shaper_group(binding, leaves_count, leaves, &node,
+				 info->extack);
+	if (ret)
+		goto free_msg;
+
+	/* Check if we need to delete any node left alone by the new leaves
+	 * linkage.
+	 */
+	for (i = 0; i < old_nodes_count; ++i) {
+		struct net_shaper *tmp = old_nodes[i];
+
+		if (--tmp->leaves > 0)
+			continue;
+
+		/* Errors here are not fatal: the grouping operation is
+		 * completed, and user-space can still explicitly clean-up
+		 * left-over nodes.
+		 */
+		__net_shaper_delete(binding, tmp, info->extack);
+	}
+
+	ret = net_shaper_group_send_reply(binding, &node.handle, info, msg);
+	if (ret)
+		GENL_SET_ERR_MSG_FMT(info, "Can't send reply");
+
+free_leaves:
+	kfree(leaves);
+
+unlock:
+	net_shaper_unlock(binding);
+	return ret;
+
+free_msg:
+	kfree_skb(msg);
+	goto free_leaves;
+}
+
 static void net_shaper_flush(struct net_shaper_binding *binding)
 {
 	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
-- 
2.45.2

