Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB5F699894
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 16:18:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A8916123E;
	Thu, 16 Feb 2023 15:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A8916123E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676560679;
	bh=O53QFPwf//5Ua+wXAT+tt1A2wGfdGG1+FfrX/s6wyf4=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eK8DTGyehFdL4UY//EfPYNPliMik+a/kBBF0N+3CduLm7pjkNVu2VApnfOkSoKMdS
	 Roi404/Bd96zFBVWC+LNgpD5sphYoZBiP55xki6nRYP4+Uj7lDpsLKXAuGe3flMb70
	 uF1FjV97nbPq4GmevPQWMa/X1c9MU7hyBvIVRlz6ISvafAavlDAStdhnv2qClIzQ9a
	 i5LfO8mP7zOsCzkgpu6oaafyxxZOV7wvgFGK3Hyq/AHCqhJ7EUzgnDsAdk8qFpdWrj
	 J/yC2SPkXLSr+dao+BIyDpJlMiVZilXrmXxeZc4V15iO+KV1HlIa+mF+yOV4et/d2y
	 mSFYDGznJgfOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z95Ih8lpiLsk; Thu, 16 Feb 2023 15:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53B2961226;
	Thu, 16 Feb 2023 15:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53B2961226
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 415B71BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 15:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 187D481E35
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 15:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 187D481E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRsPcyeV_XPg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 15:17:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3B3C81971
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3B3C81971
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 15:17:51 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-39-M39SSNbJM2WcJj1Y95eqwA-1; Thu, 16 Feb 2023 10:17:49 -0500
X-MC-Unique: M39SSNbJM2WcJj1Y95eqwA-1
Received: by mail-ed1-f69.google.com with SMTP id
 h10-20020a056402280a00b004acc6cf6322so1926943ede.18
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 07:17:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:subject:cc:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Hu0NDPUgPtJQPv1XAu2IlR0R1Izce8nrz7t5aM+xvQk=;
 b=kgdGIDtvj3oJi9cWw0zaAPpQbppSyD3o5ssiUe4hcn/9ix33Q+YEMcY3/xcMNlhufq
 l2WkDwFwJhwAFs9I03dqwQCn80sr+maJiZnlhfNnmAwsbTNWvYHsJWkpDwEEKBf/xPf9
 F1Y+mpYLIa2alK89gHIZ+QYXJaSM6BqzOua1ZdD/eHn1fSrq5i8TBvgy+iLVGasBWhzD
 bpqOvwHxVBWzCU9ChfjE/7VJzi4k1ZgWtC8U4JTaI1RdKf6o/TBt8olsnM4ipz42FNvO
 WGTwka7uMx7fpIDjQccbVc38gMz6takHpjnmo3mOuzUdUUkklww4E8NO1Xc1PcMP0PmJ
 tklg==
X-Gm-Message-State: AO0yUKUp6ygCpCsAFsMzQa0DYbVtZJr/XW4xje8gqXqsP/Fee664lkgj
 zdUHlgo6HO3VF9wvsXi5QJ5WxvuiBY/ttKiMW2fMJnfEHw0pR6aQq+oTgCf4dcAfc8hOEVe6sDM
 SB+n1hDu2eLRetJK6yAp4Iws4vZ1zmg==
X-Received: by 2002:aa7:cfc6:0:b0:4ab:2503:403a with SMTP id
 r6-20020aa7cfc6000000b004ab2503403amr5969374edy.34.1676560668571; 
 Thu, 16 Feb 2023 07:17:48 -0800 (PST)
X-Google-Smtp-Source: AK7set/e0ygiKMDvoNKR1sy40kN4i/T2Q1Ay4lVRellixuesMpm665RS/+dBn5HBdKLkS/bSjZzPIQ==
X-Received: by 2002:aa7:cfc6:0:b0:4ab:2503:403a with SMTP id
 r6-20020aa7cfc6000000b004ab2503403amr5969337edy.34.1676560668263; 
 Thu, 16 Feb 2023 07:17:48 -0800 (PST)
