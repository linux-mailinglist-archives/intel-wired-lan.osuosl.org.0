Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCB88C8776
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 15:51:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16B5882277;
	Fri, 17 May 2024 13:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FsS_D90WFW3L; Fri, 17 May 2024 13:51:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 096FF82280
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715953870;
	bh=6gxW9Vl+576ign5vW/P5Se5+oW1Bp9cQhGUcs9R2Fk4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gq+cZg4mpNGwmx/ezuqdohrN5NeCKve5s+0NM5u907dpAaeBwyXiB7cEVuaBDxqKw
	 ogOLLmFeDdOKUF+KyfmoXv7trJuXWew2TgUShVUOS3l43Hit4CTI/33jjOyyF8aHyu
	 +VQ01Kgo1p0ANIHQtZTj6BQz/LBRqIjq71/mtsaaTjNxcbGwvsLDzTYFtIg0jxfz2V
	 lrvq5LkK+BiX7+cifRD/3ADA4Y9Bi1VuLNBiQNZbQU4amgbLHghTx9vNU2EjBeZQv/
	 4ywC0hdIpZzRLuq4X2Clu7I5FWRlXu7ID7RRaUysIuoKscaylJcDdkBChOiIo3Y+m4
	 B/WZzH47ho2Sw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 096FF82280;
	Fri, 17 May 2024 13:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0832C1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 13:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E6D6340514
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 13:51:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DQNZIZgK1NYG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 13:51:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.120;
 helo=smtp-relay-canonical-0.canonical.com;
 envelope-from=hui.wang@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 32990404F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32990404F8
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32990404F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 13:51:04 +0000 (UTC)
Received: from hwang4-ThinkPad-T14s-Gen-2a.. (unknown [149.11.192.251])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id D0FA83FA40; 
 Fri, 17 May 2024 13:50:59 +0000 (UTC)
From: Hui Wang <hui.wang@canonical.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, vitaly.lifshits@intel.com,
 dima.ruinskiy@intel.com, davem@davemloft.net, pabeni@redhat.com,
 edumazet@google.com, sasha.neftin@intel.com, naamax.meir@linux.intel.com
Date: Fri, 17 May 2024 21:50:59 +0800
Message-Id: <20240517135059.10646-1-hui.wang@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1715953860;
 bh=6gxW9Vl+576ign5vW/P5Se5+oW1Bp9cQhGUcs9R2Fk4=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=kXTN60hgjnDQTtlDqXdZVUPQwhojOICOTkxD51A16Pi885GfXvKjBTwqCXZCebQLt
 3tcLhjdp4uGRbEYbZ1OSf174Rv3zgryn1EyXWzyxT0KErlJKxPOmuD2LaavNLfE+wX
 CzXxuCUSTog9JeWfcYKVIWjQo8ENFSYGqh8PbOEFUvCCOKFH33lD9yYaytYlAoPwVw
 OvycLkTEEpx2MnLUe0eQ4uOIFBoB0yVERi+06ewsuRE6EHl1rYrCx/ZK34PcWoIi8l
 KdD16x1i329x7V8jY6I1qNmb9K90GMRzhw5lil7NoeDTPfd19ujV+NiyqRZC3P2DdJ
 ss7Wz5xCLuxpw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=kXTN60hg
Subject: [Intel-wired-lan] [iwl-net][PATCH v3] e1000e: move force SMBUS near
 the end of enable_ulp function
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
Cc: hui.wang@canonical.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit 861e8086029e ("e1000e: move force SMBUS from enable ulp
function to avoid PHY loss issue") introduces a regression on
PCH_MTP_I219_LM18 (PCIID: 0x8086550A). Without the referred commit, the
ethernet works well after suspend and resume, but after applying the
commit, the ethernet couldn't work anymore after the resume and the
dmesg shows that the NIC link changes to 10Mbps (1000Mbps originally):

    [   43.305084] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 10 Mbps Full Duplex, Flow Control: Rx/Tx

Without the commit, the force SMBUS code will not be executed if
"return 0" or "goto out" is executed in the enable_ulp(), and in my
case, the "goto out" is executed since FWSM_FW_VALID is set. But after
applying the commit, the force SMBUS code will be ran unconditionally.

Here move the force SMBUS code back to enable_ulp() and put it
immediately ahead of hw->phy.ops.release(hw), this could allow the
longest settling time as possible for interface in this function and
doesn't change the original code logic.

The issue was found on a Lenovo laptop with the ethernet hw as below:
00:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550a]
(rev 20).

And this patch is verified (cable plug and unplug, system suspend
and resume) on Lenovo laptops with ethernet hw: [8086:550a],
[8086:550b], [8086:15bb], [8086:15be], [8086:1a1f], [8086:1a1c] and
[8086:0dc7].

Fixes: 861e8086029e ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue")
Signed-off-by: Hui Wang <hui.wang@canonical.com>
Acked-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
In the v3:
addressed Paul's comment about commit header,
 - Change CH_MTP_I219_LM18 to PCH_MTP_I219_LM18
 - Change Link to link
 - Add a blank line and four spaces indent for [   43.305084] e1000e 0000:00:1f.6
 - Change immediate to immediately
 - Add system info about reproduced the issue and verified the fix

 drivers/net/ethernet/intel/e1000e/ich8lan.c | 22 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 18 -----------------
 2 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index f9e94be36e97..2e98a2a0bead 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1225,6 +1225,28 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	}
 
 release:
+	/* Switching PHY interface always returns MDI error
+	 * so disable retry mechanism to avoid wasting time
+	 */
+	e1000e_disable_phy_retry(hw);
+
+	/* Force SMBus mode in PHY */
+	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
+	if (ret_val) {
+		e1000e_enable_phy_retry(hw);
+		hw->phy.ops.release(hw);
+		goto out;
+	}
+	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
+	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
+
+	e1000e_enable_phy_retry(hw);
+
+	/* Force SMBus mode in MAC */
+	mac_reg = er32(CTRL_EXT);
+	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
+	ew32(CTRL_EXT, mac_reg);
+
 	hw->phy.ops.release(hw);
 out:
 	if (ret_val)
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 3692fce20195..cc8c531ec3df 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6623,7 +6623,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 ctrl, ctrl_ext, rctl, status, wufc;
 	int retval = 0;
-	u16 smb_ctrl;
 
 	/* Runtime suspend should only enable wakeup for link changes */
 	if (runtime)
@@ -6697,23 +6696,6 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 			if (retval)
 				return retval;
 		}
-
-		/* Force SMBUS to allow WOL */
-		/* Switching PHY interface always returns MDI error
-		 * so disable retry mechanism to avoid wasting time
-		 */
-		e1000e_disable_phy_retry(hw);
-
-		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
-		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
-		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
-
-		e1000e_enable_phy_retry(hw);
-
-		/* Force SMBus mode in MAC */
-		ctrl_ext = er32(CTRL_EXT);
-		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
-		ew32(CTRL_EXT, ctrl_ext);
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.34.1

