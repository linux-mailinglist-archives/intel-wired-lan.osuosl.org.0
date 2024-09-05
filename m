Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3848D96DC63
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 16:51:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B9898151E;
	Thu,  5 Sep 2024 14:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ve3kFaY0mT22; Thu,  5 Sep 2024 14:51:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B790281583
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725547870;
	bh=RjDLxH2EfA3DU902vxXAkThT3VRFvWvYfVI7PX/CbZY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TWD0A+I3bOxyvbFKNwAlJ587Wmy2kmzXwPNEozwq2QsHBlLmm2AH6sq7jf+FH3lLQ
	 SUEoew5mkwm6FjW9oo6iQauf2pEJtO2LflmCDzeeYlGdcPXY65ce9trGQj9/MC48LG
	 b2Ju/DUjmyd6tlo7AvkhRvTUdNXiQDHP5ELBt8EL0I7T0mST/QTm45mVa8jqlgTGqh
	 UKHXBYAsfRpSLgz0jsSPGTOh8TfRjDTGTCb/x/vvuK9U4v+6bGS2Fd3C+cwEfxP9et
	 R5AFM9V0wrbTw+53z5dUYQES/v+3WFc4L8Ecs1pSxlzAZGNQUM35jTU0lWjXRvDj/V
	 2iYwsj3+GraNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B790281583;
	Thu,  5 Sep 2024 14:51:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E82251BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 14:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFE496062D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I7q4DAFs0-0M for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 14:51:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 280F2606ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 280F2606ED
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 280F2606ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 14:51:07 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-AdlYQ5r2MIqQvwW83YJWdw-1; Thu, 05 Sep 2024 10:51:05 -0400
X-MC-Unique: AdlYQ5r2MIqQvwW83YJWdw-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42c7b6358a6so7846055e9.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Sep 2024 07:51:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725547864; x=1726152664;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RjDLxH2EfA3DU902vxXAkThT3VRFvWvYfVI7PX/CbZY=;
 b=mJ4nIj1WPu2z78YMqo2WtQ+NKzZjsEdhUurYKq6GhZpiHZVugWbUFooD3Lg59I322c
 PnulBgSHxxKQ1FMVDcgyWH2ekpmDMV58Z9BQEy1wVXkHJAt3XXtrEAbtTSOp4IOiF3Zk
 5VLS3y4CDGZE614pKbwT/I/954kryrJA0Eylr1jJYVEAqlR9xYAxUvawlOCKftTzDhby
 kT5YzAEVoELfmt+uYHZBD0f6WQNmcEUSu2ZXR5IWCn9lI8cecvOPW/CvY7y/Zm1pHXKN
 dn+qW4Ej0iUKIABTWjJRPUCH4xr6P9tlFT6m+ZHuYwgUY5P7Fy2zbPe/TEpU3pyFGphP
 4Nyw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1KbVkzYRdwdVzZjD9gfQWzozLimaHYvDUaHMEJzvp5iNvehu9CbdwRQFWYktfKN9ZTxxBkkoBATKSpMHkPd4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwfpwujKsQBTxLFjFFlK4xlU2PcPsuBaPMxHSm+IsL5Bh7KTF8g
 KcXl4RbfCwCcW1Gemr40YItBpUsdgIjNaOLsriXa2TRQ6cdQ7rTn7P3eAxl1l658apu+0nu4G/3
 PxxruukijTHebbxWOI5NjxUCqZ4CSXP+ZFPoa4qvnkNG3H2y/3GjjEfiFyT30fapFDOs=
X-Received: by 2002:a05:600c:1c0d:b0:426:62df:bdf0 with SMTP id
 5b1f17b1804b1-42c9544efe0mr44829965e9.10.1725547863778; 
 Thu, 05 Sep 2024 07:51:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+mxxSbfA8ZexGHgb2jl/rcVnqHxUEl8BQPmLlO1R2KY8k74Z16bOlqrrkUBsrNQuk+5Wy/A==
X-Received: by 2002:a05:600c:1c0d:b0:426:62df:bdf0 with SMTP id
 5b1f17b1804b1-42c9544efe0mr44829735e9.10.1725547863293; 
 Thu, 05 Sep 2024 07:51:03 -0700 (PDT)
Received: from [192.168.88.27] (146-241-55-250.dyn.eolo.it. [146.241.55.250])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42ba639643esm276394535e9.1.2024.09.05.07.51.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2024 07:51:02 -0700 (PDT)
Message-ID: <d4a8d497-7ec8-4e8b-835e-65cc8b8066b6@redhat.com>
Date: Thu, 5 Sep 2024 16:51:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1725457317.git.pabeni@redhat.com>
 <a0585e78f2da45b79e2220c98e4e478a5640798b.1725457317.git.pabeni@redhat.com>
 <20240904180330.522b07c5@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240904180330.522b07c5@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725547866;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RjDLxH2EfA3DU902vxXAkThT3VRFvWvYfVI7PX/CbZY=;
 b=Oqw5ddVMQHCNoKGX39asWT/qydiyMYh6GHR9m+4XjV+svqTeduJpDBsQ8x5zTFwjsB+XkQ
 kIt2IRuP/1Ez+7F5XNQw2/IYO1oPC6nAiNy2a98qwAQzpXfA0aXSbSI+ihwiW5NirtkDAs
 aqVg8QxMh7mGMBA/hldr3ifXucPPSTg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Oqw5ddVM
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 02/15] netlink: spec: add
 shaper YAML spec
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

oops,

I unintentionally stripped the recipients list, in my previous reply. 
Re-adding all of them. I'm sorry for the duplicates.

On 9/5/24 03:03, Jakub Kicinski wrote:
> On Wed,  4 Sep 2024 15:53:34 +0200 Paolo Abeni wrote:
>> +      -
>> +        name: node
>> +        type: nest
>> +        nested-attributes: node-info
>> +        doc: |
>> +           Describes the node shaper for a @group operation.
>> +           Differently from @leaves and @shaper allow specifying
>> +           the shaper parent handle, too.
> 
> Parent handle is inside node scope? Why are leaves outside and parent
> inside? Both should be at the same scope, preferably main scope.

The group() op receives as arguments, in the main scope:

ifindex
node
leaves

'parent' is a nested attribute for 'node', exactly as 'handle'. We need 
to specify both to identify the 'node' itself (via the 'handle') and to 
specify where in the hierarchy the 'node' will be located (via the 
'parent'). Do I read correctly that you would prefer:

ifindex
node_handle
node_parent
leaves
?

I think the former is more clean/clear.

>> +      -
>> +        name: shaper
>> +        type: nest
>> +        nested-attributes: info
>> +        doc: |
>> +           Describes a single shaper for a @set operation.
> 
> Why does this level of nesting exist? With the exception of ifindex
> all attributes for SET are nested inside this..

Yep, we can drop the nesting level, I think. I used the nesting to be 
have a syntax similar to the with group() operation.

Thanks,

Paolo

