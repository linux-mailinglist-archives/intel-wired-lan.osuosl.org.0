Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF9E8C044E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 20:27:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E2A9404F4;
	Wed,  8 May 2024 18:27:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o2SRbWnNJYSm; Wed,  8 May 2024 18:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47C3D4057B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715192869;
	bh=7o7AfGLE/IlNIyX4CVC/Sazx/w/mLWwE7mY3HiWIqxM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yywo+rffKjtdWOEcr0ubxwYwO/bth2+sOg37nKvEHVY1uieSzBtL++bsxZUgwNkKm
	 JbnDa8lzhwOnl04h1Mc/ZhTx2kgAMVhSTXWvQS0RvN+3r/ndkrg0kxAU7hlTLVE+47
	 yyD/OYKwidpU/XlgSpougv5DFd16KAiSX9iyOZC7u9/RPT4DKYlWbDhyngbCC9FskR
	 Xh8tCKOv42sbFGVwiXdf7O9ZGBrQMGhQTTgWoMWuBt/JicM+YiXlaoE9AbM19gDI8v
	 XKg/akrD79W9bXYtlmb+iiD5iPXq44vPGymnwN1AwRjUbH4sDBnVHLl7HVNiGV3WRs
	 XENDIPqXXpkBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47C3D4057B;
	Wed,  8 May 2024 18:27:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CC9C1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E863040456
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Of7OpPVH7kJT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 18:27:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFA304018D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFA304018D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFA304018D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 18:27:43 +0000 (UTC)
X-CSE-ConnectionGUID: gDGayerfRyqhQGTx199+FQ==
X-CSE-MsgGUID: usQ+pKdvRNWwLvAesrxBzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="21746825"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="21746825"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 11:27:43 -0700
X-CSE-ConnectionGUID: pPHW8MKiSkaurGKf+8RAmQ==
X-CSE-MsgGUID: 6/g+hsMwS+mdRwVMUlc4Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33526172"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 11:27:38 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s4m0t-00000005XUW-2oGJ; Wed, 08 May 2024 21:27:35 +0300
Date: Wed, 8 May 2024 21:27:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <ZjvEF7haIsMcMh08@smile.fi.intel.com>
References: <20240508180057.1947637-1-andriy.shevchenko@linux.intel.com>
 <1f2eb3d5-649d-4723-af89-ca625070877d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1f2eb3d5-649d-4723-af89-ca625070877d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715192864; x=1746728864;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TQyn2lCiksoMNY+L3Cmit5xvgMlOchLg/3HXre8evts=;
 b=H4dHBcmI0CQIMpvcgBLfLZ0c69k+BzZv6LIpTb17DmNnAyJYtRhO6xR5
 wLr/C0n8GZTKdQNAd36muZiLm4SNdlhE+SG+ZIvy/QGGY0jqzH/HuXLwL
 RYfpGh0a9IABSSlmo9VSUX5wQ3nW9r7RD0r+OT1FiaGF9dw2aibjDz9sD
 lNmcKFnGRDPx0AK+UvxNUidISEwCav2L/PfSZ2eyqLN1Fvs0BgSiTw0dj
 gQXsjoum2MW9Y4WpZvtp6+9zJtXdKUI2qdPzRRbU28+6dET6V7Dq4/IwZ
 VhJNiuhhAWFvEipK8lAzmZkUcv388wVbkexZUXnaOWy9ewUNaqDOpawgd
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H4dHBcmI
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/1] net: intel: Use *-y
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
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 08, 2024 at 11:23:39AM -0700, Jacob Keller wrote:
> On 5/8/2024 11:00 AM, Andy Shevchenko wrote:

...

> FWIW I applied v1 and v2, and got only the following range-diff:

> This matches the changes described w.r.t ordering, and everything built
> properly when I tested it on my test kernel tree.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thank you!

-- 
With Best Regards,
Andy Shevchenko


