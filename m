Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E698464C0FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 01:01:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6841940B4E;
	Wed, 14 Dec 2022 00:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6841940B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670976106;
	bh=5O18hkhwdwtvQc21qgZQDdHp9/HFTneherz7NnwoByc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hX3mEsIKUJOFt0e198E/N1Pw7plge+MB++e3HLJw4JI9CC/0vf3NIKsqn6C9V29yK
	 I4WIYWHvHYa31b8TTE+YUG/Z5rR3019oFtdUaxsRc+1T6xB9RCspPvPkT7mozkk9KG
	 tuK1nBmMuv+UOZYItpM1eE4NPCj4gJB/tL4eJfLcr/OGou5yqza0+u+RiAx1LESAMh
	 lavlbwQs98zbkVmk95FRaiASw1qnWOMhgXEVtUg88cBcaKQcOZ21serhAGSTh69nBt
	 OyUsKWKiZnq+Al0PdBKMupXfWQFHj0QnwQgGPRXKbBwKi+sBePUNqyDjBHhn4c1akd
	 EGKF2FdN70EFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ym4AKSSXlEiy; Wed, 14 Dec 2022 00:01:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6859C40B42;
	Wed, 14 Dec 2022 00:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6859C40B42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E25C1BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 00:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15B8660FE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 00:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15B8660FE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GudbCwi5onEf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 00:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60FC460E3C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60FC460E3C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 00:01:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="382568246"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="382568246"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 16:01:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="642301056"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="642301056"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 16:01:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Dec 2022 16:01:31 -0800
Message-Id: <20221214000131.3676447-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670976099; x=1702512099;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E5X+qBOSjxSQHLfLJw36Ncb5jARIm+2Dqydfo4603NQ=;
 b=Ep/phu1B8QHInhFOWnhzmf3DzQx7Uwu1p3zAsdwEx2b3eRN0xcHwTbmS
 HtNqEv8YgYVF1wOwTRKBLKV3toLq4C2zuvECQREwW2YvJdtIDTzMJpHUv
 CLeZXo9yKQDz5uZfMihh3Z16HaiRA0WKlBEPUD4B7TnYzjDtmw8NAldsb
 P6o7HacRuIyLbKf8rtSe7KQNYOZ51fE+ApdkjNHTn/KXt+U50US1rI0lm
 ZzH8A33KC5s+0SdtC9YDIQ7LpswgsFglFWr7QD0ea8zBmxCMcKqkVrcuF
 NtyDN9o0ZisDdNbd6BnsCXI0N2/wARYTHOlO0AbKmVv4ObExi4CDtN31F
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ep/phu1B
Subject: [Intel-wired-lan] [PATCH net-next v1] ice: add missing checks for
 PF vsi type
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There were a few places we had missed checking the VSI type to make sure
it was definitely a PF VSI, before calling setup functions intended only
for the PF VSI.

This doesn't fix any explicit bugs but cleans up the code in a few
places and removes one explicit != vsi->type check that can be
superseded by this code (it's a super set)

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d01d1073ffec..0cfc9c146629 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6232,15 +6232,12 @@ int ice_vsi_cfg(struct ice_vsi *vsi)
 {
 	int err;
 
-	if (vsi->netdev) {
+	if (vsi->netdev && vsi->type == ICE_VSI_PF) {
 		ice_set_rx_mode(vsi->netdev);
 
-		if (vsi->type != ICE_VSI_LB) {
-			err = ice_vsi_vlan_setup(vsi);
-
-			if (err)
-				return err;
-		}
+		err = ice_vsi_vlan_setup(vsi);
+		if (err)
+			return err;
 	}
 	ice_vsi_cfg_dcb_rings(vsi);
 
@@ -6421,7 +6418,7 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    vsi->netdev) {
+	    vsi->netdev && vsi->type == ICE_VSI_PF) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -6432,7 +6429,9 @@ static int ice_up_complete(struct ice_vsi *vsi)
 	 * set the baseline so counters are ready when interface is up
 	 */
 	ice_update_eth_stats(vsi);
-	ice_service_task_schedule(pf);
+
+	if (vsi->type == ICE_VSI_PF)
+		ice_service_task_schedule(pf);
 
 	return 0;
 }

base-commit: 17251986c9c39d851f2a1d47374afeef3ed36cfe
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
