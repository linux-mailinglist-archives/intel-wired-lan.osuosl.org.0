Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B00997EC926
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 18:02:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B5E6C82503;
	Wed, 15 Nov 2023 17:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B5E6C82503
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700067721;
	bh=nWjGpKypM0kM5UGcLBPcb8jFNkCKLr7FsgYBRc4TcZA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tae6B6JevI1UHn0N/NmjMJLuFrIQRjwO/HVoggiFhv/I/Kl3jrdscNCmDuIQE1bqh
	 5JsIJ0j0SD+pjJNE+hXIXbXtZ1dSfbLflpzj9hx3E/zp02ZpcQsEY1OtvYdP/QxnEo
	 8WS/HL9QGC/YRNJQuQjEvGrGqxORTi4k6MukeRxNsnE9F15afXZX20h3YyDidPgR/R
	 gf1N8s9sRGgG8WTUyHV1Hwxxn2gQVVXCaTDKRohf5Zcm5AtpXjWrkPgb8nP3+uVB0S
	 t2AzlAYqM5A4jKzNlS7q7oxhqXzdwx8XaUq+XpRtC/TsZEGbtnwHwIrpbkFKLKK8Vn
	 6GxNbz6z2WrBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Caq76HEKmu-M; Wed, 15 Nov 2023 17:02:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73598824E3;
	Wed, 15 Nov 2023 17:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73598824E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29BBE1BF375
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 17:01:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00F5460AF8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 17:01:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00F5460AF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WbUkQ1wqk_-D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 17:01:53 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D96CB60F85
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 17:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D96CB60F85
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-369-PYBy6ho4NKS4WAf1KUKUZw-1; Wed, 15 Nov 2023 12:01:48 -0500
X-MC-Unique: PYBy6ho4NKS4WAf1KUKUZw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
 [10.11.54.10])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CDFD810FCA;
 Wed, 15 Nov 2023 17:01:47 +0000 (UTC)
Received: from [10.45.225.144] (unknown [10.45.225.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4EBFC492BFD;
 Wed, 15 Nov 2023 17:01:45 +0000 (UTC)
Message-ID: <36889885-71c7-46f7-8c21-e5791986ad5a@redhat.com>
Date: Wed, 15 Nov 2023 18:01:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org
References: <20231113125856.346047-1-ivecera@redhat.com>
 <20231113125856.346047-4-ivecera@redhat.com>
 <3c640be7-8f1e-4f9e-8556-3aac92644dec@intel.com>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <3c640be7-8f1e-4f9e-8556-3aac92644dec@intel.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700067711;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=L79P9mU6uMtA5BVIKvZRb2x0oslwt8sbrqaeDExdV6s=;
 b=JnbrQfY3LQDc3jS6RXRRxNTXqO/pDLYDUACz1i6ZiWcHWrVaiESiBCSEzYzBZg/Mgd8LB1
 N2MH8mGnKieSbMbIgJ+CKBm77YFOarg2Hr7DzCMmRaUmCcld55JJzi6Re0UhZaBBAvapZ+
 qsoOVJH6k1Q717FePwvh060g/s51xS4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JnbrQfY3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] i40e: Add helpers to
 find VSI and VEB by SEID and use them
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
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 13. 11. 23 14:27, Wojciech Drewek wrote:
> 
> On 13.11.2023 13:58, Ivan Vecera wrote:
>> Add two helpers i40e_(veb|vsi)_get_by_seid() to find corresponding
>> VEB or VSI by their SEID value and use these helpers to replace
>> existing open-coded loops.
>>
>> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
>> ---
> Only one nit
> Reviewed-by: Wojciech Drewek<wojciech.drewek@intel.com>
> 
>>   drivers/net/ethernet/intel/i40e/i40e.h        | 34 +++++++++
>>   .../net/ethernet/intel/i40e/i40e_debugfs.c    | 38 ++--------
>>   drivers/net/ethernet/intel/i40e/i40e_main.c   | 76 ++++++-------------
>>   3 files changed, 64 insertions(+), 84 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>> index 1e9266de270b..220b5ce31519 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -1360,4 +1360,38 @@ static inline struct i40e_pf *i40e_hw_to_pf(struct i40e_hw *hw)
>>   
>>   struct device *i40e_hw_to_dev(struct i40e_hw *hw);
>>   
>> +/**
>> + * i40e_vsi_get_by_seid - find VSI by SEID
>> + * @pf: pointer to a PF
>> + **/
>> +static inline struct i40e_vsi *
>> +i40e_vsi_get_by_seid(struct i40e_pf *pf, u16 seid)
>> +{
>> +	struct i40e_vsi *vsi;
>> +	int i;
>> +
>> +	i40e_pf_for_each_vsi(pf, i, vsi)
>> +		if (vsi->seid == seid)
>> +			return vsi;
>> +
>> +	return NULL;
>> +}
>> +
>> +/**
>> + * i40e_veb_get_by_seid - find VEB by SEID
>> + * @pf: pointer to a PF
>> + **/
>> +static inline struct i40e_veb *
>> +i40e_veb_get_by_seid(struct i40e_pf *pf, u16 seid)
>> +{
>> +	struct i40e_veb *veb;
>> +	int i;
>> +
>> +	i40e_pf_for_each_veb(pf, i, veb)
>> +		if (veb->seid == seid)
>> +			return veb;
>> +
>> +	return NULL;
>> +}
> I would prefer i40e_get_{veb|vsi}_by_seid but it's my opinion.

I'd rather use i40e_pf_ prefix...

What about i40e_pf_get_vsi_by_seid() and i40e_pf_get_veb_by_seid() ?

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
