Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD8B8332E4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jan 2024 07:07:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 044B660F15;
	Sat, 20 Jan 2024 06:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 044B660F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705730861;
	bh=amgf1a+8GUcU/elSVp+9tvgw3mgYGkHZUw5xn92e16A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7IoahwvZ/1NlcnVwgWafVhupgssjmJPV450/90eZg5TCtAtySaboqXYrWmqtJXpCL
	 iv6hQexllZTwEtZNVKox9sWVpKtP6EJJdG1Rb3AbyNVBdxG1nvApZVSl/HYTOjzIlR
	 sxOWA02nHrrc8hQ51614gZIr3NQrxVs8p+rEYXXukjI2AlkRPaCQOzY1YX4K12IOxn
	 bpH8q4+NCdOlgJor2uHKyP8xcUlCGbysTDzYGhKoB1U8pDrkUqVeA4goV6JHU4MhFk
	 xn/9up/bJsMo9y4Q3H3YA4WnVRcklUe7oUG+jVY/PJtVojGB9D462lU1PPFDI0Ac8v
	 F5AX43D5gebxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xklrMyCv0IHE; Sat, 20 Jan 2024 06:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E59460E07;
	Sat, 20 Jan 2024 06:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E59460E07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B37911BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 06:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EF3C4044A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 06:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EF3C4044A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmTR451g23bJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jan 2024 06:07:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEB49402B1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 06:07:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEB49402B1
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="487061194"
X-IronPort-AV: E=Sophos;i="6.05,207,1701158400"; d="scan'208";a="487061194"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 22:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,207,1701158400"; 
   d="scan'208";a="723817"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by fmviesa003.fm.intel.com with ESMTP; 19 Jan 2024 22:07:28 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rR4Vq-0004o0-1T;
 Sat, 20 Jan 2024 06:07:26 +0000
