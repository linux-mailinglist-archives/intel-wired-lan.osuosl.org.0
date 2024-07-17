Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6268593447B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 00:03:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5818740163;
	Wed, 17 Jul 2024 22:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wECUy04z0uVU; Wed, 17 Jul 2024 22:03:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9DEA1401A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721253795;
	bh=5I1bYoG3xOx8r4gIcnxAPVRrmbjDZ8yBtJ26QdGnahA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cY+32py8nDv+NA68hl+my6vU5aCgcELn94hKrgU0LmSZlc7K6ZFyj6S5YArMdwFU4
	 dKn2X50oEQeQuNGV1eNXsGO5fuZn8QDXm6zH5+LfsHwFHt8fTuQwn+zO5XKK1PffZO
	 qFcfB4kw4SsPzTj16ku/9OZFWmAxE806FUAQe4sTY5JrypSyCtL8zWBhcnRCzoedaf
	 9OoUQsFBPzvrJ5OSJhfRVsyI0zXYqzOEymX12DUtW2oBCylJtWJoacDI7mULcdPtFR
	 RctMY64wG4eHYhr9Lr0qJUwn+bAQm7bNRCArP6UcvCQGSmpMJFC+q2SG6Y/2Kvxm+N
	 mJQfL3PvcRicQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9DEA1401A1;
	Wed, 17 Jul 2024 22:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29E661BF385
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 22:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1694E6058C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 22:03:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6OZ3c1QZGfQ7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2024 22:03:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F2AD360093
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2AD360093
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2AD360093
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 22:03:12 +0000 (UTC)
X-CSE-ConnectionGUID: nZmRR5RTTDeZQ7OilPjd4g==
X-CSE-MsgGUID: ClE/bCKPRqOYUzg7d9h9Gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="22599214"
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="22599214"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 15:03:10 -0700
X-CSE-ConnectionGUID: 8BjlIPCbTHaXuAZrNJ+4KQ==
X-CSE-MsgGUID: fUCh/j56S5qsRaHwnHJXuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,215,1716274800"; d="scan'208";a="88014343"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.241.225.92])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 15:03:11 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>, "David S .
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse
 Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>, Richard
 Cochran <richardcochran@gmail.com>, Paul Menzel <pmenzel@molgen.mpg.de>,
 Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <2c5a0dcf-f9b0-49da-9dea-0a276fa4a0d9@linux.intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
 <87o774u807.fsf@intel.com>
 <6bb1ba4a-41ba-4bc1-9c4b-abfb27944891@linux.intel.com>
 <87le27ssu4.fsf@intel.com>
 <2c5a0dcf-f9b0-49da-9dea-0a276fa4a0d9@linux.intel.com>
Date: Wed, 17 Jul 2024 15:03:10 -0700
Message-ID: <87msmf3cdd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721253793; x=1752789793;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xvMqdi9WDEg+JNQMrlEj2e0h/3nai7MYNzN4vR/RJH4=;
 b=EczEmwlyNSr3+hP9J+hDCFguEQszd9xOcwLPqzMtnTnuYgKtoAEBBTqi
 wV8KRLgQ8NZYUmWci1z1Tqi9ie0Dp/GylpsAUNMf1Hyr4VS/jn9EiODCq
 DTiKLdLFjFCtXR4pxjtdVswoD6pkNv1L4OAOkQpOOEjArG/OcbhcIX3CE
 VyvMnKnEz4J8leqLcPszsUDEyKqXHTbC2uTbMdkZOU7asNne6EVrl1Z7R
 xmMNOfpzpX9DBtmonLeqgk01QwUNlx6A4TDaxteceA2qHug/sVRouY3L9
 5xwq2Rz9x+uipJ8G7IanwBalJkwsvZAmMQdUEWqwPA/Vrp3ji1YxmqJ50
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EczEmwly
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

Hi,

"Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> writes:

> On 12/7/2024 1:10 am, Vinicius Costa Gomes wrote:
>> "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com> writes:
>> 
>>> Hi Vinicius,
>>>
>>> On 11/7/2024 6:44 am, Vinicius Costa Gomes wrote:
>>>> Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:
>>>>
>>>>> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
>>>>> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
>>>>> have been observed:
>>>>>
>>>>> 1. The reset adapter logics for i225 and i226 differ, although they should
>>>>>      be the same according to the guidelines in I225/6 HW Design Section
>>>>>      7.5.2.1 on software initialization during tx mode changes.
>>>>> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>>>>>      This occurs solely based on the condition  igc_is_device_id_i225() when
>>>>>      calling schedule_work().
>>>>> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>>>>>      resets adapter for legacy->tsn tx mode transitions.
>>>>> 4. qbv_count introduced in the patch is actually not needed; in this
>>>>>      context, a non-zero value of qbv_count is used to indicate if tx mode
>>>>>      was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>>>>>      be replaced by checking the existing register
>>>>>      IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
>>>>>
>>>>> This patch resolves all issues and enters schedule_work() to reset the
>>>>> adapter only when changing tx mode. It also removes reliance on qbv_count.
>>>>>
>>>>> qbv_count field will be removed in a future patch.
>>>>>
>>>>> Test ran:
>>>>>
>>>>> 1. Verify reset adapter behaviour in i225/6:
>>>>>      a) Enrol a new GCL
>>>>>         Reset adapter observed (tx mode change legacy->tsn)
>>>>>      b) Enrol a new GCL without deleting qdisc
>>>>>         No reset adapter observed (tx mode remain tsn->tsn)
>>>>>      c) Delete qdisc
>>>>>         Reset adapter observed (tx mode change tsn->legacy)
>>>>>
>>>>> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>>>>>      to confirm it remains resolved.
>>>>>
>>>>> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
>>>>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>>>>> Reviewed-by: Simon Horman <horms@kernel.org>
>>>>> ---
>>>>
>>>> There were a quite a few bugs, some of them my fault, on this part of
>>>> the code, changing between the modes in the hardware.
>>>>
>>>> So I would like some confirmation that ETF offloading/LaunchTime was
>>>> also tested with this change. Just to be sure.
>>>>
>>>> But code-wise, looks good:
>>>>
>>>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>>>>
>>>>
>>>> Cheers,
>>>
>>>
>>> Tested etf with offload, looks like working correctly.
>>>
>>> 1. mqprio
>>> tc qdisc add dev enp1s0 handle 100: parent root mqprio num_tc 3 \
>>> map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
>>> queues 1@0 1@1 2@2 \
>>> hw 0
>>>
>>> No reset adapter observed.
>>>
>>> 2. etf with offload
>>> tc qdisc replace dev enp1s0 parent 100:1 etf \
>>> clockid CLOCK_TAI delta 300000 offload
>>>
>>> Reset adapter observed (tx mode legacy -> tsn).
>>>
>>> 3. delete qdisc
>>> tc qdisc delete dev enp1s0 parent root handle 100
>>>
>>> Reset adapter observed (tx mode tsn -> legacy).
>>>
>> 
>> That no unexpected resets are happening, is good.
>> 
>> But what I had in mind was some functional tests that ETF is working. I
>> guess that's the only way of knowing that it's still working. Sorry that
>> I wasn't clear about that.
>> 
>> 
>> Cheers,
>
> My bad.
>
> Just tested ETF functionality and it is working.
>

Awesome. Thanks for the confirmation:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
