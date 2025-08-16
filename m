Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A695B2892D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 02:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E565C83841;
	Sat, 16 Aug 2025 00:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oT1SrnB8k7Q7; Sat, 16 Aug 2025 00:21:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E7BC83837
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755303687;
	bh=EFfx+KsHx8QYdaDEaSmlEouJcU7djenfY4PtpRY2Jh0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qyq4JjOqLgzQuvRsTscGpI4L0aqmCewoPpdOiseJsWQeTr7GoPmJAfjArshLiGHf7
	 fMSFgETwEnRp+rSHTS/Sy/hm03GrKS38b3qP3yVzq4NSHsM9l6LABqJeCWlqmd3aSx
	 oOgja/o7pQdPcMDsaGPr4TgzGI7xUCJENTP6D+kCeG8wVjXqF6kva/7Bkh16aZ8xKi
	 ZcJENYj0ekJ4mAdoqfArjcBZl6SK7MiNo8z7dOfdbhl3d2qRLOjVpdmR7MCHE9iedN
	 Lhapt+MhkYJCPFO3yY4lUqQMXL324JOMMDzbUkQddTOXvxC5RTKpyNF2pfV9KbiaBr
	 dbXsIpjLNkcMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E7BC83837;
	Sat, 16 Aug 2025 00:21:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 46D75959
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 00:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C21E4138B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 00:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K2P-BbQ_xfn3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 00:21:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0E0A341395
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E0A341395
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E0A341395
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 00:21:24 +0000 (UTC)
X-CSE-ConnectionGUID: aeP46jwyQhyBOy317WxxUw==
X-CSE-MsgGUID: wfiTPUMrRnSRLex/WI3vWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="68715023"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68715023"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 17:21:25 -0700
X-CSE-ConnectionGUID: BYjknMWFQg+4zXXYqdSJ/w==
X-CSE-MsgGUID: bhc6J+kCSUqh8whWmv/qmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171318875"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 17:21:24 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 15 Aug 2025 17:20:39 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-jk-fix-i40e-ice-pxe-9k-mtu-v2-1-ce857cdc6488@intel.com>
X-B4-Tracking: v=1; b=H4sIANfOn2gC/43OTQ6CMBAF4KuQrh1DS23BlfcwLKBMZeQ3BRFDu
 LuVlQsTWb68yfdmYQM6woGdg4U5nGigrvVBHAJmyqy9IVDhMxOhOIUxj+BegaUZSIa+Mgj9jJB
 U0IwPELkqwkgJboqEeaB36E83/MroWUOLI0t9UdIwdu61jU58q/f4EwcOOtKSq8waw82F2hHro
 +maz9xuwlr/oc2tzPVvQv4lTJQIJWJtcx1/Eem6rm8N/c2aUwEAAA==
X-Change-ID: 20250813-jk-fix-i40e-ice-pxe-9k-mtu-2b6d03621cd9
To: kheib@redhat.com, Paul Menzel <pmenzel@molgen.mpg.de>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Cc: Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=7295;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=XP+g8C59YkSvrKh0Q3PQN1z5NSf7ML+/x7Y0AHJHZ+M=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoz55xm4q1c7VwUv6b2ToL3+y8+eOU9C5Q+0rJnhL5T2v
 +W2aJppRykLgxgXg6yYIouCQ8jK68YTwrTeOMvBzGFlAhnCwMUpABPJuMjIsPC/zlGTg3kMQlny
 PF3Tb35bPeWJvJXwsvvfn+/p1UoTqGX4xTxpP5O+Is+bs/t3bdateijEUOaz9FHRceZL10+v7jC
 YygUA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755303685; x=1786839685;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=XP+g8C59YkSvrKh0Q3PQN1z5NSf7ML+/x7Y0AHJHZ+M=;
 b=Cos828R5DDa6WuUvli47LbeypcXQHLQtF1o0aboUIHC2GZcMzzlahtUH
 xAicP6JJ9pEwtOXVtMIw14hNgZavZi/MVmRcSOH242F/EnJW/H82Ea0Ky
 UkeewFH1vYJB0ImWgz9mAVb0GYrom1qRT3RCNFwcTggldnaxY4XdYr1E1
 9/CUqTwgeiRNVy4sblagrF+1iQiS0d6eEauc9Qtbbfis2ZweUPGE86Mbw
 73XL2IZQM7/yc8I0JZglmLs9GelROLBnNvHKlHS0FMjW5HL7TlsLu8Vp0
 gq8fgQR7ho9Qw8CI6/stAb7GO/e/CI4yZsn100ebYCc6bA6dCIdzfznCB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cos828R5
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix Jumbo Frame support
 after iPXE boot
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The i40e hardware has multiple hardware settings which define the Maximum
Frame Size (MFS) of the physical port. The firmware has an AdminQ command
(0x0603) to configure the MFS, but the i40e Linux driver never issues this
command.

In most cases this is no problem, as the NVM default value has the device
configured for its maximum value of 9728. Unfortunately, recent versions of
the iPXE intelxl driver now issue the 0x0603 Set Mac Config command,
modifying the MFS and reducing it from its default value of 9728.

