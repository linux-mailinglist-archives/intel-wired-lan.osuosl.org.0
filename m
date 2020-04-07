Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7741A1037
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 17:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEB7E87857;
	Tue,  7 Apr 2020 15:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3U51tdlYPIrn; Tue,  7 Apr 2020 15:30:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D779877D0;
	Tue,  7 Apr 2020 15:30:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 071FB1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 15:30:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F36BC20471
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 15:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSlp1RSChEjH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 15:30:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id E3ACF20467
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 15:30:31 +0000 (UTC)
IronPort-SDR: Xz3RRqubMK4HB1Nl9XOPlrjJ9F28PQdAwpg+MSftcxZwE2KejubMeek8gj/Io4yt08rYbZ4JKr
 7uRwfxYgGyHw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 08:30:31 -0700
IronPort-SDR: B8665/nW0labqw1IRyv79GXh8ZPeQyaHsTit6aaIM7zcew043/4RioRl4jex8i7/a4bDh8lvY3
 tVCsphmkbELQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="251265177"
Received: from htfujina-fc.jf.intel.com ([10.166.22.52])
 by orsmga003.jf.intel.com with ESMTP; 07 Apr 2020 08:30:31 -0700
From: Todd Fujinaka <todd.fujinaka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 08:13:02 -0700
Message-Id: <20200407151302.25191-1-todd.fujinaka@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Add a check to see if MFS is set
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

A customer was chain-booting to provision his systems and one of the
steps was setting MFS. MFS isn't cleared by normal warm reboots
(clearing requires a GLOBR) and there was no indication of why Jumbo
Frame receives were failing.

Add a warning if MFS is set to anything lower than the default.

Signed-off-by: Todd Fujinaka <todd.fujinaka@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2a037ec244b9..afcc7f82f103 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15264,6 +15264,15 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			i40e_stat_str(&pf->hw, err),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
+	/* make sure the MFS hasn't been set lower than the default */
+#define MAX_FRAME_SIZE_DEFAULT 0x2600
+	for (i = 0; i < 4; i++) {
+		val = ((rd32(&pf->hw, I40E_PRTGL_SAH) & I40E_PRTGL_SAH_MFS_MASK)
+			>> I40E_PRTGL_SAH_MFS_SHIFT);
+		if (val < MAX_FRAME_SIZE_DEFAULT)
+			dev_warn(&pdev->dev, "MFS for port %x has been set below the default: %x\n", i, val);
+	}
+
 	/* Add a filter to drop all Flow control frames from any VSI from being
 	 * transmitted. By doing so we stop a malicious VF from sending out
 	 * PAUSE or PFC frames and potentially controlling traffic for other
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
