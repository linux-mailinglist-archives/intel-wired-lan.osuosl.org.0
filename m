Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEABCDEB70
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Dec 2025 14:03:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 805374090C;
	Fri, 26 Dec 2025 13:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4VPG_7bz_59; Fri, 26 Dec 2025 13:03:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9435B40949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766754214;
	bh=8TMeKs8rXyk1S3KfeHxrD7TaK2WwkDTQ9X9XVl1cfP8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wDQ4lXZ7zCe12+n8L0eXW693VOnutAvUX/q1bzwxlvCFCXLl3alWcWM1r1Ju+L3xF
	 tTtTJcoEjmHPxw+UWWZL2WSihvPp06u/hwP52O41S7D3qEH/e47OLvLSOHGDok6kmu
	 EmQiWtlaxCWhHhYnS630P+h7dTTVDsv7Ye2Yp4vNKqM73M88wRhLQUgTDOrx8v4Pop
	 U/iZlN/ElHYPHGlnd8O9VKCSmAO1Miwd8rjJ5RcqDCQAK9eNC2GQlG4CnrvcJs2dR2
	 inp98kHlsjECDdCqBclk5fVMADE8laJk3N2XGAqGJsbUxmW/ix/EqKzMmSJRuqQH9+
	 Yk7oFOMjbVihg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9435B40949;
	Fri, 26 Dec 2025 13:03:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 69027EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Dec 2025 13:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51FE44025E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Dec 2025 13:03:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U6gWb1FXWFDg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Dec 2025 13:03:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43877400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43877400AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43877400AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Dec 2025 13:03:30 +0000 (UTC)
X-CSE-ConnectionGUID: q5yVxbYvSjiqxn4E7KCqEw==
X-CSE-MsgGUID: uMmS6Rj/ThCa/7IJ7pEAug==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68443776"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68443776"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Dec 2025 05:03:30 -0800
X-CSE-ConnectionGUID: BTqgoosyTNuUQHMcdAoE1g==
X-CSE-MsgGUID: vd7TULrOTCezpPb2WnQAHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,177,1763452800"; d="scan'208";a="200685821"
Received: from lkp-server02.sh.intel.com (HELO dd3453e2b682) ([10.239.97.151])
 by fmviesa008.fm.intel.com with ESMTP; 26 Dec 2025 05:03:28 -0800
Received: from kbuild by dd3453e2b682 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vZ7Ta-0000000052f-1Jdp;
 Fri, 26 Dec 2025 13:03:26 +0000
