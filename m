Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57038991504
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Oct 2024 08:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10FAD40181;
	Sat,  5 Oct 2024 06:55:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7habHvZYiuQ; Sat,  5 Oct 2024 06:55:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55AD940E27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728111312;
	bh=ArvFhPVB84Szyek6exCEGBRNdLL+0taOZvT4o43L0F0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6MRRxQc/1P7ZWJTH94WnB0O+6Eoc+uy8lZmK5340iwTqfDprHO5yp4pbHzjE1IUuK
	 ndRAlhy7LCRs/dGIV7uRcwJRdtiAchmdUXrxjBEJi8VJk+urGVBEO1IkWAT8NKeRdb
	 +vLPvDlukIwZGVaniHXKbv51DKfBhApdHD1uQkZrLBPhLEMLf+0nvGm3ehA0fJrnZh
	 3QFSU62PGbMFDdfb1lXYfOejeOZlSJUnj/cZoF84yfJa3xvVQwRKdvLMqdVZExvGBI
	 Bb9dePCbhOeDAY4NT1yEognn7NSQ/prbFnWMtaLiiXLHT8WDba5ZhpU5FnLSrOGs0Z
	 i1PXA6HPhc6Cg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55AD940E27;
	Sat,  5 Oct 2024 06:55:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3126E1BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 06:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2240640191
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 06:55:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fIiKQFDWtoN8 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Oct 2024 06:55:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B84F54010C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B84F54010C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B84F54010C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 06:55:02 +0000 (UTC)
X-CSE-ConnectionGUID: 11fVgni8Suy+ec0oMjGRFA==
X-CSE-MsgGUID: HuRmNnRSR0WHpgMcey9WBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="27467350"
X-IronPort-AV: E=Sophos;i="6.11,179,1725346800"; d="scan'208";a="27467350"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 23:55:02 -0700
X-CSE-ConnectionGUID: 5OShleAyRVCjkykQdK3TUw==
X-CSE-MsgGUID: bYXVGoUASe6Jr4RfSnSvqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,179,1725346800"; d="scan'208";a="105684427"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 04 Oct 2024 23:54:59 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1swygr-0002hS-1c;
 Sat, 05 Oct 2024 06:54:57 +0000
Date: Sat, 5 Oct 2024 14:54:07 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202410051435.O9bgxFKe-lkp@intel.com>
References: <20241004064733.1362850-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004064733.1362850-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728111303; x=1759647303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=arrPmPGvHlFX5GdvlfnFtQchw1f5aiMJFlUVQgbNQYE=;
 b=MXzENQZ+ywxUfR5jOb73BQCfI6QrpLkjxFsj7yVaZnUyySTTYDOG4Os4
 6ouBjQsKVQAujOu/D5CSteTBMwDYDAEIekZMW4Wbir9igj2jYw5V52e1k
 Lcm1YnHyWmTcMgJAZwOP5Kt/D8ObGe6HUyVf2VrYxElOFca7rY8Z+KFkr
 s6GHmi/c3ROnViydi7YRcc4Tt707GU/r1RFaqYOOU/75dFyyVKTR8ZhCG
 bcN/yL1flMr4oQBSiyJI2Z2HXkauFm/f5brMeaxTPG5nIVBYvwbi9dw8a
 R7GGLZw5X8pjyH3EA/sLE+TZOkhzXSY5lEjuVWZnY2ufqDwXizyvEC4Lb
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MXzENQZ+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add in/out PTP pin
 delays
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
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org, llvm@lists.linux.dev,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build errors:

[auto build test ERROR on f2589ad16e14b7102f1411e3385a2abf07076406]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Add-in-out-PTP-pin-delays/20241004-144802
base:   f2589ad16e14b7102f1411e3385a2abf07076406
patch link:    https://lore.kernel.org/r/20241004064733.1362850-2-karol.kolacinski%40intel.com
patch subject: [PATCH iwl-next] ice: Add in/out PTP pin delays
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20241005/202410051435.O9bgxFKe-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241005/202410051435.O9bgxFKe-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410051435.O9bgxFKe-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_ptp.c:1784:15: error: redefinition of 'gpio_pin'
    1784 |         unsigned int gpio_pin;
         |                      ^
   drivers/net/ethernet/intel/ice/ice_ptp.c:1781:15: note: previous definition is here
    1781 |         unsigned int gpio_pin, prop_delay;
         |                      ^
   1 error generated.
