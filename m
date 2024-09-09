Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 734A39724F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 00:11:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 297D760828;
	Mon,  9 Sep 2024 22:11:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ppNCVPKpBXYT; Mon,  9 Sep 2024 22:11:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19E9660829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725919866;
	bh=mIVyrhi2s5gFSElzDt3y5GPyNoI5I8A1yOTTCzp6miQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S3a7U9kHEu7PcMqgNIkcOEsE/YC8Q+AOS0LBy7PaPnirwU0RlRQpzokauZwkHcQ1A
	 Kw5lDxgmX0/nhEdpUopLToQN/v4rsmFDjeU0m2V5VUPlR6VtOH4buNpL9+6KYQZ3Qf
	 a/aAXXPZfAlCgM5GzaejZFBQKBVOZzh6uveYZR53BlDAEE4jPcIsOyy7BGgrt4l+mJ
	 bdou+ucJr37dmS8WXwcOUh3mREw8icE7iK24bj4A6zzh7hIrCzmTxTCXd/vtY4HDZe
	 N+E7k5G4Ug9Vi30CBn2Zoa7QAXMqYdEX4y4H072qPJ270fpX79q/g73rcpGzNB53Sp
	 p0kXFXV4BcEYA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19E9660829;
	Mon,  9 Sep 2024 22:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 073431BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E8C9660823
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T9CxulAsREdQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 22:11:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CEFCC606F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEFCC606F3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CEFCC606F3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 22:11:00 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-508-Nt1VVq1eOA-CWABcHCX62A-1; Mon,
 09 Sep 2024 18:10:56 -0400
X-MC-Unique: Nt1VVq1eOA-CWABcHCX62A-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 94BDE1956080; Mon,  9 Sep 2024 22:10:53 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.56])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id CD29B1956086; Mon,  9 Sep 2024 22:10:48 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Sep 2024 00:09:55 +0200
Message-ID: <4bd304768d7ef1fdee5033b8fe1788092ac0af38.1725919039.git.pabeni@redhat.com>
In-Reply-To: <cover.1725919039.git.pabeni@redhat.com>
References: <cover.1725919039.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725919859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mIVyrhi2s5gFSElzDt3y5GPyNoI5I8A1yOTTCzp6miQ=;
 b=i5z7xY5NJwO8jgMSsrVQQhLRlDa+Qk45CpwuMZa8fHWuq5B/YlgEPnrPpL7DUN5qk1pAMa
 7K1Ulhv1V6OJ6Dmv+OgW3nR6fHexK7xuSan+sX3UM9ifzzbx8YQtgZ7En4EwV4s7dgxpDf
 SULQ1d6D0KuHRRJZVstKPkLyrfsY/28=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=i5z7xY5N
Subject: [Intel-wired-lan] [PATCH v7 net-next 01/15] genetlink: extend info
 user-storage to match NL cb ctx
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

This allows a more uniform implementation of non-dump and dump
operations, and will be used later in the series to avoid some
per-operation allocation.

Additionally rename the NL_ASSERT_DUMP_CTX_FITS macro, to
fit a more extended usage.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
 drivers/net/vxlan/vxlan_mdb.c        | 2 +-
 include/linux/netlink.h              | 5 +++--
 include/net/genetlink.h              | 8 ++++++--
 net/core/netdev-genl.c               | 2 +-
 net/core/rtnetlink.c                 | 2 +-
 net/devlink/devl_internal.h          | 2 +-
 net/ethtool/rss.c                    | 2 +-
 net/netfilter/nf_conntrack_netlink.c | 2 +-
 net/netlink/genetlink.c              | 4 ++--
 9 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/net/vxlan/vxlan_mdb.c b/drivers/net/vxlan/vxlan_mdb.c
