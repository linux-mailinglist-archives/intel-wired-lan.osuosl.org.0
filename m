Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E973757F0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F0F440617;
	Thu,  6 May 2021 15:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQWCI66pJiGW; Thu,  6 May 2021 15:51:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BF23405DC;
	Thu,  6 May 2021 15:51:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE491BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6898C40613
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikJT_OfU5ybG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C52B7405DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:38 +0000 (UTC)
IronPort-SDR: oB/OqW5ZLykoxheQdQfqEiYfd752iRRqjcQ3kEuillgz73006pxE0kUigSAHh1n6qoJ8EZSXd5
 gZi/dbZclegA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389321"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389321"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:35 -0700
IronPort-SDR: GwuckQY+rdRHZ2Ci4tMOtjvgUqwQ4fmouKN4Z3Lmwi6tPuUqF6AGvoOKfF614xvjzfC4Ua3inA
 niCf3QODpI/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369477"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:35 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:39:58 -0700
Message-Id: <20210506154008.12880-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 03/13] ice: add error message when
 pldmfw_flash_image fails
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

When flashing a new firmware image onto the device, the pldmfw library
parses the image contents looking for a matching record. If no record
can be found, the function reports an error of -ENOENT. This can produce
a very confusing error message and experience for the user:

  $devlink dev flash pci/0000:ab:00.0 file image.bin
  devlink answers: No such file or directory

This is because the ENOENT error code is interpreted as a missing file
or directory. The pldmfw library does not have direct access to the
extack pointer as it is generic and non-netdevice specific. The only way
that ENOENT is returned by the pldmfw library is when no record matches.

Catch this specific error and report a suitable extended ack message:

  $devlink dev flash pci/0000:ab:00.0 file image.bin
  Error: ice: Firmware image has no record matching this device
  devlink answers: No such file or directory

In addition, ensure that we log an error message to the console whenever
this function fails. Because our driver specific PLDM operation
functions potentially set the extended ACK message, avoid overwriting
this with a generic message.

This change should result in an improved experience when attempting to
flash an image that does not have a compatible record.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index dcec0360ce55..f8601d5b0b19 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -702,6 +702,16 @@ int ice_flash_pldm_image(struct ice_pf *pf, const struct firmware *fw,
 	}
 
 	err = pldmfw_flash_image(&priv.context, fw);
+	if (err == -ENOENT) {
+		dev_err(dev, "Firmware image has no record matching this device\n");
+		NL_SET_ERR_MSG_MOD(extack, "Firmware image has no record matching this device");
+	} else if (err) {
+		/* Do not set a generic extended ACK message here. A more
+		 * specific message may already have been set by one of our
+		 * ops.
+		 */
+		dev_err(dev, "Failed to flash PLDM image, err %d", err);
+	}
 
 	ice_release_nvm(hw);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
