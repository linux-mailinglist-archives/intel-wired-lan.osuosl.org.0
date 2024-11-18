Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB129D170C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 18:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65F5140549;
	Mon, 18 Nov 2024 17:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YnMIeSh8swBY; Mon, 18 Nov 2024 17:24:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56FFD405D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731950672;
	bh=rUXx7AHuL5dCXpI2cGqfImWmgJC3Jxc0yzSlNk/JcyE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5QiEpOSMZ1yjJCD5KDGX+BmGrF/CzRJoTdI7S7thMwcmCv9tdLAZofYsIfpo/1shc
	 Mv5CKmoA+bJVHKY27kPg/gh8IKmYYJQP5WWE5n+idItitmo1W5J/GtOPHaX2a/0B59
	 1Jn2ctHg9lzRME0CWH1//SDH34Y5Bw761mbNV+5b6edDPXULD6e7pR/gTblR4uUovT
	 9UfZDW+MeKccfxCUr1xhs6ZXc4rBAy84EsdcZTseyWFEiDTHwHa5w2LIjynQ2NmDcj
	 QBjqBjVfn4081l/szE7pe/XbzAbpT+Eqm9Z/t5jHBcLK8Gl3JWqdI2KgBgwwvhfNM6
	 LeRSY/igI/umA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56FFD405D3;
	Mon, 18 Nov 2024 17:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E40EBDB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 17:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D20BF6086A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 17:24:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N3H34bPDL4Bb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 17:24:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b1; helo=out-177.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A87E36084D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A87E36084D
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A87E36084D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 17:24:27 +0000 (UTC)
Message-ID: <82643a3a-e71d-4fb9-a65f-43e6af195112@linux.dev>
Date: Mon, 18 Nov 2024 09:24:18 -0800
MIME-Version: 1.0
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-9-milena.olech@intel.com>
 <2dc0096d-93be-42f9-b646-e74c3b36126c@linux.dev>
 <PH7PR11MB5885BBAC43E3D85550852C278E272@PH7PR11MB5885.namprd11.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <PH7PR11MB5885BBAC43E3D85550852C278E272@PH7PR11MB5885.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1731950664;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rUXx7AHuL5dCXpI2cGqfImWmgJC3Jxc0yzSlNk/JcyE=;
 b=Z0vICdKIL4FoxAIhKzQmCluuWuCPYsObPbxRM0Jls0GTbzNtalDUwdsY1lvUyr8NIO2eGi
 roypuSLDTd8F9jcK8v9pAcYWOueQUiyx4qdDqTN1Nh0yuXV/MZbAk4j1iLHUW200nSHCu5
 Y0y6K2ZBYnAFn5CSfQ0ymKWB/9PN7F4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Z0vICdKI
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 08/10] idpf: add Tx timestamp
 flows
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

On 18/11/2024 07:07, Olech, Milena wrote:
> On 11/14/2024 1:52 PM, Vadim Fedorenko wrote:
> 
>> On 13/11/2024 15:46, Milena Olech wrote:
>>> Add functions to request Tx timestamp for the PTP packets, read the Tx
>>> timestamp when the completion tag for that packet is being received,
>>> extend the Tx timestamp value and set the supported timestamping modes.
>>>
>>> Tx timestamp is requested for the PTP packets by setting a TSYN bit and
>>> index value in the Tx context descriptor. The driver assumption is that
>>> the Tx timestamp value is ready to be read when the completion tag is
>>> received. Then the driver schedules delayed work and the Tx timestamp
>>> value read is requested through virtchnl message. At the end, the Tx
>>> timestamp value is extended to 64-bit and provided back to the skb.
>>>
>>> Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
>>> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
>>> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> Signed-off-by: Milena Olech <milena.olech@intel.com>

[skipped]

>>> +/**
>>> + * idpf_ptp_extend_ts - Convert a 40b timestamp to 64b nanoseconds
>>> + * @adapter: Driver specific private structure
>>> + * @in_tstamp: Ingress/egress timestamp value
>>> + *
>>> + * It is assumed that the caller verifies the timestamp is valid prior to
>>> + * calling this function.
>>> + *
>>> + * Extract the 32bit nominal nanoseconds and extend them. Use the cached PHC
>>> + * time stored in the device private PTP structure as the basis for timestamp
>>> + * extension.
>>> + *
>>> + * Return: Tx timestamp value extended to 64 bits.
>>> + */
>>> +u64 idpf_ptp_extend_ts(const struct idpf_adapter *adapter, u64 in_tstamp)
>>> +{
>>> +	unsigned long discard_time;
>>> +
>>> +	discard_time = adapter->ptp->cached_phc_jiffies + 2 * HZ;
>>> +
>>> +	if (time_is_before_jiffies(discard_time))
>>> +		return 0;
>>
>> It might be a good idea to count such events, just to provide at least
>> some information to the client regarding zero timestamp?
> 
> You mean to calculate skipped Tx timestamps?

Yes, we have special metric in ethtool to provide info about issues with
TX timestamp, it would be great to have idpf implemented this interface.

> 
>>
>>> +
>>> +	return idpf_ptp_tstamp_extend_32b_to_64b(adapter->ptp->cached_phc_time,
>>> +						 lower_32_bits(in_tstamp));
>>> +}
>>
>>
>> [... skip ...]
> 
> Thanks,
> Milena

