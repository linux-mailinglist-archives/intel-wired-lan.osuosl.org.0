Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DA49724FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 00:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2645D60855;
	Mon,  9 Sep 2024 22:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rlLegkoF-efn; Mon,  9 Sep 2024 22:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B08DD606F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725919882;
	bh=m3apa8tc+hFJPhshzOuL1HIEnsjWWBg5Mtv3zI3ncbI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P9fWFdN/sZlcs+r4rXx9Ec9xWkmyzPsA1jDsG1RW8MOqZkac8H4/bq+Ao1RIvXq5C
	 jrLQpnT+L3gsiSlDhx8ngv0lA4+BySMW4e4TeBMT8zakBMYJVJ9QUspN7XsH52YVhp
	 z65w9pWKK59BqmuwZwLFrm1nS4a5aNitm7s+48GZxOMoD1rGcAfGKJrzCEP9SAkl9r
	 Xq4QUsa22uuHaTOqbF5+gxRgvtpPeok/vuTZU3ClY3sikgRSoOTK8tGJmEuRX7cWyM
	 o9iq3AookU/SPlGfWFMP7LKoc2WC/d09zRCIVtW7UsJ+z12oaK/saQCtEwmlSm9xd4
	 jBRry7xX3UFXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B08DD606F3;
	Mon,  9 Sep 2024 22:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E11F1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6BC6560851
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NIkH7NbDPOjN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 22:11:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CEA8D6082C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEA8D6082C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEA8D6082C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:18 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-433-WOb7eOHIPguwRwxF_w-AjQ-1; Mon,
 09 Sep 2024 18:11:12 -0400
X-MC-Unique: WOb7eOHIPguwRwxF_w-AjQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id EB3D219560A2; Mon,  9 Sep 2024 22:11:09 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.56])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id A2DF5195608A; Mon,  9 Sep 2024 22:11:04 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Sep 2024 00:09:58 +0200
Message-ID: <02f5538fac0f8073281c9be60687aa9146cedf17.1725919039.git.pabeni@redhat.com>
In-Reply-To: <cover.1725919039.git.pabeni@redhat.com>
References: <cover.1725919039.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725919877;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m3apa8tc+hFJPhshzOuL1HIEnsjWWBg5Mtv3zI3ncbI=;
 b=IfKjrYbxFWqoNSd5QTD3PxsJRMOfmokjoE4ZM4SEtq8oEjHbUTHNErIO7RHFxqGYVn8GhK
 0fKhy5Qp3RJyqGkhyVGbdHShcDfGeCdp+UMxrjGn+3aFk8bsNEGva5Jv2gPrnAggYia55g
 VRN8byAgCOO34VOZTlQqjUP78Vl0HDU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IfKjrYbx
Subject: [Intel-wired-lan] [PATCH v7 net-next 04/15] net-shapers: implement
 NL set and delete operations
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

Both NL operations directly map on the homonymous device shaper
callbacks, update accordingly the shapers cache and are serialized
via a per device lock.
Implement the cache modification helpers to additionally deal with
NODE scope shaper. That will be needed by the group() operation
implemented in the next patch.
The delete implementation is partial: does not handle NODE scope
shaper yet. Such support will require infrastructure from
the next patch and will be implemented later in the series.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v6 -> v7:
 - move the parsing under the binding lock, removing the
   net_shaper_{set,delete} helpers
 - re-introduce rollback on set() failures, lost in one of
   the many previous refactor
 - fix net_shaper_lookup()
 - shaper attrs are not nested anymore update parsing in set()
 - move net_shaper_parse_info_nest() impl to the next patch

v5 -> v6:
 - use xa_alloc() instead idr
 - rcu protection on shaper free
 - drop NL_SET_ERR_MSG() on allocation failures
 - net_shaper_cache_init() -> net_shaper_hierarchy_setup()
 - net_shaper_cache_{pre_insert,commit} -> net_shaper_{pre_insert,commit}
 - fix BAD_ADDR handle in net_shaper_parse_info()

