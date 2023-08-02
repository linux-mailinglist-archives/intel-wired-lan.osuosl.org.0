Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A9876D32C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 17:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0772841521;
	Wed,  2 Aug 2023 15:59:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0772841521
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690991974;
	bh=p5XhuJk43KK5mQ3ivaz6Nxij45LnmptEZ5kPCKvWXM4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wP5zM7ZbrlfTs8eDWbRltdA+BpPBtod/GvhnEwdhhD9IPFQT+aGvP1dX1FiKsaQIM
	 cozjotPJoEWOr28DM2Fbj99hdx6rA4agNXegdKnen5fOQEtHUhUUK6l8wgY5NlZepY
	 8HRWmqUfmZB+bXnN3F08e5hBDNc5cs5Rnzxzch9hhq5sdAruY1Yppe7p0Ai4SFLPVO
	 ZAnyJl8YTc0/K/S7NkNpmUX9kk13WMJm9DeDozeqAOkEeak4ycEZqmx++Dzg+H6I+y
	 qwOBybUT6EHgVnUh0CN5jafxRnlnBIsQCr2FBmifSs9zLd0cbOOHl+YskclbLEVH2S
	 xlk5gVhdo7aDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXjGccnSt0cl; Wed,  2 Aug 2023 15:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7A5D40568;
	Wed,  2 Aug 2023 15:59:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7A5D40568
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50B761BF372
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28AC260BF1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28AC260BF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FSSAyOWdW65B for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 15:59:26 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC571606A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC571606A9
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-361-iiL6mkhMOq2kG3R03n7MBg-1; Wed, 02 Aug 2023 11:59:22 -0400
X-MC-Unique: iiL6mkhMOq2kG3R03n7MBg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 784FB1C29AE7;
 Wed,  2 Aug 2023 15:59:22 +0000 (UTC)
Received: from [10.45.224.238] (unknown [10.45.224.238])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B9BB62166B25;
 Wed,  2 Aug 2023 15:59:21 +0000 (UTC)
Message-ID: <01c88159-b31b-4c36-8648-be4403aab236@redhat.com>
Date: Wed, 2 Aug 2023 17:59:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: "Guo, Junfeng" <junfeng.guo@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-14-junfeng.guo@intel.com>
 <123b098f-c398-6156-e861-6cb8f06e87eb@redhat.com>
 <DM6PR11MB3723333CBC5612DD0A385121E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <DM6PR11MB3723333CBC5612DD0A385121E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1690991964;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m83oXQ0sQnXW5ckpq/spQ3ejvv+k/yLpWCbo5uFQS5I=;
 b=jKFPpND78mrHNro4p4CQasKMs8U1BFkOnaUajn0hg1xKfC9rYfeMqwXO4vknFNokieRPk1
 11lBeYuXqCL+ODaJykcvq0lqUZ9pGEUQj26NcM4MDAYWKR/oqLqMn1Irqury+lSmwsn8GZ
 mMh8EewG1T58NASF2dZivW4T6ElX1rc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=jKFPpND7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support double
 vlan mode configure for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 02. 08. 23 9:56, Guo, Junfeng wrote:
> 
> 
>> -----Original Message-----
>> From: Ivan Vecera <ivecera@redhat.com>
>> Sent: Monday, July 24, 2023 19:10
>> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
>> <mschmidt@redhat.com>; poros <poros@redhat.com>
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 13/15] ice: support
>> double vlan mode configure for parser
>>
>> See inline comments...
>>
>> On 05. 06. 23 7:46, Junfeng Guo wrote:
>>> Add API ice_parser_dvm_set to support turn on/off parser's
>>> double vlan mode.
>>>
>>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 28
>> ++++++++++++++++++
>>>    drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  4 +++
>>>    drivers/net/ethernet/intel/ice/ice_parser.c   | 29
>> +++++++++++++++++++
>>>    drivers/net/ethernet/intel/ice/ice_parser.h   |  1 +
>>>    4 files changed, 62 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
>> b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
>>> index bd3ebc8a5f5b..e29c7d6c554b 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_bst_tcam.c
>>> @@ -267,3 +267,31 @@ ice_bst_tcam_match(struct
>> ice_bst_tcam_item *tcam_table, u8 *pat)
>>>
>>>    	return NULL;
>>>    }
>>> +
>>> +static bool _start_with(const char *prefix, const char *string)
>>> +{
>>> +	int len1 = strlen(prefix);
>>> +	int len2 = strlen(string);
>>> +
>>> +	if (len2 < len1)
>>> +		return false;
>>> +
>>> +	return !memcmp(prefix, string, len1);
>>> +}
>>
>> Isn't there any existing implementation for this general purpose function?
>> You can use strstarts() function instead of your own implementation.
> 
> Sure, will update in the coming version! Thanks for the knowledge!
> 

Thank you,

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
