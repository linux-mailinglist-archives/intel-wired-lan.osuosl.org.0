Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D71B522D0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 22:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E694984345;
	Wed, 10 Sep 2025 20:49:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-PWSvK6pxXG; Wed, 10 Sep 2025 20:49:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08C9284336
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757537349;
	bh=NH7A4yuE246UxcY0doNwYxCNRYMMjrKTT/sBM8C29sY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LaT6lW290BcLHZlnVGuSC7vdZdDLHlXlAwLNw6O27cuWgKhPoxsAvpG9Fng4blupw
	 JactR0ObVSE2W9aTCwHh+UlAZl9D4gDtfEKnzm5/nuZ8PAg5JHNfbEH2FsugJniQ/T
	 jgiatuWPzF0DCk76wdksGYAe3sJKnoTxRGeZUVOOBeo6ebpnZNEDjLln1LGCQ7FOC6
	 qcH6QAtyKugLyPA9F/es3m9JqBjhsy36pOjzsGhmLGpGtbMkq3aVZ4w6AofyQdaYpr
	 z6psyvWhoyvg/K7s+/fafAhKJoIoJImKog6XcEdt3qkpHvl9QqneaMgJCl8sRKhm1J
	 h4+WZgKROq5eQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 08C9284336;
	Wed, 10 Sep 2025 20:49:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C3D2234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 20:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AF8741906
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 20:49:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UUask16YMEsK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 20:49:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A27C141902
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A27C141902
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A27C141902
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 20:49:06 +0000 (UTC)
X-CSE-ConnectionGUID: 29EnR8oWTKmRUNzBsAIg1Q==
X-CSE-MsgGUID: ufdQdP+uSr+oeP7W5W7bgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59807504"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59807504"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 13:49:05 -0700
X-CSE-ConnectionGUID: 8g6kfFo3QeKOlWx6LJzulQ==
X-CSE-MsgGUID: JuRMgH9WTI6tqmwLpGnPFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,255,1751266800"; d="scan'208";a="173573317"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 10 Sep 2025 13:49:02 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwRkS-0006HD-03;
 Wed, 10 Sep 2025 20:49:00 +0000
Date: Thu, 11 Sep 2025 04:48:44 +0800
From: kernel test robot <lkp@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>
Cc: oe-kbuild-all@lists.linux.dev, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
Message-ID: <202509110407.uPUiJk7j-lkp@intel.com>
References: <20250909184216.1524669-2-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909184216.1524669-2-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757537346; x=1789073346;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WtcGnhGSlqX1dPRofkZYf6H49sJDwaITH4VnJPQAxlY=;
 b=cG+6dqf1W8BNn+UMZ9yR4OXm40GTfTP0RDIW++DET8EwdOccFdu/6rw4
 htwrjAvFZOntzRptmn/YSbBy7IUxNU9ZlusfafLeCn72qqm6+64JcLH3o
 6sVIG54cqap2vLp097HWTIoIz20iMmC94BIYN221lMizo9naUJiFTMzFA
 tabfIFZ7Csrfhpqq2STPQ3f+XIDwrm4pEwfBckeX2fHIlSJzSkfHNuvq5
 ienmGNRqgDQFgsXapl4qkrNf/0j9IYH+ipatuUNfvuJ87+PTEDPZAvRax
 hwVMtrTJwddwQinpUPP53TnOCvwgg0eScc2qLg9dcuY4I7xh+0LKhqvJ5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cG+6dqf1
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] ethtool: add FEC bins
 histogramm report
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

