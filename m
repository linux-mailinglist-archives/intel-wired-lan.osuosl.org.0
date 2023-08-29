Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D61778C4B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 15:02:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9FD7820DD;
	Tue, 29 Aug 2023 13:02:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9FD7820DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693314148;
	bh=7KqiEBxUDEFsT+ZFT6J/1SV233XjTeLKqV6O873SdbI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yE8phKcIL3PhMuGSJ58Vzvl8XJ/AUlLu+NdpSExMs66FuZktD/cWmkQUa+Yro38kH
	 MAel4UIe4rrQKpsGaUjUNZ1X6K1CymoSVogUExn1f3vw5l62POnau1IqopM693i/Yf
	 IKcGZnTYYQIr7VgU015gsLs2531GaR9W3sLfuk4Ozcd+h4WteSgH7LTJc5OpzpSWAB
	 IfVmd/D7OuGpjkQz2Wb09FqqLldGlgEGPSIOq13lPTcI/NH9gdz8BlHhRa6t9hts1b
	 rUXx+mNt9bcMu/bEGy+LKafneO1vv/Qswm4LZRJPihPsUJnwEykrmjWW5UczTnyZze
	 sVzuW1yind0+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CeAgu2OYe6TJ; Tue, 29 Aug 2023 13:02:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBB0582077;
	Tue, 29 Aug 2023 13:02:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBB0582077
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90E3A1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 13:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F39D82035
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 13:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F39D82035
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nu7nLeW374mq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 13:01:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 76E6C810CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 13:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76E6C810CC
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="379128821"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="379128821"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 05:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="828785221"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="828785221"
Received: from lkp-server02.sh.intel.com (HELO daf8bb0a381d) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Aug 2023 05:54:57 -0700
Received: from kbuild by daf8bb0a381d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qayF8-0008jn-1C;
 Tue, 29 Aug 2023 12:54:52 +0000
Date: Tue, 29 Aug 2023 20:54:44 +0800
From: kernel test robot <lkp@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202308292029.9Je6bgXn-lkp@intel.com>
References: <20230829104041.64131-3-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230829104041.64131-3-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693314059; x=1724850059;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OqrJ7NCugAHCrcBizDstYU3tAj/RSOo3I5oth/zsfMI=;
 b=jEuSArkPN2JAaD70WC+p6DhMZs5m9OjEqy6UBby2oDQGtfgd+R3nZy2G
 jxogYf76Shu2yZe7qAjULm1S0J24BeSGiVsWY+/DUsUbx5kL2KyC/kE1t
 UzGVuHhZIy2mrB5VhvoYRnGm30B7sOU526d+yybA8kFh4ah6V0CE0gYzk
 yMAQzSBpUS0UZy8zKhsdigO2PlswxpMlmjz3dvX0scyPH+HkQurcvkOOU
 pov9q1GeqwidljMshPH2Bm/N2otOk6ZaoYCzjztP6yhjyEvIkZgbIgbDX
 wUQ6Dc1HWQt0sZjUBJu+Zvo7no7+izaPP3/f6kFi4Sk4EvHTXaSuLKjZv
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jEuSArkP
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 02/11] ice: introduce PTP
 state machine
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Karol,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 938672aefaeb88c4e3b6d8bc04ff97900e0809dd]

url:    https://github.com/intel-lab-lkp/linux/commits/Karol-Kolacinski/ice-use-ice_pf_src_tmr_owned-where-available/20230829-184543
base:   938672aefaeb88c4e3b6d8bc04ff97900e0809dd
patch link:    https://lore.kernel.org/r/20230829104041.64131-3-karol.kolacinski%40intel.com
patch subject: [Intel-wired-lan] [PATCH v4 iwl-next 02/11] ice: introduce PTP state machine
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20230829/202308292029.9Je6bgXn-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230829/202308292029.9Je6bgXn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202308292029.9Je6bgXn-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_ptp.c:265:20: warning: 'ice_ptp_state_str' defined but not used [-Wunused-function]
     265 | static const char *ice_ptp_state_str(enum ice_ptp_state state)
         |                    ^~~~~~~~~~~~~~~~~


vim +/ice_ptp_state_str +265 drivers/net/ethernet/intel/ice/ice_ptp.c

   257	
   258	/**
   259	 * ice_ptp_state_str - Convert PTP state to readable string
   260	 * @state: PTP state to convert
   261	 *
   262	 * Returns: the human readable string representation of the provided PTP
   263	 * state, used for printing error messages.
   264	 */
 > 265	static const char *ice_ptp_state_str(enum ice_ptp_state state)
   266	{
   267		switch (state) {
   268		case ICE_PTP_UNINIT:
   269			return "UNINITIALIZED";
   270		case ICE_PTP_INITIALIZING:
   271			return "INITIALIZING";
   272		case ICE_PTP_READY:
   273			return "READY";
   274		case ICE_PTP_RESETTING:
   275			return "RESETTING";
   276		case ICE_PTP_ERROR:
   277			return "ERROR";
   278		}
   279	
   280		return "UNKNOWN";
   281	}
   282	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
