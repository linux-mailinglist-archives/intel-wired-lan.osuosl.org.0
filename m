Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E13DB474A5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 19:06:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79B0D4092C;
	Tue, 14 Dec 2021 18:06:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xSvtU7rotVYA; Tue, 14 Dec 2021 18:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4FB740928;
	Tue, 14 Dec 2021 18:06:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4477D1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 18:06:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 315AF40594
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 18:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urEXktkd9IaO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 18:06:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD0B9400E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 18:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639505160; x=1671041160;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vliwtA/Ue9PsR06CwwJEesIlYpt79CZXtDQhWA3ry6o=;
 b=FC8QxcI/zyn+OJQQbAkChNVz/URDgJG0UF+dWEYztR9m3hltEx8n3QyF
 aRllcezjoXNnet9cvpc/SD8dyOd4TVn2zWuyFciczBCdMjCIqvxDo06yz
 Jl/uwrhgsC741/7iGLRUbCi6cxApWa5wduRBVnIFwHCzvIKUvOWEJZJmq
 EvG7bvyft2DH30N9nPCBXw95DP0phuooQ35VTMFHkSx3xOhvRFKZugqa6
 g1F6H6cOPtE50cxfz+M870OHTrsPGVxUokEgVLixVi8hg74RjhPHi+YTJ
 2HzQVKR/VAIffq78NFysu7G0fardKVdHfrffpK3NIokFP0HbB0sm3+SXo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219725472"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="219725472"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 10:05:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="505454505"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 14 Dec 2021 10:05:15 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mxCAt-0000bj-5z; Tue, 14 Dec 2021 18:05:15 +0000
Date: Wed, 15 Dec 2021 02:05:05 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202112150216.KjZRqhcv-lkp@intel.com>
References: <20211214125149.460499-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214125149.460499-1-karol.kolacinski@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: Fix E810 PTP reset
 flow
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on v5.16-rc5]
[also build test ERROR on next-20211213]
[cannot apply to tnguy-next-queue/dev-queue]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Karol-Kolacinski/ice-Fix-E810-PTP-reset-flow/20211214-205421
base:    2585cf9dfaaddf00b069673f27bb3f8530e2039c
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20211215/202112150216.KjZRqhcv-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/b0b4ffaf89f2043ff019a735373e6cf0b9439683
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Karol-Kolacinski/ice-Fix-E810-PTP-reset-flow/20211214-205421
        git checkout b0b4ffaf89f2043ff019a735373e6cf0b9439683
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_ptp.c: In function 'ice_ptp_reset':
>> drivers/net/ethernet/intel/ice/ice_ptp.c:1792:22: error: 'hw' undeclared (first use in this function)
    1792 |         u8 src_idx = hw->func_caps.ts_func_info.tmr_index_owned;
         |                      ^~
   drivers/net/ethernet/intel/ice/ice_ptp.c:1792:22: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/net/ethernet/intel/ice/ice_ptp.c:1799:22: error: '__ICE_PFR_REQ' undeclared (first use in this function); did you mean 'ICE_PFR_REQ'?
    1799 |         if (test_bit(__ICE_PFR_REQ, pf->state))
         |                      ^~~~~~~~~~~~~
         |                      ICE_PFR_REQ
   drivers/net/ethernet/intel/ice/ice_ptp.c: In function 'ice_ptp_prepare_for_reset':
   drivers/net/ethernet/intel/ice/ice_ptp.c:1883:22: error: '__ICE_PFR_REQ' undeclared (first use in this function); did you mean 'ICE_PFR_REQ'?
    1883 |         if (test_bit(__ICE_PFR_REQ, pf->state))
         |                      ^~~~~~~~~~~~~
         |                      ICE_PFR_REQ


vim +/hw +1792 drivers/net/ethernet/intel/ice/ice_ptp.c

  1785	
  1786	/**
  1787	 * ice_ptp_reset - Initialize PTP hardware clock support after reset
  1788	 * @pf: Board private structure
  1789	 */
  1790	void ice_ptp_reset(struct ice_pf *pf)
  1791	{
> 1792		u8 src_idx = hw->func_caps.ts_func_info.tmr_index_owned;
  1793		struct ice_ptp *ptp = &pf->ptp;
  1794		struct ice_hw *hw = &pf->hw;
  1795		struct timespec64 ts;
  1796		int err = 1;
  1797		u64 time_diff;
  1798	
> 1799		if (test_bit(__ICE_PFR_REQ, pf->state))
  1800			goto pfr;
  1801	
  1802		wr32(hw, GLTSYN_SYNC_DLAY, 0);
  1803	
  1804		/* Enable source clocks */
  1805		wr32(hw, GLTSYN_ENA(src_idx), GLTSYN_ENA_TSYN_ENA_M);
  1806	
  1807		/* Enable PHY time sync */
  1808		err = ice_ptp_init_phy_e810(hw);
  1809		if (err)
  1810			goto err;
  1811	
  1812		/* Clear event status indications for auxiliary pins */
  1813		(void)rd32(hw, GLTSYN_STAT(src_idx));
  1814	
  1815		/* Acquire the global hardware lock */
  1816		if (!ice_ptp_lock(hw)) {
  1817			err = -EBUSY;
  1818			goto err;
  1819		}
  1820	
  1821		/* Write the increment time value to PHY and LAN */
  1822		err = ice_ptp_write_incval(hw, ICE_PTP_NOMINAL_INCVAL_E810);
  1823		if (err) {
  1824			ice_ptp_unlock(hw);
  1825			goto err;
  1826		}
  1827	
  1828		/* Write the initial Time value to PHY and LAN using the cached PHC
  1829		 * time before the reset and time difference between stopping and
  1830		 * starting the clock.
  1831		 */
  1832		if (ptp->cached_phc_time) {
  1833			time_diff = ktime_get_real_ns() - ptp->reset_time;
  1834			ts = ns_to_timespec64(ptp->cached_phc_time + time_diff);
  1835		} else {
  1836			ts = ktime_to_timespec64(ktime_get_real());
  1837		}
  1838		err = ice_ptp_write_init(pf, &ts);
  1839		if (err) {
  1840			ice_ptp_unlock(hw);
  1841			goto err;
  1842		}
  1843	
  1844		/* Release the global hardware lock */
  1845		ice_ptp_unlock(hw);
  1846	
  1847	pfr:
  1848		/* Init Tx structures */
  1849		if (ice_is_e810(&pf->hw))
  1850			err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
  1851		if (err)
  1852			goto err;
  1853	
  1854		set_bit(ICE_FLAG_PTP, pf->flags);
  1855	
  1856		/* Start periodic work going */
  1857		kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
  1858	
  1859		dev_info(ice_pf_to_dev(pf), "PTP reset successful\n");
  1860		return;
  1861	
  1862	err:
  1863		dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
  1864	}
  1865	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
