Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C4E92DD05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 01:47:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1390415BB;
	Wed, 10 Jul 2024 23:47:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gDF4stxLCRvj; Wed, 10 Jul 2024 23:47:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6DFB415CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720655221;
	bh=wDK3WhMNlc2eWEPe615uKV2rKSM/5UZvqVxLFNJVzU0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QqYvMVggRUKpHHKk9lIFOHa9gkrLxAPxTt9GmAO9NnYpXtGI0wOPTvjcjHh3NI7OQ
	 lQuVEZ8PlsnTb4Z7jYaDqK/PGmoDUWV57osXRupxxXt421rq6II7ZGoGIzsppLYSN+
	 1OWQtiPYzxG17X+498sYza37e2e5nA+S+8rymCNoyTQ8wsNjyLjS6GP9ybRqmBE/0J
	 Ls6OHASqESQ/CJvSzl+XcEMcjdgk7/7fnjWvTPJBUI1xPBhpD2I8PECR1G/dGiZJhU
	 dTD1bQtrBA0+E7r6fTuTPJgJccaceyiSTU+7IOjHADVKN4tMtDuWnbV1xzjFSLUtbg
	 7o2SWjfJ/uYKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6DFB415CD;
	Wed, 10 Jul 2024 23:47:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F65A1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2ACAE405F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:47:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BlcVcddkEZXa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 23:46:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 033A440154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 033A440154
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 033A440154
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 23:46:58 +0000 (UTC)
X-CSE-ConnectionGUID: AKSfdjmbQNGDEdjR8yEy9g==
X-CSE-MsgGUID: tgwjUDpOSbO9BntPYE5Rdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="18152047"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="18152047"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 16:46:59 -0700
X-CSE-ConnectionGUID: UTZflU3SSXC3Cwd1Y5qXtQ==
X-CSE-MsgGUID: FyQKValqTn6wDncF77Auzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48345030"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.124.221.70])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 16:46:58 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <20240707125318.3425097-2-faizal.abdul.rahim@linux.intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-2-faizal.abdul.rahim@linux.intel.com>
Date: Wed, 10 Jul 2024 16:46:57 -0700
Message-ID: <87ikxcu7wu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720655219; x=1752191219;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QB8/3eOL68A8pTiMnSt7yeyEfnMWPcIv2g/lKtnx46A=;
 b=e+/jpVTFG4zBNQsP3kPeDG+aPwDxEMGafoBiW21qCDNFd0zLilUwqbmW
 Gv7w9Dc95mS6vMq2HF0wVZ4DN88GaEJxDRclSH7PKZvdXAO1q2PCmmRrL
 jNopCR2j8d9nCJKL93h9CJNasytxAHSlWBfih43lZjsnZQ5TRvd828bn4
 8rWy/+gmov8zpbjaBGhp6w9mcdBXqbgW3oCEB0uKq9U3/tdmduCjPrD2h
 S2g7OmuETnXUcBn91WJr80Z78EfXny0/wn5qyY4iS70yT4gfOUkyXwJ2Y
 6TCSDt0Djuj3eeIL6ZH6vtx5+36SQRQRRresfA8aCrffFPTfsccml6FG2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e+/jpVTF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] igc: Fix
 qbv_config_change_errors logics
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:

> When user issues these cmds:
> 1. Either a) or b)
>    a) mqprio with hardware offload disabled
>    b) taprio with txtime-assist feature enabled
> 2. etf
> 3. tc qdisc delete
> 4. taprio with base time in the past
>
> At step 4, qbv_config_change_errors wrongly increased by 1.
>
> Excerpt from IEEE 802.1Q-2018 8.6.9.3.1:
> "If AdminBaseTime specifies a time in the past, and the current schedule
> is running, then: Increment ConfigChangeError counter"
>
> qbv_config_change_errors should only increase if base time is in the past
> and no taprio is active. In user perspective, taprio was not active when
> first triggered at step 4. However, i225/6 reuses qbv for etf, so qbv is
> enabled with a dummy schedule at step 2 where it enters
> igc_tsn_enable_offload() and qbv_count got incremented to 1. At step 4, it
> enters igc_tsn_enable_offload() again, qbv_count is incremented to 2.
> Because taprio is running, tc_setup_type is TC_SETUP_QDISC_ETF and
> qbv_count > 1, qbv_config_change_errors value got incremented.
>
> This issue happens due to reliance on qbv_count field where a non-zero
> value indicates that taprio is running. But qbv_count increases
> regardless if taprio is triggered by user or by other tsn feature. It does
> not align with qbv_config_change_errors expectation where it is only
> concerned with taprio triggered by user.
>
> Fixing this by relocating the qbv_config_change_errors logic to
> igc_save_qbv_schedule(), eliminating reliance on qbv_count and its
> inaccuracies from i225/6's multiple uses of qbv feature for other TSN
> features.
>
> The new function created: igc_tsn_is_taprio_activated_by_user() uses
> taprio_offload_enable field to indicate that the current running taprio
> was triggered by user, instead of triggered by non-qbv feature like etf.
>
> Fixes: ae4fe4698300 ("igc: Add qbv_config_change_errors counter")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---

Looks good:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
