Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5E4C88AF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 09:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C476C40351;
	Wed, 26 Nov 2025 08:39:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbxLuBYUXAXB; Wed, 26 Nov 2025 08:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A10B40367
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764146373;
	bh=ihAB0dGfbxdkvQJ9+XQf7wvtTOYxZGumYzzvWUQdYDE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4AsK2HUrwmJK8AT47Vh+l7xcg8PDo2OCXaGRvvNBHRLdkX+ZJ/WoZFQAAL/UVsfAx
	 VzTspN8hWkabwAAzklZSftL8PhS9sko7e0kpynREXbozegQuZXX937KJDeT3bQ9bDc
	 IVMR0c+SiYMoNY8jB0b4RVybY/kc+Dui1wevY1Jo4C3l4MkpxTa1ZofNg0AmbxMwAy
	 bvQDy7lwjv6mj0NUAdMlaxY0iScE/5BDG7wPexMDlIU3WwDxAKfOuxBE58EH4KjYnH
	 T68dDX8EW6OPIWSgEzJ+2AXvXbIzwFDGHerpHbE3UMFZy4OKvajCRG+VqZ5HXc3yPS
	 tnsD9hFU0AkzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A10B40367;
	Wed, 26 Nov 2025 08:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BDAC62A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 08:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A447C402CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 08:39:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xX2W6Ic_28SO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 08:39:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8B82402B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8B82402B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8B82402B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 08:39:30 +0000 (UTC)
X-CSE-ConnectionGUID: dg4sh5MxRNmyeGlB3anLmA==
X-CSE-MsgGUID: NfhcuVNZQdeR7Ooz1zRSxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66254565"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66254565"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 00:39:30 -0800
X-CSE-ConnectionGUID: nLonSe3hTm2/JSdiBCUflQ==
X-CSE-MsgGUID: l/7kE/pRT2uWPQ2V+gAa0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="193308811"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 00:39:27 -0800
Date: Wed, 26 Nov 2025 10:39:25 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <aSa8vXXM6ShdtVvN@smile.fi.intel.com>
References: <20251124174239.941037-1-andriy.shevchenko@linux.intel.com>
 <abf25d3d-30af-479f-9342-9955ec23d92f@intel.com>
 <IA3PR11MB8986A3FDF77D49598C5F4C89E5DEA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <aSayDu8yVe7prrsx@smile.fi.intel.com>
 <IA3PR11MB8986CF43DFB0EFBFDABA34EFE5DEA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986CF43DFB0EFBFDABA34EFE5DEA@IA3PR11MB8986.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764146371; x=1795682371;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oyveJ8q/G9dWeEH8sazloAw9I8YtyoEMfWjwG29AkUs=;
 b=auOTdePzganugJPisJvi9zmATtQLlVKHFZvFrfn+ersYop+/+8fbCiv/
 Cqis7/4O+3/Z6qTM6N8qMxSnO8dhTkozT+m+Fx3vjpykoMKwUVgr4niy3
 4Rbw7I4hn0HpWU9VP3yT8HvSTeETmrsTtQZobEENixM5F9h3wd4x/cyap
 LSgoYL7qjTVMGYTIZLYLnHNqx7frDkVNWKQMoPWxYrdMlwtDkEqE4ynve
 Kmrs12/an7co3n/UFsPkFDHP/+MYJW07fA5QOYeicubk0L01jtYHXY9Ey
 T3ZfhdKEfWrYR6eOeWh8zKd1RsJAvQmCV1mxVazxhEHwwQNSjDv51NzGm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=auOTdePz
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/1] idpf: Fix kernel-doc
 descriptions to avoid warnings
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

On Wed, Nov 26, 2025 at 08:06:30AM +0000, Loktionov, Aleksandr wrote:
> > -----Original Message-----
> > From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > Sent: Wednesday, November 26, 2025 8:54 AM
> > On Wed, Nov 26, 2025 at 07:24:40AM +0000, Loktionov, Aleksandr wrote:
> > > > -----Original Message-----
> > > > From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > > > Sent: Wednesday, November 26, 2025 7:30 AM On 11/24/25 18:42, Andy
> > > > Shevchenko wrote:

...

> > > > > - * idpf_tx_splitq_has_room - check if enough Tx splitq resources
> > > > > are available
> > > > > + * idpf_txq_has_room - check if enough Tx splitq resources are
> > > > > + available

> > > Strange idpf_tx_splitq_bump_ntu() is not idpf_txq_has_room Can you
> > > doublecheck?
> > 
> > I didn't get. What do you mean? Please elaborate.
> 
> In the kdoc I see function was renamed: idpf_tx_splitq_has_room -> idpf_txq_has_room
> But I don't see idpf_txq_has_room() function name in the patch.
> Only idpf_tx_splitq_build_flow_desc() before and idpf_tx_res_count_required() after.
> Could it be a mistake?

No, it's not a mistake. This is in the category of fixing other kernel doc issues.
Citing the commit message "...and other warnings."

You can run kernel-doc locally and test.

> Everything else looks good for me.

I believe everything including the above looks good.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Thank you!

-- 
With Best Regards,
Andy Shevchenko


