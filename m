Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C999EBA0B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 20:24:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 000CD81167;
	Tue, 10 Dec 2024 19:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L7mnirH6Sd9R; Tue, 10 Dec 2024 19:24:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7FC78115F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733858687;
	bh=AhEWUKL5EhB8ncFdMFzQW4/lbKCtlIrg6mHUxIedBSE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jK2uGhvxyFop1QczWnynR4EzVepXw4zQBBIoV/PhzHnMy6E5DJQfjJKZSnUCp97nN
	 jqJKhYQiTZ2dYKms/I8AElWCRWaMnTKjR+fNRZ2CL3tq1j4cF4cLMf1/j6C7KJ29+U
	 wRKUnpADGRgKX3pTHH6os6md8EJ52SBwuHC6TWUZB5uUfB+pgfARx41B7cFoIb14W+
	 lhu8yxCQ9e9cUHKNfRp6Iwer5+c2ZO+CVkoIKpzpcsP/cTx3qZ2TsxevbsFDLHzawn
	 HlJCDNQzVZ1zUavobj8ZnCRz0EDtwqwQAXEh55o8RBU5Ebx+2+saAUtC/fusMMM8X3
	 +iELYDp3E0jOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7FC78115F;
	Tue, 10 Dec 2024 19:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AF0AED2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 19:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21DBD4050C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 19:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcnnICE9M0iN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 19:24:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.118;
 helo=mx08lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D7B1C404A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7B1C404A8
Received: from mx08lb.world4you.com (mx08lb.world4you.com [81.19.149.118])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7B1C404A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 19:24:44 +0000 (UTC)
Received: from [88.117.62.55] (helo=[10.0.0.160])
 by mx08lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tL5qY-000000002GY-3Sx5; Tue, 10 Dec 2024 20:24:39 +0100
Message-ID: <94752230-a901-4a15-abd1-f470a62e1047@engleder-embedded.com>
Date: Tue, 10 Dec 2024 20:24:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>
References: <20241208184950.8281-1-gerhard@engleder-embedded.com>
 <7c4f3165-df86-47e1-9fc4-7087accf4a68@molgen.mpg.de>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <7c4f3165-df86-47e1-9fc4-7087accf4a68@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AhEWUKL5EhB8ncFdMFzQW4/lbKCtlIrg6mHUxIedBSE=; b=OKBbQ14KBlVrretGyyGUSDnClZ
 9c2oso6nkDj80BeuVHcyvOzAYIat6gZoqf+CYD6T973bqp/G81KnARBGKRIj27Mf8w+H8Jx4sBzrR
 3cM5y0P1b2GmVaC397CQbjq4mviSSnfEL83KrihNXJ4GizDLrJRN+1OmRanbx5ubNoaU=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=OKBbQ14K
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] e1000e: Fix real-time
 violations on link up
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

On 09.12.24 12:34, Paul Menzel wrote:
> [Cc: +PCI folks]
> 
> Dear Gerhard,
> 
> 
> Thank you for your patch.
> 
> 
> Am 08.12.24 um 19:49 schrieb Gerhard Engleder:
>> From: Gerhard Engleder <eg@keba.com>
>>
>> From: Gerhard Engleder <eg@keba.com>
> 
> The from line is present twice. No idea, if git is going to remove both.

It seems git send-email is adding this line again automatically.
Will be fixed next time.

>> Link down and up triggers update of MTA table. This update executes many
>> PCIe writes and a final flush. Thus, PCIe will be blocked until all 
>> writes
>> are flushed. As a result, DMA transfers of other targets suffer from 
>> delay
>> in the range of 50us. This results in timing violations on real-time
>> systems during link down and up of e1000e.
>>
>> A flush after a low enough number of PCIe writes eliminates the delay
>> but also increases the time needed for MTA table update. The following
>> measurements were done on i3-2310E with e1000e for 128 MTA table entries:
>>
>> Single flush after all writes: 106us
>> Flush after every write:       429us
>> Flush after every 2nd write:   266us
>> Flush after every 4th write:   180us
>> Flush after every 8th write:   141us
>> Flush after every 16th write:  121us
>>
>> A flush after every 8th write delays the link up by 35us and the
>> negative impact to DMA transfers of other targets is still tolerable.
>>
>> Execute a flush after every 8th write. This prevents overloading the
>> interconnect with posted writes.
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Link: 
>> https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
>> Signed-off-by: Gerhard Engleder <eg@keba.com>
>> ---
>> v2:
>> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
>> ---
>>   drivers/net/ethernet/intel/e1000e/mac.c | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c 
>> b/drivers/net/ethernet/intel/e1000e/mac.c
>> index d7df2a0ed629..7d1482a9effd 100644
>> --- a/drivers/net/ethernet/intel/e1000e/mac.c
>> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
>> @@ -331,8 +331,13 @@ void e1000e_update_mc_addr_list_generic(struct 
>> e1000_hw *hw,
>>       }
>>       /* replace the entire MTA table */
>> -    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
>> +    for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>>           E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
>> +
>> +        /* do not queue up too many writes */
> 
> Maybe make the comment more elaborate?

I will try to extend based on comments from the other thread.

>> +        if ((i % 8) == 0 && i != 0)
>> +            e1e_flush();
>> +    }
>>       e1e_flush();
>>   }
> 
> 
> Kind regards,
> 
> Paul

Thank you for the review!

Gerhard
