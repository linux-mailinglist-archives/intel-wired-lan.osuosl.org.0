Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C78EE7A6F76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 01:35:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58295417CA;
	Tue, 19 Sep 2023 23:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58295417CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695166518;
	bh=dFphuWQoRNp0tYt7SOYJoBnJvTjjlrY0aPk1DmJeeVM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7qd1svczNnxLTaCeQdjMtvssSVowHyM+Rl0wy9qzh6QvAFiKVuZbJVxnvGvY0PtWV
	 Ma+iQ5Xd7PO94DC5Ouzv58GBB/LdZGOMCLplGmbsNz/yilgxHJryq8IS7DiX07hsrU
	 1L996BJOQiCYImHTN2/y75H43ri5CMmTC52UuwV2UnS9E8bSy167xCxgu/DvynbPiR
	 gJwp7OAAeljgtnbJVxUxBGUn5Q+hcSjGnP7lNeQfj591XlGIXyrO7QXzleVizgDVJp
	 aXOr/UgWxVJRPOWH1os8bF2bYm5wYlGerblnZHJrIHBmbPcn6Q3ILfjLmkLwWZgmfd
	 h8JHOgWcDPAxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PlpbKYY6fIez; Tue, 19 Sep 2023 23:35:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FFF9417B5;
	Tue, 19 Sep 2023 23:35:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FFF9417B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AC061BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43C43417D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43C43417D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9RJ26R8er0T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A85C41BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A85C41BEC
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="444172125"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="444172125"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749668100"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="749668100"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Sep 2023 16:34:32 -0700
Message-ID: <20230919233435.518620-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230919233435.518620-1-jacob.e.keller@intel.com>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695166507; x=1726702507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xAlOe+g4wO6nofCRjyGgERyqDGu9wObFLaLZI1c5P5M=;
 b=OaUrKgThtJWD5UNWaPfZZVnUptTV+9N1xe+1A0xD73ik/AEnIW1euA2H
 2goBFTbh4ap5Ljst3ltFA08YtbPLLxvJFZA9DN6j7xkJuWNl1/wTx0lNo
 k9nKohGWWFRUCkCCou2wP0lgGY78w9bOyFOeE29QNluYtEhj7im1RWySL
 F7FQflqP82DsqxPOLPAGIffKySOhZMBwDPktY49yaBtHCapyxK3oHAOUj
 ipmoQMmgEZuvCYeuJpL5UV8o9WBLSXxJvxBH1rwkRAXiKwzhw8AxOQ4cL
 xpDMSrRdDRJwy/ryUDvpf4nn6PJUns/nn7dHVkhSL79TyGEE877Kr7C0W
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OaUrKgTh
Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: don't compile
 ice_dpll.c if CONFIG_PTP_1588_CLOCK is disabled
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_dpll.c file was recently merged with support for the DPLL
interface. This feature as currently written in the ice driver depends on
the PTP infrastructure and causes compilation failures if
CONFIG_PTP_1588_CLOCK is disabled:

ld: vmlinux.o: in function `ice_dpll_init_info_direct_pins':
ice_dpll.c:(.text+0x894167): undefined reference to `ice_cgu_get_pin_freq_supp'
ld: ice_dpll.c:(.text+0x894197): undefined reference to `ice_cgu_get_pin_name'
ld: ice_dpll.c:(.text+0x8941a8): undefined reference to `ice_cgu_get_pin_type'
ld: vmlinux.o: in function `ice_dpll_update_state':
ice_dpll.c:(.text+0x894494): undefined reference to `ice_get_cgu_state'
ld: vmlinux.o: in function `ice_dpll_init':
(.text+0x8953d5): undefined reference to `ice_get_cgu_rclk_pin_info'

This occurs because the ice_dpll.c file is compiled unconditionally, but it
depends on functions in ice_ptp_hw.c which is only compiled with
CONFIG_PTP_1588_CLOCK. It might be possible to break this dependency and
expose those functions without CONFIG_PTP_1588_CLOCK, but that is not clear
to me.

For now, simply fix the Makefile to compile ice_dpll.c only when we have
PTP support enabled. Also update the ice_dpll.h header to provide no-op
fallbacks for enabling and disabling the DPLL feature in this case.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile   | 3 +--
 drivers/net/ethernet/intel/ice/ice_dpll.h | 6 +++++-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 2bdd020b7939..8757bec23fb3 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -35,7 +35,6 @@ ice-y := ice_main.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
 	 ice_tc_lib.o	\
-	 ice_dpll.o	\
 	 ice_fwlog.o	\
 	 ice_debugfs.o
 ice-$(CONFIG_PCI_IOV) +=	\
@@ -46,7 +45,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o ice_dpll.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h b/drivers/net/ethernet/intel/ice/ice_dpll.h
index 9c524c4bdfd7..2dfe764b81e1 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.h
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
@@ -97,8 +97,12 @@ struct ice_dplls {
 	s32 output_phase_adj_max;
 };
 
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 void ice_dpll_init(struct ice_pf *pf);
-
 void ice_dpll_deinit(struct ice_pf *pf);
+#else
+static inline void ice_dpll_init(struct ice_pf *pf) { }
+static inline void ice_dpll_deinit(struct ice_pf *pf) { }
+#endif
 
 #endif
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
