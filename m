Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B86C8C03E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 19:56:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2604F40948;
	Wed,  8 May 2024 17:56:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 64y7_a07AC4J; Wed,  8 May 2024 17:56:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C978940930
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715191014;
	bh=yLJ9FcDVtothFFlRoc3wygGtJAnex6mg4sBwbGkY3uw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ziFXzfBbc0sWHnD94qcpRCC6DYx8Wypllsb3cHJQ3+NmTEbk6cAL3SQIyaPycc0xV
	 OBmMmJmCQMfct1UQedt/NAxynEVnldO0XCh68uIkXbBrylLLFOzGKL8f8fGCFvm94i
	 4gzlYP2WiK4kUyaTePlyyv9PLf/6mFa8JML9asZAUqoPPl+gIYDkbOPEs4YrXzGnls
	 iUu1DZSNAq7ZIxMQP0wT10+OQN2sKijXEunSMqWf1RuvBL9gQvMCxhYCTWKoGbl7N8
	 Id2KUBqLqpNK533Q1qse0BLqxBWBjBkSgAtzmbInCctlKy7w3sOUj2nE3iNjbkRfpO
	 waGj8S45hCccA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C978940930;
	Wed,  8 May 2024 17:56:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 783AB1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 17:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61ED9605AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 17:56:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QqdPM3sfvwgi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 17:56:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2AED360D91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AED360D91
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AED360D91
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 17:56:49 +0000 (UTC)
X-CSE-ConnectionGUID: GsISoTl8TlGfNGT7KRYsRw==
X-CSE-MsgGUID: bn8mJLSWRmyfLLf5fuWk8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14866373"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="14866373"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 10:56:50 -0700
X-CSE-ConnectionGUID: zxobd8YET5uEesz/RMcfsg==
X-CSE-MsgGUID: mnsBKCwgQry3x8FmPaCH5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33661787"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 10:56:45 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s4lWz-00000005Wxk-3Bor; Wed, 08 May 2024 20:56:41 +0300
Date: Wed, 8 May 2024 20:56:41 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Message-ID: <Zju82TRJ8EwJh8is@smile.fi.intel.com>
References: <20240508132315.1121086-1-andriy.shevchenko@linux.intel.com>
 <202405090110.rS1cBZES-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202405090110.rS1cBZES-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715191011; x=1746727011;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8GWvJFhjz+4IneZTgTdmlJNfYB6EqWQuwqKdICsfABI=;
 b=OCQvLHFdf8KJYg1Bbl3/bh2T8bDu7CCYnw2axSlSYem3xbU8+F4lv0R9
 KShUb66NB9eYFTI1jKAWdpyB910dmDff1sMoCC+MSIMOvnjcjt8QmHoQs
 HE4EhsvaZthmkXt17dq6+qWTbmR97n/lr7wSbL8FsKGHlCn30O+yx97sJ
 jPuEyQmtKeQkebyoCFIr3tLKCRZCOsChxkiXOSqr/CYYrtDaoeYtJf1N3
 7NIousA3nbLUj4dNphL184G7YeeRnoyK1j9zfZwkrWKCG66pboPO/cbtF
 0ZoXzXq170eMZKoTTY4EgZWo4Yt8JSRuahQpoR3Si+Qg8yxb8C6BAZiM4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OCQvLHFd
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/1] net: intel: Use *-y
 instead of *-objs in Makefile
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
Cc: Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, oe-kbuild-all@lists.linux.dev,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 09, 2024 at 01:28:19AM +0800, kernel test robot wrote:
> Hi Andy,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on net-next/main]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Andy-Shevchenko/net-intel-Use-y-instead-of-objs-in-Makefile/20240508-212446
> base:   net-next/main
> patch link:    https://lore.kernel.org/r/20240508132315.1121086-1-andriy.shevchenko%40linux.intel.com
> patch subject: [PATCH net-next v1 1/1] net: intel: Use *-y instead of *-objs in Makefile
> config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240509/202405090110.rS1cBZES-lkp@intel.com/config)
> compiler: loongarch64-linux-gcc (GCC) 13.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240509/202405090110.rS1cBZES-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202405090110.rS1cBZES-lkp@intel.com/
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):

> >> ERROR: modpost: "igc_led_free" [drivers/net/ethernet/intel/igc/igc.ko] undefined!
> >> ERROR: modpost: "igc_led_setup" [drivers/net/ethernet/intel/igc/igc.ko] undefined!

Sure, misplaced line. I'll fix this in the next version.

-- 
With Best Regards,
Andy Shevchenko


