Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F725B9E5A6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 11:31:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C34798405F;
	Thu, 25 Sep 2025 09:31:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dGLgeM7g-WNd; Thu, 25 Sep 2025 09:31:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 912C184050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758792662;
	bh=GrFz50bvfZ2PHgeRePFS3AVVm4BgeHIdx8PhRDCxa3w=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PeSKxE7MIx5i0SIgbR3DWTIYZypp3N0/CSZzbjaKKzY6iq4GXT3+aEgteqRz3X1sN
	 qSQhpFvGafT266KdTmjfoDa6IwqLXW+r9l7YX7Aq8babPvAAKlCDlPaCvmKCaV9Jjq
	 xoqHIv09IxxyRTR6Vlw7wsS7XwCoIOvqO5wsA0YIi1keGazjJyNCwKdrt8FKewfqjY
	 TGPVkfWcEVm2ud8KUvBgxc/hGWoINX5UgMtQQaGBnWwFO4ipxKbSktcy+EBfKZiL3X
	 v4xWlh732AwOqH1FoxthOyY1Qj4zsczma9op67wXCslBq98g675mKGL9Pe3+9no5Vu
	 QnFGTZ4xDggjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 912C184050;
	Thu, 25 Sep 2025 09:31:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4302E12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29B2540BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1oQRj6824GxB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3A9C740BE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A9C740BE3
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A9C740BE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:31:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B9521415EA;
 Thu, 25 Sep 2025 09:30:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BB2EC4CEF7;
 Thu, 25 Sep 2025 09:30:59 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Thu, 25 Sep 2025 11:30:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-bpf-xdp-meta-rxcksum-v2-4-6b3fe987ce91@kernel.org>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
In-Reply-To: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
To: Donald Hunter <donald.hunter@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <martin.lau@linux.dev>, 
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758792659;
 bh=g+a055h93580lOihI9yMUXyGxBe1D7ULr4L6kX8rU6I=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=gzcWwt1ET952NtvanErML/wx3BR3M99UctVjFuEdz5svglkeb3n+WMwwdYFbQvyJ7
 D8+4Yp7wS729KLz8wYkx7s4VryySyn8jxWF1F6HFop4cuq/InzBbXDFEHdGy2GdI4w
 0A3M+3C95A5Bfdup0wVedg6zD1oJGDP8O4+HmSKRUkAme07ZGQ38Igk8kARAciPL4w
 yEXULclvCvXSbaQnF/eN+fv2D3foFxVv1ILDKzvOmreE/nJjg8gpmm3jHh2mkyQTAR
 NthjZyItJUP8Xz62VXyUNeLPSG7g2WG/Bn8gh/TG6bJXWB42dYCfkJbTyKAf9rEp8n
 OoDdVGHolwuVg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gzcWwt1E
Subject: [Intel-wired-lan] [PATCH RFC bpf-next v2 4/5] selftests/bpf: Add
 selftest support for bpf_xdp_metadata_rx_checksum
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce support to xdp_metadata selftest for bpf_xdp_metadata_rx_checksum
kfunc.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 tools/testing/selftests/bpf/prog_tests/xdp_metadata.c | 7 +++++++
 tools/testing/selftests/bpf/progs/xdp_metadata.c      | 1 +
 tools/testing/selftests/bpf/xdp_metadata.h            | 9 +++++++++
 3 files changed, 17 insertions(+)

diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
index 19f92affc2daa23fdd869554e7a0475b86350a4f..707c98e664745763b01b638a537a797211ded4e1 100644
--- a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
+++ b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
@@ -258,6 +258,7 @@ static void refill_rx(struct xsk *xsk, __u64 addr)
 
 static int verify_xsk_metadata(struct xsk *xsk, bool sent_from_af_xdp)
 {
+	__u8 ip_summed = sent_from_af_xdp ? XDP_CHECKSUM_NONE : XDP_CHECKSUM_PARTIAL;
 	const struct xdp_desc *rx_desc;
 	struct pollfd fds = {};
 	struct xdp_meta *meta;
@@ -310,6 +311,12 @@ static int verify_xsk_metadata(struct xsk *xsk, bool sent_from_af_xdp)
 	if (!ASSERT_NEQ(meta->rx_hash, 0, "rx_hash"))
 		return -1;
 
+	if (!ASSERT_EQ(meta->ip_summed, ip_summed, "rx_ip_summed"))
+		return -1;
+
+	if (!ASSERT_EQ(meta->cksum_meta, 0, "rx_cksum_meta"))
+		return -1;
+
 	if (!sent_from_af_xdp) {
 		if (!ASSERT_NEQ(meta->rx_hash_type & XDP_RSS_TYPE_L4, 0, "rx_hash_type"))
 			return -1;
diff --git a/tools/testing/selftests/bpf/progs/xdp_metadata.c b/tools/testing/selftests/bpf/progs/xdp_metadata.c
index 09bb8a038d528cf26c5b314cc927915ac2796bf0..ef6a5584a1876a3c47440f21dca927ec783469dc 100644
--- a/tools/testing/selftests/bpf/progs/xdp_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_metadata.c
@@ -98,6 +98,7 @@ int rx(struct xdp_md *ctx)
 	bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type);
 	bpf_xdp_metadata_rx_vlan_tag(ctx, &meta->rx_vlan_proto,
 				     &meta->rx_vlan_tci);
+	bpf_xdp_metadata_rx_checksum(ctx, &meta->ip_summed, &meta->cksum_meta);
 
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
 }
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index 87318ad1117a1d677af121f11778178532e2a562..a16f71488a34e6df23fec6dd7dde7b7989774618 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -30,6 +30,11 @@ enum xdp_meta_field {
 	XDP_META_FIELD_VLAN_TAG	= BIT(2),
 };
 
+#define XDP_CHECKSUM_NONE		0
+#define XDP_CHECKSUM_UNNECESSARY	1
+#define XDP_CHECKSUM_COMPLETE		2
+#define XDP_CHECKSUM_PARTIAL		3
+
 struct xdp_meta {
 	union {
 		__u64 rx_timestamp;
@@ -48,5 +53,9 @@ struct xdp_meta {
 		};
 		__s32 rx_vlan_tag_err;
 	};
+	struct {
+		__u8 ip_summed;
+		__u32 cksum_meta;
+	};
 	enum xdp_meta_field hint_valid;
 };

-- 
2.51.0

