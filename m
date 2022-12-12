Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D473064A48E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 17:08:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 677B88186A;
	Mon, 12 Dec 2022 16:08:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 677B88186A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670861287;
	bh=kKQAqih5Ji1EkD7wc/yGCQfRX0PpsHfiyMpZGBXGCDs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nfEjUpsJs4fQKbD8hUKv5eega0R0oNJz2RlvGw7KRfCJV06llCrwE0WW3nQKr5ZOP
	 n+l348jaw2RPhkr99SbM3AAN+TFbAMOqdBqpU+iwIRFiEztWBJzVyNypmhsu1e9CGC
	 KLe3KZvIVxnH/PpjlyQH+9rJvkNX7vQMahSFpUCa6iCzgw2LePdvEGOY8S7gzV0ykh
	 f81VCDs2FmUpk6ZOrUAC2N00Bg95WSYomRWDUIsjwc6dugSePcTepK7jPXBulJbrWj
	 Ckny7Ddq+Nzkv0YAzlrhXintBDZTAGkciuEKquO5Mpqnu+kTo8ngUWUX/qiT9rKdcd
	 R1TJVifftxhCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QGIKboEhtuxb; Mon, 12 Dec 2022 16:08:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1D6D8188B;
	Mon, 12 Dec 2022 16:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1D6D8188B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80A501BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 09:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AE5680C4D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 09:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AE5680C4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kB7-G20Bw2WE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 09:59:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EC1F80C3B
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EC1F80C3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 09:59:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317846022"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317846022"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 01:59:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="648109904"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="648109904"
Received: from sczapladev.igk.intel.com ([10.237.94.132])
 by orsmga002.jf.intel.com with ESMTP; 12 Dec 2022 01:59:52 -0800
From: Sebastian Czapla <sebastianx.czapla@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 10:59:38 +0100
Message-Id: <20221212095938.2477336-1-sebastianx.czapla@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 12 Dec 2022 16:08:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670839196; x=1702375196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LnjEMRXXtO2laiiZzfR3ZD8semZyx6E0dVgybxi1/rQ=;
 b=MAoadWFXuO4DYISp9ZrfataFHzK7lF9PpK3uRwZV9sntK7XsiQA6+pFJ
 BqPQuzWmXu54LzHnhBFIT/AmtkmL0vbCaXj6f9+WpE2ufqQEKiNNXPWzx
 bBzjrPbXFZXpgBJRsEcoYxtb0uST+0JHpzSRNSGaHURzMRfCnjYHOLmdz
 sSXWU6zmVFprpHFfT5zFUz5wSKRwOzCy3196KhtGDGhRU17G3dc9WwlAJ
 /0gCQnUdkaPqnmbr3I5OHvVzRUzFU41X13PYVKTN87yn5qIn6YIQzreKe
 Kl6hULEL49846/ZkpepwlT/HcIOafk/uhVGWBeaUFTOs/CL1tlrNdT3u1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MAoadWFX
Subject: [Intel-wired-lan] [PATCH net-next v1] ixgbe: Filter out spurious
 link up indication
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
Cc: Sebastian Czapla <sebastianx.czapla@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add delayed link state recheck to filter false link up indication
caused by transceiver with no fiber cable attached.

Signed-off-by: Sebastian Czapla <sebastianx.czapla@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 21 ++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 38c4609bd429..878dd8dff528 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -3292,13 +3292,14 @@ static bool ixgbe_need_crosstalk_fix(struct ixgbe_hw *hw)
 s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
 				 bool *link_up, bool link_up_wait_to_complete)
 {
+	bool crosstalk_fix_active = ixgbe_need_crosstalk_fix(hw);
 	u32 links_reg, links_orig;
 	u32 i;
 
 	/* If Crosstalk fix enabled do the sanity check of making sure
 	 * the SFP+ cage is full.
 	 */
-	if (ixgbe_need_crosstalk_fix(hw)) {
+	if (crosstalk_fix_active) {
 		u32 sfp_cage_full;
 
 		switch (hw->mac.type) {
@@ -3346,10 +3347,24 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
 			links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
 		}
 	} else {
-		if (links_reg & IXGBE_LINKS_UP)
+		if (links_reg & IXGBE_LINKS_UP) {
+			if (crosstalk_fix_active) {
+				/* Check the link state again after a delay
+				 * to filter out spurious link up
+				 * notifications.
+				 */
+				mdelay(5);
+				links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
+				if (!(links_reg & IXGBE_LINKS_UP)) {
+					*link_up = false;
+					*speed = IXGBE_LINK_SPEED_UNKNOWN;
+					return 0;
+				}
+			}
 			*link_up = true;
-		else
+		} else {
 			*link_up = false;
+		}
 	}
 
 	switch (links_reg & IXGBE_LINKS_SPEED_82599) {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
