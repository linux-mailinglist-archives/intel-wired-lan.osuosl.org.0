Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C71CE56AB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Dec 2025 20:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13E8880D4E;
	Sun, 28 Dec 2025 19:44:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_IjrUi-UB3g; Sun, 28 Dec 2025 19:44:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C6A380D5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766951094;
	bh=yHsrmxgkdvXfz64zvqevNeUhUbHKKa3CCMwcJMI2OXc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0KUsmOxAJ+Fb/Y9611eyImHkmzjF12OYImqnGmcXRLg5R+FarxXORUyBPUsxv+aYf
	 VmUCwueDTZAK+QHvZQ56MeTeqTgfch7SM+cN/uAJm2gmJWDA168b2uMVyVXc+MqIOU
	 ldWCclx8LNOhZkT7SpMuWxWl9Vi7JPcAPM5/rSBWio0dvzDNa3lk/lJ90kgG0XGvTe
	 +FkCqbTx3mcRp3c2f+UzPw4LOplHw2m7vLaMkCXVRGTihxR4/To5Kq+v6cRCsRZ47V
	 vlnZrwaKC2cEfvasre3KqaQkHP9gvB9RWrBVd+MVSXCusum0OSrcddbI770vceBVsi
	 5Z5m2XV2BHfRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C6A380D5D;
	Sun, 28 Dec 2025 19:44:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 44AF0D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36FDC404A1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:44:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a6TN6iUxzrQf for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Dec 2025 19:44:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4D2F04047E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D2F04047E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4D2F04047E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 19:44:51 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-106-M9DqY9ZnNPykrvnSVCGUiw-1; Sun, 28 Dec 2025 14:44:48 -0500
X-MC-Unique: M9DqY9ZnNPykrvnSVCGUiw-1
X-Mimecast-MFC-AGG-ID: M9DqY9ZnNPykrvnSVCGUiw_1766951087
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-430f527f5easo5201199f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Dec 2025 11:44:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766951087; x=1767555887;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yHsrmxgkdvXfz64zvqevNeUhUbHKKa3CCMwcJMI2OXc=;
 b=IltgP+PbXH+6AxRLbrn6Ckqo6EcuItwLDE6XvgC8RyxNeF6hw7plfP/E1AmrwNHDTP
 u4xJ8GoEfT4a6uLSyuHqJ+A2TSlOYHzLgvFW8Bw/JhH2BBY1cjLJO6YkI4QqURBAnUhi
 LRTyc38iSxGdhHNG4eZIy1LpG207STht04Fx20duqTh3B+My/QexgICes1iwUMqcJtmf
 RvcXIxHfzaCXcN/wJ2zdUEwO6Zdf0QLgPgc/g3B4X+zTdwICECBZH3Gh0A2ociTSWxo6
 STjJZgVRH3/rCAGKv6ygihrdOeG8TGKXNS+rBm9iaaiVC+Dn4tWG78bXrj5w6et0op11
 WLZg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVVyJ9QBqvcBGO02BDE8h2vk6m4kiOBEz3MXfPQDX6clu25ut3Iz6qTJjDf+pywq1XYKmO+kaKMIVOCkexGwgA=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywvy18J7IP4eWJT+cHLj6kk8/hjp+a5fKs1mYm+x7k4QWMM6XwD
 ZBY8lkleET2an2GeiyfgEzBGZRPZukjcR2AhUwKyYeDIuTHVArPYIOqVhPXHTKuOsD0BBzUEUih
 /uh8poeavGin9ZS49Rm6qjOR7eW4LOCWoaJRX8WfcroW9OkcmJtqDOck3yv+HyfaDytceYD0=
X-Gm-Gg: AY/fxX7Kzjw7XirxypbsTW/JPCQqxN3MtaxQNFFUke14iHDml4DDWvPJFWHK9yyoHWh
 /J0Uo8aTK9RG8vVGoEGBUCSFvQm+ssd4WsQLwCmWMGLhcH2urFmX2X0rC8V24hCsHjxrXFmqrkl
 0Sa0uDF2TPtZfBqmNOkyueAIrd5pqZFCH/1PtTLt9V5HwZlkYEEHWUf4lQ2zhekTPAKNj9DBVAi
 xwCvm9WhyGIJ6mH6G7U2Vrbm8bNCAdTFr2gwqfvJXVvZeP4jqlvhLIMd8To0v6E7Hhn+nFSc3IX
 M0+k6v8JR7NWpN2Wlka9ph2X0hPIGS9hjsRxNLNcL6VFxfODx4O6YIOIyewE7mJ8DJevdeXM3lI
 Nw0JHoWuMlRg41eGaNcpD
