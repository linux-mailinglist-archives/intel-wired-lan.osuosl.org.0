Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E34899EE1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 16:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48A994016D;
	Fri,  5 Apr 2024 14:00:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rsxbJ6AePGZJ; Fri,  5 Apr 2024 14:00:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEEA441580
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712325602;
	bh=2Kv6qMWAmnaqt3cgud+S76vNqEBfICL6nSWnd2Ljxzc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LgcFxoaNf65zophsK9eJhedrLf3tQoG82LrtCBlORAxsS5mNhV8j5cCZODT77Pfsj
	 Y7U24QuLbcmmzO5A8cmb5YIIwIOPDLcGesGO5s0Mlm+tABq/o5t/aq9sjFpLfP2yUg
	 FwnBdJQTuZLRtqU1w0gGPjRYvukJPvAxnwfsDnZgXLETRWJXb+ovANaMaCdzGqmGJh
	 fI0YwOTqt9Om+yY7PBuLvtJI9JRv7KvYBUJHPRE+P0ZtjS9N+JTeFjaX9BtdafNqve
	 iQRBmfG41FyaLat+u8hPmTdXxf+bLzZeiDTHIgNvKRvu/Qx04pCcf9C73TanuQCUd1
	 ZeEsZN29OXrPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEEA441580;
	Fri,  5 Apr 2024 14:00:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98F6A1BF232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 13:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8301F41592
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 13:59:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dq2uQrUYMQI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 13:59:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DAA864016D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DAA864016D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DAA864016D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 13:59:52 +0000 (UTC)
X-CSE-ConnectionGUID: JRSbavVfQ9eeyYOIxmtCNg==
X-CSE-MsgGUID: U5yCPTuXRW+fjAJd3IquSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="10625018"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="10625018"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 06:59:51 -0700
X-CSE-ConnectionGUID: BwDrBxxWQ82yQRx8HnmAug==
X-CSE-MsgGUID: VtAYIJv0QNmKeaVe/X/lwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19194085"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 05 Apr 2024 06:59:48 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rsk6c-0002LC-0U;
 Fri, 05 Apr 2024 13:59:46 +0000
Date: Fri, 5 Apr 2024 21:58:56 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202404052136.o9Cbreqn-lkp@intel.com>
References: <20240405100648.144756-19-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405100648.144756-19-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712325593; x=1743861593;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=F85+f1rlvH5QrZHeUd9aBhK9Uht+YIMvPImsvnkMVnE=;
 b=LHIjff4UrfkWCXHw9XHGPZ9gKkquBjSTUwPx+93y//vPYoSZSTRuxBKF
 JDkn9L05gSVGmJwFSsfDCyawNOdbwZhA+am6IteeTbDqRKqzogmTIv1xB
 HdRvIr0i8gARA+S3PEU1EVkjxxQdCG0fBjsNgrsMKgGW0aenQOt35S284
 81uzBPSgiyyioTYKmOhAuBXSZ8SpczlyhfolFVoIH4r8unXKMFx7gVy2b
 eGlZarkoVyb053Q+ncXohVE2EA8gj0GzWdxLKPxyOlnlMpZJwKvvAUd1z
 YlNdIOwFRoqRiRQmxRGyl+zl03qM9vsjTtQkxTR5fwklBgpn0u32qcwVD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LHIjff4U
Subject: Re: [Intel-wired-lan] [PATCH v6 iwl-next 05/12] ice: Move CGU block
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 0a3074e5b4b523fb60f4ae9fb32bb180ea1fb6ef]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Introduce-ice_ptp_hw-struct/20240405-180941
base:   0a3074e5b4b523fb60f4ae9fb32bb180ea1fb6ef
patch link:    https://lore.kernel.org/r/20240405100648.144756-19-karol.kolacinski%40intel.com
patch subject: [PATCH v6 iwl-next 05/12] ice: Move CGU block
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20240405/202404052136.o9Cbreqn-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240405/202404052136.o9Cbreqn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404052136.o9Cbreqn-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_read_cgu_reg_e82x':
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:244:25: warning: initialization of 'unsigned int' from 'u32 *' {aka 'unsigned int *'} makes integer from pointer without a cast [-Wint-conversion]
     244 |                 .data = val
         |                         ^~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:244:25: note: (near initialization for 'cgu_msg.data')
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
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:908:16: note: in expansion of macro 'FIELD_GET'
     908 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                ^~~~~~~~~
   include/linux/bits.h:35:38: note: in expansion of macro '__GENMASK'
      35 |         (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                                      ^~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:41: note: in expansion of macro 'GENMASK'
     381 | #define P_REG_40B_HIGH_M                GENMASK(39, 8)
         |                                         ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:908:26: note: in expansion of macro 'P_REG_40B_HIGH_M'
     908 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
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
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:908:16: note: in expansion of macro 'FIELD_GET'
     908 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                ^~~~~~~~~
   include/linux/bits.h:35:38: note: in expansion of macro '__GENMASK'
      35 |         (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                                      ^~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:41: note: in expansion of macro 'GENMASK'
     381 | #define P_REG_40B_HIGH_M                GENMASK(39, 8)
         |                                         ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:908:26: note: in expansion of macro 'P_REG_40B_HIGH_M'
     908 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
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
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:908:16: note: in expansion of macro 'FIELD_GET'
     908 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                ^~~~~~~~~
   include/linux/bits.h:35:38: note: in expansion of macro '__GENMASK'
      35 |         (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                                      ^~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.h:381:41: note: in expansion of macro 'GENMASK'
     381 | #define P_REG_40B_HIGH_M                GENMASK(39, 8)
         |                                         ^~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:908:26: note: in expansion of macro 'P_REG_40B_HIGH_M'
     908 |         high = FIELD_GET(P_REG_40B_HIGH_M, val);
         |                          ^~~~~~~~~~~~~~~~
   include/uapi/linux/bits.h:9:19: warning: right shift count is negative [-Wshift-count-negative]
       9 |          (~_UL(0) >> (__BITS_PER_LONG - 1 - (h))))
         |                   ^~
   include/linux/compiler_types.h:440:23: note: in definition of macro '__compiletime_assert'
     440 |                 if (!(condition))                                       \


vim +244 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

   228	
   229	/**
   230	 * ice_read_cgu_reg_e82x - Read a CGU register
   231	 * @hw: pointer to the HW struct
   232	 * @addr: Register address to read
   233	 * @val: storage for register value read
   234	 *
   235	 * Read the contents of a register of the Clock Generation Unit. Only
   236	 * applicable to E822 devices.
   237	 */
   238	static int ice_read_cgu_reg_e82x(struct ice_hw *hw, u32 addr, u32 *val)
   239	{
   240		struct ice_sbq_msg_input cgu_msg = {
   241			.opcode = ice_sbq_msg_rd,
   242			.dest_dev = cgu,
   243			.msg_addr_low = addr,
 > 244			.data = val
   245		};
   246		int err;
   247	
   248		cgu_msg.opcode = ice_sbq_msg_rd;
   249		cgu_msg.dest_dev = cgu;
   250		cgu_msg.msg_addr_low = addr;
   251		cgu_msg.msg_addr_high = 0x0;
   252	
   253		err = ice_sbq_rw_reg(hw, &cgu_msg);
   254		if (err) {
   255			ice_debug(hw, ICE_DBG_PTP, "Failed to read CGU register 0x%04x, err %d\n",
   256				  addr, err);
   257			return err;
   258		}
   259	
   260		*val = cgu_msg.data;
   261	
   262		return 0;
   263	}
   264	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
