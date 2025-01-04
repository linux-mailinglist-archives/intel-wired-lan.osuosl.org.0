Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEFCA0127A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 06:14:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B008F408CE;
	Sat,  4 Jan 2025 05:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXvsKgoKIVy9; Sat,  4 Jan 2025 05:14:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5778C4088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735967648;
	bh=YfyyxJ+YcCrY7S+xczALgp9e8kR8Ctovdp7ODIhZW+U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hSVAmoSgLIwUEWMmcfUAOADea86QgzSePWaZmAsgWGt3sVqPPPZYPpncfjYWXDAn4
	 /M+nroyc/Gm3hLPDC6fsqXApfH7KAeknjeJjFVvMI+N64ygipHwRNfPxIqIfPfOacn
	 2AkcIri0eY9ROlHChNvgVQEcAQyvEWJMH6TYLOlfZUkcnkSmZ0H2jfWYDO2HhjfGwg
	 QpDOlYP8wpDMguecNdZW20PzAFci8qmnWFql9vRExVqriscyBhSkfYo6CNS5XNcUlK
	 5+TGeW6OKtmKJKb0BSNiC1v++5JjfpqXt5USy0MG30TLMt1Ac89dDRcP/hLo1OT6iP
	 wDdGNObjAFhvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5778C4088D;
	Sat,  4 Jan 2025 05:14:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D1457E0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 05:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B32F581010
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 05:14:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HF_Kg-3SXNh4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 05:14:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B1A3680EB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1A3680EB6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B1A3680EB6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 05:14:05 +0000 (UTC)
X-CSE-ConnectionGUID: ugxXxA4TSpm8vbALWJhnYg==
X-CSE-MsgGUID: pGR3rgcgTi65qgHADK0l5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36221276"
X-IronPort-AV: E=Sophos;i="6.12,288,1728975600"; d="scan'208";a="36221276"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 21:14:04 -0800
X-CSE-ConnectionGUID: bQEAZzi7SMuAOqolOBbmtQ==
X-CSE-MsgGUID: FxwZw8j4TAqM9WQfMpA9LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="107000651"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 03 Jan 2025 21:14:01 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tTwU1-000Adf-2L;
 Sat, 04 Jan 2025 05:13:57 +0000
Date: Sat, 4 Jan 2025 13:13:31 +0800
From: kernel test robot <lkp@intel.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <202501041245.SDb1oN01-lkp@intel.com>
References: <20250104004314.208259-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250104004314.208259-2-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735967645; x=1767503645;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4KItOljKpS1HCczUbuBclQ7VtvYwtcxpc6b6O9c+Nzc=;
 b=a5yfkLehGqslDBsMjWgwhkMtsx2iPl/Er/UB0yI6yies+9mEMIgFGgev
 F0gmNNugh2FqZ2CTpOKve7cFyev0X5dbbDlttL6np7Qu4BJTOeO36BuEn
 jaVviTy2qL6tve4sU6jf/2tpIOBzfDzCOQj1pT86zXKnRm6sz+1xz3dYZ
 PM7z7zuYNMrmiuJMU2IkyYeVHihfJiNcXXp/viG5aORKPEHUHICfNXhEQ
 /IymRaJQbMjJcQ9p8e3XcKOWl6In4uhn7hRSFN6csjw0w1ngP5Xi1kquX
 0/Eraop205P7k7KcZOYAay5wPzC/nZPXhGH/DhRgkakGKf6ChxolwIVNu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a5yfkLeh
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: move ARFS rmap
 management to core
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

Hi Ahmed,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Ahmed-Zaki/net-move-ARFS-rmap-management-to-core/20250104-084501
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250104004314.208259-2-ahmed.zaki%40intel.com
patch subject: [PATCH net-next v3 1/6] net: move ARFS rmap management to core
config: arm64-randconfig-002-20250104 (https://download.01.org/0day-ci/archive/20250104/202501041245.SDb1oN01-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250104/202501041245.SDb1oN01-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501041245.SDb1oN01-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/amazon/ena/ena_netdev.c:165:46: error: too few arguments to function call, expected 2, have 1
           return netif_enable_cpu_rmap(adapter->netdev);
                  ~~~~~~~~~~~~~~~~~~~~~                ^
   include/linux/netdevice.h:2769:5: note: 'netif_enable_cpu_rmap' declared here
   int netif_enable_cpu_rmap(struct net_device *dev, unsigned int num_irqs);
       ^
   1 error generated.


vim +165 drivers/net/ethernet/amazon/ena/ena_netdev.c

   161	
   162	static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
   163	{
   164	#ifdef CONFIG_RFS_ACCEL
 > 165		return netif_enable_cpu_rmap(adapter->netdev);
   166	#else
   167		return 0;
   168	#endif /* CONFIG_RFS_ACCEL */
   169	}
   170	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
