Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F51C154A93
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2020 18:53:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69C2B8612E;
	Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A77nniK0qNZv; Thu,  6 Feb 2020 17:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0836860FC;
	Thu,  6 Feb 2020 17:53:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E22F1BF326
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 688E186119
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ZKqnpRd0P9h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2020 17:53:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BDB52860E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2020 17:53:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 09:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="255160929"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2020 09:53:06 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Feb 2020 01:20:00 -0800
Message-Id: <20200206092013.23388-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
References: <20200206092013.23388-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 v3 02/15] ice: Fix switch between FW
 and SW LLDP
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
