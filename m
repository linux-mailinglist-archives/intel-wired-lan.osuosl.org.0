Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0019F6E55
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 20:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED8766143D;
	Wed, 18 Dec 2024 19:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AZyqyNb1O9xU; Wed, 18 Dec 2024 19:43:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5566614AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734551030;
	bh=r6siq0c5OvQV7pOu79hLNhx5/8LObOLe6yLaV358jZE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HCbgxlj8Kr42Xh+SX2yEiK+6w2BWYSeFEf+JuXD5NFdM0mOk0be5Y/9XsosiQA82c
	 rr2At6V5Jw5eiqYs53NhVDA/iMYaxE6DmMNWFbhlK5ppOzMKepS4OykLnHx/mvtO23
	 Kaur1BGLPIPJsxbN7D3JJg3uFQmCpXyKawXiCc3nxdwomMnJ/N9TyHOhyS5iNylm8L
	 iZTiqAKHzyGiM5pYG70bNOabvWHSzcZqWJ1qfdzfhpJPgpqoFuYzj5WicOIlx+5JyE
	 MrwxqpNuWRUmyb0cQpGGDL2SaDWfs1teChbma3OWNKDBYqRmcHzJnrFsQB+hRTRO3f
	 QpKjaeI5M4Jpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5566614AA;
	Wed, 18 Dec 2024 19:43:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E5C6C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2819484EA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z-EtaoKBXE2e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 19:43:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.128;
 helo=mx18lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0043384EA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0043384EA2
Received: from mx18lb.world4you.com (mx18lb.world4you.com [81.19.149.128])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0043384EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 19:43:46 +0000 (UTC)
Received: from [88.117.62.55] (helo=[10.0.0.160])
 by mx18lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tNzxQ-0000000051R-2hCK; Wed, 18 Dec 2024 20:43:44 +0100
Message-ID: <e9bd85fc-a682-4c60-9dfd-0829ca886889@engleder-embedded.com>
Date: Wed, 18 Dec 2024 20:43:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 kuba@kernel.org, edumazet@google.com, pabeni@redhat.com,
 bhelgaas@google.com, pmenzel@molgen.mpg.de, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20241214191623.7256-1-gerhard@engleder-embedded.com>
 <9889f570-a2a0-4a71-b140-41278f1e8639@intel.com>
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <9889f570-a2a0-4a71-b140-41278f1e8639@intel.com>
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
 bh=r6siq0c5OvQV7pOu79hLNhx5/8LObOLe6yLaV358jZE=; b=ApQfajPjVyq0yNVpK2tHBtxQAH
 SYClV7vaTIJTUfTavKSHEZWqkZVIz+EDoYLjbR9jMbz2yHxsM2PnTEQIVxvQnGR2UI/3ioNS3RerT
 eQewkskPXaendgnoFoyd8sxhmgjhlA4cX4oDl/zthXuhdg3GCp7FoFcc+KmahY3RQKDw=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=engleder-embedded.com
 header.i=@engleder-embedded.com header.a=rsa-sha256 header.s=dkim11
 header.b=ApQfajPj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Fix real-time
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

On 18.12.24 16:23, Alexander Lobakin wrote:
> From: Gerhard Engleder <gerhard@engleder-embedded.com>
> Date: Sat, 14 Dec 2024 20:16:23 +0100
> 
>> From: Gerhard Engleder <eg@keba.com>
>>
>> Link down and up triggers update of MTA table. This update executes many
>> PCIe writes and a final flush. Thus, PCIe will be blocked until all
>> writes are flushed. As a result, DMA transfers of other targets suffer
>> from delay in the range of 50us. This results in timing violations on
>> real-time systems during link down and up of e1000e in combination with
>> an Intel i3-2310E Sandy Bridge CPU.
>>
>> The i3-2310E is quite old. Launched 2011 by Intel but still in use as
>> robot controller. The exact root cause of the problem is unclear and
>> this situation won't change as Intel support for this CPU has ended
>> years ago. Our experience is that the number of posted PCIe writes needs
>> to be limited at least for real-time systems. With posted PCIe writes a
>> much higher throughput can be generated than with PCIe reads which
>> cannot be posted. Thus, the load on the interconnect is much higher.
>> Additionally, a PCIe read waits until all posted PCIe writes are done.
>> Therefore, the PCIe read can block the CPU for much more than 10us if a
>> lot of PCIe writes were posted before. Both issues are the reason why we
>> are limiting the number of posted PCIe writes in row in general for our
>> real-time systems, not only for this driver.
>>
>> A flush after a low enough number of posted PCIe writes eliminates the
>> delay but also increases the time needed for MTA table update. The
>> following measurements were done on i3-2310E with e1000e for 128 MTA
>> table entries:
>>
>> Single flush after all writes: 106us
>> Flush after every write:       429us
>> Flush after every 2nd write:   266us
>> Flush after every 4th write:   180us
>> Flush after every 8th write:   141us
>> Flush after every 16th write:  121us
>>
>> A flush after every 8th write delays the link up by 35us and the
>> negative impact to DMA transfers of other targets is still tolerable.
>>
>> Execute a flush after every 8th write. This prevents overloading the
>> interconnect with posted writes.
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
>> Signed-off-by: Gerhard Engleder <eg@keba.com>
>> ---
>> v3:
>> - mention problematic platform explicitly (Bjorn Helgaas)
>> - improve comment (Paul Menzel)
>>
>> v2:
>> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
>> ---
>>   drivers/net/ethernet/intel/e1000e/mac.c | 9 ++++++++-
>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
>> index d7df2a0ed629..0174c16bbb43 100644
>> --- a/drivers/net/ethernet/intel/e1000e/mac.c
>> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
>> @@ -331,8 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
>>   	}
>>   
>>   	/* replace the entire MTA table */
>> -	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
>> +	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>>   		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
>> +
>> +		/* do not queue up too many posted writes to prevent increased
>> +		 * latency for other devices on the interconnect
>> +		 */
> 
> I think a multi-line comment should start with a capital letter and have
> a '.' at the end of the sentence.
> 
> + netdev code doesn't have the special rule for multi-line comments,
> they should look the same way as in the rest of the kernel:
> 
> 		/*
> 		 * Do not queue up ...
> 		 * latency ...
> 		 */

Oh the preferred style changed, I missed that. Will be done.

>> +		if ((i % 8) == 0 && i != 0)
>> +			e1e_flush();
> 
> IIRC explicit `== 0` / `!= 0` are considered redundant.
> 
> 		if (!(i % 8) && i)

You are right, will be changed.

> 
> I'd also mention in the comment above that this means "flush each 8th
> write" and why exactly 8.

I will add that information to the comment.

Thank you for the review!

Gerhard
