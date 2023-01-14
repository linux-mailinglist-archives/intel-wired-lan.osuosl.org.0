Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF5466AC53
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 16:55:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EBEA60BAC;
	Sat, 14 Jan 2023 15:55:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EBEA60BAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673711725;
	bh=/tEaeNso0T3dlv8v5z0kDjRupDMXr1C7BiYXWnxCVjI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2QcAIMNGo7t+PWgyiazq8Z9qSJgSXZr1bE+fLL6yVIee0PwS4S3YY1JB8lkTXlQoS
	 ad9rm5sxNI4rDgExq9JhbXUL1b68BqEMPM1FTPNBVroOaY3PPG8Z0CGMHex4e6bTJ+
	 6mTE9Wz1w4p8kDsXoAvDB7fgEuCRYuIhxrU5ga0ZHUAfBBZYBBZwS0OBA2+q6m5fso
	 RIXPUaF/rbxAT9bQt25pr/nbDGeIRi5Qd05ih2WNd7g4PcaAwIkgh9kSuC0tNK98a/
	 KpxNGz/UBrQHb/88GVx2qgtZq1HCizITILgwWrCTed4CZj1eMQyGAY/osiVXWN76/G
	 gYbFhtm2GbmeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cpy30YxGhbMT; Sat, 14 Jan 2023 15:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BC55608B7;
	Sat, 14 Jan 2023 15:55:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BC55608B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B55721BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 756E94061C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 756E94061C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxHyG2oeZIkF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 15:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5857240576
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5857240576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A137D60B8B;
 Sat, 14 Jan 2023 15:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85F96C433EF;
 Sat, 14 Jan 2023 15:55:08 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 14 Jan 2023 16:54:35 +0100
Message-Id: <e58d34cd95e39caf0efb25951bc2da9948c6f486.1673710867.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1673710866.git.lorenzo@kernel.org>
References: <cover.1673710866.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673711709;
 bh=rp3pxDboKOAjey0e3CF1RiOxABDlqKqDNOOLTGtszP8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=crmSfYCMTRzs5tzdK3UeK17SqSq1WOjCBZF0he1ecRfNE6+gCZb4FQJvinZtRcwT9
 7Xnt1oxZXQu0oD8rQeQBqdpNJ0D/b+WsHqoiuCscKFBZjPhCjw02PkijX0Tze4DBNW
 gpyU1yxl+n7YrXwget3VO3ZDKWXmLOL82QanGb47trFZ2nPfDZDiM3TDcot1f4OTgH
 FM+tbqt9qWWXyq6y2rqOl1eYnLZtuaMmmjs3A/IH8EvuIvzofEY+OlkeQ4UB73/xMk
 7pMUbCM500PgmYLq4MCD/WOEppCxb/2Ga3kFR9DLd4A9HTaKZS5YqjK1VmbEaA5U64
 egotF5QUXLM7A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=crmSfYCM
Subject: [Intel-wired-lan] [RFC v2 bpf-next 5/7] libbpf: add API to get
 XDP/XSK supported features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend bpf_xdp_query routine in order to get XDP/XSK supported features
of netdev over route netlink interface.
Extend libbpf netlink implementation in order to support netlink_generic
protocol.

Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Co-developed-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 tools/lib/bpf/libbpf.h  |  3 +-
 tools/lib/bpf/netlink.c | 98 +++++++++++++++++++++++++++++++++++++++++
 tools/lib/bpf/nlattr.h  | 12 +++++
 3 files changed, 112 insertions(+), 1 deletion(-)

diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
index 898db26e42e9..29cb7040fa77 100644
--- a/tools/lib/bpf/libbpf.h
+++ b/tools/lib/bpf/libbpf.h
@@ -982,9 +982,10 @@ struct bpf_xdp_query_opts {
 	__u32 hw_prog_id;	/* output */
 	__u32 skb_prog_id;	/* output */
 	__u8 attach_mode;	/* output */
+	__u64 fflags;		/* output */
 	size_t :0;
 };
-#define bpf_xdp_query_opts__last_field attach_mode
+#define bpf_xdp_query_opts__last_field fflags
 
 LIBBPF_API int bpf_xdp_attach(int ifindex, int prog_fd, __u32 flags,
 			      const struct bpf_xdp_attach_opts *opts);
diff --git a/tools/lib/bpf/netlink.c b/tools/lib/bpf/netlink.c
index d2468a04a6c3..66c7e3dbd41f 100644
--- a/tools/lib/bpf/netlink.c
+++ b/tools/lib/bpf/netlink.c
@@ -9,6 +9,7 @@
 #include <linux/if_ether.h>
 #include <linux/pkt_cls.h>
 #include <linux/rtnetlink.h>
+#include <linux/netdev.h>
 #include <sys/socket.h>
 #include <errno.h>
 #include <time.h>
@@ -39,6 +40,12 @@ struct xdp_id_md {
 	int ifindex;
 	__u32 flags;
 	struct xdp_link_info info;
+	__u64 fflags;
+};
+
+struct xdp_features_md {
+	int ifindex;
+	__u64 flags;
 };
 
 static int libbpf_netlink_open(__u32 *nl_pid, int proto)
@@ -238,6 +245,42 @@ static int libbpf_netlink_send_recv(struct libbpf_nla_req *req,
 	return ret;
 }
 
