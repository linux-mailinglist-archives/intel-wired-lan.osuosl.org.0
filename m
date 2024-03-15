Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DF587CB2F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 11:13:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CB3360D9D;
	Fri, 15 Mar 2024 10:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PebB2gRHdo5X; Fri, 15 Mar 2024 10:13:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 893AC60AEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710497591;
	bh=dGgBiaNjRI6L5nPHxVT3+aLEqiuZe1OVUV710AgZry4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EKfH56i0+ffwwTRy7h0jDVlGe9NCZK9UY+vBhhacf/zXbUEbSJoVH+CscaR7NdSCx
	 51qG9r1eyUqenv7zm14QQh7qHaVbZjNnFuFl0UF1Y0GO/3KvZQAtWrQKrfZeVUtFlv
	 qw3Gzk8d7Ms98HyIUQmkekuJe4BD0acSbqyXp+ASlulq62XjZGRBbJo6qCzgv5quCJ
	 PQ22cRBFo8Ps56LQmCj5Q7lsH+mZCWOVORXe1sLUJNf9gLqvqNHcygNwNPKBbfuAAB
	 wquFp+/z6+Vm8KksBKyej0vvQo3j7s+Hqw7MXmH+scG/QSdhuXbvU2bTplUuIINWPf
	 vGoFq1oh2bwyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 893AC60AEB;
	Fri, 15 Mar 2024 10:13:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 05E251BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 10:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E4E3E415A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 10:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9P3l3WOVphz3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 10:13:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 545B841576
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 545B841576
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 545B841576
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 10:13:07 +0000 (UTC)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-g56cTPw9OY6g0edlpFZerQ-1; Fri, 15 Mar 2024 06:13:04 -0400
X-MC-Unique: g56cTPw9OY6g0edlpFZerQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a46376dcdcbso298193666b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 03:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710497583; x=1711102383;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dGgBiaNjRI6L5nPHxVT3+aLEqiuZe1OVUV710AgZry4=;
 b=M/epRTxQpjQxrQrE1Njb4n/wk9hRGCeDY3QHnQlnba8Ym1ir+fg0PEQWI0Lfolo/TY
 GpujOIztyLPgRUoxHo2ZVp2s49xGtgqc/hDkcrUJuPUV1vhuEhptenhW41VwZ1HiXTuj
 1hTF1K3C3b8MkPYcDSB3wb/4sFcwUQ6Y7064bXyiNZY8Vk0s8/6otX1efvLj+nZYrUZU
 EeV2huSb7gU3L5bikKHvQMJ2sfesCMgcLK3bA+HxXSs7tvQjOWMyJ2ApdedQR14bCm/B
 FUO7ZnJzu1e50p+0I2M+EsceRf/9WeomROFhhNZiW1igp85bFiok7LE6vos5wn6RgbXB
 /QrA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdy/wiGXs6L0RQgUFefplWn08HTCpkc25kTLdA6s5qnfrDCscMv4o3HOqbUw/6v776cg90ucBGAE99BBzkNQRU0DHkcEe8ARFFT2XQDKNSOA==
X-Gm-Message-State: AOJu0YzX7Qo+779DDIm5W6kERXaOFo9tzjwrvGpOE2F/Z+TjcWmBuVZ/
 2F4EqomowaHqLpIYNz45PaXeISL84tEuLR+BmJ3kG1g64tJyTY9/1SXWHqZbRjAZNSbdskDSNt0
 540s4u/LbkbCkBySxuoD539qAD88gk5CY8VJaFcGxUCsnmX9p3d4BQAm6QfJWQKbzHDx0+NJYzg
 ETY0rVfsQqX04SwYSltasOgR4GqzAAdHzDmjHAVdidkA==
X-Received: by 2002:a17:906:53ce:b0:a46:4918:327 with SMTP id
 p14-20020a17090653ce00b00a4649180327mr3327897ejo.37.1710497583155; 
 Fri, 15 Mar 2024 03:13:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAIkU4uTzpq17jIbC+WboSgKGptA6C8KEBnsOxk42/ys+EaEU6YfyUzDI3e5IfG3SR1vFat6JsW/OzSY9b2rE=
