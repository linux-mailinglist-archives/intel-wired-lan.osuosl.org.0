Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06A84BCD1C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Feb 2022 08:29:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5AE640420;
	Sun, 20 Feb 2022 07:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LovlZ1-AI0YV; Sun, 20 Feb 2022 07:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84D0640386;
	Sun, 20 Feb 2022 07:29:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7B271BF869
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 07:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3BEF8148D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 07:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkeAxVo1R87D for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Feb 2022 07:29:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F06C8813B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 07:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645342166; x=1676878166;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e3xxpfMG4/smSKPhLCyAn7Dxd8vbaqpwqErN+fTZmt0=;
 b=iJgsbs8TqkhAAk2Ykq0AWRKVD38VeO3vFSj4CSmm6PO0HGFHKRwbaypx
 5+iSTl8YjwleRC40aw9rDeQ23bm/nlZLbCVn2KFA49TdQv7/8bNHKzAWE
 sO/K3Yu9+yzYQxDLHvX4HH03ZEJ2vPMWsFcCw+PdnTXQ1il40eaisNFx3
 Os98pxwroW0TJFNkn6GzsPotNtyFKZwSD8CN47fbgv5HD6du3wfspxo0m
 vh4O4RO0xvPVPyCpbDZJH1D4KMlWoBU7X9O6oK0Cxe1+COQpyKi0AqFE5
 pRnEbMR1Y/V44XPravNdeVgzmCeh2Xq099JtJeZS1iiAio5xvqevAdfUr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10263"; a="314613692"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314613692"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2022 23:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="542305893"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by fmsmga007.fm.intel.com with ESMTP; 19 Feb 2022 23:29:24 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 20 Feb 2022 09:29:15 +0200
Message-Id: <20220220072915.3067085-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: igc_write_phy_reg_gpy: drop
 premature return
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
Cc: Corinna Vinschen <vinschen@redhat.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Similar to "igc_read_phy_reg_gpy: drop premature return" patch.
igc_write_phy_reg_gpy checks the return value from igc_write_phy_reg_mdic
and if it's not 0, returns immediately. By doing this, it leaves the HW
semaphore in the acquired state.

Drop this premature return statement, the function returns after
releasing the semaphore immediately anyway.

Fixes: 5586838fe9ce ("igc: Add code for PHY support")
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Reported-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_phy.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index df91d07ce82a..40dbf4b43234 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -746,8 +746,6 @@ s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data)
 		if (ret_val)
 			return ret_val;
 		ret_val = igc_write_phy_reg_mdic(hw, offset, data);
-		if (ret_val)
-			return ret_val;
 		hw->phy.ops.release(hw);
 	} else {
 		ret_val = igc_write_xmdio_reg(hw, (u16)offset, dev_addr,
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
