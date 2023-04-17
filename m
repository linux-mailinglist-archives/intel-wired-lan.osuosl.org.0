Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E2D6E67D5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A33FD41E07;
	Tue, 18 Apr 2023 15:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A33FD41E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830807;
	bh=lruEr4bb1pAje/epE28iDSmoTyCPZbQ2eZFsukOiMZs=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=96GHGTLsNroHm0BxW8iGipsMk+WB0qDeqyF1tMCra2zAXh/HBHtrylb/dftWJ5wQC
	 iF7YpXdhE4lTdq3GKLXayQHJSKHWWXCJKotHA7unNOx1oHDdTU0VcKDK+wZYbFVVQM
	 c8a+ezZXDcyJZ77LgZSAwp2TcHtgnrvAsJuFeVXxY1pwJSsXX6BHZ0kD/j94DWkRVN
	 htJay3ROP3/4zkvGgp0RPxWTVKG+CipmI50yM8PY3W6KhZolF8K0CsDWNmeKlV33iS
	 lP7kr0hVAOV6FogBV8P6mcHptOa7Hk6F7JCxg3XqrszHvc/pNpmTQwoyvJMLA3quMs
	 FQSdmR231HK0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SjA-j2YGRfSx; Tue, 18 Apr 2023 15:13:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9136541E05;
	Tue, 18 Apr 2023 15:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9136541E05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2CA91BF860
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 15:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97614401DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 15:39:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97614401DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VuA93lEQ0o-w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 15:39:30 +0000 (UTC)
X-Greylist: delayed 00:07:25 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC0DA401A3
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BC0DA401A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 15:39:29 +0000 (UTC)
From: Kurt Kanzenbach <kurt.kanzenbach@linutronix.de>
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org,
 Stanislav Fomichev <sdf@google.com>, Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8r?=
 =?utf-8?Q?gensen?= <toke@redhat.com>
In-Reply-To: <168174344813.593471.4026230439937368990.stgit@firesoul>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344813.593471.4026230439937368990.stgit@firesoul>
Date: Mon, 17 Apr 2023 17:31:58 +0200
Message-ID: <87leiqsexd.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1681745520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZNqAznZucUwar6l9V+SpEqFf4WGQ4TaEWsz5LdTwLO0=;
 b=h4MK9rQxCNldmspQ2ekSbav6OCDIBvW/lBNViHTg8Eew50AGem+33buONoPvC5dgnRyNij
 kYFzHh2AjcCXT0UfeqyGUpQmiE2P+iyVUK6aqV7ATLBr/5XwJoyJ7BgsXOd6ZQTr9M5+Tg
 InWl/G01MrXTXAN0bANkhXc9bchlAWRZI4pHLxPX+dxJuY7bxfgZ8MJFSaL3iQY8zqtDms
 mg08ta0IdmXbR2GZu6zyujObgpf+0y8uU7Rk0xeDdegiPQ2xID2T3/hVZBrRg2WVWZEb2f
 MSjlqc8bYzKxWS3wEN+YM9cJvhQnUK5G94/Bf3dszKvEP25KO9iBNailTkfepA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1681745520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZNqAznZucUwar6l9V+SpEqFf4WGQ4TaEWsz5LdTwLO0=;
 b=3Rb4+K6SMPMktyFO3+RfZXH19dm4B/+tIp7Nz5cDQuXxblNrtx7bNM12NK/g7FFPDeLHs+
 gC3+0zdB34IrhqCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=h4MK9rQx; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=3Rb4+K6S
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 5/5] selftests/bpf:
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
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
Content-Type: multipart/mixed; boundary="===============6810745721388943016=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6810745721388943016==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Mon Apr 17 2023, Jesper Dangaard Brouer wrote:
> To correlate the hardware RX timestamp with something, add tracking of
> two software timestamps both clock source CLOCK_TAI (see description in
> man clock_gettime(2)).
>
> XDP metadata is extended with xdp_timestamp for capturing when XDP
> received the packet. Populated with BPF helper bpf_ktime_get_tai_ns(). I
> could not find a BPF helper for getting CLOCK_REALTIME, which would have
> been preferred. In userspace when AF_XDP sees the packet another
> software timestamp is recorded via clock_gettime() also clock source
> CLOCK_TAI.
>
> Example output shortly after loading igc driver:
>
>   poll: 1 (0) skip=1 fail=0 redir=2
>   xsk_ring_cons__peek: 1
>   0x12557a8: rx_desc[1]->addr=100000000009000 addr=9100 comp_addr=9000
>   rx_hash: 0x82A96531 with RSS type:0x1
>   rx_timestamp:  1681740540304898909 (sec:1681740540.3049)
>   XDP RX-time:   1681740577304958316 (sec:1681740577.3050) delta sec:37.0001 (37000059.407 usec)
>   AF_XDP time:   1681740577305051315 (sec:1681740577.3051) delta sec:0.0001 (92.999 usec)
>   0x12557a8: complete idx=9 addr=9000
>
> The first observation is that the 37 sec difference between RX HW vs XDP
> timestamps, which indicate hardware is likely clock source
> CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
> with a 37 sec offset.

Maybe I'm missing something here, but in order to compare the hardware
with software timestamps (e.g., by using bpf_ktime_get_tai_ns()) the
time sources have to be synchronized by using something like
phc2sys. That should make them comparable within reasonable range
(nanoseconds).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJSBAEBCgA8FiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmQ9Zm4eHGt1cnQua2Fu
emVuYmFjaEBsaW51dHJvbml4LmRlAAoJEMGT0fKqRnOCYtUP/3c5DAmd2vNkZ6A9
Sy1VrS9EFf5Re6h3DXMxCBsNi1AC/lYiNfkF2YRIY45UPntexdrl8J1ehisiIrWs
OPi2cIyZObXXrm5SCXDk/o//G3cwv0CwqCC5Wnhk1120d9kpAlXwiYpHZnzZRFGE
2XKkAcNOaKqjwlC8eKxI8dTIfZEWl2w1nazOzNSQCGnQV9sll1TetJaempzYyXkp
luI2fmsuLFt9z02xW33jS2W2fRQoIfBbb6PIuGPiAnjGMNiUNeyh6hg7wzDz4uHA
RnM87yFtBbTlIwzAgpSMXXnmdyLL5uJUmqiiS9RvxZhWYklc2015OsynMBO7namn
MtT1bPjrFxVrIRBYTQ+YaTuUwRN/sLkye92IG6AttUjcJElvL3xW20kWMs+nqgGP
yBB2Y/DLsNzWVDIXY7406U1/6bZEZjHaCFawnXbrYUurAXr2zG27x13aFQWxHD69
wyH3esfAZP8/0yBucSlpbgBiOOwz7ys2M/I9NaAQAKVitL11bDSqHBSuBAp3T1im
UBZXIws7gqvQ1L3DMj1QnBi1QyheCcjvyS2bXgn00t27aRo5uy8Gdv750bW4RqES
hMxSATWP2Ee+ePTYVMHOCsUStTkX0qyT7iaPARC7HbpId1dmTVulzrdz5eUGJDJU
yNNSk0lrFfo1uXx7AScZAHpkl3zZ
=YsLm
-----END PGP SIGNATURE-----
--=-=-=--

--===============6810745721388943016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6810745721388943016==--
