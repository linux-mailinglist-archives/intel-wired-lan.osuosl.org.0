Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 858E0479393
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 19:09:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 398F061147;
	Fri, 17 Dec 2021 18:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5P_JnMPrdKb; Fri, 17 Dec 2021 18:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A5C961138;
	Fri, 17 Dec 2021 18:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4466F1BF5D7
 for <intel-wired-lan@osuosl.org>; Fri, 17 Dec 2021 16:17:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3093484B45
 for <intel-wired-lan@osuosl.org>; Fri, 17 Dec 2021 16:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pebdkvDY5tOz for <intel-wired-lan@osuosl.org>;
 Fri, 17 Dec 2021 16:17:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE44D84B43
 for <intel-wired-lan@osuosl.org>; Fri, 17 Dec 2021 16:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639757862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xgS0MLs3G9I8q6KFunD2Y67gfYYtv5Ot3ON1QSu8AM8=;
 b=NiFsTwkw1upScTSr3vWoLnyIIGSCaqIHMS+U0SG4aNDqznkTVEsE7RpFBbgDYNVcXhYCRU
 JE10kO6+1UGaIk4aq78aVMy0vi5P7gSF2Bc0KIAtfXeJ2HAqgdeCbDL+B6HmedchbRISji
 HD428MuiFNF2aqbGxvArmFK0fy1vqww=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-205-_hd2qHCQNIu-Blbnmnk4XQ-1; Fri, 17 Dec 2021 11:17:41 -0500
X-MC-Unique: _hd2qHCQNIu-Blbnmnk4XQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 a26-20020ac8001a000000b002b6596897dcso2885503qtg.19
 for <intel-wired-lan@osuosl.org>; Fri, 17 Dec 2021 08:17:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=xgS0MLs3G9I8q6KFunD2Y67gfYYtv5Ot3ON1QSu8AM8=;
 b=dkZUTDUHG3HQJP5NqwLcSYQerXBIO+tipJMntAt0JmLR123EWXUhTaF4GA23CCuH1W
 Yn4ibEK7JsD2nvQdVTKuG9EP7r0wB+dceHx31t6JdTjCn9+6+VhxLR/Ll9VGw0uKFi/u
 YsXVZo67Qh4c+uHQJXFijyjuxVlzR6OSAtirK8HG37rTtJEuBnas5W9qEhxRFJqaHwSQ
 qttx+P2unR5Y/U/22YPCcaW/QRgpJJzxCRgVDowItUFpLnK2auT9DcIZMyRF/EQQmtU5
 ZoOxlgl2/Zgv3JNHBVZkIRSbaRUtrwt9Ww+qk6rRjgNo4NT96NJkZysPO4NpaOLyZi7U
 bpEQ==
X-Gm-Message-State: AOAM530WtsackBWJu4wgwEfftjWVBbTeYGzAtnNSkkRwTUpFWjzLcidw
 jox1zsAB4O8WTQ89rI51VpcPRlpENZ33T7f2TAiaLgB2VD4g3GqOm+ZjKoXKt3P7cLnlNTXsEGm
 gykB55ErfOS8x/ydm3PcSIg==
X-Received: by 2002:ac8:7d95:: with SMTP id c21mr2996349qtd.433.1639757860492; 
 Fri, 17 Dec 2021 08:17:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzszC169nowF6a/jGtVXTfbXCtLVq2csgrMwaLL5MtGQ4kH42ut7aS7iI8+GR87xRICdrDTBw==
X-Received: by 2002:ac8:7d95:: with SMTP id c21mr2996334qtd.433.1639757860253; 
 Fri, 17 Dec 2021 08:17:40 -0800 (PST)
Received: from [192.168.98.18] ([107.15.110.69])
 by smtp.gmail.com with ESMTPSA id w19sm1013083qkw.49.2021.12.17.08.17.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Dec 2021 08:17:39 -0800 (PST)
Message-ID: <895a4199-4228-04c7-4f60-d782415017f6@redhat.com>
Date: Fri, 17 Dec 2021 11:17:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Michal Schmidt <mschmidt@redhat.com>, karol.kolacinski@intel.com
References: <b0f0513b-2ab6-7703-9b5d-65c6763f4bd5@redhat.com>
 <CADEbmW0Yu2Csd++EZG--S+t2PEveB5PbUrooGdYnpumEqxF5Xg@mail.gmail.com>
From: Jonathan Toppins <jtoppins@redhat.com>
In-Reply-To: <CADEbmW0Yu2Csd++EZG--S+t2PEveB5PbUrooGdYnpumEqxF5Xg@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jtoppins@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Approved-At: Fri, 17 Dec 2021 18:08:54 +0000
Subject: Re: [Intel-wired-lan] [v2,intel-next] ice: Fix E810 PTP reset flow
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
Cc: "Pathi, Pragyansri" <pragyansri.pathi@intel.com>,
 intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/17/21 11:08, Michal Schmidt wrote:
> On Fri, Dec 17, 2021 at 4:31 PM Jonathan Toppins <jtoppins@redhat.com>
> wrote:
> 
>> I am not on the intel wired lan email list so I do not have an email to
>> reply to directly
>>
> 
> Jon,
> please subscribe to it, via this page:
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
>> b/drivers/net/ethernet/intel/ice/ice_main.c
>> index a3ce54a78859..dc1c3d8e7272 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> [...]
>> @@ -6737,6 +6737,9 @@  static void ice_rebuild(struct ice_pf *pf, enum
>> ice_reset_req reset_type)
>>                  goto err_vsi_rebuild;
>>          }
>>
>> +       /* configure PTP timestamping after VSI rebuild */
>> +               ice_ptp_cfg_timestamp(pf, false);
>> +
>>          err = ice_vsi_rebuild_by_type(pf, ICE_VSI_SWITCHDEV_CTRL);
>>          if (err) {
>>                  dev_err(dev, "Switchdev CTRL VSI rebuild failed: %d\n",
>> err);
>>
>> [jtoppins]
>> The indention here looks incorrect and implies the call should be inside
>> an if-statement. Is this placed in the correct location?
>>
>> -Jon
>>
> 
> Also, isn't it strange that the second argument to ice_ptp_cfg_timestamp()
> is always "false" everywhere the function is called?
> 

Yes it is but that was added with upstream commit 77a781155a65 ("ice: 
enable receive hardware timestamping"), I would rather not muddy the 
patch with fixing this too. That should be another patch to remove the 
useless parameter list argument.

-Jon

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
