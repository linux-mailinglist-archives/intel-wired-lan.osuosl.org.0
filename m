Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBBA47CCF8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 07:25:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7C6760EE0;
	Wed, 22 Dec 2021 06:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m-MYuZ25lo1c; Wed, 22 Dec 2021 06:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C685E60F3B;
	Wed, 22 Dec 2021 06:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 480BB1BF5B4
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B145A60AAF
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IODLY9x5YwYK for <intel-wired-lan@osuosl.org>;
 Wed, 22 Dec 2021 06:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D314260EE0
 for <intel-wired-lan@osuosl.org>; Wed, 22 Dec 2021 06:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640154289; x=1671690289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZFGnXDAoxFR5wKjW3qJYArKJlP5AUGiSRIInpFZGWNo=;
 b=barXmLOkSBMq5pXsrbYcVrTTgQEJVu/zfVBMU+AUd+ZJk+rKJqmH2Zdz
 5z4w037KY/wHONk+ulSyrxBmntlPZBGhPw36jaKErPzwlvjmLUrqwWS45
 d1rVd2E6665gjB7bLbhVoW02xPowpJTN/II7fjcXK5k8AGWL2x41u+mum
 NTKNwLoKg2bSl3kBjBhfwky3dLVp10B62HYhYhpXBXyTM/fEvgXb4pzO+
 t5jE88XUCpVurPSZj8Bj+6+XE6fyTY3yGF7jC4N45pQdEnAzG6Hr8QS50
 DS+Pd4QlHJFZXi5Jx+R3O4JONXsrc8FvnA4eo3wyoG5iNxdT5pLtjfvzh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326857344"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="326857344"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 22:24:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="521552632"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 22:24:48 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 22 Dec 2021 07:22:00 +0100
Message-Id: <20211222062201.36302-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
References: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ice: change mode only if
 eswitch is supported
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

Support for eswitch can be turned off when reservation for msix fails.
Cover this situation and return error in changing eswitch mode function.

Add new lines in each dev_info call.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index fbe640d501c6..2b6c7d27ac96 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -518,25 +518,34 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 		     struct netlink_ext_ack *extack)
 {
 	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
 
 	if (pf->eswitch_mode == mode)
 		return 0;
 
 	if (pf->num_alloc_vfs) {
-		dev_info(ice_pf_to_dev(pf), "Changing eswitch mode is allowed only if there is no VFs created");
-		NL_SET_ERR_MSG_MOD(extack, "Changing eswitch mode is allowed only if there is no VFs created");
+		dev_info(dev, "Changing eswitch mode is allowed only if there is no VFs created\n");
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Changing eswitch mode is allowed only if there is no VFs created");
+		return -EOPNOTSUPP;
+	}
+
+	if (!ice_is_eswitch_supported(pf)) {
+		dev_info(dev, "There is no eswitch support or eswitch resource allocation failed\n");
+		NL_SET_ERR_MSG_MOD(extack,
+				   "There is no eswitch support or eswitch resource allocation failed");
 		return -EOPNOTSUPP;
 	}
 
 	switch (mode) {
 	case DEVLINK_ESWITCH_MODE_LEGACY:
-		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to legacy",
+		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to legacy\n",
 			 pf->hw.pf_id);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to legacy");
 		break;
 	case DEVLINK_ESWITCH_MODE_SWITCHDEV:
 	{
-		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev",
+		dev_info(ice_pf_to_dev(pf), "PF %d changed eswitch mode to switchdev\n",
 			 pf->hw.pf_id);
 		NL_SET_ERR_MSG_MOD(extack, "Changed eswitch mode to switchdev");
 		break;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
