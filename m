Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8341567F86D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:07:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1364641775;
	Sat, 28 Jan 2023 14:07:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1364641775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674914833;
	bh=ynafh6BLYqE5cVBNcMUKmWUaWCKUA4Xl3EhjqbrnX2Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9vufKSICLSqd6wvqVZjjCVqZDMHiQXWBgimbH2cMT13wF7jNNEE/p8nfXoVD7LH0W
	 riZFxf3gDiDAoy1+VntU5ombcBx6Y1X48tUqQJUeoTSQ5crxMIkaVl4iCCntmOVJmk
	 L/KJYLim+k2GCpwDVCe/LOsRcKT0xSKFGbo/pKwrAmVo11VJTo4mc0zEsSu0nMlnDq
	 zHqUdCcFvQBzPPBedk8FhBeqkE335r7I5onRRN3EBtqqc6AMKiFU3UBotWuKnbi26N
	 EKf3p80miVs3Eiw19nIGL4S3h5UflDnkmogpwRB6uqf/VzydKJsdkod4yqkY37hlXd
	 ic9ECf0tG2osA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9PyGg-OwoyY; Sat, 28 Jan 2023 14:07:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD4834167A;
	Sat, 28 Jan 2023 14:07:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD4834167A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CF2A1BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5648081E87
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5648081E87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WXeYDY84jarh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:06:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3BB881A24
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3BB881A24
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:06:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1806360C11;
 Sat, 28 Jan 2023 14:06:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00AAAC4339C;
 Sat, 28 Jan 2023 14:06:57 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 28 Jan 2023 15:06:15 +0100
Message-Id: <abab6dad67af879c734562b29f0ca7304330cee7.1674913191.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674913191.git.lorenzo@kernel.org>
References: <cover.1674913191.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674914817;
 bh=frQ6wryTRsgHtvKmNSpqoCYSBl1MocigbxPElIXBFRE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CQU+4+M94huZLCDt2JFOYfIudqUcIirXJIALtBoVOSvs/bkJap1FlcIjK1gsmnK0Q
 EbfykTE7taePGavINPYVlf3waMDGz4c5tWVA3Nl9NKth4PoiE/ZvsC7OLHNHMI+yyR
 MZ9i0164oqPT8NO2U0Wcakkx99/obQN6SQDv69VR5B3AUvoozYuvtL0rQHf+fHdwfW
 YL5Yw58pFnUBC+JPiDoFfbn4edcCaeglxq9Fw+I7hYHY/qy1fjoJPdrm7KNNBHw2Zi
 W7DEcgn0hsyAglYMRRm7gmVccRRTWfgf8nRoSX5Vp+d/XYt0BVReL+Say9vSFV+O2g
 ockXjSFCSMwUg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=CQU+4+M9
Subject: [Intel-wired-lan] [PATCH v4 bpf-next 4/8] libbpf: add the
 capability to specify netlink proto in libbpf_netlink_send_recv
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
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a preliminary patch in order to introduce netlink_generic
protocol support to libbpf.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 tools/lib/bpf/netlink.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/tools/lib/bpf/netlink.c b/tools/lib/bpf/netlink.c
index 35104580870c..d2468a04a6c3 100644
--- a/tools/lib/bpf/netlink.c
+++ b/tools/lib/bpf/netlink.c
@@ -41,7 +41,7 @@ struct xdp_id_md {
 	struct xdp_link_info info;
 };
 
