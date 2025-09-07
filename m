Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 239EDB47A68
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 12:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54B3884716;
	Sun,  7 Sep 2025 10:10:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oRXvLn_EchFi; Sun,  7 Sep 2025 10:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A7DC84704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757239836;
	bh=6DodS/D3il1OZVtt+DLEBRGBvnGB9ItExnL9arzW9Rk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Eoqt9/0kjBC4ZvLYQuZH2bkLIZa8ZYe+QjuYU2mx60BTDpj1JhigN1Y7f5+31ozrd
	 2a0+z595cJVw5zlpafgfz/aXGfyuny5jH8GuVRS0RZDWxKqiq7ZONiB6TTVQ9y0qpV
	 HxEnVeUk58NOKzoi2g5nPwa5XU08+/UIO0OoJ8Rsv/LCR2kX7fUyo24YE7xqgFaLnf
	 7e7Fr/eX8ND1Dg9sU34FDx9ERlkydMijPu7plJXeHYilkucwvJOghew9I0mJObrQ4E
	 XrEyChkfAL8frguWiZtf7bmU0gWMEnzwQDvfWResPjgW65CCsglF3KV0+F3QHB3vgB
	 NOx+lJGJpq8Zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A7DC84704;
	Sun,  7 Sep 2025 10:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F2E68CA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9CB684702
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:10:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fFMFcqV3ZjmS for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 10:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A80C684701
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A80C684701
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A80C684701
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:10:32 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-317--A4-GlEmM8GfYDaK-Hpv7g-1; Sun, 07 Sep 2025 06:10:29 -0400
X-MC-Unique: -A4-GlEmM8GfYDaK-Hpv7g-1
X-Mimecast-MFC-AGG-ID: -A4-GlEmM8GfYDaK-Hpv7g_1757239828
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-45ceeae0513so19081895e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Sep 2025 03:10:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757239828; x=1757844628;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6DodS/D3il1OZVtt+DLEBRGBvnGB9ItExnL9arzW9Rk=;
 b=ncP4eS4FSAgEJKbRWqcrNBvSNy2BRh+iHYvY3QRFe0r68j51yo4PqZ5Xi7rpmyEEN1
 WMhbfIR21xlz0pM7s6q2Wf5X/GLN4appgUFZ2+d7nLslIyDD+rteg61rFnxD7n91x45a
 Aq5ICQWFmPTg/DyNvErxW3QSvOWwgfs+YiaDRxb1OqbkYYOB7HZNQgcWjg5ZWFU8F5FL
 zp2krs4Vn4OvhuplAK9HGZOCqnQ2ldTsx/wKdqgt7YkA+2FLWW5mhMNs5kmgpiSKVFfH
 QURnscBL3gu7uyZ2uPCRXwo5AFtEJIhtMNmo5/6ouPtCkT3MdMX3p54Q5QWsjTKjQY0R
 3lUQ==
X-Gm-Message-State: AOJu0YyDJxalkEtffg0Yh6vwZdw/hCOvLzdU55in3EwkuPjIGJu0tSWy
 6IHXFp3oUkGm+Jhx8CLCZggCtOtYnXT8ybUb+FZgUvuYL0mzevkmQv/vJvJrHki5z27W7BLzS7b
 7+s7hE14VdxT3c18hwaNT9LEsh2EG0OJozh8imoE8AptXfvifQBWcyo8cm6UxTYiJ8nrMmdk=
X-Gm-Gg: ASbGnctMekx6bfPWDpLBdBeMkRSuqiMOd6wOgQDA1mfayRlcLUMxfErg3VBrsFe0Q71
 l1Vbyanl4cY+oe0ad+1PymAi8GgrF2HR+6SPhkNXztESckDruj7Pobi3ih5Ekk2eRCpIcDpQ8pm
 sssQuOuqLnqZRyF1wxHqjh0jZ2eVSzOATKTAZvmAjKonggP4a9ncwBTiC7Zh5vfNykvB7EJVpbx
 lqtNTikbSN9QQsrr4+9vUkH9TwnjAGV3DZqGNCTr/ZT3zTf+QSY+xLM/2vuIWmeq/e6jAHjP7GA
 iDSrzyFafbbRXMmKcz8SIVbmV4ToYWQaLVbbDeq+FrM=
