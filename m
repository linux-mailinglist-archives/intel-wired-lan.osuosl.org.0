Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13867A7D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 01:35:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B1AB60E4E;
	Wed, 25 Jan 2023 00:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B1AB60E4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674606898;
	bh=3yQ0ZWf6HKftlxvEPfTJN8tLjL2tZ6OH4ssWs1+skSQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=c6evPKUF9qQDb0TWe7s+IDoEhsQsqa6B3XjOM2561fD4YNZNkqTBMABjJI+jjeSoM
	 1sGfcvebWoqor5gocDVl3eYUaqtkFGwqXvgTu6OW/mjZoQKw52SSUP+0TeRYmFIVUF
	 q17OT65T4NOzxglFOb4JOidVmA1zHS+YNS0Xr3vJccLO6VmmmZSCLN0gvLSJ6EudFU
	 JmKyJYSFt6rQsE+XD5okmAA9k4WJwlQkGH9dnPjpfq4CUEdGMiWCdagkTvIrCJYbE7
	 C3NZeFeZnajDl42Dl+jXQLvtdSI6kjPgj6ktxTE5xhr1MUVIC/iy05IpHZnf9sruC1
	 H+PYq2yIJ8aFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8qgfVQikABEQ; Wed, 25 Jan 2023 00:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2B9A60E09;
	Wed, 25 Jan 2023 00:34:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2B9A60E09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A969C1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82EBA60F83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82EBA60F83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNrcwXGImtkc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 00:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4A0460F24
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4A0460F24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:43 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A76ACB817AE;
 Wed, 25 Jan 2023 00:34:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3B2DC4339B;
 Wed, 25 Jan 2023 00:34:39 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed, 25 Jan 2023 01:33:27 +0100
Message-Id: <a60e73ce6334030d29765125ccda17ace814ada5.1674606198.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674606193.git.lorenzo@kernel.org>
References: <cover.1674606193.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674606880;
 bh=VCGnWFr95SwwAJ+v2VcqnBX0uqgPPRwmMsbFoP0le3k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IHxs1RQ8H91C77Kof8fjiUY+MTA/fyRE85EC/wzr1JYT0auJULNL3V8ZozDL8xB9j
 96hXwCqm9R3cX0ghYm/MqvlbfzDg8DT6tmDw9hCuFwH5Pq/qoUcRxyUQQevTjKNCns
 UHQx5dJvq0tQ9cDKlFdkHXyagq8LTY/hCgkSfk5B9jxgIP3M0pGZx9u3dl5PdVHWkJ
 maxX4in/Eg/EF4e326uPXbMd+VfOvb5uqJHX2vo/EszaTrntxUilBvot8u5Pkl5Gpl
 /d/KiJ53pV3/ilGZhnWqk3XURCO7r5vvLQtJxNmlp5qMK6s/AcTifJeROwWJ+qVCr3
 qirjTXqHVhTwg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IHxs1RQ8
Subject: [Intel-wired-lan] [PATCH v2 bpf-next 7/8] selftests/bpf: add test
 for bpf_xdp_query xdp-features support
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

Introduce a self-test to verify libbpf bpf_xdp_query capability to dump
the xdp-features supported by the device (lo and veth in this case).

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bpf/prog_tests/xdp_do_redirect.c          | 27 ++++++++++++++++++-
 .../selftests/bpf/prog_tests/xdp_info.c       |  8 ++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c b/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
index a50971c6cf4a..e15fb3f0306c 100644
--- a/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
+++ b/tools/testing/selftests/bpf/prog_tests/xdp_do_redirect.c
@@ -4,10 +4,12 @@
 #include <net/if.h>
 #include <linux/if_ether.h>
 #include <linux/if_packet.h>
+#include <linux/if_link.h>
 #include <linux/ipv6.h>
 #include <linux/in6.h>
 #include <linux/udp.h>
 #include <bpf/bpf_endian.h>
+#include <uapi/linux/netdev.h>
 #include "test_xdp_do_redirect.skel.h"
 
 #define SYS(fmt, ...)						\
@@ -92,7 +94,7 @@ void test_xdp_do_redirect(void)
 	struct test_xdp_do_redirect *skel = NULL;
 	struct nstoken *nstoken = NULL;
 	struct bpf_link *link;
-
+	LIBBPF_OPTS(bpf_xdp_query_opts, query_opts);
 	struct xdp_md ctx_in = { .data = sizeof(__u32),
 				 .data_end = sizeof(data) };
 	DECLARE_LIBBPF_OPTS(bpf_test_run_opts, opts,
@@ -153,6 +155,29 @@ void test_xdp_do_redirect(void)
 	    !ASSERT_NEQ(ifindex_dst, 0, "ifindex_dst"))
 		goto out;
 
+	/* Check xdp features supported by veth driver */
+	err = bpf_xdp_query(ifindex_src, XDP_FLAGS_DRV_MODE, &query_opts);
+	if (!ASSERT_OK(err, "veth_src bpf_xdp_query"))
+		goto out;
+
+	if (!ASSERT_EQ(query_opts.fflags,
+		       NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+		       NETDEV_XDP_ACT_NDO_XMIT | NETDEV_XDP_ACT_RX_SG |
+		       NETDEV_XDP_ACT_NDO_XMIT_SG,
+		       "veth_src query_opts.fflags"))
+		goto out;
+
+	err = bpf_xdp_query(ifindex_dst, XDP_FLAGS_DRV_MODE, &query_opts);
+	if (!ASSERT_OK(err, "veth_dst bpf_xdp_query"))
+		goto out;
+
+	if (!ASSERT_EQ(query_opts.fflags,
+		       NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
+		       NETDEV_XDP_ACT_NDO_XMIT | NETDEV_XDP_ACT_RX_SG |
+		       NETDEV_XDP_ACT_NDO_XMIT_SG,
+		       "veth_dst query_opts.fflags"))
+		goto out;
+
 	memcpy(skel->rodata->expect_dst, &pkt_udp.eth.h_dest, ETH_ALEN);
 	skel->rodata->ifindex_out = ifindex_src; /* redirect back to the same iface */
 	skel->rodata->ifindex_in = ifindex_src;
diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_info.c b/tools/testing/selftests/bpf/prog_tests/xdp_info.c
index cd3aa340e65e..8397468a9e74 100644
--- a/tools/testing/selftests/bpf/prog_tests/xdp_info.c
+++ b/tools/testing/selftests/bpf/prog_tests/xdp_info.c
@@ -8,6 +8,7 @@ void serial_test_xdp_info(void)
 {
 	__u32 len = sizeof(struct bpf_prog_info), duration = 0, prog_id;
 	const char *file = "./xdp_dummy.bpf.o";
+	LIBBPF_OPTS(bpf_xdp_query_opts, opts);
 	struct bpf_prog_info info = {};
 	struct bpf_object *obj;
 	int err, prog_fd;
@@ -61,6 +62,13 @@ void serial_test_xdp_info(void)
 	if (CHECK(prog_id, "prog_id_drv", "unexpected prog_id=%u\n", prog_id))
 		goto out;
 
+	/* Check xdp features supported by lo device */
+	opts.fflags = ~0;
+	err = bpf_xdp_query(IFINDEX_LO, XDP_FLAGS_DRV_MODE, &opts);
+	if (!ASSERT_OK(err, "bpf_xdp_query"))
+		goto out;
+
+	ASSERT_EQ(opts.fflags, 0, "opts.fflags");
 out:
 	bpf_xdp_detach(IFINDEX_LO, 0, NULL);
 out_close:
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
