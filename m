Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0583B51720
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 14:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66F7260DD3;
	Wed, 10 Sep 2025 12:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id islf0OadT6d7; Wed, 10 Sep 2025 12:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE44561077
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757507973;
	bh=xOKW8ccHoqhGbGAQ09Sz5O+JnSOD6Vn5RjbsnuVYVwY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SteSgdDSz1TOtrjmnP9Kj7znJJ0Ubveyac+R1dv19Tv89tZaTO+W66mi7ji6epSIH
	 CaMVqkzTzgxTBynopQhI012TnV/6bQPqVGfISDtg4SZV1YAA64DsN7ikMdCWtBGa3N
	 NdCHFUO9O8PAmTO9t4B8D14gx3NvEl/AHlw+SsGTC8WazhKU1XjVIu0FlfDk5VhR8U
	 EGthMaqxhriXxK0t0F6ISjSaiC58i1Th5nL02dvC0CtMsnamCJnDMFfcJx2BEsCWWs
	 TyNAb8tz3EF8B7BVWLpr13yxBpgQU6OqGCz5JTA17onxiSqbnhikBZks+nAMwmbN3s
	 5sq3KzJdQ1a+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE44561077;
	Wed, 10 Sep 2025 12:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 52DA810E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 12:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5016741262
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 12:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9rPGu5jk2-zn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 12:39:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 850344124F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 850344124F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 850344124F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 12:39:31 +0000 (UTC)
X-CSE-ConnectionGUID: rNsYJWUkSSaO8deWi4dBlA==
X-CSE-MsgGUID: 2obR8/Q0TrC8p2zIniuNBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="77271543"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="77271543"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 05:39:18 -0700
X-CSE-ConnectionGUID: xdKiQp0QRPGDqB5z5waSiA==
X-CSE-MsgGUID: vepjTz59ShWvHR9L2Jlc1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="197052738"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 10 Sep 2025 05:39:14 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uwK6R-0005vj-20;
 Wed, 10 Sep 2025 12:39:11 +0000
Date: Wed, 10 Sep 2025 20:38:31 +0800
From: kernel test robot <lkp@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>
Cc: oe-kbuild-all@lists.linux.dev, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Yael Chemla <ychemla@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>
Message-ID: <202509102020.zpP7Pu8o-lkp@intel.com>
References: <20250909184216.1524669-4-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909184216.1524669-4-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757507972; x=1789043972;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pgMI66MNaYeqniPAkqZSK4XrtTH6hcO+V9XqXpP+tMA=;
 b=YaKAb8t94o6YskYHYaJeCk3LvGywmzC1l4jgB0BANu8F2AmuKEzfMOW3
 4kISZRlh51ZGiDLIsJoVFBsNuxN79J5fimzpkOkT/3Ny33fZiU/9SvlZP
 AAumagUftqek0aQaTMmwCY92kL0W+0jCYNhDmGVW3zi8SV2k4C0Nsc882
 31YHMMK+gNZnno/SarYbNZ4bmZxpIClRoXD1ffTsKvLIkEIciK992t+A2
 WNQ733G8M/t5hM9AxIb0AqlZEN3B/Wg6E4p6t/NwTNrRiQ/e/Ae8NiF+R
 jC5070Vqx9HDwHZHKCK54Lc12+wp9msOluoDInxkPGyGirW3lHjqya+rQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YaKAb8t9
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] net/mlx5e: Add logic to
 read RS-FEC histogram bin ranges from PPHCR
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

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Vadim-Fedorenko/ethtool-add-FEC-bins-histogramm-report/20250910-025057
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250909184216.1524669-4-vadim.fedorenko%40linux.dev
patch subject: [PATCH net-next 3/4] net/mlx5e: Add logic to read RS-FEC histogram bin ranges from PPHCR
config: i386-buildonly-randconfig-002-20250910 (https://download.01.org/0day-ci/archive/20250910/202509102020.zpP7Pu8o-lkp@intel.com/config)
compiler: gcc-13 (Debian 13.3.0-16) 13.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250910/202509102020.zpP7Pu8o-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509102020.zpP7Pu8o-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from arch/x86/include/asm/string.h:3,
                    from arch/x86/include/asm/cpuid/api.h:10,
                    from arch/x86/include/asm/processor.h:19,
                    from include/linux/sched.h:13,
                    from drivers/net/ethernet/mellanox/mlx5/core/mlx5_core.h:38,
                    from drivers/net/ethernet/mellanox/mlx5/core/lib/events.h:7,
                    from drivers/net/ethernet/mellanox/mlx5/core/en_stats.c:33:
   drivers/net/ethernet/mellanox/mlx5/core/en_stats.c: In function 'fec_rs_histogram_fill_ranges':
>> drivers/net/ethernet/mellanox/mlx5/core/en_stats.c:1505:43: warning: argument to 'sizeof' in '__builtin_memset' call is the same expression as the destination; did you mean to dereference it? [-Wsizeof-pointer-memaccess]
    1505 |         memset(priv->fec_ranges, 0, sizeof(priv->fec_ranges));
         |                                           ^
   arch/x86/include/asm/string_32.h:194:52: note: in definition of macro 'memset'
     194 | #define memset(s, c, count) __builtin_memset(s, c, count)
         |                                                    ^~~~~


vim +1505 drivers/net/ethernet/mellanox/mlx5/core/en_stats.c

  1494	
  1495	static u8
  1496	fec_rs_histogram_fill_ranges(struct mlx5e_priv *priv,
  1497				     const struct ethtool_fec_hist_range **ranges)
  1498	{
  1499		struct mlx5_core_dev *mdev = priv->mdev;
  1500		u32 out[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
  1501		u32 in[MLX5_ST_SZ_DW(pphcr_reg)] = {0};
  1502		int sz = MLX5_ST_SZ_BYTES(pphcr_reg);
  1503		u8 active_hist_type, num_of_bins;
  1504	
> 1505		memset(priv->fec_ranges, 0, sizeof(priv->fec_ranges));
  1506		MLX5_SET(pphcr_reg, in, local_port, 1);
  1507		if (mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PPHCR, 0, 0))
  1508			return 0;
  1509	
  1510		active_hist_type = MLX5_GET(pphcr_reg, out, active_hist_type);
  1511		if (!active_hist_type)
  1512			return 0;
  1513	
  1514		num_of_bins = MLX5_GET(pphcr_reg, out, num_of_bins);
  1515		if (WARN_ON_ONCE(num_of_bins > MLX5E_FEC_RS_HIST_MAX))
  1516			return 0;
  1517	
  1518		for (u8 i = 0; i < num_of_bins; i++) {
  1519			void *bin_range = MLX5_ADDR_OF(pphcr_reg, out, bin_range[i]);
  1520	
  1521			priv->fec_ranges[i].high = MLX5_GET(bin_range_layout, bin_range,
  1522							    high_val);
  1523			priv->fec_ranges[i].low = MLX5_GET(bin_range_layout, bin_range,
  1524							   low_val);
  1525		}
  1526		*ranges = priv->fec_ranges;
  1527	
  1528		return num_of_bins;
  1529	}
  1530	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
