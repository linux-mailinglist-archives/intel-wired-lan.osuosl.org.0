Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E58FB30C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 14:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF62461064;
	Tue,  4 Jun 2024 12:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BVXrifsz1Wx2; Tue,  4 Jun 2024 12:57:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28B7A61073
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717505842;
	bh=91wxoVraCJyEFHLnARWx8bLTQTo1JOhp7iRUBcQAUkg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=epUQNGaS/PBMY626hknT+JQEum90X2rCZXfRyAYN4gD4k8H3RmJqgg2m0k1aL2gno
	 /v/aZBN7PZI/Hzsmzz+L+OdTeIyHBm9sZSASi9zcQeynOdWX7lvnIzY+eSGyP4LBmJ
	 5Q8Uavix0a7Ao/1RTMK5j7Jr/D00Z8QZfzIO2nNGtMfS5kBBg0zNZbEk9T4x8XdxlT
	 jWYrSoAKOkzgGWQJNDMqoSpOM7wWAqh77MKLqk0uftvlM8XS32D05bQxcnzZhb5Cjn
	 OvhhHJ8tnuLy9OuPeFW//4m0NQKbbH3zjzaddcJPA2Y7pLV1LHHm2eaOymZahpxATQ
	 rFtaA6dqsHBxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28B7A61073;
	Tue,  4 Jun 2024 12:57:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FF571BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 12:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED90D41571
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 12:57:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IFuk5YHEyrNE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 12:57:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6EEE413CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6EEE413CA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6EEE413CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 12:57:18 +0000 (UTC)
X-CSE-ConnectionGUID: UDPhOLu8RUuJ9dpwK4cm1g==
X-CSE-MsgGUID: NSbbgXzQSnyW3kMrPRtYkw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31583608"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31583608"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 05:57:18 -0700
X-CSE-ConnectionGUID: nfqG6T0wSW+MpnJU7moK0Q==
X-CSE-MsgGUID: 5XOJMMmaQ8u5HD1Mb3L2LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37698338"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 04 Jun 2024 05:57:16 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 09FDA125B4;
 Tue,  4 Jun 2024 13:57:14 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  4 Jun 2024 14:55:14 +0200
Message-Id: <20240604125514.799333-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717505839; x=1749041839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9QRE6QyhzZCtFs3LRqDV+9PpiMqhE5qgsLSY5FDmQ18=;
 b=P5RdKaLdupwepTJ3MuKkp1sfEwod/jcE5XQc7PIAL72Ka85cTg5XQYb6
 1PWD8bBuKsPDKtCQO+kgdhYS81sbwIAAeQj7vX4/7T1hkndnBmxztymvC
 iwLMHX8Ai2c2TWHxEiK86++4of2E5FH+dyjT07ghV4Ls9urFnF1ZWyPB/
 g0g1xy0bxzJXNlmtmI7cAkve/f/VprpRHNUygqbTkglGpWlZ5+eZ3oBEi
 9SRnGeBzeAsywY/qP2Miu3Kktlido8/VUxaIM63k+kWkHl1J5AxwqPazO
 rO/29WTpXh+S/T2eNO3gpdkFEVoZdzDNBw+AxhyNs1k+JBCmRl6wY1zEq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P5RdKaLd
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: implement AQ download pkg
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
Cc: jacob.e.keller@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
to FW issue. Fix this by retrying five times before moving to
Safe Mode. Sleep for 20 ms before retrying. This was tested with the
4.40 firmware.

Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Brett Creeley <brett.creeley@amd.com>
---
v2: remove "failure" from log message
v3: don't sleep in the last iteration of the wait loop
v4: Mention the delay in the commit msg
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index ce5034ed2b24..f182179529b7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
 
 	for (i = 0; i < count; i++) {
 		bool last = false;
+		int try_cnt = 0;
 		int status;
 
 		bh = (struct ice_buf_hdr *)(bufs + start + i);
@@ -1346,8 +1347,26 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
 		if (indicate_last)
 			last = ice_is_last_download_buffer(bh, i, count);
 
-		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
-					     &offset, &info, NULL);
+		while (1) {
+			status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
+						     last, &offset, &info,
+						     NULL);
+			if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
+			    hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
+				break;
+
+			try_cnt++;
+
+			if (try_cnt == 5)
+				break;
+
+			msleep(20);
+		}
+
+		if (try_cnt)
+			dev_dbg(ice_hw_to_dev(hw),
+				"ice_aq_download_pkg number of retries: %d\n",
+				try_cnt);
 
 		/* Save AQ status from download package */
 		if (status) {
-- 
2.40.1

