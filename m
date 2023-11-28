Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1D57FB35C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 08:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B342840A4E;
	Tue, 28 Nov 2023 07:57:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B342840A4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701158221;
	bh=bhz8vQ67Vq/q/Q4oo8VCcI+LC1nfQl9BqyWvldqoozY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZisVRmWM5s5lFaDSQp+0upe0XoqiPR+sPXg1ItRjye7qd6yd+JU4qqFg4f7fFf/3W
	 FTMMEnWEMw5ZtUEaKeS80iwIF7bI378mA/3/XkL/tyLPas0P2/1ek4kgYZZEVCu8De
	 ADIPv41vGMbkPPt9kdIDVZlrykypRvwJ6gUAzldv7gbr9U6WZryzjpFlG1AS3G8wsb
	 bITYttEWzKrWT3GTTHzL83AXNFsb7no132wPhBbb63FhB5OVkta96ZRXQhbB9qbUro
	 TgPkUZFqP8aNaDv2ffxPKbde943/zzB7XOESuCRBG1oF39O414kgc1MT8LpSX/QWuI
	 MQQmfynYoyJug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mYU5UOAUtyh8; Tue, 28 Nov 2023 07:57:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A10D4011C;
	Tue, 28 Nov 2023 07:57:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A10D4011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5DE41BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE011415E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE011415E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53L0qvAFC0aK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 07:56:49 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7824415D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 07:56:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7824415D9
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Tue, 28 Nov 2023 08:48:47 +0100
Message-Id: <20231128074849.16863-4-kurt@linutronix.de>
In-Reply-To: <20231128074849.16863-1-kurt@linutronix.de>
References: <20231128074849.16863-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701157751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s6pxk/1AJpdk0UvXa9I/SEQk/kd1wn7KANNObjsQtAw=;
 b=j2lCV8MugqOnNP4gJ1Y3xqc7kUFeT0t3Hf0MxkJSjbDsAP/mV+1hOs2d2KzDCB90SmYQ06
 SuMKYoQCFXs45D8H6ucvlp+UEBmESLZB3yv6d1cz0xbWKF8dkRGUxfNo1F5Grj7NkusvkE
 6cS2O2r1yVVt1Wlg9OvXMY0V2OM5P2Q2JzRxGuK1YsVLYQqdnJHDV7M2fR4Fd+0LOSRRIB
 jnNitZXNc3k/bKzxFYydzfQe6sdqzcuyh9Nrg67u/WHx0XNj02e4b5maKy/v/v/bOAySmJ
 CpxdeAjBMxJ02jL2mlt5cRmXYXcu5nVWO1di1NRIDuZFMqBNZHb7Wtc6livONA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701157751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=s6pxk/1AJpdk0UvXa9I/SEQk/kd1wn7KANNObjsQtAw=;
 b=Q7H2cdiWcOE7rR045PKhVIa4CJLzPOLi1Q+HZxHjedTpsJvnBKVsjHwWwRkqtOGXigAWxP
 fQ3LTY+HXpkAPXDw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=j2lCV8Mu; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Q7H2cdiW
Subject: [Intel-wired-lan] [PATCH net-next 3/5] igc: Unify filtering rule
 fields
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

All filtering parameters such as EtherType and VLAN TCI are stored in host byte
order except for the VLAN EtherType. Unify it.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h         |  2 +-
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c    | 10 ++++++----
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index ac7c861e83a0..c783355f99be 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -585,7 +585,7 @@ enum igc_filter_match_flags {
 struct igc_nfc_filter {
 	u8 match_flags;
 	u16 etype;
-	__be16 vlan_etype;
+	u16 vlan_etype;
 	u16 vlan_tci;
 	u8 src_addr[ETH_ALEN];
 	u8 dst_addr[ETH_ALEN];
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 785eaa8e0ba8..8e12ef362b23 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1243,7 +1243,7 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
 
 	/* VLAN etype matching */
 	if ((fsp->flow_type & FLOW_EXT) && fsp->h_ext.vlan_etype) {
-		rule->filter.vlan_etype = fsp->h_ext.vlan_etype;
+		rule->filter.vlan_etype = ntohs(fsp->h_ext.vlan_etype);
 		rule->filter.match_flags |= IGC_FILTER_FLAG_VLAN_ETYPE;
 	}
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4c562df0527d..c4dbb8c50a4e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3614,10 +3614,12 @@ static int igc_add_flex_filter(struct igc_adapter *adapter,
 					  ETH_ALEN, NULL);
 
 	/* Add VLAN etype */
-	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE)
-		igc_flex_filter_add_field(&flex, &filter->vlan_etype, 12,
-					  sizeof(filter->vlan_etype),
-					  NULL);
+	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_ETYPE) {
+		__be16 vlan_etype = cpu_to_be16(filter->vlan_etype);
+
+		igc_flex_filter_add_field(&flex, &vlan_etype, 12,
+					  sizeof(vlan_etype), NULL);
+	}
 
 	/* Add VLAN TCI */
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