X-Received: by 2002:a17:906:53ce:b0:a46:4918:327 with SMTP id
 p14-20020a17090653ce00b00a4649180327mr3327874ejo.37.1710497582712; Fri, 15
 Mar 2024 03:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240315092042.145669-1-ivecera@redhat.com>
In-Reply-To: <20240315092042.145669-1-ivecera@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 15 Mar 2024 11:12:51 +0100
Message-ID: <CADEbmW1FzbrmZfdptdkLkzZ5KGz4rAy1CWHscZeEeG_jYARCew@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710497586;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dGgBiaNjRI6L5nPHxVT3+aLEqiuZe1OVUV710AgZry4=;
 b=M7SAH1wF5foiz8oZrp9Jh0STfIlyaDLRsoRHJPabQbrjzoUIgSoiX+kjk3/ggSk5QsvFm7
 BHQU3hf+1Hn9oepBk3QfYWEukAsfOOckhYpqdSvd8XzVypLjQ4tH6M/R2rj7jVMwMZCY5Z
 SgpPXsM4WXiFHeBs7ov16uI00zl7qQs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=M7SAH1wF
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Enforce software
 interrupt during busy-poll exit
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
Cc: aleksandr.loktionov@intel.com, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, pawel.chmielewski@intel.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Hugo Ferreira <hferreir@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 15, 2024 at 10:20=E2=80=AFAM Ivan Vecera <ivecera@redhat.com> w=
rote:
> As for ice bug fixed by commit b7306b42beaf ("ice: manage interrupts
> during poll exit") followed by commit 23be7075b318 ("ice: fix software
> generating extra interrupts") I'm seeing the similar issue also with
> i40e driver.
>
> In certain situation when busy-loop is enabled together with adaptive
> coalescing, the driver occasionally misses that there are outstanding
> descriptors to clean when exiting busy poll.
>
> Try to catch the remaining work by triggering a software interrupt
> when exiting busy poll. No extra interrupts will be generated when
> busy polling is not used.
>
> The issue was found when running sockperf ping-pong tcp test with
> adaptive coalescing and busy poll enabled (50 as value busy_pool
> and busy_read sysctl knobs) and results in huge latency spikes
> with more than 100000us.
>
> The fix is inspired from the ice driver and do the following:
> 1) During napi poll exit in case of busy-poll (napo_complete_done()
>    returns false) this is recorded to q_vector that we were in busy
>    loop.
> 2) Extends i40e_buildreg_itr() to be able to add an enforced software
>    interrupt into built value
> 2) In i40e_update_enable_itr() enforces a software interrupt trigger
>    if we are exiting busy poll to catch any pending clean-ups
> 3) Reuses unused 3rd ITR (interrupt throttle) index and set it to
>    20K interrupts per second to limit the number of these sw interrupts.
>
> Test results
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Prior:
> [root@dell-per640-07 net]# sockperf ping-pong -i 10.9.9.1 --tcp -m 1000 -=
-mps=3Dmax -t 120
> sockperf: =3D=3D version #3.10-no.git =3D=3D
> sockperf[CLIENT] send on:sockperf: using recvfrom() to block on socket(s)
>
> [ 0] IP =3D 10.9.9.1        PORT =3D 11111 # TCP
> sockperf: Warmup stage (sending a few dummy messages)...
> sockperf: Starting test...
> sockperf: Test end (interrupted by timer)
> sockperf: Test ended
> sockperf: [Total Run] RunTime=3D119.999 sec; Warm up time=3D400 msec; Sen=
tMessages=3D2438563; ReceivedMessages=3D2438562
> sockperf: =3D=3D=3D=3D=3D=3D=3D=3D=3D Printing statistics for Server No: =
0
> sockperf: [Valid Duration] RunTime=3D119.549 sec; SentMessages=3D2429473;=
 ReceivedMessages=3D2429473
