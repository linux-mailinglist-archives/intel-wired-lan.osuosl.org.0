Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEmyEqqsb2miEwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:26:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B662947766
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 17:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 999044063B;
	Tue, 20 Jan 2026 16:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3aPqsUzXPvTA; Tue, 20 Jan 2026 16:26:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFD1B40640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768926373;
	bh=eWDwRtRTexg9fRSSarLkYLweDMl64Lud9EANHQPjlRk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qx5+HgizN6QVgx0NXsd7WVt5Bt6EamkdslD+95r8FTE260AZuGGARwfTK3PPx8OrT
	 TRz7xkrjNMCS8zgR8+uEZLvELKzq9wQB6MTyzcdM43nCW+QU57SlH8lMX4zkRX3TmG
	 RWqYd/ABN6Ks0D/oFjfESUD8zbwGPDKbd3sm4ScAUm9HVPa87SPG5WV2sd9fVIaDrL
	 rwOL3xSc6c6OPNd1iVOldMNKJzlNGPvPZmQYyA1T0N/swGjyDwzfpkeLrQWv3ldeF/
	 H7H5C5bdxzAay8xx5FLCEsG83OnBM6MmXqa9Kv1C0Hn4erdnopAwzC60qa/wv7lZN0
	 seb4Iwbys8JtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CFD1B40640;
	Tue, 20 Jan 2026 16:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A2D6122
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 19:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 651838043B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 19:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a_6GkjPSjYRd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 19:14:19 +0000 (UTC)
X-Greylist: delayed 4467 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 19 Jan 2026 19:14:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0CD4683F91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CD4683F91
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CD4683F91
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 19:14:18 +0000 (UTC)
Received: from ms-a2 (79.192.13.160.dy.iij4u.or.jp [160.13.192.79])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60JHxOXB045334
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 20 Jan 2026 02:59:24 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, kohei.enju@gmail.com,
 Takashi Kozu <takkozu@amazon.com>, Kohei Enju <kohei@enjuk.jp>
Date: Mon, 19 Jan 2026 17:58:27 +0000
Message-ID: <20260119175922.199950-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 20 Jan 2026 16:26:10 +0000
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=eWDwRtRTexg9fRSSarLkYLweDMl64Lud9EANHQPjlRk=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1768845564; v=1;
 b=myG8Q4crrYCXilnOST2tC5ZSmZEUJqmEVxjKqKr+hL5ADzEMQGC/BrqU+S0D3JsS
 ElfcLK++qAN1hwQqv7Hk9Tdw3cOkzoMqfuySBauxZxTnMOYdOY/0tfS7d+vz0KOD
 vbK5UQvC4ZShEgAvymWqtDvL2Ly/+9Iq3l+hupQGhhG8cfFJcX90E23sgsno3KRG
 dpTUXQbCLYPLLsmHHt57zio+NP6Pib+4/ITtSLLlkOst92vqUCuICQuGgvu2GaaC
 /OfMnpQ5mWL6VoTMS+vdGXATZnJqFAYolowLdlWdEX5vsq+PBSZ1GOc/OHoVrX5K
 wULvXCyzdo0YBJUpZnLUdA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=myG8Q4cr
Subject: [Intel-wired-lan] [PATCH v1 iwl-next] igb: set skb hash type from
 RSS_TYPE
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,amazon.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B662947766
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

igb always marks the RX hash as L3 regardless of RSS_TYPE in the
advanced descriptor, which may indicate L4 (TCP/UDP) hash. This can
trigger unnecessary SW hash recalculation and breaks toeplitz selftests.

Use RSS_TYPE from pkt_info to set the correct PKT_HASH_TYPE_*

Tested by toeplitz.py with the igb RSS key get/set patches applied as
they are required for toeplitz.py (see Link below).
 # ethtool -N $DEV rx-flow-hash udp4 sdfn
 # ethtool -N $DEV rx-flow-hash udp6 sdfn
 # python toeplitz.py | grep -E "^# Totals"

