Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3FC7DBDC2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 17:24:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67C9860B14;
	Mon, 30 Oct 2023 16:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67C9860B14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698683090;
	bh=uPQT0AqcxuoVxBowwbp3gydrBcY/L/o+pzlyNruIfPQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2htjpIrdNiwKkjInjT7sUT2/2mGXvPWs7Yicm2g8fZKpdlw6IGm017/ey2EEEFoX4
	 9O5G70ksyExm3TqK/WgB58XlDOtbt72tgJKsUbSg5tq+zsvdRqSXuCgAPqWRkhJlRa
	 5KT20O3OoOZxsCnTrt/PfoR4c3PNq0bZFM0rbTYh9npV8rPde7x47niky/gcJzZaVK
	 KAWChPSJO15Q9fkZ96htNsGQoge32OB63D67w19LOwnJLNmw1sB9Tx2XXxDcgFwGM1
	 Yi/NZyqFG8D3CnnPWIKh0O/qvURskn56FyqwdeMgJvYYA82wkVnzCKShKP6ysRzduY
	 UyKJAccS0SOZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Kw5hMh_Ub6g; Mon, 30 Oct 2023 16:24:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2613160AA8;
	Mon, 30 Oct 2023 16:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2613160AA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D8A91BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 16:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7D32415C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 16:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7D32415C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MmR7-MajhFZU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Oct 2023 16:24:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 85CB1415A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Oct 2023 16:24:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85CB1415A4
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="419224916"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="419224916"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 09:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="933818179"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="933818179"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Oct 2023 09:24:38 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qxV47-000DPP-1e;
 Mon, 30 Oct 2023 16:24:35 +0000
Date: Tue, 31 Oct 2023 00:23:35 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202310310036.7Cgll3Lm-lkp@intel.com>
References: <20231026105955.282546-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231026105955.282546-1-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698683082; x=1730219082;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8Hd1Suavl8irXLV5dwiCITrLgudmw7DM6XwD+5bIeqc=;
 b=ikAr+MqwV5HxzA1PmIc/gsKlEwQrNqKoZUmA1en087DcfDAmx2J9eX2j
 WqN0lBtgjNjazkMFuNIZLCSp1FhX251Z96PPEV+YNUU/bwZXCOZVgoGSo
 dSmJknN6bN1Rl1QsZOS8oAe0+u4FkVHfism4r9k2DrxNiZFILvrzit/se
 NiOj4mpRx7vXKg++r0e+FKkmXjA6rZxsiaP4QFYwRZUIh5+2+vil2zAHe
 YdlvGgGikpc0DOgEo22F5Usz9zVlpnagH9Lu2xT7vmJRL0Wh5foqEAU39
 18+5j+x6uo1ipd4WUVIFITYHidCsuaEfqGLKuy4RBVRQ39SiPpxHJ4j8o
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ikAr+Mqw
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove unnecessary
 discarding of timestamps
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jesse.brandeburg@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 oe-kbuild-all@lists.linux.dev, Jacob Keller <jacob.e.keller@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build errors:

