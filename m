Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FFD9E45B4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 21:30:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9A218148E;
	Wed,  4 Dec 2024 20:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hgjLFH2NayaC; Wed,  4 Dec 2024 20:30:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3DB481460
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733344223;
	bh=k3pMwpvw7CcXegHjVDkGEUz7yUVCIz72+VrvA+OO4ms=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Jq1avFHGazmjWXAGbj7jl6uTYjvuhJMKLwem/wVjJiDDroby9AL3Z6X/Avv5P0Yj
	 OTbb60/qfQGHXZ9be6ou7qio3uCwBTI22WBHqJy6y0PRDljfsK/RyzswP6O9YQh7Ot
	 BUYHMWa0/Ub59jFzZPlj7i3O0MByqB85rq2fpgYMj646ohFWrA8MBBlH5w6SzcDV3W
	 5cpPbdza68PtEOXBEhvcp9pTmZfXz3zJhJPtirIvS74jlulKt0eX0Pd1X80cKNXyOV
	 4NqHL1+kSYgk6RohkhoOdJUPJOTxLwAZAxXjQ/AY+O2VOVUunmMAxO9hSQAG4xzCZ8
	 yot6a95+l8QhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3DB481460;
	Wed,  4 Dec 2024 20:30:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5123D1DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 20:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E20360744
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 20:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2QE-wwXzQ3NI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 20:30:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 097BA606E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 097BA606E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 097BA606E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 20:30:20 +0000 (UTC)
X-CSE-ConnectionGUID: UtBmEXsERriVinvEttvrIQ==
X-CSE-MsgGUID: oHEs5oSvRHSfi84VdR+EWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33550824"
X-IronPort-AV: E=Sophos;i="6.12,208,1728975600"; d="scan'208";a="33550824"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 12:30:20 -0800
X-CSE-ConnectionGUID: IrFc6JW0RjSOHUrx4Mgv3w==
X-CSE-MsgGUID: adn2N2IWTPuik/VHoASs1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,208,1728975600"; d="scan'208";a="93951250"
Received: from lkp-server02.sh.intel.com (HELO 1f5a171d57e2) ([10.239.97.151])
 by orviesa006.jf.intel.com with ESMTP; 04 Dec 2024 12:30:19 -0800
Received: from kbuild by 1f5a171d57e2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tIw0m-0003Sf-0y;
 Wed, 04 Dec 2024 20:30:16 +0000
Date: Thu, 5 Dec 2024 04:29:39 +0800
From: kernel test robot <lkp@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 netdev@vger.kernel.org, Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>
Message-ID: <202412050450.s26ZxK1U-lkp@intel.com>
References: <20241204143112.29411-6-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204143112.29411-6-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733344221; x=1764880221;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Hqvk2t+BsLSphs4WfQUre5lwOKVlFGQ6Nxe5CPShoMA=;
 b=edR/VtorAppUYXUjNZKimwwk2llKVkqs/UMAPgHI89Bfn0IrgZvslYAw
 4HAO0z1j1GfabFuaX3uplF9WqV2AdRNoZaBKXHo3aP3lWK6Aub2moatN4
 8rYRQOBLRLssUFbqklWS+2RYhcJncWIvi+P/nxKlwmQ5zQnhhDvd2Rjrh
 pAgEQZcH3wi6qFFJsykwGxYvddLOM960o3iMHLsVkFgdXoD+we4IesrO6
 0norQC+9AUtpowWqLh2NlcW8UH8bF3xDutZuebjse9ZnRvuHzoGfmnrGd
 Lnxq5uDHH4d+cKBVfqubKZUyLtz3RKiA8cuqs5BlLX9iuTkFEYVCqo6HV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=edR/Vtor
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11 5/8] ixgbe: Add support
 for EEPROM dump in E610 device
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

Hi Piotr,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Piotr-Kwapulinski/ixgbe-Add-support-for-E610-FW-Admin-Command-Interface/20241204-223603
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20241204143112.29411-6-piotr.kwapulinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v11 5/8] ixgbe: Add support for EEPROM dump in E610 device
config: i386-buildonly-randconfig-003 (https://download.01.org/0day-ci/archive/20241205/202412050450.s26ZxK1U-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241205/202412050450.s26ZxK1U-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412050450.s26ZxK1U-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:2083: warning: expecting prototype for ixgbe_init_eeprom_params_E610(). Prototype was for ixgbe_init_eeprom_params_e610() instead


vim +2083 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c

  2072	
  2073	/**
  2074	 * ixgbe_init_eeprom_params_E610 - Initialize EEPROM params
  2075	 * @hw: pointer to hardware structure
  2076	 *
  2077	 * Initialize the EEPROM parameters ixgbe_eeprom_info within the ixgbe_hw
  2078	 * struct in order to set up EEPROM access.
  2079	 *
  2080	 * Return: the operation exit code
  2081	 */
  2082	int ixgbe_init_eeprom_params_e610(struct ixgbe_hw *hw)
> 2083	{
  2084		struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
  2085		u32 gens_stat;
  2086		u8 sr_size;
  2087	
  2088		if (eeprom->type != ixgbe_eeprom_uninitialized)
  2089			return 0;
  2090	
  2091		eeprom->type = ixgbe_flash;
  2092	
  2093		gens_stat = IXGBE_READ_REG(hw, GLNVM_GENS);
  2094		sr_size = FIELD_GET(GLNVM_GENS_SR_SIZE_M, gens_stat);
  2095	
  2096		/* Switching to words (sr_size contains power of 2). */
  2097		eeprom->word_size = BIT(sr_size) * IXGBE_SR_WORDS_IN_1KB;
  2098	
  2099		hw_dbg(hw, "Eeprom params: type = %d, size = %d\n", eeprom->type,
  2100		       eeprom->word_size);
  2101	
  2102		return 0;
  2103	}
  2104	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
