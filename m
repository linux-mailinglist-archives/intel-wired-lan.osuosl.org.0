Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571586E6D55
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 22:12:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB45B4060C;
	Tue, 18 Apr 2023 20:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB45B4060C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681848755;
	bh=+rUoWcs+j23+1/6OITiPRmWh6dwwKNHy13m4CZ7yNl0=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5m5+Kb0FhH6EEajabLa4Gz9YjzZlwNrXqZxEX3fIRkJoQhnoFvU0ROUacQR2WvXi/
	 iW29XFG3HKLtRp9hKy6D3jyGONsuhWsS7DUbMnFGyYYsOK67+Nsc7nFr/aB/87o6fD
	 MYLz2NEMzxSgQ4elM8R3dgkGcgABUD7dBcHcd5NFCNYpWhnVnPZqV6LZm507hSbYlQ
	 VHRWW38IzWMcUWWq7VMii15NGpmpwhEqoMi+qiwxQxLdRU9/CHxvIf0hN9KVGBNEne
	 2shV+F0jkV2KfctFKBUD9tGVVwUzoc/TeXIqc58c7LPkVOsrKQx12+SwbuFrJV+1mp
	 D6HouZD08tiwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QwFCCgqN8L3c; Tue, 18 Apr 2023 20:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A346C4060B;
	Tue, 18 Apr 2023 20:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A346C4060B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA51F1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 19:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B01A9410E8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 19:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B01A9410E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uP7M1bkSaRv3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 19:08:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 136C540998
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 136C540998
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 19:08:29 +0000 (UTC)
From: Kurt Kanzenbach <kurt.kanzenbach@linutronix.de>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, yoong.siang.song@intel.com
In-Reply-To: <d805e350-1d59-eb3a-ec27-adaa72cdc20b@redhat.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344813.593471.4026230439937368990.stgit@firesoul>
 <87leiqsexd.fsf@kurt> <d805e350-1d59-eb3a-ec27-adaa72cdc20b@redhat.com>
Date: Tue, 18 Apr 2023 21:08:23 +0200
Message-ID: <874jpdatzs.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Apr 2023 20:12:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1681844906;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VOrKFynLGckPk+CYqhbx8+jNQeXYmrsMC2Orct/hMls=;
 b=Ur0Ke5DZuNUaFjbU1FGowS7C3QoGBwm836/R9d/gzxEYnmiF41jI1FjmBHlRhuBVYw/5nw
 J/7QQNtG0CMKijupuLR3ptp51FyTjFh8dBEUQmoN8xNPMGZ+YUdLZjqiTrkb4qNoIWIAvd
 /NNpZZltUdPcakYq6bXQFMt8WoUttrRqgzWqDVKrwylsPSkbXXusxPMdu9MGYNwTM8PhUS
 Z1DbjsDh69FPU6ECTW23WNh7z6RkOgLpe8/jo3kwPDMpJYRIzBt6IKT3OtXlMtfBSHFYuq
 1HuO+0mcnueKiMFhdho1mYeSn7lQ37PCIuajxvTn6RV2iXRzEH+TSiEtbYCtmQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1681844906;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=VOrKFynLGckPk+CYqhbx8+jNQeXYmrsMC2Orct/hMls=;
 b=WsReauLGocmtBrm0ZxTvlTCrnrV9WrA1s890zEnWeSMUm/wbZ5BS+b135oYcyIxP9rBIx6
 /uNDW3uQ8Wt9bbAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Ur0Ke5DZ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=WsReauLG
Subject: Re: [Intel-wired-lan] [xdp-hints] Re: [PATCH bpf-next V1 5/5]
 selftests/bpf: xdp_hw_metadata track more timestamps
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
Cc: Pasi Vaananen <pvaanane@redhat.com>, xdp-hints@xdp-project.net,
 martin.lau@kernel.org, daniel@iogearbox.net, larysa.zaremba@intel.com,
 netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 john.fastabend@gmail.com, ast@kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, edumazet@google.com, Stanislav Fomichev <sdf@google.com>,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
Content-Type: multipart/mixed; boundary="===============8813950025731271679=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8813950025731271679==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Apr 18 2023, Jesper Dangaard Brouer wrote:
> On 17/04/2023 17.31, Kurt Kanzenbach wrote:
>> On Mon Apr 17 2023, Jesper Dangaard Brouer wrote:
>>> To correlate the hardware RX timestamp with something, add tracking of
>>> two software timestamps both clock source CLOCK_TAI (see description in
>>> man clock_gettime(2)).
>>>
>>> XDP metadata is extended with xdp_timestamp for capturing when XDP
>>> received the packet. Populated with BPF helper bpf_ktime_get_tai_ns(). I
>>> could not find a BPF helper for getting CLOCK_REALTIME, which would have
>>> been preferred. In userspace when AF_XDP sees the packet another
>>> software timestamp is recorded via clock_gettime() also clock source
>>> CLOCK_TAI.
>>>
>>> Example output shortly after loading igc driver:
>>>
>>>    poll: 1 (0) skip=3D1 fail=3D0 redir=3D2
>>>    xsk_ring_cons__peek: 1
>>>    0x12557a8: rx_desc[1]->addr=3D100000000009000 addr=3D9100 comp_addr=
=3D9000
>>>    rx_hash: 0x82A96531 with RSS type:0x1
>>>    rx_timestamp:  1681740540304898909 (sec:1681740540.3049)
>>>    XDP RX-time:   1681740577304958316 (sec:1681740577.3050) delta sec:3=
7.0001 (37000059.407 usec)
>>>    AF_XDP time:   1681740577305051315 (sec:1681740577.3051) delta sec:0=
.0001 (92.999 usec)
>>>    0x12557a8: complete idx=3D9 addr=3D9000
>>>
>>> The first observation is that the 37 sec difference between RX HW vs XDP
>>> timestamps, which indicate hardware is likely clock source
>>> CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
>>> with a 37 sec offset.
>>=20
>> Maybe I'm missing something here, but in order to compare the hardware
>> with software timestamps (e.g., by using bpf_ktime_get_tai_ns()) the
>> time sources have to be synchronized by using something like
>> phc2sys. That should make them comparable within reasonable range
>> (nanoseconds).
>
> Precisely, in this test I've not synchronized the clocks.
> The observation is that driver igc clock gets initialized to
> CLOCK_REALTIME wall-clock time

