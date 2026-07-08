Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7WgVFbzXTmoRVQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 01:05:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E6872B084
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 01:05:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=UWX4CtF5;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABDE8409B2;
	Wed,  8 Jul 2026 23:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s4_HRy0dHdHQ; Wed,  8 Jul 2026 23:05:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96861407CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783551929;
	bh=9qnLAUdw3PZEBWM4qb317DK5nF1B/uRKVs7vMdge6Y0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UWX4CtF5vH8d6eq+2mYrF5FdQB0USZogCBanjzB7AWn/4t5tQhi7uVLVW+irF88ag
	 V9+UEOwumTgxXhJKJR4lwhjCW+TpJLiv/t+Co5DlbVx4kYjUanjhBny0wxEophGIWR
	 Rc72cpcrPCqVv2Dis266NJkTCkLC9WIs7VjZigSzJ3ZqHj7r0+aVWa0tVWs+z9AJkQ
	 rcKfucMF6I4pmQWZTYAHyVk2brmZDmTP17b/Ajg3qBYzJtdbRiATd013TDEksMrKdA
	 4bxiHYHneJ3+ZwG8bnksnYDmvC6S4oAyQ2D744lv5iKgpwCiKEy4fWAtGMQT99rhhT
	 S4wexFRe4XlCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96861407CA;
	Wed,  8 Jul 2026 23:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D3CDF3A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D135880F40
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vSQKip0e3cG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 22:57:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:b747:3006:205::3e; helo=outbound.qs.icloud.com;
 envelope-from=deliran@verdict.gg; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 07ED380F15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07ED380F15
