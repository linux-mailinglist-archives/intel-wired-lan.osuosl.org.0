Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA158B7CD7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 18:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6717A40361;
	Tue, 30 Apr 2024 16:28:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8F9frtu-6LC1; Tue, 30 Apr 2024 16:28:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC6F54033C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714494521;
	bh=T/5RT89VH10U2YCTpiYe+9+eLN5lZckPajPs1toh1x4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C7a+t4EKipKUIgr9NCr3e64/RgP7KXfoiuvlNnet9Y03t+a6R8f0mNJCwmgSlIsPT
	 /SJdrTxVyl/BpsyEKMpUyhpdH1BrUS74XaUKyHftgvJdblkFbaaR7q+p0sNMDGCC5E
	 u5Z17d7U49QLtKL3pdFjq6Mo9Ip9o0HL8J6eaYmYxVe7nCSyjGhhv8AAnb7aRSB9WL
	 lAYud69K9BOaHHdiF/OyCBJ9VOvXFqVZGJduYaoThichUOiFp4ID70TfhsXJKi5NPr
	 ua9AwBz4x97n6g2+cwkJ0izZpHNrT1lVe/bBR01MDTlGYRjZOyzPeJM3CRs7Wb509f
	 j1nzIZ6rfPARg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC6F54033C;
	Tue, 30 Apr 2024 16:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E76A41BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 16:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0EA881FD9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 16:28:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v_VACSyX2Oww for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 16:28:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7898781FD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7898781FD8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7898781FD8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 16:28:38 +0000 (UTC)
X-CSE-ConnectionGUID: ulsNX7kAQOq6AaYj7SmexA==
X-CSE-MsgGUID: 7VLk30ePQtelno2MnuERIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="13994274"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="13994274"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 09:28:37 -0700
X-CSE-ConnectionGUID: XwE2O6zpS8Onouf1kmd13g==
X-CSE-MsgGUID: Y3r7vwXvQb6rUnmrtCY3zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="57394192"
Received: from lkp-server01.sh.intel.com (HELO e434dd42e5a1) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 30 Apr 2024 09:28:31 -0700
Received: from kbuild by e434dd42e5a1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s1qLE-0008Lj-1Y;
 Tue, 30 Apr 2024 16:28:28 +0000
Date: Wed, 1 May 2024 00:27:54 +0800
From: kernel test robot <lkp@intel.com>
To: lakshmi.sowjanya.d@intel.com, tglx@linutronix.de, jstultz@google.com,
 giometti@enneenne.com, corbet@lwn.net, linux-kernel@vger.kernel.org
Message-ID: <202405010052.Cxh2bazm-lkp@intel.com>
References: <20240430085225.18086-10-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240430085225.18086-10-lakshmi.sowjanya.d@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714494519; x=1746030519;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ugkt3k4B4PYbENI6jlGFe6etoG8QJ8s0xUKQxIhNEMY=;
 b=gQCdMU1HwtJ2atV1iqV/YqH9aw7a7u5rdZH/x3c9gmrvRu/luQlrPAex
 eKyADAWCIjKK388meqmPQsAN8kRIlgYYOtnJ2XanIegoz+/Lbt78UDQsM
 of56wzkZdKNCJUVatzgy2kncmVz7UnsjL4iOXlBjfL0lgniTxoRCwuhBq
 1li2DBCnjPyy8up9TiwtK4uyx4aNMBd2MUsA6OtGpH0xAoP8Oq6wUZAy4
 WpJA9vPLWfsCfI/96N9ZRVetANw62/bXgLOsCW8nOx+dGG5WF7pYhPsxE
 bCFGoc5Af/ipZFf+Gkcmr/WvJ5i+cFx5kt9xsfVDmh7isCRxwAiLPVM9H
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gQCdMU1H
Subject: Re: [Intel-wired-lan] [PATCH v7 09/12] timekeeping: Add function to
 convert realtime to base clock
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 mcoquelin.stm32@gmail.com, linux-doc@vger.kernel.org,
 thejesh.reddy.t.r@intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, alexandre.torgue@foss.st.com,
 linux-sound@vger.kernel.org, perex@perex.cz, anthony.l.nguyen@intel.com,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 lakshmi.sowjanya.d@intel.com, oe-kbuild-all@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tip/timers/core]
[also build test WARNING on tnguy-next-queue/dev-queue tnguy-net-queue/dev-queue linus/master v6.9-rc6 next-20240430]
[cannot apply to tip/x86/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/lakshmi-sowjanya-d-intel-com/timekeeping-Add-base-clock-properties-in-clocksource-structure/20240430-165602
base:   tip/timers/core
patch link:    https://lore.kernel.org/r/20240430085225.18086-10-lakshmi.sowjanya.d%40intel.com
patch subject: [Intel-wired-lan] [PATCH v7 09/12] timekeeping: Add function to convert realtime to base clock
config: openrisc-defconfig (https://download.01.org/0day-ci/archive/20240501/202405010052.Cxh2bazm-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240501/202405010052.Cxh2bazm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202405010052.Cxh2bazm-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> kernel/time/timekeeping.c:1271: warning: Function parameter or struct member 'cycles' not described in 'ktime_real_to_base_clock'
   kernel/time/timekeeping.c:2547: warning: Function parameter or struct member 'txc' not described in 'do_adjtimex'
   kernel/time/timekeeping.c:2615: warning: Function parameter or struct member 'phase_ts' not described in 'hardpps'
   kernel/time/timekeeping.c:2615: warning: Function parameter or struct member 'raw_ts' not described in 'hardpps'


vim +1271 kernel/time/timekeeping.c

  1259	
  1260	/**
  1261	 * ktime_real_to_base_clock() - Convert CLOCK_REALTIME timestamp to a base clock timestamp
  1262	 * @treal:	CLOCK_REALTIME timestamp to convert
  1263	 * @base_id:	base clocksource id
  1264	 * @*cycles:	pointer to store the converted base clock timestamp
  1265	 *
  1266	 * Converts a supplied, future realtime clock value to the corresponding base clock value.
  1267	 *
  1268	 * Return:  true if the conversion is successful, false otherwise.
  1269	 */
  1270	bool ktime_real_to_base_clock(ktime_t treal, enum clocksource_ids base_id, u64 *cycles)
> 1271	{
  1272		struct timekeeper *tk = &tk_core.timekeeper;
  1273		unsigned int seq;
  1274		u64 delta;
  1275	
  1276		do {
  1277			seq = read_seqcount_begin(&tk_core.seq);
  1278			if ((u64)treal < tk->tkr_mono.base_real)
  1279				return false;
  1280			delta = (u64)treal - tk->tkr_mono.base_real;
  1281			if (!convert_ns_to_cs(&delta))
  1282				return false;
  1283			*cycles = tk->tkr_mono.cycle_last + delta;
  1284			if (!convert_cs_to_base(cycles, base_id))
  1285				return false;
  1286		} while (read_seqcount_retry(&tk_core.seq, seq));
  1287	
  1288		return true;
  1289	}
  1290	EXPORT_SYMBOL_GPL(ktime_real_to_base_clock);
  1291	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
