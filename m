Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Ph0Ic5Cj2k5OgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:27:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00297137837
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:27:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13F94844AD;
	Fri, 13 Feb 2026 15:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IuXYhEIrQX5r; Fri, 13 Feb 2026 15:27:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DC17844AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770996427;
	bh=vUeH6dRgvpYGFGfgBcHtGKEv8HY1bL48rkJYSmPg/4g=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jLzJ/gAk9QJ18M3AYYzv3ur+AMd53msoszBw/pmp26RUnunhnejuA4dA+1RmVupPa
	 SzQxvXd0YUiBRTqyzVO2nHMvZdgN6nck2hsqStjneer7BA0In6sUqeHBWiIwLjXE38
	 GpGX/aNy5qyfl7pKncMYdu2iL5bPkQeHq54eOp0Zl7yoGeytDmX8w+cfX8LkBiX5GY
	 wNaAwzXseaMwEPBKinNbe3dncUHNDVRQR52cBrfQNJwpU8TFjz7Lrmg99iJceA59HE
	 7Kd4/IBOt5yGppj82/Y8WtqXg+cFz5buhVB+WWOqhEf3JjvxU4t50EX89kh5PInP63
	 1R9WuAoMvsm5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DC17844AE;
	Fri, 13 Feb 2026 15:27:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FC8DEC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 716D5844AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:27:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id InK5j8U82Yfm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 15:27:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 952F7844AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 952F7844AB
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 952F7844AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:27:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9D0466132B;
 Fri, 13 Feb 2026 15:27:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBD91C116C6;
 Fri, 13 Feb 2026 15:27:02 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 13 Feb 2026 16:26:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-bpf-xdp-meta-rxcksum-v2-1-a82c4802afbe@kernel.org>
References: <20260213-bpf-xdp-meta-rxcksum-v2-0-a82c4802afbe@kernel.org>
In-Reply-To: <20260213-bpf-xdp-meta-rxcksum-v2-0-a82c4802afbe@kernel.org>
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
 d=kernel.org; s=k20201202; t=1770996423;
 bh=EiGaUL0ROvikOtaVZH/yKZqISOioK3OyNtnUo8P3Yhk=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=mW4FxCdrzTg+jglxtFS9riskLYBPZIGlvSE1xXBjIhch53csKnZM8Oyw3wGiGsjb8
 RW2Whh87yBkM9/svGY0AUv6gQApMtL/xnPtuOuiOyobhsxJglCrnkLNwAMnW4BgGvy
 gbMEYLhetNiw4M54Nx9X9lJHQkMsvoQKxeQwwjsV2YAsdiJF3k0AkNPCFip158FQ3c
 Ymkr2QKTtlPjp6/fwMqYYPP6O3OlYyaJD49/SHdX3GP5bro2TmDwJ63rNyrv86RXdH
 F00AKFtAmbLvB7cBcFt6NxlRDL55/9iY+UWsYaeIblrvnqvLdh31Ob4KnFoGBAjWEh
 AJZWLocF2T1QQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mW4FxCdr
Subject: [Intel-wired-lan] [PATCH bpf-next v2 1/5] netlink: specs: Add XDP
 RX checksum capability to XDP metadata specs
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:lorenzo@kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 00297137837
X-Rspamd-Action: no action

Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
checksum will be use by devices capable of exposing receive checksum
result via bpf_xdp_metadata_rx_checksum().
Moreover, introduce xmo_rx_checksum netdev callback in order allow the
eBPF program bounded to the device to retrieve the RX checksum result
computed by the hw NIC.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 Documentation/netlink/specs/netdev.yaml |  5 +++++
 include/net/xdp.h                       | 13 +++++++++++++
 include/uapi/linux/netdev.h             |  3 +++
 net/core/xdp.c                          | 28 ++++++++++++++++++++++++++++
 tools/include/uapi/linux/netdev.h       |  3 +++
 5 files changed, 52 insertions(+)

diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
index 596c306ce52b8303b20680ff0cd34d4fd9db0e48..58eda634668a07860447a65d9fc2284839af6244 100644
--- a/Documentation/netlink/specs/netdev.yaml
+++ b/Documentation/netlink/specs/netdev.yaml
@@ -61,6 +61,11 @@ definitions:
         doc: |
           Device is capable of exposing receive packet VLAN tag via
           bpf_xdp_metadata_rx_vlan_tag().
+      -
+        name: checksum
+        doc: |
+          Device is capable of exposing receive checksum result via
+          bpf_xdp_metadata_rx_checksum().
   -
     type: flags
     name: xsk-flags
diff --git a/include/net/xdp.h b/include/net/xdp.h
index aa742f413c358575396530879af4570dc3fc18de..00abb2e1e85514b4080d0e4e6e3b8f5f67f73b61 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -586,6 +586,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
 			   NETDEV_XDP_RX_METADATA_VLAN_TAG, \
 			   bpf_xdp_metadata_rx_vlan_tag, \
 			   xmo_rx_vlan_tag) \