-static int libbpf_netlink_open(__u32 *nl_pid)
+static int libbpf_netlink_open(__u32 *nl_pid, int proto)
 {
 	struct sockaddr_nl sa;
 	socklen_t addrlen;
@@ -51,7 +51,7 @@ static int libbpf_netlink_open(__u32 *nl_pid)
 	memset(&sa, 0, sizeof(sa));
 	sa.nl_family = AF_NETLINK;
 
-	sock = socket(AF_NETLINK, SOCK_RAW | SOCK_CLOEXEC, NETLINK_ROUTE);
+	sock = socket(AF_NETLINK, SOCK_RAW | SOCK_CLOEXEC, proto);
 	if (sock < 0)
 		return -errno;
 
@@ -212,14 +212,14 @@ static int libbpf_netlink_recv(int sock, __u32 nl_pid, int seq,
 }
 
 static int libbpf_netlink_send_recv(struct libbpf_nla_req *req,
-				    __dump_nlmsg_t parse_msg,
+				    int proto, __dump_nlmsg_t parse_msg,
 				    libbpf_dump_nlmsg_t parse_attr,
 				    void *cookie)
 {
 	__u32 nl_pid = 0;
 	int sock, ret;
 
-	sock = libbpf_netlink_open(&nl_pid);
+	sock = libbpf_netlink_open(&nl_pid, proto);
 	if (sock < 0)
 		return sock;
 
@@ -271,7 +271,7 @@ static int __bpf_set_link_xdp_fd_replace(int ifindex, int fd, int old_fd,
 	}
 	nlattr_end_nested(&req, nla);
 
-	return libbpf_netlink_send_recv(&req, NULL, NULL, NULL);
+	return libbpf_netlink_send_recv(&req, NETLINK_ROUTE, NULL, NULL, NULL);
 }
 
 int bpf_xdp_attach(int ifindex, int prog_fd, __u32 flags, const struct bpf_xdp_attach_opts *opts)
@@ -382,7 +382,7 @@ int bpf_xdp_query(int ifindex, int xdp_flags, struct bpf_xdp_query_opts *opts)
 	xdp_id.ifindex = ifindex;
 	xdp_id.flags = xdp_flags;
 
-	err = libbpf_netlink_send_recv(&req, __dump_link_nlmsg,
+	err = libbpf_netlink_send_recv(&req, NETLINK_ROUTE, __dump_link_nlmsg,
 				       get_xdp_info, &xdp_id);
 	if (err)
 		return libbpf_err(err);
@@ -493,7 +493,7 @@ static int tc_qdisc_modify(struct bpf_tc_hook *hook, int cmd, int flags)
 	if (ret < 0)
 		return ret;
 
-	return libbpf_netlink_send_recv(&req, NULL, NULL, NULL);
+	return libbpf_netlink_send_recv(&req, NETLINK_ROUTE, NULL, NULL, NULL);
 }
 
 static int tc_qdisc_create_excl(struct bpf_tc_hook *hook)
@@ -673,7 +673,8 @@ int bpf_tc_attach(const struct bpf_tc_hook *hook, struct bpf_tc_opts *opts)
 
 	info.opts = opts;
 
-	ret = libbpf_netlink_send_recv(&req, get_tc_info, NULL, &info);
+	ret = libbpf_netlink_send_recv(&req, NETLINK_ROUTE, get_tc_info, NULL,
+				       &info);
 	if (ret < 0)
 		return libbpf_err(ret);
 	if (!info.processed)
@@ -739,7 +740,7 @@ static int __bpf_tc_detach(const struct bpf_tc_hook *hook,
 			return ret;
 	}
 
-	return libbpf_netlink_send_recv(&req, NULL, NULL, NULL);
+	return libbpf_netlink_send_recv(&req, NETLINK_ROUTE, NULL, NULL, NULL);
 }
 
 int bpf_tc_detach(const struct bpf_tc_hook *hook,
@@ -804,7 +805,8 @@ int bpf_tc_query(const struct bpf_tc_hook *hook, struct bpf_tc_opts *opts)
 
 	info.opts = opts;
 
-	ret = libbpf_netlink_send_recv(&req, get_tc_info, NULL, &info);
+	ret = libbpf_netlink_send_recv(&req, NETLINK_ROUTE, get_tc_info, NULL,
+				       &info);
 	if (ret < 0)
 		return libbpf_err(ret);
 	if (!info.processed)
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