--
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:5033:29: error: use of undeclared identifier 'ICE_E810_E830_SYNC_DELAY'
    5033 |         ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
         |                                    ^
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:5341:29: error: use of undeclared identifier 'ICE_E810_E830_SYNC_DELAY'
    5341 |         ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
         |                                    ^
   2 errors generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MODVERSIONS
   Depends on [n]: MODULES [=y] && !COMPILE_TEST [=y]
   Selected by [y]:
   - RANDSTRUCT_FULL [=y] && (CC_HAS_RANDSTRUCT [=y] || GCC_PLUGINS [=n]) && MODULES [=y]


vim +/gpio_pin +1784 drivers/net/ethernet/intel/ice/ice_ptp.c

172db5f91d5f7b Maciej Machnikowski 2021-06-16  1766  
5a078a58ade86d Karol Kolacinski    2024-08-30  1767  /**
5a078a58ade86d Karol Kolacinski    2024-08-30  1768   * ice_ptp_cfg_perout - Configure clock to generate periodic wave
5a078a58ade86d Karol Kolacinski    2024-08-30  1769   * @pf: Board private structure
5a078a58ade86d Karol Kolacinski    2024-08-30  1770   * @rq: Periodic output request
5a078a58ade86d Karol Kolacinski    2024-08-30  1771   * @on: Enable/disable flag
5a078a58ade86d Karol Kolacinski    2024-08-30  1772   *
5a078a58ade86d Karol Kolacinski    2024-08-30  1773   * Configure the internal clock generator modules to generate the clock wave of
5a078a58ade86d Karol Kolacinski    2024-08-30  1774   * specified period.
5a078a58ade86d Karol Kolacinski    2024-08-30  1775   *
5a078a58ade86d Karol Kolacinski    2024-08-30  1776   * Return: 0 on success, negative error code otherwise
5a078a58ade86d Karol Kolacinski    2024-08-30  1777   */
5a078a58ade86d Karol Kolacinski    2024-08-30  1778  static int ice_ptp_cfg_perout(struct ice_pf *pf, struct ptp_perout_request *rq,
5a078a58ade86d Karol Kolacinski    2024-08-30  1779  			      int on)
5a078a58ade86d Karol Kolacinski    2024-08-30  1780  {
718647161517f7 Karol Kolacinski    2024-10-04  1781  	unsigned int gpio_pin, prop_delay;
5a078a58ade86d Karol Kolacinski    2024-08-30  1782  	u64 clk, period, start, phase;
5a078a58ade86d Karol Kolacinski    2024-08-30  1783  	struct ice_hw *hw = &pf->hw;
5a078a58ade86d Karol Kolacinski    2024-08-30 @1784  	unsigned int gpio_pin;
5a078a58ade86d Karol Kolacinski    2024-08-30  1785  	int pin_desc_idx;
5a078a58ade86d Karol Kolacinski    2024-08-30  1786  
5a078a58ade86d Karol Kolacinski    2024-08-30  1787  	if (rq->flags & ~PTP_PEROUT_PHASE)
5a078a58ade86d Karol Kolacinski    2024-08-30  1788  		return -EOPNOTSUPP;
5a078a58ade86d Karol Kolacinski    2024-08-30  1789  
5a078a58ade86d Karol Kolacinski    2024-08-30  1790  	pin_desc_idx = ice_ptp_find_pin_idx(pf, PTP_PF_PEROUT, rq->index);
5a078a58ade86d Karol Kolacinski    2024-08-30  1791  	if (pin_desc_idx < 0)
5a078a58ade86d Karol Kolacinski    2024-08-30  1792  		return -EIO;
5a078a58ade86d Karol Kolacinski    2024-08-30  1793  
5a078a58ade86d Karol Kolacinski    2024-08-30  1794  	gpio_pin = pf->ptp.ice_pin_desc[pin_desc_idx].gpio[1];
718647161517f7 Karol Kolacinski    2024-10-04  1795  	prop_delay = pf->ptp.ice_pin_desc[pin_desc_idx].delay[1];
5a078a58ade86d Karol Kolacinski    2024-08-30  1796  	period = rq->period.sec * NSEC_PER_SEC + rq->period.nsec;
5a078a58ade86d Karol Kolacinski    2024-08-30  1797  
5a078a58ade86d Karol Kolacinski    2024-08-30  1798  	/* If we're disabling the output or period is 0, clear out CLKO and TGT
5a078a58ade86d Karol Kolacinski    2024-08-30  1799  	 * and keep output level low.
5a078a58ade86d Karol Kolacinski    2024-08-30  1800  	 */
5a078a58ade86d Karol Kolacinski    2024-08-30  1801  	if (!on || !period)
5a078a58ade86d Karol Kolacinski    2024-08-30  1802  		return ice_ptp_write_perout(hw, rq->index, gpio_pin, 0, 0);
5a078a58ade86d Karol Kolacinski    2024-08-30  1803  
5a078a58ade86d Karol Kolacinski    2024-08-30  1804  	if (strncmp(pf->ptp.pin_desc[pin_desc_idx].name, "1PPS", 64) == 0 &&
001459cacff09e Karol Kolacinski    2024-09-30  1805  	    period != NSEC_PER_SEC && hw->mac_type == ICE_MAC_GENERIC) {
5a078a58ade86d Karol Kolacinski    2024-08-30  1806  		dev_err(ice_pf_to_dev(pf), "1PPS pin supports only 1 s period\n");
5a078a58ade86d Karol Kolacinski    2024-08-30  1807  		return -EOPNOTSUPP;
5a078a58ade86d Karol Kolacinski    2024-08-30  1808  	}
5a078a58ade86d Karol Kolacinski    2024-08-30  1809  
5a078a58ade86d Karol Kolacinski    2024-08-30  1810  	if (period & 0x1) {
5a078a58ade86d Karol Kolacinski    2024-08-30  1811  		dev_err(ice_pf_to_dev(pf), "CLK Period must be an even value\n");
5a078a58ade86d Karol Kolacinski    2024-08-30  1812  		return -EIO;
5a078a58ade86d Karol Kolacinski    2024-08-30  1813  	}
5a078a58ade86d Karol Kolacinski    2024-08-30  1814  
5a078a58ade86d Karol Kolacinski    2024-08-30  1815  	start = rq->start.sec * NSEC_PER_SEC + rq->start.nsec;
5a078a58ade86d Karol Kolacinski    2024-08-30  1816  
5a078a58ade86d Karol Kolacinski    2024-08-30  1817  	/* If PTP_PEROUT_PHASE is set, rq has phase instead of start time */
5a078a58ade86d Karol Kolacinski    2024-08-30  1818  	if (rq->flags & PTP_PEROUT_PHASE)
5a078a58ade86d Karol Kolacinski    2024-08-30  1819  		phase = start;
5a078a58ade86d Karol Kolacinski    2024-08-30  1820  	else
5a078a58ade86d Karol Kolacinski    2024-08-30  1821  		div64_u64_rem(start, period, &phase);
5a078a58ade86d Karol Kolacinski    2024-08-30  1822  
5a078a58ade86d Karol Kolacinski    2024-08-30  1823  	/* If we have only phase or start time is in the past, start the timer
5a078a58ade86d Karol Kolacinski    2024-08-30  1824  	 * at the next multiple of period, maintaining phase.
5a078a58ade86d Karol Kolacinski    2024-08-30  1825  	 */
5a078a58ade86d Karol Kolacinski    2024-08-30  1826  	clk = ice_ptp_read_src_clk_reg(pf, NULL);
718647161517f7 Karol Kolacinski    2024-10-04  1827  	if (rq->flags & PTP_PEROUT_PHASE || start <= clk - prop_delay)
5a078a58ade86d Karol Kolacinski    2024-08-30  1828  		start = div64_u64(clk + period - 1, period) * period + phase;
5a078a58ade86d Karol Kolacinski    2024-08-30  1829  
5a078a58ade86d Karol Kolacinski    2024-08-30  1830  	/* Compensate for propagation delay from the generator to the pin. */
718647161517f7 Karol Kolacinski    2024-10-04  1831  	start -= prop_delay;
5a078a58ade86d Karol Kolacinski    2024-08-30  1832  
5a078a58ade86d Karol Kolacinski    2024-08-30  1833  	return ice_ptp_write_perout(hw, rq->index, gpio_pin, start, period);
172db5f91d5f7b Maciej Machnikowski 2021-06-16  1834  }
172db5f91d5f7b Maciej Machnikowski 2021-06-16  1835  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
