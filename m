Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949E61B8064
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DC568818D;
	Fri, 24 Apr 2020 20:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iqkRG-y4XmZL; Fri, 24 Apr 2020 20:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F030C8871F;
	Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1F721BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EEE4C868A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HCKYskyz6yPj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B189686B89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
IronPort-SDR: cB2p7ocYMgSBrWwSNZWS0fn674EqcrcApriKQWZ7z1H6IX7C2DexYGwCDY8ezDonWwLMjH30VT
 bxzjR0buhMNw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:28 -0700
IronPort-SDR: 4I8tNb1SqJo1aYzd/SfDEARWBI0I6n8RW1W1KZtNDtBTytPWCyn3hJvi6ICDaNIWxXO7ojIfKk
 dCwW51/w4W7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474517"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:27 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:16 -0700
Message-Id: <20200424201623.10971-13-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 12/19] igc: Fix NFC rules with multicast
 addresses
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Multicast MAC addresses are valid address for NFC rules but
igc_add_mac_filter() is currently rejecting them. In fact, the I225
controller doesn't impose any constraint on the address value so this
patch gets rid of the address validation check in MAC filter APIs.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7d9a2da4feee..b0c4206f9c7d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2250,9 +2250,6 @@ int igc_add_mac_filter(struct igc_adapter *adapter,
 	struct net_device *dev = adapter->netdev;
 	int index;
 
-	if (!is_valid_ether_addr(addr))
-		return -EINVAL;
-
 	index = igc_find_mac_filter(adapter, type, addr);
 	if (index >= 0)
 		goto update_filter;
@@ -2284,9 +2281,6 @@ int igc_del_mac_filter(struct igc_adapter *adapter,
 	struct net_device *dev = adapter->netdev;
 	int index;
 
-	if (!is_valid_ether_addr(addr))
-		return -EINVAL;
-
 	index = igc_find_mac_filter(adapter, type, addr);
 	if (index < 0)
 		return -ENOENT;
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
