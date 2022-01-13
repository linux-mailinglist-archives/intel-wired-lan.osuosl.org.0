Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CABC48CFC1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jan 2022 01:40:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B469B415D5;
	Thu, 13 Jan 2022 00:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VdFfqOXPA-A; Thu, 13 Jan 2022 00:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7FF9415D0;
	Thu, 13 Jan 2022 00:40:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BB561C1127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 00:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58E9660AD9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 00:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vgB0djbpQ1DI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jan 2022 00:40:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9307260ACC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jan 2022 00:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642034441; x=1673570441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=REzB+mP9MqSBi3NyCd3WZoweqMHY5GHYO11gglgHFYw=;
 b=Cr+/K8qWStDel5by8l3A/sBZE0RIS3udCSLHbQXytIzNNXo111ELZgug
 aV0eibPI9y/Od+Ma+lVZtcZl4VuK8FDvmCd9tNbmVWMjipPp6ZDW20Y7f
 sXf0VXv99T6xN0NDF6+1fgZ6DhSbqGNHTssvr0CboTFN3uso4fRjU1X51
 zTOircLnsztLbaXe2J3hYVqKDJJkPGcb//0F28gVh9hdqWJJc2r3PZWAQ
 3petPqxrL8xZ7JLT/M/NPqYRsI/hOqWkRpewlYYz+wTYFE4DBB+iDyUiS
 S8BIeMMkApdeEuLJ8IHw+jsKTtL2OKN3Wqg1hCaDlR4+vLWV1lLvGFRbh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="243844826"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="243844826"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 16:40:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="763081418"
Received: from audreywa-mobl.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.156.60])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 16:40:36 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jan 2022 16:40:15 -0800
Message-Id: <20220113004015.449460-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <YdxZr0wMxvsDCpbV@wantstofly.org>
References: <YdxZr0wMxvsDCpbV@wantstofly.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix trying to register
 an already registered xdp_rxq
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

When changing the number of RX descriptors, for example, by doing

 $ ethtool -G enp3s0 rx 1024

the XDP RX queue information (xdp_rxq) may be already registered, if
it's registered there's no need to do any thing in relation to
xdp_rxq, none of it's parameters will change if we change the number
of descriptors, for example.

Fixes: 4609ffb9f615 ("igc: Refactor XDP rxq info registration")
Reported-by: Lennert Buytenhek <buytenh@wantstofly.org>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
Lennert, I added your name and email to the Reported-by tag, please
see if you are ok with it.

 drivers/net/ethernet/intel/igc/igc_main.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e29aadbc6744..d163139161fc 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c)  2018 Intel Corporation */
 
+#include "net/xdp.h"
 #include <linux/module.h>
 #include <linux/types.h>
 #include <linux/if_vlan.h>
@@ -499,12 +500,14 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
 	u8 index = rx_ring->queue_index;
 	int size, desc_len, res;
 
-	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
-			       rx_ring->q_vector->napi.napi_id);
-	if (res < 0) {
-		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
-			   index);
-		return res;
+	if (!xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
+		res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
+				       rx_ring->q_vector->napi.napi_id);
+		if (res < 0) {
+			netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
+				   index);
+			return res;
+		}
 	}
 
 	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
