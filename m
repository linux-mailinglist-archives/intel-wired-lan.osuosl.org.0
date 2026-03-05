Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIfeIiZFqWlV3gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 09:56:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08F20DCF6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 09:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B4E3817AF;
	Thu,  5 Mar 2026 08:56:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ayrkceWwMRQ; Thu,  5 Mar 2026 08:56:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 851FD81799
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772700962;
	bh=ecqro3YS78h33SUaUsJYIVaoB0LHuu2VIDT6L98U+ZU=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JW1hOO2cOkzhxB8miBxFrcz2X7JRevE2SsXhM3mLrxZAHhQUTqf6rcfyCVdNhIenK
	 yCjUYr1SDxnQrKdef4c/G8VCkVpldHotLLdvGffClgaJaG5/E07V+VXaIgk/8OudWn
	 FMRe/2TgIPaaIEBGZ7XSYDyhuPG0UeHpFCZCXF8SoFsfeXSEg36NgoZJXzrtFDql3l
	 nX9QnMrWsCpQRuIcqu7dLuw5KcY8n7qtayTVKkFG05vpcC/EAGzqorWqysltAdaYiU
	 xL458tw5MJWfvJNxcrjGsnfTVrvKWBSvwfNMN2gR5ThzRdulA1Dz4zox2oD6jbPDF/
	 RqfRuzAmET/wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 851FD81799;
	Thu,  5 Mar 2026 08:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 435E9223
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 08:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F16D40336
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 08:56:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YeHr7HcRvd-v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 08:55:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EBB654006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBB654006A
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBB654006A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 08:55:58 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <aaf8xVPWQ0-y1BnX@localhost>
References: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
 <9805389e-9ea4-4e7a-a122-65f733ead33c@molgen.mpg.de>
 <87qzq1rq2k.fsf@jax.kurt.home> <aaf8xVPWQ0-y1BnX@localhost>
