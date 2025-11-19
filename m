Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A071C6F7CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Nov 2025 16:00:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DE6660F14;
	Wed, 19 Nov 2025 15:00:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpC4JqCVls9R; Wed, 19 Nov 2025 15:00:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A52260F1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763564453;
	bh=c96dm6jnr/FKAQIIIFhX4mHsAPLlyTLFSBPsyojdYmM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oj8Nm/UbpbZn+rK9KMQ+pAXzm11KHTyDX5C17j5OjOwV7BxqnNN5Y7RpDjS8+n90X
	 z6duyvv/2gn+cyjCHslYdY6uf8LxA5FWULZWzAyEdamqqZFU61RyhJ2m2e6HEfgxK5
	 q6+WMnyzekgaxH/XCpt+louTtX8xQox+kTImQUp+lqvn+fUqSciQFSR0tGYf2ewaIj
	 jwqNO9bRXDuNWxHweOHwXRgq/21pD5rUV+CZ6nE7lonMLonQltLxu6I5LtNBiSPp9e
	 IlNCDkZMEZu6YM+WlYggqMiEy2S6SSFq/MLAyezjwJ31q+6KxXUcjWLa/PkpHEzJL7
	 RPvaKoMCZ2+nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A52260F1C;
	Wed, 19 Nov 2025 15:00:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 69619158
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 15:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4FE0840C6D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 15:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EjR24y74suc8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Nov 2025 15:00:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1812840394
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1812840394
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1812840394
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Nov 2025 15:00:49 +0000 (UTC)
X-CSE-ConnectionGUID: ei2g1J/rR06ZMeJcu5nlXg==
X-CSE-MsgGUID: IQXAw2o+SLadrebhINaksw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="91085423"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="91085423"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:59:36 -0800
X-CSE-ConnectionGUID: 1p6r6x9uS5u32zRd1eVaZg==
X-CSE-MsgGUID: voIFHWIqQSaE97KThetVqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191329073"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.245])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 06:59:30 -0800
Date: Wed, 19 Nov 2025 16:59:28 +0200
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
Message-ID: <aR3bUMvPCqZr5utj@smile.fi.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
 <aR3B8ECx9W6F0BV_@pathway.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aR3B8ECx9W6F0BV_@pathway.suse.cz>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763564450; x=1795100450;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6VLOKmDo4WviGUhM4qQZA7IzCWHn1ZvDUbxiE4MHVTw=;
 b=M3LE2005UPr1tYjc9htamt3tsuqG5tQRBp0G4Gexpr9qoFd4dt1WUdJM
 vRFBGyHEoYYwVyMTWpE+LOg2qSyURMo4dYreB6fUadyF0Sj5zaB/eDBrM
 SjvMpcEpHY9m0KBhqGqMwD0ghXF6RbbIceem+UsUB7ao/Kt8Om+xrgd05
 RmRksqFpJ23sWvPyFc2x940xmazKeFGDGHsHBQ9CXaHovNehFuuUcq7aQ
 8EpyPo4rRIXYKb72Kr7+D8tpAC05DKk7IZHb/2fNjdlOtBePeKWMBEGYq
 f+m3KF1yfYk6fqQfnn1oRwE1pjwC5nt/KwiLanuUsyMM2vWK2/dulL/ix
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M3LE2005
Subject: Re: [Intel-wired-lan] [PATCH v3 00/21] treewide: Introduce %ptS for
 struct timespec64 and convert users
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

On Wed, Nov 19, 2025 at 02:11:12PM +0100, Petr Mladek wrote:
> On Thu 2025-11-13 15:32:14, Andy Shevchenko wrote:
> > Here is the third part of the unification time printing in the kernel.
> > This time for struct timespec64. The first patch brings a support
> > into printf() implementation (test cases and documentation update
> > included) followed by the treewide conversion of the current users.
> > 
> > Petr, we got like more than a half being Acked, I think if you are okay
> > with this, the patches that have been tagged can be applied.
> > 
> > Note, not everything was compile-tested. Kunit test has been passed, though.
> 
> JFYI, the patchset has been committed into printk/linux.git,
> branch for-6.19-vsprintf-timespec64.
> 
> Note, that I have:
> 
>    + fixed the 19th patch as proposed, see
>      https://lore.kernel.org/all/aR2XAYWTEgMZu_Mx@pathway.suse.cz/
> 
>    + reviewed all patches but I triple checked 7th patch which
>      did not have any ack yet. And I added my Reviewed-by tag
>      there. ;-)
> 
>    + I tried build with allyesconfig. It succeeded. I am not 100%
>      sure that it built all modified sources but...

Thank you!

-- 
With Best Regards,
Andy Shevchenko


