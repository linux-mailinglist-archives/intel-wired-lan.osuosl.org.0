Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A3431F1FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Feb 2021 23:03:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A2758743C;
	Thu, 18 Feb 2021 22:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J+APy19Hv4xg; Thu, 18 Feb 2021 22:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5950873E6;
	Thu, 18 Feb 2021 22:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 436671BF35B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 22:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BAA36068B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 22:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lxu__2-6e1CP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Feb 2021 22:03:03 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 7514060674; Thu, 18 Feb 2021 22:03:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01D1A6065B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 22:03:01 +0000 (UTC)
IronPort-SDR: F1rY6+0ejP53RtkqWNE+7wK9A4417n9jrWzgjoJqvbns0DK3THEXJm5Og4HFIs8m2CbEIvAEH/
 aVIGO5V+yasw==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="170797445"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="170797445"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 14:02:47 -0800
IronPort-SDR: 4zp4yAlBWlhOQeBewOaU6OdpPP6iXJeFBm3B497/Fj1Jh5TntpQzdCy98JFX/Hnx/2MAXBJB9+
 xDUTxMnZJa9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="495758383"
Received: from amlin-018-053.igk.intel.com (HELO 10.252.34.83) ([10.102.18.53])
 by fmsmga001.fm.intel.com with ESMTP; 18 Feb 2021 14:02:46 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Feb 2021 21:55:35 +0000
Message-Id: <20210218215535.277482-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix oops at i40e_rebuild()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Setup TC before the i40e_setup_pf_switch() call.
Memory must be inititalized for all the queues
before using its resources.

Previously it could be possible that a call:
xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
rx_ring->queue_index, rx_ring->q_vector->napi.napi_id);
was made with q_vector being null.

Oops could show up with the following sequence:
- no driver loaded
- FW LLDP agent is on (flag disable-fw-lldp:off)
- link is up
- DCB configured with number of Traffic Classes that will not divide
  completely the default number of queues (usually cpu cores)
- driver load
- set private flag: disable-fw-lldp:on

Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based DCB")
Fixes: b02e5a0ebb17 ("xsk: Propagate napi_id to XDP socket Rx path")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 65fed08..a9fdaee 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10574,12 +10574,6 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 		goto end_core_reset;
 	}
 
-	if (!lock_acquired)
-		rtnl_lock();
-	ret = i40e_setup_pf_switch(pf, reinit);
-	if (ret)
-		goto end_unlock;
-
 #ifdef CONFIG_I40E_DCB
 	/* Enable FW to write a default DCB config on link-up
 	 * unless I40E_FLAG_TC_MQPRIO was enabled or DCB
@@ -10608,6 +10602,11 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	}
 
 #endif /* CONFIG_I40E_DCB */
+	if (!lock_acquired)
+		rtnl_lock();
+	ret = i40e_setup_pf_switch(pf, reinit);
+	if (ret)
+		goto end_unlock;
 
 	/* The driver only wants link up/down and module qualification
 	 * reports from firmware.  Note the negative logic.

base-commit: acad41d948db537ceac9d50c132653d82222343c
-- 
2.18.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
