Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F917641CBD
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Dec 2022 12:45:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5939360F4C;
	Sun,  4 Dec 2022 11:45:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5939360F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670154339;
	bh=1OhRYmXdGIdhE4vSZQG7t2jycnNezv/Jvr1qSMbNd0k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hxNXWNwWdlpLlnAJczUnnby8o5lFCkOj8Mbn1U186fru00uhAtHuKiGyeuULuZyWm
	 xMPRKfa1ZMOx4CosSc6L8CDclQ1K3jRerL/2zyTauGFGjxyN/Uhy/NEh4F0E+uwLyf
	 h0zEsOuZMu0grGrfyaFwvdx3UbjR2Qq+sda75Q2reoeKarcrUQY0N+xpd57BFib5cX
	 nJIMt86aWF8johKxxOjwkXg4rDRAYzphsa25XI9bu5gWZ+hvV05ZXTrqKO32akmxPY
	 PW2Dy9VGY2RdZzky91nwY+APo/ZClEZnjFDRWzBER8VBLuu4yZM99GZJP9PqSCAXXu
	 +0XifB4w/U2iA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eg2-1AAP-W4b; Sun,  4 Dec 2022 11:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61C2360F40;
	Sun,  4 Dec 2022 11:45:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61C2360F40
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2561C1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 11:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EAD79415DA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 11:45:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAD79415DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yt4Q35GXaYHU for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Dec 2022 11:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28C1F415DD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28C1F415DD
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Dec 2022 11:45:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10550"; a="402463830"
X-IronPort-AV: E=Sophos;i="5.96,217,1665471600"; d="scan'208";a="402463830"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 03:45:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10550"; a="787765261"
X-IronPort-AV: E=Sophos;i="5.96,217,1665471600"; d="scan'208";a="787765261"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.13])
 ([10.13.12.13])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 03:45:30 -0800
Message-ID: <197a0f2e-b9ab-ea35-86e3-fe33f54d4c52@linux.intel.com>
Date: Sun, 4 Dec 2022 13:45:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20221120081511.4136778-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20221120081511.4136778-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670154332; x=1701690332;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=lSb4PUe7vVgNnUp7mC7nft9yXdy2iOjGLisUDLOTZA0=;
 b=ga3NI3NQH7VOnWcR7SY1ebSD7yYqLEuJQMM5aZ2z9nrEHByyO3QhltmJ
 9PtaK+HhnHVAc/J1GWp0YR1IVupw0ifqBsPEU3Xg2G9M/9ZSNy9bT35yw
 rLmgynTlYC3zOm3sMLD8e1xBkjd2XagnhR9ZUSSE477CfL3L0fcNlTKVr
 xjwPeN+lhV6pFeDeZ5JBNb5NqQC+ZP3ei7A8oc11KHuVKTMwG1VhdPeB4
 /wLogiuggiMwWUEfhoFlHZ/nRMG5yNBoELftRRgT3Z3wKEam5Za/ZjzPU
 brs6cnh/PWqXzo9J+spWRGUOMT3aodHKwFsQuVzj1QTki71wbRUsGN2R1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ga3NI3NQ
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up and optimize
 watchdog task
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/20/2022 10:15, Sasha Neftin wrote:
> i225/i226 parts used only one media type copper. The copper media type is
> not replaceable. Clean up the code accordingly, and remove the obsolete
> media replacement and reset options.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 --
>   drivers/net/ethernet/intel/igc/igc_main.c | 17 -----------------
>   2 files changed, 19 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
