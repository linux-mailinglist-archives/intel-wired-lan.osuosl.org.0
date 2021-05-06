Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9085D3757E9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 376F6600D4;
	Thu,  6 May 2021 15:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1r3lSvErOST8; Thu,  6 May 2021 15:51:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DDB1608C0;
	Thu,  6 May 2021 15:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD921BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9CC2640570
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWC_Rg2u0Qmr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4498140617
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:39 +0000 (UTC)
IronPort-SDR: smxLqzHHisweHkJ739R4LuCMMkDhVbUSYfxEF0Q6sbN2oe66R95lZv1uX9QnwQMLSEO1+TtHY3
 NM95qzmbfGpw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389320"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389320"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:35 -0700
IronPort-SDR: dvtihnn/3Aqcx8ca8xcqM7M+C/wDeuEx7At8PrCd2PcisTlUyoQoXKKJiiYxekmhtBl2pxJLAE
 WpP9snkcO7Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369476"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:35 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:39:57 -0700
Message-Id: <20210506154008.12880-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 02/13] ice: add extack when unable to
 read device caps
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

From: Jacob Keller <jacob.e.keller@intel.com>

When filling out information for the DEVLINK_CMD_INFO_GET, the driver
needs to read some device capabilities. Add an extack message to
properly inform the caller of the failure, as we do for other failures
in this function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index ecefab6368f8..63a8718586b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -283,6 +283,9 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	/* discover capabilities first */
 	status = ice_discover_dev_caps(hw, &ctx->dev_caps);
 	if (status) {
+		dev_dbg(dev, "Failed to discover device capabilities, status %s aq_err %s\n",
+			ice_stat_str(status), ice_aq_str(hw->adminq.sq_last_status));
+		NL_SET_ERR_MSG_MOD(extack, "Unable to discover device capabilities");
 		err = -EIO;
 		goto out_free_ctx;
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
