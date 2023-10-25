Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BE47D6EDF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 16:39:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A156643711;
	Wed, 25 Oct 2023 14:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A156643711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698244775;
	bh=t01Mt6lj9QIWsE3Dp1xbet3Mba31nHm6lfl6N8FMvms=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IfUtJuf/E1B9D2kqRG6zVmX7PZ4dddI90Bta1UjrEFGoQ/kQasn4TV6dMvnd1BW/h
	 oVg3LnYmq3MupFRK6jaQWBpPYrexyB5NG32dGx99YrJpCT2K+JPpXnXy50EZzBkbIs
	 1zPd03krTAC1SwYFZ1a1mAWKo0tLjI8B6DNBVUNStpjBnS9SJVuzDpHRMXlFxeF3Ut
	 joF2s0iobTZfzpqwp3LK9p/4gkX4RQKwxTgAFnqyFr2KjUc89WxGHYfa6lZPTCeTWi
	 XpTNt4LWiRo4xlyIPawcwPphoqpF004clrW8U5pJCoDaaguzDqJL7Lwg+NXWGhSxGg
	 eaPuRv7jLM4eg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sDg9BRSh9fBn; Wed, 25 Oct 2023 14:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54B514116F;
	Wed, 25 Oct 2023 14:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54B514116F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22A801BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA88285315
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:39:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA88285315
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3o2Z1u7Mf_Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 14:39:27 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E7208531A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:39:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E7208531A
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-454-uGjaI0IbPZiTFloVzjgFZA-1; Wed, 25 Oct 2023 10:39:20 -0400
X-MC-Unique: uGjaI0IbPZiTFloVzjgFZA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D4A3788D140;
 Wed, 25 Oct 2023 14:39:18 +0000 (UTC)
Received: from [10.45.225.62] (unknown [10.45.225.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 619A0492BFA;
 Wed, 25 Oct 2023 14:39:17 +0000 (UTC)
Message-ID: <cbb2e9f4-03f8-4a46-99e4-e952bb754a2f@redhat.com>
Date: Wed, 25 Oct 2023 16:39:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20231025103315.1149589-1-ivecera@redhat.com>
 <20231025103315.1149589-2-ivecera@redhat.com>
 <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <8a8f54a8-1a18-4797-a592-b57bc6fc45c1@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1698244766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fKSNaHDd6rmGllCi23XMfucJBxxGAMgO6JLoDnVZ6/0=;
 b=i85tI6SWIw3gEkoYe3ZsS5cD01vi2qLjjWS5k5hNNJpwTw3Ml7PPOuK1NaaJaqwnm3qpcB
 zJVhnYkBfheCmZ0RWF5uxvKKEpfMkux9J0eol9m5w8JwbjwfejmtThV/v8z7SQ1uLc9xj3
 /HdQDb9mTPXWq7+ek+FufeCs689RtSk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=i85tI6SW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: Remove VF MAC types
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 25. 10. 23 12:48, Wojciech Drewek wrote:
> 
> On 25.10.2023 12:33, Ivan Vecera wrote:
>> The i40e_hw.mac.type cannot to be equal to I40E_MAC_VF or
>> I40E_MAC_X722_VF so remove helper i40e_is_vf(), simplify
>> i40e_adminq_init_regs() and remove enums for these VF MAC types.
>>
>> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_adminq.c | 33 ++++++-------------
>>   drivers/net/ethernet/intel/i40e/i40e_type.h   |  8 -----
>>   2 files changed, 10 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>> index 29fc46abf690..896c43905309 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
>> @@ -17,29 +17,16 @@ static void i40e_resume_aq(struct i40e_hw *hw);
>>   static void i40e_adminq_init_regs(struct i40e_hw *hw)
>>   {
>>   	/* set head and tail registers in our local struct */
>> -	if (i40e_is_vf(hw)) {
>> -		hw->aq.asq.tail = I40E_VF_ATQT1;
>> -		hw->aq.asq.head = I40E_VF_ATQH1;
>> -		hw->aq.asq.len  = I40E_VF_ATQLEN1;
>> -		hw->aq.asq.bal  = I40E_VF_ATQBAL1;
>> -		hw->aq.asq.bah  = I40E_VF_ATQBAH1;
>> -		hw->aq.arq.tail = I40E_VF_ARQT1;
>> -		hw->aq.arq.head = I40E_VF_ARQH1;
>> -		hw->aq.arq.len  = I40E_VF_ARQLEN1;
>> -		hw->aq.arq.bal  = I40E_VF_ARQBAL1;
>> -		hw->aq.arq.bah  = I40E_VF_ARQBAH1;
> What about removing those I40E_VF_* defines?
> This is their only usage here, right?

Yes, do you want to remove them in this patch? Or follow-up is sufficient?

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
