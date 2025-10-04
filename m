Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF8FBB8B22
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Oct 2025 10:10:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AFC841172;
	Sat,  4 Oct 2025 08:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pM9O8xY5dyRl; Sat,  4 Oct 2025 08:09:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D51441176
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759565397;
	bh=8EvCILbQWHwEJJscz3jQ44YVUVEsb/si+gYOMPLfgkg=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=c7Y8Kf1syFOpuAqu3AygSnxA7pA3OB4WGUiXRONWgZUqwSM7geH+2YoINWT7TaaLG
	 /iEQn+KcRsMIwfwwCZ8F2yST/1Ih6mVfN4MOmfOZaVZAnROfQvuK/ztt8q+LNNy9dP
	 5+YW4HMV989832lYl+xCquy0osUTKz5DfAHwte2vSEbILtbnuBeAHap2Y+Ew/dU012
	 MLdiscwT6V+MAnEC4+6AsckOF7vrw7dUpXwHJSAMPRUsPwM/0DjYbCBiH/w6Q3flp3
	 hKULyZ0F3Hy8rLnvxZHGO6sqpqf9KSO3wJJHvPJJIcraqmmG5tRILJzD04Z0Yizjgr
	 yHBO023EI6boA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D51441176;
	Sat,  4 Oct 2025 08:09:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C1091226
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 08:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E8FA4110B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 08:09:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fOeLVgdD5qtg for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Oct 2025 08:09:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 73D4341147
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73D4341147
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73D4341147
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 08:09:53 +0000 (UTC)
X-CSE-ConnectionGUID: tdSaq/ubSay9hBrKzGhBdg==
X-CSE-MsgGUID: 04GE0B9BRpuauci+Lgbs0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61749214"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61749214"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2025 01:09:54 -0700
X-CSE-ConnectionGUID: VTuOpPkuRbCK9ZX52SWQHQ==
X-CSE-MsgGUID: HcxNP8mHSzKKlMbhqngXYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,314,1751266800"; d="scan'208";a="183855353"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 04 Oct 2025 01:09:51 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v4xKu-00059d-1o;
 Sat, 04 Oct 2025 08:09:48 +0000
Date: Sat, 4 Oct 2025 16:09:32 +0800
From: kernel test robot <lkp@intel.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chittim Madhu <madhu.chittim@intel.com>
Message-ID: <202510041605.cSnfIA5l-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759565395; x=1791101395;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MYXiREMPcXinmmSLK9zhPzanE7P/FRof3EfqCi1UyNM=;
 b=Nn9RMflICDW9v1svXSYpHLBgG4xyaEvoOmhyqtSEbNuge2UHn5r/eriV
 VZckNhAYZkre2J2YkeLWshYXDA2AbG8v3tT/vZgu+ORhYrx5l9h+3nmPr
 W20Ml38/pX5jGTdveix9wg3L/hlYBu6DffSKOHSzkSrfzqr6zP0zIQeZo
 yHFNEhuzgOd4XFzsDxCE45fSYc9vEGO9H0OvQpiiEfN1pWxkWXiIsCpuH
 NVJmZzoA2brqyIifsp88nDq7gswNS/x/31JSKFUTKQ8Z+cb+kZ1kZ0QeQ
 upVX3GE284WzOxiL2hlUz7Uu2fatdBBLXFEQpUs+BJqsf0BfHy1eDfUMt
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nn9RMflI
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 7/17]
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c:1713:10: warning: comparison
 of array 'np->state' not equal to a null pointer is always true
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

Hi Emil,

