Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E0684601C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 19:40:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 040F64218F;
	Thu,  1 Feb 2024 18:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 040F64218F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706812831;
	bh=e+bng6XVxC/t11ZZID4vMLTIFN/umfC4M7wqJVe9R1U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=776dtzFye63m4i+dqT9ex+SoHxyZeNDOMGd8Qq7cL6Di3JRM/LPN8olUQlZqhUZ6F
	 rP7Ss2q23RG7NG0iJTYdAfJD6aOvp3B7/7LyI0TADyx8OJuCg1fFGgpkb4ywo5ZGCY
	 266pkRhPBjbcW96s1m1ERTCvLzqUbgDo4W+vBNCDQDhIl18jgJ5+p++2W81HQGM1c9
	 U7O/mgNrPakV9oSsBShe1zB052eVHDUtf4D4V6pTblja71kTlHmAcpf8CYGi9WE8Pj
	 PFBZ5R7PuJGLtOlN8/gWI6nOJn1lVaOnuvKWWhiKdAEG4u6gVsAIXOc/zC5ud09K+p
	 +22n2gkWi1l8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5jmp_rWUoR6; Thu,  1 Feb 2024 18:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14CA742182;
	Thu,  1 Feb 2024 18:40:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14CA742182
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59FD41BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 18:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28269401B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 18:40:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28269401B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsZ_7Zj8c0Aq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 18:40:23 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CC9C401A1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 18:40:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CC9C401A1
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-110-3B71esQCMO6JeHbOQx3-0Q-1; Thu, 01 Feb 2024 13:40:20 -0500
X-MC-Unique: 3B71esQCMO6JeHbOQx3-0Q-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a365b809240so72537466b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Feb 2024 10:40:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706812819; x=1707417619;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e+bng6XVxC/t11ZZID4vMLTIFN/umfC4M7wqJVe9R1U=;
 b=fbkEAN83dLS8RRF5coF49EWM78p1ydUxzYt/4xKuN4hDLa63QL0SWsdkAFEFZkjvl+
 vzDQRLWDzsgynaO65c/I6T6g9LWg8Gv4/H9v5k3U995QOqwGs7Rve3nBhPOm7TikbA90
 7m0hkXPutTsMnLKXmON2ZwoZNxPNwnXgqiA6xwG+PyYn0S6mUM6teE/tZux1f4HRM5QY
 CmTCxH4/sA61beWSJzDI5CIEZIsGryesdfAuigBQbnUU9aYqT6oZ0xvt9qYMxhnrfLeT
 SJ4LJ+rz9o4T7rX4fx+nnAaN9PLDSr2qVnF9ewOnVKs7VMPRoorSlVrJF2jeNu/R33eD
 m0Ig==
X-Gm-Message-State: AOJu0YwWbh89YwkS9wF14X4kltmmA7qAbWQEWNcHzGknOpAAt8zwRkf8
 vbVMwOunRaEhS4R5HOHct/yHJtyYXOeh5oDdnzqz2NQunn4Grr8Vui/dbUJ8FaBf+PhmoclJs6x
 OdiJDnt/qrX97U6M2U21ow7nR/uL9jVbWg86cAqLDhqijtmbQTHFk0Ncgf5tQOEir5fw=
X-Received: by 2002:a17:906:19d0:b0:a36:71c1:1244 with SMTP id
 h16-20020a17090619d000b00a3671c11244mr4565214ejd.37.1706812819472; 
 Thu, 01 Feb 2024 10:40:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtavPwgfasui9zwW/bxID6sE4aGs2F4byGvh+XKGlKGEYKhoA4nEg3A+zAUHgqKpkQBqYDHg==
X-Received: by 2002:a17:906:19d0:b0:a36:71c1:1244 with SMTP id
 h16-20020a17090619d000b00a3671c11244mr4565200ejd.37.1706812819182; 
 Thu, 01 Feb 2024 10:40:19 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCX+Iu01ep0DjiTWVqQ4kQbq/oX+PQEcqNpfcQoJSe3sblPcoDMSvHROZIpLT2JUf2YAsc4XSmnvXqVPzNwaYnGg4f3u/22WJ3utFqtQ5w9HiIIOfsXZfIEQQFpqFCeAZEITXjOAnSBHwHaHv5aoDDSSDuTqkk2Ey5Eo8m/LzaNdSIwyT9DCC7yWAy5t6M0MBEKO/8AriiWlECnhMDJHIf1pK+k23jMyUSV7WoeErjDYCj4y8tuAcUaQfzhSWzCWZvOkIlyoBJ7YX4/XKpQ=
Received: from [192.168.1.227] (109-81-83-128.rct.o2.cz. [109.81.83.128])
 by smtp.gmail.com with ESMTPSA id
 lj25-20020a170906f9d900b00a35a3e2b90asm51130ejb.149.2024.02.01.10.40.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Feb 2024 10:40:18 -0800 (PST)
Message-ID: <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
Date: Thu, 1 Feb 2024 19:40:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jiri Pirko <jiri@resnulli.us>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1706812821;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e+bng6XVxC/t11ZZID4vMLTIFN/umfC4M7wqJVe9R1U=;
 b=FE1tXchwOS2TgHKQeILwW3Nn9JM3ngADKPZOcAXFsfCGV/d7+cB/8dctDecyA2WumdJhbf
 ZPyldgNN9Kb+7IlxUDCN+AD91Z4i8tQAtVkLIQETTNDWZ+UYxwCgpMitoRycEFNDjePmBB
 mSXtDVz5L2bE2T6CEIkPRjwuedz6A7M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FE1tXchw
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Daniel Machon <daniel.machon@microchip.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Dave Ertman <david.m.ertman@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/31/24 17:59, Alexander Lobakin wrote:
> From: Jiri Pirko <jiri@resnulli.us>
> Date: Wed, 31 Jan 2024 13:17:44 +0100
> 
>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
>>> index 2a25323105e5..d4848f6fe919 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
>>> 	new_rcp->content.act_ctrl_fwd_priority = prio;
>>> 	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>> 	new_rcp->recipe_indx = *rid;
>>> -	bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>> -		    ICE_MAX_NUM_RECIPES);
>>> -	set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>> +	put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>
>> Looks like there might be another incorrect bitmap usage for this in
>> ice_add_sw_recipe(). Care to fix it there as well?
> 
> Those are already fixed in one switchdev series and will be sent to IWL
> soon.
> I believe this patch would also make no sense after it's sent.

Hi Alexander,
When will the series be sent?
The bug causes a kernel panic. Will the series target net.git?
Michal