Date: Sat, 20 Jan 2024 14:06:48 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202401201343.wjSFEBK2-lkp@intel.com>
References: <20240118134332.470907-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118134332.470907-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705730852; x=1737266852;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jQVnWfL86YNXRWj9shatjvqBq84vyVtxuPx6nMvurKI=;
 b=NdkPf8kxz5mELuOgemNjxBJagLjRNKRLcxT56I0ZQ/mMVvPm7Y13xFyE
 P/wfho7TbWSnNn+9xAAwlEDnt+GE/vV4zOgxdJKPfPAL+sJemkD2jdDi1
 yTxz+wupQY/MKmfzv3M9mpODNSbSugtAN3tl+clOhqH6PAWinJEvT3Vaq
 Xc2/Crp6UUl+HqQiAbUYmbYN+t1Nu6sIz3NsJ2Kbrl5rnb1AY1wxrS3TV
 wsJJdYItcTLqDTcgU8i7RElPUSMP/BOwjfIBcanpHI9i5qx29jUdE7ADn
 74Ls743JPvPC5HAy3eYhcNmbDJ3YMuuJ2vAdpHB9VBJgGwpxxBnHfsLmP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NdkPf8kx
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ixgbe: Cleanup after
 type convertion
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
Cc: netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 anthony.l.nguyen@intel.com, oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jedrzej,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ixgbe-Fix-smatch-warnings-after-type-convertion/20240119-015659
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240118134332.470907-3-jedrzej.jagielski%40intel.com
patch subject: [PATCH iwl-next v3 3/3] ixgbe: Cleanup after type convertion
config: sparc-allyesconfig (https://download.01.org/0day-ci/archive/20240120/202401201343.wjSFEBK2-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240120/202401201343.wjSFEBK2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401201343.wjSFEBK2-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c: In function 'ixgbe_setup_mac_link_82599':
   drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c:774:34: error: 'autoc2' undeclared (first use in this function)
     774 |         u32 pma_pmd_10g_serial = autoc2 & IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK;
         |                                  ^~~~~~
   drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c:774:34: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c:776:13: warning: unused variable 'autoc2' [-Wunused-variable]
     776 |         u32 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
         |             ^~~~~~


vim +/autoc2 +776 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c

   761	
   762	/**
   763	 *  ixgbe_setup_mac_link_82599 - Set MAC link speed
   764	 *  @hw: pointer to hardware structure
   765	 *  @speed: new link speed
   766	 *  @autoneg_wait_to_complete: true when waiting for completion is needed
   767	 *
   768	 *  Set the link speed in the AUTOC register and restarts link.
   769	 **/
   770	static int ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
   771					      ixgbe_link_speed speed,
   772					      bool autoneg_wait_to_complete)
   773	{
   774		u32 pma_pmd_10g_serial = autoc2 & IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK;
   775		ixgbe_link_speed link_capabilities = IXGBE_LINK_SPEED_UNKNOWN;
 > 776		u32 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
   777		u32 pma_pmd_1g, link_mode, links_reg, i;
   778		bool autoneg = false;
   779		int status;
   780	
   781		/* holds the value of AUTOC register at this current point in time */
   782		u32 current_autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
   783		/* holds the cached value of AUTOC register */
   784		u32 orig_autoc = 0;
   785		/* temporary variable used for comparison purposes */
   786		u32 autoc = current_autoc;
   787	
   788		/* Check to see if speed passed in is supported. */
   789		status = hw->mac.ops.get_link_capabilities(hw, &link_capabilities,
   790							   &autoneg);
   791		if (status)
   792			return status;
   793	
   794		speed &= link_capabilities;
   795	
   796		if (speed == IXGBE_LINK_SPEED_UNKNOWN)
   797			return -EINVAL;
   798	
   799		/* Use stored value (EEPROM defaults) of AUTOC to find KR/KX4 support*/
   800		if (hw->mac.orig_link_settings_stored)
   801			orig_autoc = hw->mac.orig_autoc;
   802		else
   803			orig_autoc = autoc;
   804	
   805		link_mode = autoc & IXGBE_AUTOC_LMS_MASK;
   806		pma_pmd_1g = autoc & IXGBE_AUTOC_1G_PMA_PMD_MASK;
   807	
   808		if (link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR ||
   809		    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN ||
   810		    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII) {
   811			/* Set KX4/KX/KR support according to speed requested */
   812			autoc &= ~(IXGBE_AUTOC_KX4_KX_SUPP_MASK | IXGBE_AUTOC_KR_SUPP);
   813			if (speed & IXGBE_LINK_SPEED_10GB_FULL) {
   814				if (orig_autoc & IXGBE_AUTOC_KX4_SUPP)
   815					autoc |= IXGBE_AUTOC_KX4_SUPP;
   816				if ((orig_autoc & IXGBE_AUTOC_KR_SUPP) &&
   817				    (hw->phy.smart_speed_active == false))
   818					autoc |= IXGBE_AUTOC_KR_SUPP;
   819			}
   820			if (speed & IXGBE_LINK_SPEED_1GB_FULL)
   821				autoc |= IXGBE_AUTOC_KX_SUPP;
   822		} else if ((pma_pmd_1g == IXGBE_AUTOC_1G_SFI) &&
   823			   (link_mode == IXGBE_AUTOC_LMS_1G_LINK_NO_AN ||
   824			    link_mode == IXGBE_AUTOC_LMS_1G_AN)) {
   825			/* Switch from 1G SFI to 10G SFI if requested */
   826			if ((speed == IXGBE_LINK_SPEED_10GB_FULL) &&
   827			    (pma_pmd_10g_serial == IXGBE_AUTOC2_10G_SFI)) {
   828				autoc &= ~IXGBE_AUTOC_LMS_MASK;
   829				autoc |= IXGBE_AUTOC_LMS_10G_SERIAL;
   830			}
   831		} else if ((pma_pmd_10g_serial == IXGBE_AUTOC2_10G_SFI) &&
   832			   (link_mode == IXGBE_AUTOC_LMS_10G_SERIAL)) {
   833			/* Switch from 10G SFI to 1G SFI if requested */
   834			if ((speed == IXGBE_LINK_SPEED_1GB_FULL) &&
   835			    (pma_pmd_1g == IXGBE_AUTOC_1G_SFI)) {
   836				autoc &= ~IXGBE_AUTOC_LMS_MASK;
   837				if (autoneg)
   838					autoc |= IXGBE_AUTOC_LMS_1G_AN;
   839				else
   840					autoc |= IXGBE_AUTOC_LMS_1G_LINK_NO_AN;
   841			}
   842		}
   843	
   844		if (autoc != current_autoc) {
   845			/* Restart link */
   846			status = hw->mac.ops.prot_autoc_write(hw, autoc, false);
   847			if (status)
   848				return status;
   849	
   850			/* Only poll for autoneg to complete if specified to do so */
   851			if (autoneg_wait_to_complete) {
   852				if (link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR ||
   853				    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN ||
   854				    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII) {
   855					links_reg = 0; /*Just in case Autoneg time=0*/
   856					for (i = 0; i < IXGBE_AUTO_NEG_TIME; i++) {
   857						links_reg =
   858						       IXGBE_READ_REG(hw, IXGBE_LINKS);
   859						if (links_reg & IXGBE_LINKS_KX_AN_COMP)
   860							break;
   861						msleep(100);
   862					}
   863					if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
   864						status = -EIO;
   865						hw_dbg(hw, "Autoneg did not complete.\n");
   866					}
   867				}
   868			}
   869	
   870			/* Add delay to filter out noises during initial link setup */
   871			msleep(50);
   872		}
   873	
   874		return status;
   875	}
   876	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