X-Received: by 2002:adf:fcd0:0:b0:432:86de:f396 with SMTP id
 ffacd0b85a97d-43286def40emr6030096f8f.26.1766951087199; 
 Sun, 28 Dec 2025 11:44:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJHsOScrFDpuFJ7zgwI9WOpAUYpy9EQp+yZlv92scUUdzEcD5wYEeDDQ2Cr10hpHegUM7ktQ==
X-Received: by 2002:adf:fcd0:0:b0:432:86de:f396 with SMTP id
 ffacd0b85a97d-43286def40emr6030086f8f.26.1766951086826; 
 Sun, 28 Dec 2025 11:44:46 -0800 (PST)
Received: from [192.168.68.125] ([216.128.14.64])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4324ea1af20sm55081905f8f.2.2025.12.28.11.44.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 28 Dec 2025 11:44:45 -0800 (PST)
Message-ID: <ba98c377-395c-456f-afb4-c0cb50f504cf@redhat.com>
Date: Sun, 28 Dec 2025 21:44:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, davem@davemloft.net, aduyck@mirantis.com,
 kuba@kernel.org, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251218121322.154014-1-mheib@redhat.com>
 <e8aa1cf8-f42e-4329-8bd8-0f2c3fedde55@redhat.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <e8aa1cf8-f42e-4329-8bd8-0f2c3fedde55@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: t7-VTJ4NerI05IXujaVINYjTXHdc4Lc9G5wzTJ8n2dw_1766951087
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1766951090;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yHsrmxgkdvXfz64zvqevNeUhUbHKKa3CCMwcJMI2OXc=;
 b=i7xc3sV1deE/x7/yKgFM6+5mUcsFz5cmRtAtuNbsgxdbkZdglWfBWSYilJXiiyFJBtgqG3
 cRghbH5UYTe87EKx9TzMTlzyPI3YHFRGdMYB5DjY5d/y0BE6RRsG/eeTl9d3JEIQS3sGN5
 cSjwwgJRoq+XP40Or89/AQq4fs1WCcM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=i7xc3sV1
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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

HI Paolo,
Thank you for the review.

On 12/28/25 11:29 AM, Paolo Abeni wrote:
> On 12/18/25 1:13 PM, mheib@redhat.com wrote:
>> From: Mohammad Heib <mheib@redhat.com>
>>
>> The i40e driver calls udp_tunnel_get_rx_info() during i40e_open().
>> This is redundant because UDP tunnel RX offload state is preserved
>> across device down/up cycles. The udp_tunnel core handles
>> synchronization automatically when required.
>>
>> Furthermore, recent changes in the udp_tunnel infrastructure require
>> querying RX info while holding the udp_tunnel lock. Calling it
>> directly from the ndo_open path violates this requirement,
>> triggering the following lockdep warning:
>>
>>    Call Trace:
>>     <TASK>
>>     ? __udp_tunnel_nic_assert_locked+0x39/0x40 [udp_tunnel]
>>     i40e_open+0x135/0x14f [i40e]
>>     __dev_open+0x121/0x2e0
>>     __dev_change_flags+0x227/0x270
>>     dev_change_flags+0x3d/0xb0
>>     devinet_ioctl+0x56f/0x860
>>     sock_do_ioctl+0x7b/0x130
>>     __x64_sys_ioctl+0x91/0xd0
>>     do_syscall_64+0x90/0x170
>>     ...
>>     </TASK>
>>
>> Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
>> i40e_open() resolve the locking violation.
>>
>> Fixes: 06a5f7f167c5 ("i40e: Move all UDP port notifiers to single function")
>> Signed-off-by: Mohammad Heib <mheib@redhat.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> @Tony: I assume you prefer to take this series into your tree first.
> 
> @Mohammad: I think we don't need to packport this path in old kernels; I
> guess a better fixes tag should point to the recent udp_tunnel
> infrastructure changes.

indeed we don't need this change in the old versions.
I updated the fixes tag to:
   - Fixes: 1ead7501094c ("udp_tunnel: remove rtnl_lock dependency").
This better reflects the change that exposed the problem, even though 
the fix itself is in the driver.


> 
> Thanks,
> 
> Paolo
> 
Thanks,

