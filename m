Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A007B1D5D4F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:45:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55A7D890AB;
	Sat, 16 May 2020 00:45:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tBffZvUsxVli; Sat, 16 May 2020 00:45:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFF8F89072;
	Sat, 16 May 2020 00:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 426F31BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E65287F93
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWtDcVKIbhUf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:45:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66F3C87F5F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:45:00 +0000 (UTC)
IronPort-SDR: xk53QZg5lUxMDDXs8IEn53Ofia/A+ZIwWpHb2ro8nARNW5GE5b4bJtl3r5AhrjLlFR8gdBkOab
 0NTo7kNUR3rw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:44:59 -0700
IronPort-SDR: cD6xy8Lizadt+JhMhX9Cbq6BSaHvyBsfyjXxZ1mmRvUS0ETZb+PMdh1ua9q9EVDGtwffT0EosX
 snIQzp3msgaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="287960343"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga004.fm.intel.com with ESMTP; 15 May 2020 17:44:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:42:13 -0700
Message-Id: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S44 01/14] ice: Don't allow VLAN stripping
 change when pvid set
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

From: Brett Creeley <brett.creeley@intel.com>

Currently, if the PVID is set in the VLAN handling section of the VSI
context the driver still allows VLAN stripping to be enabled/disabled.
VLAN stripping should only be modifiable when the PVID is not set. Fix
this by preventing VLAN stripping modification when PVID is set.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 86a3a15c21c8..70b770083ee8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1847,6 +1847,12 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 	enum ice_status status;
 	int ret = 0;
 
+	/* do not allow modifying VLAN stripping when a port VLAN is configured
+	 * on this VSI
+	 */
+	if (vsi->info.pvid)
+		return 0;
+
 	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
