Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E197CB61
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 17:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72CC42886;
	Thu, 19 Sep 2024 15:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wYCoGFKkyELo; Thu, 19 Sep 2024 15:11:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE284284C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726758685;
	bh=VJEclnwidI9173RuzovtuDHoL7BhkIW2RQWXN6ibzdE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8W+i5QuvsgGGrVRI4F5r6TcEhmkvqnDR3/Y5GcLwMgfI5PPJCqK7e2Mqk+vEeDb8X
	 DLOrFzh8SMXnVi9hbhBWc0++Pcf/Mv4QrxsE94ironnBtgfuKjqNRCULK3VPYfnii2
	 biPZCUj0/NBnVAdrpyGqutlEuEPX98GzuFWzaKwlxs69z8mMZYF/msNTvurfoeR6Sh
	 4acahTgHUtXMzpNfvhOib5kZR6NMqxwd/RdCCkH6b70EbRwCXdVVmTngIFhqymWpbv
	 MiFasc88GpWpdd0s0dtHmnVqrUh2Ev3sFqMj0Wp2f2cBMA1uDUrjkzOIq3ajscCS6Y
	 7uxjyOHgyNqvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBE284284C;
	Thu, 19 Sep 2024 15:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E03311BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 15:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88F56801F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 15:11:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nB7EoLBjDEPg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 15:11:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B97D8849F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B97D8849F7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B97D8849F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 15:11:22 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-466-TlIr7GiyMQSZWgH7bhIRnA-1; Thu, 19 Sep 2024 11:11:18 -0400
X-MC-Unique: TlIr7GiyMQSZWgH7bhIRnA-1
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-42caca7215dso6067025e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 08:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726758677; x=1727363477;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VJEclnwidI9173RuzovtuDHoL7BhkIW2RQWXN6ibzdE=;
 b=ec5/k8oc0glQkStAdNF5mzSzHHA3VIAbl9Gd21NQTx6ANpvVxGdR+qcikGmvbm8vNE
 jJ7t5drLp4tq1MuTFE0cleS9WTzTc4iakRquhq8CmLBvlb92q2A7Q0OvSkKi+JI+nd0G
 ZX2sVf7JiSaWnVTqIoM7huD+bNyM3w9q24S0Frp1v8VMIua1e1nJEsW/f1FTaIO6HYxO
 inx4lUD2FIiif01rFDFzdeuqQi4LLT/uUVrmpAZIXAXGvogoBDb8SoOWCYWzP+Z75dD6
 +g3tj87ovWmyBHneSjzusI8cpMdP5GWspp9T2nDtdC2pllJfnDsfdfPo73xLlYG0HPem
 c+pQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUv++Zdy1hN2qa6zYGXddLutjV9q78aHlo7akh0kyiH2NKB4wf/rV/1oekeI1/AMF8S0YSb/69jQK9+qCPu1SE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzZUAVJ10wGrtWORSfDEMUz24wgpFwRbwBq7zeHME1gKI0fKdry
 0yO2MdLG/YJQoQGj3AQ3MJph1CQyOKHrompmvaCTq6WJ/BUGV5+4Ujsn0+4DieoXMqnop4yj6G0
 Rfqv9rdTMjnSYw/wHg7ruMjbp6TGft20cOoVGq/fuX3h3UV8DQVxbqCHp9/GXA/yaaH8=
X-Received: by 2002:a05:600c:1c12:b0:42b:afe3:e9f4 with SMTP id
 5b1f17b1804b1-42cdb4fb823mr208889975e9.3.1726758677460; 
 Thu, 19 Sep 2024 08:11:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHC4cB3CAxVsgvjqszMfytyqacuQqCAf8/XBti3mW5PirHzEZ6nH1BI1O3Oy3ICGcYDpdFQsQ==
X-Received: by 2002:a05:600c:1c12:b0:42b:afe3:e9f4 with SMTP id
 5b1f17b1804b1-42cdb4fb823mr208889645e9.3.1726758677059; 
 Thu, 19 Sep 2024 08:11:17 -0700 (PDT)
Received: from [192.168.88.100] (146-241-67-136.dyn.eolo.it. [146.241.67.136])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42e754a6379sm24114225e9.35.2024.09.19.08.11.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2024 08:11:16 -0700 (PDT)
Message-ID: <29e3378c-5f12-480e-8531-d1afa7d840dd@redhat.com>
Date: Thu, 19 Sep 2024 17:11:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <cover.1725919039.git.pabeni@redhat.com>
 <4ac641b1cb3d0b78de3571e394e4c7d2239714f7.1725919039.git.pabeni@redhat.com>
 <688515d9-9bf2-4939-a3c6-9b22a886dfb9@molgen.mpg.de>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <688515d9-9bf2-4939-a3c6-9b22a886dfb9@molgen.mpg.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726758681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VJEclnwidI9173RuzovtuDHoL7BhkIW2RQWXN6ibzdE=;
 b=NO8k6sJNJabL1KIfJXsm0AEmHLbOVv7D7Rdqe5wIuVx3EtqEAlVk4zfKwzHhua1iKZ4hFw
 D9G3scNye09Y8rraDwMIOxQ1gH2owwACn79t2WjAHeVcbYWZdLt0Az+NjF3iR2VdVkxlP0
 LJQIklf3YaQ3jwOo7F1fjl/1pYon+70=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=NO8k6sJN
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 02/15] netlink: spec: add
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
Cc: Donald Hunter <donald.hunter@gmail.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jakub Kicinski <kuba@kernel.org>, edumazet@google.com,
 Madhu Chittim <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 9/10/24 14:08, Paul Menzel wrote>> +config NET_SHAPER
>> +	bool
> 
> It’d be great if you added a help text/description.
> 
> […]

Thank you for the feedback.

The lack of description here is intentional: we don't want user to 
enable the knob explicitly, only via 'select'.

I'll handle the other comments in the next revision.

Cheers,

Paolo

