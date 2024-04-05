Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF0589A036
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 16:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C6EC4183C;
	Fri,  5 Apr 2024 14:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id InyOqKH_w366; Fri,  5 Apr 2024 14:51:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7EFA41848
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712328717;
	bh=mVxUy4MQj6+BI8fOX+zODS4WjilYBg8QEsXYepcPl/M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3cyZ7nKlOQ2phnJdP3OydvR1wcKGxNVxyUVDFNOb8sRGqZpBA1VTFYufsWDKZMZ6a
	 7u5Xtq9UEaXndl+XsRFtVpy2cSMphGAOEDGpDXnAFmeM3XVbDAaPwQAU1DT+AjVz/7
	 p7lPSLO/xKaWnQx2JylPt5nt5pkKSVOL/K/nR7Oz5qhNOtJ/HcUfLOtSkMxmJkr2HP
	 XXehOJOHq9S8bKPRE1nAutsZFviO2qYg40onfueM/uXkdZL9RwAYUb9hZdC5N/rz5R
	 BPUEfHAXSHw/6y6SG794uUalcpqOlpxcFPXliZUA9KUyF6kCfNo7eyveeEd1IVVtQF
	 q5jhOPf+7D9EA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7EFA41848;
	Fri,  5 Apr 2024 14:51:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E2151BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 14:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36D3B8318C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 14:51:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2zHwqlfDnLS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 14:51:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DCBC68317B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCBC68317B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DCBC68317B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 14:51:52 +0000 (UTC)
X-CSE-ConnectionGUID: cn2Z6YBCTne5ABonU9x9gw==
X-CSE-MsgGUID: eUuCTZruRPe/FOWolMGJcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="18269595"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="18269595"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 07:51:52 -0700
X-CSE-ConnectionGUID: k/EOB6jQRkOU6RidrNjgCQ==
X-CSE-MsgGUID: /uoJ8pIiTsWQlpgRF2lYVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19285030"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 05 Apr 2024 07:51:49 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rskux-0002NR-12;
 Fri, 05 Apr 2024 14:51:47 +0000
Date: Fri, 5 Apr 2024 22:51:15 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202404052227.vqijAkBX-lkp@intel.com>
References: <20240405100648.144756-21-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405100648.144756-21-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712328713; x=1743864713;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y6aGInTAAg2qclybmOt7SjTmo6OZ/1NUmOKqsUgiqCY=;
 b=VX932csNx2UoLBki27V5vgJxgUHp7RixJoaPKeHd4ijztRv8Vua0IHt2
 bHrfW445n1k/DIusjr31CHq1FEJ5weHeWY13dem4zpVPVUwGRBzZKfMXu
 qcz/xjEGVyPzn7WvULwut2vcm8t0TKoBK+wg8RPqE+rxXQC57tTWlAWCd
 A18n+kPoQL8IPvnfqVto3+Px81O6IGewslyFyFIZ41gSJ0FdAif5aLe2D
 y4MAG3OmTRybFfMLoEN6DT22Fre8VbTTVnXmJG9iDIQ0MbiU3rEQCuxzP
 5c+Yh3gRSpY/BEe1CzMJ032/BouHCIwMneV+3/b/08vfEwMDbiLY/Op41
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VX932csN
Subject: Re: [Intel-wired-lan] [PATCH v6 iwl-next 07/12] ice: Introduce
 ETH56G PHY model for E825C products
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
Cc: Michal Michalik <michal.michalik@intel.com>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 oe-kbuild-all@lists.linux.dev, Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build errors:

