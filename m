Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0869298A638
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADFFB402BA;
	Mon, 30 Sep 2024 13:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yz7jKMrHcJaT; Mon, 30 Sep 2024 13:55:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C332840250
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727704534;
	bh=b0nzLN0YTUprsy8RfgpIhspndZYlYjADPE95W06NkOI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JieCMp1HScq1IHuQZ3bWBE6cONguWGuRbuXf4+ntLaIxMfRXEk3MsGhyAt4QTccuv
	 2Ku5DP4MFMjaOpb18zAPi1K3a3bF4gBuC0ws6t8P4jON+ormtmh/2wLaPtHLSZCIEk
	 kZQ1yThSM17pIXxC/LJ6g7fxUGhDZzF9C5IKREcvmFHoFVdrmdhxZRtpfdYHNvDBSc
	 6RgBuE4FMbvFWy/PPnPimQFCYsWSxNsxIoJWEmj1WjYkEEwBwYpWA+gpBwBROqhtE7
	 hQXh1XtGgu+lYFT63JY6zSg2uBTmjamzruOiGZ3heVz9kvYNLlJmX1GBiX19X2anxD
	 AVFavX3BzcRCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C332840250;
	Mon, 30 Sep 2024 13:55:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD2DB1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8EA960659
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xgexSCr1uP3J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:55:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 022C560630
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 022C560630
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 022C560630
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:31 +0000 (UTC)
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-607-8yJMa465P-uP4JhjKV39wQ-1; Mon,
 30 Sep 2024 09:55:27 -0400
X-MC-Unique: 8yJMa465P-uP4JhjKV39wQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 74F541944DE0; Mon, 30 Sep 2024 13:55:25 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.210])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5E0691954B0F; Mon, 30 Sep 2024 13:55:20 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 15:53:56 +0200
Message-ID: <7523bf4d6f19429efd32192dd5b90f7bb0b0b20d.1727704215.git.pabeni@redhat.com>
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727704531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b0nzLN0YTUprsy8RfgpIhspndZYlYjADPE95W06NkOI=;
 b=S4vVN7L4sA6M6FHwJkjI7L0KH0V7QXAI+p/GW1CmzTdl6p0K7lLgNr5r/EQe72KwjT2VKl
 BVDchRHUxkDTjUeSh9KTaDgQQWDvx+vNAqdqvIBKsECduttxwfFr4lbP4eyzYX0xJw57SU
 UeBIahXyW+JeyVt5pYnJIrSvjw/BJ8M=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=S4vVN7L4
Subject: [Intel-wired-lan] [PATCH v8 net-next 09/15] net: shaper: implement
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
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
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
index 92c8da046391..f9399984165a 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -601,22 +601,29 @@ int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
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
@@ -1147,14 +1154,99 @@ int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
 	goto free_leaves;
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

