Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D69596BF4D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 15:58:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A33F81204;
	Wed,  4 Sep 2024 13:58:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xh9-1P0ZhWWA; Wed,  4 Sep 2024 13:58:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21B9D811FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725458292;
	bh=baf7NR+ARd1j5vSuLGfqoVv19brivZfJFTAjhr67f2c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p4zKEiG/su+ptKx5pToB2dIR8IEiQxsG0RNG5LhPrLLw7LOF1B+YN+Tut/lVQABL5
	 sWdw72tFV3msnfyya9VPNclnFWkzPaJSDykUKnXzDzVUJ+uKfdRUAlMzV0UlCzcGBn
	 kfqj7zV/RXojdevIbH5W4vj510ISEvBgJGKFSpje07PsPoCnynX/fDXuJ7WtVOSqH7
	 C73YfnnSs4iBEnnuQ2y3JUWKG33YThayJrNUn7DwyEuonrjOTaGQvUhybeDkZCagob
	 3PDScPaWwB1hgIs/40L+OMw2PoMQwautLvWYGhG+jAhHn4W/XnTqeoRuhaFpyz5HBo
	 i1AzTLZavH7KQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21B9D811FE;
	Wed,  4 Sep 2024 13:58:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB8351BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7D4740203
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:58:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zYsiTUoqYcg9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 13:58:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9085F40189
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9085F40189
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9085F40189
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 13:58:08 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-211-vuYRL3R0PuWwMv8VFBBmHA-1; Wed,
 04 Sep 2024 09:58:02 -0400
X-MC-Unique: vuYRL3R0PuWwMv8VFBBmHA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D5C741955D5A; Wed,  4 Sep 2024 13:57:47 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.225.58])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 9EEAC195421B; Wed,  4 Sep 2024 13:57:24 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Sep 2024 15:53:41 +0200
Message-ID: <a664b4475431f677fe59d8bc8a04e9e984a53e26.1725457317.git.pabeni@redhat.com>
In-Reply-To: <cover.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725458287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=baf7NR+ARd1j5vSuLGfqoVv19brivZfJFTAjhr67f2c=;
 b=Rlh9sgLS+RyiSbb3nCh+GfyIkl35O465tgDJqxTEaIXl1aRliplqO/WS6vqV0ntQOW8c4F
 0rYnsR9RIsw0CS3NncxovmaueYMH699AP12NjZyrdsLmP5h3/9kmTDYOM2+dNOnJ0oT86u
 2WWW5gu+tLmySFa5k/M2GUHT3c154Y0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Rlh9sgLS
Subject: [Intel-wired-lan] [PATCH v6 net-next 09/15] net: shaper: implement
 introspection support
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

The netlink op is a simple wrapper around the device callback.

Extend the existing fetch_dev() helper adding an attribute argument
for the requested device. Reuse such helper in the newly implemented
operation.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v5 -> v6:
 - update to new API

v4 -> v5:
 - replace net_device* with binding* in most functions
 - de-deplicate some code thanks to more generic helpers in previous
   patches

v3 -> v4:
 - another dev_put() -> netdev_put() conversion, missed in previous
   iteration

RFC v2 -> v3:
 - dev_put() -> netdev_put()
---
 net/shaper/shaper.c | 98 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 95 insertions(+), 3 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index 67d38b691bb8..bc55dd53a5d7 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -617,22 +617,29 @@ int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
 int net_shaper_nl_cap_pre_doit(const struct genl_split_ops *ops,
 			       struct sk_buff *skb, struct genl_info *info)
 {
-	return -EOPNOTSUPP;
+	return net_shaper_generic_pre(info, NET_SHAPER_A_CAPS_IFINDEX);
 }
 
 void net_shaper_nl_cap_post_doit(const struct genl_split_ops *ops,
 				 struct sk_buff *skb, struct genl_info *info)
 {
+	net_shaper_generic_post(info);
 }
 
 int net_shaper_nl_cap_pre_dumpit(struct netlink_callback *cb)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)cb->ctx;
+
+	return net_shaper_ctx_setup(genl_info_dump(cb),
+				    NET_SHAPER_A_CAPS_IFINDEX, ctx);
 }
 
 int net_shaper_nl_cap_post_dumpit(struct netlink_callback *cb)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)cb->ctx;
+
+	net_shaper_ctx_cleanup(ctx);
+	return 0;
 }
 
 int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info)
@@ -1191,14 +1198,99 @@ int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
 	goto free_shapers;
 }
 
+static int
+net_shaper_cap_fill_one(struct sk_buff *msg,
+			struct net_shaper_binding *binding,
+			enum net_shaper_scope scope, unsigned long flags,
+			const struct genl_info *info)
+{
+	unsigned long cur;
+	void *hdr;
+
+	hdr = genlmsg_iput(msg, info);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	if (net_shaper_fill_binding(msg, binding, NET_SHAPER_A_CAPS_IFINDEX) ||
+	    nla_put_u32(msg, NET_SHAPER_A_CAPS_SCOPE, scope))
+		goto nla_put_failure;
+
+	for (cur = NET_SHAPER_A_CAPS_SUPPORT_METRIC_BPS;
+	     cur <= NET_SHAPER_A_CAPS_MAX; ++cur) {
+		if (flags & BIT(cur) && nla_put_flag(msg, cur))
+			goto nla_put_failure;
+	}
+
+	genlmsg_end(msg, hdr);
+
+	return 0;
+
+nla_put_failure:
+	genlmsg_cancel(msg, hdr);
+	return -EMSGSIZE;
+}
+
 int net_shaper_nl_cap_get_doit(struct sk_buff *skb, struct genl_info *info)
 {
+	struct net_shaper_binding *binding;
+	const struct net_shaper_ops *ops;
+	enum net_shaper_scope scope;
+	unsigned long flags = 0;
+	struct sk_buff *msg;
+	int ret;
+
+	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_CAPS_SCOPE))
+		return -EINVAL;
+
+	binding = net_shaper_binding_from_ctx(info->ctx);
+	scope = nla_get_u32(info->attrs[NET_SHAPER_A_CAPS_SCOPE]);
+	ops = net_shaper_ops(binding);
+	ops->capabilities(binding, scope, &flags);
+	if (!flags)
+		return -EOPNOTSUPP;
+
+	msg = genlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+
+	ret = net_shaper_cap_fill_one(msg, binding, scope, flags, info);
+	if (ret)
+		goto free_msg;
+
+	ret =  genlmsg_reply(msg, info);
+	if (ret)
+		goto free_msg;
 	return 0;
+
+free_msg:
+	nlmsg_free(msg);
+	return ret;
 }
 
 int net_shaper_nl_cap_get_dumpit(struct sk_buff *skb,
 				 struct netlink_callback *cb)
 {
+	const struct genl_info *info = genl_info_dump(cb);
+	struct net_shaper_binding *binding;
+	const struct net_shaper_ops *ops;
+	enum net_shaper_scope scope;
+	int ret;
+
+	binding = net_shaper_binding_from_ctx(cb->ctx);
+	ops = net_shaper_ops(binding);
+	for (scope = 0; scope <= NET_SHAPER_SCOPE_MAX; ++scope) {
+		unsigned long flags = 0;
+
+		ops->capabilities(binding, scope, &flags);
+		if (!flags)
+			continue;
+
+		ret = net_shaper_cap_fill_one(skb, binding, scope, flags,
+					      info);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
-- 
2.45.2

