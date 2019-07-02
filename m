Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD185D799
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 22:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C084D87D1D;
	Tue,  2 Jul 2019 20:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eopivyfW08th; Tue,  2 Jul 2019 20:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B023187CDA;
	Tue,  2 Jul 2019 20:43:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A96311BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A42322043B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsgtpwdR42I4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 20:43:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id F040120434
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2019 13:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="190805467"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 13:43:21 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2019 08:22:57 -0400
Message-Id: <20190702122259.79070-7-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702122259.79070-1-alice.michael@intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S7 7/9] i40e: Log info when PF is
 entering and leaving Allmulti mode.
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
Cc: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Czeslaw Zagorski <czeslawx.zagorski@intel.com>

Add log when PF is entering and leaving Allmulti mode. The
change of PF state is visible in dmesg now. Without this commit,
entering and leaving Allmulti mode is not logged in dmesg.

Signed-off-by: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index db3ecb8e7051..452cbc423cb3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2530,6 +2530,10 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 				 vsi_name,
 				 i40e_stat_str(hw, aq_ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
+		} else {
+			dev_info(&pf->pdev->dev, "%s is %s allmulti mode.\n",
+				 vsi->netdev->name,
+				 cur_multipromisc ? "entering" : "leaving");
 		}
 	}
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
