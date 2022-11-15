Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCF2629200
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Nov 2022 07:49:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F0B481392;
	Tue, 15 Nov 2022 06:49:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F0B481392
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668494970;
	bh=foxpoJ7aJgM/mJJqFs2h/7yhd6oC78lpSTqsPwMqhdk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x8QC4Ukayzx+Ew+vKhseol4SU01+vhpnADQrfvasE6TGnDoAMgpCf6uYT4apQgLYm
	 f/3ovPtujINSG9f5tIIOZDt1ZxnggXNP7LcFWysErgoz9ckfzmUzEVcsdExQnWo857
	 +TlWh/u1lgT7CxxNTRd6YmaGNBHezJFuQ/0cv+sC70EcoSCqD+1fZ996RihTK6eAZS
	 t82/pIegfx4VECbvx+4yGOm5T7p4CJVrXPQK3cVpudEAyNhG9JpM9DiF5I90+9siCU
	 06ilhsxFLGk/a4OmUawuEHTl4l50DHMzdjZDn5oLmM/iEHYg3JzXI93Tzb3sIwppbH
	 kvjmPrZRdDxRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWa7RVbEeZCg; Tue, 15 Nov 2022 06:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2292D812CA;
	Tue, 15 Nov 2022 06:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2292D812CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BF601BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 233AB607FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 233AB607FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BS7MFN8LyGG2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Nov 2022 06:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 216D060640
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 216D060640
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Nov 2022 06:49:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="292575780"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="292575780"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:49:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="669982854"
X-IronPort-AV: E=Sophos;i="5.96,165,1665471600"; d="scan'208";a="669982854"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 22:49:16 -0800
Date: Tue, 15 Nov 2022 07:49:05 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Y3M2YUJgXbuB/bnM@localhost.localdomain>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
 <20221114125755.13659-5-michal.swiatkowski@linux.intel.com>
 <20221114210825.5c12894c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114210825.5c12894c@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668494962; x=1700030962;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AdKlt15bstQWV4p6ZflPmPa7zSXXjgiCL7DyWnHYVRI=;
 b=OPGBnnKJ4JFR/8uMsF1iRkj3i96T1IRoM82hW6Lz+Lqcba+pXH2kwnF0
 RMRQ5IGVYsh9HbA0c6pVdsDvdegPBAB+d+KG4cyLlLu0i7noTheuOHEck
 iq0YlP1GVbNkuM5wxnSODAhhgS5pKcEdRZJ2LeIgG1rj+PeA2143T2+wW
 7r3jJV7SQt8ggSeOSVQW+lsxcPViMpWE0rpjJwk+iQJGaG0zqtSdM5TDF
 88Rgp3jOHUYHuObd5AfG5t1WK/JUCC70ejOf7oswg/QD1cQfGsN405b/i
 Pb4HJVn6GIUzXB/EX3JNdV/SWdC8E6SG/gkU6jWlvViTeNp7B2xCCc+SO
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OPGBnnKJ
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/13] ice: split
 ice_vsi_setup into smaller functions
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
Cc: mustafa.ismail@intel.com, netdev@vger.kernel.org,
 leszek.kaliszczuk@intel.com, przemyslaw.kitszel@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jiri@nvidia.com, pabeni@redhat.com,
 shiraz.saleem@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 14, 2022 at 09:08:25PM -0800, Jakub Kicinski wrote:
> On Mon, 14 Nov 2022 13:57:46 +0100 Michal Swiatkowski wrote:
> > Main goal is to reuse the same functions in VSI config and rebuild
> > paths.
> > To do this split ice_vsi_setup into smaller pieces and reuse it during
> > rebuild.
> > 
> > ice_vsi_alloc() should only alloc memory, not set the default values
> > for VSI.
> > Move setting defaults to separate function. This will allow config of
> > already allocated VSI, for example in reload path.
> > 
> > The path is mostly moving code around without introducing new
> > functionality. Functions ice_vsi_cfg() and ice_vsi_decfg() were
> > added, but they are using code that already exist.
> > 
> > Use flag to pass information about VSI initialization during rebuild
> > instead of using boolean value.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> nit:
> 
> drivers/net/ethernet/intel/ice/ice_lib.c:459: warning: Function parameter or member 'vsi' not described in 'ice_vsi_alloc_def'
> drivers/net/ethernet/intel/ice/ice_lib.c:459: warning: Excess function parameter 'vsi_type' description in 'ice_vsi_alloc_def'
> 
> Sorry, didn't get to actually reviewing because of the weekend backlog.
> Will do tomorrow.

Thanks, I will fix it in next version.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
