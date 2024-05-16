Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBF48C783B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 16:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 520A7824DF;
	Thu, 16 May 2024 14:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id haEH7yJ25e9s; Thu, 16 May 2024 14:06:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3897B826C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715868407;
	bh=vNaXXOiyZ1Th+08jis5DMpNaQQkQzWpBhfTPUIG90Wk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=u+6iWOXGL+z/LbT5VCugpGgqAeJ3I2h6MpVAYPsCn1/dcNdd7JqtCnZupRfav8+2P
	 aZey/mbaoTqsi6r2pS6y/AFVDOCO4NA0K8qkncR/D4av92A+/TBHBsGBoVnCVY0kYR
	 kMYy0rPpgCjAXBXLgloCt8Nmni9FudXm5GUhyc5B12TbXMWD4UMmHQg3BF0v17skkX
	 ucuZJNmysx2iHbsQ/CnQOLBEOK2koUDQl9tzWF35rNokD0jF1E5sqcv620aiNAYQ9L
	 9z3xHezDD3CbWNXF3IPL75KXnzYkKhY43M/IquHA/U9y3oEDlqb73fTBAvR8m3srJb
	 pVd76/oVUWCpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3897B826C2;
	Thu, 16 May 2024 14:06:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CDC91BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 14:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 886E460E71
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 14:06:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gDdMKz2ApP4d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 14:06:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1AC6D60D56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AC6D60D56
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AC6D60D56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 14:06:42 +0000 (UTC)
X-CSE-ConnectionGUID: MctdOhA5QMurn5+FyUUiVQ==
X-CSE-MsgGUID: 0cYDT6bFTpm2BiVI00YyOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12164654"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="12164654"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 07:06:42 -0700
X-CSE-ConnectionGUID: ixZ6xb/FTKWh+hPlWQdzgw==
X-CSE-MsgGUID: FZZPw3sxRSmx8XinnsIvow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31369877"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 16 May 2024 07:06:41 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BDE0928785;
 Thu, 16 May 2024 15:06:39 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 16 May 2024 16:04:26 +0200
Message-Id: <20240516140426.60439-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715868403; x=1747404403;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1meNr4gmZklS0C260mbbqDqUdbj2abQB/UN7m80/d/k=;
 b=jqf0JihASSZvotbRLpfGAA78l5M4AJotNaed+XrXVCuRq3XoDN9p6yC3
 GM5jEXPeQho5kmTZR+BGoMGz+Qts7NpyKbX95RJ4FWbTMtwdmtbuGAqMF
 vcEloFUIctyFdFpATVPNIhLojNIwTCt/wVEPSQbFlo29X5LODrvpaKPFV
 T3rDwFg061br+E/q/12h22/25jatwvv6sOaG/udR/CCcq5PvIsfISE8O1
 MZ7vlVEi7USowwp+Jb6kpiczb7wT98eR0kWiUwIWugAXcMpp6NopsSSAu
 qlUVxfctkQC0m0FPKMBMXM6gfCcClFWhRhJSe+N99UKp0KVFmsicbvrCc
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jqf0JihA
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: implement AQ download pkg
 retry
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
to FW issue. Fix this by retrying five times before moving to
Safe Mode.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index ce5034ed2b24..19e2111fcf08 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
 
 	for (i = 0; i < count; i++) {
 		bool last = false;
+		int try_cnt = 0;
 		int status;
 
 		bh = (struct ice_buf_hdr *)(bufs + start + i);
@@ -1346,8 +1347,22 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
 		if (indicate_last)
 			last = ice_is_last_download_buffer(bh, i, count);
 
-		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
-					     &offset, &info, NULL);
+		while (try_cnt < 5) {
+			status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
+						     last, &offset, &info,
+						     NULL);
+			if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
+			    hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
+				break;
+
+			try_cnt++;
+			msleep(20);
+		}
+
+		if (try_cnt)
+			dev_dbg(ice_hw_to_dev(hw),
+				"ice_aq_download_pkg failed, number of retries: %d\n",
+				try_cnt);
 
 		/* Save AQ status from download package */
 		if (status) {
-- 
2.40.1