+	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CHECKSUM, \
+			   NETDEV_XDP_RX_METADATA_CHECKSUM, \
+			   bpf_xdp_metadata_rx_checksum, \
+			   xmo_rx_checksum)
 
 enum xdp_rx_metadata {
 #define XDP_METADATA_KFUNC(name, _, __, ___) name,
@@ -643,12 +647,21 @@ enum xdp_rss_hash_type {
 	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
 };
 
+enum xdp_checksum {
+	XDP_CHECKSUM_NONE		= CHECKSUM_NONE,
+	XDP_CHECKSUM_UNNECESSARY	= CHECKSUM_UNNECESSARY,
+	XDP_CHECKSUM_COMPLETE		= CHECKSUM_COMPLETE,
+};
+
 struct xdp_metadata_ops {
 	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
 	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
 			       enum xdp_rss_hash_type *rss_type);
 	int	(*xmo_rx_vlan_tag)(const struct xdp_md *ctx, __be16 *vlan_proto,
 				   u16 *vlan_tci);
+	int	(*xmo_rx_checksum)(const struct xdp_md *ctx,
+				   enum xdp_checksum *ip_summed,
+				   u32 *cksum_meta);
 };
 
 #ifdef CONFIG_NET
diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
index e0b579a1df4f2126acec6c44c299e97bbbefe640..d20da430cfd57bc26b5ea2f406c27b48d8a81693 100644
--- a/include/uapi/linux/netdev.h
+++ b/include/uapi/linux/netdev.h
@@ -47,11 +47,14 @@ enum netdev_xdp_act {
  *   hash via bpf_xdp_metadata_rx_hash().
  * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing receive
  *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
+ * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing receive
+ *   checksum result via bpf_xdp_metadata_rx_checksum().
  */
 enum netdev_xdp_rx_metadata {
 	NETDEV_XDP_RX_METADATA_TIMESTAMP = 1,
 	NETDEV_XDP_RX_METADATA_HASH = 2,
 	NETDEV_XDP_RX_METADATA_VLAN_TAG = 4,
+	NETDEV_XDP_RX_METADATA_CHECKSUM = 8,
 };
 
 /**
diff --git a/net/core/xdp.c b/net/core/xdp.c
index fee6d080ee85fc2d278bfdddfd1365633058ec06..06d3c2333fa4aacd1b9343471efb0d3150838de5 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -961,6 +961,34 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
 	return -EOPNOTSUPP;
 }
 
+/**
+ * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
+ * @ctx: XDP context pointer.
+ * @ip_summed: Return value pointer indicating checksum result.
+ * @cksum_meta: Return value pointer indicating checksum result metadata.
+ *
+ * In case of success, ``ip_summed`` is set to the RX checksum result. Possible
+ * values are:
+ * ``XDP_CHECKSUM_NONE``
+ * ``XDP_CHECKSUM_UNNECESSARY``
+ * ``XDP_CHECKSUM_COMPLETE``
+ *
+ * In case of success, ``cksum_meta`` contains the hw computed checksum value
+ * for ``XDP_CHECKSUM_COMPLETE`` or the ``csum_level`` for
+ * ``XDP_CHECKSUM_UNNECESSARY``. It is set to 0 for ``XDP_CHECKSUM_NONE``
+ *
+ * Return:
+ * * Returns 0 on success or ``-errno`` on error.
+ * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
+ * * ``-ENODATA``    : means no RX-timestamp available for this frame
+ */
+__bpf_kfunc int bpf_xdp_metadata_rx_checksum(const struct xdp_md *ctx,
+					     enum xdp_checksum *ip_summed,
+					     u32 *cksum_meta)
+{
+	return -EOPNOTSUPP;
+}
+
 __bpf_kfunc_end_defs();
 
 BTF_KFUNCS_START(xdp_metadata_kfunc_ids)
diff --git a/tools/include/uapi/linux/netdev.h b/tools/include/uapi/linux/netdev.h
index e0b579a1df4f2126acec6c44c299e97bbbefe640..d20da430cfd57bc26b5ea2f406c27b48d8a81693 100644
--- a/tools/include/uapi/linux/netdev.h
+++ b/tools/include/uapi/linux/netdev.h
@@ -47,11 +47,14 @@ enum netdev_xdp_act {
  *   hash via bpf_xdp_metadata_rx_hash().
  * @NETDEV_XDP_RX_METADATA_VLAN_TAG: Device is capable of exposing receive
  *   packet VLAN tag via bpf_xdp_metadata_rx_vlan_tag().
+ * @NETDEV_XDP_RX_METADATA_CHECKSUM: Device is capable of exposing receive
+ *   checksum result via bpf_xdp_metadata_rx_checksum().
  */
 enum netdev_xdp_rx_metadata {
 	NETDEV_XDP_RX_METADATA_TIMESTAMP = 1,
 	NETDEV_XDP_RX_METADATA_HASH = 2,
 	NETDEV_XDP_RX_METADATA_VLAN_TAG = 4,
+	NETDEV_XDP_RX_METADATA_CHECKSUM = 8,
 };
 
 /**

-- 
2.53.0

