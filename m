Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82925A60C0B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 09:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19CEA41A4B;
	Fri, 14 Mar 2025 08:49:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f_bBLJXy76UX; Fri, 14 Mar 2025 08:49:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6AE641A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741942145;
	bh=UDWvkDRWob/C91R7LfTC3TjkVj0wEohdolGFWkEjUMA=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lBT/uWe6C3oW6wqWNdOg3/fTr8u98yiI7WjBGLCVC41lSH8z8Tn7tX5EtRrpfmkhm
	 y6TVU9Z9H0WBCwhlUlNvuuI70jR+6pZnw9LQTAucz6+elzesn32A/xv0A8kw/MAXIX
	 cbZeFPK4bvx52e1mUWDsjqu2Zo7CgK9tzz08sNrrecnEMxGynyb7EGBXVAkBN3FKD3
	 vrFPCyJLTaii+Jzhrx0UKyBcwynVuc8AGQpdY75XUKmfskl7rzUk92KNn1rgjmSqhh
	 oDzQoUzWsGg6sSOdBrESSj8E5q7BwaiWP3b5ah9LJ0+G85IvR90tBfwon2XlMkFuNV
	 UogEQ5qlHTN/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6AE641A4D;
	Fri, 14 Mar 2025 08:49:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A6CA61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 08:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56CF041A3D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 08:49:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OJuwcxljL8Lu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 08:49:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 071B141A3B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 071B141A3B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 071B141A3B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 08:49:01 +0000 (UTC)
X-CSE-ConnectionGUID: Tpw++0lERu2GRBHJ+DGpXQ==
X-CSE-MsgGUID: ZbSyJ1hzQmqQdbjSKmbTbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42255538"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="42255538"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 01:49:01 -0700
X-CSE-ConnectionGUID: xooHnKA5QmaNxQH0QcJ/tA==
X-CSE-MsgGUID: 8KZKcl4xRmGcY9xHiNU4Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152056920"
Received: from lkp-server02.sh.intel.com (HELO a4747d147074) ([10.239.97.151])
 by orviesa002.jf.intel.com with ESMTP; 14 Mar 2025 01:48:59 -0700
Received: from kbuild by a4747d147074 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tt0iu-000AF2-2v;
 Fri, 14 Mar 2025 08:48:56 +0000
Date: Fri, 14 Mar 2025 16:48:55 +0800
From: kernel test robot <lkp@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <202503141646.6yybVfAe-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741942142; x=1773478142;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=/RkOl1ofNmh72IxfC8RKCGE9aTmdSMuFblH9AmdC8ss=;
 b=DktL2nJiPAT5qIkVYMlX8nuCxM3SZLPv45Tgm8wWIG1nWXx7+mcb9f81
 3CTVPYx0gs0iYttL9kRekvFxfSs5fNE4dMRo5N9YRCyOS4HlGbFjEzpsH
 XZ8AJeFDtnrpoiRWObrL9BQ+enYDfKLTJWugwTFF4ZjDIkbPVAyYmB5sw
 KzKuKv+74qRIvcfB10OQLkmYKkmRbzWTdsAJj6YIMxvO4Ge8THZ6Bj6FT
 NddFW6JTX5RvwJFGoHemeLpzpeYxshQtV40M2IBCA/k2CpbJ7lh4fJ0do
 It/b10cnGA1g1fJfinH3nTpgXeZl/hvNbtLAy8M9KjdJlzae0rhW6TME0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DktL2nJi
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 87/88]
 drivers/net/ethernet/intel/igc/igc_ethtool.c:1791:undefined reference to
 `ethtool_mmsv_get_mm'
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   7dca3a8a1f3c70a4ba8115e4ee5827e424629eaf
commit: 8f97e7c17be21b5b4feefd2f2e71d71761777ab8 [87/88] igc: add support to get MAC Merge data via ethtool
config: arm64-randconfig-001-20250314 (https://download.01.org/0day-ci/archive/20250314/202503141646.6yybVfAe-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250314/202503141646.6yybVfAe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202503141646.6yybVfAe-lkp@intel.com/

All errors (new ones prefixed by >>):

   aarch64-linux-ld: Unexpected GOT/PLT entries detected!
   aarch64-linux-ld: Unexpected run-time procedure linkages detected!
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_fpe_handle_mpacket':
   drivers/net/ethernet/intel/igc/igc_tsn.h:50:(.text+0x9690): undefined reference to `ethtool_mmsv_event_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_clean_tx_irq':
   drivers/net/ethernet/intel/igc/igc_main.c:3157:(.text+0xec44): undefined reference to `ethtool_mmsv_event_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_watchdog_task':
   drivers/net/ethernet/intel/igc/igc_main.c:5878:(.text+0x103a4): undefined reference to `ethtool_mmsv_link_state_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.c:5917:(.text+0x1058c): undefined reference to `ethtool_mmsv_link_state_handle'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_down':
   drivers/net/ethernet/intel/igc/igc_main.c:5352:(.text+0x114e8): undefined reference to `ethtool_mmsv_stop'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_set_mm':
   drivers/net/ethernet/intel/igc/igc_ethtool.c:1817:(.text+0x800): undefined reference to `ethtool_mmsv_set_mm'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_get_mm':
>> drivers/net/ethernet/intel/igc/igc_ethtool.c:1791:(.text+0x8bc): undefined reference to `ethtool_mmsv_get_mm'
   aarch64-linux-ld: drivers/net/ethernet/intel/igc/igc_tsn.o: in function `igc_fpe_init':
   drivers/net/ethernet/intel/igc/igc_tsn.c:138:(.text+0x1238): undefined reference to `ethtool_mmsv_init'


vim +1791 drivers/net/ethernet/intel/igc/igc_ethtool.c

  1784	
  1785	static int igc_ethtool_get_mm(struct net_device *netdev,
  1786				      struct ethtool_mm_state *cmd)
  1787	{
  1788		struct igc_adapter *adapter = netdev_priv(netdev);
  1789		struct igc_fpe_t *fpe = &adapter->fpe;
  1790	
> 1791		ethtool_mmsv_get_mm(&fpe->mmsv, cmd);
  1792		cmd->tx_min_frag_size = fpe->tx_min_frag_size;
  1793		cmd->rx_min_frag_size = IGC_RX_MIN_FRAG_SIZE;
  1794	
  1795		return 0;
  1796	}
  1797	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
