Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B4F9649BA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 17:18:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B74A4419DA;
	Thu, 29 Aug 2024 15:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y0rlDt7YV8D0; Thu, 29 Aug 2024 15:18:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4B4F403DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724944698;
	bh=J+AHJEKfihouwzHxsuo69tpJA2c+4waL3jCHXyEoGf0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n//gyn3mO/k0NlW/lSFri3TMedlbToIWM6fj34S0mG3Hrp3U9gTQ+DDEoA9hQpQu1
	 kVa3G02fOhy9BevYqv/lSQyM/G+7LTDa8E1bFJdrddSJyoI1nAj8C+pnftsVeUn4Dk
	 e5ZpBjgH90lrYo5YNWT6eUBUVsecN0aD+Im1v7GAbIAK1vCdCHfoU/1Ax2bJjbG6w3
	 WebWkfu78WR6zwiXeVnTXWGr68oQQC/3PAaOpSfmOMdkjGMZSYO8dwfYJ5XdbDF16D
	 tSaypYkuKvfZwro/HjjymLGOo1yZdmtUfy3XZ7n0bp3HR9AgupN3wHsPs780lk2/aR
	 vdOnwkr9ka7dQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4B4F403DD;
	Thu, 29 Aug 2024 15:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 327BB1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C624F41979
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iWLgza3_PtIa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 15:18:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A6D714047D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6D714047D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6D714047D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 15:18:12 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-551-R0aMnxT9OlOXXsBxaBq1Iw-1; Thu,
 29 Aug 2024 11:18:06 -0400
X-MC-Unique: R0aMnxT9OlOXXsBxaBq1Iw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 526681955BF4; Thu, 29 Aug 2024 15:18:04 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.217])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 429CB300019C; Thu, 29 Aug 2024 15:17:58 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 29 Aug 2024 17:17:00 +0200
Message-ID: <2ddedcd3f4dd4d9986c3a3bc995a2c410c20440e.1724944117.git.pabeni@redhat.com>
In-Reply-To: <cover.1724944116.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1724944691;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J+AHJEKfihouwzHxsuo69tpJA2c+4waL3jCHXyEoGf0=;
 b=RF7vNKYkkpSvh0FYxPihTIPPRJ9Q7/zXT+7Yh2zQE6DT/iXjzGPt5v63uhslKp2B2bIQX4
 WC9JUZ9tkG1zWUcz6FLcNH1y4Svc2PdMj1NyWaR6UprLs/n6fU8azgVRB0DiqroexyMew/
 fuvwMfsQA0qIzeTmVYHMZKyxjohM62k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=RF7vNKYk
Subject: [Intel-wired-lan] [PATCH v5 net-next 07/12] net: shaper: implement
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
 net/shaper/shaper.c | 96 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 93 insertions(+), 3 deletions(-)

diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index 98e17a95f39f..b7e5a3990328 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -629,22 +629,29 @@ int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
 int net_shaper_nl_cap_pre_doit(const struct genl_split_ops *ops,
 			       struct sk_buff *skb, struct genl_info *info)
 {
-	return -EOPNOTSUPP;
+	return net_shaper_generic_pre(info, NET_SHAPER_A_CAPABILITIES_IFINDEX);
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
+	return net_shaper_ctx_init(genl_info_dump(cb),
+				   NET_SHAPER_A_CAPABILITIES_IFINDEX, ctx);
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
@@ -1196,14 +1203,97 @@ int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
 	return ret;
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
+	if (net_shaper_fill_binding(msg, binding,
+				    NET_SHAPER_A_CAPABILITIES_IFINDEX) ||
+	    nla_put_u32(msg, NET_SHAPER_A_CAPABILITIES_SCOPE, scope))
+		goto nla_put_failure;
+
+	for (cur = NET_SHAPER_A_CAPABILITIES_SUPPORT_METRIC_BPS;
+	     cur <= NET_SHAPER_A_CAPABILITIES_MAX; ++cur) {
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
+	struct net_shaper_binding *binding = info->user_ptr[0];
+	const struct net_shaper_ops *ops;
+	enum net_shaper_scope scope;
+	struct sk_buff *msg;
+	unsigned long flags;
+	int ret;
+
+	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_CAPABILITIES_SCOPE))
+		return -EINVAL;
+
+	scope = nla_get_u32(info->attrs[NET_SHAPER_A_CAPABILITIES_SCOPE]);
+	ops = net_shaper_binding_ops(binding);
+	ret = ops->capabilities(binding, scope, &flags);
+	if (ret)
+		return ret;
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
+	unsigned long flags;
+	int ret;
+
+	binding = net_shaper_binding_from_ctx(cb->ctx);
+	ops = net_shaper_binding_ops(binding);
+	for (scope = 0; scope <= NET_SHAPER_SCOPE_MAX; ++scope) {
+		if (ops->capabilities(binding, scope, &flags))
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