> sockperf: =3D=3D=3D=3D> avg-latency=3D24.571 (std-dev=3D93.297, mean-ad=
=3D4.904, median-ad=3D1.510, siqr=3D1.063, cv=3D3.797, std-error=3D0.060, 9=
9.0% ci=3D[24.417, 24.725])
> sockperf: # dropped messages =3D 0; # duplicated messages =3D 0; # out-of=
-order messages =3D 0
> sockperf: Summary: Latency is 24.571 usec
> sockperf: Total 2429473 observations; each percentile contains 24294.73 o=
bservations
> sockperf: ---> <MAX> observation =3D 103294.331
> sockperf: ---> percentile 99.999 =3D   45.633
> sockperf: ---> percentile 99.990 =3D   37.013
> sockperf: ---> percentile 99.900 =3D   35.910
> sockperf: ---> percentile 99.000 =3D   33.390
> sockperf: ---> percentile 90.000 =3D   28.626
> sockperf: ---> percentile 75.000 =3D   27.741
> sockperf: ---> percentile 50.000 =3D   26.743
> sockperf: ---> percentile 25.000 =3D   25.614
> sockperf: ---> <MIN> observation =3D   12.220
>
> After:
> [root@dell-per640-07 net]# sockperf ping-pong -i 10.9.9.1 --tcp -m 1000 -=
-mps=3Dmax -t 120
> sockperf: =3D=3D version #3.10-no.git =3D=3D
> sockperf[CLIENT] send on:sockperf: using recvfrom() to block on socket(s)
>
> [ 0] IP =3D 10.9.9.1        PORT =3D 11111 # TCP
> sockperf: Warmup stage (sending a few dummy messages)...
> sockperf: Starting test...
> sockperf: Test end (interrupted by timer)
> sockperf: Test ended
> sockperf: [Total Run] RunTime=3D119.999 sec; Warm up time=3D400 msec; Sen=
tMessages=3D2400055; ReceivedMessages=3D2400054
> sockperf: =3D=3D=3D=3D=3D=3D=3D=3D=3D Printing statistics for Server No: =
0
> sockperf: [Valid Duration] RunTime=3D119.549 sec; SentMessages=3D2391186;=
 ReceivedMessages=3D2391186
> sockperf: =3D=3D=3D=3D> avg-latency=3D24.965 (std-dev=3D5.934, mean-ad=3D=
4.642, median-ad=3D1.485, siqr=3D1.067, cv=3D0.238, std-error=3D0.004, 99.0=
% ci=3D[24.955, 24.975])
> sockperf: # dropped messages =3D 0; # duplicated messages =3D 0; # out-of=
-order messages =3D 0
> sockperf: Summary: Latency is 24.965 usec
> sockperf: Total 2391186 observations; each percentile contains 23911.86 o=
bservations
> sockperf: ---> <MAX> observation =3D  195.841
> sockperf: ---> percentile 99.999 =3D   45.026
> sockperf: ---> percentile 99.990 =3D   39.009
> sockperf: ---> percentile 99.900 =3D   35.922
> sockperf: ---> percentile 99.000 =3D   33.482
> sockperf: ---> percentile 90.000 =3D   28.902
> sockperf: ---> percentile 75.000 =3D   27.821
> sockperf: ---> percentile 50.000 =3D   26.860
> sockperf: ---> percentile 25.000 =3D   25.685
> sockperf: ---> <MIN> observation =3D   12.277

Those are the numbers from the original measurements, but I confirmed
with Ivan that he re-tested with v3 and the overall picture was the
same.

> Fixes: 0bcd952feec7 ("ethernet/intel: consolidate NAPI and NAPI exit")
> Reported-by: Hugo Ferreira <hferreir@redhat.com>
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

Yeah.

> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
> Changes since v2
>  - eliminated two writes in hot-path (thx Jesse)

I like this improvement.
Michal

