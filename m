Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85688BFFE7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 16:25:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 379C1400B8;
	Wed,  8 May 2024 14:25:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LUpfqk-TKpXo; Wed,  8 May 2024 14:25:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19BD7404AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715178343;
	bh=x7XmxGozAbn8jZGsMtjjw5CHjOcg/UW/FvRwy5kcA5o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mtufvv1Hx8/yPg2G4rH2utHuO2hWQOsCpQKqF4N54zQIJQb2ASTWNUN+VWEOjxrGC
	 5uxvKiLWWcfUUKvo4wRp+8M4AfNtDdQkSqllzEaTgE1Vdmojk0wiXvtXFctC0TrBZc
	 ORxk6Kiqd3Fm8ig1FkSNCYSHneX5rVTn++T/tXrUhcgx7qvCjmbppRhdCoW4X949PD
	 1UGmB6Kn+dwHB5INhdOH30sdhmaLSgs/eCQcYjNoJe/aHJtDJW/AcEzHTqAYSlHuod
	 hqwMwZcnE1YVdYc3o62gHxIjyndjj9FFT1pV4BZnkW4S3KKzlFT3fzNF/z98vhfBcq
	 1wT6bGMMNBUIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19BD7404AF;
	Wed,  8 May 2024 14:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8881BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 14:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2472781DF1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 14:25:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DT0oWPyqouIa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 14:25:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 448A981B70
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 448A981B70
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 448A981B70
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 14:25:40 +0000 (UTC)
X-CSE-ConnectionGUID: 6uXrOWztRq2NS4Hg/RK0Wg==
X-CSE-MsgGUID: 8PCVzNkETxmcoqX85DoRQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14836231"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="14836231"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 07:25:39 -0700
X-CSE-ConnectionGUID: CYCHGa+5QuOPLZYR89aEqg==
X-CSE-MsgGUID: /qEKDGxwR6iaVVUBhdkp7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33703450"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 07:25:35 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s4iEd-00000005T34-3Cbf; Wed, 08 May 2024 17:25:31 +0300
Date: Wed, 8 May 2024 17:25:31 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZjuLW8jA3MuT0oih@smile.fi.intel.com>
References: <20240508132315.1121086-1-andriy.shevchenko@linux.intel.com>
 <6ac025de-9264-4510-ba7f-f9a56c564a80@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ac025de-9264-4510-ba7f-f9a56c564a80@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715178340; x=1746714340;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=GJmvi/Sx1Tmjcq6Bnii+IMV6C5ZymcNZfpdtfXPoNkk=;
 b=KIwywg5rsNOAf3x0WRDbE7scJCaGAFVtqQUocQwvgNJ47/MvMWvmg3pi
 GBiucELq/C/kbe18sK6MNPy1OhvIP3ladVP1tsTuW1cv6iz4kFaCeM3ZZ
 yi11NqyZHyexqQf1s2zFZ3mwFemzczva4KuBmjAUsjseoeOjC1YJnoJwt
 d40hBUMmJnY3iS0umgcg8wYsJAGweRigbYJT3RT7+ay5U1WX0jHz1SPo+
 R14VNbXOf4yjs4vFXLzudfbqU3t45q0XF4td9QGVZRx57U84jXkEVDx0T
 +mDzlFlV+0SaWYUq3Zgl9wQBEoxidgYsd5CapbwnzNKtccke01qoGSNBu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KIwywg5r
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
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 08, 2024 at 03:35:26PM +0200, Alexander Lobakin wrote:
> > *-objs suffix is reserved rather for (user-space) host programs while
> > usually *-y suffix is used for kernel drivers (although *-objs works
> > for that purpose for now).
> > 
> > Let's correct the old usages of *-objs in Makefiles.
> 
> Wait, I was sure I've seen somewhere that -objs is more new and
> preferred over -y. 

Then you are mistaken.

> See recent dimlib comment where Florian changed -y to
> -objs for example.

So does he :-)

> Any documentation reference that -objs is for userspace and we should
> clearly use -y?

Sure. Luckily it's documented in Documentation/kbuild/makefiles.rst
"Composite Host Programs" (mind the meaning of the word "host"!).

-- 
With Best Regards,
Andy Shevchenko


