Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB4E99D602
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 19:59:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FCD4607D0;
	Mon, 14 Oct 2024 17:59:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LoIRnDDaZJiz; Mon, 14 Oct 2024 17:59:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94A10607DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728928760;
	bh=K1sCuendBhY4oo5tpTh3PC3aFGRXjnm5e2BE6K4Hj7Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1HP/HRKdruGQV6qS3YXDSmm0thsBj4D1I6RY20X2DpAQ4eIeYRqHG41IJWbxPrSop
	 /zqSLy8IJSATrGmdI+4lbGmb9pOyKmmh8R8yKB2m3AMyMwuDn6gVC9nQLttaOM6LYo
	 U6rQ/OKAcTdj6IKEcRIodMdCYBF28Q7/OxmTZBRykPrEHdKWHqtRb9vpTcpnhCQiPv
	 gNWLUk6+REbmohyDt5ZRuLarnwxouDSvxYeDUIYt84WgSvZYjHmqPYUDbWqz1+T8GS
	 R/9rqyL+5b5jYTB0DKKeVc9FbFdkz0I0xwMK3goO6CD+Asq1QzPypLYPAhx5pgcTbQ
	 fGwAR72mHA2EQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94A10607DB;
	Mon, 14 Oct 2024 17:59:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E22161BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 17:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFA53606D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 17:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3gyQLVIq3r_L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 17:59:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.117;
 helo=mx07lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0442760610
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0442760610
Received: from mx07lb.world4you.com (mx07lb.world4you.com [81.19.149.117])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0442760610
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 17:59:16 +0000 (UTC)
Received: from [88.117.56.173] (helo=[10.0.0.160])
 by mx07lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1t0PLY-0000000035S-3mN2; Mon, 14 Oct 2024 19:59:09 +0200
Message-ID: <f5515472-21d0-4a56-a6a1-8431c1d60f7e@engleder-embedded.com>
Date: Mon, 14 Oct 2024 19:59:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
References: <20241011195412.51804-1-gerhard@engleder-embedded.com>
 <f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K1sCuendBhY4oo5tpTh3PC3aFGRXjnm5e2BE6K4Hj7Q=; b=mmMTD3q6q49oWanANcigC67B0g
 Yeuh2m0eK3wGs1dhJ3Yt/GYRivjLy4LA2wsQbyOyMmzJ63LnsiHbfKgxKq2I8a981fTWlhopMmEWj
 3pt5UGGw+l4QfknrYACoEJDkPrTwwrSVSjitIfjuUEaXi9DnB/py4YFwjHa2rGN+2GsI=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=mmMTD3q6
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next] e1000e: Fix real-time
 violations on link up
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
Cc: netdev@vger.kernel.org, Gerhard Engleder <eg@keba.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12.10.24 20:42, Andrew Lunn wrote:
> On Fri, Oct 11, 2024 at 09:54:12PM +0200, Gerhard Engleder wrote:
>> From: Gerhard Engleder <eg@keba.com>
>>
>> Link down and up triggers update of MTA table. This update executes many
>> PCIe writes and a final flush. Thus, PCIe will be blocked until all writes
>> are flushed. As a result, DMA transfers of other targets suffer from delay
>> in the range of 50us. The result are timing violations on real-time
>> systems during link down and up of e1000e.
>>
>> Execute a flush after every single write. This prevents overloading the
>> interconnect with posted writes. As this also increases the time spent for
>> MTA table update considerable this change is limited to PREEMPT_RT.
>>
>> Signed-off-by: Gerhard Engleder <eg@keba.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/mac.c | 8 +++++++-
>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
>> index d7df2a0ed629..f4693d355886 100644
>> --- a/drivers/net/ethernet/intel/e1000e/mac.c
>> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
>> @@ -331,9 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
>>   	}
>>   
>>   	/* replace the entire MTA table */
>> -	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
>> +	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>>   		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
>> +#ifdef CONFIG_PREEMPT_RT
>> +		e1e_flush();
>> +#endif
>> +	}
>> +#ifndef CONFIG_PREEMPT_RT
>>   	e1e_flush();
>> +#endif
> 
> #ifdef FOO is generally not liked because it reduces the effectiveness
> of build testing.
> 
> Two suggestions:
> 
> 	if (IS_ENABLED(CONFIG_PREEMPT_RT))
> 		e1e_flush();

I will do that.

> This will then end up as and if (0) or if (1), with the statement
> following it always being compiled, and then optimised out if not
> needed.
> 
> Alternatively, consider something like:
> 
> 	if (i % 8)
> 		e1e_flush()
> 
> if there is a reasonable compromise between RT and none RT
> performance. Given that RT is now fully merged, we might see some
> distros enable it, so a compromise would probably be better.

Yes, read/flush after every posted write is likely too much. I will
do some testing how often flush is required.

Thank you for your feedback Andrew!

Any comments from Intel driver maintainers?

Gerhard
