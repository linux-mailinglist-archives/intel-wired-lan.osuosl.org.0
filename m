Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD058470B2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 13:55:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66FEF436F1;
	Fri,  2 Feb 2024 12:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66FEF436F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706878513;
	bh=eR/dFc0FSIzqoTvjBxZEJZ91ap+psJ88vvlb+kp86+8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n17UnL6a4PkYOHXZaCqXJ8AGTeg59EWo2QbsEtyDWVKUt6zsKk/HeiJF6lB2Y/c/e
	 dhI0BW1Et2E+EANUIOrtQfmfk+PLrt0Ltt0KQWa/oavTGVXoZDb3snMqSto31ZTEjJ
	 dg1pKXebKBUHemb86/BrlefFmiC7PcMUVC245xFe2eFSSF1ltstaYRIF/JvxVEFtsr
	 H3sBxl4Qg7/rnEje1EJN1Rz6UNLvyvfu/ycTdW1FSNLMS61A86/Expgqyx5GXvq77c
	 MIgH+7XrGC0igtVts3Tf+yp4taynWWj7ESdX4a0hwjk3uffUHyOR4RhIOeDTMcpAyQ
	 ijbGk5TmTO+bA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P1gm4ZTFgOl6; Fri,  2 Feb 2024 12:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12A6F436E2;
	Fri,  2 Feb 2024 12:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12A6F436E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76C241BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E305415D6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:55:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E305415D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LIfiqiYq3QFv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 12:55:05 +0000 (UTC)
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F20AC415A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F20AC415A4
Received: by mail-wr1-x444.google.com with SMTP id
 ffacd0b85a97d-33b0ecb1965so1150374f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Feb 2024 04:55:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706878501; x=1707483301;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eR/dFc0FSIzqoTvjBxZEJZ91ap+psJ88vvlb+kp86+8=;
 b=WGXZDJsTD9oV8C+y57h0atgYzL8rWDE21qXRrXizpOiZvNHeELUinQ53s2hwoGHYOc
 QZoe+k1m4dsLc5AQxvQWCPoE2/Wp72N30RvUPn1cJspznruvaGZ6KXErgnZr3q4QlyAO
 Js8mzhpR8sMrLW79JESRWXLd9UIoP2YbLoyWUJx8QrMumhT+m3ak/Ofw0UjDZ7GfAdtr
 5mTDGZyy76cfp9yUgPydRHIhXUMFAK8FxdSbEPnwLt+2g76Q9kjvn2wYYYOKI5OMkOSd
 W4tKKOw6sq197PH5P98JCOBEx2WiYZrkw0y1OlKN6s61bsAm9kPlsH+3NE3cuKdHAz91
 N9ew==
X-Gm-Message-State: AOJu0YwQUXQlCJATxQNfz7ceFOm+cyHJD65BcYrYGMGUiCh0SVQBUV6A
 IHEDvGujDqJ7oTA4WFM0ai21TvSvjuIPZdGfc0KoUHYdTMW8b/kT+mZm7+U7ClQ=
