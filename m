Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 625D17F1BB3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 18:55:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB77F81AF4;
	Mon, 20 Nov 2023 17:55:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB77F81AF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700502957;
	bh=SvvYPZURTcA1uIzPcm0OcC15U0v1/u7m4cns/G0ZTiA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dHJ5hS1Kqq9K+LyxwrLWIy240y/YUI1gIXYb2vZXXvF8yG9R84IDw3KAcc4+DaL9j
	 bm/AST1d69NLgnQZcFES3kjPnbHzgwkWiIydso++ZdBXj9k5jW+UWBSLCsH4pwRdIs
	 QRuIwdDcTxjDnoLS9zAT78gsOUJNQWgUKwx7wgVwFTXPPWkZS3sJmTvMBnGHGAiwfF
	 QaUi/Fsumg9HKh8UcXKLtikCI63t5deYoDa+ArVj65qJ/czvlde+25HrSO415kpRY/
	 k+1ktYWejivASOCR5tltWa0DBjtuplSU1mCU/jV/ePWYJiZ3vOmBKInKlP2ynZbqiL
	 bk00f44OB0HvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dOIk4y83c7du; Mon, 20 Nov 2023 17:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6ECEC8143F;
	Mon, 20 Nov 2023 17:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6ECEC8143F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 408971BF34A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 17:55:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C89E8141F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 17:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C89E8141F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XN1JKa7NzehJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 17:55:50 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2750F8141D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 17:55:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2750F8141D
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-102-tzwAAGVqNVq0GsfIxjQw7Q-1; Mon,
 20 Nov 2023 12:55:45 -0500
X-MC-Unique: tzwAAGVqNVq0GsfIxjQw7Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A998A380450C;
 Mon, 20 Nov 2023 17:55:44 +0000 (UTC)
Received: from [10.45.225.144] (unknown [10.45.225.144])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D7A221C060AE;
 Mon, 20 Nov 2023 17:55:42 +0000 (UTC)
Message-ID: <26b17c32-c9ad-4b4c-8193-3a9757e587db@redhat.com>
Date: Mon, 20 Nov 2023 18:55:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>
References: <20231116152114.88515-1-ivecera@redhat.com>
 <20231116152114.88515-4-ivecera@redhat.com>
 <20231120114224.GB223713@kernel.org>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20231120114224.GB223713@kernel.org>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1700502948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6G9H3tkseCt3efcb3Be3wJxxKfn5uz65Box8O4djf1o=;
 b=O2XHaLivP/evvKBqdNgex33f1gXhjCuZjS073DcnpeZ9NrpL01Q3W8b7x/FbV6vlbslPQl
 3xwX4bgpo2bztv/XYRiE8Nzt9xoVmtQ7hZc8KtY+A3fh5DYEqOcq9wj8gurKaJSQwEWJaa
 dYqS9TZ81Pp+EJ/ku3bQfuWx9z7ehmQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=O2XHaLiv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] i40e: Add helpers to
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 20. 11. 23 12:42, Simon Horman wrote:
> On Thu, Nov 16, 2023 at 04:21:12PM +0100, Ivan Vecera wrote:
>> Add two helpers i40e_(veb|vsi)_get_by_seid() to find corresponding
>> VEB or VSI by their SEID value and use these helpers to replace
>> existing open-coded loops.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> 
> Hi Ivan,
> 
> some minor feedback from my side.
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>> index 1e9266de270b..ca8997d29c02 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -1360,4 +1360,38 @@ static inline struct i40e_pf *i40e_hw_to_pf(struct i40e_hw *hw)
>>   
>>   struct device *i40e_hw_to_dev(struct i40e_hw *hw);
>>   
>> +/**
>> + * i40e_pf_get_vsi_by_seid - find VSI by SEID
>> + * @pf: pointer to a PF
> 
> nit: @seid is missing here
> 
>> + **/
>> +static inline struct i40e_vsi *
>> +i40e_pf_get_vsi_by_seid(struct i40e_pf *pf, u16 seid)
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
>> + * i40e_pf_get_veb_by_seid - find VEB by SEID
>> + * @pf: pointer to a PF
> 
> Ditto
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> 
> ...
> 
>> @@ -14848,23 +14831,16 @@ struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags,
>>   	}
>>   
>>   	/* make sure there is such a vsi and uplink */
>> -	i40e_pf_for_each_vsi(pf, vsi_idx, vsi)
>> -		if (vsi->seid == vsi_seid)
>> -			break;
>> -
>> -	if (vsi_idx == pf->num_alloc_vsi && vsi_seid != 0) {
>> -		dev_info(&pf->pdev->dev, "vsi seid %d not found\n",
>> -			 vsi_seid);
>> -		return NULL;
>> +	if (vsi_seid) {
>> +		vsi = i40e_pf_get_vsi_by_seid(pf, vsi_seid);
>> +		if (!vsi) {
>> +			dev_err(&pf->pdev->dev, "vsi seid %d not found\n",
>> +				vsi_seid);
>> +			return NULL;
>> +		}
>>   	}
>> -
>>   	if (uplink_seid && uplink_seid != pf->mac_seid) {
>> -		i40e_pf_for_each_veb(pf, veb_idx, veb) {
>> -			if (veb->seid == uplink_seid) {
>> -				uplink_veb = veb;
>> -				break;
>> -			}
>> -		}
>> +		uplink_veb = i40e_pf_get_veb_by_seid(pf, uplink_seid);
>>   		if (!uplink_veb) {
>>   			dev_info(&pf->pdev->dev,
>>   				 "uplink seid %d not found\n", uplink_seid);
> 
> The next part of this function looks like this:
> 
> 		if (!uplink_veb) {
> 			dev_info(&pf->pdev->dev,
> 				 "uplink seid %d not found\n", uplink_seid);
> 			return NULL;
> 		}
> 	}
> 	/* get veb sw struct */
> 	veb_idx = i40e_veb_mem_alloc(pf);
> 	if (veb_idx < 0)
> 		goto err_alloc;
> 	veb = pf->veb[veb_idx];
> 	veb->flags = flags;
> 	veb->uplink_seid = uplink_seid;
> 	veb->veb_idx = (uplink_veb ? uplink_veb->idx : I40E_NO_VEB);
> 	veb->enabled_tc = (enabled_tc ? enabled_tc : 0x1);
> 
> 	/* create the VEB in the switch */
> 	ret = i40e_add_veb(veb, vsi);
> 
> Smatch complains that vsi may be used uninitialised here.
> Which does seem possible to me if vsi_seid is 0.

Yes, the support for floating VEBs is and WAS broken prior this patch 
and it is fixed by the following patch.

Prior this patch... Let's vsi_seid == 0:

	/* make sure there is such a vsi and uplink */
	i40e_pf_for_each_vsi(pf, vsi_idx, vsi)
		if (vsi->seid == vsi_seid)
			break;
-> here vsi_idx == pf->num_alloc_vsi because there cannot be VSI with 
SEID == 0... and VSI points after the pf->vsi[] array.

	if (vsi_idx == pf->num_alloc_vsi && vsi_seid != 0) {
		dev_info(&pf->pdev->dev, "vsi seid %d not found\n",
			 vsi_seid);
		return NULL;
	}

This condition is not met, although vsi_idx == pf->num_alloc_vsi but 
vsi_seid == 0 so the rest of code ended by:

	ret = i40e_add_veb(veb, vsi);

and vsi pointer points to invalid area (item after the last one from 
pf->vsi).

As I mentioned the broken floating VEB functionality (where vsi_seid == 
0 and uplink_seid == 0) is fixed by the following patch.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
