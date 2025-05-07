Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EA7AAE4D8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 May 2025 17:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 373FE40D51;
	Wed,  7 May 2025 15:31:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QbWjw_j0oYXH; Wed,  7 May 2025 15:31:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A75F040B38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746631892;
	bh=7Pv6JrghkmhcQ7pG/BNaC3FCP9CGm0RcqBHhXaljoyY=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=paMDwldrbLJBZz4tamhZNn5gYibGs6Pld5EgUU0Mhn8rhEzV4XJMKJYo74pA3F3QV
	 k70w8QIPYyXsFH1M0oa6ytKeLahGsKpeIUMBdhvMjrzFbDMJ6SOfKLzCA2Pz/l/yb+
	 XJpCdSRn2X0+str21Zqfs4bQ17z/DOlEFhcav1IJH4AOdwPaD4hO0hA5x5ETamtOJQ
	 yzvn/gqN3uoRnAJV7UpZ3GAXtIYuRaHSJWdzsnC36jx6nXl/WNZsq1Wm3vMNmktCQk
	 FJz2TuCwtd9gAouSq5sTo+3QQq5NeGhe+sAuylXbHCvsDk9OIAWfFEIvicoqc4mj0j
	 R5k1BGptAZOZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A75F040B38;
	Wed,  7 May 2025 15:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EC09ECD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 15:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8A1040C10
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 15:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJHXeF9DT97D for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 May 2025 15:31:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jani.nikula@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D57B40B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D57B40B38
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D57B40B38
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 May 2025 15:31:29 +0000 (UTC)
X-CSE-ConnectionGUID: dUCh3WCATPaN6fOOoKhQhg==
X-CSE-MsgGUID: QNajOkASTwe89kcldOw0JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="52188182"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="52188182"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:31:29 -0700
X-CSE-ConnectionGUID: wY3QIsuRTmiKchM34BGM6g==
X-CSE-MsgGUID: Z9gJ6xe4TcmZRIETVIq+8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="136509152"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:31:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Hall, Christopher S"
 <christopher.s.hall@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, regressions@lists.linux.dev, "Linux regression
 tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>
In-Reply-To: <2cc74d66-9bd7-4876-a17d-c71f03910c4d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <SJ1PR11MB6129BBB9E38F6DB731604E94B9812@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <87cycnwcpn.fsf@intel.com>
 <2cc74d66-9bd7-4876-a17d-c71f03910c4d@intel.com>
Date: Wed, 07 May 2025 18:31:21 +0300
Message-ID: <87a57ov3na.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631890; x=1778167890;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Qr4AnBYW987xgEuMwPW0O8SNkjOdYyDH7+SBKrD5wjE=;
 b=aABZNlENvDuqQYn0cOK3foq+HiXlEDGMzBB1BCTbArmG+0kOy8gWAT3W
 VMK/lUjCm77ZSeNZSU9tCOTznTSSwlgxDjdN5wpzeeq88prTBnwFnm5bs
 /HkH6al1SRMWixhtv2GY6CB9yjxibEe5fbH3BusSCi56OTflXaurWMrcD
 kXYfZNRp9uiZ5TAnvCRpE+0ggc0Kvy0MllAF81+/znuI9c++QeHDpwhZW
 Ru2yKEqIz/A04aHmIKzEr7wyetSNstmBCVYgcXDQWRHUYfAWlZdHZhjfZ
 gBMrqHHNjV4GIImWAvdT43AGohKqSygSYgWcwLgRJ9dTshQOLAiI85YeB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aABZNlEN
Subject: Re: [Intel-wired-lan] [REGRESSION] v6.15-rc3: 1a931c4f5e68 ("igc:
 add lock preventing multiple simultaneous PTM transactions")
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

On Tue, 06 May 2025, Tony Nguyen <anthony.l.nguyen@intel.com> wrote:
> On 5/5/2025 3:53 AM, Jani Nikula wrote:
>> On Mon, 28 Apr 2025, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>>> Hello Christopher,
>>>
>>> This mail is regarding a regression we are seeing in our CI runs[1] on drm-tip[2] repository.
>> 
>> The regressing commit is in v6.15-rc3. Updated subject and Cc'd
>> regression tracking.
>> 
>> BR,
>> Jani.
>
> Hi Jani,
>
> This should be resolved with commit c7d6cb96d5c3 ("igc: fix lock order 
> in igc_ptp_reset") in v6.15-rc5.

Thanks for the follow-up.

BR,
Jani.


-- 
Jani Nikula, Intel