Date: Fri, 26 Dec 2025 21:02:30 +0800
From: kernel test robot <lkp@intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <202512262022.ZrpAYewG-lkp@intel.com>
References: <20251223095032.1379862-3-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223095032.1379862-3-vitaly.lifshits@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766754212; x=1798290212;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9YdZzEAbofxVaxglfWO2jF1QRssb6tkG6W1T+FnBIGg=;
 b=LdxhlQgCrqelx97TlDM5/kcunFzIYMEtvifZ52b47eJxVVNbDV1g31nu
 YwDKWYZtwFnhwoDETcLefEZIBs2t+ZljOQFmNElTdvwgku2R+sFGUNWPf
 l/HJ54DRHguWXPppFRytPh9MCFZn5G0I+zyU5XrT2kZ5hS+LvQTwPozLL
 VpvM9UxtInk7C4EBB4tCC7IFOTBJl3lwF22+lpOHAVFygawV++Ks8mFtf
 JVH5sLUjeRPgmkAvHIZxBK+GApuZtbHg5B4c/p1XiGyFuc/tsJCpr05u9
 7J3URB6/b77WEAJynMKj7XG6niXDKQORdNWT3EZE9O/j4ncVZtzM6d0jb
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LdxhlQgC
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] e1000e: clear DPG_EN
 after reset to avoid autonomous power-gating
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vitaly,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-net-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Vitaly-Lifshits/e1000e-introduce-new-MAC-type-for-Panther-Lake-PCH/20251223-175226
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20251223095032.1379862-3-vitaly.lifshits%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] e1000e: clear DPG_EN after reset to avoid autonomous power-gating
config: i386-randconfig-141-20251224 (https://download.01.org/0day-ci/archive/20251226/202512262022.ZrpAYewG-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202512262022.ZrpAYewG-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/e1000e/ich8lan.c:4938 e1000_reset_hw_ich8lan() warn: inconsistent indenting

vim +4938 drivers/net/ethernet/intel/e1000e/ich8lan.c

  4823	
  4824	/**
  4825	 *  e1000_reset_hw_ich8lan - Reset the hardware
  4826	 *  @hw: pointer to the HW structure
  4827	 *
  4828	 *  Does a full reset of the hardware which includes a reset of the PHY and
  4829	 *  MAC.
  4830	 **/
  4831	static s32 e1000_reset_hw_ich8lan(struct e1000_hw *hw)
  4832	{
  4833		struct e1000_dev_spec_ich8lan *dev_spec = &hw->dev_spec.ich8lan;
  4834		u16 kum_cfg;
  4835		u32 ctrl, reg;
  4836		s32 ret_val;
  4837	
  4838		/* Prevent the PCI-E bus from sticking if there is no TLP connection
  4839		 * on the last TLP read/write transaction when MAC is reset.
  4840		 */
  4841		ret_val = e1000e_disable_pcie_master(hw);
  4842		if (ret_val)
  4843			e_dbg("PCI-E Master disable polling has failed.\n");
  4844	
  4845		e_dbg("Masking off all interrupts\n");
  4846		ew32(IMC, 0xffffffff);
  4847	
  4848		/* Disable the Transmit and Receive units.  Then delay to allow
  4849		 * any pending transactions to complete before we hit the MAC
  4850		 * with the global reset.
  4851		 */
  4852		ew32(RCTL, 0);
  4853		ew32(TCTL, E1000_TCTL_PSP);
  4854		e1e_flush();
  4855	
  4856		usleep_range(10000, 11000);
  4857	
  4858		/* Workaround for ICH8 bit corruption issue in FIFO memory */
  4859		if (hw->mac.type == e1000_ich8lan) {
  4860			/* Set Tx and Rx buffer allocation to 8k apiece. */
  4861			ew32(PBA, E1000_PBA_8K);
  4862			/* Set Packet Buffer Size to 16k. */
  4863			ew32(PBS, E1000_PBS_16K);
  4864		}
  4865	
  4866		if (hw->mac.type == e1000_pchlan) {
  4867			/* Save the NVM K1 bit setting */
  4868			ret_val = e1000_read_nvm(hw, E1000_NVM_K1_CONFIG, 1, &kum_cfg);
  4869			if (ret_val)
  4870				return ret_val;
  4871	
  4872			if (kum_cfg & E1000_NVM_K1_ENABLE)
  4873				dev_spec->nvm_k1_enabled = true;
  4874			else
  4875				dev_spec->nvm_k1_enabled = false;
  4876		}
  4877	
  4878		ctrl = er32(CTRL);
  4879	
  4880		if (!hw->phy.ops.check_reset_block(hw)) {
  4881			/* Full-chip reset requires MAC and PHY reset at the same
  4882			 * time to make sure the interface between MAC and the
  4883			 * external PHY is reset.
  4884			 */
  4885			ctrl |= E1000_CTRL_PHY_RST;
  4886	
  4887			/* Gate automatic PHY configuration by hardware on
  4888			 * non-managed 82579
  4889			 */
  4890			if ((hw->mac.type == e1000_pch2lan) &&
  4891			    !(er32(FWSM) & E1000_ICH_FWSM_FW_VALID))
  4892				e1000_gate_hw_phy_config_ich8lan(hw, true);
  4893		}
  4894		ret_val = e1000_acquire_swflag_ich8lan(hw);
  4895		e_dbg("Issuing a global reset to ich8lan\n");
  4896		ew32(CTRL, (ctrl | E1000_CTRL_RST));
  4897		/* cannot issue a flush here because it hangs the hardware */
  4898		msleep(20);
  4899	
  4900		/* Set Phy Config Counter to 50msec */
  4901		if (hw->mac.type == e1000_pch2lan) {
  4902			reg = er32(FEXTNVM3);
  4903			reg &= ~E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK;
  4904			reg |= E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC;
  4905			ew32(FEXTNVM3, reg);
  4906		}
  4907	
  4908		if (!ret_val)
  4909			clear_bit(__E1000_ACCESS_SHARED_RESOURCE, &hw->adapter->state);
  4910	
  4911		if (ctrl & E1000_CTRL_PHY_RST) {
  4912			ret_val = hw->phy.ops.get_cfg_done(hw);
  4913			if (ret_val)
  4914				return ret_val;
  4915	
  4916			ret_val = e1000_post_phy_reset_ich8lan(hw);
  4917			if (ret_val)
  4918				return ret_val;
  4919		}
  4920	
  4921		/* For PCH, this write will make sure that any noise
  4922		 * will be detected as a CRC error and be dropped rather than show up
  4923		 * as a bad packet to the DMA engine.
  4924		 */
  4925		if (hw->mac.type == e1000_pchlan)
  4926			ew32(CRC_OFFSET, 0x65656565);
  4927	
  4928		ew32(IMC, 0xffffffff);
  4929		er32(ICR);
  4930	
  4931		reg = er32(KABGTXD);
  4932		reg |= E1000_KABGTXD_BGSQLBIAS;
  4933		ew32(KABGTXD, reg);
  4934	
  4935	       /* The reset value of DPG_EN bit was changed to 1
  4936		* clear it to avoid unexpected autonomous power-gating
  4937		*/
> 4938	       if (hw->mac.type >= e1000_pch_ptp) {
  4939			reg = er32(CTRL_EXT);
  4940			reg &= ~E1000_CTRL_EXT;
  4941			ew32(CTRL_EXT, reg);
  4942		}
  4943	
  4944		return 0;
  4945	}
  4946	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
