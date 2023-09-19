Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F527A6F75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 01:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44B7B417C4;
	Tue, 19 Sep 2023 23:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44B7B417C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695166514;
	bh=eJEw7UjgM6Ml7Pfg8Z2lmvJd9kUR0MhYbSu+YXzmI4E=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TnzGu27dScSd+wx2c3NMcgLsXEx9ku3ftqjzEOwOuXEOWsmstTorXKL9FlGDcydVi
	 /kqbUr0WmW6o/47iNd+VQ+AIO6PYWz7cpaBACci6f1C5KpKfTLiYMVXXyfrOTxTanM
	 CnC3XzN9GAgDJQ3HTrT88ueS6PPI7kIpZZyEZUOVXeQYRrFO7L+ZaeJsdurSR5ZRby
	 qPyhnLFQv3oMZZ2TNmRPOeR3bG2i8HRvYo/SHo9vVJUQr6BTsBuATBIEBgDr2vXhjr
	 sjRLuXwqfIRlWyMx5dOMSp2MvtloGh0Py6KJlzp/5CMAW+OURn3wVe9ML1J5+NLXAl
	 LNBMEwOucURlQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t1OeW2VLB_P4; Tue, 19 Sep 2023 23:35:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A76540B0E;
	Tue, 19 Sep 2023 23:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A76540B0E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09CF31BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D237541E8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D237541E8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mimPOS55HYuM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 23:35:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32E8D417D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32E8D417D0
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="444172124"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="444172124"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749668098"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="749668098"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:49 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Sep 2023 16:34:31 -0700
Message-ID: <20230919233435.518620-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695166506; x=1726702506;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wUrouuDp4AZ63EoalSGF6FkziG+rksSORasI0ioqcDQ=;
 b=Taf56MHvc3kyqdHcXamynWxwRg8V1Isr03nF0tuzok51z/r+ycmxUenF
 HtGKeMLpNJLYBdpFZBxAQMYeV4BJNHn7r44ymfS9yFtaSyPzjxBxkyoUI
 +JsaQsm7E+K68qxme4BNfHQ5SNuGy4dsiKKF6NCZDvw1arGI199kJN2HX
 ib+6kQdAG4hYIU9lTPL0TmpPHw+HB4t5ml2xHTe4M/jshpztLpdCyiiDh
 /ZZDVnImGJsUwYZjML32EO0mqYnVeL2nuwwRALaePZ9/nnai0OgCoYNiZ
 2epKTNumWs+pCaEIRYYlBY+8e4zfsRZxwU9iDSVWwkJodw6AhvLh5MLYL
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Taf56MHv
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: fix linking with
 CONFIG_PTP_1588_CLOCK=n
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

The recent changes to support DPLL in the ice driver accidentally broke
linking the module if CONFIG_PTP_1588_CLOCK is disabled:

00:02:33  ld: vmlinux.o: in function `ice_init_feature_support':
00:02:33  (.text+0x8702b8): undefined reference to `ice_is_phy_rclk_present'
00:02:33  ld: (.text+0x8702cd): undefined reference to `ice_is_cgu_present'
00:02:33  ld: (.text+0x8702d9): undefined reference to `ice_is_clock_mux_present_e810t'
00:02:33  ld: vmlinux.o: in function `ice_dpll_init_info_direct_pins':
00:02:33  ice_dpll.c:(.text+0x894167): undefined reference to `ice_cgu_get_pin_freq_supp'
00:02:33  ld: ice_dpll.c:(.text+0x894197): undefined reference to `ice_cgu_get_pin_name'
00:02:33  ld: ice_dpll.c:(.text+0x8941a8): undefined reference to `ice_cgu_get_pin_type'
00:02:33  ld: vmlinux.o: in function `ice_dpll_update_state':
00:02:33  ice_dpll.c:(.text+0x894494): undefined reference to `ice_get_cgu_state'
00:02:33  ld: vmlinux.o: in function `ice_dpll_init':
00:02:33  (.text+0x8953d5): undefined reference to `ice_get_cgu_rclk_pin_info'
00:02:34  make[2]: *** [scripts/Makefile.vmlinux:36: vmlinux] Error 1
00:02:34  make[1]: *** [/home/jenkins/agent/workspace/ndlinuxc/reference-repos/update-kernel-repos/kernel/Makefile:1165: vmlinux] Error 2
00:02:34  make: *** [Makefile:234: __sub-make] Error 2

This occurs because of functions added to ice_ptp_hw.c which are only
compiled when CONFIG_PTP_1588_CLOCK is enabled.

In addition, that series included similar code to logic I published at [1]
which got feedback to make some suggested improvements:

This series fixes the compilation issues and aligns ice_find_netlist_node
with the version that I posted at [1] and [2]:

[1]: https://lore.kernel.org/intel-wired-lan/20230817000058.2433236-5-jacob.e.keller@intel.com/
[2]: https://lore.kernel.org/netdev/20230918212814.435688-1-anthony.l.nguyen@intel.com/

Jacob Keller (4):
  ice: don't compile ice_dpll.c if CONFIG_PTP_1588_CLOCK is disabled
  ice: move netlist check functions to ice_common.c
  ice: make ice_get_pf_c827_idx static
  ice: cleanup ice_find_netlist_node

 drivers/net/ethernet/intel/ice/Makefile     |  3 +-
 drivers/net/ethernet/intel/ice/ice_common.c | 96 +++++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_common.h |  6 +-
 drivers/net/ethernet/intel/ice/ice_dpll.h   |  6 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 68 +--------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  4 -
 7 files changed, 91 insertions(+), 98 deletions(-)


base-commit: 2fcb79a1962e88ff10552384fb8164fde815ccd3
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
