Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4A87FB360
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:57:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B294D403A5;
	Tue, 28 Nov 2023 07:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B294D403A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701158241;
	bh=988M35fq/AxeD4RN+32N6Uu6OAtPkAkkRkPLfOraDUI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vk+GYunxaYogSrsuX8b/RHII7VPotU9Jq7/iVlss3rbCIFTw/JqDIXUVIT/eNvNBW
	 PptUfzJQsQ4lpjKe6obGW++w+cSVRfJqvOv50FKHuOEEbR3bwN5yCgNHwgaB5GjVcC
	 SRlsB3HWK6YEur0IJXE9aTqnekBig4EsY9ErG9h6OM9wzU2lA8qp2hUfelqFkIW5qj
	 r57joHrG2AWPgT41K3Ht3O0kmreL/JvBObuGyEawu0NEucdxarKyRF76n4CXCtZdFl
	 c8M8fso6tebF/dTnKoUVbQ98IlH6o7gMn7N9PC73WFPtXhKdhXgskZNm8ge1VV7P+O
	 LKOSTf9CfUJWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vEDCitzt3xM1; Tue, 28 Nov 2023 07:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D2CC4011C;
	Tue, 28 Nov 2023 07:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D2CC4011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DDF11BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5522440414
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5522440414
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wlgplmiJULdg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:56:51 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D67954011C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D67954011C
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 28 Nov 2023 08:48:49 +0100
Message-Id: <20231128074849.16863-6-kurt@linutronix.de>
In-Reply-To: <20231128074849.16863-1-kurt@linutronix.de>
References: <20231128074849.16863-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701157752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8+jmQi7BMG+g72W+WQmeO6bO983RwQ11XgBKeXRgh9A=;
 b=rBuEK102suJITGTnscnq3MR3Pr3eHuWDO4Kf8WVY496oxDpZOrIL1V2FpHnXKwiwlA8KGj
 DaNvWy8p+gU9OI8cG2PYjfEm7TuE+VZriRrk+iMgECsq8q99s1TBJMSXgvV7LpKBDzXAEq
 QLGP1H0TB+1Jwb178xTJwOYGpR3FT+7RxKzl7DLPWaQGK8IHFo8ZJj45lDeDljw3oCAKo6
 Y06Jc9z/QyDhtKGw6CzZGwSDbXv9fBSm5nUQwyklKgpC/n5Iw47HKtM0a5laM1Iu6hoD4N
 t7VaZkhZdMXe+GCVYweOrVEFTsrwGXd0EVoNkZY/kBlQpmww/ET2Ujcgg9fcqA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701157752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8+jmQi7BMG+g72W+WQmeO6bO983RwQ11XgBKeXRgh9A=;
 b=iCXQO0K7epKAYQaMBPfCiWTWH6KR0GVv7pXqR8hm2fsIiRAf79fU4Es227se1s83icodUY
 bTGamP7Z7P/6cqDg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=rBuEK102; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=iCXQO0K7
Subject: [Intel-wired-lan] [PATCH net-next 5/5] igc: Check VLAN TCI mask
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the driver accepts VLAN TCI steering rules regardless of the
configured mask. And things might fail silently or with confusing error
messages to the user.

There are two ways to handle the VLAN TCI mask:

 1. Match on the PCP field using a VLAN prio filter
 2. Match on complete TCI field using a flex filter

Therefore, add checks and code for that.

For instance the following rule is invalid and will be converted into a VLAN
prio rule which is not correct:
|root@host:~# ethtool -N enp3s0 flow-type ether vlan 0x0001 m 0xf000 action 1
|Added rule with ID 61
|root@host:~# ethtool --show-ntuple enp3s0
|4 RX rings available
|Total 1 rules
|
|Filter: 61
|        Flow Type: Raw Ethernet
|        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
|        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
|        Ethertype: 0x0 mask: 0xFFFF
|        VLAN EtherType: 0x0 mask: 0xffff
|        VLAN: 0x1 mask: 0x1fff
|        User-defined: 0x0 mask: 0xffffffffffffffff
|        Action: Direct to queue 1

