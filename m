Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1FD833334
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jan 2024 09:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD85A60BDC;
	Sat, 20 Jan 2024 08:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD85A60BDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705738665;
	bh=dpBhCEsCihwh78VgvUZ7boWIg4ODovrjjcxtqobVptI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cY/xRqmiS28606w2qd7nj3GAXkljY85axcYFaJ4YCQCupXUmXA0mJuZpYfDy8DlaK
	 E6NJmECL+5iHvvY5Z11dRVDx/9QZgzRGrqFN7499pkHbUik0E0boR7M0AWaYhK8c0z
	 JetXON4ayOXmu5sgU68tdrla+YPku1EvWOZNBSkhK6Taww38mlk680hs0XbofRVXKR
	 w28W8SyJZAhJlL+uvbS5A7eKR4qnxqMVuYavOvJ+0J954qXqZYBdAXP94DuNSVavtF
	 Pk80GxJcuNXEwfaqCWMgE35RSk2khCWyxj5f6ggZiN6ZZEXhyN0yGdmnAdRLE4DwdB
	 lKeLVDT5efWWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nqk-S6d9KpzT; Sat, 20 Jan 2024 08:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B28C660A88;
	Sat, 20 Jan 2024 08:17:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B28C660A88
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 259A71BF32E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 08:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 09C0760A88
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 08:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09C0760A88
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rw1y5X7NMBYb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jan 2024 08:17:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95A1E60A5E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 08:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95A1E60A5E
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="14439237"
X-IronPort-AV: E=Sophos;i="6.05,207,1701158400"; d="scan'208";a="14439237"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2024 00:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="908514187"
X-IronPort-AV: E=Sophos;i="6.05,207,1701158400"; d="scan'208";a="908514187"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Jan 2024 00:17:33 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rR6Xi-0004ty-2Y;
 Sat, 20 Jan 2024 08:17:30 +0000
Date: Sat, 20 Jan 2024 16:16:45 +0800
From: kernel test robot <lkp@intel.com>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202401201602.Mg8UEw6K-lkp@intel.com>
References: <20240118134332.470907-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118134332.470907-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705738657; x=1737274657;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sXI31xflBZoXA+tOcFBTUtwh+TGZWqBsqHMNQZvsPlg=;
 b=SQ/cZGkLzGbFE44KmFbpXe+5lic5r+m8pgCgZUf0CO9R/pGgTTyTKLz+
 yZTOyVsn45Ie+JhsWBqNcham+h2tkKNw7n+svFaFM4gnSo08STHxqUDyj
 q2K7zgzTCNqYiPbCNIDmxjwFCMootAt2S8J57DKXXFZJBz7bKGMZ9C7Xs
 LBCfEo2aOTjiPXf06Jk0XYEu/PZMtraQSTngZTFw7ktABSJky13MAFQIG
 j+OeeBvKgJXL/YoM5oNQyezLRVssgNJEcRK5xQ7EFRjCmsIcxwB+n+g5Y
 PnmJzwhYJYpyiOrLOVl6BDqc/vr1lAM9wpvQ2yMHdCjSi9c40A+0AL6aW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SQ/cZGkL
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
 llvm@lists.linux.dev, anthony.l.nguyen@intel.com,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jedrzej,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Jedrzej-Jagielski/ixgbe-Fix-smatch-warnings-after-type-convertion/20240119-015659
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240118134332.470907-3-jedrzej.jagielski%40intel.com
patch subject: [PATCH iwl-next v3 3/3] ixgbe: Cleanup after type convertion
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20240120/202401201602.Mg8UEw6K-lkp@intel.com/config)
compiler: ClangBuiltLinux clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240120/202401201602.Mg8UEw6K-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401201602.Mg8UEw6K-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c:774:27: error: use of undeclared identifier 'autoc2'
     774 |         u32 pma_pmd_10g_serial = autoc2 & IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK;
         |                                  ^
   1 error generated.


vim +/autoc2 +774 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c

