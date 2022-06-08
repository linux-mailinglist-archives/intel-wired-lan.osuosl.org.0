Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20697543ECB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 23:49:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C7D940A62;
	Wed,  8 Jun 2022 21:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vM4p09xGDOy0; Wed,  8 Jun 2022 21:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4518F404BA;
	Wed,  8 Jun 2022 21:49:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 122151BF909
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jun 2022 21:49:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3D75404BA
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jun 2022 21:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgBbK3ox7Joa for <intel-wired-lan@osuosl.org>;
 Wed,  8 Jun 2022 21:49:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29407400A6
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jun 2022 21:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654724941; x=1686260941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d1SyNGEFKOauYdxyGfptBYjZ+ctVrtzlxi1NwFBE++c=;
 b=PVVoZZwKA1nQzzt5Z5bHnIuF1At5XDvVlMZOpdD42hE5ipXgS1w/QjbX
 6rMsVj+rVfg9NE2ZicYb/3sxomjcrlz0HKgTAeT48Z+pTRNHssURXcWrC
 bqBYm+BFFWIF82B9gkCt0PBFq7mez/HTTisl8w1wovqv4zLvbDV+jU6oV
 yHMI+K5S26F3ctC6SmWXdvJdNJvND3qGiwRX24OGYh5I6EGzN/QQinHbr
 L4UmKq4UVgcgysPaeStcpXFbN+STSJkPJrGXAexLVmvo/tyJOI/W04apy
 wqNlPPHT+Ai4+DGP7dXPV8l49o87s1GRxS95WgdqIchRfwoTl5DxDxjP7 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="278222609"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="278222609"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 14:49:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="907914953"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.9.252])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 14:48:59 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  8 Jun 2022 14:48:32 -0700
Message-Id: <20220608214832.494-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: change devlink code to read NVM
 in blocks
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

When creating a snapshot of the NVM the driver needs to read the entire
contents from the NVM and store it. The NVM reads are protected by a lock
that is shared between the driver and the firmware.

If the driver takes too long to read the entire NVM (which can happen on
some systems) then the firmware could reclaim the lock and cause subsequent
reads from the driver to fail.

We could fix this by increasing the timeout that we pass to the firmware,
but we could end up in the same situation again if the system is slow.
Instead have the driver break the reading of the NVM into blocks that are
small enough that we have confidence that the read will complete within the
timeout time, but large enough not to cause significant AQ overhead.

Fixes: dce730f17825 ("ice: add a devlink region for dumping NVM contents")
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 59 +++++++++++++-------
 1 file changed, 40 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 3991d62473bf..52683f691143 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -814,6 +814,8 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
 	devlink_port_unregister(devlink_port);
 }
 
+#define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
+
 /**
  * ice_devlink_nvm_snapshot - Capture a snapshot of the NVM flash contents
  * @devlink: the devlink instance
@@ -840,8 +842,9 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	struct ice_pf *pf = devlink_priv(devlink);
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	void *nvm_data;
-	u32 nvm_size;
+	u8 *nvm_data, *tmp, i;
+	u32 nvm_size, left;
+	s8 num_blks;
 	int status;
 
 	nvm_size = hw->flash.flash_size;
@@ -849,26 +852,44 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	if (!nvm_data)
 		return -ENOMEM;
 
-	status = ice_acquire_nvm(hw, ICE_RES_READ);
-	if (status) {
-		dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
-			status, hw->adminq.sq_last_status);
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
-		vfree(nvm_data);
-		return status;
-	}
 
-	status = ice_read_flat_nvm(hw, 0, &nvm_size, nvm_data, false);
-	if (status) {
-		dev_dbg(dev, "ice_read_flat_nvm failed after reading %u bytes, err %d aq_err %d\n",
-			nvm_size, status, hw->adminq.sq_last_status);
-		NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM contents");
+	num_blks = DIV_ROUND_UP(nvm_size, ICE_DEVLINK_READ_BLK_SIZE);
+	tmp = nvm_data;
+	left = nvm_size;
+
+	/* some systems take longer to read the nvm than others which causes the
+	 * fw to reclaim the nvm lock before the entire nvm has been read. fix
+	 * this by breaking the reads of the nvm into smaller chunks that will
+	 * probably not take as long. this has some overhead since we are
+	 * increasing the number of AQ commands, but it should always work
+	 */
+	for (i = 0; i < num_blks; i++) {
+		u32 read_sz = min_t(u32, ICE_DEVLINK_READ_BLK_SIZE, left);
+
+		status = ice_acquire_nvm(hw, ICE_RES_READ);
+		if (status) {
+			dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
+				status, hw->adminq.sq_last_status);
+			NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
+			vfree(nvm_data);
+			return -EIO;
+		}
+
+		status = ice_read_flat_nvm(hw, i * ICE_DEVLINK_READ_BLK_SIZE,
+					   &read_sz, tmp, false);
+		if (status) {
+			dev_dbg(dev, "ice_read_flat_nvm failed after reading %u bytes, err %d aq_err %d\n",
+				read_sz, status, hw->adminq.sq_last_status);
+			NL_SET_ERR_MSG_MOD(extack, "Failed to read NVM contents");
+			ice_release_nvm(hw);
+			vfree(nvm_data);
+			return -EIO;
+		}
 		ice_release_nvm(hw);
-		vfree(nvm_data);
-		return status;
-	}
 
-	ice_release_nvm(hw);
+		tmp += read_sz;
+		left -= read_sz;
+	}
 
 	*data = nvm_data;
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