Without patch:
 # Totals: pass:0 fail:12 xfail:0 xpass:0 skip:0 error:0

With patch:
 # Totals: pass:12 fail:0 xfail:0 xpass:0 skip:0 error:0

Link: https://lore.kernel.org/intel-wired-lan/20260119084511.95287-5-takkozu@amazon.com/
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
If a Fixes tag is needed, it would be Fixes: 42bdf083fe70 ("net: igb
calls skb_set_hash").

I'm not sure this qualifies as a fix, since the RX hash marking has been
wrong for a long time without reported issues. So I'm leaning toward
omitting Fixes.
---
 drivers/net/ethernet/intel/igb/e1000_82575.h | 21 ++++++++++++++++++++
 drivers/net/ethernet/intel/igb/igb_main.c    | 18 +++++++++++++----
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.h b/drivers/net/ethernet/intel/igb/e1000_82575.h
index 63ec253ac788..a855bc10f5d4 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.h
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.h
@@ -87,6 +87,27 @@ union e1000_adv_rx_desc {
 	} wb;  /* writeback */
 };
 
+#define E1000_RSS_TYPE_NO_HASH		 0
+#define E1000_RSS_TYPE_HASH_TCP_IPV4	 1
+#define E1000_RSS_TYPE_HASH_IPV4	 2
+#define E1000_RSS_TYPE_HASH_TCP_IPV6	 3
+#define E1000_RSS_TYPE_HASH_IPV6_EX	 4
+#define E1000_RSS_TYPE_HASH_IPV6	 5
+#define E1000_RSS_TYPE_HASH_TCP_IPV6_EX	 6
+#define E1000_RSS_TYPE_HASH_UDP_IPV4	 7
+#define E1000_RSS_TYPE_HASH_UDP_IPV6	 8
+#define E1000_RSS_TYPE_HASH_UDP_IPV6_EX	 9
+
+#define E1000_RSS_TYPE_MASK		GENMASK(3, 0) /* 4-bits (3:0) = mask 0x0F */
+
+#define E1000_RSS_L4_TYPES_MASK	\
+	(BIT(E1000_RSS_TYPE_HASH_TCP_IPV4)	| \
+	 BIT(E1000_RSS_TYPE_HASH_TCP_IPV6)	| \
+	 BIT(E1000_RSS_TYPE_HASH_TCP_IPV6_EX)	| \
+	 BIT(E1000_RSS_TYPE_HASH_UDP_IPV4)	| \
+	 BIT(E1000_RSS_TYPE_HASH_UDP_IPV6)	| \
+	 BIT(E1000_RSS_TYPE_HASH_UDP_IPV6_EX))
+
 #define E1000_RXDADV_HDRBUFLEN_MASK      0x7FE0
 #define E1000_RXDADV_HDRBUFLEN_SHIFT     5
 #define E1000_RXDADV_STAT_TS             0x10000 /* Pkt was time stamped */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 8dab133296ca..ef0cbf532716 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -8824,10 +8824,20 @@ static inline void igb_rx_hash(struct igb_ring *ring,
 			       union e1000_adv_rx_desc *rx_desc,
 			       struct sk_buff *skb)
 {
-	if (ring->netdev->features & NETIF_F_RXHASH)
-		skb_set_hash(skb,
-			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
-			     PKT_HASH_TYPE_L3);
+	u16 rss_type;
+
+	if (!(ring->netdev->features & NETIF_F_RXHASH))
+		return;
+
+	rss_type = le16_to_cpu(rx_desc->wb.lower.lo_dword.pkt_info) &
+		   E1000_RSS_TYPE_MASK;
+
+	if (!rss_type)
+		return;
+
+	skb_set_hash(skb, le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
+		     (E1000_RSS_L4_TYPES_MASK & BIT(rss_type)) ?
+		     PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);
 }
 
 /**
-- 
2.51.0