+static int parse_genl_family_id(struct nlmsghdr *nh, libbpf_dump_nlmsg_t fn,
+				void *cookie)
+{
+	struct nlattr *na = (struct nlattr *)(NLMSG_DATA(nh) + GENL_HDRLEN);
+
+	na = (struct nlattr *)((void *)na + NLA_ALIGN(na->nla_len));
+	if (na->nla_type == CTRL_ATTR_FAMILY_ID) {
+		__u16 *id = cookie;
+
+		*id = libbpf_nla_getattr_u16(na);
+		return NL_DONE;
+	}
+
+	return NL_CONT;
+}
+
+static int libbpf_netlink_resolve_genl_family_id(const char *name,
+						 __u16 len, __u16 *id)
+{
+	struct libbpf_nla_req req = {
+		.nh.nlmsg_len	= NLMSG_LENGTH(GENL_HDRLEN),
+		.nh.nlmsg_type	= GENL_ID_CTRL,
+		.nh.nlmsg_flags	= NLM_F_REQUEST,
+		.gnl.cmd	= CTRL_CMD_GETFAMILY,
+		.gnl.version	= 1,
+	};
+	int err;
+
+	err = nlattr_add(&req, CTRL_ATTR_FAMILY_NAME, name, len);
+	if (err < 0)
+		return err;
+
+	return libbpf_netlink_send_recv(&req, NETLINK_GENERIC,
+					parse_genl_family_id, NULL, id);
+}
+
 static int __bpf_set_link_xdp_fd_replace(int ifindex, int fd, int old_fd,
 					 __u32 flags)
 {
@@ -357,6 +400,29 @@ static int get_xdp_info(void *cookie, void *msg, struct nlattr **tb)
 	return 0;
 }
 
+static int parse_xdp_features(struct nlmsghdr *nh, libbpf_dump_nlmsg_t fn,
+			      void *cookie)
+{
+	struct nlattr *na = (struct nlattr *)(NLMSG_DATA(nh) + GENL_HDRLEN);
+	struct xdp_features_md *md = cookie;
+	int ifindex;
+
+	if (na->nla_type != NETDEV_A_DEV_IFINDEX)
+		return NL_CONT;
+
+	ifindex = libbpf_nla_getattr_u32(na);
+	if (ifindex != md->ifindex)
+		return NL_CONT;
+
+	na = (struct nlattr *)((void *)na + NLA_ALIGN(na->nla_len));
+	if (na->nla_type != NETDEV_A_DEV_XDP_FEATURES)
+		return NL_CONT;
+
+	md->flags = libbpf_nla_getattr_u64(na);
+
+	return NL_DONE;
+}
+
 int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 {
 	struct libbpf_nla_req req = {
@@ -393,6 +459,38 @@ int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 	OPTS_SET(opts, skb_prog_id, xdp_id.info.skb_prog_id);
 	OPTS_SET(opts, attach_mode, xdp_id.info.attach_mode);
 
+	if (OPTS_HAS(opts, fflags)) {
+		struct xdp_features_md md = {
+			.ifindex = ifindex,
+		};
+		__u16 id;
+
+		err = libbpf_netlink_resolve_genl_family_id("netdev",
+							    sizeof("netdev"),
+							    &id);
+		if (err < 0)
+			return libbpf_err(err);
+
+		memset(&req, 0, sizeof(req));
+		req.nh.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
+		req.nh.nlmsg_flags = NLM_F_REQUEST;
+		req.nh.nlmsg_type = id;
+		req.gnl.cmd = NETDEV_CMD_DEV_GET;
+		req.gnl.version = 1;
+
+		err = nlattr_add(&req, NETDEV_A_DEV_IFINDEX, &ifindex,
+				 sizeof(ifindex));
+		if (err < 0)
+			return err;
+
+		err = libbpf_netlink_send_recv(&req, NETLINK_GENERIC,
+					       parse_xdp_features, NULL, &md);
+		if (err)
+			return libbpf_err(err);
+
+		opts->fflags = md.flags;
+	}
+
 	return 0;
 }
 
diff --git a/tools/lib/bpf/nlattr.h b/tools/lib/bpf/nlattr.h
index 4d15ae2ff812..d92d1c1de700 100644
--- a/tools/lib/bpf/nlattr.h
+++ b/tools/lib/bpf/nlattr.h
@@ -14,6 +14,7 @@
 #include <errno.h>
 #include <linux/netlink.h>
 #include <linux/rtnetlink.h>
+#include <linux/genetlink.h>
 
 /* avoid multiple definition of netlink features */
 #define __LINUX_NETLINK_H
@@ -58,6 +59,7 @@ struct libbpf_nla_req {
 	union {
 		struct ifinfomsg ifinfo;
 		struct tcmsg tc;
+		struct genlmsghdr gnl;
 	};
 	char buf[128];
 };
@@ -89,11 +91,21 @@ static inline uint8_t libbpf_nla_getattr_u8(const struct nlattr *nla)
 	return *(uint8_t *)libbpf_nla_data(nla);
 }
 
+static inline uint16_t libbpf_nla_getattr_u16(const struct nlattr *nla)
+{
+	return *(uint16_t *)libbpf_nla_data(nla);
+}
+
 static inline uint32_t libbpf_nla_getattr_u32(const struct nlattr *nla)
 {
 	return *(uint32_t *)libbpf_nla_data(nla);
 }
 
+static inline uint64_t libbpf_nla_getattr_u64(const struct nlattr *nla)
+{
+	return *(uint64_t *)libbpf_nla_data(nla);
+}
+
 static inline const char *libbpf_nla_getattr_str(const struct nlattr *nla)
 {
 	return (const char *)libbpf_nla_data(nla);
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