cd7e1f0b056c07 drivers/net/ixgbe/ixgbe_82599.c                Don Skidmore             2009-10-08  761  
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  762  /**
8620a103b5e38d drivers/net/ixgbe/ixgbe_82599.c                Mallikarjuna R Chilakala 2009-09-01  763   *  ixgbe_setup_mac_link_82599 - Set MAC link speed
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  764   *  @hw: pointer to hardware structure
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  765   *  @speed: new link speed
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  766   *  @autoneg_wait_to_complete: true when waiting for completion is needed
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  767   *
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  768   *  Set the link speed in the AUTOC register and restarts link.
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  769   **/
7e23e4751a3586 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2024-01-18  770  static int ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
fd0326f2cf9e5d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Josh Hay                 2012-12-15  771  				      ixgbe_link_speed speed,
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  772  				      bool autoneg_wait_to_complete)
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  773  {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27 @774  	u32 pma_pmd_10g_serial = autoc2 & IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  775  	ixgbe_link_speed link_capabilities = IXGBE_LINK_SPEED_UNKNOWN;
36f3bb88d9a5de drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2024-01-18  776  	u32 autoc2 = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
36f3bb88d9a5de drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2024-01-18  777  	u32 pma_pmd_1g, link_mode, links_reg, i;
36f3bb88d9a5de drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2024-01-18  778  	bool autoneg = false;
36f3bb88d9a5de drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2024-01-18  779  	int status;
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  780  
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  781  	/* holds the value of AUTOC register at this current point in time */
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  782  	u32 current_autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  783  	/* holds the cached value of AUTOC register */
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  784  	u32 orig_autoc = 0;
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  785  	/* temporary variable used for comparison purposes */
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  786  	u32 autoc = current_autoc;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  787  
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  788  	/* Check to see if speed passed in is supported. */
9cdcf098800d95 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Don Skidmore             2012-02-17  789  	status = hw->mac.ops.get_link_capabilities(hw, &link_capabilities,
9cdcf098800d95 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Don Skidmore             2012-02-17  790  						   &autoneg);
e90dd264566405 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Mark Rustad              2014-07-22  791  	if (status)
e90dd264566405 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Mark Rustad              2014-07-22  792  		return status;
0b0c2b31bdf8d6 drivers/net/ixgbe/ixgbe_82599.c                Emil Tantilov            2011-02-26  793  
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  794  	speed &= link_capabilities;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  795  
e90dd264566405 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Mark Rustad              2014-07-22  796  	if (speed == IXGBE_LINK_SPEED_UNKNOWN)
5795f533f30a80 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2023-12-18  797  		return -EINVAL;
50ac58ba1d707d drivers/net/ixgbe/ixgbe_82599.c                Peter P Waskiewicz Jr    2009-06-04  798  
1eb99d5ac44e2a drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-04-09  799  	/* Use stored value (EEPROM defaults) of AUTOC to find KR/KX4 support*/
1eb99d5ac44e2a drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-04-09  800  	if (hw->mac.orig_link_settings_stored)
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  801  		orig_autoc = hw->mac.orig_autoc;
1eb99d5ac44e2a drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-04-09  802  	else
1eb99d5ac44e2a drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-04-09  803  		orig_autoc = autoc;
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  804  
5e82f2f07645ef drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Emil Tantilov            2013-04-12  805  	link_mode = autoc & IXGBE_AUTOC_LMS_MASK;
5e82f2f07645ef drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Emil Tantilov            2013-04-12  806  	pma_pmd_1g = autoc & IXGBE_AUTOC_1G_PMA_PMD_MASK;
1eb99d5ac44e2a drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-04-09  807  
50ac58ba1d707d drivers/net/ixgbe/ixgbe_82599.c                Peter P Waskiewicz Jr    2009-06-04  808  	if (link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR ||
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  809  	    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN ||
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  810  	    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  811  		/* Set KX4/KX/KR support according to speed requested */
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  812  		autoc &= ~(IXGBE_AUTOC_KX4_KX_SUPP_MASK | IXGBE_AUTOC_KR_SUPP);
55461ddbcb0b36 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Emil Tantilov            2012-08-10  813  		if (speed & IXGBE_LINK_SPEED_10GB_FULL) {
1eb99d5ac44e2a drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-04-09  814  			if (orig_autoc & IXGBE_AUTOC_KX4_SUPP)
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  815  				autoc |= IXGBE_AUTOC_KX4_SUPP;
cd7e1f0b056c07 drivers/net/ixgbe/ixgbe_82599.c                Don Skidmore             2009-10-08  816  			if ((orig_autoc & IXGBE_AUTOC_KR_SUPP) &&
cd7e1f0b056c07 drivers/net/ixgbe/ixgbe_82599.c                Don Skidmore             2009-10-08  817  			    (hw->phy.smart_speed_active == false))
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  818  				autoc |= IXGBE_AUTOC_KR_SUPP;
55461ddbcb0b36 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Emil Tantilov            2012-08-10  819  		}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  820  		if (speed & IXGBE_LINK_SPEED_1GB_FULL)
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  821  			autoc |= IXGBE_AUTOC_KX_SUPP;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  822  	} else if ((pma_pmd_1g == IXGBE_AUTOC_1G_SFI) &&
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  823  		   (link_mode == IXGBE_AUTOC_LMS_1G_LINK_NO_AN ||
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  824  		    link_mode == IXGBE_AUTOC_LMS_1G_AN)) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  825  		/* Switch from 1G SFI to 10G SFI if requested */
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  826  		if ((speed == IXGBE_LINK_SPEED_10GB_FULL) &&
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  827  		    (pma_pmd_10g_serial == IXGBE_AUTOC2_10G_SFI)) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  828  			autoc &= ~IXGBE_AUTOC_LMS_MASK;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  829  			autoc |= IXGBE_AUTOC_LMS_10G_SERIAL;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  830  		}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  831  	} else if ((pma_pmd_10g_serial == IXGBE_AUTOC2_10G_SFI) &&
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  832  		   (link_mode == IXGBE_AUTOC_LMS_10G_SERIAL)) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  833  		/* Switch from 10G SFI to 1G SFI if requested */
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  834  		if ((speed == IXGBE_LINK_SPEED_1GB_FULL) &&
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  835  		    (pma_pmd_1g == IXGBE_AUTOC_1G_SFI)) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  836  			autoc &= ~IXGBE_AUTOC_LMS_MASK;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  837  			if (autoneg)
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  838  				autoc |= IXGBE_AUTOC_LMS_1G_AN;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  839  			else
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  840  				autoc |= IXGBE_AUTOC_LMS_1G_LINK_NO_AN;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  841  		}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  842  	}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  843  
ee98b577e7711d drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  844  	if (autoc != current_autoc) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  845  		/* Restart link */
429d6a3be9b656 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Don Skidmore             2014-02-27  846  		status = hw->mac.ops.prot_autoc_write(hw, autoc, false);
f8cf7a00d82b6c drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Don Skidmore             2014-03-19  847  		if (status)
e90dd264566405 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Mark Rustad              2014-07-22  848  			return status;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  849  
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  850  		/* Only poll for autoneg to complete if specified to do so */
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  851  		if (autoneg_wait_to_complete) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  852  			if (link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR ||
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  853  			    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN ||
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  854  			    link_mode == IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  855  				links_reg = 0; /*Just in case Autoneg time=0*/
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  856  				for (i = 0; i < IXGBE_AUTO_NEG_TIME; i++) {
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  857  					links_reg =
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  858  					       IXGBE_READ_REG(hw, IXGBE_LINKS);
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  859  					if (links_reg & IXGBE_LINKS_KX_AN_COMP)
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  860  						break;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  861  					msleep(100);
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  862  				}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  863  				if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
5795f533f30a80 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jedrzej Jagielski        2023-12-18  864  					status = -EIO;
305f8cec7be51e drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c Jacob Keller             2014-02-22  865  					hw_dbg(hw, "Autoneg did not complete.\n");
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  866  				}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  867  			}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  868  		}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  869  
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  870  		/* Add delay to filter out noises during initial link setup */
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  871  		msleep(50);
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  872  	}
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  873  
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  874  	return status;
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  875  }
11afc1b1fd802c drivers/net/ixgbe/ixgbe_82599.c                PJ Waskiewicz            2009-02-27  876  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
