Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F24C9B5466D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 11:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B471540D57;
	Fri, 12 Sep 2025 09:04:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6aVF6S6YrHZT; Fri, 12 Sep 2025 09:04:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF49640DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757667870;
	bh=90syXxZ3hoNyEnxXFNUZkJr/u60hxBRVGIRfqMYso1A=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zdme7EcI8vJWRpd8K1FfPZT6sPQYCH/zC85353tI7pL3jq6sKwP9DopquVzOCukZC
	 mNarv9oF1/l1fN6ls/xG6AGEa1grMuqu3NhppoVjy4IJfNPmejA4wFewPd8S1vUuXL
	 3qn6b7dr5cl25caNvAO0T49KPdmnui0NVudJppfu3LvW32tR5cK0vRRQbb2UFmIl98
	 7e76jbHT51Yzv4s8zP6IYZFwj33IDehYJ9IZq4R2BH9XdiBQfQ6jpzSIR3wLWhgic9
	 GumLkO6eO3ehcN107zbKYj9964ITHhe57S9CTaPCofmlrFVtTi8cYmLutxu9l0ZtLH
	 Xu/wG/NxTY2Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF49640DFD;
	Fri, 12 Sep 2025 09:04:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF10A92E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B419A4048F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:04:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ttk2zoBr5aqQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 09:04:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6D6EC402CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D6EC402CE
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D6EC402CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:04:28 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>, Jacob Keller
 <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <aKV_rEjYD_BDgG1A@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
Date: Fri, 12 Sep 2025 11:04:24 +0200
Message-ID: <87ikhodotj.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1757667865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=90syXxZ3hoNyEnxXFNUZkJr/u60hxBRVGIRfqMYso1A=;
 b=VGIVa2gQBaPJitni38eBDuq8p17wXeE2ctQhxYWyldkLpZz3DSCsKkHg26jUuLQvseU683
 jjI1VlafuhsTMz+Iq1SA8EavYY1X7BNpFekMQZHEVCjMT/td+Rqp8AY8ad6nxfPsVNqWFS
 SCuwwPCUG9NI6jmufu6WCOgnRyLUvaY5IX0FQxqOqdudaNrP1yKNyE27D7/D68+uUIlqIp
 88a94168wftahtQzpnI+VLDeJwAXbZDyk/ZXIA76xyxpu6ihM0v92XaCvBPXbS9Tia1DDA
 UrzbnQm/okHoZBv5OeQXiSV2hVzBSiGTBlXESS0OJeajO8EgzcWOn7B5BWVb8g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1757667865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=90syXxZ3hoNyEnxXFNUZkJr/u60hxBRVGIRfqMYso1A=;
 b=A6ToNB6EY4ij/h3wvb31H3s7QpJP1Sangz/E0U99Veb1OKoPNPbRxOeEdC7bY9tQYtYMzi
 /IXjH9nXZ/wCEMCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=VGIVa2gQ; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=A6ToNB6E
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Aug 20 2025, Miroslav Lichvar wrote:
> On Tue, Aug 19, 2025 at 04:31:49PM -0700, Jacob Keller wrote:
>> I'm having trouble interpreting what exactly this data shows, as its
>> quite a lot of data and numbers. I guess that it is showing when it
>> switches over to software timestamps.. It would be nice if ntpperf
>> showed number of events which were software vs hardware timestamping, as
>> thats likely the culprit. igb hardare only has a single outstanding Tx
>> timestamp at a time.
>
> The server doesn't have a way to tell the client (ntpperf) which
> timestamps are HW or SW, we can only guess from the measured offset as
> HW timestamps should be more accurate, but on the server side the
> number of SW and HW TX timestamps provided to the client can be
> monitored with the "chronyc serverstats" command. The server requests
> both SW and HW TX timestamps and uses the better one it gets from the
> kernel, if it can actually get one before it receives the next
> request from the same client (ntpperf simulates up to 16384 concurrent
> clients).
>
> When I run ntpperf at a fixed rate of 140000 requests per second
> for 10 seconds (-r 140000 -t 10), I get the following numbers.
>
> Without the patch:
> NTP daemon TX timestamps   : 28056
> NTP kernel TX timestamps   : 1012864
> NTP hardware TX timestamps : 387239
>
> With the patch:
> NTP daemon TX timestamps   : 28047
> NTP kernel TX timestamps   : 707674
> NTP hardware TX timestamps : 692326
>
> The number of HW timestamps is significantly higher with the patch, so
> that looks good.
>
> But when I increase the rate to 200000, I get this:
>
> Without the patch:
> NTP daemon TX timestamps   : 35835
> NTP kernel TX timestamps   : 1410956
> NTP hardware TX timestamps : 581575=20=20=20=20=20=20=20=20=20=20=20=20
>
> With the patch:
> NTP daemon TX timestamps   : 476908
> NTP kernel TX timestamps   : 646146
> NTP hardware TX timestamps : 412095
>

