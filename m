Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B808C9B76
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2024 12:39:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B282040AA5;
	Mon, 20 May 2024 10:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id syN2A7GJDGKO; Mon, 20 May 2024 10:39:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAD1A40AED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716201558;
	bh=WfDNm/dj177pvdvQe1cX4uhRCKrFqotvc4UhoVaXfJM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=45/qy/nkUhkNEY+SKYi0bKS/btH90XwCaVI5HRqbCn6CsknuyQozx7BXdSBJDBn6x
	 3L6U8u2MA42L3iULSMWVS1mvHSpZXPC0FnVv8+4pxNttW85kYxwKy56s/eTsLcWBCa
	 RnHsLpJy4cy1r+EnYsFD2QYoWR8/cb6ENundGc0tSSZiVcGT8GnAu4JZ+Bx04VZ+y7
	 gajOe62ZnhY88ulqvvH/f4nY0s/pLSkTiw5s6RdFhN0O+//9NQwh1vR93LnCnzHL4b
	 ziInJlA7XXxv/a5rHNt6FXOOiF+O8mCi/2dS+Aa4stBYOtvmqVgGpwmiis5PW+dvdG
	 UC/eTIgxF/8lw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAD1A40AED;
	Mon, 20 May 2024 10:39:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA6711C48A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 10:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF8C080FB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 10:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GLlu-0f2mAH9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2024 10:39:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB0F380BE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB0F380BE6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB0F380BE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 10:39:14 +0000 (UTC)
X-CSE-ConnectionGUID: dD9MfQbZSvK3sVkHcOevyw==
X-CSE-MsgGUID: RFIUVEiGSXWVGNmOIHdhfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12169925"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12169925"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:39:13 -0700
X-CSE-ConnectionGUID: T8CGvU8oRdudpcVq05li8g==
X-CSE-MsgGUID: wlIPx+6uTIC5OZCo7sQu5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37078912"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 20 May 2024 03:39:11 -0700
Received: from rozewie.igk.intel.com (unknown [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9F9F327BD9;
 Mon, 20 May 2024 11:39:10 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 20 May 2024 12:37:00 +0200
Message-Id: <20240520103700.81122-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716201555; x=1747737555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kgB4AHCFonuq9Yiu5dzmjUmmAbiK9vcIe8NHet0Na6I=;
 b=RzSw6hDGIEH/wc8SzO/EDPVv4sDKxdU7viah6EX4099XzZYUWWTb/V+3
 tcTT3z4YfddSjxfi0cPQnxJr6fDJ/NUpRjImIWrQqu0+Yty69Br57t7FR
 3QilPQZfAdwrJO1r8X9oK9TzmHKKXC6BReYRhCchJ3McGTwosXTLUtQ+3
 2c4MalQJmY4pC94FgD2PI5RMc15oCKdXj73r/in0dEPNiOYDVIVxz8e7W
 G/FaOSn/4iipQEbq6fWwe9NOqTfpETmrXss1eRd6XOGOlGsBkHH63JNLF
 3MYgm9XuZhG3WMQt6QFpzEroaTspd6WyGQHxyRuvD/h8wW+OQKSXupF0Z
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RzSw6hDG
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download pkg
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
Cc: bcreeley@amd.com, naveenm@marvell.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
to FW issue. Fix this by retrying five times before moving to
Safe Mode.

Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: remove "failure" from log message
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index ce5034ed2b24..77b81e5a5a44 100644
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
+				"ice_aq_download_pkg number of retries: %d\n",
+				try_cnt);
 
 		/* Save AQ status from download package */
 		if (status) {
-- 
2.40.1