X-Received: by 2002:a05:600c:a43:b0:45b:81ad:336 with SMTP id
 5b1f17b1804b1-45dddea520dmr45649115e9.16.1757239827650; 
 Sun, 07 Sep 2025 03:10:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZwy05Oxnn/uLFEdxO+a3Pq30Y/KFZY8SeGX8oadgdr4naG2NeFsAWZWYI3JBmpwo1ni6luA==
X-Received: by 2002:a05:600c:a43:b0:45b:81ad:336 with SMTP id
 5b1f17b1804b1-45dddea520dmr45648895e9.16.1757239827172; 
 Sun, 07 Sep 2025 03:10:27 -0700 (PDT)
Received: from [192.168.68.125] ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3db9b973869sm18990381f8f.18.2025.09.07.03.10.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Sep 2025 03:10:26 -0700 (PDT)
Message-ID: <f566a9c4-af28-4135-bae3-01ea5ad1ba97@redhat.com>
Date: Sun, 7 Sep 2025 13:10:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, przemyslawx.patynowski@intel.com,
 jiri@resnulli.us, netdev@vger.kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
 <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
 <20250905114642.GA551420@horms.kernel.org>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <20250905114642.GA551420@horms.kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0RCcTOpJENWzCbovkZ7xhsbYX4SaNEahiZ53xTiih7o_1757239828
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1757239831;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6DodS/D3il1OZVtt+DLEBRGBvnGB9ItExnL9arzW9Rk=;
 b=YWQXaP5lsk4eDHAT5E6ly3MmVAjePIKxG8SuDAJ8bO9vJOCnnen9VdXMbO+sib7DVvW7fI
 05zgV7HqL0U/gpEaSttzIUpKn7MY1DseNvL5vwh/KAiwXpJDYDm59iYAWeYczXkpU2Zuoq
 CmkA0BywUmckwRNoNx7fQFt69fNKifo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=YWQXaP5l
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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



