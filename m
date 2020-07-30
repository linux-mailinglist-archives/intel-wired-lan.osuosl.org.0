Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D9D2328B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57BED88453;
	Thu, 30 Jul 2020 00:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3c2iRVJo7sc; Thu, 30 Jul 2020 00:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2288388436;
	Thu, 30 Jul 2020 00:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD191BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C59122846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DL9EH76yt9zK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E8EA24F78
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
IronPort-SDR: T4zf+FawNEjhR5ZfrRfyaZOOaJ/jPgslvCdnNTkt3FzeCu4IyG+n8sWV6dhg/rHNQ6bd/Idoi0
 vSz95HTXHhww==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004458"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004458"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: JveDx+nyfUK5emEHzaOiTxXb8SwGBLFvolb8VlDoW7bTANDoMrcTjU0wBWgajq1S8Ngvt2aCcT
 9pBcN7/PD+vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908820"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:49 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:11 -0700
Message-Id: <20200730001922.52568-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 02/13] ice: fix the vsi_id mask to be
 10 bit for set_rss_lut
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

From: Kiran Patil <kiran.patil@intel.com>

set_rss_lut failed due to incorrect vsi_id mask. vsi_id is 10 bit
but mask was 0x1FF whereas it should be 0x3FF.

For vsi_num >= 512, FW set_rss_lut has been failing with return code
EACCESS (VSI ownership issue) because software was providing
incorrect vsi_num (dropping 10th bit due to incorrect mask) for
set_rss_lut admin command

Signed-off-by: Kiran Patil <kiran.patil@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 7fec9309d379..ba9375218fef 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1581,7 +1581,7 @@ struct ice_aqc_get_set_rss_keys {
 struct ice_aqc_get_set_rss_lut {
 #define ICE_AQC_GSET_RSS_LUT_VSI_VALID	BIT(15)
 #define ICE_AQC_GSET_RSS_LUT_VSI_ID_S	0
-#define ICE_AQC_GSET_RSS_LUT_VSI_ID_M	(0x1FF << ICE_AQC_GSET_RSS_LUT_VSI_ID_S)
+#define ICE_AQC_GSET_RSS_LUT_VSI_ID_M	(0x3FF << ICE_AQC_GSET_RSS_LUT_VSI_ID_S)
 	__le16 vsi_id;
 #define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_S	0
 #define ICE_AQC_GSET_RSS_LUT_TABLE_TYPE_M	\
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
