Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFFB7D3FAA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Oct 2023 20:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8467837D3;
	Mon, 23 Oct 2023 18:58:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8467837D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698087499;
	bh=/M6YW9kwIfs8Wq6k0Q/zRrc/wnYdynYPRoQL4LeNa2s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AFwWLdWwXvgfCf/9aeILpFyqILezAGmG/CO8f7iuAJijXFCr5DzOQKhmf5epE4YvX
	 ugqvGylcgpPNBc6MHOFdxdaZDH+5IIWNTZOGzCpHHM5/XOflS4kubyJXRu6Se5lzph
	 aj7yu5itSOPm2suzhXf7D2GywuMWG/hcjUzFIaC6rIc9rm63jr8xVeIx+etTGW3zQf
	 JcCjPZhU8UMOJN/wLWGrFU721Rd/tjF2xI2kLij1cWpKrdggqLwA9Sxw2kXgGvQrMq
	 PcY7njuvJMzuMKtF1tp3F3SImtV7sFIjHNXZTSgWxLn5EBtdNJGyOgdvtUKb5p5bQy
	 rea9NySptYYVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTDD0EdH45Hj; Mon, 23 Oct 2023 18:58:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A317F837CE;
	Mon, 23 Oct 2023 18:58:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A317F837CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6D91BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 18:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32994837CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 18:58:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32994837CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AS06PqdTVwt1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Oct 2023 18:58:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15524837B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Oct 2023 18:58:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15524837B9
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="390791176"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="390791176"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 11:58:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931781013"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931781013"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 23 Oct 2023 11:58:07 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qv07p-0007AX-0n;
 Mon, 23 Oct 2023 18:58:05 +0000
Date: Tue, 24 Oct 2023 02:57:17 +0800
From: kernel test robot <lkp@intel.com>
To: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org
Message-ID: <202310240231.6eF5YKB4-lkp@intel.com>
References: <20231023162928.245583-3-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231023162928.245583-3-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698087492; x=1729623492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jfRzDBKygKvxCl+MnO+GjTDOLBtOdkySu7nZa6XOIwI=;
 b=R1ExYlTXWggRm0W5OmIQofU7Km9CdpSqQCe61w37PS+F9uRvtU7JwbLz
 Woozl+AUgNYiApMoVjd7PrMi7sHUAFORCTkJ7nw9oVd0nsHmxs8AGNm0J
 datqp7b6kvF8M3q6vyaHIEdE4/HGrenW44kVdA9IwSyawGtJpgPD522Oy
 fAGd/wlVEQRcjhjZ5S1QA82YKSVUa9qYdYMNmLwaT+FItnxEsN4by5Kgx
 ZbnxKpUW3CRT/rTZ9XP09YbGlvP7Cywk+O3DZ0G8wMxg8b2nXA4QuLtnZ
 gHWMPmSg+keGw+SnXRVjdMuu3AU0JgTwOoz4ABPhIqRbt46iDpTJKEvuT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R1ExYlTX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] i40e: Add other helpers
 to check version of running firmware and AQ API
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
Cc: dacampbe@redhat.com, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 oe-kbuild-all@lists.linux.dev, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ivan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Ivan-Vecera/i40e-Move-i40e_is_aq_api_ver_ge-helper/20231024-003221
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20231023162928.245583-3-ivecera%40redhat.com
patch subject: [PATCH iwl-next 2/3] i40e: Add other helpers to check version of running firmware and AQ API
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20231024/202310240231.6eF5YKB4-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231024/202310240231.6eF5YKB4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310240231.6eF5YKB4-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/intel/i40e/i40e_dcb.h:7,
                    from drivers/net/ethernet/intel/i40e/i40e.h:15,
                    from drivers/net/ethernet/intel/i40e/i40e_main.c:13:
>> drivers/net/ethernet/intel/i40e/i40e_type.h:632:1: warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
     632 | static bool inline i40e_is_fw_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
         | ^~~~~~
   drivers/net/ethernet/intel/i40e/i40e_type.h:646:1: warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
     646 | static bool inline i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
         | ^~~~~~
   drivers/net/ethernet/intel/i40e/i40e_type.h:659:1: warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
     659 | static bool inline i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
         | ^~~~~~
--
   In file included from drivers/net/ethernet/intel/i40e/i40e_dcb.h:7,
                    from drivers/net/ethernet/intel/i40e/i40e.h:15,
                    from drivers/net/ethernet/intel/i40e/i40e_ptp.c:6:
>> drivers/net/ethernet/intel/i40e/i40e_type.h:632:1: warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
     632 | static bool inline i40e_is_fw_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
         | ^~~~~~
   drivers/net/ethernet/intel/i40e/i40e_type.h:646:1: warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
     646 | static bool inline i40e_is_fw_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
         | ^~~~~~
   drivers/net/ethernet/intel/i40e/i40e_type.h:659:1: warning: 'inline' is not at beginning of declaration [-Wold-style-declaration]
     659 | static bool inline i40e_is_fw_ver_eq(struct i40e_hw *hw, u16 maj, u16 min)
         | ^~~~~~
   drivers/net/ethernet/intel/i40e/i40e_ptp.c: In function 'i40e_ptp_init':
   drivers/net/ethernet/intel/i40e/i40e_ptp.c:1353:27: warning: '%s' directive output may be truncated writing up to 287 bytes into a region of size 64 [-Wformat-truncation=]
    1353 |                          "%s", sdp_desc[i].name);
         |                           ^~
   In function 'i40e_init_pin_config',
       inlined from 'i40e_ptp_create_clock' at drivers/net/ethernet/intel/i40e/i40e_ptp.c:1392:13,
       inlined from 'i40e_ptp_init' at drivers/net/ethernet/intel/i40e/i40e_ptp.c:1497:8:
   drivers/net/ethernet/intel/i40e/i40e_ptp.c:1351:17: note: 'snprintf' output between 1 and 288 bytes into a destination of size 64
    1351 |                 snprintf(pf->ptp_caps.pin_config[i].name,
         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1352 |                          sizeof(pf->ptp_caps.pin_config[i].name),
         |                          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1353 |                          "%s", sdp_desc[i].name);
         |                          ~~~~~~~~~~~~~~~~~~~~~~~


vim +/inline +632 drivers/net/ethernet/intel/i40e/i40e_type.h

   623	
   624	/**
   625	 * i40e_is_fw_ver_ge
   626	 * @hw: pointer to i40e_hw structure
   627	 * @maj: API major value to compare
   628	 * @min: API minor value to compare
   629	 *
   630	 * Assert whether current firmware version is greater/equal than provided.
   631	 **/
 > 632	static bool inline i40e_is_fw_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
   633	{
   634	        return (hw->aq.fw_maj_ver > maj ||
   635	                (hw->aq.fw_maj_ver == maj && hw->aq.fw_min_ver >= min));
   636	}
   637	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
