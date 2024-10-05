Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6235991500
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Oct 2024 08:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9924C40526;
	Sat,  5 Oct 2024 06:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1sN-rqiiySWo; Sat,  5 Oct 2024 06:55:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B35940454
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728111306;
	bh=L/lpA9KJPl1YJydFyQ4K0Wi+6Yx7t5YnJyhb5GR3k40=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cr+Y72Sh9Kj17fSxsFk6fxmm3NGl8/NJVxWakSgndBT6f0r/gqNAH39uK300Hnefs
	 WwBom+TFR064cXpU0tm3jw/cFDT7rWwJ4PcaMaYJsAYcL9q3YNpuuzq3lMJoRtzWvk
	 HjVdOn1ziSvhSjE+GNKvanyjoprDBnKq53IAaKuxx9S9mrjw4XI6di6u8eSYSf7shH
	 pYFEqFPI30ePJAYqf2XPHXEHdcF7iFTa2Q936a9ONWxwJP7+www8w/21bdQBtbIZuG
	 UUqmx21iEgPQQYdA/XTG2B2HByFxOIPqnRj93Uyw4Dajp4WtNIWKlYJawcV/WMljm6
	 cyLKaYM/pBYtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B35940454;
	Sat,  5 Oct 2024 06:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54D651BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 06:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4312C81453
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 06:55:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nb0-ywnN_HUf for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Oct 2024 06:55:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B7FC58124B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7FC58124B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7FC58124B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Oct 2024 06:55:02 +0000 (UTC)
X-CSE-ConnectionGUID: 5yyE/8k+ScyvY17ctmvevA==
X-CSE-MsgGUID: fOTJRlVoRwCCGiIqRScT/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="38724273"
X-IronPort-AV: E=Sophos;i="6.11,179,1725346800"; d="scan'208";a="38724273"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 23:55:02 -0700
X-CSE-ConnectionGUID: XnEwvlP9S8yUlVVimWJ/0g==
X-CSE-MsgGUID: vV05ennSQ9KU8HWNTAfVxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,179,1725346800"; d="scan'208";a="74907373"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 04 Oct 2024 23:55:00 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1swygr-0002hP-1Y;
 Sat, 05 Oct 2024 06:54:57 +0000
Date: Sat, 5 Oct 2024 14:54:09 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202410051418.lLY7SXXp-lkp@intel.com>
References: <20241004064733.1362850-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241004064733.1362850-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728111302; x=1759647302;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gAxSir66pjUkLrR2v3FQvq9A3ljFvlMTr5inGp6EPCI=;
 b=EBWc+SsIDJNnqsNjTgL6daRO2i1k64urDVkXJbmE7lwuUwSS2EPRA+Qd
 bNphG8KhqbHNoi2wvcULf9vDxpaoGLyl3PVBDkzSlKI6ogf8p3UsxQJSx
 1fGpSOwByZSPGHDMNQqG7vmAfSYL5bcxV/iXpxqdHXyebBMDXp1JVKOWT
 m7N4WvBCxUlN95M/Jlr0NADgHRavHcoVyTWRJieyJzE8ex664q0lm51rw
 aqiWXcnErIJ6iKxN9MSGCtvjXF7en+RBCb42ajr6NUhfe0rLUhXm5zTpH
 P2YIX8HaYLwS4jaiyBk7iIZ31RCV4hJEVkc4kvCvfvtC3zORdr2dplQlI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EBWc+SsI
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build errors:

[auto build test ERROR on f2589ad16e14b7102f1411e3385a2abf07076406]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-Add-in-out-PTP-pin-delays/20241004-144802
base:   f2589ad16e14b7102f1411e3385a2abf07076406
patch link:    https://lore.kernel.org/r/20241004064733.1362850-2-karol.kolacinski%40intel.com
patch subject: [PATCH iwl-next] ice: Add in/out PTP pin delays
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20241005/202410051418.lLY7SXXp-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241005/202410051418.lLY7SXXp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202410051418.lLY7SXXp-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_ptp.c: In function 'ice_ptp_cfg_perout':
>> drivers/net/ethernet/intel/ice/ice_ptp.c:1784:22: error: redeclaration of 'gpio_pin' with no linkage
    1784 |         unsigned int gpio_pin;
         |                      ^~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp.c:1781:22: note: previous declaration of 'gpio_pin' with type 'unsigned int'
    1781 |         unsigned int gpio_pin, prop_delay;
         |                      ^~~~~~~~
--
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_ptp_init_phc_e810':
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:5033:36: error: 'ICE_E810_E830_SYNC_DELAY' undeclared (first use in this function)
    5033 |         ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:5033:36: note: each undeclared identifier is reported only once for each function it appears in
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c: In function 'ice_ptp_init_phc_e830':
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:5341:36: error: 'ICE_E810_E830_SYNC_DELAY' undeclared (first use in this function)
    5341 |         ice_ptp_cfg_sync_delay(hw, ICE_E810_E830_SYNC_DELAY);
         |                                    ^~~~~~~~~~~~~~~~~~~~~~~~


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
