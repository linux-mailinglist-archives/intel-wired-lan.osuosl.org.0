Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9417F3817
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1E6B81F21;
	Tue, 21 Nov 2023 21:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1E6B81F21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601622;
	bh=IpgdiCMSZbdzcceAuz/AqFz8Hsb1yyqO8JO1/iK8874=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CH4qv/wDxWbQsQgCCH7a014rbJRaAe+ibRO955+6DkfjVFVzXTHCInVUpv/fUxUxv
	 0uUWdGG2ktzg5FDlMtCny/LTLm841TED54Q026ocTRHW4hAG1wGg2ywVrH59Y/EHth
	 0Qe0iDvaNHSS4wUJNfIslfHJ0tFz/Yjwwru+oreD3rLe2sF4JWjvmMRQDS2exv4+SK
	 sjKK3UzzeeOTfbuTnDSWSQHlQEAUGWWzf8n6ZHVvasXUVS9Frm6Rkt0FcZABakA32B
	 FsEEEYUj93kMgSNarvECwATRUi7e8jsGsEtp/UHdJZB3xwSS5rEMtYWWcs8DJB1bGi
	 OjF13RO9PUb6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6LZo6CrlTWzU; Tue, 21 Nov 2023 21:20:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A95C813EB;
	Tue, 21 Nov 2023 21:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A95C813EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BEEB41BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBEC34087F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBEC34087F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrZsUN-pFVQX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E57840AB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E57840AB9
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022098"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022098"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630560"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630560"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:18 -0800
Message-Id: <20231121211921.19834-11-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601582; x=1732137582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hW+Lj7qrokB6RnhdoZXQcs1103or+lC+F4oNkMZTYdE=;
 b=AgMTIVrvJr8p9q7tXAmaTDVDJzhAMmJ8sipNpIGw7/C1FAlCv8CZVSYF
 sWf0ETdSuDEStga5ym47Q+ZzmiRg3+ho2u3d82OkL1eOdMUrkhelyrv8H
 7ph5ZKYpmL34gTOFkIvTi8xHN9W+hWNW+R3spC41BhmCp0lw9XpD0BiQm
 BKnik5lsvLS2u10P00xRvRORnNGioWCXd3avmCniQ/g6rHi9pz8t73dRc
 pp+36h8YKDGaC9mzgqb2MK6wgV8RCk3DlsoOuPmRWwqw898XBCQqycxgT
 wKH8QlBaz9P7vedQVImFEK3hynY1Dq5dHuz9zUYzSq6O/xICKnLbtNRk0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AgMTIVrv
Subject: [Intel-wired-lan] [PATCH iwl-next v1 10/13] igc: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor the igc driver to use FIELD_GET() for mask and shift reads,
which reduces lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired in a later patch.

@get@
constant shift,mask;
expression a;
@@
-((a & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_base.c | 6 ++----
 drivers/net/ethernet/intel/igc/igc_i225.c | 5 ++---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 ++----
 drivers/net/ethernet/intel/igc/igc_phy.c  | 4 ++--
 4 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index a1d815af507d..9fae8bdec2a7 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -68,8 +68,7 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
 	u32 eecd = rd32(IGC_EECD);
 	u16 size;
 
-	size = (u16)((eecd & IGC_EECD_SIZE_EX_MASK) >>
-		     IGC_EECD_SIZE_EX_SHIFT);
+	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
 
 	/* Added to a constant, "size" becomes the left-shift value
 	 * for setting word_size.
@@ -162,8 +161,7 @@ static s32 igc_init_phy_params_base(struct igc_hw *hw)
 	phy->reset_delay_us	= 100;
 
 	/* set lan id */
-	hw->bus.func = (rd32(IGC_STATUS) & IGC_STATUS_FUNC_MASK) >>
-			IGC_STATUS_FUNC_SHIFT;
+	hw->bus.func = FIELD_GET(IGC_STATUS_FUNC_MASK, rd32(IGC_STATUS));
 
 	/* Make sure the PHY is in a good state. Several people have reported
 	 * firmware leaving the PHY's page select register set to something
diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index d2562c8e8015..0dd61719f1ed 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -579,9 +579,8 @@ s32 igc_set_ltr_i225(struct igc_hw *hw, bool link)
 
 			/* Calculate tw_system (nsec). */
 			if (speed == SPEED_100) {
-				tw_system = ((rd32(IGC_EEE_SU) &
-					     IGC_TW_SYSTEM_100_MASK) >>
-					     IGC_TW_SYSTEM_100_SHIFT) * 500;
+				tw_system = FIELD_GET(IGC_TW_SYSTEM_100_MASK,
+						      rd32(IGC_EEE_SU)) * 500;
 			} else {
 				tw_system = (rd32(IGC_EEE_SU) &
 					     IGC_TW_SYSTEM_1000_MASK) * 500;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d949289a3ddb..ba8d3fe186ae 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3712,8 +3712,7 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 	}
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK) >>
-			   VLAN_PRIO_SHIFT;
+		int prio = FIELD_GET(VLAN_PRIO_MASK, rule->filter.vlan_tci);
 
 		err = igc_add_vlan_prio_filter(adapter, prio, rule->action);
 		if (err)
@@ -3735,8 +3734,7 @@ static void igc_disable_nfc_rule(struct igc_adapter *adapter,
 		igc_del_etype_filter(adapter, rule->filter.etype);
 
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI) {
-		int prio = (rule->filter.vlan_tci & VLAN_PRIO_MASK) >>
-			   VLAN_PRIO_SHIFT;
+		int prio = FIELD_GET(VLAN_PRIO_MASK, rule->filter.vlan_tci);
 
 		igc_del_vlan_prio_filter(adapter, prio);
 	}
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index d0d9e7170154..7cd8716d2ffa 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -727,7 +727,7 @@ static s32 igc_write_xmdio_reg(struct igc_hw *hw, u16 addr,
  */
 s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data)
 {
-	u8 dev_addr = (offset & GPY_MMD_MASK) >> GPY_MMD_SHIFT;
+	u8 dev_addr = FIELD_GET(GPY_MMD_MASK, offset);
 	s32 ret_val;
 
 	offset = offset & GPY_REG_MASK;
@@ -758,7 +758,7 @@ s32 igc_write_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 data)
  */
 s32 igc_read_phy_reg_gpy(struct igc_hw *hw, u32 offset, u16 *data)
 {
-	u8 dev_addr = (offset & GPY_MMD_MASK) >> GPY_MMD_SHIFT;
+	u8 dev_addr = FIELD_GET(GPY_MMD_MASK, offset);
 	s32 ret_val;
 
 	offset = offset & GPY_REG_MASK;
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