Date: Thu, 05 Mar 2026 09:55:52 +0100
Message-ID: <87seae4puv.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1772700954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ecqro3YS78h33SUaUsJYIVaoB0LHuu2VIDT6L98U+ZU=;
 b=g8zxm0UO+kYJydvh1gWJZkCT+dKwS0pl90SUdHLmfQ4K5Lm0U3H+xs52y/+nZILqf+Vt2h
 00zGgW4a/bQM3PPFHLF8Q26jDBJvgnptZrTX8zlvbncO13NhMIzCkZIj1bb3MLA5YakQIr
 3yNg9jbqq2Av2G169EYRFyBy4PWiOkb5ZeXHvHDAqjCUamFegvw5gA6aTGPLf6Lalc4R2r
 Lluv6c/YXLRXkJap4FaxyL9Utv05JihGu6oAjCPc7fqFu9iDedvKeDn+HoFZL9af26+6mx
 GqLtl+RovxzqBh5l2T+PZQY6KHxgCMPcN07IP2Utl3j3VXkcAeu6TpRlsrensA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1772700954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ecqro3YS78h33SUaUsJYIVaoB0LHuu2VIDT6L98U+ZU=;
 b=57KdUgHm8XZ5ZyAILCqJCRhioJDmsfvZQ4foBQSX4OSPxosP3hojz58idK/qgceU9NqX4y
 Gj1t5GqqfGthbbCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=g8zxm0UO; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=57KdUgHm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] igb: Retrieve Tx
 timestamp from BH workqueue
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
X-Rspamd-Queue-Id: 7A08F20DCF6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mlichvar@redhat.com,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:vinicius.gomes@intel.com,m:bigeasy@linutronix.de,m:vadim.fedorenko@linux.dev,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[molgen.mpg.de,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de,linux.dev,lists.osuosl.org,vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Mar 04 2026, Miroslav Lichvar wrote:
> On Tue, Mar 03, 2026 at 02:38:11PM +0100, Kurt Kanzenbach wrote:
>> > It would be great, if you shared the numbers. Did Miroslav already tes=
t=20
>> > this?
>>=20
>> Great question. I did test with ptp4l and synchronization looks fine <
>> below 10ns back to back as expected. I did not test with ntpperf,
>> because I was never able to reproduce the NTP regression to the same
>> extent as Miroslav reported. Therefore, Miroslav is on Cc in case he
>> wants to test it. Let's see.
>
> I ran the same test with I350 as before and there still seems to be a
> regression, but interestingly it's quite different to the previous versio=
ns of
> the patch. It's like there is a load-sensitive on/off switch.
>
> Without the patch:
>
>                |          responses            |        response time (ns)
> rate   clients |  lost invalid   basic  xleave |    min    mean     max s=
tddev
> 150000   15000   0.00%   0.00%   0.00% 100.00%    +4188  +36475 +193328  =
16179
> 157500   15750   0.02%   0.00%   0.02%  99.96%    +6373  +42969 +683894  =
22682
> 165375   16384   0.03%   0.00%   0.00%  99.97%    +7911  +43960 +692471  =
24454
> 173643   16384   0.06%   0.00%   0.00%  99.94%    +8323  +45627 +707240  =
28452
> 182325   16384   0.06%   0.00%   0.00%  99.94%    +8404  +47292 +722524  =
26936
> 191441   16384   0.00%   0.00%   0.00% 100.00%    +8930  +51738 +223727  =
14272
> 201013   16384   0.05%   0.00%   0.00%  99.95%    +9634  +53696 +776445  =
23783
> 211063   16384   0.00%   0.00%   0.00% 100.00%   +14393  +54558 +329546  =
20473
> 221616   16384   2.59%   0.00%   0.05%  97.36%   +23924 +321205 +518192  =
21838
> 232696   16384   7.00%   0.00%   0.10%  92.90%   +33396 +337709 +575661  =
21017
> 244330   16384  10.82%   0.00%   0.15%  89.03%   +34188 +340248 +556237  =
20880
>
> With the patch:
> 150000   15000   5.11%   0.00%   0.00%  94.88%    +4426 +460642 +640884  =
83746
> 157500   15750  11.54%   0.00%   0.26%  88.20%   +14434 +543656 +738355  =
30349
> 165375   16384  15.61%   0.00%   0.31%  84.08%   +35822 +515304 +833859  =
25596
> 173643   16384  19.58%   0.00%   0.37%  80.05%   +20762 +568962 +900100  =
28118
> 182325   16384  23.46%   0.00%   0.42%  76.13%   +41829 +547974 +804170  =
27890
> 191441   16384  27.23%   0.00%   0.46%  72.31%   +15182 +557920 +798212  =
28868
> 201013   16384  30.51%   0.00%   0.49%  69.00%   +15980 +560764 +805576  =
29979
> 211063   16384   0.06%   0.00%   0.00%  99.94%   +12668  +80487 +410555  =
62182
> 221616   16384   2.94%   0.00%   0.05%  97.00%   +21587 +342769 +517566  =
23359
> 232696   16384   6.94%   0.00%   0.10%  92.96%   +16581 +336068 +484574  =
18453
> 244330   16384  11.45%   0.00%   0.14%  88.41%   +23608 +345023 +564130  =
19177
>
> At 211063 requests per second and higher the performance looks the
> same. But at the lower rates there is a clear drop. The higher
> mean response time (difference between server TX and RX timestamps)
> indicates more of the provided TX timestamps are hardware timestamps
> and the chrony server timestamp statistics confirm that.
>
> So, my interpretation is that like with the earlier version of the
> patch it's trading performance for timestamp quality at lower rates,
> but unlike the earlier version it's not losing performance at the
> higher rates. That seems acceptable to me. Admins of busy servers
> might need to decide if they should keep HW timestamping enabled. In
> theory, chrony could have an option to do that automatically.

Great! Thanks a lot for testing and sharing your numbers.

I'll send v5 then with updated changelog as suggested by Aleksandr and
Paul.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmmpRRgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgnfXD/9TOnDNTDngr0PXrCtQH9FliXc8zyXZ
fU5BOkrfttxRPocIgW3SSBLdNuyEhA/yBRjT1jnbPzc3qnZq4jvykXPpzS3CiVbg
eTM3f9zJWeFRBTEH1593e3CRNF6N4GMeDjWfnWYFwwgzcq87ifH5BZm36mdTVBPo
QhvO53dFSWdilG1AEc5RTc5Ltjc5cLWpK2LETxISJdA0+vYty3HKFSSZ3niEkxO7
AW6NhQKXowYuOa0yXmuhtGqDZGZ3TIyKAGJoS3rsAb0NyjW7mV3jTwlMMpY2OhHm
pVlOEs2qbMZQF4zElGubGiVNMGLSw/NYTnjgrFep02FykjPuXSh+3A3ZXL5ks2R1
WW8z98HNdUjeEyj7+DMfRPXTsHil4wKeBW+P8G5lLV9RdC9Mw6sUH+mfNhO4IB5m
O3avxJQZaYwYrnumpTWVIrYl+GN1qo8X6QvaM94+wX2agFA8nt9s5zxAclxYWPbc
cvUs/D8bO0+QQe1ZDGhmqLV97rVr3IttAcyDp1a+IHrYT4OtFBzW/wXIS4hsqjDc
SDzDh3q0CXkXGX2MGGzx8R5H9t+Di65UC71Mk49WSCx/d1WdHIdSuoPnrDp+cITa
QHyCdTzHhBZEBltEGUMl2COP+lQRgNhqIRciJddZWqNZKkMxSEuqIrZDvpgbV4M/
LG/gG9sVUNvAjw==
=8NQy
-----END PGP SIGNATURE-----
--=-=-=--
