Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 382097B0515
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 15:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83E3B421D6;
	Wed, 27 Sep 2023 13:17:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83E3B421D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695820674;
	bh=Tmu+/519xPaB9ILHiwuBbC/8Wy1eXrre2EzqwjZo+Po=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1ruxf/EJFpss7LdEw7BO6MRUL2Gg6aSA1ahmtWjjRZtQ3SMye6ga45w28WbKbp68q
	 wqXBA41c15RGL4wBXLK/y7TfpcR1XVk+O0IbBqlc0ZKSYCpJHTHbMxZe63FNZYm/dZ
	 U3A1n8qN8fqW2IEaMb49xIAoslcRyv+qtz5mNgc8PmH+USPVvtdpNOY1oxP0PPnJ74
	 1DPfygFWk3JH6B/+bdHq4mJ+RdxJoyvd0WYTQrP2BbzUUunJuslaVqxFLzKjyAW6IM
	 RPDenawt7WUbMAUJrwDhT8l1XN/tudVS6924CRs3+FAsHBIuOURc5z8d1bb4Gk5xKt
	 0UfGJzHuKTwTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NsxUw4Isjlzw; Wed, 27 Sep 2023 13:17:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06EB7421D3;
	Wed, 27 Sep 2023 13:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06EB7421D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98CB51BF275
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 13:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AEA8401CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 13:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AEA8401CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RuHbBCFhDByB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 13:17:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 672F64010F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 13:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 672F64010F
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="445954381"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="445954381"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="749195792"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="749195792"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 27 Sep 2023 06:17:43 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qlUQ8-0000DT-0F;
 Wed, 27 Sep 2023 13:17:40 +0000
Date: Wed, 27 Sep 2023 21:17:27 +0800
From: kernel test robot <lkp@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 netdev@vger.kernel.org
Message-ID: <202309272113.rttl6e6s-lkp@intel.com>
References: <20230927092435.1565336-5-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230927092435.1565336-5-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695820667; x=1727356667;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=l+BpWTQS4cjrg0/4ItX5h1/FTVqglpHuksfECXMzkUU=;
 b=KoSn5z7NHhMPC+LLlCnmh0J93hTcSFYizWGJR1+ApgtV7qik9JfG3gI4
 Ug3dC8+zzTqMdvnKksJZv0K7TlvE0H7zY6JUDh92TROsp/qZAnA9auMGJ
 3BFkTCUc5kbXfvDXDrGch1JG12V0m8MnyyvXHMJt7muLV6zY+T/lnmlyr
 FizFrwIia0gy4pTLtXMzEQxZe4EMkW+nbu3siVzGrL4WANRFNiR1HhV2T
 tKSSDYzeX25M9jyq2znk0YETZnEUwcGitGHepgnifM9LDlQTHce4hUmVM
 GV3iw0TSGno1+jd8isg4zyhmbfIcPdjmwsI4L3DQyXWlSDbVt0LBJ3jaz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KoSn5z7N
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/4] ice: dpll: implement
 phase related callbacks
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 oe-kbuild-all@lists.linux.dev, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Arkadiusz,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Arkadiusz-Kubalewski/dpll-docs-add-support-for-pin-signal-phase-offset-adjust/20230927-172843
base:   net-next/main
patch link:    https://lore.kernel.org/r/20230927092435.1565336-5-arkadiusz.kubalewski%40intel.com
patch subject: [PATCH net-next 4/4] ice: dpll: implement phase related callbacks
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20230927/202309272113.rttl6e6s-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230927/202309272113.rttl6e6s-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309272113.rttl6e6s-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_dpll.c:1064: warning: Function parameter or member 'phase_offset' not described in 'ice_dpll_phase_offset_get'
>> drivers/net/ethernet/intel/ice/ice_dpll.c:1064: warning: Excess function parameter 'phase_adjust' description in 'ice_dpll_phase_offset_get'


vim +1064 drivers/net/ethernet/intel/ice/ice_dpll.c

  1039	
  1040	#define ICE_DPLL_PHASE_OFFSET_DIVIDER	100
  1041	#define ICE_DPLL_PHASE_OFFSET_FACTOR		\
  1042		(DPLL_PHASE_OFFSET_DIVIDER / ICE_DPLL_PHASE_OFFSET_DIVIDER)
  1043	/**
  1044	 * ice_dpll_phase_offset_get - callback for get dpll phase shift value
  1045	 * @pin: pointer to a pin
  1046	 * @pin_priv: private data pointer passed on pin registration
  1047	 * @dpll: registered dpll pointer
  1048	 * @dpll_priv: private data pointer passed on dpll registration
  1049	 * @phase_adjust: on success holds pin phase_adjust value
  1050	 * @extack: error reporting
  1051	 *
  1052	 * Dpll subsystem callback. Handler for getting phase shift value between
  1053	 * dpll's input and output.
  1054	 *
  1055	 * Context: Acquires pf->dplls.lock
  1056	 * Return:
  1057	 * * 0 - success
  1058	 * * negative - error
  1059	 */
  1060	static int
  1061	ice_dpll_phase_offset_get(const struct dpll_pin *pin, void *pin_priv,
  1062				  const struct dpll_device *dpll, void *dpll_priv,
  1063				  s64 *phase_offset, struct netlink_ext_ack *extack)
> 1064	{
  1065		struct ice_dpll *d = dpll_priv;
  1066		struct ice_pf *pf = d->pf;
  1067	
  1068		mutex_lock(&pf->dplls.lock);
  1069		if (d->active_input == pin)
  1070			*phase_offset = d->phase_offset * ICE_DPLL_PHASE_OFFSET_FACTOR;
  1071		else
  1072			*phase_offset = 0;
  1073		mutex_unlock(&pf->dplls.lock);
  1074	
  1075		return 0;
  1076	}
  1077	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
