Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E009451EC05
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 May 2022 09:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 913F0408F9;
	Sun,  8 May 2022 07:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aW1Tc0B0uKrD; Sun,  8 May 2022 07:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FF63408F8;
	Sun,  8 May 2022 07:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19BAF1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 May 2022 07:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE83360E7E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 May 2022 07:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3a0XlgwBr_HJ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 May 2022 07:09:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 525E560AD6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 May 2022 07:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651993753; x=1683529753;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S2rDDYVosDIM2LYbVqgUy7UmWJN7NB+U3bo5oZoy/Sg=;
 b=eY7DDbJa8HnRErvEWPQ5FGgVprmtlbKu1HXq+EyCt5TfwknOpDAKRZx0
 C2xa36RdjTh4/oHZ7lwm9/PLhh/13oNT/97EVPeL63V1xRH7Pu+V0kJEW
 XSqrHDlntdYGfzmS76SPevucMwI1O/QxBQ4YXRaY+slkKVDjiCLl/DcCW
 nyUt5JE+nkV15aTTKpfh7rIo0oi+GkFKVqMENvmzSTNmjG8XcIQcCikdZ
 Ia/hzvfKkxKxlmAg3Iyzl2i2w14CMsS64fyt7/CifRPsHmJUKWO3YoSxP
 VTojgSWnChFyjyTCJtJgivPwAYMrCdDtkj8pESWfnR1JuwFFHZvC+8izt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="248707557"
X-IronPort-AV: E=Sophos;i="5.91,208,1647327600"; d="scan'208";a="248707557"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 00:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,208,1647327600"; d="scan'208";a="695818363"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga004.jf.intel.com with ESMTP; 08 May 2022 00:09:11 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  8 May 2022 10:09:05 +0300
Message-Id: <20220508070905.1878172-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Enable GPT clock before
 sending message to CSME
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On corporate (CSME) ADL systems, the Ethernet Controller may stop working
("HW unit hang") after exiting from the s0ix state. The reason is that
CSME misses the message sent by the host. Enabling the dynamic GPT clock
solves this problem. This clock is cleared upon HW initialization.

Fixes: 3e55d231716e ("e1000e: Add handshake with the CSME to support S0ix")
Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
Reviewed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v2:
Correct commit message and minor fix in comment.
 drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index fa06f68c8c80..c64102b29862 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6494,6 +6494,10 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID &&
 	    hw->mac.type >= e1000_pch_adp) {
+		/* Keep the GPT clock enabled for CSME */
+		mac_data = er32(FEXTNVM);
+		mac_data |= BIT(3);
+		ew32(FEXTNVM, mac_data);
 		/* Request ME unconfigure the device from S0ix */
 		mac_data = er32(H2ME);
 		mac_data &= ~E1000_H2ME_START_DPG;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
