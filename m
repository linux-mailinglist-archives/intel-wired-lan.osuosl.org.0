Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01427634BFC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 02:04:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32C0461013;
	Wed, 23 Nov 2022 01:04:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32C0461013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669165475;
	bh=QSAmTU26M1rkwAcKpuPrnWrvwoSVLAfVPXCMzD0KFcY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JxDswqENZvJuVWT24xuaNjjfjvjcXZQphIs0aaKaKQm9uMKSZlS+S9GcdNAW0M0ce
	 gNh4mRuxdAmSeQkhBFOVFJLwrCTZvx9GraRM+whHcA1bXO131BF1QzHr3TnshZgiMz
	 Rm/gyxx5SanMny1t37o7x5JATIZ7jsERfHvesCjOPWUowIQ2Z7McUT9j4c35nEW9el
	 nZUd5pJh6bGrOgx5uS68dQ0070yS7HzLFJgHuKO1q3T3tykvO+bTHzqqyi0KrIzUSc
	 WIMnBYgGCCbOZt4IWcIb8bVobhB3iSaEAvH1VtsvnFBEHs1xG8m+mkQ1C0C5zWC9B7
	 9XsfcUGOsL5lA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ALVtwZqyrJyc; Wed, 23 Nov 2022 01:04:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EA096102D;
	Wed, 23 Nov 2022 01:04:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EA096102D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4924F1BF371
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 01:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20F0081FA4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 01:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20F0081FA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2DCe-SyztP_n for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 01:04:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27A1780C7B
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 27A1780C7B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 01:04:27 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id y13so15947991pfp.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 17:04:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ChWuCRj2lztiuijm5XOjLHSRF/5QHbLZueG3gnKY4L8=;
 b=EH3vjFn4vyuNNgT0W9Hnp0PeVN1MUXsWeevpmziEiXdrTzPELTfxlEJ/zLotNnd0d7
 ROBPArLKmClwQsc34CE7JTjI5j/5iMuxiOqyMhPcdMpM1Xf4I7trCg4DGD9eLDJmGkj/
 8WGmSVNdE7EZ3cLlE5EcVEv7EsP4qwKXSN42aWJXrI2IN0txlkvwOEZyTiq1cGfcxRrw
 Me3kDmG8pgG2XubK2xZ3gxVTTKO38T/JgowCsDibpA+c5oRCZ8Bz+pu98LCfzVXDqQuE
 dVHOJjOzfliShnRCPqjdrea7RjBm4nW5UWx2dS9l8w9adw0U78OYgb5wsfpmb4KWHHaY
 tWnA==
X-Gm-Message-State: ANoB5pkEfUzXWdAqgVH+7i+wRPAR9dhJ44F29CP4vXv073ad35AXk/DL
 aXPer1OB5t9cpWDJazwx7o5JkA==
X-Google-Smtp-Source: AA0mqf5e8w5bXA3SZQyPvtiv2JIpKsGGSQQ2IKYTpQVwLCWBveP11ej/boYKJtOJrVPO81Fo8fWZ0Q==
X-Received: by 2002:aa7:854d:0:b0:56d:6e51:60ee with SMTP id
 y13-20020aa7854d000000b0056d6e5160eemr6422159pfn.25.1669165467251; 
 Tue, 22 Nov 2022 17:04:27 -0800 (PST)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 s187-20020a625ec4000000b0056b8181861esm11673965pfb.19.2022.11.22.17.04.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Nov 2022 17:04:26 -0800 (PST)
Message-ID: <f2457229-865a-57a0-94a1-c5c63b2f30a5@daynix.com>
Date: Wed, 23 Nov 2022 10:04:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20221122152630.76190-1-akihiko.odaki@daynix.com>
 <Y3z3Y5kpz2EgN3uq@boxer>
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <Y3z3Y5kpz2EgN3uq@boxer>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ChWuCRj2lztiuijm5XOjLHSRF/5QHbLZueG3gnKY4L8=;
 b=YwVkPoatcqi4jXSpmqwULOaickgxdfWjzYRsRGsfVhr2gxfiYnamK0eNVwHMQ+R1gR
 +r74F/yWjXL9Dwrm5ZeY9fWRnuoK0fghHmEDfEcsSmSDGw7L8jOd7SWE1uge/vkGcr+2
 hiCW2e96JXLas1N+CmvNFdVCsg/mBHpooxEpDAgG5QV0bqhRObQK7WmSF4VMlfPWAoip
 DyN3g1MpJGVdoiXz9hNv1bpm3MHQPqh7Wxb4PoyQm/DYbS/RJQAO+9vtfuRQBPJk2RJo
 AdGTeCW4/TKO/gL+9GJulh+3Ktb5JVA65swTrWQKzlUscwYRkPM8jSjjxS3FVCokQ9mW
 LqoQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=YwVkPoat
