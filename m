Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD723A38EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jun 2021 02:40:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A47CF4069E;
	Fri, 11 Jun 2021 00:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7st4_ha1p4K; Fri, 11 Jun 2021 00:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BB6740694;
	Fri, 11 Jun 2021 00:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 334281C1178
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28ED883490
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3N3yfhBTHAI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 480D4830E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jun 2021 00:40:16 +0000 (UTC)
IronPort-SDR: ytyGf6cnteF6LmqXSv8Fibj5M0skNWER3hgk+NQwaUdnS7v2LY2GNShAdq/X5wKBDv893D9kxI
 bAJBQNjNiVfQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205397136"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205397136"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:15 -0700
IronPort-SDR: oFj+YIoxkrVYGcFUXIn0kfaD/mH4FecPBBOR/FIi4iuhELPeET1a/Z1a2ggwrN4LppwBL/e99D
 mSFA5j2Z7yVw==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448932910"
Received: from caclark-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.156.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 17:40:15 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Jun 2021 17:39:22 -0700
Message-Id: <20210611003924.492853-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210611003924.492853-1-vinicius.gomes@intel.com>
References: <20210611003924.492853-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 3/5] igc: Allow for Flex
 Filters to be installed
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
Cc: kurt@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allows Flex Filters to be installed.

The previous restriction to the types of filters that can be installed
can now be lifted.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 3d46eff87638..5a7b27b2a95c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1300,12 +1300,6 @@ static int igc_ethtool_add_nfc_rule(struct igc_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
-	if ((fsp->flow_type & FLOW_EXT) &&
-	    fsp->m_ext.vlan_tci != htons(VLAN_PRIO_MASK)) {
-		netdev_dbg(netdev, "VLAN mask not supported\n");
-		return -EOPNOTSUPP;
-	}
-
 	if (fsp->ring_cookie >= adapter->num_rx_queues) {
 		netdev_dbg(netdev, "Invalid action\n");
 		return -EINVAL;
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