X-Google-Smtp-Source: AGHT+IE/2FdigyWjZNKrXHq/LWQW6xjNLjO9qfOBbCTabr7EeD/WYvGIL4H0Ua2h2egOGCXPHz5pYQ==
X-Received: by 2002:a5d:64ee:0:b0:33b:17c9:ef7e with SMTP id
 g14-20020a5d64ee000000b0033b17c9ef7emr4080836wri.42.1706878501337; 
 Fri, 02 Feb 2024 04:55:01 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCVQjK5Ya2zy2kPx6E2cfyv4OBZqXUiiEOO7NM1TgE+ats5pGqS88/qcyJZHZi5uWRs5gmNoSYd3lSAnDBVO6XMO5pTV1murivHBUG5SBkOZ2zUUfcaHUylAcfHOTbg7D3l7wa6m1ygdP8GC+9KWGyeKdrxCT12Y41HJfhRGXJYeyafffraHw9AeqY8CVK97PI6vDbGtn+lsaIZdy4mT0oAORbcNf3OFOCz8p3mx5lrRvuGWJTtoI8RE0dJLm0brgJE9uvReP1EG/uU3GRX1ssUtAL4cndp7FvhOgBvTLMVtqFOAUIkbmFCPxA==
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 n4-20020a5d6604000000b00337d6f0013esm1860901wru.107.2024.02.02.04.55.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Feb 2024 04:55:00 -0800 (PST)
Date: Fri, 2 Feb 2024 13:54:57 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZbzmIbKG34AvMF8J@nanopsycho>
References: <20240131115823.541317-1-mschmidt@redhat.com>
 <Zbo6aIJMckCdObs1@nanopsycho>
 <8c35a3f0-26a2-4bdd-afe1-dcd11fb67405@intel.com>
 <48ce5a45-4d95-4d12-83ef-ee7d15bb9773@redhat.com>
 <f58984ba-08d4-4f6c-a4ea-0f3976a3f426@intel.com>
 <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <15af160b-54b1-4f27-ad72-01fc27601f69@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1706878501; x=1707483301;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=eR/dFc0FSIzqoTvjBxZEJZ91ap+psJ88vvlb+kp86+8=;
 b=SHey8rEbtvRVpVU3VPyhvsbE1eC6qZyXo0Vva5pAIqhqYOKh7pSswoYETOWhbZYd1T
 RBcWE32CeMkJuBw4DvhzAl4jdbWz8k4BBq+HRaX3mpEFsUBV+WBSuze5HKmefjDtDk7x
 68Ka2PCCZpn8dIpuP0XHYkPWAmFo53oDQKxEJtm7CFCY2iQlKLO1PQ9eWDttOyh5bef4
 9iR0abi9gDnk+DbgZLwlkurc1Pc85J8ZbUE2wi9/Rt1i1lzwJfpZVHPM96D1EdxnxKsH
 NFv9Ibn21KqikWY4rVOG30O80G7SSVon7fqDFEIEZcHn6SVDKjkcM9ClBTH2pyQeEfPL
 ujBQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=SHey8rEb
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
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Feb 02, 2024 at 01:40:18PM CET, aleksander.lobakin@intel.com wrote:
>From: Alexander Lobakin <aleksander.lobakin@intel.com>
>Date: Fri, 2 Feb 2024 13:39:28 +0100
>
>> From: Michal Schmidt <mschmidt@redhat.com>
>> Date: Thu, 1 Feb 2024 19:40:17 +0100
>> 
>>> On 1/31/24 17:59, Alexander Lobakin wrote:
>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>> Date: Wed, 31 Jan 2024 13:17:44 +0100
>>>>
>>>>> Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>> index 2a25323105e5..d4848f6fe919 100644
>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>>>>>> @@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw
>>>>>> *hw, u16 *rid,
>>>>>>     new_rcp->content.act_ctrl_fwd_priority = prio;
>>>>>>     new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
>>>>>>     new_rcp->recipe_indx = *rid;
>>>>>> -    bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>>>>>> -            ICE_MAX_NUM_RECIPES);
>>>>>> -    set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>>>>>> +    put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);
>>>>>
>>>>> Looks like there might be another incorrect bitmap usage for this in
>>>>> ice_add_sw_recipe(). Care to fix it there as well?
>>>>
>>>> Those are already fixed in one switchdev series and will be sent to IWL
>>>> soon.
>>>> I believe this patch would also make no sense after it's sent.
>>>
>>> Hi Alexander,
>>> When will the series be sent?
>>> The bug causes a kernel panic. Will the series target net.git?
>> 
>> The global fix is here: [0]
>> It's targeting net-next.
>> 
>> I don't know what the best way here would be. Target net instead or pick
>> your fix to net and then fix it properly in net-next?
>
>Sorry, forgot to paste the link :clownface:
>
>[0]
>https://lore.kernel.org/intel-wired-lan/20240130025146.30265-2-steven.zou@intel.com

Just put this into -net, no? I don't see why not.

>
>Thanks,
>Olek
