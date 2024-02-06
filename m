Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D91E484AC40
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 03:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A1AC81FCF;
	Tue,  6 Feb 2024 02:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJp_03dl4S1u; Tue,  6 Feb 2024 02:36:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3586D81FD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707186998;
	bh=OofDUzmPClMT9RvFq3LLhHjQpoKrNlwtyP7/em9zn/U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oPR4quQgs5/PweosoZOLTuE8LSpYT2gKS/JdYyPxvGN5gp6K9ypi94+Xju1ZBQ+zz
	 TBuXoVz4p+x48B1kQvuIR+XqJa0R+NrgT4iv6gk93k+CtoY0T/quoxNGvo/euavOTe
	 xIV/2+bD0mQNPnAA9SzZRTJejKyx5RMKaW60yCatzjkQqow4DTsb9Z8Q3dVm8h0Jr4
	 LwnzbwR0yXNCC9XAdP/ul3/cZSkz3A010B1Mt3sd+ih742i7bh6wIX0eAnXT8eZcHx
	 LlAjV3z5U9PBQPS3/AhKxltARWsLNrCRrwVpyq9zwZW4WRstWhatnPAr9zPgn5Olti
	 39T2P38s1EzsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3586D81FD3;
	Tue,  6 Feb 2024 02:36:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBE021BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 02:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B06A14014E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 02:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B06A14014E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjCMvP5TWnt4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 02:36:34 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 06 Feb 2024 02:36:34 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39987400CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 39987400CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 02:36:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="556642"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="556642"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 18:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="1167781"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 18:29:24 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: linux-kernel@vger.kernel.org
Date: Mon,  5 Feb 2024 18:29:06 -0800
Message-Id: <20240206022906.2194214-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707186995; x=1738722995;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D7IRLtF3PH0jQetL8lTh/A1nJy/dExwyhkIVcV8BgRY=;
 b=BTkVVFzFyxm5P3JIdsJ2jYkTtQkhYYZRtMJN2jjHylGlL0G2S+IAg2YK
 NKdY2c52GlEC0xwL2AbnnB6Tg0xBqerY1PBawU+3y7OujOWRd/HyvkyJy
 0s1h9JtJc2N7MXGrK8QPTvKYMUXG0aGPCLSVW2TXgEaQn480H+KwbD+Ni
 lArGDZDTUqF/qX8a4prtCWpchi8sJz+oggdi1tpj3fF5CmnQGb5gN1Ism
 vWuEQXecgLaN7fEYl1JIu5LstZgWUTYlLIOwTK8m5tqrdKrWBA9jDo+9Q
 6r4zan5xRv+lM401+87KFf/aj7FjYHC8LTbQUQ7GhG0LqnGRmA1qtVbyK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BTkVVFzF
Subject: [Intel-wired-lan] [PATCH net v1] net: intel: fix old compiler
 regressions
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The kernel build regressions/improvements email contained a couple of
issues with old compilers (in fact all the reports were on different
architectures, but all gcc 5.5) and the FIELD_PREP() and FIELD_GET()
conversions. They're all because an integer #define that should have
been declared as unsigned, was shifted to the point that it could set
the sign bit.

The fix just involves making sure the defines use the "U" identifier on
the constants to make sure they're unsigned. Should make the checkers
happier.

Confirmed with objdump before/after that there is no change to the
binaries.

Issues were reported as follows:
./drivers/net/ethernet/intel/ice/ice_base.c:238:7: note: in expansion of macro 'FIELD_GET'
      (FIELD_GET(GLINT_CTL_ITR_GRAN_25_M, regval) == ICE_ITR_GRAN_US))
       ^
./include/linux/compiler_types.h:435:38: error: call to '__compiletime_assert_1093' declared with attribute error: FIELD_GET: mask is not constant
drivers/net/ethernet/intel/ice/ice_nvm.c:709:16: note: in expansion of macro ‘FIELD_GET’
  orom->major = FIELD_GET(ICE_OROM_VER_MASK, combo_ver);
                ^
./include/linux/compiler_types.h:435:38: error: call to ‘__compiletime_assert_796’ declared with attribute error: FIELD_GET: mask is not constant
drivers/net/ethernet/intel/ice/ice_common.c:945:18: note: in expansion of macro ‘FIELD_GET’
  u8 max_agg_bw = FIELD_GET(GL_PWR_MODE_CTL_CAR_MAX_BW_M,
                  ^
./include/linux/compiler_types.h:435:38: error: call to ‘__compiletime_assert_420’ declared with attribute error: FIELD_GET: mask is not constant
drivers/net/ethernet/intel/i40e/i40e_dcb.c:458:8: note: in expansion of macro ‘FIELD_GET’
  oui = FIELD_GET(I40E_LLDP_TLV_OUI_MASK, ouisubtype);
        ^

Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Closes: https://lore.kernel.org/lkml/d03e90ca-8485-4d1b-5ec1-c3398e0e8da@linux-m68k.org/ #i40e #ice
Fixes: 62589808d73b ("i40e: field get conversion")
Fixes: 5a259f8e0baf ("ice: field get conversion")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_dcb.h | 2 +-
 drivers/net/ethernet/intel/ice/ice_osdep.h | 2 +-
 drivers/net/ethernet/intel/ice/ice_type.h  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb.h b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
index 6b60dc9b7736..d76497566e40 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb.h
@@ -43,7 +43,7 @@
 #define I40E_LLDP_TLV_SUBTYPE_SHIFT	0
 #define I40E_LLDP_TLV_SUBTYPE_MASK	(0xFF << I40E_LLDP_TLV_SUBTYPE_SHIFT)
 #define I40E_LLDP_TLV_OUI_SHIFT		8
-#define I40E_LLDP_TLV_OUI_MASK		(0xFFFFFF << I40E_LLDP_TLV_OUI_SHIFT)
+#define I40E_LLDP_TLV_OUI_MASK		(0xFFFFFFU << I40E_LLDP_TLV_OUI_SHIFT)
 
 /* Defines for IEEE ETS TLV */
 #define I40E_IEEE_ETS_MAXTC_SHIFT	0
diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index 82bc54fec7f3..a2562f04267f 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -24,7 +24,7 @@
 #define rd64(a, reg)		readq((a)->hw_addr + (reg))
 
 #define ice_flush(a)		rd32((a), GLGEN_STAT)
-#define ICE_M(m, s)		((m) << (s))
+#define ICE_M(m, s)		((m ## U) << (s))
 
 struct ice_dma_mem {
 	void *va;
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 41ab6d7bbd9e..a508e917ce5f 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1072,7 +1072,7 @@ struct ice_aq_get_set_rss_lut_params {
 #define ICE_OROM_VER_BUILD_SHIFT	8
 #define ICE_OROM_VER_BUILD_MASK		(0xffff << ICE_OROM_VER_BUILD_SHIFT)
 #define ICE_OROM_VER_SHIFT		24
-#define ICE_OROM_VER_MASK		(0xff << ICE_OROM_VER_SHIFT)
+#define ICE_OROM_VER_MASK		(0xffU << ICE_OROM_VER_SHIFT)
 #define ICE_SR_PFA_PTR			0x40
 #define ICE_SR_1ST_NVM_BANK_PTR		0x42
 #define ICE_SR_NVM_BANK_SIZE		0x43
-- 
2.39.3

