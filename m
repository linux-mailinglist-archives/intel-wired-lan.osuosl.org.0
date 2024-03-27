Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD1488D364
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 01:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDD4540602;
	Wed, 27 Mar 2024 00:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xscbMMwKoIhM; Wed, 27 Mar 2024 00:30:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9E49409B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711499415;
	bh=bIw5en//d5kSxqFZAFowo6gIXjlfTEglslsvvcbMEb0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IwIM64kEB4Sea9oNjrEyYZcfatose7cA8b0inO8p/30hPiliBdfF6C1SVZUa1Qn/a
	 l0oJElpTu1rmJTMRBtqUUM6ltLhPL9RlXf5dIgyHsrSbygRBACNfbm4IYfrWyBIze6
	 CDr8HX3HUYbPzFqBonwUmI9U/YFgKp5E16h4ZisEhmyvsq09btUw9OuL24YIGXdDZ2
	 Ze9NP8hv+V7R/CAEv1ETY6RCzsEY5MJy8uCblYiEhYNsz2H91XT9JRPkLGCt8X4JIe
	 mmvnyEpBg/vlKtlLlKpE1f+Ir+vp2fWyN33Y8Tp8ssaBG10Lm5cWfoNi4Qc44YpJch
	 Wk541b2haot+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9E49409B3;
	Wed, 27 Mar 2024 00:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6ED21BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 00:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2AB58146B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 00:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q4e2SW4-jUOT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 00:30:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D73D8145A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D73D8145A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D73D8145A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 00:30:11 +0000 (UTC)
X-CSE-ConnectionGUID: H8GUyV8MS6+L4n/YrZKd1g==
X-CSE-MsgGUID: 4W0uSD1vSxmrrkhQqhvBGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="10378884"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="10378884"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 17:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16191465"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by fmviesa009.fm.intel.com with ESMTP; 26 Mar 2024 17:30:06 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rpHB5-0000Za-2k;
 Wed, 27 Mar 2024 00:30:03 +0000
