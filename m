Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B4288F1A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 23:12:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5136B820C0;
	Wed, 27 Mar 2024 22:12:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HpBa_DtBoT6; Wed, 27 Mar 2024 22:12:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15A0181EC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711577570;
	bh=CYQ9qNuyIsniHmfVvjpsd8QnGdu7C1vEwaGzbQJBo34=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SEknKDNPkyasXFX0Sc/SZZmmuD0oK04Y14zNkjwxgrQhxx8WC9FHiakowkiUIutHK
	 6VunRW8jXlp1FxU+CmOtr5aOwPWDrvwsnOXMR7ABNkHK5eC3+8H+BPWpx0crBl/XtL
	 pkedkvzNGcATNsa/73znjDg0RyQ44t41BSM1FDDGgnDGPGbeScfhCl3Xcsmyh/SS2V
	 xnl/OS1VIFK04YKCob4gZzGdBbLPbpc0Th0PEz7DoHKBdN8ZrrVDes1EWyVyaW7C0L
	 61Qi+t+zLub8B+HJNIk1BCbkWc2gu0NrJ0FvqSkdnw/WhajKqrIFBqE+ixMoqplbzw
	 Ai9r7YZczlgWA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15A0181EC5;
	Wed, 27 Mar 2024 22:12:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34C331BF33B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 22:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D0F7407AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 22:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oHP_3mLhOYSp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 22:12:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8604940093
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8604940093
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8604940093
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 22:12:46 +0000 (UTC)
X-CSE-ConnectionGUID: GEfFy3P4TjeFQM4yBytn6w==
X-CSE-MsgGUID: SyTwr782RPW67w36Kv3EUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6925712"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; 
   d="scan'208";a="6925712"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 15:12:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="53902958"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 27 Mar 2024 15:12:43 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rpbVg-0001Xq-2y;
 Wed, 27 Mar 2024 22:12:40 +0000
Date: Thu, 28 Mar 2024 06:12:14 +0800
From: kernel test robot <lkp@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202403280523.pcRsyVNp-lkp@intel.com>
References: <20240327155422.25424-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327155422.25424-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711577566; x=1743113566;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PlUoPOLQIqqodP0Vk11RTAn31WG2ArvUtXykR6VJtw4=;
 b=FpNXClLWjD93MfQEZ+WU2+0zPQt/8U6Xsq25jo0tqL6bMwwlQYeRcbja
 yX1aY9XW8KjMLtPAvCc1XGnbt1CG20t1BizWhs2HKK/Jf1PSAgpWirRBx
 uVBmUHrPpSc+CeIx2XRvQ5CNwbd7roOsgJpmWRRGuV9NUlk+IPklCsDDy
 /WsA42dDBVmeT8AQvSR+6HHkoUvnP29r4tVaXivAGQJUlH45n//GM9OEB
 tWoAGTSy3S3Nosu6bBtlKrGZHAkM2GMz2hi3ghkagMOft21mn41xJF4rg
 gHl36tkc5LVPxVLyX4XLFOJLbuzP/zflTK0KDJqdUx5LCQP8TqXoOuW/b
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FpNXClLW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/5] ixgbe: Enable link
 management in E610 device
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, oe-kbuild-all@lists.linux.dev,
 Carolyn Wyborny <carolyn.wyborny@intel.com>, Jan Glaza <jan.glaza@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Piotr,

kernel test robot noticed the following build warnings:

[auto build test WARNING on v6.8]
[cannot apply to tnguy-next-queue/dev-queue tnguy-net-queue/dev-queue horms-ipvs/master v6.9-rc1 linus/master next-20240327]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Piotr-Kwapulinski/ixgbe-Add-support-for-E610-FW-Admin-Command-Interface/20240327-234237
base:   v6.8
patch link:    https://lore.kernel.org/r/20240327155422.25424-6-piotr.kwapulinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v1 5/5] ixgbe: Enable link management in E610 device
config: loongarch-defconfig (https://download.01.org/0day-ci/archive/20240328/202403280523.pcRsyVNp-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240328/202403280523.pcRsyVNp-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403280523.pcRsyVNp-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2822:5: warning: no previous prototype for 'ixgbe_set_fw_drv_ver_x550' [-Wmissing-prototypes]
    2822 | s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3563:6: warning: no previous prototype for 'ixgbe_set_ethertype_anti_spoofing_x550' [-Wmissing-prototypes]
    3563 | void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3584:6: warning: no previous prototype for 'ixgbe_set_source_address_pruning_x550' [-Wmissing-prototypes]
    3584 | void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
         |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/ixgbe_set_ethertype_anti_spoofing_x550 +3563 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c

  3556	
  3557	/** ixgbe_set_ethertype_anti_spoofing_x550 - Enable/Disable Ethertype
  3558	 *	anti-spoofing
  3559	 *  @hw:  pointer to hardware structure
  3560	 *  @enable: enable or disable switch for Ethertype anti-spoofing
  3561	 *  @vf: Virtual Function pool - VF Pool to set for Ethertype anti-spoofing
  3562	 **/
> 3563	void ixgbe_set_ethertype_anti_spoofing_x550(struct ixgbe_hw *hw,
  3564						    bool enable, int vf)
  3565	{
  3566		int vf_target_reg = vf >> 3;
  3567		int vf_target_shift = vf % 8 + IXGBE_SPOOF_ETHERTYPEAS_SHIFT;
  3568		u32 pfvfspoof;
  3569	
  3570		pfvfspoof = IXGBE_READ_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg));
  3571		if (enable)
  3572			pfvfspoof |= BIT(vf_target_shift);
  3573		else
  3574			pfvfspoof &= ~BIT(vf_target_shift);
  3575	
  3576		IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(vf_target_reg), pfvfspoof);
  3577	}
  3578	
  3579	/** ixgbe_set_source_address_pruning_x550 - Enable/Disbale src address pruning
  3580	 *  @hw: pointer to hardware structure
  3581	 *  @enable: enable or disable source address pruning
  3582	 *  @pool: Rx pool to set source address pruning for
  3583	 **/
> 3584	void ixgbe_set_source_address_pruning_x550(struct ixgbe_hw *hw,
  3585						   bool enable,
  3586						   unsigned int pool)
  3587	{
  3588		u64 pfflp;
  3589	
  3590		/* max rx pool is 63 */
  3591		if (pool > 63)
  3592			return;
  3593	
  3594		pfflp = (u64)IXGBE_READ_REG(hw, IXGBE_PFFLPL);
  3595		pfflp |= (u64)IXGBE_READ_REG(hw, IXGBE_PFFLPH) << 32;
  3596	
  3597		if (enable)
  3598			pfflp |= (1ULL << pool);
  3599		else
  3600			pfflp &= ~(1ULL << pool);
  3601	
  3602		IXGBE_WRITE_REG(hw, IXGBE_PFFLPL, (u32)pfflp);
  3603		IXGBE_WRITE_REG(hw, IXGBE_PFFLPH, (u32)(pfflp >> 32));
  3604	}
  3605	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