FYI, the error/warning was bisected to this commit, please ignore it if it's irrelevant.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
head:   e50b34f0f3fb86c9be2f9ad3b7ed483f18b46896
commit: 7c0e8a950dbd30ca46e999cf1d25f3e97a98f174 [7/17] idpf: convert vport state to bitmap
config: loongarch-allyesconfig (https://download.01.org/0day-ci/archive/20251004/202510041605.cSnfIA5l-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 39f292ffa13d7ca0d1edff27ac8fd55024bb4d19)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251004/202510041605.cSnfIA5l-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202510041605.cSnfIA5l-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/idpf/idpf_ethtool.c:1713:19: error: use of undeclared identifier '__IDPF_VPORT_UP'; did you mean 'IDPF_VPORT_UP'?
    1713 |         if (np->state != __IDPF_VPORT_UP)
         |                          ^~~~~~~~~~~~~~~
         |                          IDPF_VPORT_UP
   drivers/net/ethernet/intel/idpf/idpf.h:138:2: note: 'IDPF_VPORT_UP' declared here
     138 |         IDPF_VPORT_UP,
         |         ^
>> drivers/net/ethernet/intel/idpf/idpf_ethtool.c:1713:10: warning: comparison of array 'np->state' not equal to a null pointer is always true [-Wtautological-pointer-compare]
    1713 |         if (np->state != __IDPF_VPORT_UP)
         |             ~~~~^~~~~    ~~~~~~~~~~~~~~~
   1 warning and 1 error generated.
--
   drivers/net/ethernet/intel/idpf/xdp.c:421:20: error: use of undeclared identifier '__IDPF_VPORT_UP'; did you mean 'IDPF_VPORT_UP'?
     421 |                 if (np->state == __IDPF_VPORT_UP)
         |                                  ^~~~~~~~~~~~~~~
         |                                  IDPF_VPORT_UP
   drivers/net/ethernet/intel/idpf/idpf.h:138:2: note: 'IDPF_VPORT_UP' declared here
     138 |         IDPF_VPORT_UP,
         |         ^
>> drivers/net/ethernet/intel/idpf/xdp.c:421:11: warning: comparison of array 'np->state' equal to a null pointer is always false [-Wtautological-pointer-compare]
     421 |                 if (np->state == __IDPF_VPORT_UP)
         |                     ~~~~^~~~~    ~~~~~~~~~~~~~~~
   1 warning and 1 error generated.


vim +1713 drivers/net/ethernet/intel/idpf/idpf_ethtool.c

1a49cf814fe1ed Milena Olech 2025-04-16  1687  
7a5a03869801e2 Milena Olech 2025-08-29  1688  /**
7a5a03869801e2 Milena Olech 2025-08-29  1689   * idpf_get_ts_stats - Collect HW tstamping statistics
7a5a03869801e2 Milena Olech 2025-08-29  1690   * @netdev: network interface device structure
7a5a03869801e2 Milena Olech 2025-08-29  1691   * @ts_stats: HW timestamping stats structure
7a5a03869801e2 Milena Olech 2025-08-29  1692   *
7a5a03869801e2 Milena Olech 2025-08-29  1693   * Collect HW timestamping statistics including successfully timestamped
7a5a03869801e2 Milena Olech 2025-08-29  1694   * packets, discarded due to illegal values, flushed during releasing PTP and
7a5a03869801e2 Milena Olech 2025-08-29  1695   * skipped due to lack of the free index.
7a5a03869801e2 Milena Olech 2025-08-29  1696   */
7a5a03869801e2 Milena Olech 2025-08-29  1697  static void idpf_get_ts_stats(struct net_device *netdev,
7a5a03869801e2 Milena Olech 2025-08-29  1698  			      struct ethtool_ts_stats *ts_stats)
7a5a03869801e2 Milena Olech 2025-08-29  1699  {
7a5a03869801e2 Milena Olech 2025-08-29  1700  	struct idpf_netdev_priv *np = netdev_priv(netdev);
7a5a03869801e2 Milena Olech 2025-08-29  1701  	struct idpf_vport *vport;
7a5a03869801e2 Milena Olech 2025-08-29  1702  	unsigned int start;
7a5a03869801e2 Milena Olech 2025-08-29  1703  
7a5a03869801e2 Milena Olech 2025-08-29  1704  	idpf_vport_ctrl_lock(netdev);
7a5a03869801e2 Milena Olech 2025-08-29  1705  	vport = idpf_netdev_to_vport(netdev);
7a5a03869801e2 Milena Olech 2025-08-29  1706  	do {
7a5a03869801e2 Milena Olech 2025-08-29  1707  		start = u64_stats_fetch_begin(&vport->tstamp_stats.stats_sync);
7a5a03869801e2 Milena Olech 2025-08-29  1708  		ts_stats->pkts = u64_stats_read(&vport->tstamp_stats.packets);
7a5a03869801e2 Milena Olech 2025-08-29  1709  		ts_stats->lost = u64_stats_read(&vport->tstamp_stats.flushed);
7a5a03869801e2 Milena Olech 2025-08-29  1710  		ts_stats->err = u64_stats_read(&vport->tstamp_stats.discarded);
7a5a03869801e2 Milena Olech 2025-08-29  1711  	} while (u64_stats_fetch_retry(&vport->tstamp_stats.stats_sync, start));
7a5a03869801e2 Milena Olech 2025-08-29  1712  
7a5a03869801e2 Milena Olech 2025-08-29 @1713  	if (np->state != __IDPF_VPORT_UP)
7a5a03869801e2 Milena Olech 2025-08-29  1714  		goto exit;
7a5a03869801e2 Milena Olech 2025-08-29  1715  
7a5a03869801e2 Milena Olech 2025-08-29  1716  	for (u16 i = 0; i < vport->num_txq_grp; i++) {
7a5a03869801e2 Milena Olech 2025-08-29  1717  		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
7a5a03869801e2 Milena Olech 2025-08-29  1718  
7a5a03869801e2 Milena Olech 2025-08-29  1719  		for (u16 j = 0; j < txq_grp->num_txq; j++) {
7a5a03869801e2 Milena Olech 2025-08-29  1720  			struct idpf_tx_queue *txq = txq_grp->txqs[j];
7a5a03869801e2 Milena Olech 2025-08-29  1721  			struct idpf_tx_queue_stats *stats;
7a5a03869801e2 Milena Olech 2025-08-29  1722  			u64 ts;
7a5a03869801e2 Milena Olech 2025-08-29  1723  
7a5a03869801e2 Milena Olech 2025-08-29  1724  			if (!txq)
7a5a03869801e2 Milena Olech 2025-08-29  1725  				continue;
7a5a03869801e2 Milena Olech 2025-08-29  1726  
7a5a03869801e2 Milena Olech 2025-08-29  1727  			stats = &txq->q_stats;
7a5a03869801e2 Milena Olech 2025-08-29  1728  			do {
7a5a03869801e2 Milena Olech 2025-08-29  1729  				start = u64_stats_fetch_begin(&txq->stats_sync);
7a5a03869801e2 Milena Olech 2025-08-29  1730  
7a5a03869801e2 Milena Olech 2025-08-29  1731  				ts = u64_stats_read(&stats->tstamp_skipped);
7a5a03869801e2 Milena Olech 2025-08-29  1732  			} while (u64_stats_fetch_retry(&txq->stats_sync,
7a5a03869801e2 Milena Olech 2025-08-29  1733  						       start));
7a5a03869801e2 Milena Olech 2025-08-29  1734  
7a5a03869801e2 Milena Olech 2025-08-29  1735  			ts_stats->lost += ts;
7a5a03869801e2 Milena Olech 2025-08-29  1736  		}
7a5a03869801e2 Milena Olech 2025-08-29  1737  	}
7a5a03869801e2 Milena Olech 2025-08-29  1738  
7a5a03869801e2 Milena Olech 2025-08-29  1739  exit:
7a5a03869801e2 Milena Olech 2025-08-29  1740  	idpf_vport_ctrl_unlock(netdev);
7a5a03869801e2 Milena Olech 2025-08-29  1741  }
7a5a03869801e2 Milena Olech 2025-08-29  1742  

:::::: The code at line 1713 was first introduced by commit
:::::: 7a5a03869801e2f1cabdc55b2e697fea20da5c68 idpf: add HW timestamping statistics

:::::: TO: Milena Olech <milena.olech@intel.com>
:::::: CC: Tony Nguyen <anthony.l.nguyen@intel.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
