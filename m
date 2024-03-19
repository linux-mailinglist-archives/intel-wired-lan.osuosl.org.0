Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D2087FB2C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 10:54:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27F8460A5B;
	Tue, 19 Mar 2024 09:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28EcXrJWIWLP; Tue, 19 Mar 2024 09:54:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B14F608EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710842047;
	bh=huubYUDUToyqq9krPzQhPuLvY5vBhK3/v+f/Pk52wRI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UKQk3EOhWaZLpyp5y8+zWdtzZDVZQ/u9F/31e5hYPTl1HMZLMMrk6NkQqH/FLFJmP
	 U6uyKIFUVSRD2U4f8mYynR19nrDUpvVU8drW9Mr1wlFtZJesjQPzQGqHVjiMuXKlrh
	 MBUILV0Wvi4dV5yb+KAqbMIrXQcKdslP3NSqrMO8PgBOwqGCr8e4bSl0lkmxVTmbvq
	 FM8T63k1UxP4JDPeSu0FJ2OE/UTmHo0oOMzotQ+HkvkQrIFbA3u6CAoqiUfJIRLQ/+
	 npdBV1cfFkMVTSkG61c5F1tXAYQtPRfnwnaed1s56nZ3aGK4cxzoB2MkoiMIW+kmIi
	 1XX5S+gYzwzWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B14F608EF;
	Tue, 19 Mar 2024 09:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDC8A1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 09:54:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7A4840B67
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 09:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19rTQ8Hp5pwe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 09:54:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D5D9C40472
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5D9C40472
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5D9C40472
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 09:54:03 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-568-MOfHDjzlM2WaLxJgv6ARfw-1; Tue, 19 Mar 2024 05:53:58 -0400
X-MC-Unique: MOfHDjzlM2WaLxJgv6ARfw-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-a46d55f5d64so62213066b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 02:53:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710842037; x=1711446837;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=huubYUDUToyqq9krPzQhPuLvY5vBhK3/v+f/Pk52wRI=;
 b=ZV2752+vwZxxBpdWopu0oubkn1Y78PV0TYPgXLGw2W+Qs+Lsd7CGn3eS6mv4f47/VX
 X3x7SncKR9vXV9saGpyGaTLQt0cqsnI+hKcIjG1H1gNTaGHNgrkp3kEl3UVhC0GgQkGk
 udBYUA1wBS9WPmdnyPwKDTQYbkuluOJFm/JlZnPxkikuYjv8B4op2cDnabWHdlxqOKHQ
 Gy7IuF5jNkCJnjDeUCzuaOQQn9Z8pw3ipupDM00rwr/mb8z4eMqCATr1IaOrrjUivWgj
 LHkmmAB5Ut0v+uH5cI13iimF3iletFE01+eQacixiYdwJyVpmuMFcYHnnDHcQhnC/VN2
 IE5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUvtrSVr2Aj9CIzBtv/j1UPeWqpqWfq0sCqLLS8k3XnfN0M+VAZOCs9xPPYJ2RmoFHMpl7AofLdcRgB5hLXuu3UAMcjKk+3Se/3DCD8JZlVyw==
X-Gm-Message-State: AOJu0YyNpIWzJeQ8fFvP2U8x508xCIkF+WTCUzT2rAS0AEVCvFs7GBZX
 Q9B8Ub9gcl5hy6pAcW4mCOoSYNA2fEDrf01c1d9RtCWP8yTAVW23uSpa2jfZjE/jn0PNH+hpoke
 FdRkmV0kWpITMc1e+0fG6ahq/3zfyfy4oWO2dmZu3AlzcUTR5/r5n/eR6cInS6lKEhWyjER2CzX
 NsYk2V999nM35bFQZEoy461ff8y4ELlV5ZYKFZh5a3Zg==
X-Received: by 2002:a17:906:c1c5:b0:a46:6faa:2b8 with SMTP id
 bw5-20020a170906c1c500b00a466faa02b8mr1279784ejb.68.1710842037238; 
 Tue, 19 Mar 2024 02:53:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEi0AFEaSTgIutppuvHx8wkcKGVsW13LDh2HlG2CLXtPRG0kWeJmpUyYDwazcub07/XGqzu503Rc/iLvyeHG9c=
X-Received: by 2002:a17:906:c1c5:b0:a46:6faa:2b8 with SMTP id
 bw5-20020a170906c1c500b00a466faa02b8mr1279769ejb.68.1710842036919; Tue, 19
 Mar 2024 02:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240316113830.230718-1-ivecera@redhat.com>
In-Reply-To: <20240316113830.230718-1-ivecera@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 19 Mar 2024 10:53:45 +0100
Message-ID: <CADEbmW3C5y4gFzRsNW-V_DTUZimxh_AT5Ohr-KH8R7DXz38EGg@mail.gmail.com>
To: Ivan Vecera <ivecera@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1710842041;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=huubYUDUToyqq9krPzQhPuLvY5vBhK3/v+f/Pk52wRI=;
 b=VuTCHN7X2/ayUGAUs55hxA6lLobiIE4XGdxOxNMCeoDjg4X6qpm+YaYGujV2Xt1sxNe5d3
 vtlZB3zjR4m9quk8cLY5cUt7rbFmj/BM62JgVWuZC9slnEdPCo5uRX0TzztyY+gl/dhRFf
 sFBMbsW+eJVKITXR+BoaTYkhOUiJL20=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=VuTCHN7X
Subject: Re: [Intel-wired-lan] [PATCH net v4] i40e: Enforce software
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

On Sat, Mar 16, 2024 at 12:38=E2=80=AFPM Ivan Vecera <ivecera@redhat.com> w=
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
>
> Fixes: 0bcd952feec7 ("ethernet/intel: consolidate NAPI and NAPI exit")
> Reported-by: Hugo Ferreira <hferreir@redhat.com>
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

Yes, I am OK with v4.
Michal

> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

