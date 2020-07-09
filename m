Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1357E21A499
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C4E7389A04;
	Thu,  9 Jul 2020 16:20:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FWaxxjdtrSoQ; Thu,  9 Jul 2020 16:20:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 701F489A0F;
	Thu,  9 Jul 2020 16:20:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 70F8B1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A37F2CB8E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Kq8E7Zsxwai for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id C60CC2333F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:14 +0000 (UTC)
IronPort-SDR: 4lOZ9PqB/1GxJn9bxSZpSaTldLbEbw2Kcr+0UHW2X0ko7Zszx9PgipalHDU2IIAHJwXLiJDgb6
 0jATY3dTgJgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="232906024"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="232906024"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:10 -0700
IronPort-SDR: I0+S6LgcKi2eZempPFqidcaRu53b7X5T2qdpWRPIUK5gS8HEXj/SrAp/qj139BAQ1U/yxqIdfq
 GyyvwIwySTzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352058"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:06 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:00 -0700
Message-Id: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 01/15] ice: refactor ice_discover_caps
 to avoid need to retry
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

The ice_discover_caps function is used to read the device and function
capabilities, updating the hardware capabilities structures with
relevant data.

The exact number of capabilities returned by the hardware is unknown
ahead of time. The AdminQ command will report the total number of
capabilities in the return buffer.

The current implementation involves requesting capabilities once,
reading this returned size, and then re-requested with that size.

This isn't really necessary. The firmware interface has a maximum size
of ICE_AQ_MAX_BUF_LEN. Firmware can never return more than
ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem) capabilities.

Avoid the retry loop by simply allocating a buffer of size
ICE_AQ_MAX_BUF_LEN. This is significantly simpler than retrying. The
extra allocation isn't a big deal, as it will be released after we
finish parsing the capabilities.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 43 ++++++---------------
 1 file changed, 12 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 57fd815c41bc..37ea042ece13 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1901,40 +1901,21 @@ ice_discover_caps(struct ice_hw *hw, enum ice_adminq_opc opc)
 {
 	enum ice_status status;
 	u32 cap_count;
-	u16 cbuf_len;
-	u8 retries;
-
-	/* The driver doesn't know how many capabilities the device will return
-	 * so the buffer size required isn't known ahead of time. The driver
-	 * starts with cbuf_len and if this turns out to be insufficient, the
-	 * device returns ICE_AQ_RC_ENOMEM and also the cap_count it needs.
-	 * The driver then allocates the buffer based on the count and retries
-	 * the operation. So it follows that the retry count is 2.
-	 */
-#define ICE_GET_CAP_BUF_COUNT	40
-#define ICE_GET_CAP_RETRY_COUNT	2
-
-	cap_count = ICE_GET_CAP_BUF_COUNT;
-	retries = ICE_GET_CAP_RETRY_COUNT;
-
-	do {
-		void *cbuf;
-
-		cbuf_len = (u16)(cap_count *
-				 sizeof(struct ice_aqc_list_caps_elem));
-		cbuf = devm_kzalloc(ice_hw_to_dev(hw), cbuf_len, GFP_KERNEL);
-		if (!cbuf)
-			return ICE_ERR_NO_MEMORY;
+	void *cbuf;
 
-		status = ice_aq_discover_caps(hw, cbuf, cbuf_len, &cap_count,
-					      opc, NULL);
-		devm_kfree(ice_hw_to_dev(hw), cbuf);
+	cbuf = kzalloc(ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
+	if (!cbuf)
+		return ICE_ERR_NO_MEMORY;
 
-		if (!status || hw->adminq.sq_last_status != ICE_AQ_RC_ENOMEM)
-			break;
+	/* Although the driver doesn't know the number of capabilities the
+	 * device will return, we can simply send a 4KB buffer, the maximum
+	 * possible size that firmware can return.
+	 */
+	cap_count = ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem);
 
-		/* If ENOMEM is returned, try again with bigger buffer */
-	} while (--retries);
+	status = ice_aq_discover_caps(hw, cbuf, ICE_AQ_MAX_BUF_LEN, &cap_count,
+				      opc, NULL);
+	kfree(cbuf);
 
 	return status;
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
