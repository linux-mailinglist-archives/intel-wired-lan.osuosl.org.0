Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C969665E8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 17:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05DB481B9D;
	Fri, 30 Aug 2024 15:43:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABH8n1eVAYG6; Fri, 30 Aug 2024 15:43:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D59E81BC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725032599;
	bh=+c2Mcv6lNyf39r9YFvIvhdBG3KouOjQubtsFSPnlX9I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AtTxoYqy/ln/81JQg3pXbLCV3BalIhpoIXff79MUscQ41NbBNLv6PoA/YBDszcaPp
	 oQJ8rF5Tb/QI6AJ7q4kzGLSJ+uT/EaxVefzRbSK0vcRMwCFBdyhzHgi/RNHTUDzqjS
	 9WFDMA4BVbEhuaxC06Zo/rx6P5zUt2K4rdeb9F60vJ8MCqVIkjuGOX4bjzWjLe3iPO
	 xux9ek7CxektXHaQ7/AP9jwJc+amSBRn/2r+l6v5GFr1JouDfbkqgrtfvQ1cLoCVMV
	 FecrUA3DdPVFBdXcm5bNSAWihTaCjFvGgaY2+Sk2g3e1lXSSKAqeR5NMUMQbFBL6gC
	 RZLQdS0k5VdFw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D59E81BC5;
	Fri, 30 Aug 2024 15:43:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E58451BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 15:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0F2F41887
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 15:43:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74bHdIWbTuye for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 15:43:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 941FA41866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 941FA41866
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 941FA41866
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 15:43:15 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-264-HhVE29TKM6OBH7k60ZJI5g-1; Fri, 30 Aug 2024 11:43:13 -0400
X-MC-Unique: HhVE29TKM6OBH7k60ZJI5g-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-42bbd062ac1so6365965e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 08:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725032592; x=1725637392;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+c2Mcv6lNyf39r9YFvIvhdBG3KouOjQubtsFSPnlX9I=;
 b=LYrQCsx3F6c1uZSOXP2WJHEdEj0hEJlwkdhJFiYFYJIPcpUF01ACr6bgRzPLKI2D0J
 WFny4zUOSqqKbgtVmnZ80COv2YJJMOa89SoGxSN6D0JklByXtQL85zIjv+uImPlG5VQO
 2yj6ON46zEP85Si06rv3FhXrioxqz6ujwz94hucvJTgbIiDwDCBHR1CXv/M+9SgPg9Vh
 ccL5pRrJojQbi/CoWHBK91lt8na9g0mZsfpAI9T2eD5OUsJio/tQSDx6vJdPpW7AKS4+
 6/VuA5Qatu7aiDGn7xyDP0cGHjKf4dVErqmnukTrg+mC/FncghwtddJf7GPGqBwxB+z0
 QEdw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWw8X+pXSVvH1qQtlXwDsQI9knNdor/zVVCqA2A3eUZXs2OaSrofoGg9x/tKfEPjLJib70W171kmg+wF2kV1V8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwJOOTX4XwIpPVbh2A54qDe31LOFHRPQ7EMNkvwdsqhE1QWCwHG
 DHEqbEhAa37WAqnmuQzPxUdC/5AcAKKFU8+Tai21ijm4hREEop1VGg2aiz9QxYV49scV13Tb0no
 wYzTEDn5a5n4MiZoKwgV6ZmhjGLvDK8EStFEhyfqiBrOXotLzYHzlidik4UgxODOkV7M=
X-Received: by 2002:a05:600c:3b19:b0:426:6667:5c42 with SMTP id
 5b1f17b1804b1-42bd731edeamr589355e9.4.1725032591779; 
 Fri, 30 Aug 2024 08:43:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+5b3yeLAvMuXMTi/7WNTy+1AtXMKxxPKQ5h/HYeL0n+nIYvZSBg8CKZsoUSTOx3PZMD4tlQ==
X-Received: by 2002:a05:600c:3b19:b0:426:6667:5c42 with SMTP id
 5b1f17b1804b1-42bd731edeamr589165e9.4.1725032591257; 
 Fri, 30 Aug 2024 08:43:11 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:1b53:e610::f71? ([2a0d:3344:1b53:e610::f71])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3749ef812b2sm4387973f8f.75.2024.08.30.08.43.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2024 08:43:10 -0700 (PDT)
Message-ID: <58730142-2064-46cb-bc84-0060ea73c4a0@redhat.com>
Date: Fri, 30 Aug 2024 17:43:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240829182019.105962f6@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725032594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+c2Mcv6lNyf39r9YFvIvhdBG3KouOjQubtsFSPnlX9I=;
 b=YG0tGCU9w+QuoW78yufO7mXVozcYC/zKl8H5v23ogjBq2nCg0WY92YQmPbOWDks+tLSi7b
 e3eMigsrdjgfj9/xsqSGuYd60Eedy0W+yeaY4iRTrPbFS4mUjCXlAOYYQMh4YvQ3JHRbg1
 jdp3xk6xd9I/bNaUEsGZHE7Cb5eQ0Dg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YG0tGCU9
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
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
Cc: Donald Hunter <donald.hunter@gmail.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Please allow me to put a few high level questions together, to both 
underline them as most critical, and keep the thread focused.

On 8/30/24 03:20, Jakub Kicinski wrote:
 > This 'binding' has the same meaning as 'binding' in TCP ZC? :(

I hope we can agree that good naming is difficult. I thought we agreed 
on such naming in the past week’s discussion. The term 'binding' is 
already used in the networking stack in many places to identify 
different things (i.e. device tree, socket, netfilter.. ). The name 
prefix avoids any ambiguity and I think this a good name, but if you 
have any better suggestions, this change should be trivial.

[about per device shaper lock]
 > I've been wondering if we shouldn't move this lock
 > directly into net_device and combine it with the RSS lock.
 > Create a "per-netdev" lock, instead of having multiple disparate
 > mutexes which are hard to allocate?

The above looks like a quite unrelated refactor and one I think it will 
not be worthy. The complexity of locking code in this series is very 
limited, and self-encapsulated. Different locks for different things 
increases scalability. Possibly we will not see much contention on the 
same device, but some years ago we did not think there would be much 
contention on RTNL...

Additionally, if we use a per _network device_ lock, future expansion of 
the core to support devlink objects will be more difficult.

[about separate handle from shaper_info arguments]
 > Wouldn't it be convenient to store the handle in the "info"
 > object? AFAIU the handle is forever for an info, so no risk of it
 > being out of sync…

Was that way a couple of iterations ago. Jiri explicitly asked for the 
separation, I asked for confirmation and nobody objected.

Which if the 2 options is acceptable from both of you?

[about queue limit and channel reconf]
 > we probably want to trim the queue shapers on channel reconfig,
 > then, too? :(

what about exposing to the drivers an helper alike:

	net_shaper_notify_delete(binding, handle);

that tells the core the shaper at the given handle just went away in the 
H/W? The driver will call it in the queue deletion helper, and such 
helper could be later on used more generically, i.e. for vf/devlink port 
deletion.

[about capabilities support]
 > It's not just for introspection, it's also for the core to do
 > error checking.

Actually, in the previous discussions it was never mentioned to use 
capabilities to fully centralize the error checking.

This really looks like another feature, and can easily be added in a 
second time (say, a follow-up series), with no functionality loss.

I (or anybody else) can’t keep adding new features at every iteration. 
At some point we need to draw a line, and we should agree that the scope 
of this activity has already expanded a lot in the past year. I would 
like to draw such a line here.

Thanks,

Paolo

