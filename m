Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CA092E76F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2024 13:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59599610CD;
	Thu, 11 Jul 2024 11:50:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mwU5z5EVl3bk; Thu, 11 Jul 2024 11:50:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85F47606E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720698643;
	bh=hLWA/hMZnYru7lkekWru1b3hWkq9PrsBPa3NxLp08d0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sIlER4PYEMEW+jTjNvtR0uqI45N2aC/03oM5sW2CedAI2UFW/3I7JPfGCd+FZ6Epw
	 qnBWajwnoRUIB8mWT+ZD8NWxQIVatXmqsr1gjetwro+8Rb4EHghusspRCZFf3RTped
	 2p+Qhm75FyMNf+645cosn/Hg7Inbosz7YFZagvo6096Ig5fsQNBnuaCnI+5+cTV0pP
	 zXtQEdoRKCAG8PMEA6O17BL4OG39+DYfy9HtR9Ay09RqkZd3k0Oinhqc2oYfLSMH/e
	 czwTj00kkiw0Fgv/PZQobLSxvDvWDU758aDCcIIydtJmDvXjay9lJ5sUM7z3x80Dco
	 xc4oVzaFCrfug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85F47606E0;
	Thu, 11 Jul 2024 11:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 043951BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 11:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E32ED82C7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 11:50:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s5f3eNjGEHIY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2024 11:50:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D8182827A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8182827A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8182827A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2024 11:50:39 +0000 (UTC)
X-CSE-ConnectionGUID: h0zXZUNmTPeAOB/W73Cw5g==
X-CSE-MsgGUID: Wo2NXMvNTr+m9K2fjx4OIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="18211447"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="18211447"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 04:50:39 -0700
X-CSE-ConnectionGUID: P4W/58xTR4agRM6PuFkhqw==
X-CSE-MsgGUID: smrXDWcKQROleRzT8/TSyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="79665436"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.74.239])
 ([10.247.74.239])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 04:50:33 -0700
Message-ID: <6bb1ba4a-41ba-4bc1-9c4b-abfb27944891@linux.intel.com>
Date: Thu, 11 Jul 2024 18:50:26 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
 <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
 <87o774u807.fsf@intel.com>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <87o774u807.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720698640; x=1752234640;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zhGBVttiVu6iyO0JmAAPRwCToWBzxlnb/qyZuGhxfOM=;
 b=QsAFGrTaA6MbjgebBCPgagBKa2VKpneKawtwdNp+toeGzTCZk7duRhgK
 CIrZEG19ccjo4HyJqSVz9GaccGJFBSRTfLOMblbyb0ETAQ8vDItvFxuQa
 OuC+KcHnZ0zi5nplnHTMud6OegDcc78UKRkkx29TfBoJKsQBybYyHSbs6
 3i9EcNGTHEzdv53xW/6vswTFOeYhl0GeXN4K4C9qsgzEE24FYBeV16GBs
 gDgnzyrRmfwNfjbmITXGXOENX2ool3iUWh7Ve6j4h5x7gs3NB/jKn5+1W
 cOMKOmpTxy41IIW+2oMAt3C/wGLMX4YNsnc57cCkocSdN/8Ty/qm/MIaD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QsAFGrTa
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

Hi Vinicius,

On 11/7/2024 6:44 am, Vinicius Costa Gomes wrote:
> Faizal Rahim <faizal.abdul.rahim@linux.intel.com> writes:
> 
>> Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
>> remaining issues with the reset adapter logic in igc_tsn_offload_apply()
>> have been observed:
>>
>> 1. The reset adapter logics for i225 and i226 differ, although they should
>>     be the same according to the guidelines in I225/6 HW Design Section
>>     7.5.2.1 on software initialization during tx mode changes.
>> 2. The i225 resets adapter every time, even though tx mode doesn't change.
>>     This occurs solely based on the condition  igc_is_device_id_i225() when
>>     calling schedule_work().
>> 3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
>>     resets adapter for legacy->tsn tx mode transitions.
>> 4. qbv_count introduced in the patch is actually not needed; in this
>>     context, a non-zero value of qbv_count is used to indicate if tx mode
>>     was unconditionally set to tsn in igc_tsn_enable_offload(). This could
>>     be replaced by checking the existing register
>>     IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.
>>
>> This patch resolves all issues and enters schedule_work() to reset the
>> adapter only when changing tx mode. It also removes reliance on qbv_count.
>>
>> qbv_count field will be removed in a future patch.
>>
>> Test ran:
>>
>> 1. Verify reset adapter behaviour in i225/6:
>>     a) Enrol a new GCL
>>        Reset adapter observed (tx mode change legacy->tsn)
>>     b) Enrol a new GCL without deleting qdisc
>>        No reset adapter observed (tx mode remain tsn->tsn)
>>     c) Delete qdisc
>>        Reset adapter observed (tx mode change tsn->legacy)
>>
>> 2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
>>     to confirm it remains resolved.
>>
>> Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
>> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> ---
> 
> There were a quite a few bugs, some of them my fault, on this part of
> the code, changing between the modes in the hardware.
> 
> So I would like some confirmation that ETF offloading/LaunchTime was
> also tested with this change. Just to be sure.
> 
> But code-wise, looks good:
> 
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> 
> Cheers,


Tested etf with offload, looks like working correctly.

1. mqprio
tc qdisc add dev enp1s0 handle 100: parent root mqprio num_tc 3 \
map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
queues 1@0 1@1 2@2 \
hw 0

No reset adapter observed.

2. etf with offload
tc qdisc replace dev enp1s0 parent 100:1 etf \
clockid CLOCK_TAI delta 300000 offload

Reset adapter observed (tx mode legacy -> tsn).

3. delete qdisc
tc qdisc delete dev enp1s0 parent root handle 100

Reset adapter observed (tx mode tsn -> legacy).

