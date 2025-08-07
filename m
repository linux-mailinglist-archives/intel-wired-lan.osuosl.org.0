Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA25B1D37D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 09:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 07FE884B48;
	Thu,  7 Aug 2025 07:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eUJYjHJclfqw; Thu,  7 Aug 2025 07:40:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40E178482A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754552434;
	bh=Mj/aaJ/jnCv/RuD80Di6RpOikxaXIt+QG3UIXHPYs1g=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NsUFwF3DzZ4OrqsOyBb6bdkxvip9U2ie5Gs+FvQivf6CAE9YAzJRG0hCuR8XhZE0a
	 X93GBtcZICCEI0G/b7fngkRZshyNQvrgZycR7LI6lCNjekEI419puSG4V/LCd6jxu/
	 o685pdgCkJ7Bs1sIue3DrYabQ5Ti5+cdbz5tY2INxQPQXyQXWYGHvTJWXRprOcndFJ
	 uzuit0OVsbJGvNjhPXYVQ8MlGhypPxvjYfFsSMR14u+8M8/IsaFAPB+VKSoPgsox4B
	 zkYcjQ328Ig/zf21ioaZ3+1GOasn/PDdX37mipwFxUm6fGeMTXleKcg/mLJPkAeZgI
	 4pY1N6VXf+SKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40E178482A;
	Thu,  7 Aug 2025 07:40:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EE77F31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 07:40:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DFABE419F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 07:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QyTvqQnTaRuo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 07:40:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A35794005A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A35794005A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A35794005A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 07:40:30 +0000 (UTC)
X-CSE-ConnectionGUID: kW7bE0kaRS2ETBX0irLy9A==
X-CSE-MsgGUID: BpL5skc2Qgm4Q9t5zlksOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56958570"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56958570"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 00:40:29 -0700
X-CSE-ConnectionGUID: yV9Vw783R1mDpR9K9HvZow==
X-CSE-MsgGUID: kF60XVm3S2qZOVMPJ8ED9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165368198"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 07 Aug 2025 00:40:27 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ujvEE-0002Wi-0Z;
 Thu, 07 Aug 2025 07:40:05 +0000