Received: from [192.168.42.100] (nat-cgn9-185-107-15-52.static.kviknet.net.
 [185.107.15.52]) by smtp.gmail.com with ESMTPSA id
 t9-20020a50d709000000b004a249a97d84sm995434edi.23.2023.02.16.07.17.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Feb 2023 07:17:47 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <9a7a44a6-ec0c-e5e9-1c94-ccc0d1755560@redhat.com>
Date: Thu, 16 Feb 2023 16:17:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
 <6a5ded96-2425-ff9b-c1b1-eca1c103164c@molgen.mpg.de>
 <b6143e67-a0f1-a238-f901-448b85281154@intel.com>
In-Reply-To: <b6143e67-a0f1-a238-f901-448b85281154@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1676560670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hu0NDPUgPtJQPv1XAu2IlR0R1Izce8nrz7t5aM+xvQk=;
 b=imSjoBPZi8GH44bbXhpMnMqGs3hRUIPHFwVtsPhPI1p+OZld+9IfqwQIfpgq/n5AXIdSo0
 pKn00CLo6d2nnSf46eOp31XlTCGdNPtzGyg0+b2D33w1ncAGspeFF6eCUmpy4cotw80UJC
 P41uDbaF9jKWUhOF7bG6fj1kd539NpQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=imSjoBPZ
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next V1] igc:
 enable and fix RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 14/02/2023 16.13, Alexander Lobakin wrote:
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> Date: Tue, 14 Feb 2023 16:00:52 +0100
>>
>> Am 10.02.23 um 16:07 schrieb Jesper Dangaard Brouer:
>>> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
>>> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
>>> hardware wasn't configured to provide RSS hash, thus it made sense to not
>>> enable net_device NETIF_F_RXHASH feature bit.
>>>
[...]
>>
>>> hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
>>> the effect that netstack will do a software based hash calc calling into
>>> flow_dissect, but only when code calls skb_get_hash(), which doesn't
>>> necessary happen for local delivery.
>>
>> Excuse my ignorance, but is that bug visible in practice by users
>> (performance?) or is that fix needed for future work?
> 
> Hash calculation always happens when RPS or RFS is enabled. So having no
> hash in skb before hitting the netstack slows down their performance.
> Also, no hash in skb passed from the driver results in worse NAPI bucket
> distribution when there are more traffic flows than Rx queues / CPUs.
> + Netfilter needs hashes on some configurations.
> 

Thanks Olek for explaining that.

My perf measurements show that the expensive part is that netstack will
call the flow_dissector code, when the hardware RX-hash is missing.

>>
>>> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control
>>> supporting")
>>> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> 
> [...]
> 
> Nice to see that you also care about (not) using short types on the stack :)

As can be seen by godbolt.org exploration[0] I have done, the stack
isn't used for storing the values.

  [0] 
https://github.com/xdp-project/xdp-project/tree/master/areas/hints/godbolt/

I have created three files[2] with C-code that can be compiled via 
https://godbolt.org/.  The C-code contains a comment with the ASM code 
that was generated with -02 with compiler x86-64 gcc 12.2.

The first file[01] corresponds to this patch.

  [01] 
https://github.com/xdp-project/xdp-project/blob/master/areas/hints/godbolt/igc_godbolt01.c
  [G01] https://godbolt.org/z/j79M9aTsn

The second file igc_godbolt02.c [02] have changes in [diff02]

  [02] 
https://github.com/xdp-project/xdp-project/blob/master/areas/hints/godbolt/igc_godbolt02.c
  [G02] https://godbolt.org/z/sErqe4qd5
  [diff02] https://github.com/xdp-project/xdp-project/commit/1f3488a932767

The third file igc_godbolt03.c [03] have changes in [diff03]

  [03] 
https://github.com/xdp-project/xdp-project/blob/master/areas/hints/godbolt/igc_godbolt03.c
  [G03] https://godbolt.org/z/5K3vE1Wsv
  [diff03] https://github.com/xdp-project/xdp-project/commit/aa9298f68705

Summary, the only thing we can save is replacing some movzx
(zero-extend) with mov instructions.

>>
>> [1]: https://notabs.org/coding/smallIntsBigPenalty.htm
> 
> Thanks,
> Olek
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
