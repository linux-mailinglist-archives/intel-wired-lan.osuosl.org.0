Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5591289A0BC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 17:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ACD8418BC;
	Fri,  5 Apr 2024 15:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tGVwHwxVNJFZ; Fri,  5 Apr 2024 15:12:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5BBA8418D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712329978;
	bh=gWn8q/fuD0Ksxh93qr1hTCcfeZ3INVJpCLmk/QH++yo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fghvKARzrC9YKxHl7gxR02gDF2CJa8Du14yDG1TJGUvu2xeewCb8bOQSFQZhNBlYu
	 DN9Cj+SfNSvP/qFbo66dSySemdXkhz4EZASRgzymtc8UkKaa0hFm7u/mcrJAYQqi6E
	 wRghJ5V/15CuaHpZYDGPZy0CtGDxeGafLB+98Egc0cR7nrkdnfoAV9QyvAt00yGLkq
	 8ckLto8HPohmG1Hv8AUFL1OXcW+/lthlgGytIUhXcLmKnIgArw81IyFGaohbX7wsT6
	 ezS75Rej/nxTm6eDL+hx6jqMO+L/SD98o+jgpq3LUGLfN5Ckqgu4wvL9UbOMeLvLaV
	 JtWrAKEcxQArQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BBA8418D2;
	Fri,  5 Apr 2024 15:12:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2F8D1BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E79960BFC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:12:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hzBaLyTO1PMM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 15:12:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 63E3C60B4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63E3C60B4B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63E3C60B4B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 15:12:53 +0000 (UTC)
X-CSE-ConnectionGUID: DtiMuSRgRg6OlMKwpA/1NA==
X-CSE-MsgGUID: gj5dcjK9TNaVYwLBp4FyEQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7502536"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7502536"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 08:12:52 -0700
X-CSE-ConnectionGUID: ShImGe+yR0S9fck85jRqSA==
X-CSE-MsgGUID: bC4a0k0GTU2ce6xjuGLv2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23928411"
Received: from lkp-server01.sh.intel.com (HELO e61807b1d151) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 05 Apr 2024 08:12:50 -0700
Received: from kbuild by e61807b1d151 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rslFH-0002OC-2K;
 Fri, 05 Apr 2024 15:12:47 +0000
Date: Fri, 5 Apr 2024 23:11:52 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202404052226.aq0o8qIE-lkp@intel.com>
References: <20240405100648.144756-19-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240405100648.144756-19-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712329973; x=1743865973;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=L+EstHcfYpzRZ/TLP9//CpcXFrDN3YqLhlpvPktxKnQ=;
 b=eYpRAC47e1VX55ZnlwE5XCK7K59RxVt7mYoRBsCbV3XtGLUbnFuVZ5i/
 vrWhvoL5K/bDJHAle0mmZbuXBr9rUStO85i0y43tZvFp3YI0+r2TI01KW
 fs6FI3RuGp3zyKC8JMI9xlhM7neZF6OnDkGVcGP2y5lvLvzh2EsOQV34P
 pBkLVqxgNEJ2ydPIde0nnXwOO+5NMjvV4G7uJeeVsrlDk8sxt2OIXN8Jd
 WYvQoJWj4nRgBxqMg9UkTOS//vtiHxwHHQuUnL48CoZ8nQCdVswzr+hCJ
 E9dU2ieH00q9n+8+J6SfUAo47fpRrMur8q6n15oJ8EhL5yXZNj5NSV3/D
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eYpRAC47
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
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240405/202404052226.aq0o8qIE-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240405/202404052226.aq0o8qIE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202404052226.aq0o8qIE-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_read_cgu_reg_e82x':
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:244:25: warning: initialization of 'unsigned int' from 'u32 *' {aka 'unsigned int *'} makes integer from pointer without a cast [-Wint-conversion]
     244 |                 .data = val
         |                         ^~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:244:25: note: (near initialization for 'cgu_msg.data')
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_ptp_reset_ts_memory_quad_e82x':
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:1167:58: warning: conversion from 'long unsigned int' to 'u32' {aka 'unsigned int'} changes value from '18446744073709551614' to '4294967294' [-Woverflow]
    1167 |         ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~Q_REG_TS_CTRL_M);


vim +1167 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

  1155	
  1156	/**
  1157	 * ice_ptp_reset_ts_memory_quad_e82x - Clear all timestamps from the quad block
  1158	 * @hw: pointer to the HW struct
  1159	 * @quad: the quad to read from
  1160	 *
  1161	 * Clear all timestamps from the PHY quad block that is shared between the
  1162	 * internal PHYs on the E822 devices.
  1163	 */
  1164	void ice_ptp_reset_ts_memory_quad_e82x(struct ice_hw *hw, u8 quad)
  1165	{
  1166		ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, Q_REG_TS_CTRL_M);
> 1167		ice_write_quad_reg_e82x(hw, quad, Q_REG_TS_CTRL, ~Q_REG_TS_CTRL_M);
  1168	}
  1169	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
