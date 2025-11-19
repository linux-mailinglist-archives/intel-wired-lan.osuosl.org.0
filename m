Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9295BC6DA0B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 10:14:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8D8D607D5;
	Wed, 19 Nov 2025 09:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6w_Wxli-DANW; Wed, 19 Nov 2025 09:14:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4295B60B99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763543692;
	bh=ZzkqVKLVXvHsX3806WQYRGd1TseWls5xvAQZTTTqZWE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hY1ttzI8JJ8ntdLZ7Sb3yzFQPsd0G3PAmuvkc1YQLsmNkvoC0G92o40Qrd4eTCAYy
	 /3+WmAkXaQetdO4+6EL9Oqq2Ur5YgiUrTzQmr3W4hPLOOVJGngSgDZz1bdjhLo/2UX
	 3T4uxqceG7/nh51j+lmVmMxJSOFDbnJLUnbYyLAYx7ZwC+qrShqZsjgMf0RPix1pn7
	 35y3hupxkpo1WALt+uE2YA9G/p56y/9GtlMfDuJJWg3D1uZFFCGW0kkfFDDp+aB46I
	 4hkE87BQSF6wr5TERyaGowoy7IRsuTLJ/ONs1DjTH0u9ASCxbPlH+o3AkzhmYGnD56
	 LoFeEvFbw1aZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4295B60B99;
	Wed, 19 Nov 2025 09:14:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E116537D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 09:14:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3ED483C39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 09:14:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WB3rEBFBXobo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 09:14:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D2C7D83B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2C7D83B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2C7D83B8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 09:14:48 +0000 (UTC)
X-CSE-ConnectionGUID: 3cqFmebYQA6FoBa9N/5jWA==
X-CSE-MsgGUID: aCByFBEdTxW/oSEktVtHlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88232435"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="88232435"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:14:47 -0800
X-CSE-ConnectionGUID: oHYrWS8ATQebFcLjYXGykg==
X-CSE-MsgGUID: DikRyuhjQLyYtee9Ng8YEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="228346786"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.245])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:14:41 -0800
Date: Wed, 19 Nov 2025 11:14:38 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Jonathan Corbet <corbet@lwn.net>
Message-ID: <aR2KfgzV1_3ZzXhT@smile.fi.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <20251113150217.3030010-2-andriy.shevchenko@linux.intel.com>
 <aRcnug35DOZ3IGNi@pathway.suse.cz>
 <aRd5HHUBu2ookDv_@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRd5HHUBu2ookDv_@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763543690; x=1795079690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=q6da8jLQtnLnim6HyWRfNmg8bV209AFrRAch7qncfbs=;
 b=cekMWXcD4aJBhqzu2a/2fPvj8qaxdpzbQGuSHMilqF2V+cbAekelvhKK
 +DUjCDRwzR9B8+If3AgHJCVbL2XZ/pg2HA8ozhEW68p8MQNWHfAlxoh9V
 wqw2ba1B2LLzlVhch/3eUZGlnyfau2sb2qeljWzb7RPZL0nxRWkpExT84
 Axk8Zh6wVDrR6e4RDEJQf/l5IDqS0eOM3FTrLK45SnQpmkJ56iFDgGMZL
 Ejqf5IvlRKN4dliHJIcMhFi4SDWDxTAyeQqaP4bGS+qrFeTxn5/Qdm727
 uexSKOp5A5GZHggrajymje87+RT3504euXkA3s9e+Q2w+f4pFpl/Rsnyt
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cekMWXcD
Subject: Re: [Intel-wired-lan] [PATCH v3 01/21] lib/vsprintf: Add specifier
 for printing struct timespec64
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

On Fri, Nov 14, 2025 at 08:46:52PM +0200, Andy Shevchenko wrote:
> On Fri, Nov 14, 2025 at 01:59:38PM +0100, Petr Mladek wrote:
> > On Thu 2025-11-13 15:32:15, Andy Shevchenko wrote:

...

> > I wonder how to move forward. I could take the whole patchset via
> > printk tree. There is no conflict with linux-next at the moment.
> > 
> > It seems that only 3 patches haven't got any ack yet. I am going
> > to wait for more feedback and push it later the following week
> > (Wednesday or so) unless anyone complains.
> 
> Sounds good to me!
> 
> But in the worst case all but untagged can be pushed, the rest can go
> to the next cycle.

Just got a "BUILD SUCCESS" from LKP and since we gained even more tags
I think it's ready to go.

-- 
With Best Regards,
Andy Shevchenko


