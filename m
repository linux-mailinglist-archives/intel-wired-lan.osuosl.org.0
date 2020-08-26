Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A58C253661
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 20:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0B8086061;
	Wed, 26 Aug 2020 18:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hDMWrzhLVNYZ; Wed, 26 Aug 2020 18:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C592860D2;
	Wed, 26 Aug 2020 18:15:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD9B1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 18:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95F6B86A6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 18:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KeL0BfaZcxLj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 18:15:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3D7386880
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 18:15:23 +0000 (UTC)
IronPort-SDR: eqPCXTXL9SC9RVZT+YMTQVR4Tid6InG6BdM1yndaK5ZnzLGw2aBnCoXoeJz7iDnxs4MPgXQeNP
 bW2uUCxbFp3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="157395925"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="157395925"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 11:15:22 -0700
IronPort-SDR: gGOfH21sDi46rFWvCvKKX1lA+dKIn7XiQfHXHsKQeGyBn4nqShBBWIlhJq4ytuQzPyTcszG1nH
 GFZ+Q1YDmHAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="444139472"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by orsmga004.jf.intel.com with ESMTP; 26 Aug 2020 11:15:22 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 26 Aug 2020 11:14:47 -0700
Message-Id: <20200826181448.1176594-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.218.ge27853923b9d.dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 1/2] ice: increase maximum wait time
 for flash write commands
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

The ice driver needs to wait for a firmware response to each command to
write a block of data to the scratch area used to update the device
firmware. The driver currently waits for up to 1 second for this to be
returned.

It turns out that firmware might take longer than 1 second to return
a completion in some cases. If this happens, the flash update will fail
to complete.

Fix this by increasing the maximum time that the driver will wait for
both writing a block of data, and for activating the new NVM bank. The
timeout for an erase command is already several minutes, as the firmware
had to erase the entire bank which was already expected to take a minute
or more in the worst case.

In the case where firmware really won't respond, we will now take longer
to fail. However, this ensures that if the firmware is simply slow to
respond, the flash update can still complete. This new maximum timeout
should not adversely increase the update time, as the implementation for
wait_event_interruptible_timeout, and should wake very soon after we get
a completion event. It is better for a flash update be slow but still
succeed than to fail because we gave up too quickly.

Fixes: d69ea414c9b4 ("ice: implement device flash update via devlink")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fw_update.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index deaefe00c9c0..29397a83699d 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -289,7 +289,13 @@ ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 		return -EIO;
 	}
 
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write, HZ, &event);
+	/* In most cases, firmware reports a write completion within a few
+	 * milliseconds. However, it has been observed that a completion might
+	 * take more than a second to complete in some cases. The timeout here
+	 * is conservative and is intended to prevent failure to update when
+	 * firmware is slow to respond.
+	 */
+	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write, 15*HZ, &event);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware write completion for module 0x%02x, err %d\n",
 			module, err);
@@ -513,7 +519,7 @@ static int ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 		return -EIO;
 	}
 
-	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write_activate, HZ,
+	err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_write_activate, 30*HZ,
 				    &event);
 	if (err) {
 		dev_err(dev, "Timed out waiting for firmware to switch active flash banks, err %d\n",

base-commit: e093edc6dd0815cc0b328cb888262f6315ba018a
-- 
2.28.0.218.ge27853923b9d.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