[auto build test ERROR on b57a67bab47efc24e7ea7bd626aa517ac76c4fc9]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-remove-unnecessary-discarding-of-timestamps/20231026-192456
base:   b57a67bab47efc24e7ea7bd626aa517ac76c4fc9
patch link:    https://lore.kernel.org/r/20231026105955.282546-1-karol.kolacinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next] ice: remove unnecessary discarding of timestamps
config: arc-allmodconfig (https://download.01.org/0day-ci/archive/20231031/202310310036.7Cgll3Lm-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231031/202310310036.7Cgll3Lm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310310036.7Cgll3Lm-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_ptp.c: In function 'ice_ptp_rebuild_owner':
>> drivers/net/ethernet/intel/ice/ice_ptp.c:2509:9: error: implicit declaration of function 'ice_ptp_flush_all_tx_tracker'; did you mean 'ice_ptp_flush_tx_tracker'? [-Werror=implicit-function-declaration]
    2509 |         ice_ptp_flush_all_tx_tracker(pf);
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |         ice_ptp_flush_tx_tracker
   cc1: some warnings being treated as errors


vim +2509 drivers/net/ethernet/intel/ice/ice_ptp.c

0c095c9988dd713 Karol Kolacinski 2023-10-25  2454  
4809671015a1bd2 Karol Kolacinski 2021-12-20  2455  /**
9ea8140e2f947cb Jacob Keller     2023-10-25  2456   * ice_ptp_rebuild_owner - Initialize PTP clock owner after reset
4809671015a1bd2 Karol Kolacinski 2021-12-20  2457   * @pf: Board private structure
9ea8140e2f947cb Jacob Keller     2023-10-25  2458   *
9ea8140e2f947cb Jacob Keller     2023-10-25  2459   * Companion function for ice_ptp_rebuild() which handles tasks that only the
9ea8140e2f947cb Jacob Keller     2023-10-25  2460   * PTP clock owner instance should perform.
4809671015a1bd2 Karol Kolacinski 2021-12-20  2461   */
9ea8140e2f947cb Jacob Keller     2023-10-25  2462  static int ice_ptp_rebuild_owner(struct ice_pf *pf)
4809671015a1bd2 Karol Kolacinski 2021-12-20  2463  {
4809671015a1bd2 Karol Kolacinski 2021-12-20  2464  	struct ice_ptp *ptp = &pf->ptp;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2465  	struct ice_hw *hw = &pf->hw;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2466  	struct timespec64 ts;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2467  	u64 time_diff;
d695241a0a0ea02 Jacob Keller     2023-10-25  2468  	int err;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2469  
b2ee72565cd0ee2 Jacob Keller     2021-10-13  2470  	err = ice_ptp_init_phc(hw);
4809671015a1bd2 Karol Kolacinski 2021-12-20  2471  	if (err)
9ea8140e2f947cb Jacob Keller     2023-10-25  2472  		return err;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2473  
4809671015a1bd2 Karol Kolacinski 2021-12-20  2474  	/* Acquire the global hardware lock */
4809671015a1bd2 Karol Kolacinski 2021-12-20  2475  	if (!ice_ptp_lock(hw)) {
4809671015a1bd2 Karol Kolacinski 2021-12-20  2476  		err = -EBUSY;
9ea8140e2f947cb Jacob Keller     2023-10-25  2477  		return err;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2478  	}
4809671015a1bd2 Karol Kolacinski 2021-12-20  2479  
4809671015a1bd2 Karol Kolacinski 2021-12-20  2480  	/* Write the increment time value to PHY and LAN */
78267d0c9cabf09 Jacob Keller     2021-10-13  2481  	err = ice_ptp_write_incval(hw, ice_base_incval(pf));
4809671015a1bd2 Karol Kolacinski 2021-12-20  2482  	if (err) {
4809671015a1bd2 Karol Kolacinski 2021-12-20  2483  		ice_ptp_unlock(hw);
9ea8140e2f947cb Jacob Keller     2023-10-25  2484  		return err;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2485  	}
4809671015a1bd2 Karol Kolacinski 2021-12-20  2486  
4809671015a1bd2 Karol Kolacinski 2021-12-20  2487  	/* Write the initial Time value to PHY and LAN using the cached PHC
4809671015a1bd2 Karol Kolacinski 2021-12-20  2488  	 * time before the reset and time difference between stopping and
4809671015a1bd2 Karol Kolacinski 2021-12-20  2489  	 * starting the clock.
4809671015a1bd2 Karol Kolacinski 2021-12-20  2490  	 */
4809671015a1bd2 Karol Kolacinski 2021-12-20  2491  	if (ptp->cached_phc_time) {
4809671015a1bd2 Karol Kolacinski 2021-12-20  2492  		time_diff = ktime_get_real_ns() - ptp->reset_time;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2493  		ts = ns_to_timespec64(ptp->cached_phc_time + time_diff);
4809671015a1bd2 Karol Kolacinski 2021-12-20  2494  	} else {
4809671015a1bd2 Karol Kolacinski 2021-12-20  2495  		ts = ktime_to_timespec64(ktime_get_real());
4809671015a1bd2 Karol Kolacinski 2021-12-20  2496  	}
4809671015a1bd2 Karol Kolacinski 2021-12-20  2497  	err = ice_ptp_write_init(pf, &ts);
4809671015a1bd2 Karol Kolacinski 2021-12-20  2498  	if (err) {
4809671015a1bd2 Karol Kolacinski 2021-12-20  2499  		ice_ptp_unlock(hw);
9ea8140e2f947cb Jacob Keller     2023-10-25  2500  		return err;
4809671015a1bd2 Karol Kolacinski 2021-12-20  2501  	}
4809671015a1bd2 Karol Kolacinski 2021-12-20  2502  
4809671015a1bd2 Karol Kolacinski 2021-12-20  2503  	/* Release the global hardware lock */
4809671015a1bd2 Karol Kolacinski 2021-12-20  2504  	ice_ptp_unlock(hw);
4809671015a1bd2 Karol Kolacinski 2021-12-20  2505  
b57a67bab47efc2 Jacob Keller     2023-10-25  2506  	/* Flush software tracking of any outstanding timestamps since we're
b57a67bab47efc2 Jacob Keller     2023-10-25  2507  	 * about to flush the PHY timestamp block.
b57a67bab47efc2 Jacob Keller     2023-10-25  2508  	 */
b57a67bab47efc2 Jacob Keller     2023-10-25 @2509  	ice_ptp_flush_all_tx_tracker(pf);
b57a67bab47efc2 Jacob Keller     2023-10-25  2510  
3a7496234d179a7 Jacob Keller     2021-10-13  2511  	if (!ice_is_e810(hw)) {
3a7496234d179a7 Jacob Keller     2021-10-13  2512  		/* Enable quad interrupts */
d695241a0a0ea02 Jacob Keller     2023-10-25  2513  		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
9ea8140e2f947cb Jacob Keller     2023-10-25  2514  		if (err)
9ea8140e2f947cb Jacob Keller     2023-10-25  2515  			return err;
9ea8140e2f947cb Jacob Keller     2023-10-25  2516  
9ea8140e2f947cb Jacob Keller     2023-10-25  2517  		ice_ptp_restart_all_phy(pf);
9ea8140e2f947cb Jacob Keller     2023-10-25  2518  	}
9ea8140e2f947cb Jacob Keller     2023-10-25  2519  
9ea8140e2f947cb Jacob Keller     2023-10-25  2520  	return 0;
9ea8140e2f947cb Jacob Keller     2023-10-25  2521  }
9ea8140e2f947cb Jacob Keller     2023-10-25  2522  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
