Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E208CB8C82E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 14:27:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62CFA84063;
	Sat, 20 Sep 2025 12:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0u7kBQuYtR3Q; Sat, 20 Sep 2025 12:27:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A38B784008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758371234;
	bh=v7Tag+HQl4HiH2LB1PS4ORS/qVSBuVTVMf38dxopp5k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F5Sss9yk7Z4wBGIU2FCNVnMqdvDROpFrrkog3e9/C1wecS+NzfvZfGzb9moyFUaXG
	 1TcQm69PXzQf4v2n0hHjYfOaBH38E0yBr3O8JfM5qj26CKzcwAl0IKgsSMcn9MFYVw
	 KfBh1wjuryERSgQEaZdAbQs188cUsORgsc1uDkK0KSJ+TGapVCEG/5mIO0o9HT1wwg
	 bhvulGzS9Jtkcnw9BMhjGTHewGuuPL7yczbMX53OPhGMnW0qqQtYPjXXZ0rTyRA5Fe
	 DoE5O466/gxcu4vN1PW4/jXSGkYdKXKWeT+mQyHAk2uVwG5VRATjBplbQBBAFtHA7z
	 YXoT0z+DN9/Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A38B784008;
	Sat, 20 Sep 2025 12:27:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0BB4219
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A72B484004
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:27:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XqdmVCwIAjJk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 12:27:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A96F084002
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A96F084002
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A96F084002
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:27:11 +0000 (UTC)
X-CSE-ConnectionGUID: aVmxU4mLQhOfa8onilXq2Q==
X-CSE-MsgGUID: XIt7kKV0T5qMyqqpJrKWgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="71325395"
X-IronPort-AV: E=Sophos;i="6.18,280,1751266800"; d="scan'208";a="71325395"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 05:26:55 -0700
X-CSE-ConnectionGUID: oeUwm1cUSmatUCtaLXJsLA==
X-CSE-MsgGUID: m5Ydmo0IRZetgs2TRDPCTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,280,1751266800"; d="scan'208";a="175977382"
Received: from lkp-server01.sh.intel.com (HELO 84a20bd60769) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 20 Sep 2025 05:26:54 -0700
Received: from kbuild by 84a20bd60769 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uzwg0-0005K7-18;
 Sat, 20 Sep 2025 12:26:52 +0000
Date: Sat, 20 Sep 2025 20:26:48 +0800
From: kernel test robot <lkp@intel.com>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 arkadiusz.kubalewski@intel.com
Message-ID: <202509202023.HY9L56JJ-lkp@intel.com>
References: <20250919165925.1685446-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919165925.1685446-1-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758371231; x=1789907231;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0uCuJCa0DIvL7b1TzTkyiorVUTTZkJJNmHbnezsu2Pg=;
 b=YUFD44NdlRhOaz5Jp1cTSB30ECnF7yXRSMocCmVGBydOExse6/Fnwkis
 dZhuk859oMy1ZtHRgIDh5kmgXyqEWbSNlTgVAIukBTh/lYi1bGoPn3qDN
 W22vNx6cmvYys0FQxpByLrEqD6Fs+QsKibtmi4PJg6VDbXmnlKUyxUDEW
 vndMX/dhSwAAwVMN8v2tM1v8lTsthyTQEh+MlUl9vyosTY0nNMjG6PLk4
 PjiBbo66S1TsdlSy3woyoty43ab3oWfRk+KLipZdn+BXxfzoWWLrBc5UW
 6x7u+LOLepq6PJL6dOMZ2jp1gg+EyaTKjXKkinM8Ani9+l69exFTpx3Wt
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YUFD44Nd
Subject: Re: [Intel-wired-lan] [RESEND PATCH v2 iwl-next] ice: add TS PLL
 control for E825 devices
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

Hi Grzegorz,

kernel test robot noticed the following build warnings:

[auto build test WARNING on ff9f8329f189c17549f3fbb5058505fb3e46dd99]

url:    https://github.com/intel-lab-lkp/linux/commits/Grzegorz-Nitka/ice-add-TS-PLL-control-for-E825-devices/20250920-010351
base:   ff9f8329f189c17549f3fbb5058505fb3e46dd99
patch link:    https://lore.kernel.org/r/20250919165925.1685446-1-grzegorz.nitka%40intel.com
patch subject: [Intel-wired-lan] [RESEND PATCH v2 iwl-next] ice: add TS PLL control for E825 devices
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20250920/202509202023.HY9L56JJ-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 15.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250920/202509202023.HY9L56JJ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509202023.HY9L56JJ-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/net/ethernet/intel/ice/ice_tspll.c:688 function parameter 'pf' not described in 'ice_tspll_set_cfg'
--
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:73 Enum value 'ICE_DPLL_PIN_TYPE_INPUT_E825' not described in enum 'ice_dpll_pin_type'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:73 Enum value 'ICE_DPLL_PIN_TYPE_OUTPUT_E825' not described in enum 'ice_dpll_pin_type'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:73 Enum value 'ICE_DPLL_PIN_TYPE_INPUT_TSPLL_E825' not described in enum 'ice_dpll_pin_type'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:73 Enum value 'ICE_DPLL_PIN_TYPE_OUTPUT_TSPLL_E825' not described in enum 'ice_dpll_pin_type'
>> Warning: drivers/net/ethernet/intel/ice/ice_dpll.c:694 function parameter 'pf' not described in 'ice_dpll_input_tspll_update_e825c'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
