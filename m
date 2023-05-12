Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6CD700B5C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD9AF42CC0;
	Fri, 12 May 2023 15:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD9AF42CC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904919;
	bh=gBxjwlReq7TndV7okD3eIdl3s2Zt++zJY1yPo0MdoFQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s/QdGQpgBiWYZkyOOOzvmXjmIG9z4OB23psUuw2/d69kGWiQ/QYt1pBzvY5N4PDfG
	 XRBPEiMfwZ8zf5p3zVWWzv1fDdh0OfsKp4UKJf+JziB23tr4MWjSJdu/YeQ+GOiZtA
	 N9ft/Sjz4kq5gqQFpoj40yq4JH9wl7qRhhak+OveicDIS49U4zUzUDm9zwGtE8xoRl
	 Pr8n6lLetmyHil86wndMcsxegJ5ySg1W1jZWvsPuTjyk7izzcqnO+muSpYpQwv4Zq1
	 8qjkaF7YT4xdbWc1t/xZy2VzhRgnx9QsBp1NKe1WErkbj0yS6wjPXvubkJRxIdBHSW
	 9YAjb+E07UuGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHIiWPHqNIM1; Fri, 12 May 2023 15:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C0D342C53;
	Fri, 12 May 2023 15:21:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C0D342C53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FF1F1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 464A742C56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 464A742C56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vI40BUx9Liiz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 567BA42CBC
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 567BA42CBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:21:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353061257"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353061257"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="812114587"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="812114587"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2023 08:20:48 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AC6653635B;
 Fri, 12 May 2023 16:20:43 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:37 +0200
Message-Id: <20230512151639.992033-14-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904884; x=1715440884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ju9PvqXqCCJFMNbWyzPaBdJfLC40q1RU30A9+HNOEsU=;
 b=Ef+yEIoF3zkGqe5trupDrhzHMn4DHXVmC8ivvz/AeS3r6La/7+7Ts8M6
 zYxPFyAGRcAL0cpZWBJPw07ivVvJs3ueU/o1d6PDG3rpb+NYCZpPOWNm+
 l80w820y44gITbur43MzPHkNtIT0mDhQWMKNjk3drnrGoWdhvYJIIVu9X
 oMs4VhC7hdHbOc/VpgXKd2evwRAeXxGrmTtpBEC6VhhR7OwgRIpql8LhT
 zKF8v9tZLnp1Lh4zZjXU9SY4N8ePC1N2qK1sXeHN38vwKZb49P2m6ZdGC
 zJwxrFgruE6RIHx0Ln7myUvsViuTchnNrxoJFMKIu7XPeL7tNJGY8P91p
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ef+yEIoF
Subject: [Intel-wired-lan] [PATCH 13/15] selftests/bpf: Allow VLAN packets
 in xdp_hw_metadata
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make VLAN c-tag and s-tag XDP hint testing more convenient
by not skipping VLAN-ed packets.

Allow both 802.1ad and 802.1Q headers.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 tools/testing/selftests/bpf/progs/xdp_hw_metadata.c | 9 ++++++++-
 tools/testing/selftests/bpf/xdp_metadata.h          | 8 ++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index b2dfd7066c6e..f95f82a8b449 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -26,15 +26,22 @@ int rx(struct xdp_md *ctx)
 {
 	void *data, *data_meta, *data_end;
 	struct ipv6hdr *ip6h = NULL;
-	struct ethhdr *eth = NULL;
 	struct udphdr *udp = NULL;
 	struct iphdr *iph = NULL;
 	struct xdp_meta *meta;
+	struct ethhdr *eth;
 	int err;
 
 	data = (void *)(long)ctx->data;
 	data_end = (void *)(long)ctx->data_end;
 	eth = data;
+
+	if (eth + 1 < data_end && eth->h_proto == bpf_htons(ETH_P_8021AD))
+		eth = (void *)eth + sizeof(struct vlan_hdr);
+
+	if (eth + 1 < data_end && eth->h_proto == bpf_htons(ETH_P_8021Q))
+		eth = (void *)eth + sizeof(struct vlan_hdr);
+
 	if (eth + 1 < data_end) {
 		if (eth->h_proto == bpf_htons(ETH_P_IP)) {
 			iph = (void *)(eth + 1);
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index 938a729bd307..6664893c2c77 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -9,6 +9,14 @@
 #define ETH_P_IPV6 0x86DD
 #endif
 
+#ifndef ETH_P_8021Q
+#define ETH_P_8021Q 0x8100
+#endif
+
+#ifndef ETH_P_8021AD
+#define ETH_P_8021AD 0x88A8
+#endif
+
 struct xdp_meta {
 	__u64 rx_timestamp;
 	__u64 xdp_timestamp;
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