This occurred as part of iPXE commit 6871a7de705b ("[intelxl] Use admin
queue to set port MAC address and maximum frame size"), a prerequisite
change for supporting the E800 series hardware in iPXE. Both the E700 and
E800 firmware support the AdminQ command, and the iPXE code shares much of
the logic between the two device drivers.

The ice E800 Linux driver already issues the 0x0603 Set Mac Config command
early during probe, and is thus unaffected by the iPXE change.

Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), the
i40e driver does check the I40E_PRTGL_SAH register, but it only logs a
warning message if its value is below the 9728 default. This register also
only covers received packets and not transmitted packets. A warning can
inform system administrators, but does not correct the issue. No
interactions from userspace cause the driver to write to PRTGL_SAH or issue
the 0x0603 AdminQ command. Only a GLOBR reset will restore the value to its
default value. There is no obvious method to trigger a GLOBR reset from
user space.

To fix this, introduce the i40e_aq_set_mac_config() function, similar to
the one from the ice driver. Call this during early probe to ensure that
the device configuration matches driver expectation.

In addition, instead of just checking the I40E_PRTGL_SAH register, update
its value to the 9728 default and write it back. This ensures that the
hardware is in the expected state, regardless of whether the iPXE (or any
other early boot driver) has modified this state.

This is a better user experience, as we now fix the issues with larger MTU
instead of merely warning. It also aligns with the way the ice E800 series
driver works.

A final note: The Fixes tag provided here is not strictly accurate. The
issue occurs as a result of an external entity (the iPXE intelxl driver),
and this is not a regression specifically caused by the mentioned change.
However, I believe the original change to just warn about PRTGL_SAH being
too low was an insufficient fix.

Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
Link: https://github.com/ipxe/ipxe/commit/6871a7de705b6f6a4046f0d19da9bcd689c3bc8e
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Changes in v2:
- Rewrite commit message with feedback from Paul Menzel.
- Add missing initialization of cmd via libie_aq_raw().
- Fix the Kdoc comment for i40e_aq_set_mac_config().
- Move clarification of the Fixes tag to the commit message.
- Link to v1: https://lore.kernel.org/r/20250814-jk-fix-i40e-ice-pxe-9k-mtu-v1-1-c3926287fb78@intel.com
---
 drivers/net/ethernet/intel/i40e/i40e_prototype.h |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_common.c    | 33 ++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c      | 17 +++++++-----
 3 files changed, 46 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index aef5de53ce3b..26bb7bffe361 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -98,6 +98,8 @@ int i40e_aq_set_mac_loopback(struct i40e_hw *hw,
 			     struct i40e_asq_cmd_details *cmd_details);
 int i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
 			     struct i40e_asq_cmd_details *cmd_details);
+int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
+			   struct i40e_asq_cmd_details *cmd_details);
 int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
 			   struct i40e_asq_cmd_details *cmd_details);
 int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 270e7e8cf9cf..ce235f7313ba 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1189,6 +1189,39 @@ int i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 	return status;
 }
 
+/**
+ * i40e_aq_set_mac_config - Configure MAC settings
+ * @hw: pointer to the hw struct
+ * @max_frame_size: Maximum Frame Size to be supported by the port
+ * @cmd_details: pointer to command details structure or NULL
+ *
+ * Set MAC configuration (0x0603). Note that max_frame_size must be greater
+ * than zero.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
+			   struct i40e_asq_cmd_details *cmd_details)
+{
+	struct i40e_aq_set_mac_config *cmd;
+	struct libie_aq_desc desc;
+
+	cmd = libie_aq_raw(&desc);
+
+	if (max_frame_size == 0)
+		return -EINVAL;
+
+	i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_mac_config);
+
+	cmd->max_frame_size = cpu_to_le16(max_frame_size);
+
+#define I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD	0x7FFF
+	cmd->fc_refresh_threshold =
+		cpu_to_le16(I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD);
+
+	return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+}
+
 /**
  * i40e_aq_clear_pxe_mode
  * @hw: pointer to the hw struct
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b83f823e4917..4796fdd0b966 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -16045,13 +16045,18 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %pe last_status =  %s\n",
 			ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 
-	/* make sure the MFS hasn't been set lower than the default */
 #define MAX_FRAME_SIZE_DEFAULT 0x2600
-	val = FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
-			rd32(&pf->hw, I40E_PRTGL_SAH));
-	if (val < MAX_FRAME_SIZE_DEFAULT)
-		dev_warn(&pdev->dev, "MFS for port %x (%d) has been set below the default (%d)\n",
-			 pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
+
+	err = i40e_aq_set_mac_config(hw, MAX_FRAME_SIZE_DEFAULT, NULL);
+	if (err) {
+		dev_warn(&pdev->dev, "set mac config ret =  %pe last_status =  %s\n",
+			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
+	}
+
+	/* Make sure the MFS is set to the expected value */
+	val = rd32(hw, I40E_PRTGL_SAH);
+	FIELD_MODIFY(I40E_PRTGL_SAH_MFS_MASK, &val, MAX_FRAME_SIZE_DEFAULT);
+	wr32(hw, I40E_PRTGL_SAH, val);
 
 	/* Add a filter to drop all Flow control frames from any VSI from being
 	 * transmitted. By doing so we stop a malicious VF from sending out

---
base-commit: 12da2b92ad50e6602b4c5e9073d71f2368b70b63
change-id: 20250813-jk-fix-i40e-ice-pxe-9k-mtu-2b6d03621cd9

Best regards,
--  
Jacob Keller <jacob.e.keller@intel.com>

