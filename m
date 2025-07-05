Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53287AFA188
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Jul 2025 21:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2244140CC0;
	Sat,  5 Jul 2025 19:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMspczOrmxbR; Sat,  5 Jul 2025 19:39:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1ADD640C55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751744377;
	bh=WEiangI7qsCL9ZUuEaPlSDdt5Qiix+cMBEAfKLcCSVM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NewV6J3Zz/Uh3vZUbeji3TtPe5eQK2mKISBQ9xSnvp28/zPpJvXB2sEKrO9VZutue
	 fY/G9wL37676sQr8qn0FsqRduljAeM6/TAlvNE0bP7lu1AzNVL3sHBblFcYxRTYqg1
	 JwaPBmyN1dUw7nbKqabc4KDf6NESRMwE5TpY8IKo1+xEHau6Rvk7u1EzfRyX4hnw9J
	 J/JNtTC3unESK3mp320Vu1bsqrYfv3qW+TqUpTUrQbv58ASEbsKd7TA3t4f6t550z7
	 DNZsp7Af+ViJIvqATgzbojhnjj+4WVdmHei6+KjQxTYxp4QqaQLJE1kpc17S7lJZxZ
	 mbW1GxApHakjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1ADD640C55;
	Sat,  5 Jul 2025 19:39:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B2BC415F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jul 2025 19:39:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9888B60F81
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jul 2025 19:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3DbMitqErMMQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Jul 2025 19:39:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BFD51610FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD51610FD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFD51610FD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Jul 2025 19:39:33 +0000 (UTC)
X-CSE-ConnectionGUID: RbBkVBfcRM+iEZ5eCMjreA==
X-CSE-MsgGUID: IWHpMccVQvWnpvaxxbq0UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11485"; a="54138981"
X-IronPort-AV: E=Sophos;i="6.16,290,1744095600"; d="scan'208";a="54138981"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2025 12:39:33 -0700
X-CSE-ConnectionGUID: D2buj6/PSK+QwWkOHwBSlA==
X-CSE-MsgGUID: zOQacUnnQ/GfQ+24ECwKEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,290,1744095600"; d="scan'208";a="192044663"
Received: from lkp-server01.sh.intel.com (HELO 0b2900756c14) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 05 Jul 2025 12:39:30 -0700
Received: from kbuild by 0b2900756c14 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uY8jQ-0004gd-1b;
 Sat, 05 Jul 2025 19:39:28 +0000
Date: Sun, 6 Jul 2025 03:38:56 +0800
From: kernel test robot <lkp@intel.com>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202507060341.1fxNEfxg-lkp@intel.com>
References: <20250704155155.1976706-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250704155155.1976706-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751744374; x=1783280374;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yeHuztYKX/J87YvswDe2bHMcYUEpJjESV2g0dxCOA3w=;
 b=c6BchwXZARLFSigltHT75qotURBXabsbC8gqTQccO4sPTbXMfsqwiA/t
 Nm9SP8XJV3ZBnD5Rty8OFWgbnHYwSD2E3+SYqTp6QVIY+fQN5Da6u8EWu
 dkboxV8WlDPhGdlrD0jNQSZDNEa7nkTfyYF1MPtdZPVobeNV12TE8qy87
 d9wmCZLxjoqLiJhocKW27YaBgNzDG79WSU7kf6MOfA2jW9JYfUWYycFOi
 gdFP4zzkoy51UB7L8bp3bQH8sNUqiVBQqFtM2VJERJ+DL2bf2aMoo6ni0
 f3tccSat3mzZvX8tPXPt/otZ58t60ZWryyxJd9GXcXNW+Y/Xt43IJ568W
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c6BchwXZ
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next] ice: add recovery clock
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

[auto build test WARNING on 6dbc64bfa1f08ecc3770d1c795ecdde25167fe63]

url:    https://github.com/intel-lab-lkp/linux/commits/Grzegorz-Nitka/ice-add-recovery-clock-and-clock-1588-control-for-E825c/20250704-235415
base:   6dbc64bfa1f08ecc3770d1c795ecdde25167fe63
patch link:    https://lore.kernel.org/r/20250704155155.1976706-1-grzegorz.nitka%40intel.com
patch subject: [PATCH v4 iwl-next] ice: add recovery clock and clock 1588 control for E825c
config: x86_64-randconfig-121-20250705 (https://download.01.org/0day-ci/archive/20250706/202507060341.1fxNEfxg-lkp@intel.com/config)
compiler: clang version 20.1.7 (https://github.com/llvm/llvm-project 6146a88f60492b520a36f8f8f3231e15f3cc6082)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250706/202507060341.1fxNEfxg-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507060341.1fxNEfxg-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ice/ice_ptp_hw.c:135:51: sparse: sparse: Using plain integer as NULL pointer
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:136:51: sparse: sparse: Using plain integer as NULL pointer
   drivers/net/ethernet/intel/ice/ice_ptp_hw.c:364:9: sparse: sparse: context imbalance in 'ice_ptp_exec_tmr_cmd' - wrong count at exit

vim +135 drivers/net/ethernet/intel/ice/ice_ptp_hw.c

   133	
   134	static const struct ice_cgu_pin_desc ice_e825c_inputs[] = {
 > 135		{ "CLK_IN_0",	 0, DPLL_PIN_TYPE_MUX, 0, 0},
   136		{ "CLK_IN_1",	 0, DPLL_PIN_TYPE_MUX, 0, 0},
   137	};
   138	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
