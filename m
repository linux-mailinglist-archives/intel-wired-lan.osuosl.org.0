Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA9A145F66
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:53:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADD4287221;
	Wed, 22 Jan 2020 23:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EdZohkTSaC1v; Wed, 22 Jan 2020 23:53:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 844A986FA6;
	Wed, 22 Jan 2020 23:53:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3B7E1BF281
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:53:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF8AD86885
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yrfIeOKfjbDI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:53:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5C5CB86469
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:53:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:53:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="222189279"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jan 2020 15:53:24 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:20:28 -0800
Message-Id: <20200122152041.41498-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152041.41498-1-anthony.l.nguyen@intel.com>
References: <20200122152041.41498-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 02/15] ice: Fix switch between FW and
 SW LLDP
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

From: Dave Ertman <david.m.ertman@intel.com>

When switching between FW and SW LLDP mode, the
number of configured TLV apps in the driver's
DCB configuration is getting out of synch with
what lldpad thinks is configured.  This is causing
a problem when shutting down lldpad.  The cleanup
is trying to delete TLV apps that are not defined
in the kernel.

Since the driver is keeping an accurate account
of the apps defined, use the drivers number of
apps to determine if there is an app to delete.
If the number of apps is <= 1, then do not
attempt to delete.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index d870c1aedc17..926c9772f086 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -713,13 +713,13 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 		return -EINVAL;
 
 	mutex_lock(&pf->tc_mutex);
-	ret = dcb_ieee_delapp(netdev, app);
-	if (ret)
-		goto delapp_out;
-
 	old_cfg = &pf->hw.port_info->local_dcbx_cfg;
 
-	if (old_cfg->numapps == 1)
+	if (old_cfg->numapps <= 1)
+		goto delapp_out;
+
+	ret = dcb_ieee_delapp(netdev, app);
+	if (ret)
 		goto delapp_out;
 
 	new_cfg = &pf->hw.port_info->desired_dcbx_cfg;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
