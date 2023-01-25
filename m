Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FC667A7D1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 01:34:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E8CC82013;
	Wed, 25 Jan 2023 00:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E8CC82013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674606885;
	bh=ynafh6BLYqE5cVBNcMUKmWUaWCKUA4Xl3EhjqbrnX2Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jk0T2pep2xUwkIzZtMvMebMIDSFbXp0tqDzHBS5KyQtDwBBI20edQkhCglfnS9fiq
	 iq1znfBHz0/ugMEhuFc9IRl+pvAzSnz2sM3JTLvOWsl21C2+znq0ur8mwV/0x5wpoe
	 3ym8bLw+z1A+HfpXpXor37SJia0XnMws5axny57vG9hPIV6KiZgNaJhjThAn2JVJ1i
	 60W5NyIPhn8i//37eMPFaRqGsQFtjTJsUz0GilpM8hKE+I6zJLhhF9A24rULmQZNOg
	 hcs3g6glmYG+QgEgg4/7gump5jYYhOv7b0K2IlS3Hgamlsu++wseiQkX9dBWQT1Fve
	 tK+pmchsDdGOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wfc3tUhguJB7; Wed, 25 Jan 2023 00:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 648548206D;
	Wed, 25 Jan 2023 00:34:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 648548206D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26D1B1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA1DC4182F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA1DC4182F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnmkujAD2-XG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 00:34:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ABA041717
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9ABA041717
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:32 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 1167DCE1CDA;
 Wed, 25 Jan 2023 00:34:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0408C4339B;
 Wed, 25 Jan 2023 00:34:27 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed, 25 Jan 2023 01:33:24 +0100
Message-Id: <0b0350a0a0657f5d98d92f0ee37ffd79b9403d66.1674606198.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674606193.git.lorenzo@kernel.org>
References: <cover.1674606193.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674606868;
 bh=frQ6wryTRsgHtvKmNSpqoCYSBl1MocigbxPElIXBFRE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WJFdJpMybT+M3He/FFocdxJMknu3OLGPbhGnpbpu0SzL0JPdI0pV1scwI7cvusypa
 OS6sllk/6d9zOHHckPzXzvWBaN/f25b/Ssi2b5zVIAT8USlXQ4QDS9zHoFR/S06rE9
 NlPkd0JJJO3L9v7gcp8N6fSwX8H+iXoTOTaIlNkQeA9Fq1Trj4xTZ3dY08+7hi+kVj
 DFt3dgxddJgL8B5M6/7zWVlDCUrPaakuzhxZmncWAhO92ZqI2NPeJhlHod9YGixmpQ
 vCVMy/S1Y5MTBGHw7tYOnav+lSucgaCQQcDiamsorIGRRcge9GqzkRZyTzphTB3TxK
 kKCFidzjUVDLQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WJFdJpMy
Subject: [Intel-wired-lan] [PATCH v2 bpf-next 4/8] libbpf: add the
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
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
