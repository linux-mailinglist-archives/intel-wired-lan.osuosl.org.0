Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA4A852E4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 07:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 528664090A;
	Fri, 11 Apr 2025 05:10:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0leaFnwr3_M8; Fri, 11 Apr 2025 05:10:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B701740DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744348207;
	bh=5zbcIcG6183lf4yUAIN5PX/ffDam8SbnmqB6BO+AoCY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6ppbmFQkOlLND+5eiPYTuRGJqf3v8V6VyjEhUyEbKMMXc5chYIOTBUv2ivwsiOyOV
	 OKwfULLNNAHkXw3mCRysIUgdipaBvsSOEA6NWiu2TQ0DfNc7bFoyrWJJgOI4ywtdGe
	 gL4bL3PV1BfBcjKwR6BQI4u4n3wJFDJzWKSsAfDnrBxNJUNWr4r4LDaiAeoFM9MjKJ
	 Lyn7eW2xNrA7tlXwAnXEgYzH7NnigCQu3NesF4rAMDLEPLeyGh16MHyRS0OYdyPyY5
	 WEgY4xu7RnWbe1nNFPZgWLwfZYT9CWxOBN8NGPOs9Whl7/LjsbiuvxO53GCNd6S9kW
	 7VsLZDixFD4sA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B701740DF8;
	Fri, 11 Apr 2025 05:10:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9DD80108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EE5841000
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FwwcH7ESUYIS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 05:10:03 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7D75240F9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D75240F9D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D75240F9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 05:10:02 +0000 (UTC)
X-CSE-ConnectionGUID: N4PUYJFVS4m8ocxwLpY0SA==
X-CSE-MsgGUID: HC17zHvrQby0y0iHXXgDXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="63291116"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="63291116"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:10:01 -0700
X-CSE-ConnectionGUID: P7rnjctfTkWTewgQb+nfFA==
X-CSE-MsgGUID: cSRGpC/ET8y/s3Objjb5ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129436869"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:09:59 -0700
Date: Fri, 11 Apr 2025 07:09:47 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <Z/ikGxzPOysJZvUh@mev-dev.igk.intel.com>
References: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
 <20250407104350.GA395307@horms.kernel.org>
 <bcf8dcc5-527d-41ae-95e4-3c0b6439d959@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bcf8dcc5-527d-41ae-95e4-3c0b6439d959@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744348202; x=1775884202;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vehC3ir6+DUEoeBnIcaM4TgFoy1EgQz2HdFOnUoLOR4=;
 b=jAgJ1/AfBwo/tlmb0OHTvw7l0+DrOZdLx+Sxov9MAO+5b+hxwyf1R9ZY
 wR1W+cQ/O5kiyHLsjAnB+nj7IuW18uM3YExCsAv2zyeyi2laJwDlVdfy+
 KxHIQmKMHnzj40peySOAE4Ns9k1LJpemlgeIWMPmLWk0HBI7prnRce21M
 P/qlu9+qiqBuEvbfl/S+6L2jGtGhIIOZPq5BYaC6RyjXy5TpMip61Y3l6
 OPhueQYDY/8ZPUZjT4SmF8i4g2pfDxHO6eSy/vkuUvygs7Efklaeipxr6
 ty9WSicx+kvm6chPC9MkY9rIsi1evF8pcwA9CdEJ2tmzlCb1wRKywA+Nm
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jAgJ1/Af
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
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

On Thu, Apr 10, 2025 at 03:04:16PM -0700, Tony Nguyen wrote:
> On 4/7/2025 3:43 AM, Simon Horman wrote:
> > On Fri, Apr 04, 2025 at 12:54:21PM +0200, Michal Swiatkowski wrote:
> > > In case of failing on rss_data->rss_key allocation the function is
> > > freeing vport without freeing earlier allocated q_vector_idxs. Fix it.
> > > 
> > > Move from freeing in error branch to goto scheme.
> > > 
> > > Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
> > 
> > Hi Michal,
> > 
> > WRT leaking q_vector_indxs, that allocation is not present at
> > the commit cited above, so I think the correct Fixes tag for
> > that problem is the following, where that allocation was added:
> > 
> > Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> 
> Patch applied. I do agree with Simon's assessment so plan to use this fixes.
> 

Thanks Tony, I also agree.

> Thanks,
> Tony
> 