Yes. The igc driver uses ktime_get_real() to initialize the PHC time in
init() and reset(). However, that's driver specific. PTP is based on
TAI.

>, and it slowly drifts as documented in provided link[1].

Yes, it does without proper synchronization. Linux has its own
independent system clock. Therefore, tools like phc2sys are required.

>
>   [1]=20
> https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hi=
nts_kfuncs02_driver_igc.org#driver-igc-clock-drift-observations
>   [2]=20
> https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hi=
nts_kfuncs02_driver_igc.org#quick-time-sync-setup
>
> I've also played with using phc2sys (in same doc[2]) to sync HW clock
> with SW clock. I do *seek input* if I'm using it correctly?!?.

Looks correct.

>
> I don't have a PTP clock setup , so I manually: Use phc2sys to
> synchronize the system clock to the PTP hardware clock (PHC) on the
> network card (which driver inited to CLOCK_REALTIME wall-clock).
>
> Stop ntp clock sync and disable most CPU sleep states:
>
>    sudo systemctl stop chronyd
>    sudo tuned-adm profile latency-performance
>    sudo hexdump --format '"%d\n"' /dev/cpu_dma_latency
>    2
>
> Adjust for the 37 sec offset to TAI, such that our BPF-prog using TAI=20
> will align:
>
>    sudo phc2sys -s igc1 -O -37 -R 2 -u 10
>
> Result on igc with xdp_hw_metadata:
>
>   poll: 1 (0) skip=3D1 fail=3D0 redir=3D6
>   xsk_ring_cons__peek: 1
>   rx_hash: 0x82A96531 with RSS type:0x1
>   rx_timestamp:  1681825632645744805 (sec:1681825632.6457)
>   XDP RX-time:   1681825632645755858 (sec:1681825632.6458) delta=20
> sec:0.0000 (11.053 usec)
>   AF_XDP time:   1681825632645769371 (sec:1681825632.6458) delta=20
> sec:0.0000 (13.513 usec)
>
> The log file from phc2sys says:
>
>   phc2sys[1294263]: [86275.140] CLOCK_REALTIME rms    6 max   11 freq=20
> +13719 +/-   5 delay  1435 +/-   5
>
> Notice the delta between HW and SW timestamps is 11.053 usec.
> Even-though it is small, I don't really trust it, because the phc2sys
> log says frequency offset mean is "+13719" nanosec.

The offset between the system and PHC clock is 11ns at maximum (and 6ns
in mean) which is quite good. The frequency offset is displayed in ppb.

>
> So, it is true that latency/delay between HW to XDP-SW is 11 usec?

I think so.

> Or is this due to (in)accuracy of phc2sys sync?

Nope.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJSBAEBCgA8FiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmQ+6qceHGt1cnQua2Fu
emVuYmFjaEBsaW51dHJvbml4LmRlAAoJEMGT0fKqRnOCea0QAKc/SxH158WmCZZF
SAzioGJ2WQ1qWJkaR8MaIMEwrDUqGKFqYJLXNmzLuGlJQJIl1YI8/9XQmFd1Xq/H
2sFW50X1nP53OXP01hSKna33xlt5T5MitLD1krlK+6FYC5GlZ9jTGNP8vg2cIvRb
9t2blNR0J8lMm42uS/8hQgDOoYj+9Mgxs14fG6WZyKzjJEKZPt11U0VfZsh9u98/
rxuSXytQ+mKgY83AnY59O2Pr7+Da9XjppcBMbLVfrthFX1FDqj0RSGlWPQjbngJe
+hcxANRlQGPUjJQeK51Lb6ZZYY8rB0vTnoNgsNyaMbPlcQgSKwEH5NSwQSwwBzk0
/ANfBb+hknxkfv/a9LEwJBQGkxSnkIyUTNXg/KztkVNMmjsfy2TwUWqq5zW8eJkb
foYl3OmOcIl3fC4ifewsFDhy9qsdF0g02geN7hKZMIUuQ7AFZG10EHCEqzIWf+il
IqP3oy3CjyZxuBbR6TUNWOpgSkfctUWc2bEMwG9w5eoDoZxDypgDQTvtuulsuF7Q
2qtyst5kgG0pndPay9cSwYC6AVi+lIVCMZ8fQMJG/ZcUNTQUt2UpHtBACpBv75Jk
doUcszC9/XOqPXw6rDy6IwWwX80Hw1tqKporXCYf2WKtYxB1bqAxE5azz98AnmmL
b6+rrbfCleWELNhj+AOu0v+M5G2f
=bJsX
-----END PGP SIGNATURE-----
--=-=-=--

--===============8813950025731271679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8813950025731271679==--
