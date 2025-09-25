Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E9BB9E5A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 11:31:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AF9E836AE;
	Thu, 25 Sep 2025 09:31:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mSREsZql3DHv; Thu, 25 Sep 2025 09:31:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68DE183FF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758792666;
	bh=svqKloLFHvC/FC6Ze0XexPyNogm/xaQiPtdAJERnxwk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fgDSdQsRDpiF7Tt9g0g/U3ARZwZh6MgrK93L7hcTU8x5QbbyjNEOM2+89buIQESNQ
	 9Rv6n2EPUn1zj6gbius/IHZo13b5mblBc2Obq1pgr+esUGXf/TFSK5SZAvRsEgXdIG
	 J/quwecARbnhwzGWjzKipq7FNWCypxpfPou9qxClfvrFXm9Hi1Hs83maAr6361sUpA
	 i2/FU6i8W3au5WFcvfiDakMhFTMj8CWnycjv7JsLLxeS6KM7ioWuxKwnAKM4gHmAET
	 99pWlg1lCVlgHq4GRnNqRuoAmYGzqm7IuCLGfK3mSLF22po2JFdap2VJTO4QG2xylQ
	 lvMk2jWQ7ufwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68DE183FF8;
	Thu, 25 Sep 2025 09:31:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DD22177
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BCAF40BE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:31:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L7kfw8QqAjYy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:31:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 59E8940C49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59E8940C49
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59E8940C49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:31:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5F0C060486;
 Thu, 25 Sep 2025 09:31:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85AF1C113D0;
 Thu, 25 Sep 2025 09:31:01 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Thu, 25 Sep 2025 11:30:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-bpf-xdp-meta-rxcksum-v2-5-6b3fe987ce91@kernel.org>
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
 d=kernel.org; s=k20201202; t=1758792662;
 bh=A/kw6ABjlORAJ4bHqHYqQaWGu/ghxT9gXYNn89u1s3o=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=S3kyCq8WWF6rc43eSZrUktddD358zsDnqLp9sbZz4t5UN0utI3AOyhQovZtaekKHa
 BxIVJJTeuIwY/RtEunatUlYdpVRL6ZeCcpEbVOA26zlVXbu5rJ9bSK8+3l5QQoMWL7
 JHr+M+5YiEGs+c1A8OiZwHwJDKcpHr196YJRxS489J3mSxI0U8p0l+0qn0bDNRevVb
 6vp3oBczFH3GJMo+1okXeKKFKglqyNt68xo+TVZ5ztqrrqQoqvEyA3cX6ZQsc7TMlJ
 /DMd4JObfpPwabqpbQBKW7Z4xAZTiWvqYlNqHvfqU+SlPGhb8CQtiYbWn+mGDIgFuw
 hBIcbDPZ0G1JQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S3kyCq8W
Subject: [Intel-wired-lan] [PATCH RFC bpf-next v2 5/5] selftests/bpf: Add
 bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog
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

Introduce the capability to dump HW rx checksum in xdp_hw_metadat
program via bpf_xdp_metadata_rx_checksum() kfunc.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |  7 ++++++
 tools/testing/selftests/bpf/xdp_hw_metadata.c      | 27 ++++++++++++++++++++++
 tools/testing/selftests/bpf/xdp_metadata.h         | 10 +++++---
 3 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 330ece2eabdb454da2bb2cbd297d2b2dd6efddc0..dc62d572e3ac6e2ef173b330da515757ea543415 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -110,6 +110,13 @@ int rx(struct xdp_md *ctx)
 	else
 		meta->hint_valid |= XDP_META_FIELD_VLAN_TAG;
 
+	err = bpf_xdp_metadata_rx_checksum(ctx, &meta->ip_summed,
+					   &meta->cksum_meta);
+	if (err)
+		meta->rx_cksum_err = err;
+	else
+		meta->hint_valid |= XDP_META_FIELD_CHECKSUM;
+
 	__sync_add_and_fetch(&pkts_redir, 1);
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
 }
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 3d8de0d4c96a7afdf5f60b2fdff73c22b876ce54..c8c25ef383b1fe5613540b09a52bcdc264e316b4 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -219,6 +219,28 @@ static void print_vlan_tci(__u16 tag)
 	printf("PCP=%u, DEI=%d, VID=0x%X\n", pcp, dei, vlan_id);
 }
 
+static void print_rx_cksum(__u8 ip_summed, __u32 cksum_meta)
+{
+	const char *cksum = "CHECKSUM_NONE";
+
+	switch (ip_summed) {
+	case XDP_CHECKSUM_UNNECESSARY:
+		cksum = "CHECKSUM_UNNECESSARY";
+		break;
+	case XDP_CHECKSUM_COMPLETE:
+		cksum = "CHECKSUM_COMPLETE";
+		break;
+	case XDP_CHECKSUM_PARTIAL:
+		cksum = "CHECKSUM_PARTIAL";
+		break;
+	case XDP_CHECKSUM_NONE:
+	default:
+		break;
+	}
+
+	printf("rx-cksum: %s, csum_meta=0x%x\n", cksum, cksum_meta);
+}
+
 static void verify_xdp_metadata(void *data, clockid_t clock_id)
 {
 	struct xdp_meta *meta;
@@ -254,6 +276,11 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
 		printf("No rx_vlan_tci or rx_vlan_proto, err=%d\n",
 		       meta->rx_vlan_tag_err);
 	}
+
+	if (meta->hint_valid & XDP_META_FIELD_CHECKSUM)
+		print_rx_cksum(meta->ip_summed, meta->cksum_meta);
+	else
+		printf("No rx_chsum, err=%d\n", meta->rx_cksum_err);
 }
 
 static void verify_skb_metadata(int fd)
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index a16f71488a34e6df23fec6dd7dde7b7989774618..b7ab112da8032405ec0e3d699499f4a9c5cb91dc 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -28,6 +28,7 @@ enum xdp_meta_field {
 	XDP_META_FIELD_TS	= BIT(0),
 	XDP_META_FIELD_RSS	= BIT(1),
 	XDP_META_FIELD_VLAN_TAG	= BIT(2),
+	XDP_META_FIELD_CHECKSUM = BIT(3),
 };
 
 #define XDP_CHECKSUM_NONE		0
@@ -53,9 +54,12 @@ struct xdp_meta {
 		};
 		__s32 rx_vlan_tag_err;
 	};
-	struct {
-		__u8 ip_summed;
-		__u32 cksum_meta;
+	union {
+		struct {
+			__u8 ip_summed;
+			__u32 cksum_meta;
+		};
+		__s32 rx_cksum_err;
 	};
 	enum xdp_meta_field hint_valid;
 };

-- 
2.51.0