[auto build test ERROR on 0a3074e5b4b523fb60f4ae9fb32bb180ea1fb6ef]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Introduce-ice_ptp_hw-struct/20240405-180941
base:   0a3074e5b4b523fb60f4ae9fb32bb180ea1fb6ef
patch link:    https://lore.kernel.org/r/20240405100648.144756-21-karol.kolacinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH v6 iwl-next 07/12] ice: Introduce ETH56G PHY model for E825C products
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20240405/202404052227.vqijAkBX-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240405/202404052227.vqijAkBX-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404052227.vqijAkBX-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_read_cgu_reg_e82x':
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:245:25: warning: initialization of 'unsigned int' from 'u32 *' {aka 'unsigned int *'} makes integer from pointer without a cast [-Wint-conversion]
     245 |                 .data = val
         |                         ^~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:245:25: note: (near initialization for 'cgu_msg.data')
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_write_40b_phy_reg_eth56g':
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:1035:27: error: 'P_REG_40B_HIGH_S' undeclared (first use in this function); did you mean 'P_REG_40B_HIGH_M'?
    1035 |         hi = (u32)(val >> P_REG_40B_HIGH_S);
         |                           ^~~~~~~~~~~~~~~~
         |                           P_REG_40B_HIGH_M
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:1035:27: note: each undeclared identifier is reported only once for each function it appears in
   In file included from <command-line>:
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_write_40b_phy_reg_e82x':
   include/uapi/linux/bits.h:9:19: warning: right shift count is negative [-Wshift-count-negative]
       9 |          (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
         |                   ^~
   include/linux/compiler_types.h:440:23: note: in definition of macro '__compiletime_assert'
     440 |                 if (!(condition))                                       \
         |                       ^~~~~~~~~
   include/linux/compiler_types.h:460:9: note: in expansion of macro '_compiletime_assert'
     460 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |         ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:65:17: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      65 |                 BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),          \
         |                 ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:155:17: note: in expansion of macro '__BF_FIELD_CHECK'
     155 |                 __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: ");       \
         |                 ^~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2529:16: note: in expansion of macro 'FIELD_GET'
    2529 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                ^~~~~~~~~
   include/linux/bits.h:35:38: note: in expansion of macro '__GENMASK'
      35 |         (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                                      ^~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:521:41: note: in expansion of macro 'GENMASK'
     521 | #define P_REG_40B_HIGH_M                GENMASK(39, 8)
         |                                         ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2529:26: note: in expansion of macro 'P_REG_40B_HIGH_M'
    2529 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                          ^~~~~~~~~~~~~~~~
   include/uapi/linux/bits.h:9:19: warning: right shift count is negative [-Wshift-count-negative]
       9 |          (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
         |                   ^~
   include/linux/compiler_types.h:440:23: note: in definition of macro '__compiletime_assert'
     440 |                 if (!(condition))                                       \
         |                       ^~~~~~~~~
   include/linux/compiler_types.h:460:9: note: in expansion of macro '_compiletime_assert'
     460 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |         ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:67:17: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      67 |                 BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero");    \
         |                 ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:155:17: note: in expansion of macro '__BF_FIELD_CHECK'
     155 |                 __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: ");       \
         |                 ^~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2529:16: note: in expansion of macro 'FIELD_GET'
    2529 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                ^~~~~~~~~
   include/linux/bits.h:35:38: note: in expansion of macro '__GENMASK'
      35 |         (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                                      ^~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:521:41: note: in expansion of macro 'GENMASK'
     521 | #define P_REG_40B_HIGH_M                GENMASK(39, 8)
         |                                         ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2529:26: note: in expansion of macro 'P_REG_40B_HIGH_M'
    2529 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                          ^~~~~~~~~~~~~~~~
   include/uapi/linux/bits.h:9:19: warning: right shift count is negative [-Wshift-count-negative]
       9 |          (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
         |                   ^~
   include/linux/compiler_types.h:440:23: note: in definition of macro '__compiletime_assert'
     440 |                 if (!(condition))                                       \
         |                       ^~~~~~~~~
   include/linux/compiler_types.h:460:9: note: in expansion of macro '_compiletime_assert'
     460 |         _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |         ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:68:17: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      68 |                 BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?           \
         |                 ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:155:17: note: in expansion of macro '__BF_FIELD_CHECK'
     155 |                 __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: ");       \
         |                 ^~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2529:16: note: in expansion of macro 'FIELD_GET'
    2529 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                ^~~~~~~~~
   include/linux/bits.h:35:38: note: in expansion of macro '__GENMASK'
      35 |         (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                                      ^~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:521:41: note: in expansion of macro 'GENMASK'
     521 | #define P_REG_40B_HIGH_M                GENMASK(39, 8)
         |                                         ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:2529:26: note: in expansion of macro 'P_REG_40B_HIGH_M'
    2529 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                          ^~~~~~~~~~~~~~~~
   include/uapi/linux/bits.h:9:19: warning: right shift count is negative [-Wshift-count-negative]
       9 |          (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
         |                   ^~
   include/linux/compiler_types.h:440:23: note: in definition of macro '__compiletime_assert'


vim +1035 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

  1010	
  1011	/**
  1012	 * ice_write_40b_phy_reg_eth56g - Write a 40b value to the PHY
  1013	 * @hw: pointer to the HW struct
  1014	 * @port: port to write to
  1015	 * @low_addr: offset of the low register
  1016	 * @val: 40b value to write
  1017	 * @res_type: resource type
  1018	 *
  1019	 * Check if the caller has specified a known 40 bit register offset and write
  1020	 * provided 40b value to the two associated registers by splitting it up into
  1021	 * two chunks, the lower 8 bits and the upper 32 bits.
  1022	 */
  1023	static int ice_write_40b_phy_reg_eth56g(struct ice_hw *hw, u8 port,
  1024						u16 low_addr, u64 val,
  1025						enum eth56g_res_type res_type)
  1026	{
  1027		u16 high_addr;
  1028		u32 lo, hi;
  1029		int err;
  1030	
  1031		if (!ice_is_40b_phy_reg_eth56g(low_addr, &high_addr))
  1032			return -EINVAL;
  1033	
  1034		lo = (u32)(val & P_REG_40B_LOW_M);
> 1035		hi = (u32)(val >> P_REG_40B_HIGH_S);
  1036	
  1037		err = ice_write_port_eth56g(hw, port, low_addr, lo, res_type);
  1038		if (err) {
  1039			ice_debug(hw, ICE_DBG_PTP, "Failed to write to low register 0x%08x\n, err %d",
  1040				  low_addr, err);
  1041			return err;
  1042		}
  1043	
  1044		err = ice_write_port_eth56g(hw, port, high_addr, hi, res_type);
  1045		if (err) {
  1046			ice_debug(hw, ICE_DBG_PTP, "Failed to write to high register 0x%08x\n, err %d",
  1047				  high_addr, err);
  1048			return err;
  1049		}
  1050	
  1051		return 0;
  1052	}
  1053	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
