Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22A18509F6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Feb 2024 16:12:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ACD840543;
	Sun, 11 Feb 2024 15:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SG6vkAMZDoe8; Sun, 11 Feb 2024 15:12:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 976BD404C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707664376;
	bh=9chxJlD4RRXeKYHiJlcKuDHYi+qwNGSQQhVF5vxL8+I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=THU6BVT+B9prpk476Gl/hC3IFhYyDiOWcmYg8R2VDZB43HGA3rvbwYziIoaIu0XEQ
	 xIyekrobtgkKenYjMyiy5ToWuSSLa/4/dD4kWMMhoiWJaGwxDwXS4KeWNWC0/Y4ddj
	 cf7aitVwXxg60iTVhagsQ1a3EPZqH11EUI++FeRjZNCzQbxLdt1GTUSQCGegCbwh7g
	 FB7Iiirj34nPip2QhTcvdKe4opAfy/ejlGk5lzRqIAHV6/wfJtGjW/oM5HfGDKpvIK
	 n5GR0u3ny/XkTgxZ0K85gKFy74OYMlr6fGjMwHUsWke8AKohaPG1gB7+DGsOKqPBHv
	 tqjzUzYITTdDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 976BD404C3;
	Sun, 11 Feb 2024 15:12:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 860D91BF403
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 15:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EDDC820FD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 15:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ElHUWi76PP82 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Feb 2024 15:12:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BCA5082100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCA5082100
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCA5082100
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Feb 2024 15:12:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="396067752"
X-IronPort-AV: E=Sophos;i="6.05,261,1701158400"; d="scan'208";a="396067752"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2024 07:12:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,261,1701158400"; d="scan'208";a="33455457"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2024 07:12:50 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun, 11 Feb 2024 17:12:45 +0200
Message-Id: <20240211151245.811320-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707664372; x=1739200372;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lVr1269rQ50j5Fjh005V/U4ROHnA58NJWgZ6Cq31+1g=;
 b=NIGqRpYz8yGJBaJtCgrPoXT4te/wiEEdgkNheV/CzHJT8ubVlavWRja5
 xASoiUNxi1vQBwa9Vm+S+D/JA8Xtqj50v0Mkcqmy3qjOiemHJgXNQG0qn
 ZrMDzm6Xto7J4wKJNhUkn3zlxfVdc4i3y5l7jCHJADxxk/BpwtGBVb6I8
 CEPsyLZIKowt9+Hf7bzFil+zg58WUBtja10ij3tXu4YdE89mcHrC3JZZC
 Tc2w9d+8RZF/KDtf1q6/Z9jFevvckx6ux4x7nO2Jmgk+O8CtfS8ss8fH4
 VjWuTsLfDDhv07eps2zIekED2SW99uscnXrTBB+7zK30GNsU06FfuuHMJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NIGqRpYz
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: move force SMBUS
 from enable ulp function to avoid PHY loss issue
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
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Forcing SMBUS inside the ULP enabling flow leads to sporadic PHY loss on
some systems.
It is suspected to be caused by initiating PHY transactions before the
the interface settles.

Separating this configuration from the ULP enabling flow avoids this
issue.

Fixes: 6607c99e7034 ("e1000e: i219 - fix to enable both ULP and EEE in Sx state")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 19 -------------------
 drivers/net/ethernet/intel/e1000e/netdev.c  | 18 ++++++++++++++++++
 2 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 717c52913e84..4d83c9a0c023 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1165,25 +1165,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	if (ret_val)
 		goto out;
 
-	/* Switching PHY interface always returns MDI error
-	 * so disable retry mechanism to avoid wasting time
-	 */
-	e1000e_disable_phy_retry(hw);
-
-	/* Force SMBus mode in PHY */
-	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
-	if (ret_val)
-		goto release;
-	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
-	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
-
-	e1000e_enable_phy_retry(hw);
-
-	/* Force SMBus mode in MAC */
-	mac_reg = er32(CTRL_EXT);
-	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
-	ew32(CTRL_EXT, mac_reg);
-
 	/* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
 	 * LPLU and disable Gig speed when entering ULP
 	 */
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index af5d9d97a0d6..8fcf8f11f5a4 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6622,6 +6622,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 	u32 ctrl, ctrl_ext, rctl, status, wufc;
+	u16 smb_ctrl;
 	int retval = 0;
 
 	/* Runtime suspend should only enable wakeup for link changes */
@@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 
 		if (retval)
 			return retval;
+
+		/* Force SMBUS to allow WOL */
+		/* Switching PHY interface always returns MDI error
+		 * so disable retry mechanism to avoid wasting time
+		 */
+		e1000e_disable_phy_retry(hw);
+
+		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
+		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
+		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
+
+		e1000e_enable_phy_retry(hw);
+
+		/* Force SMBus mode in MAC */
+		ctrl_ext = er32(CTRL_EXT);
+		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
+		ew32(CTRL_EXT, ctrl_ext);
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.34.1

