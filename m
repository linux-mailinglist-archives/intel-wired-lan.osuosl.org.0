Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4639E9A1AC8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 08:39:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1713A810D7;
	Thu, 17 Oct 2024 06:39:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W2i4rXZSOUCG; Thu, 17 Oct 2024 06:39:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F33D9811F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729147191;
	bh=cmS+YML6tDd5SKqiUBzlSgoUwTEs05dCLdlI8MnWiHA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hUbZT0bbL3cItd6y5bUl6xxHGa0jYvmuUngSdNTGaimkYfMVU1NUAeaLPXv4chGT+
	 P7+crTd9u/m8TdbsCh68LA2N03jecxm5ngf5L+aSB8MSSo934NpWLIzvrGA72iMFY5
	 O6twQXnoXjWgu9bsvNTDfgFqqmgaro+DaujwPLLU/PHKvFuToJdJ8JeqdUN5fZ6eiB
	 E1QVr3Bd/gBS5WPVsEBWNQRC69PV5HJA7G0uo50WfMF5XghodcUAcfCQlFg/SKyLPU
	 wDsLWXen1TMGuCSrlponZeSfGxcXKGgVUc/yDEg3JQlMinEb9/8XT1gQbUQeqDBDbB
	 QCdd3zrvO770Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F33D9811F9;
	Thu, 17 Oct 2024 06:39:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2644F27EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0D1A380F0F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:39:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RombkM6hw6HJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2024 06:39:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 13FEA80E08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13FEA80E08
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 13FEA80E08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 06:39:46 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-120-N7IQq0XePtKOIs_xbcFVGA-1; Thu, 17 Oct 2024 02:39:41 -0400
X-MC-Unique: N7IQq0XePtKOIs_xbcFVGA-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-43154a0886bso3601285e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:39:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729147181; x=1729751981;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cmS+YML6tDd5SKqiUBzlSgoUwTEs05dCLdlI8MnWiHA=;
 b=Lqk/sTTlxYdXM8Fd4REabkDse/TOitOmfBN6ZlltiMqofUfV/QMHfJso335RzoHgyu
 M4oSMo69CxYcMlTdcNaLFbvxGJYElClrbXK8VIiGM54bExmNp0MlaN3s8HL3uTA4wl5o
 n9hYwZ41xZulY2NY6covbQLquryLYuMKy8DtyTm8+Ruj+tiERVsfbIK9VObQPlwjDFac
 BfI0OeRFlj143OYoPXPvKzL3bwoPfejHHAdj9ZnOoxTrDRRENI1qDfyKs581/75I9zCf
 tXoEncpBb39w7vS+IJB8n8VDgDraqF1z8IfQZvNNhhJdpunJ/ZIblREzpldUid0XkR7l
 es4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWrFbALvuA6VhGwnISz7lzMFgtf8cphFvt+u8rHmtiMK7AlrebuNSWQeAaSOIpa4cbcRYueR0/hvVxCkMG7b40=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwQLlR1YgknXXDp0HYKpgG8VnpvDKu3iXUeG8WH+HsyrL3+R6Br
 wwpBI/GDcYUAiJRXXJn25+5RH0WZgePFOq6RdEq3vKo/c2i0fxN/9ZBB4hNndknQRdW0mkWAvSs
 E04cmEPYZt7Kxxo9c7QiSvlQFnnU09nE+nad9sHwhwfE22NuvqbvZsbtH94wo9dTNkAk=
X-Received: by 2002:a05:600c:1c1b:b0:431:52f5:f497 with SMTP id
 5b1f17b1804b1-43152f5f8cfmr27374105e9.9.1729147180693; 
 Wed, 16 Oct 2024 23:39:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwrvEWX7N8ltQUpIkS2NLEQQgrE8KQhEh+hsVdum3NNNhiBWkoa0PoR7U1p6OjNMGdgVeKGQ==
X-Received: by 2002:a05:600c:1c1b:b0:431:52f5:f497 with SMTP id
 5b1f17b1804b1-43152f5f8cfmr27373975e9.9.1729147180298; 
 Wed, 16 Oct 2024 23:39:40 -0700 (PDT)
Received: from [192.168.88.248] (146-241-22-245.dyn.eolo.it. [146.241.22.245])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43158c4e2edsm15468835e9.39.2024.10.16.23.39.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2024 23:39:39 -0700 (PDT)
Message-ID: <fee3fe99-14bf-486e-b12e-5088d17a095a@redhat.com>
Date: Thu, 17 Oct 2024 08:39:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Wenjun Wu <wenjun1.wu@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <e45d1c9f17356d431b03b419f60b8b763d2ff768.1729000481.git.pabeni@redhat.com>
 <98b5bef5-d5a8-45d5-8fe8-f9c34eb5ab84@intel.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <98b5bef5-d5a8-45d5-8fe8-f9c34eb5ab84@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1729147185;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cmS+YML6tDd5SKqiUBzlSgoUwTEs05dCLdlI8MnWiHA=;
 b=AfVnVc8+x1pbAFlfw5EHjg5v19ey/0rqHBQcAv2g5DhsiwF8cVG2fybcheZsrSAlnEcpsQ
 alOwY+S5YrEUKoe+jTAnxH4NJSQ/1oUTFUDN1E4QuZtdNHUjKSzmQBk3CQZrBHChLW7In+
 sNxhmCssHeYYPchgrCtmLrw8sVuq690=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AfVnVc8+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] virtchnl: fix m68k build.
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

On 10/17/24 00:49, Jacob Keller wrote:
> On 10/15/2024 6:56 AM, Paolo Abeni wrote:
>> The kernel test robot reported a build failure on m68k in the intel
>> driver due to the recent shapers-related changes.
>>
>> The mentioned arch has funny alignment properties, let's be explicit
>> about the binary layout expectation introducing a padding field.
>>
>> Fixes: 608a5c05c39b ("virtchnl: support queue rate limit and quanta size configuration")
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202410131710.71Wt6LKO-lkp@intel.com/
>> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
>> ---
>>   include/linux/avf/virtchnl.h | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
>> index 223e433c39fe..13a11f3c09b8 100644
>> --- a/include/linux/avf/virtchnl.h
>> +++ b/include/linux/avf/virtchnl.h
>> @@ -1499,6 +1499,7 @@ VIRTCHNL_CHECK_STRUCT_LEN(8, virtchnl_queue_chunk);
>>   
>>   struct virtchnl_quanta_cfg {
>>   	u16 quanta_size;
>> +	u16 pad;
>>   	struct virtchnl_queue_chunk queue_select;
> 
> There's a hidden 2 byte padding because queue_select requires 4-byte
> alignment. We assume this, as the VIRTCHNL_CHECK_STRUCT_LEN for this
> structure is 12 bytes.
> 
> On mk68k, we must not be adding this padding, which results in a 10 byte
> structure, failing the size check for VIRTCHNL_CHECK_STRUCT_LEN,
> resulting in the compilation error?

Exactly!

> Adding the explicit size aligns with the actual expected layout and size
> for this structure, fixing mk68k without affecting the other architectures.
> 
> Ok.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,

Please LMK if you prefer/agree to have this one applied directly on 
net-next, to reduce build issues spawning around ASAP.

Paolo

