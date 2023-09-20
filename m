Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC817A8B38
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 20:09:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D65380BFF;
	Wed, 20 Sep 2023 18:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D65380BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695233369;
	bh=hY9Ku/KfqaLFADmd7Idbj5SXJnsCAUUd14hdRMubhlg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PO3L7Chx6iVxgneVWzmVO8NXQA/AfU0eIA/KI7I3HKhDx4eWkQTMiHTOVcO+C4pC6
	 T7habtDIR5kbllaK7OZqXgFfSBQavUtOB7/owR/C9YQl8plAMWlUiIAV3e+FaZmmBi
	 xzTex2gMPBn/1m36P8YGrGjtullB2MSm2CwowMxUhrBnB9bDT+2s66LAwGqSVNBpvi
	 w8pk9R3sDS0Kv8phagFh+pmLKGEfP7UjdTxR57TIWQOYXwXYaww+y2p1+tnajQrD7B
	 Gs8Ez+Dh/KwnHzjwMaY9anLYPEAaWa0UUB+69OO6qL8mtkT8JiSxW6K9zGNVt5iykA
	 O2wv3R7EVBmew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yBg49Ogie5oz; Wed, 20 Sep 2023 18:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B685D80AB9;
	Wed, 20 Sep 2023 18:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B685D80AB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE37A1BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3B1A83B9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3B1A83B9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68SyeSGFzoUE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 18:09:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A689183B94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A689183B94
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359685186"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359685186"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 11:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870469685"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870469685"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga004.jf.intel.com with ESMTP; 20 Sep 2023 11:09:12 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 20 Sep 2023 20:07:44 +0200
Message-ID: <20230920180745.1607563-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695233356; x=1726769356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iBHldoR40VpXeC3G/McChx+fgRcdfcyH8Q5bUfcu6gs=;
 b=cqoFZJY6521G/v8U12fJFye2KZl7CVMRvdxtw3+ddOvOj7ma2RK2Udrb
 X7gccfTb1IO6XbT1t2WjvflpyKRPbaIDcm2EKKgrnym/OsPjJp9NK8dAa
 Mc5sRk+kaWlN4s5hnyJb3MHf8e7Kg6s1oIG+WRhsrKjnuUj+gsa0DKsKt
 WFBoFiR6ZFKdCtjLtSooBobRkBEvQBcJTLL/ff8iPsAtuNotZ61tc4gTT
 aIfDt4nfphatE7W5mqqPIiMutDh1fG1b9Jyup/X6nwzELFiswR2wsAaY8
 /aRLF1VHeODIX0YEWvaIvXMF8n2+tGvtJLaRk3LR50Hgf4H7tOFGv72I3
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cqoFZJY6
Subject: [Intel-wired-lan] [PATCH net-next 2/3] ice: fix undefined
 references from DPLL code when !CONFIG_PTP_1588_CLOCK
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DPLL code in ice unconditionally calls several PTP functions which are
only built when CONFIG_PTP_1588_CLOCK is set. This throws a good bunch
of link errors:

ERROR: modpost: "ice_cgu_get_pin_name"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_get_cgu_state"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
OR: modpost: "ice_is_cgu_present"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_get_cgu_rclk_pin_info"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_cgu_get_pin_type"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_cgu_get_pin_freq_supp"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!

ice_dpll_{,de}init() can be only called at runtime when the
corresponding feature flags are set, which is not the case when PTP
support is not compiled. However, the linker has no clue about this.
Compile DPLL code only when CONFIG_PTP_1588_CLOCK is enabled and guard
the mentioned init/deinit function calls, so that ice_dpll.o is only
referred when it gets compiled.

Note that ideally ice_is_feature_supported() needs to check for
compile-time flags first to be able to handle this without any
additional call guards, and we may want to do that in the future.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202309191214.TaYEct4H-lkp@intel.com
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile   | 5 ++---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++---
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 00806ddf5bf0..16f96d5210d8 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -34,8 +34,7 @@ ice-y := ice_main.o	\
 	 ice_lag.o	\
 	 ice_ethtool.o  \
 	 ice_repr.o	\
-	 ice_tc_lib.o	\
-	 ice_dpll.o
+	 ice_tc_lib.o
 ice-$(CONFIG_PCI_IOV) +=	\
 	ice_sriov.o		\
 	ice_virtchnl.o		\
@@ -44,7 +43,7 @@ ice-$(CONFIG_PCI_IOV) +=	\
 	ice_vf_mbx.o		\
 	ice_vf_vsi_vlan_ops.o	\
 	ice_vf_lib.o
-ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
+ice-$(CONFIG_PTP_1588_CLOCK) += ice_dpll.o ice_ptp.o ice_ptp_hw.o
 ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
 ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
 ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e22f41fea8db..9b48918dcdb7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4665,8 +4665,9 @@ static void ice_init_features(struct ice_pf *pf)
 	if (ice_is_feature_supported(pf, ICE_F_GNSS))
 		ice_gnss_init(pf);
 
-	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
-	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
+	if (IS_ENABLED(CONFIG_PTP_1588_CLOCK) &&
+	    (ice_is_feature_supported(pf, ICE_F_CGU) ||
+	     ice_is_feature_supported(pf, ICE_F_PHY_RCLK)))
 		ice_dpll_init(pf);
 
 	/* Note: Flow director init failure is non-fatal to load */
@@ -4695,7 +4696,8 @@ static void ice_deinit_features(struct ice_pf *pf)
 		ice_gnss_exit(pf);
 	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
 		ice_ptp_release(pf);
-	if (test_bit(ICE_FLAG_DPLL, pf->flags))
+	if (IS_ENABLED(CONFIG_PTP_1588_CLOCK) &&
+	    test_bit(ICE_FLAG_DPLL, pf->flags))
 		ice_dpll_deinit(pf);
 }
 
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