v4 -> v5:
 - replace net_device * with binding* in most helpers
 - move check for scope NONE handle at parse time and leverage
   NL_SET_BAD_ATTR()
 - move the default parent initialization to net_shaper_parse_info_nest()

v3 -> v4:
 - add locking
 - helper rename

RFC v2 -> RFC v3:
 - dev_put() -> netdev_put()
---
 net/shaper/shaper.c | 385 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 382 insertions(+), 3 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index 22daf7dde999..30c5a2f9520b 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -36,6 +36,24 @@ static struct net_shaper_binding *net_shaper_binding_from_ctx(void *ctx)
 	return &((struct net_shaper_nl_ctx *)ctx)->binding;
 }
 
+static void net_shaper_lock(struct net_shaper_binding *binding)
+{
+	switch (binding->type) {
+	case NET_SHAPER_BINDING_TYPE_NETDEV:
+		mutex_lock(&binding->netdev->lock);
+		break;
+	}
+}
+
+static void net_shaper_unlock(struct net_shaper_binding *binding)
+{
+	switch (binding->type) {
+	case NET_SHAPER_BINDING_TYPE_NETDEV:
+		mutex_unlock(&binding->netdev->lock);
+		break;
+	}
+}
+
 static struct net_shaper_hierarchy *
 net_shaper_hierarchy(struct net_shaper_binding *binding)
 {
@@ -47,6 +65,16 @@ net_shaper_hierarchy(struct net_shaper_binding *binding)
 	return NULL;
 }
 
+static const struct net_shaper_ops *
+net_shaper_ops(struct net_shaper_binding *binding)
+{
+	if (binding->type == NET_SHAPER_BINDING_TYPE_NETDEV)
+		return binding->netdev->netdev_ops->net_shaper_ops;
+
+	/* No other type supported yet. */
+	return NULL;
+}
+
 static int net_shaper_fill_binding(struct sk_buff *msg,
 				   const struct net_shaper_binding *binding,
 				   u32 type)
@@ -170,6 +198,37 @@ static u32 net_shaper_handle_to_index(const struct net_shaper_handle *handle)
 		FIELD_PREP(NET_SHAPER_ID_MASK, handle->id);
 }
 
+static void net_shaper_index_to_handle(u32 index,
+				       struct net_shaper_handle *handle)
+{
+	handle->scope = FIELD_GET(NET_SHAPER_SCOPE_MASK, index);
+	handle->id = FIELD_GET(NET_SHAPER_ID_MASK, index);
+}
+
+static void net_shaper_default_parent(const struct net_shaper_handle *handle,
+				      struct net_shaper_handle *parent)
+{
+	switch (handle->scope) {
+	case NET_SHAPER_SCOPE_UNSPEC:
+	case NET_SHAPER_SCOPE_NETDEV:
+	case __NET_SHAPER_SCOPE_MAX:
+		parent->scope = NET_SHAPER_SCOPE_UNSPEC;
+		break;
+
+	case NET_SHAPER_SCOPE_QUEUE:
+	case NET_SHAPER_SCOPE_NODE:
+		parent->scope = NET_SHAPER_SCOPE_NETDEV;
+		break;
+	}
+	parent->id = 0;
+}
+
+/*
+ * MARK_0 is already in use due to XA_FLAGS_ALLOC, can't reuse such flag as
+ * it's cleared by xa_store().
+ */
+#define NET_SHAPER_NOT_VALID XA_MARK_1
+
 static struct net_shaper *
 net_shaper_lookup(struct net_shaper_binding *binding,
 		  const struct net_shaper_handle *handle)