Sebastian found a machine with i350 and gave me access.

I did run the same test as you mentioned here. But, my numbers are
completely different. Especially the number of hardware TX timestamps
are significantly lower overall.

Without the patch:

./ntpperf -i eno8303 -m X -d Y -s Z -I -r 200000 -t 10

NTP daemon RX timestamps   : 0
NTP daemon TX timestamps   : 565057
NTP kernel RX timestamps   : 100208
NTP kernel TX timestamps   : 281215
NTP hardware RX timestamps : 882823
NTP hardware TX timestamps : 136759

With the patch:

NTP daemon RX timestamps   : 0
NTP daemon TX timestamps   : 576561
NTP kernel RX timestamps   : 99232
NTP kernel TX timestamps   : 255634
NTP hardware RX timestamps : 868392
NTP hardware TX timestamps : 135429

What am I doing wrong? Here's my chrony config:

|########## i350 NTP performance regression test ###########
|local stratum 10
|allow X
|allow Y
|allow Z
|
|hwtimestamp eno0
|=20
|clientloglimit 134217728
|log measurements statistics tracking
|logdir /var/log/chrony

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmjD4hgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzghJQD/wOlyr68b2d4rXNnVkz9MAXmxjW+Qf1
xqm6H5xo4ezq7+nNCd1HbOVpsghEFimenmYc0PTXlwhN3WAghahQvW2Hn0h9F649
2nS+vrVMTxKMvsY6NprHmku+QMUsuHdZ87pqXBPlvIwRUkK0+xkymYLKcWbutHoH
vnU9ij7jm3+tuWs6ofC3tlEmInOuGhaxiXlqModNsp0utJWDngNq2daFnBvcY1b/
vcVRAzSUizJIlEewj5SiwvpVrR3GWeu1g/7pOWeSGn4rEdJ9H7P0Hwpj4/2ivx/9
Gl5jFl/+R5yPwAPwPqle5tIy2e5fSOCLCDLswI0m5bHXDkOqjQqMB20Qwc+D3G1m
Y54x26hdy2TYLX+85mcCR/wsR2CczAjXrK5SNBh+MTK1T9qY1lA6rI05j75Zl555
xej9MEHpkCbrl2ZGFT7p6+mrCNhyN5XevGqcGxFUeNxD0kwu7FPs2tLXV4qHtHid
sjmcqem363FZg9qwzflkHv4VVDDDE2iVbfEA7Mm5qRTTONJNM7LYT+37HseT4orG
YPeZGZeauOb6Htg6ZHB3XOefKlWwAESDj1rkmD/X0BammaKI44r1QISnXcH4AF7g
jDblw+ACA+jOXSRss3AEl9ikH2ngjHK3245gH9USkfzbPHOQlMjpdPgJwKjBFoRj
HRBPt6CSq1i0Tg==
=6fDY
-----END PGP SIGNATURE-----
--=-=-=--
