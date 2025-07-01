Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E3DAF06FD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Jul 2025 01:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5032384BD3;
	Tue,  1 Jul 2025 23:39:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X70f8mEwlS5s; Tue,  1 Jul 2025 23:39:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6217184BD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751413168;
	bh=9QYadCQLm7dM2xG0Dmw+yhyi6Wg76K0OPBng/EC9kFA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GvVNklqIzM/W/TgL+P1hplXY0Y/wxvNBMLUtF2v2KNtkdCutN5qQzbpT0Fb6/I7aI
	 R6Hsvo9DLyzrIarbF6lOKJ+6tcvRXOibvGu4Laa4jTvPT1/MDuSaCNxpCSY2rXNfn1
	 YEBAc6WJE0Mwq3AMmsV8bSZOuJJjf2gXP2fMwSbo1lCgDd13g3GwhIAPcwaFroKGTw
	 YdOnADNQPcyQt3XjJyGeNF/n97uWrRBhUtCiHoMluiMCM3/7RbZRpihznPSUcK+bZu
	 2nOo/QH57frXEDjrzOg1/9UOYd5czhDE6BGhg5DSZvghpId0KX/VXySm/aSxduaO73
	 0sGexA+yNE87A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6217184BD8;
	Tue,  1 Jul 2025 23:39:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F00F2196
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 23:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECD4A417B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 23:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YZ-fDn5dQf7o for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 23:39:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D47C41736
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D47C41736
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D47C41736
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 23:39:25 +0000 (UTC)
X-CSE-ConnectionGUID: bhcbws8lQfy1/5Y/LpCgaw==
X-CSE-MsgGUID: XsphscxBRdO2Tryl4UF0Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="64744817"
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="64744817"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 16:39:22 -0700
X-CSE-ConnectionGUID: ciClxTy/RtaiPxv8HpaACw==
X-CSE-MsgGUID: lAVSRqjxQZupZ8SU76PVeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="153374470"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 01 Jul 2025 16:39:22 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uWkZL-000amY-1Q;
 Tue, 01 Jul 2025 23:39:19 +0000
Date: Wed, 2 Jul 2025 07:39:17 +0800
From: kernel test robot <lkp@intel.com>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202507020615.CBjCysqA-lkp@intel.com>
References: <20250701152244.366226-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250701152244.366226-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751413166; x=1782949166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yYf9EOICqZsl+xCkOeF5qUltMH5rv9OAeeVhXj8Ajd4=;
 b=b5tM27FvvpJ5FS65odKYl82kewqrPsjfN8kszpMFWqNAidDRXzDQtcAN
 iVanCmF1Gvdus395oGhjuHHuIUgxFRYsRugZKzBtGtdf/aEVVv+sS0VWs
 FhQkGKYdsLdviA8WdlCXOPGv2HCubj7GtGq3tySEkeEeH+ZTFcVUU25Ve
 gZ6kyyLVbiIEC1oe90koHJ+MKS4z7/EySvv/Nm8Q9tp98JjNFb/Md8CT5
 JDt2gVmPoqlBLqo3pMOab6s8YbmayCXFfSNwlkmrV2fjvKZ8IsHuYEPDi
 w6E+h75fLp9oZkW9MZHQwx2EsjnL6X3+vNIQ7zLs3o91UPw4WgAeAuJxd
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b5tM27Fv
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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
Cc: netdev@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Przemyslaw Korba <przemyslaw.korba@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Grzegorz,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 7d0ed75968573290cf921ae6f6ee0e985d8beab9]

url:    https://github.com/intel-lab-lkp/linux/commits/Grzegorz-Nitka/ice-add-recovery-clock-and-clock-1588-control-for-E825c/20250701-232553
base:   7d0ed75968573290cf921ae6f6ee0e985d8beab9
patch link:    https://lore.kernel.org/r/20250701152244.366226-1-grzegorz.nitka%40intel.com
patch subject: [PATCH v3 iwl-next] ice: add recovery clock and clock 1588 control for E825c
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20250702/202507020615.CBjCysqA-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250702/202507020615.CBjCysqA-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507020615.CBjCysqA-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:2115 Excess function parameter 'divider' description in 'ice_dpll_cfg_synce_ethdiv_e825c'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