index 60eb95a06d55..ebed05a2804c 100644
--- a/drivers/net/vxlan/vxlan_mdb.c
+++ b/drivers/net/vxlan/vxlan_mdb.c
@@ -284,7 +284,7 @@ int vxlan_mdb_dump(struct net_device *dev, struct sk_buff *skb,
 
 	ASSERT_RTNL();
 
-	NL_ASSERT_DUMP_CTX_FITS(struct vxlan_mdb_dump_ctx);
+	NL_ASSERT_CTX_FITS(struct vxlan_mdb_dump_ctx);
 
 	nlh = nlmsg_put(skb, NETLINK_CB(cb->skb).portid,
 			cb->nlh->nlmsg_seq, RTM_NEWMDB, sizeof(*bpm),
diff --git a/include/linux/netlink.h b/include/linux/netlink.h
index b332c2048c75..a3ca198a3a9e 100644
--- a/include/linux/netlink.h
+++ b/include/linux/netlink.h
@@ -34,6 +34,7 @@ struct netlink_skb_parms {
 
 #define NETLINK_CB(skb)		(*(struct netlink_skb_parms*)&((skb)->cb))
 #define NETLINK_CREDS(skb)	(&NETLINK_CB((skb)).creds)
+#define NETLINK_CTX_SIZE	48
 
 
 void netlink_table_grab(void);
@@ -293,7 +294,7 @@ struct netlink_callback {
 	int			flags;
 	bool			strict_check;
 	union {
-		u8		ctx[48];
+		u8		ctx[NETLINK_CTX_SIZE];
 
 		/* args is deprecated. Cast a struct over ctx instead
 		 * for proper type safety.
@@ -302,7 +303,7 @@ struct netlink_callback {
 	};
 };
 
-#define NL_ASSERT_DUMP_CTX_FITS(type_name)				\
+#define NL_ASSERT_CTX_FITS(type_name)					\
 	BUILD_BUG_ON(sizeof(type_name) >				\
 		     sizeof_field(struct netlink_callback, ctx))
 
diff --git a/include/net/genetlink.h b/include/net/genetlink.h
index 9ab49bfeae78..9d3726e8f90e 100644
--- a/include/net/genetlink.h
+++ b/include/net/genetlink.h
@@ -124,7 +124,8 @@ struct genl_family {
  * @genlhdr: generic netlink message header
  * @attrs: netlink attributes
  * @_net: network namespace
- * @user_ptr: user pointers
+ * @ctx: storage space for the use by the family
+ * @user_ptr: user pointers (deprecated, use ctx instead)
  * @extack: extended ACK report struct
  */
 struct genl_info {
@@ -135,7 +136,10 @@ struct genl_info {
 	struct genlmsghdr *	genlhdr;
 	struct nlattr **	attrs;
 	possible_net_t		_net;
-	void *			user_ptr[2];
+	union {
+		u8		ctx[NETLINK_CTX_SIZE];
+		void *		user_ptr[2];
+	};
 	struct netlink_ext_ack *extack;
 };
 
diff --git a/net/core/netdev-genl.c b/net/core/netdev-genl.c
index a17d7eaeb001..bb2b9f53ef6b 100644
--- a/net/core/netdev-genl.c
+++ b/net/core/netdev-genl.c
@@ -23,7 +23,7 @@ struct netdev_nl_dump_ctx {
 
 static struct netdev_nl_dump_ctx *netdev_dump_ctx(struct netlink_callback *cb)
 {
-	NL_ASSERT_DUMP_CTX_FITS(struct netdev_nl_dump_ctx);
+	NL_ASSERT_CTX_FITS(struct netdev_nl_dump_ctx);
 
 	return (struct netdev_nl_dump_ctx *)cb->ctx;
 }
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index f0a520987085..472d1a27cdf8 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -6169,7 +6169,7 @@ static int rtnl_mdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
 	int idx, s_idx;
 	int err;
 
-	NL_ASSERT_DUMP_CTX_FITS(struct rtnl_mdb_dump_ctx);
+	NL_ASSERT_CTX_FITS(struct rtnl_mdb_dump_ctx);
 
 	if (cb->strict_check) {
 		err = rtnl_mdb_valid_dump_req(cb->nlh, cb->extack);
diff --git a/net/devlink/devl_internal.h b/net/devlink/devl_internal.h
index c7a8e13f917c..a9f064ab9ed9 100644
--- a/net/devlink/devl_internal.h
+++ b/net/devlink/devl_internal.h
@@ -166,7 +166,7 @@ int devlink_nl_dumpit(struct sk_buff *msg, struct netlink_callback *cb,
 static inline struct devlink_nl_dump_state *
 devlink_dump_state(struct netlink_callback *cb)
 {
-	NL_ASSERT_DUMP_CTX_FITS(struct devlink_nl_dump_state);
+	NL_ASSERT_CTX_FITS(struct devlink_nl_dump_state);
 
 	return (struct devlink_nl_dump_state *)cb->ctx;
 }
diff --git a/net/ethtool/rss.c b/net/ethtool/rss.c
index e07386275e14..7cb106b590ab 100644
--- a/net/ethtool/rss.c
+++ b/net/ethtool/rss.c
@@ -224,7 +224,7 @@ struct rss_nl_dump_ctx {
 
 static struct rss_nl_dump_ctx *rss_dump_ctx(struct netlink_callback *cb)
 {
-	NL_ASSERT_DUMP_CTX_FITS(struct rss_nl_dump_ctx);
+	NL_ASSERT_CTX_FITS(struct rss_nl_dump_ctx);
 
 	return (struct rss_nl_dump_ctx *)cb->ctx;
 }
diff --git a/net/netfilter/nf_conntrack_netlink.c b/net/netfilter/nf_conntrack_netlink.c
index 123e2e933e9b..8c54c5a2a86e 100644
--- a/net/netfilter/nf_conntrack_netlink.c
+++ b/net/netfilter/nf_conntrack_netlink.c
@@ -3873,7 +3873,7 @@ static int __init ctnetlink_init(void)
 {
 	int ret;
 
-	NL_ASSERT_DUMP_CTX_FITS(struct ctnetlink_list_dump_ctx);
+	NL_ASSERT_CTX_FITS(struct ctnetlink_list_dump_ctx);
 
 	ret = nfnetlink_subsys_register(&ctnl_subsys);
 	if (ret < 0) {
diff --git a/net/netlink/genetlink.c b/net/netlink/genetlink.c
index feb54c63a116..29387b605f3e 100644
--- a/net/netlink/genetlink.c
+++ b/net/netlink/genetlink.c
@@ -997,7 +997,7 @@ static int genl_start(struct netlink_callback *cb)
 	info->info.attrs	= attrs;
 	genl_info_net_set(&info->info, sock_net(cb->skb->sk));
 	info->info.extack	= cb->extack;
-	memset(&info->info.user_ptr, 0, sizeof(info->info.user_ptr));
+	memset(&info->info.ctx, 0, sizeof(info->info.ctx));
 
 	cb->data = info;
 	if (ops->start) {
@@ -1104,7 +1104,7 @@ static int genl_family_rcv_msg_doit(const struct genl_family *family,
 	info.attrs = attrbuf;
 	info.extack = extack;
 	genl_info_net_set(&info, net);
-	memset(&info.user_ptr, 0, sizeof(info.user_ptr));
+	memset(&info.ctx, 0, sizeof(info.ctx));
 
 	if (ops->pre_doit) {
 		err = ops->pre_doit(ops, skb, &info);
-- 
2.45.2