Hi Vadim,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Vadim-Fedorenko/ethtool-add-FEC-bins-histogramm-report/20250910-025057
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250909184216.1524669-2-vadim.fedorenko%40linux.dev
patch subject: [PATCH net-next 1/4] ethtool: add FEC bins histogramm report
config: openrisc-allyesconfig (https://download.01.org/0day-ci/archive/20250911/202509110407.uPUiJk7j-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250911/202509110407.uPUiJk7j-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509110407.uPUiJk7j-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c:1842:43: error: initialization of 'void (*)(struct net_device *, struct ethtool_fec_stats *, struct ethtool_fec_hist *)' from incompatible pointer type 'void (*)(struct net_device *, struct ethtool_fec_stats *)' [-Wincompatible-pointer-types]
    1842 |         .get_fec_stats                  = fbnic_get_fec_stats,
         |                                           ^~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c:1842:43: note: (near initialization for 'fbnic_ethtool_ops.get_fec_stats')
   drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c:1661:1: note: 'fbnic_get_fec_stats' declared here
    1661 | fbnic_get_fec_stats(struct net_device *netdev,
         | ^~~~~~~~~~~~~~~~~~~


vim +1842 drivers/net/ethernet/meta/fbnic/fbnic_ethtool.c

6913e873e7b2e4 Mohsin Bashir   2025-06-10  1805  
bd2557a554a0d6 Mohsin Bashir   2024-09-02  1806  static const struct ethtool_ops fbnic_ethtool_ops = {
f7d4c21667cc1a Jakub Kicinski  2025-06-24  1807  	.supported_coalesce_params	= ETHTOOL_COALESCE_USECS |
7b5b7a597fbc19 Mohsin Bashir   2025-02-17  1808  					  ETHTOOL_COALESCE_RX_MAX_FRAMES,
2b30fc01a6c788 Mohsin Bashir   2025-08-13  1809  	.supported_ring_params		= ETHTOOL_RING_USE_TCP_DATA_SPLIT |
2b30fc01a6c788 Mohsin Bashir   2025-08-13  1810  					  ETHTOOL_RING_USE_HDS_THRS,
260676ebb1f3b1 Daniel Zahka    2025-02-06  1811  	.rxfh_max_num_contexts		= FBNIC_RPC_RSS_TBL_COUNT,
bd2557a554a0d6 Mohsin Bashir   2024-09-02  1812  	.get_drvinfo			= fbnic_get_drvinfo,
3d12862b216d39 Mohsin Bashir   2024-11-12  1813  	.get_regs_len			= fbnic_get_regs_len,
3d12862b216d39 Mohsin Bashir   2024-11-12  1814  	.get_regs			= fbnic_get_regs,
fb9a3bb7f7f23b Alexander Duyck 2025-06-18  1815  	.get_link			= ethtool_op_get_link,
7b5b7a597fbc19 Mohsin Bashir   2025-02-17  1816  	.get_coalesce			= fbnic_get_coalesce,
7b5b7a597fbc19 Mohsin Bashir   2025-02-17  1817  	.set_coalesce			= fbnic_set_coalesce,
6cbf18a05c0609 Jakub Kicinski  2025-03-06  1818  	.get_ringparam			= fbnic_get_ringparam,
6cbf18a05c0609 Jakub Kicinski  2025-03-06  1819  	.set_ringparam			= fbnic_set_ringparam,
e9faf4db5f2612 Mohsin Bashir   2025-08-25  1820  	.get_pause_stats		= fbnic_get_pause_stats,
eb4c27edb4d8db Alexander Duyck 2025-06-18  1821  	.get_pauseparam			= fbnic_phylink_get_pauseparam,
eb4c27edb4d8db Alexander Duyck 2025-06-18  1822  	.set_pauseparam			= fbnic_phylink_set_pauseparam,
79da2aaa08ee99 Sanman Pradhan  2024-11-14  1823  	.get_strings			= fbnic_get_strings,
79da2aaa08ee99 Sanman Pradhan  2024-11-14  1824  	.get_ethtool_stats		= fbnic_get_ethtool_stats,
79da2aaa08ee99 Sanman Pradhan  2024-11-14  1825  	.get_sset_count			= fbnic_get_sset_count,
7cb06a6a777cf5 Alexander Duyck 2024-12-19  1826  	.get_rxnfc			= fbnic_get_rxnfc,
c23a1461bfee0a Alexander Duyck 2024-12-19  1827  	.set_rxnfc			= fbnic_set_rxnfc,
7cb06a6a777cf5 Alexander Duyck 2024-12-19  1828  	.get_rxfh_key_size		= fbnic_get_rxfh_key_size,
7cb06a6a777cf5 Alexander Duyck 2024-12-19  1829  	.get_rxfh_indir_size		= fbnic_get_rxfh_indir_size,
7cb06a6a777cf5 Alexander Duyck 2024-12-19  1830  	.get_rxfh			= fbnic_get_rxfh,
31ab733e999edb Alexander Duyck 2024-12-19  1831  	.set_rxfh			= fbnic_set_rxfh,
2a34007ba9773e Jakub Kicinski  2025-06-11  1832  	.get_rxfh_fields		= fbnic_get_rss_hash_opts,
2a34007ba9773e Jakub Kicinski  2025-06-11  1833  	.set_rxfh_fields		= fbnic_set_rss_hash_opts,
260676ebb1f3b1 Daniel Zahka    2025-02-06  1834  	.create_rxfh_context		= fbnic_create_rxfh_context,
260676ebb1f3b1 Daniel Zahka    2025-02-06  1835  	.modify_rxfh_context		= fbnic_modify_rxfh_context,
260676ebb1f3b1 Daniel Zahka    2025-02-06  1836  	.remove_rxfh_context		= fbnic_remove_rxfh_context,
3a481cc72673b2 Jakub Kicinski  2024-12-19  1837  	.get_channels			= fbnic_get_channels,
3a481cc72673b2 Jakub Kicinski  2024-12-19  1838  	.set_channels			= fbnic_set_channels,
be65bfc957eb70 Vadim Fedorenko 2024-10-08  1839  	.get_ts_info			= fbnic_get_ts_info,
96f358f75d1a4e Vadim Fedorenko 2024-10-08  1840  	.get_ts_stats			= fbnic_get_ts_stats,
fb9a3bb7f7f23b Alexander Duyck 2025-06-18  1841  	.get_link_ksettings		= fbnic_phylink_ethtool_ksettings_get,
33c493791bc058 Mohsin Bashir   2025-08-25 @1842  	.get_fec_stats			= fbnic_get_fec_stats,
fb9a3bb7f7f23b Alexander Duyck 2025-06-18  1843  	.get_fecparam			= fbnic_phylink_get_fecparam,
33c493791bc058 Mohsin Bashir   2025-08-25  1844  	.get_eth_phy_stats		= fbnic_get_eth_phy_stats,
4eb7f20bcf0614 Mohsin Bashir   2024-09-02  1845  	.get_eth_mac_stats		= fbnic_get_eth_mac_stats,
6913e873e7b2e4 Mohsin Bashir   2025-06-10  1846  	.get_eth_ctrl_stats		= fbnic_get_eth_ctrl_stats,
6913e873e7b2e4 Mohsin Bashir   2025-06-10  1847  	.get_rmon_stats			= fbnic_get_rmon_stats,
bd2557a554a0d6 Mohsin Bashir   2024-09-02  1848  };
bd2557a554a0d6 Mohsin Bashir   2024-09-02  1849  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