Received: from outbound.qs.icloud.com (qs-2005f-snip6-10.eps.apple.com
 [IPv6:2a01:b747:3006:205::3e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07ED380F15
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 22:57:03 +0000 (UTC)
Received: from outbound.qs.icloud.com (unknown [127.0.0.2])
 by p00-icloudmta-asmtp-us-east-2d-10-percent-0 (Postfix) with ESMTPS id
 5C30330001DB; Wed, 08 Jul 2026 20:34:49 +0000 (UTC)
X-ICL-RepId: 019f4370-bb51-7097-92a4-d2b694e5ff07
X-ICL-Out-Info: HUtFAUMHWwJACUgBTUQeDx5WFlZNRAJCTQhICkMGWQJeCEABQwVdEhVdRVcIWwJAEVc4RQhFD1sTTVZUChcNVk1PHUEJXghGXl4fEx9UVgFDGRBWAVhWXQVNGlwYWQ8cAUpWWg5bBEcUFxtcABcbRgIEIwJfAEUCXglWATAXD1ZNTx1BCV4IRl5eHxMAXg8PTAtIAVsHXAJIC0gAWQZbHEQMSQFcGlkfFFwUWh9WBXIGXApXBFQfHBdeRhMZThtXTVoNQBlYBm0UVhVSBFk=
mail-alias-created-date: 1621344842221
Received: from DelNac.mail.msk (unknown [17.57.155.37])
 by p00-icloudmta-asmtp-us-east-2d-10-percent-0 (Postfix) with ESMTPSA id
 B62CA30001E8; Wed, 08 Jul 2026 20:34:43 +0000 (UTC)
From: Vladimir Vdovin <deliran@verdict.gg>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
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
Cc: Jakub Sitnicki <jakub@cloudflare.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Vladimir Vdovin <deliran@verdict.gg>
Date: Wed,  8 Jul 2026 23:34:05 +0300
Message-ID: <20260708203410.45121-2-deliran@verdict.gg>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260708203410.45121-1-deliran@verdict.gg>
References: <20260708203410.45121-1-deliran@verdict.gg>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 4Mqo4vDqr1O9VHLhC0ahqjJ2yP2dzZUz
X-Proofpoint-GUID: 4Mqo4vDqr1O9VHLhC0ahqjJ2yP2dzZUz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDIwMiBTYWx0ZWRfXyut/mrNNuBW6
 eaBwByxVOIq2v6+NsMeEbGyb3Ts72tRe4HM0muDe8hQs+46QDx5jx2YDKSHAnsJA7ueNJ2/xu+t
 yRxuEgmsem8HZ7DUYK+QvrmocQRU8D2kTZHCAp56D7q1cXPoH6S0FbV1a55oezI77RD5cAVskI8
 Lxv2OpBWz5PvnklhVnivdy+LqH1OMSxXIpKVzg1qabM5eMBMU8OOYVwSxqTM5uNCjV3A0jj13IO
 iL/xA11N7WCBi5/ZThFHBO0gZoYmNKNeoeTvqltq1PcGFR0ABS3e6yZjwfvpv34hEkSOn6RJbZH
 g8s7u71IfwG/wUkDqZD
X-Mailman-Approved-At: Wed, 08 Jul 2026 23:05:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdict.gg; s=sig1; t=1783542893; x=1786134893;
 bh=9qnLAUdw3PZEBWM4qb317DK5nF1B/uRKVs7vMdge6Y0=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
 b=jo9P2YG5BqA67LQhcVhFNAZIDmPuJoYjLPxW5HSJUujZ8V2JRDfIkx02A0Lq7XdfNZ2CHGjmnp7Uy5ETv1KfUUPw6wJc0RxDTM5MEIa4CPVp2IMzdq34Ou6Wyc/2AC/46EwrhoGKoKqpvHT1MTHBWhV+3tmMHY4NlphGpxAQRZeuN1YcYXvdDlBqUq+frlgP6gS2zwlgr5vSNUzdW18iZmdKlkQDCD6JuGWcN8pAUjLyCWUmOCqMtOAXqUR5ByWf9QTyjQcZdmCSbkrXJJmMLbmRiLMX9RErJg4+7HMgu4y2WRyydYIDSi502vtcOq4oHzWHy2pZi1KRFoJd33cqig==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=verdict.gg
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=verdict.gg header.i=@verdict.gg header.a=rsa-sha256
 header.s=sig1 header.b=jo9P2YG5
Subject: [Intel-wired-lan] [PATCH bpf-next v4 1/6] netlink: specs: Add XDP
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:deliran@verdict.gg,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[verdict.gg];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[deliran@verdict.gg,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deliran@verdict.gg,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16E6872B084

From: Lorenzo Bianconi <lorenzo@kernel.org>

Introduce XDP RX checksum capability to XDP metadata specs. XDP RX
checksum will be use by devices capable of exposing receive checksum
result via bpf_xdp_metadata_rx_checksum().
Moreover, introduce xmo_rx_checksum netdev callback in order to allow
the eBPF program bound to the device to retrieve the RX checksum result
computed by the hw NIC and reported via DMA descriptors.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
---
 Documentation/netlink/specs/netdev.yaml |  5 ++++
 include/net/xdp.h                       | 18 ++++++++++++++
 include/uapi/linux/netdev.h             |  3 +++
 net/core/xdp.c                          | 32 +++++++++++++++++++++++++
 tools/include/uapi/linux/netdev.h       |  3 +++
 5 files changed, 61 insertions(+)

diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
index 5f143da7458c..6d0d90d3a614 100644
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
index aa742f413c35..e255ff786131 100644
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
@@ -643,12 +647,26 @@ enum xdp_rss_hash_type {
 	XDP_RSS_TYPE_L4_IPV6_SCTP_EX = XDP_RSS_TYPE_L4_IPV6_SCTP | XDP_RSS_L3_DYNHDR,
 };
 
+/* Please note the driver is required to invalidate the checksum if the NIC
+ * reports CHECKSUM_UNNECESSARY or CHECKSUM_COMPLETE and the eBPF program
+ * modifies the packet since it can change some fields validated by the
+ * checksum.
+ */
+enum xdp_checksum {
+	XDP_CHECKSUM_NONE		= BIT(CHECKSUM_NONE),
+	XDP_CHECKSUM_UNNECESSARY	= BIT(CHECKSUM_UNNECESSARY),
+	XDP_CHECKSUM_COMPLETE		= BIT(CHECKSUM_COMPLETE),
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
+				   u32 *cksum, u8 *cksum_level);
 };
 
 #ifdef CONFIG_NET
diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
index 2f3ab75e8cc0..f8caade93c8c 100644
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
index 9890a30584ba..9bcaa423ad17 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -961,6 +961,38 @@ __bpf_kfunc int bpf_xdp_metadata_rx_vlan_tag(const struct xdp_md *ctx,
 	return -EOPNOTSUPP;
 }
 
+/**
+ * bpf_xdp_metadata_rx_checksum - Read XDP frame RX checksum.
+ * @ctx: XDP context pointer.
+ * @ip_summed: Return value pointer to a bitmask indicating available checksums.
+ * @cksum: Return value pointer indicating the hw checksum value.
+ * @cksum_level: Return value pointer indicating the checksum level result.
+ *
+ * In case of success, ``ip_summed`` is set to the RX checksum result. Possible
+ * values are:
+ * ``XDP_CHECKSUM_NONE``
+ * ``XDP_CHECKSUM_UNNECESSARY``
+ * ``XDP_CHECKSUM_COMPLETE``
+ * ``XDP_CHECKSUM_COMPLETE`` | ``XDP_CHECKSUM_UNNECESSARY``
+ *
+ * In case of success, ``cksum`` contains the checksum value calculated by the
+ * NIC. ``cksum`` is valid only if ``XDP_CHECKSUM_COMPLETE`` is set in
+ * ``ip_summed``. ``cksum_level`` contains the checksum level reported by the
+ * hw. ``cksum_level`` can be considered valid only if
+ * ``XDP_CHECKSUM_UNNECESSARY`` is set in ``ip_summed``.
+ *
+ * Return:
+ * * Returns 0 on success or ``-errno`` on error.
+ * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
+ * * ``-ENODATA``    : means no RX-checksum available for this frame
+ */
+__bpf_kfunc int bpf_xdp_metadata_rx_checksum(const struct xdp_md *ctx,
+					     enum xdp_checksum *ip_summed,
+					     u32 *cksum, u8 *cksum_level)
+{
+	return -EOPNOTSUPP;
+}
+
 __bpf_kfunc_end_defs();
 
 BTF_KFUNCS_START(xdp_metadata_kfunc_ids)
diff --git a/tools/include/uapi/linux/netdev.h b/tools/include/uapi/linux/netdev.h
index 2f3ab75e8cc0..f8caade93c8c 100644
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
2.47.0