On 9/5/25 2:46 PM, Simon Horman wrote:
> On Wed, Sep 03, 2025 at 03:25:40PM -0700, Jacob Keller wrote:
>>
>>
>> On 9/3/2025 2:43 PM, mheib@redhat.com wrote:
>>> From: Mohammad Heib <mheib@redhat.com>
>>>
>>> Currently the i40e driver enforces its own internally calculated per-VF MAC
>>> filter limit, derived from the number of allocated VFs and available
>>> hardware resources. This limit is not configurable by the administrator,
>>> which makes it difficult to control how many MAC addresses each VF may
>>> use.
>>>
>>> This patch adds support for the new generic devlink runtime parameter
>>> "max_mac_per_vf" which provides administrators with a way to cap the
>>> number of MAC addresses a VF can use:
>>>
>>> - When the parameter is set to 0 (default), the driver continues to use
>>>    its internally calculated limit.
>>>
>>> - When set to a non-zero value, the driver applies this value as a strict
>>>    cap for VFs, overriding the internal calculation.
>>>
>>> Important notes:
>>>
>>> - The configured value is a theoretical maximum. Hardware limits may
>>>    still prevent additional MAC addresses from being added, even if the
>>>    parameter allows it.
>>>
>>> - Since MAC filters are a shared hardware resource across all VFs,
>>>    setting a high value may cause resource contention and starve other
>>>    VFs.
>>>
>>> - This change gives administrators predictable and flexible control over
>>>    VF resource allocation, while still respecting hardware limitations.
>>>
>>> - Previous discussion about this change:
>>>    https://lore.kernel.org/netdev/20250805134042.2604897-2-dhill@redhat.com
>>>    https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.com
>>>
>>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>>> ---
>>
>> This version looks good to me. With or without minor nits relating to
>> rate limiting and adding mac_add_max to the untrusted message:
>>
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Thanks, I'm very pleased to see this one coming together.
Me too :L)
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> index 081a4526a2f0..6e154a8aa474 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>>> @@ -2935,33 +2935,48 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
>>>   		if (!f)
>>>   			++mac_add_cnt;
>>>   	}
>>> -
>>> -	/* If this VF is not privileged, then we can't add more than a limited
>>> -	 * number of addresses.
>>> +	/* Determine the maximum number of MAC addresses this VF may use.
>>> +	 *
>>> +	 * - For untrusted VFs: use a fixed small limit.
>>> +	 *
>>> +	 * - For trusted VFs: limit is calculated by dividing total MAC
>>> +	 *  filter pool across all VFs/ports.
>>>   	 *
>>> -	 * If this VF is trusted, it can use more resources than untrusted.
>>> -	 * However to ensure that every trusted VF has appropriate number of
>>> -	 * resources, divide whole pool of resources per port and then across
>>> -	 * all VFs.
>>> +	 * - User can override this by devlink param "max_mac_per_vf".
>>> +	 *   If set its value is used as a strict cap for both trusted and
>>> +	 *   untrusted VFs.
>>> +	 *   Note:
>>> +	 *    even when overridden, this is a theoretical maximum; hardware
>>> +	 *    may reject additional MACs if the absolute HW limit is reached.
>>>   	 */
>>
>> Good. I think this is better and allows users to also increase limit for
>> untrusted VFs without requiring them to become fully "trusted" with the
>> all-or-nothing approach. Its more flexible in that regard, and avoids
>> the confusion of the parameter not working because a VF is untrusted.
> 
> +1
> 
>>>   	if (!vf_trusted)
>>>   		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
>>>   	else
>>>   		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
>>>   
>>> +	if (pf->max_mac_per_vf > 0)
>>> +		mac_add_max = pf->max_mac_per_vf;
>>> +
>>
>> Nice, a clean way to edit the maximum without needing too much special
>> casing.
>>
>>>   	/* VF can replace all its filters in one step, in this case mac_add_max
>>>   	 * will be added as active and another mac_add_max will be in
>>>   	 * a to-be-removed state. Account for that.
>>>   	 */
>>>   	if ((i40e_count_active_filters(vsi) + mac_add_cnt) > mac_add_max ||
>>>   	    (i40e_count_all_filters(vsi) + mac_add_cnt) > 2 * mac_add_max) {
>>> +		if (pf->max_mac_per_vf == mac_add_max && mac_add_max > 0) {
>>> +			dev_err(&pf->pdev->dev,
>>> +				"Cannot add more MAC addresses: VF reached its maximum allowed limit (%d)\n",
>>> +				mac_add_max);
>>> +				return -EPERM;
>>> +		}
>>
>> Good, having the specific error message will aid system administrators
>> in debugging.
> 
> Also, +1.
> 
>> One thought I had, which isn't a knock on your code as we did the same
>> before.. should these be rate limited to prevent VF spamming MAC filter
>> adds clogging up the dmesg buffer?
>>
>> Given that we didn't do it before, I think its reasonable to not hold
>> this patch up for such a cleanup.
>>
>>>   		if (!vf_trusted) {
>>>   			dev_err(&pf->pdev->dev,
>>>   				"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
>>>   			return -EPERM;
>>>   		} else {
>>
>> We didn't rate limit it before. I am not sure how fast the VF can
>> actually send messages, so I'm not sure if that change would be required.
>>
>> You could optionally also report the mac_add_max for the untrusted
>> message as well, but I think its fine to leave as-is in that case as well.
> 
> I'm not sure either. I'm more used to rate limits in the datapath,
> where network traffic can result in a log.
> 
> I think that if we want to go down the path you suggest then we should
> look at what other logs fall into the same category: generated by VM admin
> actions. And perhaps start by looking in the i40e driver for such cases.
> 
> Just my 2c worth on this one.
> 
>>
>>>   			dev_err(&pf->pdev->dev,
>>> -				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
>>> +				"Cannot add more MAC addresses: trusted VF reached its maximum allowed limit (%d)\n",
>>> +				mac_add_max);
>>>   			return -EPERM;
>>>   		}
>>>   	}
>>
> 
> 
> 

Thank you, Jacob, Simon, and Aleksandr, for reviewing this. I really 
appreciate your time.

