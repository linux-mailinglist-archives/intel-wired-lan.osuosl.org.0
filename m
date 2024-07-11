Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6588792EE6F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 20:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9910040462;
	Thu, 11 Jul 2024 18:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EippM1zW34Mv; Thu, 11 Jul 2024 18:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BB6E409FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720721415;
	bh=1unZP7W8Xy/7ayIr2Y1Ww4B0CQilQi9WcsQdHgKwhao=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JqEKt4KiBjkTDUpZDIBJDu3IKb+BCgM0j0aVd5JHRQi63T/R9ERt0lLpzWJx7+Hxf
	 cebk7GYYC0W/L1vr8UWm8rfoILmzdcOGOBGzF6e39TcilBu0qSwR1ZvqJHxiZW7/mE
	 9bXadyg+eeugo0HdjN4EQxpm5JPYd0tsjk+OZGFqPKPnDoZnGukqXmwIK1sMZ+TP6R
	 AXaDlJNG6Xgd7pqS3wpjk7+Lf0YhUptu3/MqvjXQcEcWhRLqCBnjGalqutZokJxS1t
	 WrBu2jImyrKGaxtaKXDc3i0Za5o3BoWNAOMutIDxmQ6fTezUgxJs26VPolUwnRvWmG
	 A1eItN/XVam9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BB6E409FD;
	Thu, 11 Jul 2024 18:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3771BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79883820E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Y6pju56Ucgg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 18:10:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6F53781FBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F53781FBD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6F53781FBD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 18:10:11 +0000 (UTC)
X-CSE-ConnectionGUID: 46Y4STW0TsKXoWLWirSgaw==
X-CSE-MsgGUID: x2gyk5hjQBGB5CryyiHNVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="22000431"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="22000431"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 11:10:11 -0700
X-CSE-ConnectionGUID: AhDtjmOTRDC36DgLP5DP+A==
X-CSE-MsgGUID: NciQSOPKQaC6oEOiQdCfBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="79345324"
Received: from unknown (HELO vcostago-mobl3) ([10.241.225.92])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 11:10:12 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse
 Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>, Richard
 Cochran <richardcochran@gmail.com>, Paul Menzel <pmenzel@molgen.mpg.de>,
 Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <6bb1ba4a-41ba-4bc1-9c4b-abfb27944891@linux.intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
 <87o774u807.fsf@intel.com>
 <6bb1ba4a-41ba-4bc1-9c4b-abfb27944891@linux.intel.com>
Date: Thu, 11 Jul 2024 11:10:11 -0700
Message-ID: <87le27ssu4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720721412; x=1752257412;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7kuZlTBmxFWxph6Ful0WMwENSv+aNNJIa+996kwiXtI=;
 b=BW6UBt11tpGhmHo5a11804KtRwVrozP9FkESUvetLyM63ng0s2hI1L+T
 /meeh5ofKeRDP7JesQua3qqUyb+22W9A4iwTrm1D2JfwjTqGfeBHlSeWL
 UlSh2OJaVVesC5WL8Pd1kjPi1pw8Oyg9nKkeKXDNoqrsBqjAz2cRRR2xR
 wly6PbE2kBYBDoUPu1clz630pQ3rQpWA7N6a8gELjVJhcti+HEtqvmNgN
 9//G9sm6x4ut57moXsGgT6BukpAobfCq5BMd2+geB6MNYMvQEV1Us78mG
 NX/YXF+TuDFI0hOC0GTT9RyYj7wGaaeCDntmI99QhUWNoMeo6jQjemz1e
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BW6UBt11
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> writes:

> Hi Vinicius,
>
> On 11/7/2024 6:44 am, Vinicius Costa Gomes wrote:
>> Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:
>> 
>>> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
>>> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
>>> have been observed:
>>>
>>> 1. The reset adapter logics for i225 and i226 differ, although they should
>>>     be the same according to the guidelines in I225/6 HW Design Section
>>>     7.5.2.1 on software initialization during tx mode changes.
>>> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>>>     This occurs solely based on the condition  igc_is_device_id_i225() when
>>>     calling schedule_work().
>>> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>>>     resets adapter for legacy->tsn tx mode transitions.
>>> 4. qbv_count introduced in the patch is actually not needed; in this
>>>     context, a non-zero value of qbv_count is used to indicate if tx mode
>>>     was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>>>     be replaced by checking the existing register
>>>     IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
>>>
>>> This patch resolves all issues and enters schedule_work() to reset the
>>> adapter only when changing tx mode. It also removes reliance on qbv_count.
>>>
>>> qbv_count field will be removed in a future patch.
>>>
>>> Test ran:
>>>
>>> 1. Verify reset adapter behaviour in i225/6:
>>>     a) Enrol a new GCL
>>>        Reset adapter observed (tx mode change legacy->tsn)
>>>     b) Enrol a new GCL without deleting qdisc
>>>        No reset adapter observed (tx mode remain tsn->tsn)
>>>     c) Delete qdisc
>>>        Reset adapter observed (tx mode change tsn->legacy)
>>>
>>> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>>>     to confirm it remains resolved.
>>>
>>> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
>>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>> Reviewed-by: Simon Horman <horms@kernel.org>
>>> ---
>> 
>> There were a quite a few bugs, some of them my fault, on this part of
>> the code, changing between the modes in the hardware.
>> 
>> So I would like some confirmation that ETF offloading/LaunchTime was
>> also tested with this change. Just to be sure.
>> 
>> But code-wise, looks good:
>> 
>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> 
>> 
>> Cheers,
>
>
> Tested etf with offload, looks like working correctly.
>
> 1. mqprio
> tc qdisc add dev enp1s0 handle 100: parent root mqprio num_tc 3 \
> map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> queues 1@0 1@1 2@2 \
> hw 0
>
> No reset adapter observed.
>
> 2. etf with offload
> tc qdisc replace dev enp1s0 parent 100:1 etf \
> clockid CLOCK_TAI delta 300000 offload
>
> Reset adapter observed (tx mode legacy -> tsn).
>
> 3. delete qdisc
> tc qdisc delete dev enp1s0 parent root handle 100
>
> Reset adapter observed (tx mode tsn -> legacy).
>

That no unexpected resets are happening, is good.

But what I had in mind was some functional tests that ETF is working. I
guess that's the only way of knowing that it's still working. Sorry that
I wasn't clear about that.


Cheers,
-- 
Vinicius