Subject: Re: [Intel-wired-lan] [PATCH v2] igbvf: Regard vf reset nack as
 success
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Yan Vugenfirer <yan@daynix.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 2022/11/23 1:22, Maciej Fijalkowski wrote:
> On Wed, Nov 23, 2022 at 12:26:30AM +0900, Akihiko Odaki wrote:
>> vf reset nack actually represents the reset operation itself is
>> performed but no address is assigned. Therefore, e1000_reset_hw_vf
>> should fill the "perm_addr" with the zero address and return success on
>> such an occasion. This prevents its callers in netdev.c from saying PF
>> still resetting, and instead allows them to correctly report that no
>> address is assigned.
> 
> What's the v1->v2 diff?

Sorry, I mistakenly added you to CC (and didn't tell you the context). 
The diff is only in the message. For details, please look at:
https://patchew.org/linux/20221122092707.30981-1-akihiko.odaki@daynix.com/#647a4053-bae0-6c06-3049-274d389c2bdd@daynix.com

> Probably route to net and add fixes tag?
It is hard to determine the cause of the bug because it is about 
undocumented ABI. Linux introduced E1000_VF_RESET | 
E1000_VT_MSGTYPE_NACK response with commit 6ddbc4cf1f4d ("igb: Indicate 
failure on vf reset for empty mac address") so one can say it is the 
cause of the bug.

However, the PF may be driven by someone else Linux (Windows in 
particular), and if such system have already had E1000_VF_RESET | 
E1000_VT_MSGTYPE_NACK response defined, it can be said the bug existed 
even before Linux changes how the PF responds to E1000_VF_RESET request.

Regards,
Akihiko Odaki

> 
>>
>> Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
>> ---
>>   drivers/net/ethernet/intel/igbvf/vf.c | 15 ++++++++++++---
>>   1 file changed, 12 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igbvf/vf.c b/drivers/net/ethernet/intel/igbvf/vf.c
>> index b8ba3f94c363..2691ae2a8002 100644
>> --- a/drivers/net/ethernet/intel/igbvf/vf.c
>> +++ b/drivers/net/ethernet/intel/igbvf/vf.c
>> @@ -1,6 +1,8 @@
>>   // SPDX-License-Identifier: GPL-2.0
>>   /* Copyright(c) 2009 - 2018 Intel Corporation. */
>>   
>> +#include <linux/etherdevice.h>
>> +
>>   #include "vf.h"
>>   
>>   static s32 e1000_check_for_link_vf(struct e1000_hw *hw);
>> @@ -131,11 +133,18 @@ static s32 e1000_reset_hw_vf(struct e1000_hw *hw)
>>   		/* set our "perm_addr" based on info provided by PF */
>>   		ret_val = mbx->ops.read_posted(hw, msgbuf, 3);
>>   		if (!ret_val) {
>> -			if (msgbuf[0] == (E1000_VF_RESET |
>> -					  E1000_VT_MSGTYPE_ACK))
>> +			switch (msgbuf[0]) {
>> +			case E1000_VF_RESET | E1000_VT_MSGTYPE_ACK:
>>   				memcpy(hw->mac.perm_addr, addr, ETH_ALEN);
>> -			else
>> +				break;
>> +
>> +			case E1000_VF_RESET | E1000_VT_MSGTYPE_NACK:
>> +				eth_zero_addr(hw->mac.perm_addr);
>> +				break;
>> +
>> +			default:
>>   				ret_val = -E1000_ERR_MAC_INIT;
>> +			}
>>   		}
>>   	}
>>   
>> -- 
>> 2.38.1
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
