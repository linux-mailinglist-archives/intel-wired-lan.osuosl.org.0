Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKbMAFVpi2k1UQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 18:22:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA511DD84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 18:22:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E5C5407A2;
	Tue, 10 Feb 2026 17:22:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jS8rozlbTDLb; Tue, 10 Feb 2026 17:22:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ACC54112B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770744139;
	bh=f6qeMxE2bD/CZngsGJEaPhASkEv2qf1GdAL/ecG+f7I=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JF9Q5+9SaTueKhycVQ5rrKMo56wlf1tb2vbENuIwWH5UaFALhzoPDIAnWHCpdYrY/
	 vdOppDfd/cCPuYWsDghsGAvlVsY5ydPjcd7t4u2JiOw17fgarAme2hdLCHKSDwit+8
	 ZQlIkScZcRI8tvaD05EQvzGBz7bN/+C2tOfsSWZjYx6aDOceapmcO/YzYQnRQbXiKj
	 z7PnONgNbJtMqClThqq1VZNkVjP11ymAO29gmBZ7devzDQKwZ1U5NgX5S04s3IkxPi
	 4UZRGphteLNOXQNOjplrWjcQBaPQhFiiCR4dyTHYR3rJKQ8kIWUu93ZEZHKxqobGO9
	 D4/hPKDpORNWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ACC54112B;
	Tue, 10 Feb 2026 17:22:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C62EDF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B78FA4068D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:22:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZsMluiZ4lEcK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:22:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9FEF94008D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FEF94008D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FEF94008D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:22:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id ABE7660130;
 Tue, 10 Feb 2026 17:22:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6D85C116C6;
 Tue, 10 Feb 2026 17:22:14 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Tue, 10 Feb 2026 18:21:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260210-bpf-xdp-meta-rxcksum-v1-4-e5d55caa0541@kernel.org>
References: <20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org>
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-0-e5d55caa0541@kernel.org>
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
Cc: Jakub Sitnicki <jakub@cloudflare.com>, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 linux-kselftest@vger.kernel.org, Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770744135;
 bh=yBBOEuRACrTrU3mNxgRQgQe/fJ3wQzfx+UORh+ruz5Q=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=XrzHLwudb2DoS4C0sUx7B1zOK7yZVOGy4Q0fDvuOPuKQUamX08/FnoVPX0+5zt2rt
 w2q+LDjKAmVqoiVomGvk5ILg1gJI0lB+AelHBiD/Zrp9zGx8w1FJdLxNYffey/bKTx
 31LCzPfqhIn+fvUubkD4s0jUIHJwzvcCRTa4tGYilSrQUiuzqoQ3vJtrXohL2oRlMl
 dQmxuPMFNny6xKOojrYsmh90yG3LbQsN7ORNbVERpVjUjZ8VRuAxfFo0KXuuvcygwU
 LpAVjFkc0sTHxL2lAh1YJ7ABRPjVA2nvIaJmzMzqrz3CHkbDUhDlWbl8MaxtmuII8U
 rpUlfDnoCuZ5g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XrzHLwud
Subject: [Intel-wired-lan] [PATCH bpf-next 4/5] selftests/bpf: Add selftest
 support for bpf_xdp_metadata_rx_checksum
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:lorenzo@kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 69BA511DD84
X-Rspamd-Action: no action

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
2.53.0

