Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD65F32A950
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 19:25:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 565234EBAF;
	Tue,  2 Mar 2021 18:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id od_4UAw5jBIJ; Tue,  2 Mar 2021 18:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35FB94EB76;
	Tue,  2 Mar 2021 18:25:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86CA21BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76CC783AB2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1SbesRW1a4IT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D589783AA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 18:25:19 +0000 (UTC)
IronPort-SDR: FXtbj1UzMoOJToAoI9rmPvJJ7mWo0sySbrqRi691Nl4ia0JDETVJ7Dn3ECL/xrAhHDi1O2N8+y
 Gk4Mi/NUKsrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="186263198"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="186263198"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 10:25:18 -0800
IronPort-SDR: 87tgookkangoc5BGAFcLEp3oFQ1a74dKi1Jrp6jBtQWMTnKdHBhykAQjM+FBiTmXHOtn8TQnJ7
 Smct6NbH04ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="434915061"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2021 10:25:18 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 10:15:43 -0800
Message-Id: <20210302181545.51822-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S56 11/13] ice: Correct comment block style
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

The following is reported by checkpatch, correct it.

-----------------------------------------------
drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
-----------------------------------------------
WARNING:NETWORKING_BLOCK_COMMENT_STYLE: networking block comments don't use an empty /* line, use /* Comment...
FILE: drivers/net/ethernet/intel/ice/ice_adminq_cmd.h:1428:
+/*
+ * Send to PF command (indirect 0x0801) ID is only used by PF

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 8c22d0cda153..0a5f4c230076 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1424,8 +1424,7 @@ struct ice_aqc_nvm_comp_tbl {
 	u8 cvs[]; /* Component Version String */
 } __packed;
 
-/*
- * Send to PF command (indirect 0x0801) ID is only used by PF
+/* Send to PF command (indirect 0x0801) ID is only used by PF
  *
  * Send to VF command (indirect 0x0802) ID is only used by PF
  *
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