Date: Wed, 27 Mar 2024 08:29:19 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202403270827.aP2S0NAS-lkp@intel.com>
References: <20240326115116.10040-8-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240326115116.10040-8-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711499411; x=1743035411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=k0eMS/jLS32gyNc2iORE/GVbpuwbxUdrWVsuFejs8Iw=;
 b=NKLoUN4wxcswtF8NPYWlaF9PBqSl2mT5VL+aZ0qcB+rX2elr3JmeT1lO
 JvyUb7COiNmRgIoCvPBZz0/p5UoQAhrt9ujGwTjmH2G2zyVOXDHb7k6AD
 WVrTOue9L5YfJ9S6zIF+l7o54hP0UT8X/00qBCRXU+YfCKgR3CJYCNV9V
 rGfQ6zYuTY6pETL07zG0bOF3rceFVct5geDzFB2l0xaKrKW5m1lhSqYeU
 BT8sCLiwA6PiGrgILaYXta9dlHMbVr/Ti3fqgUoCwsli+CuxnZyPMk5jk
 sBDKjtDhs1gmtbC1yQh3lX1BMIuLNJhi/ud09t78UNjSG8yzU8bKkKX0r
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NKLoUN4w
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 07/12] iavf: add support
 for indirect access to PHC time
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Mateusz-Polchlopek/virtchnl-add-support-for-enabling-PTP-on-iAVF/20240326-200321
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240326115116.10040-8-mateusz.polchlopek%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v1 07/12] iavf: add support for indirect access to PHC time
config: openrisc-allyesconfig (https://download.01.org/0day-ci/archive/20240327/202403270827.aP2S0NAS-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240327/202403270827.aP2S0NAS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403270827.aP2S0NAS-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/pci.h:37,
                    from drivers/net/ethernet/intel/iavf/iavf.h:8,
                    from drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:4:
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c: In function 'iavf_virtchnl_ptp_get_time':
>> drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2185:30: warning: format '%lu' expects argument of type 'long unsigned int', but argument 4 has type 'unsigned int' [-Wformat=]
    2185 |                              "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %lu\n",
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:144:56: note: in expansion of macro 'dev_fmt'
     144 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                        ^~~~~~~
   include/linux/dev_printk.h:174:17: note: in expansion of macro 'dev_err'
     174 |                 dev_level(dev, fmt, ##__VA_ARGS__);                     \
         |                 ^~~~~~~~~
   include/linux/dev_printk.h:192:9: note: in expansion of macro 'dev_level_once'
     192 |         dev_level_once(dev_err, dev, fmt, ##__VA_ARGS__)
         |         ^~~~~~~~~~~~~~
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2184:17: note: in expansion of macro 'dev_err_once'
    2184 |                 dev_err_once(&adapter->pdev->dev,
         |                 ^~~~~~~~~~~~
   drivers/net/ethernet/intel/iavf/iavf_virtchnl.c:2185:102: note: format string is defined here
    2185 |                              "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %lu\n",
         |                                                                                                    ~~^
         |                                                                                                      |
         |                                                                                                      long unsigned int
         |                                                                                                    %u
--
   arch/openrisc/kernel/head.o: in function `_dispatch_do_ipage_fault':
>> (.text+0x900): relocation truncated to fit: R_OR1K_INSN_REL_26 against `no symbol'
   (.text+0xa00): relocation truncated to fit: R_OR1K_INSN_REL_26 against `no symbol'
   arch/openrisc/kernel/head.o: in function `exit_with_no_dtranslation':
>> (.head.text+0x21bc): relocation truncated to fit: R_OR1K_INSN_REL_26 against `no symbol'
   arch/openrisc/kernel/head.o: in function `exit_with_no_itranslation':
   (.head.text+0x2264): relocation truncated to fit: R_OR1K_INSN_REL_26 against `no symbol'
   init/main.o: in function `initcall_blacklisted':
   main.c:(.text+0x5b8): relocation truncated to fit: R_OR1K_INSN_REL_26 against symbol `strcmp' defined in .text section in lib/string.o
   init/main.o: in function `trace_event_raw_event_initcall_level':
   main.c:(.text+0x7a8): relocation truncated to fit: R_OR1K_INSN_REL_26 against symbol `strlen' defined in .text section in lib/string.o
   init/main.o: in function `ktime_divns.constprop.0':
   main.c:(.text+0x8b0): relocation truncated to fit: R_OR1K_INSN_REL_26 against symbol `__muldi3' defined in .text section in ../lib/gcc/or1k-linux/13.2.0/libgcc.a(_muldi3.o)
   main.c:(.text+0x900): relocation truncated to fit: R_OR1K_INSN_REL_26 against symbol `__muldi3' defined in .text section in ../lib/gcc/or1k-linux/13.2.0/libgcc.a(_muldi3.o)
   main.c:(.text+0x930): relocation truncated to fit: R_OR1K_INSN_REL_26 against symbol `__muldi3' defined in .text section in ../lib/gcc/or1k-linux/13.2.0/libgcc.a(_muldi3.o)
   main.c:(.text+0x96c): relocation truncated to fit: R_OR1K_INSN_REL_26 against symbol `__muldi3' defined in .text section in ../lib/gcc/or1k-linux/13.2.0/libgcc.a(_muldi3.o)
   init/main.o: in function `trace_initcall_finish_cb':
   main.c:(.text+0xa5c): additional relocation overflows omitted from the output


vim +2185 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c

  2163	
  2164	/**
  2165	 * iavf_virtchnl_ptp_get_time - Respond to VIRTCHNL_OP_1588_PTP_GET_TIME
  2166	 * @adapter: private adapter structure
  2167	 * @data: the message from the PF
  2168	 * @len: length of the message from the PF
  2169	 *
  2170	 * Handle the VIRTCHNL_OP_1588_PTP_GET_TIME message from the PF. This message
  2171	 * is sent by the PF in response to the same op as a request from the VF.
  2172	 * Extract the 64bit nanoseconds time from the message and store it in
  2173	 * cached_phc_time. Then, notify any thread that is waiting for the update via
  2174	 * the wait queue.
  2175	 */
  2176	static void iavf_virtchnl_ptp_get_time(struct iavf_adapter *adapter,
  2177					       void *data, u16 len)
  2178	{
  2179		struct virtchnl_phc_time *msg;
  2180	
  2181		if (len == sizeof(*msg)) {
  2182			msg = (struct virtchnl_phc_time *)data;
  2183		} else {
  2184			dev_err_once(&adapter->pdev->dev,
> 2185				     "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %lu\n",
  2186				     len, sizeof(*msg));
  2187			return;
  2188		}
  2189	
  2190		adapter->ptp.cached_phc_time = msg->time;
  2191		adapter->ptp.cached_phc_updated = jiffies;
  2192		adapter->ptp.phc_time_ready = true;
  2193	
  2194		wake_up(&adapter->ptp.phc_time_waitqueue);
  2195	}
  2196	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