@@ -177,7 +236,154 @@ net_shaper_lookup(struct net_shaper_binding *binding,
 	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
 	u32 index = net_shaper_handle_to_index(handle);
 
-	return hierarchy ? xa_load(&hierarchy->shapers, index) : NULL;
+	if (!hierarchy || xa_get_mark(&hierarchy->shapers, index,
+				      NET_SHAPER_NOT_VALID))
+		return NULL;
+
+	return xa_load(&hierarchy->shapers, index);
+}
+
+/* Allocate on demand the per device shaper's hierarchy container.
+ * Called under the net shaper lock
+ */
+static struct net_shaper_hierarchy *
+net_shaper_hierarchy_setup(struct net_shaper_binding *binding)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+
+	if (hierarchy)
+		return hierarchy;
+
+	hierarchy = kmalloc(sizeof(*hierarchy), GFP_KERNEL);
+	if (!hierarchy)
+		return NULL;
+
+	/* The flag is required for ID allocation */
+	xa_init_flags(&hierarchy->shapers, XA_FLAGS_ALLOC);
+
+	switch (binding->type) {
+	case NET_SHAPER_BINDING_TYPE_NETDEV:
+		/* Pairs with READ_ONCE in net_shaper_hierarchy. */
+		WRITE_ONCE(binding->netdev->net_shaper_hierarchy, hierarchy);
+		break;
+	}
+	return hierarchy;
+}
+
+/* Prepare the hierarchy container to actually insert the given shaper, doing
+ * in advance the needed allocations.
+ */
+static int net_shaper_pre_insert(struct net_shaper_binding *binding,
+				 struct net_shaper_handle *handle,
+				 struct netlink_ext_ack *extack)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper *prev, *cur;
+	bool id_allocated = false;
+	int ret, index;
+
+	if (!hierarchy)
+		return -ENOMEM;
+
+	index = net_shaper_handle_to_index(handle);
+	cur = xa_load(&hierarchy->shapers, index);
+	if (cur)
+		return 0;
+
+	/* Allocated a new id, if needed. */
+	if (handle->scope == NET_SHAPER_SCOPE_NODE &&
+	    handle->id == NET_SHAPER_ID_UNSPEC) {
+		u32 min, max;
+
+		handle->id = NET_SHAPER_ID_MASK - 1;
+		max = net_shaper_handle_to_index(handle);
+		handle->id = 0;
+		min = net_shaper_handle_to_index(handle);
+
+		ret = xa_alloc(&hierarchy->shapers, &index, NULL,
+			       XA_LIMIT(min, max), GFP_KERNEL);
+		if (ret < 0) {
+			NL_SET_ERR_MSG(extack, "Can't allocate new id for NODE shaper");
+			return ret;
+		}
+
+		net_shaper_index_to_handle(index, handle);
+		id_allocated = true;
+	}
+
+	cur = kzalloc(sizeof(*cur), GFP_KERNEL);
+	if (!cur) {
+		ret = -ENOMEM;
+		goto free_id;
+	}
+
+	/* Mark 'tentative' shaper inside the hierarchy container.
+	 * xa_set_mark is a no-op if the previous store fails.
+	 */
+	xa_lock(&hierarchy->shapers);
+	prev = __xa_store(&hierarchy->shapers, index, cur, GFP_KERNEL);
+	__xa_set_mark(&hierarchy->shapers, index, NET_SHAPER_NOT_VALID);
+	xa_unlock(&hierarchy->shapers);
+	if (xa_err(prev)) {
+		NL_SET_ERR_MSG(extack, "Can't insert shaper into device store");
+		kfree_rcu(cur, rcu);
+		ret = xa_err(prev);
+		goto free_id;
+	}
+	return 0;
+
+free_id:
+	if (id_allocated)
+		xa_erase(&hierarchy->shapers, index);
+	return ret;
+}
+
+/* Commit the tentative insert with the actual values.
+ * Must be called only after a successful net_shaper_pre_insert().
+ */
+static void net_shaper_commit(struct net_shaper_binding *binding,
+			      int nr_shapers, const struct net_shaper *shapers)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper *cur;
+	int index;
+	int i;
+
+	xa_lock(&hierarchy->shapers);
+	for (i = 0; i < nr_shapers; ++i) {
+		index = net_shaper_handle_to_index(&shapers[i].handle);
+
+		cur = xa_load(&hierarchy->shapers, index);
+		if (WARN_ON_ONCE(!cur))
+			continue;
+
+		/* Successful update: drop the tentative mark
+		 * and update the hierarchy container.
+		 */
+		__xa_clear_mark(&hierarchy->shapers, index,
+				NET_SHAPER_NOT_VALID);
+		*cur = shapers[i];
+	}
+	xa_unlock(&hierarchy->shapers);
+}
+
+/* Rollback all the tentative inserts from the hierarchy. */
+static void net_shaper_rollback(struct net_shaper_binding *binding)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper *cur;
+	unsigned long index;
+
+	if (!hierarchy)
+		return;
+
+	xa_lock(&hierarchy->shapers);
+	xa_for_each_marked(&hierarchy->shapers, index, cur,
+			   NET_SHAPER_NOT_VALID) {
+		__xa_erase(&hierarchy->shapers, index);
+		kfree(cur);
+	}
+	xa_unlock(&hierarchy->shapers);
 }
 
 static int net_shaper_parse_handle(const struct nlattr *attr,
@@ -215,6 +421,59 @@ static int net_shaper_parse_handle(const struct nlattr *attr,
 	return 0;
 }
 
+static int net_shaper_parse_info(struct net_shaper_binding *binding,
+				 struct nlattr **tb,
+				 const struct genl_info *info,
+				 struct net_shaper *shaper,
+				 bool *exists)
+{
+	struct net_shaper *old;
+	int ret;
+
+	/* The shaper handle is the only mandatory attribute. */
+	if (NL_REQ_ATTR_CHECK(info->extack, NULL, tb, NET_SHAPER_A_HANDLE))
+		return -EINVAL;
+
+	ret = net_shaper_parse_handle(tb[NET_SHAPER_A_HANDLE], info,
+				      &shaper->handle);
+	if (ret)
+		return ret;
+
+	if (shaper->handle.scope == NET_SHAPER_SCOPE_UNSPEC) {
+		NL_SET_BAD_ATTR(info->extack, tb[NET_SHAPER_A_HANDLE]);
+		return -EINVAL;
+	}
+
+	/* Fetch existing hierarchy, if any, so that user provide info will
+	 * incrementally update the existing shaper configuration.
+	 */
+	rcu_read_lock();
+	old = net_shaper_lookup(binding, &shaper->handle);
+	if (old)
+		*shaper = *old;
+	*exists = !!old;
+	rcu_read_unlock();
+
+	if (tb[NET_SHAPER_A_METRIC])
+		shaper->metric = nla_get_u32(tb[NET_SHAPER_A_METRIC]);
+
+	if (tb[NET_SHAPER_A_BW_MIN])
+		shaper->bw_min = nla_get_uint(tb[NET_SHAPER_A_BW_MIN]);
+
+	if (tb[NET_SHAPER_A_BW_MAX])
+		shaper->bw_max = nla_get_uint(tb[NET_SHAPER_A_BW_MAX]);
+
+	if (tb[NET_SHAPER_A_BURST])
+		shaper->burst = nla_get_uint(tb[NET_SHAPER_A_BURST]);
+
+	if (tb[NET_SHAPER_A_PRIORITY])
+		shaper->priority = nla_get_u32(tb[NET_SHAPER_A_PRIORITY]);
+
+	if (tb[NET_SHAPER_A_WEIGHT])
+		shaper->weight = nla_get_u32(tb[NET_SHAPER_A_WEIGHT]);
+	return 0;
+}
+
 static int net_shaper_generic_pre(struct genl_info *info, int type)
 {
 	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)info->ctx;
@@ -332,12 +591,129 @@ int net_shaper_nl_get_dumpit(struct sk_buff *skb,
 
 int net_shaper_nl_set_doit(struct sk_buff *skb, struct genl_info *info)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_hierarchy *hierarchy;
+	struct net_shaper_binding *binding;
+	const struct net_shaper_ops *ops;
+	struct net_shaper_handle handle;
+	struct net_shaper shaper;
+	bool exists;
+	int ret;
+
+	binding = net_shaper_binding_from_ctx(info->ctx);
+
+	net_shaper_lock(binding);
+	ret = net_shaper_parse_info(binding, info->attrs, info, &shaper,
+				    &exists);
+	if (ret)
+		goto unlock;
+
+	if (!exists)
+		net_shaper_default_parent(&shaper.handle, &shaper.parent);
+
+	hierarchy = net_shaper_hierarchy_setup(binding);
+	if (!hierarchy) {
+		ret = -ENOMEM;
+		goto unlock;
+	}
+
+	/* The 'set' operation can't create node-scope shapers. */
+	handle = shaper.handle;
+	if (handle.scope == NET_SHAPER_SCOPE_NODE &&
+	    !net_shaper_lookup(binding, &handle)) {
+		ret = -ENOENT;
+		goto unlock;
+	}
+
+	ret = net_shaper_pre_insert(binding, &handle, info->extack);
+	if (ret)
+		goto unlock;
+
+	ops = net_shaper_ops(binding);
+	ret = ops->set(binding, &shaper, info->extack);
+	if (ret) {
+		net_shaper_rollback(binding);
+		goto unlock;
+	}
+
+	net_shaper_commit(binding, 1, &shaper);
+
+unlock:
+	net_shaper_unlock(binding);
+	return ret;
+}
+
+static int __net_shaper_delete(struct net_shaper_binding *binding,
+			       struct net_shaper *shaper,
+			       struct netlink_ext_ack *extack)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper_handle parent_handle, handle = shaper->handle;
+	const struct net_shaper_ops *ops = net_shaper_ops(binding);
+	int ret;
+
+again:
+	parent_handle = shaper->parent;
+
+	ret = ops->delete(binding, &handle, extack);
+	if (ret < 0)
+		return ret;
+
+	xa_erase(&hierarchy->shapers, net_shaper_handle_to_index(&handle));
+	kfree_rcu(shaper, rcu);
+
+	/* Eventually delete the parent, if it is left over with no leaves. */
+	if (parent_handle.scope == NET_SHAPER_SCOPE_NODE) {
+		shaper = net_shaper_lookup(binding, &parent_handle);
+		if (shaper && !--shaper->leaves) {
+			handle = parent_handle;
+			goto again;
+		}
+	}
+	return 0;
 }
 
 int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_hierarchy *hierarchy;