Date: Thu, 7 Aug 2025 15:37:39 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202508071549.3arbZlrC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754552430; x=1786088430;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=pJDhOqnr70PhsrwVbctp1nKRsrf3GQzPkTxgWBeeeAM=;
 b=LzHV6FXqs3eS5opbO4eBlo04NacPBIhxzGQhuArVSj9U/0Mlh83URD5X
 aHwCzVSlioXC1PT/05LiQTbpR/uENLY3gmI0rEJGRVMJ8dU8MswONC68c
 EU+8kir/0FhEa2mpq0W5RykoO3yPsYwnagNnOOlYKplYJyUIf+Pw1soHY
 apqhwCU7yHKiWsBXNPUGxViCP6XoOU40jsphP9k6OwbCJ3YYZ87ZgnCxw
 G9ybY1J36xykYInwSISBeAnNMAXMDSQc/pHyTKfL+MZEXJPUxb+5+reMi
 /k6W3yOYl75AZOCBJf8tuZse+XJb0MBmTztj/ESuNVIt1tLqXGs1GXKwm
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LzHV6FXq
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 7/22] ERROR: modpost:
 __ex_table+0x15cc references non-executable section '.bss.mtddev'
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   0af56426e9a59084bca60a0d4dc1dc995e2808ee
commit: c32f73251e5900d984f2ceb169d1e854445d3956 [7/22] devlink: allow driver to freely name interfaces
config: riscv-randconfig-002-20250807 (https://download.01.org/0day-ci/archive/20250807/202508071549.3arbZlrC-lkp@intel.com/config)
compiler: riscv32-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250807/202508071549.3arbZlrC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202508071549.3arbZlrC-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

WARNING: modpost: vmlinux: section mismatch in reference: nl802154_abort_scan+0x194 (section: .text.nl802154_abort_scan) -> s6e8aa0_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: perf_trace_802154_rdev_set_ackreq_default+0xd6 (section: .text.perf_trace_802154_rdev_set_ackreq_default) -> .LVL245 (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: perf_trace_802154_rdev_set_ackreq_default+0xdc (section: .text.perf_trace_802154_rdev_set_ackreq_default) -> st7789v_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: perf_trace_802154_wdev_template+0x24 (section: .text.perf_trace_802154_wdev_template) -> .LVL248 (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x58 (section: .text.dns_resolver_preparse) -> stk_panel_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x90 (section: .text.dns_resolver_preparse) -> tdo_tl070wsh30_panel_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0xb2 (section: .text.dns_resolver_preparse) -> tdo_tl070wsh30_panel_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x160 (section: .text.dns_resolver_preparse) -> stk_panel_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x168 (section: .text.dns_resolver_preparse) -> tdo_tl070wsh30_panel_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x184 (section: .text.dns_resolver_preparse) -> tdo_tl070wsh30_panel_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x1bc (section: .text.dns_resolver_preparse) -> stk_panel_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x1c8 (section: .text.dns_resolver_preparse) -> stk_panel_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dns_resolver_preparse+0x1e6 (section: .text.dns_resolver_preparse) -> stk_panel_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_v_ogm_send+0x34a (section: .text.batadv_v_ogm_send) -> tda998x_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find+0xfc (section: .text.batadv_tp_list_find) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find+0x15e (section: .text.batadv_tp_list_find) -> nwl_dsi_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0x4e (section: .text.batadv_tp_list_find_session) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0x68 (section: .text.batadv_tp_list_find_session) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0x72 (section: .text.batadv_tp_list_find_session) -> anx7625_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0xf2 (section: .text.batadv_tp_list_find_session) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0xfe (section: .text.batadv_tp_list_find_session) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0x122 (section: .text.batadv_tp_list_find_session) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_list_find_session+0x164 (section: .text.batadv_tp_list_find_session) -> nwl_dsi_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_send+0x432 (section: .text.batadv_tp_send) -> nwl_dsi_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_send+0x458 (section: .text.batadv_tp_send) -> nwl_dsi_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_send+0x462 (section: .text.batadv_tp_send) -> anx7625_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_send+0x46e (section: .text.batadv_tp_send) -> anx7625_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_send+0x494 (section: .text.batadv_tp_send) -> anx7625_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tp_send+0x4be (section: .text.batadv_tp_send) -> anx7625_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_prepare_tvlv_global_data+0x128 (section: .text.batadv_tt_prepare_tvlv_global_data) -> anx78xx_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_prepare_tvlv_global_data+0x16a (section: .text.batadv_tt_prepare_tvlv_global_data) -> anx7625_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_entry_release+0x14 (section: .text.batadv_tt_local_entry_release) -> anx78xx_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_entry_release+0x58 (section: .text.batadv_tt_local_entry_release) -> anx78xx_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_entry_release+0x64 (section: .text.batadv_tt_local_entry_release) -> anx78xx_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_table_free.isra.23+0x56 (section: .text.batadv_tt_local_table_free.isra.23) -> anx78xx_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_table_transmit_size+0x1a (section: .text.batadv_tt_local_table_transmit_size) -> anx78xx_driver_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_table_transmit_size+0xce (section: .text.batadv_tt_local_table_transmit_size) -> anx78xx_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_table_transmit_size+0xd8 (section: .text.batadv_tt_local_table_transmit_size) -> anx78xx_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_table_transmit_size+0xfe (section: .text.batadv_tt_local_table_transmit_size) -> anx78xx_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: batadv_tt_local_table_transmit_size+0x128 (section: .text.batadv_tt_local_table_transmit_size) -> anx78xx_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: hsr_get_node_data+0x178 (section: .text.hsr_get_node_data) -> mi0283qt_spi_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: hsr_get_node_data+0x188 (section: .text.hsr_get_node_data) -> mi0283qt_spi_driver_exit (section: .exit.text)
WARNING: modpost: vmlinux: section mismatch in reference: get_option+0x54 (section: .text.get_option) -> __platform_create_bundle (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: get_option+0x5a (section: .text.get_option) -> __platform_create_bundle (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: get_option+0x80 (section: .text.get_option) -> __platform_driver_probe (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: get_option+0x8a (section: .text.get_option) -> __platform_create_bundle (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mte_dead_leaves+0x104 (section: .text.mte_dead_leaves) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mtree_range_walk+0x22a (section: .text.mtree_range_walk) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_get_slot+0x86 (section: .text.mas_get_slot) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x4a (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x52 (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x58 (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x5e (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x6c (section: .text.mas_empty_area_rev) -> software_node_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x9a (section: .text.mas_empty_area_rev) -> software_node_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x3e6 (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x434 (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x43e (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area_rev+0x476 (section: .text.mas_empty_area_rev) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_descend+0xb2 (section: .text.mas_descend) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_dump_node+0x5c (section: .text.mt_dump_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_dump_node+0x22c (section: .text.mt_dump_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_dump_node+0x2ec (section: .text.mt_dump_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_dump_node+0x390 (section: .text.mt_dump_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area+0x4d8 (section: .text.mas_empty_area) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_empty_area+0x598 (section: .text.mas_empty_area) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_next_node+0x1b8 (section: .text.mas_next_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_next_node+0x382 (section: .text.mas_next_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_next_slot+0x2c0 (section: .text.mas_next_slot) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_prev_node+0x23a (section: .text.mas_prev_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_prev_node+0x366 (section: .text.mas_prev_node) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mas_prev_slot+0x1c6 (section: .text.mas_prev_slot) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_destroy_walk+0x232 (section: .text.mt_destroy_walk) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_validate+0x280 (section: .text.mt_validate) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_validate+0x60a (section: .text.mt_validate) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_validate+0x664 (section: .text.mt_validate) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_validate+0xa72 (section: .text.mt_validate) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_validate+0xbc8 (section: .text.mt_validate) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mt_validate+0xc22 (section: .text.mt_validate) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mtree_load+0x26e (section: .text.mtree_load) -> cacheinfo_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: check_pointer+0x4c (section: .text.check_pointer) -> wakeup_sources_debugfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: flags_string+0x1d4 (section: .text.flags_string) -> wakeup_sources_debugfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: flags_string+0x1fa (section: .text.flags_string) -> wakeup_sources_debugfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mac_address_string+0x2c (section: .text.mac_address_string) -> wakeup_sources_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mac_address_string+0x36 (section: .text.mac_address_string) -> wakeup_sources_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mac_address_string+0x3e (section: .text.mac_address_string) -> wakeup_sources_sysfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mac_address_string+0x56 (section: .text.mac_address_string) -> wakeup_sources_debugfs_init (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: 0x15a8 (section: __ex_table) -> mtd_bdi (section: .bss.mtd_bdi)
ERROR: modpost: __ex_table+0x15a8 references non-executable section '.bss.mtd_bdi'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15ac (section: __ex_table) -> cmdline_parsed (section: .bss.cmdline_parsed)
ERROR: modpost: __ex_table+0x15ac references non-executable section '.bss.cmdline_parsed'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15b4 (section: __ex_table) -> partitions (section: .bss.partitions)
ERROR: modpost: __ex_table+0x15b4 references non-executable section '.bss.partitions'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15b8 (section: __ex_table) -> __key (section: .bss.__key.50456)
ERROR: modpost: __ex_table+0x15b8 references non-executable section '.bss.__key.50456'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15c0 (section: __ex_table) -> __key (section: .bss.__key.39906)
ERROR: modpost: __ex_table+0x15c0 references non-executable section '.bss.__key.39906'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15c4 (section: __ex_table) -> __key (section: .bss.__key.47361)
ERROR: modpost: __ex_table+0x15c4 references non-executable section '.bss.__key.47361'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15cc (section: __ex_table) -> mtddev (section: .bss.mtddev)
>> ERROR: modpost: __ex_table+0x15cc references non-executable section '.bss.mtddev'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15d0 (section: __ex_table) -> __key (section: .bss.__key.47361)
ERROR: modpost: __ex_table+0x15d0 references non-executable section '.bss.__key.47361'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15d8 (section: __ex_table) -> pick_cnt (section: .bss.pick_cnt.54668)
>> ERROR: modpost: __ex_table+0x15d8 references non-executable section '.bss.pick_cnt.54668'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15dc (section: __ex_table) -> __key (section: .bss.__key.47361)
ERROR: modpost: __ex_table+0x15dc references non-executable section '.bss.__key.47361'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15e4 (section: __ex_table) -> .LASF4222 (section: .debug_str)
ERROR: modpost: __ex_table+0x15e4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15e8 (section: __ex_table) -> .LASF4224 (section: .debug_str)
ERROR: modpost: __ex_table+0x15e8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15f0 (section: __ex_table) -> .LASF4226 (section: .debug_str)
ERROR: modpost: __ex_table+0x15f0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15f4 (section: __ex_table) -> .LASF4228 (section: .debug_str)
ERROR: modpost: __ex_table+0x15f4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x15fc (section: __ex_table) -> .LASF4230 (section: .debug_str)
ERROR: modpost: __ex_table+0x15fc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1600 (section: __ex_table) -> .LASF4228 (section: .debug_str)
ERROR: modpost: __ex_table+0x1600 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1608 (section: __ex_table) -> .LASF4233 (section: .debug_str)
ERROR: modpost: __ex_table+0x1608 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x160c (section: __ex_table) -> .LASF4228 (section: .debug_str)
ERROR: modpost: __ex_table+0x160c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1614 (section: __ex_table) -> .LASF4236 (section: .debug_str)
ERROR: modpost: __ex_table+0x1614 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1618 (section: __ex_table) -> .LASF4238 (section: .debug_str)
ERROR: modpost: __ex_table+0x1618 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1620 (section: __ex_table) -> .LASF4240 (section: .debug_str)
ERROR: modpost: __ex_table+0x1620 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1624 (section: __ex_table) -> .LASF4242 (section: .debug_str)
ERROR: modpost: __ex_table+0x1624 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x162c (section: __ex_table) -> .LASF4244 (section: .debug_str)
ERROR: modpost: __ex_table+0x162c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1630 (section: __ex_table) -> .LASF4246 (section: .debug_str)
ERROR: modpost: __ex_table+0x1630 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1638 (section: __ex_table) -> .LASF4248 (section: .debug_str)
ERROR: modpost: __ex_table+0x1638 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x163c (section: __ex_table) -> .LASF4250 (section: .debug_str)
ERROR: modpost: __ex_table+0x163c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1644 (section: __ex_table) -> .LASF4252 (section: .debug_str)
ERROR: modpost: __ex_table+0x1644 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1648 (section: __ex_table) -> .LASF4254 (section: .debug_str)
ERROR: modpost: __ex_table+0x1648 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1650 (section: __ex_table) -> .LASF4256 (section: .debug_str)
ERROR: modpost: __ex_table+0x1650 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1654 (section: __ex_table) -> .LASF4258 (section: .debug_str)
ERROR: modpost: __ex_table+0x1654 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x165c (section: __ex_table) -> .LASF4260 (section: .debug_str)
ERROR: modpost: __ex_table+0x165c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1660 (section: __ex_table) -> .LASF4262 (section: .debug_str)
ERROR: modpost: __ex_table+0x1660 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1668 (section: __ex_table) -> .LASF2779 (section: .debug_str)
ERROR: modpost: __ex_table+0x1668 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x166c (section: __ex_table) -> .LASF2781 (section: .debug_str)
ERROR: modpost: __ex_table+0x166c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1674 (section: __ex_table) -> .LASF2783 (section: .debug_str)
ERROR: modpost: __ex_table+0x1674 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1678 (section: __ex_table) -> .LASF2785 (section: .debug_str)
ERROR: modpost: __ex_table+0x1678 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1680 (section: __ex_table) -> .LASF2787 (section: .debug_str)
ERROR: modpost: __ex_table+0x1680 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1684 (section: __ex_table) -> .LASF2789 (section: .debug_str)
ERROR: modpost: __ex_table+0x1684 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x168c (section: __ex_table) -> .LASF2791 (section: .debug_str)
ERROR: modpost: __ex_table+0x168c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1690 (section: __ex_table) -> .LASF2785 (section: .debug_str)
ERROR: modpost: __ex_table+0x1690 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1698 (section: __ex_table) -> .LASF2794 (section: .debug_str)
ERROR: modpost: __ex_table+0x1698 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x169c (section: __ex_table) -> .LASF2785 (section: .debug_str)
ERROR: modpost: __ex_table+0x169c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x16a4 (section: __ex_table) -> .LASF2797 (section: .debug_str)
ERROR: modpost: __ex_table+0x16a4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x16a8 (section: __ex_table) -> .LASF2799 (section: .debug_str)
ERROR: modpost: __ex_table+0x16a8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x16b0 (section: __ex_table) -> .LASF3025 (section: .debug_str)
ERROR: modpost: __ex_table+0x16b0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x16b4 (section: __ex_table) -> .LASF3027 (section: .debug_str)
ERROR: modpost: __ex_table+0x16b4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x16bc (section: __ex_table) -> .LASF3029 (section: .debug_str)
ERROR: modpost: __ex_table+0x16bc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x16c0 (section: __ex_table) -> .LASF3031 (section: .debug_str)
ERROR: modpost: __ex_table+0x16c0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x17dc (section: __ex_table) -> .LASF3406 (section: .debug_str)
ERROR: modpost: __ex_table+0x17dc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x17e0 (section: __ex_table) -> .LASF3408 (section: .debug_str)
ERROR: modpost: __ex_table+0x17e0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x17e8 (section: __ex_table) -> .LASF4609 (section: .debug_str)
ERROR: modpost: __ex_table+0x17e8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x17ec (section: __ex_table) -> .LASF4611 (section: .debug_str)
ERROR: modpost: __ex_table+0x17ec references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x17f4 (section: __ex_table) -> .LC51 (section: .rodata.str1.4)
ERROR: modpost: __ex_table+0x17f4 references non-executable section '.rodata.str1.4'
WARNING: modpost: vmlinux: section mismatch in reference: 0x17f8 (section: __ex_table) -> perf_task_clock (section: .data.rel.local.perf_task_clock)
ERROR: modpost: __ex_table+0x17f8 references non-executable section '.data.rel.local.perf_task_clock'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1800 (section: __ex_table) -> .LC52 (section: .rodata.str1.4)
ERROR: modpost: __ex_table+0x1800 references non-executable section '.rodata.str1.4'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1804 (section: __ex_table) -> perf_tracepoint (section: .data.rel.perf_tracepoint)
>> ERROR: modpost: __ex_table+0x1804 references non-executable section '.data.rel.perf_tracepoint'
WARNING: modpost: vmlinux: section mismatch in reference: 0x18fc (section: __ex_table) -> .LASF179 (section: .debug_str)
ERROR: modpost: __ex_table+0x18fc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1900 (section: __ex_table) -> .LASF181 (section: .debug_str)
ERROR: modpost: __ex_table+0x1900 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1908 (section: __ex_table) -> .LASF183 (section: .debug_str)
ERROR: modpost: __ex_table+0x1908 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x190c (section: __ex_table) -> .LASF185 (section: .debug_str)
ERROR: modpost: __ex_table+0x190c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1914 (section: __ex_table) -> .LASF187 (section: .debug_str)
ERROR: modpost: __ex_table+0x1914 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1918 (section: __ex_table) -> .LASF189 (section: .debug_str)
ERROR: modpost: __ex_table+0x1918 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1920 (section: __ex_table) -> .LASF191 (section: .debug_str)
ERROR: modpost: __ex_table+0x1920 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1924 (section: __ex_table) -> .LASF193 (section: .debug_str)
ERROR: modpost: __ex_table+0x1924 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x192c (section: __ex_table) -> .LASF195 (section: .debug_str)
ERROR: modpost: __ex_table+0x192c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1930 (section: __ex_table) -> .LASF197 (section: .debug_str)
ERROR: modpost: __ex_table+0x1930 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1938 (section: __ex_table) -> .LASF199 (section: .debug_str)
ERROR: modpost: __ex_table+0x1938 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x193c (section: __ex_table) -> .LASF201 (section: .debug_str)
ERROR: modpost: __ex_table+0x193c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1944 (section: __ex_table) -> .LASF203 (section: .debug_str)
ERROR: modpost: __ex_table+0x1944 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1948 (section: __ex_table) -> .LASF205 (section: .debug_str)
ERROR: modpost: __ex_table+0x1948 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1950 (section: __ex_table) -> .LASF207 (section: .debug_str)
ERROR: modpost: __ex_table+0x1950 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1954 (section: __ex_table) -> .LASF209 (section: .debug_str)
ERROR: modpost: __ex_table+0x1954 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x195c (section: __ex_table) -> .LASF211 (section: .debug_str)
ERROR: modpost: __ex_table+0x195c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1960 (section: __ex_table) -> .LASF213 (section: .debug_str)
ERROR: modpost: __ex_table+0x1960 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1968 (section: __ex_table) -> .LASF215 (section: .debug_str)
ERROR: modpost: __ex_table+0x1968 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x196c (section: __ex_table) -> .LASF217 (section: .debug_str)
ERROR: modpost: __ex_table+0x196c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1974 (section: __ex_table) -> .LASF219 (section: .debug_str)
ERROR: modpost: __ex_table+0x1974 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1978 (section: __ex_table) -> .LASF221 (section: .debug_str)
ERROR: modpost: __ex_table+0x1978 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1980 (section: __ex_table) -> .LASF223 (section: .debug_str)
ERROR: modpost: __ex_table+0x1980 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1984 (section: __ex_table) -> .LASF225 (section: .debug_str)
ERROR: modpost: __ex_table+0x1984 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x198c (section: __ex_table) -> .LASF227 (section: .debug_str)
ERROR: modpost: __ex_table+0x198c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1990 (section: __ex_table) -> .LASF229 (section: .debug_str)
ERROR: modpost: __ex_table+0x1990 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1998 (section: __ex_table) -> .LASF231 (section: .debug_str)
ERROR: modpost: __ex_table+0x1998 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x199c (section: __ex_table) -> .LASF233 (section: .debug_str)
ERROR: modpost: __ex_table+0x199c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19a4 (section: __ex_table) -> .LASF235 (section: .debug_str)
ERROR: modpost: __ex_table+0x19a4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19a8 (section: __ex_table) -> .LASF237 (section: .debug_str)
ERROR: modpost: __ex_table+0x19a8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19b0 (section: __ex_table) -> .LASF239 (section: .debug_str)
ERROR: modpost: __ex_table+0x19b0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19b4 (section: __ex_table) -> .LASF241 (section: .debug_str)
ERROR: modpost: __ex_table+0x19b4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19bc (section: __ex_table) -> .LASF243 (section: .debug_str)
ERROR: modpost: __ex_table+0x19bc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19c0 (section: __ex_table) -> .LASF245 (section: .debug_str)
ERROR: modpost: __ex_table+0x19c0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19c8 (section: __ex_table) -> .LASF247 (section: .debug_str)
ERROR: modpost: __ex_table+0x19c8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19cc (section: __ex_table) -> .LASF249 (section: .debug_str)
ERROR: modpost: __ex_table+0x19cc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19d4 (section: __ex_table) -> .LASF251 (section: .debug_str)
ERROR: modpost: __ex_table+0x19d4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19d8 (section: __ex_table) -> .LASF253 (section: .debug_str)
ERROR: modpost: __ex_table+0x19d8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19ec (section: __ex_table) -> .LASF1197 (section: .debug_str)
ERROR: modpost: __ex_table+0x19ec references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19f0 (section: __ex_table) -> .LASF1199 (section: .debug_str)
ERROR: modpost: __ex_table+0x19f0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19f8 (section: __ex_table) -> .LASF907 (section: .debug_str)
ERROR: modpost: __ex_table+0x19f8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x19fc (section: __ex_table) -> .LASF909 (section: .debug_str)
ERROR: modpost: __ex_table+0x19fc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a04 (section: __ex_table) -> .LASF911 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a04 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a08 (section: __ex_table) -> .LASF909 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a08 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a10 (section: __ex_table) -> .LASF914 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a10 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a14 (section: __ex_table) -> .LASF916 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a14 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a1c (section: __ex_table) -> .LASF918 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a1c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a20 (section: __ex_table) -> .LASF909 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a20 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a28 (section: __ex_table) -> .LASF411 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a28 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1a2c (section: __ex_table) -> .LASF413 (section: .debug_str)
ERROR: modpost: __ex_table+0x1a2c references non-executable section '.debug_str'
--
ERROR: modpost: __ex_table+0x1e58 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e60 (section: __ex_table) -> .LASF2636 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e60 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e64 (section: __ex_table) -> .LASF2595 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e64 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e6c (section: __ex_table) -> .LASF2639 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e6c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e70 (section: __ex_table) -> .LASF2595 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e70 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e78 (section: __ex_table) -> .LASF2642 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e78 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e7c (section: __ex_table) -> .LASF2644 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e7c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e84 (section: __ex_table) -> .LASF1772 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e84 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e88 (section: __ex_table) -> .LASF1774 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e88 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e90 (section: __ex_table) -> .LASF1776 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e90 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e94 (section: __ex_table) -> .LASF1778 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e94 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1e9c (section: __ex_table) -> .LASF1780 (section: .debug_str)
ERROR: modpost: __ex_table+0x1e9c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ea0 (section: __ex_table) -> .LASF1782 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ea0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ea8 (section: __ex_table) -> .LASF1784 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ea8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1eac (section: __ex_table) -> .LASF1782 (section: .debug_str)
ERROR: modpost: __ex_table+0x1eac references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1eb4 (section: __ex_table) -> .LASF1787 (section: .debug_str)
ERROR: modpost: __ex_table+0x1eb4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1eb8 (section: __ex_table) -> .LASF1789 (section: .debug_str)
ERROR: modpost: __ex_table+0x1eb8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ec0 (section: __ex_table) -> .LASF1791 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ec0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ec4 (section: __ex_table) -> .LASF1793 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ec4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ecc (section: __ex_table) -> .LASF1795 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ecc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ed0 (section: __ex_table) -> .LASF1797 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ed0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ed8 (section: __ex_table) -> .LASF1799 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ed8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1edc (section: __ex_table) -> .LASF1797 (section: .debug_str)
ERROR: modpost: __ex_table+0x1edc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ee4 (section: __ex_table) -> .LASF1802 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ee4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ee8 (section: __ex_table) -> .LASF1804 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ee8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ef0 (section: __ex_table) -> .LASF1806 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ef0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ef4 (section: __ex_table) -> .LASF1808 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ef4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f14 (section: __ex_table) -> .LASF47 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f14 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f18 (section: __ex_table) -> .LASF44 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f18 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f20 (section: __ex_table) -> .LASF50 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f20 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f24 (section: __ex_table) -> .LASF44 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f24 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f2c (section: __ex_table) -> .LASF53 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f2c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f30 (section: __ex_table) -> .LASF44 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f30 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f38 (section: __ex_table) -> .LASF55 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f38 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f3c (section: __ex_table) -> .LASF58 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f3c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f44 (section: __ex_table) -> .LASF59 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f44 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f48 (section: __ex_table) -> .LASF58 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f48 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f50 (section: __ex_table) -> .LASF63 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f50 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f54 (section: __ex_table) -> .LASF58 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f54 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f5c (section: __ex_table) -> __export_symbol_clk_bulk_prepare (section: .export_symbol)
ERROR: modpost: __ex_table+0x1f5c references non-executable section '.export_symbol'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f60 (section: __ex_table) -> __export_symbol_clk_bulk_enable (section: .export_symbol)
ERROR: modpost: __ex_table+0x1f60 references non-executable section '.export_symbol'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f68 (section: __ex_table) -> .LASF2049 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f68 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f6c (section: __ex_table) -> .LASF2051 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f6c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f74 (section: __ex_table) -> .LASF2053 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f74 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1f78 (section: __ex_table) -> .LASF2055 (section: .debug_str)
ERROR: modpost: __ex_table+0x1f78 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1fc8 (section: __ex_table) -> .LASF1238 (section: .debug_str)
ERROR: modpost: __ex_table+0x1fc8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1fcc (section: __ex_table) -> .LASF1240 (section: .debug_str)
ERROR: modpost: __ex_table+0x1fcc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1fe0 (section: __ex_table) -> .LASF4016 (section: .debug_str)
ERROR: modpost: __ex_table+0x1fe0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ff8 (section: __ex_table) -> .LASF2168 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ff8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x1ffc (section: __ex_table) -> .LASF2170 (section: .debug_str)
ERROR: modpost: __ex_table+0x1ffc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2034 (section: __ex_table) -> .LANCHOR23 (section: .data.rel.local..Lubsan_data132)
>> ERROR: modpost: __ex_table+0x2034 references non-executable section '.data.rel.local..Lubsan_data132'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2038 (section: __ex_table) -> .LANCHOR24 (section: .data.rel.local..Lubsan_data133)
>> ERROR: modpost: __ex_table+0x2038 references non-executable section '.data.rel.local..Lubsan_data133'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2040 (section: __ex_table) -> .LASF2443 (section: .debug_str)
ERROR: modpost: __ex_table+0x2040 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2044 (section: __ex_table) -> .LASF2445 (section: .debug_str)
ERROR: modpost: __ex_table+0x2044 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x204c (section: __ex_table) -> .LASF2447 (section: .debug_str)
ERROR: modpost: __ex_table+0x204c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2050 (section: __ex_table) -> .LASF2449 (section: .debug_str)
ERROR: modpost: __ex_table+0x2050 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2058 (section: __ex_table) -> .LASF2451 (section: .debug_str)
ERROR: modpost: __ex_table+0x2058 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x205c (section: __ex_table) -> .LASF2445 (section: .debug_str)
ERROR: modpost: __ex_table+0x205c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2064 (section: __ex_table) -> .LASF2454 (section: .debug_str)
ERROR: modpost: __ex_table+0x2064 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2068 (section: __ex_table) -> .LASF2456 (section: .debug_str)
ERROR: modpost: __ex_table+0x2068 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2070 (section: __ex_table) -> .LASF2458 (section: .debug_str)
ERROR: modpost: __ex_table+0x2070 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2074 (section: __ex_table) -> .LASF2460 (section: .debug_str)
ERROR: modpost: __ex_table+0x2074 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x207c (section: __ex_table) -> .LASF2462 (section: .debug_str)
ERROR: modpost: __ex_table+0x207c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2080 (section: __ex_table) -> .LASF2464 (section: .debug_str)
ERROR: modpost: __ex_table+0x2080 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2088 (section: __ex_table) -> .LASF4217 (section: .debug_str)
ERROR: modpost: __ex_table+0x2088 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x208c (section: __ex_table) -> .LASF4219 (section: .debug_str)
ERROR: modpost: __ex_table+0x208c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2094 (section: __ex_table) -> .LASF4221 (section: .debug_str)
ERROR: modpost: __ex_table+0x2094 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2098 (section: __ex_table) -> .LASF4223 (section: .debug_str)
ERROR: modpost: __ex_table+0x2098 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20a0 (section: __ex_table) -> .LASF1970 (section: .debug_str)
ERROR: modpost: __ex_table+0x20a0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20a4 (section: __ex_table) -> .LASF1972 (section: .debug_str)
ERROR: modpost: __ex_table+0x20a4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20ac (section: __ex_table) -> .LASF1974 (section: .debug_str)
ERROR: modpost: __ex_table+0x20ac references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20b0 (section: __ex_table) -> .LASF1976 (section: .debug_str)
ERROR: modpost: __ex_table+0x20b0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20b8 (section: __ex_table) -> .LASF1978 (section: .debug_str)
ERROR: modpost: __ex_table+0x20b8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20bc (section: __ex_table) -> .LASF1980 (section: .debug_str)
ERROR: modpost: __ex_table+0x20bc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20c4 (section: __ex_table) -> .LASF1982 (section: .debug_str)
ERROR: modpost: __ex_table+0x20c4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20c8 (section: __ex_table) -> .LASF1984 (section: .debug_str)
ERROR: modpost: __ex_table+0x20c8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20d0 (section: __ex_table) -> .LASF201 (section: .debug_str)
ERROR: modpost: __ex_table+0x20d0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20d4 (section: __ex_table) -> .LASF203 (section: .debug_str)
ERROR: modpost: __ex_table+0x20d4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20dc (section: __ex_table) -> .LASF205 (section: .debug_str)
ERROR: modpost: __ex_table+0x20dc references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20e0 (section: __ex_table) -> .LASF207 (section: .debug_str)
ERROR: modpost: __ex_table+0x20e0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20e8 (section: __ex_table) -> .LASF3090 (section: .debug_str)
ERROR: modpost: __ex_table+0x20e8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20ec (section: __ex_table) -> .LASF3092 (section: .debug_str)
ERROR: modpost: __ex_table+0x20ec references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20f4 (section: __ex_table) -> .LASF3094 (section: .debug_str)
ERROR: modpost: __ex_table+0x20f4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x20f8 (section: __ex_table) -> .LASF3096 (section: .debug_str)
ERROR: modpost: __ex_table+0x20f8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2100 (section: __ex_table) -> .LASF3098 (section: .debug_str)
ERROR: modpost: __ex_table+0x2100 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2104 (section: __ex_table) -> .LASF3096 (section: .debug_str)
ERROR: modpost: __ex_table+0x2104 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x210c (section: __ex_table) -> .LASF3102 (section: .debug_str)
ERROR: modpost: __ex_table+0x210c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2110 (section: __ex_table) -> .LASF3096 (section: .debug_str)
ERROR: modpost: __ex_table+0x2110 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2124 (section: __ex_table) -> .LASF1395 (section: .debug_str)
ERROR: modpost: __ex_table+0x2124 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2128 (section: __ex_table) -> .LASF1397 (section: .debug_str)
ERROR: modpost: __ex_table+0x2128 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2130 (section: __ex_table) -> .LASF1399 (section: .debug_str)
ERROR: modpost: __ex_table+0x2130 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2134 (section: __ex_table) -> .LASF1401 (section: .debug_str)
ERROR: modpost: __ex_table+0x2134 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x213c (section: __ex_table) -> .LASF1403 (section: .debug_str)
ERROR: modpost: __ex_table+0x213c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2140 (section: __ex_table) -> .LASF1401 (section: .debug_str)
ERROR: modpost: __ex_table+0x2140 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2190 (section: __ex_table) -> .LASF2236 (section: .debug_str)
ERROR: modpost: __ex_table+0x2190 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x2194 (section: __ex_table) -> .LASF2238 (section: .debug_str)
ERROR: modpost: __ex_table+0x2194 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x219c (section: __ex_table) -> .LASF2240 (section: .debug_str)
ERROR: modpost: __ex_table+0x219c references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x21a0 (section: __ex_table) -> .LASF2242 (section: .debug_str)
ERROR: modpost: __ex_table+0x21a0 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x21a8 (section: __ex_table) -> .LASF2244 (section: .debug_str)
ERROR: modpost: __ex_table+0x21a8 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x21ac (section: __ex_table) -> .LASF2242 (section: .debug_str)
ERROR: modpost: __ex_table+0x21ac references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x21b4 (section: __ex_table) -> .LASF2247 (section: .debug_str)
ERROR: modpost: __ex_table+0x21b4 references non-executable section '.debug_str'
WARNING: modpost: vmlinux: section mismatch in reference: 0x21b8 (section: __ex_table) -> .LASF2242 (section: .debug_str)
ERROR: modpost: __ex_table+0x21b8 references non-executable section '.debug_str'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