After:
|root@host:~# ethtool -N enp3s0 flow-type ether vlan 0x0001 m 0xf000 action 1
|rmgr: Cannot insert RX class rule: Operation not supported

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h         |  1 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 28 +++++++++++++++++---
 2 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index c783355f99be..158adb1594e9 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -587,6 +587,7 @@ struct igc_nfc_filter {
 	u16 etype;
 	u16 vlan_etype;
 	u16 vlan_tci;
+	u16 vlan_tci_mask;
 	u8 src_addr[ETH_ALEN];
 	u8 dst_addr[ETH_ALEN];
 	u8 user_data[8];
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index b782fb2abf20..46de8fa01682 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -958,6 +958,7 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
 }
 
 #define ETHER_TYPE_FULL_MASK ((__force __be16)~0)
+#define VLAN_TCI_FULL_MASK ((__force __be16)~0)
 static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 				    struct ethtool_rxnfc *cmd)
 {
@@ -989,7 +990,7 @@ static int igc_ethtool_get_nfc_rule(struct igc_adapter *adapter,
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
 		fsp->flow_type |= FLOW_EXT;
 		fsp->h_ext.vlan_tci = htons(rule->filter.vlan_tci);
-		fsp->m_ext.vlan_tci = htons(VLAN_PRIO_MASK);
+		fsp->m_ext.vlan_tci = htons(rule->filter.vlan_tci_mask);
 	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
@@ -1224,6 +1225,7 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 
 	if ((fsp->flow_type & FLOW_EXT) && fsp->m_ext.vlan_tci) {
 		rule->filter.vlan_tci = ntohs(fsp->h_ext.vlan_tci);
+		rule->filter.vlan_tci_mask = ntohs(fsp->m_ext.vlan_tci);
 		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_TCI;
 	}
 
@@ -1261,11 +1263,19 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 		memcpy(rule->filter.user_mask, fsp->m_ext.data, sizeof(fsp->m_ext.data));
 	}
 
-	/* When multiple filter options or user data or vlan etype is set, use a
-	 * flex filter.
+	/* The i225/i226 has various different filters. Flex filters provide a
+	 * way to match up to the first 128 bytes of a packet. Use them for:
+	 *   a) For specific user data
+	 *   b) For VLAN EtherType
+	 *   c) For full TCI match
+	 *   d) Or in case multiple filter criteria are set
+	 *
+	 * Otherwise, use the simple MAC, VLAN PRIO or EtherType filters.
 	 */
 	if ((rule->filter.match_flags & IGC_FILTER_FLAG_USER_DATA) ||
 	    (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) ||
+	    (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI &&
+	     rule->filter.vlan_tci_mask == ntohs(VLAN_TCI_FULL_MASK)) ||
 	    (rule->filter.match_flags & (rule->filter.match_flags - 1)))
 		rule->flex = true;
 	else
@@ -1335,6 +1345,18 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 		return -EINVAL;
 	}
 
+	/* There are two ways to match the VLAN TCI:
+	 *  1. Match on PCP field and use vlan prio filter for it
+	 *  2. Match on complete TCI field and use flex filter for it
+	 */
+	if ((fsp->flow_type & FLOW_EXT) &&
+	    fsp->m_ext.vlan_tci &&
+	    fsp->m_ext.vlan_tci != htons(VLAN_PRIO_MASK) &&
+	    fsp->m_ext.vlan_tci != VLAN_TCI_FULL_MASK) {
+		netdev_dbg(netdev, "VLAN mask not supported\n");
+		return -EOPNOTSUPP;
+	}
+
 	if (fsp->location >= IGC_MAX_RXNFC_RULES) {
 		netdev_dbg(netdev, "Invalid location\n");
 		return -EINVAL;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