+	struct net_shaper_binding *binding;
+	struct net_shaper_handle handle;
+	struct net_shaper *shaper;
+	int ret;
+
+	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_HANDLE))
+		return -EINVAL;
+
+	binding = net_shaper_binding_from_ctx(info->ctx);
+
+	net_shaper_lock(binding);
+	ret = net_shaper_parse_handle(info->attrs[NET_SHAPER_A_HANDLE], info,
+				      &handle);
+	if (ret)
+		goto unlock;
+
+	hierarchy = net_shaper_hierarchy(binding);
+	if (!hierarchy) {
+		ret = -ENOENT;
+		goto unlock;
+	}
+
+	shaper = net_shaper_lookup(binding, &handle);
+	if (!shaper) {
+		ret = -ENOENT;
+		goto unlock;
+	}
+
+	if (handle.scope == NET_SHAPER_SCOPE_NODE) {
+		/* TODO: implement support for scope NODE delete. */
+		ret = -EINVAL;
+		goto unlock;
+	}
+
+	ret = __net_shaper_delete(binding, shaper, info->extack);
+
+unlock:
+	net_shaper_unlock(binding);
+	return ret;
 }
 
 static void net_shaper_flush(struct net_shaper_binding *binding)
@@ -349,12 +725,15 @@ static void net_shaper_flush(struct net_shaper_binding *binding)
 	if (!hierarchy)
 		return;
 
+	net_shaper_lock(binding);
 	xa_lock(&hierarchy->shapers);
 	xa_for_each(&hierarchy->shapers, index, cur) {
 		__xa_erase(&hierarchy->shapers, index);
 		kfree(cur);
 	}
 	xa_unlock(&hierarchy->shapers);
+	net_shaper_unlock(binding);
+
 	kfree(hierarchy);
 }
 
-- 
2.45.2

