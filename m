Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E52198A626
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CDCB4026F;
	Mon, 30 Sep 2024 13:54:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wE5jUMkn9LCX; Mon, 30 Sep 2024 13:54:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAFFB40243
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727704492;
	bh=WHF/kXVu4tqnOBlnKENt9hsSlFNKEAg3X28gEIBw6OI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RHMmFeYdJPLPOKTazkkOyhlHheMxUrwGCHSaUutVWP/34XlgmQl6WtBZHHNqwwQAe
	 SHAwE6F++ixY70WKC+yuzWUL1FEKtF3GamWRX75Rdn8WQK847m5yilxqS9zMqmS35L
	 ZdV5Iduhk82VDODCfuq0LIFnl1NV+6zOYMQIUCSnttUYvxVHS+NrX79PtZJWWzDkG+
	 WqyVZ/qptf/QkCxv4wQKuRV1qJZryYt4a+wr6J3u3lkGQK8UFIqeKOtfOWQ+0OP0h5
	 8VIHFD0mu/gExz2DnA2D6PvYLUurI0N7feN22WWHfpwO18NqZ4gAScNNCP9pEDdpWl
	 5VBVrqyBEQegw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAFFB40243;
	Mon, 30 Sep 2024 13:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 301781BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1EF3F60659
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evjQTyaqOkkd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:54:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2FC6660630
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FC6660630
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2FC6660630
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:46 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-138-e6UQuYCDMsicYFRM3GP1Zg-1; Mon,
 30 Sep 2024 09:54:42 -0400
X-MC-Unique: e6UQuYCDMsicYFRM3GP1Zg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 8526B1944CEE; Mon, 30 Sep 2024 13:54:40 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.210])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 6065C1954B0F; Mon, 30 Sep 2024 13:54:35 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 15:53:48 +0200
Message-ID: <4cea743b9af39fc312d838f9dffec4a3fa9c5865.1727704215.git.pabeni@redhat.com>
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727704486;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WHF/kXVu4tqnOBlnKENt9hsSlFNKEAg3X28gEIBw6OI=;
 b=RvDXfGoGdjjFTqAcedx8o9ridEFw45C5DagfRf1I3F5rBkmFFy10hQP173TrBDqS9ygbGl
 cuZVNNDKE0IEQTZH23EaojundA3Dxwks9Fvqb7HtPWMh+lL4a2/UrGT/s4l7XwVMz7HNwB
 Ldk/WGLz9tzYjoHd/RijkqcYd1Dr7i8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=RvDXfGoG
Subject: [Intel-wired-lan] [PATCH v8 net-next 01/15] genetlink: extend info
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
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
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
index 1cb954f2d39e..358cba248796 100644
--- a/net/core/netdev-genl.c
+++ b/net/core/netdev-genl.c
@@ -24,7 +24,7 @@ struct netdev_nl_dump_ctx {
 
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
index 6a1239433830..36168f8b6efa 100644
--- a/net/netfilter/nf_conntrack_netlink.c
+++ b/net/netfilter/nf_conntrack_netlink.c
@@ -3870,7 +3870,7 @@ static int __init ctnetlink_init(void)
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

