Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6273A6E7FCD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 18:41:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C44C8616DF;
	Wed, 19 Apr 2023 16:41:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C44C8616DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681922479;
	bh=MSWcNvzN1+QSz1gMGpIRGJNaL5v4gNEomU60+aN3xYo=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Od4xNVgPDa2TF3vK1YbLTmvz0bNIt1hze5FkIAXxIQDKNPNEb272U2nap1WkA1YKD
	 aNrfBV7Zxny9qfWQ0hXFAP9x7PThPTiGuozMIM0EKTolXY2WNfgN4Ty7W6gdzK6QS/
	 qCsrA5HeWAqDy7gJTrrMdX9u69TjowQ+fEyfViGFUHtBs+EdEl/WtpvJ/GLhFpDe8V
	 gW6eUEL/exBauTuhiI2WN0QirUMqTh2JwgkjkDTr9MSrjSBME5v1MlqoqVOvFJzY1+
	 /Zh17TGKj37d7nwVPUEYfC0IJYiNaogLFozZ7Iruj9u954bGWQDiEB8eroDkmUQQUi
	 uszNse3FP2wpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGZq2BK3OSps; Wed, 19 Apr 2023 16:41:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B82C96058C;
	Wed, 19 Apr 2023 16:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B82C96058C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29AA31C4258
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 16:41:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F415D41FEC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 16:41:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F415D41FEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Paaecg4o8EmK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 16:41:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C34F741FED
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C34F741FED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 16:41:12 +0000 (UTC)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-549-lX9V8zjpOyGhFv7M7xX8UQ-1; Wed, 19 Apr 2023 12:41:10 -0400
X-MC-Unique: lX9V8zjpOyGhFv7M7xX8UQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-5054bd98964so82397a12.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 09:41:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681922469; x=1684514469;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hlv123C+B2XbuevZfH+qzPUIEfiKhtHnPAxff1XZ5EU=;
 b=f8i32JGdxYXW5U+TUiXEdGMMhdsa7oLY8Q8KiYESqxVn3FNIR8alJf9aD2VN8NpILc
 2CGiLRJWmd3bxmZzN76PyNzeN7TrM1NKGHaQtIVyd77VN4rpcMNHJGzG+5OlQFyzskK/
 ftSCdr9aUHzgX+CFv6kk7CTZ31MPUXNIEj++UV+ZcavO3YkyXePuFNKtQOsEJ3LZ6e22
 cgL0w/M6idfxRCQbGXWseMXL+zRH+6ABr+bFMbat0zif+Cfr0UQhPCbdrMdtAa+K7jej
 6ysO1xbX5djBDXaZoafq6A2ka5l60HXXZD6xLNotFWjFzeo1EGiLJ4Czw0EbJVkULoUu
 bLZw==
X-Gm-Message-State: AAQBX9deR86V09Su7d6SoAkRjW4eNuKQA5SgJjoVqPyJZAtVI3iO7XSH
 1BIG4F9ZcbmFoG56bO5CE6RyQA3h/1YXc0X50ITPtEKWJs04j/h9Rcvf2fm4SbWk/oDZXPNsoCJ
 OrVGjy0UnCjGbM9N5/iWOcSz91YskFg==
X-Received: by 2002:aa7:d882:0:b0:506:747f:3bf0 with SMTP id
 u2-20020aa7d882000000b00506747f3bf0mr6496242edq.8.1681922469332; 
 Wed, 19 Apr 2023 09:41:09 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZhK35CXjndGgF5Spba/Mxq6IuaaMO7jT05DPVMg1qXuVeYR2ehgm+jxdc2+5FsBIsBaAX16g==
X-Received: by 2002:aa7:d882:0:b0:506:747f:3bf0 with SMTP id
 u2-20020aa7d882000000b00506747f3bf0mr6496218edq.8.1681922468996; 
 Wed, 19 Apr 2023 09:41:08 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 g3-20020aa7c843000000b005029c47f814sm8170544edt.49.2023.04.19.09.41.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Apr 2023 09:41:08 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <925c8354-f3ba-53fb-3950-ec02d41a12a7@redhat.com>
Date: Wed, 19 Apr 2023 18:41:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Stanislav Fomichev <sdf@google.com>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182466298.616355.2544377890818617459.stgit@firesoul>
 <ZD7HJ3hdDdOSm/lK@google.com>
In-Reply-To: <ZD7HJ3hdDdOSm/lK@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681922471;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hlv123C+B2XbuevZfH+qzPUIEfiKhtHnPAxff1XZ5EU=;
 b=ba43gNVprZwzC1UbM1HAf/gOoYeDJr5AFvnGiimlH7qmMCK5aIGsl7yCq+rChmfdkumc9S
 RRp78pljMV7vwIxjKOnAMMaZb4Z3AFbJTSRyN8PGXtGg+0ZRaEWU/Nm/R/Iiuj6ZastjUu
 DcXsjbDF2RL7E3R+eWBtCE0GNcuEMMY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ba43gNVp
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 5/5] selftests/bpf:
 xdp_hw_metadata track more timestamps
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
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 john.fastabend@gmail.com, ast@kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, edumazet@google.com, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 18/04/2023 18.36, Stanislav Fomichev wrote:
> On 04/18, Jesper Dangaard Brouer wrote:
>> To correlate the hardware RX timestamp with something, add tracking of
>> two software timestamps both clock source CLOCK_TAI (see description in
>> man clock_gettime(2)).
>>
>> XDP metadata is extended with xdp_timestamp for capturing when XDP
>> received the packet. Populated with BPF helper bpf_ktime_get_tai_ns(). I
>> could not find a BPF helper for getting CLOCK_REALTIME, which would have
>> been preferred. In userspace when AF_XDP sees the packet another
>> software timestamp is recorded via clock_gettime() also clock source
>> CLOCK_TAI.
>>
[...]

>> More explanation of the output and how this can be used to identify
>> clock drift for the HW clock can be seen here[1]:
>>
>> [1]https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org
>>
>> Signed-off-by: Jesper Dangaard Brouer<brouer@redhat.com>
> Acked-by: Stanislav Fomichev<sdf@google.com>
> 
>> ---
>>   .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |    4 +-
>>   tools/testing/selftests/bpf/xdp_hw_metadata.c      |   47 ++++++++++++++++++--
>>   tools/testing/selftests/bpf/xdp_metadata.h         |    1
>>   3 files changed, 46 insertions(+), 6 deletions(-)
>>
>> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
>> index e1c787815e44..b2dfd7066c6e 100644
>> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
>> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
>> @@ -77,7 +77,9 @@ int rx(struct xdp_md *ctx)
>>   	}
>>   
>>   	err = bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp);
>> -	if (err)
> [..]
> 
>> +	if (!err)
>> +		meta->xdp_timestamp = bpf_ktime_get_tai_ns();
> nit: why not set it unconditionally?

Because userspace application doesn't use it for anything, when
meta->rx_timestamp is zero.

--Jesper

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
