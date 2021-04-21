Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8116366D71
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 16:00:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F7D34038E;
	Wed, 21 Apr 2021 14:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WpOmjNdylLJl; Wed, 21 Apr 2021 14:00:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6896240595;
	Wed, 21 Apr 2021 14:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B09E41BF951
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 06:35:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E790607F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 06:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="lEuNRrcR";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="+Op9AgrN"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vagsLF50AOCX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 06:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5187E60874
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 06:35:12 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618986908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z6EUUiEJOblPxT1w4z7114vadpacx2AEQX1f9yDMYqc=;
 b=lEuNRrcRd5xehOxWkhsJcyzkY5ItC/TzQ3vW0lGDuQCGszdkBlJIaRFEdWcs1Q8Hn8MBKI
 8+dOZYJedEitM9JeZJJBjkR/vmJJDFy1bMK0AmrY2wff3xbnKhQ+wPTok6LVV79hJvONpM
 9JQuHbaB6UMSDTdD4zRSB9muYF89OxR/kRW9Yt6/STwi6d+zJCpkyjZ0xKNpto4wvspxB7
 mHuNn5DzjGwzI/9wUHWBqxrj32Kj8IdT4ZcU12kC/sXEos3eKg22IPozobXEuASTg+4mbE
 K8Ria10j8+dq+hPu+UFlcsnT/4kklACn05+NxL7NeRVajmDM5VWVyaG2Gc6H3Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618986908;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Z6EUUiEJOblPxT1w4z7114vadpacx2AEQX1f9yDMYqc=;
 b=+Op9AgrN6rv3f98XM0KuHGxatYW1bWwtiDwOubp2q3LP+7fjDPzKYdIj3FoadTkk6spBlY
 p2QfcWFU+jtMGAAQ==
To: "Nguyen\, Anthony L" <anthony.l.nguyen@intel.com>,
 "davem\@davemloft.net" <davem@davemloft.net>,
 "kuba\@kernel.org" <kuba@kernel.org>, "Brandeburg\,
 Jesse" <jesse.brandeburg@intel.com>
In-Reply-To: <c1eed5fe05a59f86ff868580e3ae89e251f498ec.camel@intel.com>
References: <20210419072332.7246-1-kurt@linutronix.de>
 <c1eed5fe05a59f86ff868580e3ae89e251f498ec.camel@intel.com>
Date: Wed, 21 Apr 2021 08:35:06 +0200
Message-ID: <874kg0b0x1.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 21 Apr 2021 14:00:10 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix XDP with PTP enabled
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
Cc: "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "ast@kernel.org" <ast@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "lorenzo@kernel.org" <lorenzo@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>
Content-Type: multipart/mixed; boundary="===============8865430317028999732=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============8865430317028999732==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

>> +		/* pull rx packet timestamp if available */
>> +		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))
>> {
>> +			timestamp = igb_ptp_rx_pktstamp(rx_ring-
>> >q_vector,
>> +							pktbuf);
>
> The timestamp should be checked for failure and not adjust these values
> if the timestamp was invalid.

OK. I'll adjust it.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmB/x5oACgkQeSpbgcuY
8KbLIxAAmG5oUNtJmfrc3pqEBAta5uyV2H7xPFqHyHTH2EAn7xPr4idVnyX0xntg
0hzdnuXGElZawt5BVtvyaWvI0cLvD0lD3hDKx3NC8n0otehzv87c3ooE3Tamch/o
pXbAh21R7C3PuLMGTambH7xH2TM3Ts/8pgTW4zjZ48mVWlodMTEewzvbJlT5EJO1
zGQBCqaQG3bHCy6+6Tl+9tKzTCoL2GzHkhGd7gT/aphWDaNNaOl8sFEWGdoAodQh
Y/GvhMPu3SO+MA/2G1ZP/xJJkSoZ1i3Dp76dCMLfqd9GGfA46yA9aASRV0BQi3HB
ceiiUkuGNGHzmXEDQfDfNYGOFwzHsRmiLey8ZNL5zUUD7MxvkxqOdn1CKq4iemuz
qjcP4Ibbt0ZesTjpMkCLxeI+6PdOYfdz6c2z4T4zBermFXMq3ovXDSgv1z39EqfT
7QHJASn9rr5pdxJurT6uqZqR7mtWJqPW66uHza3r0YV1CSvKYPZ0N/PQSKTnaA1J
mErbg9Y4kfoamTUmYJQWus3w75n6GDe2A6lDnzTsHRTOw8luXbBlwu7Vj/sEFP+A
+O0tfuoftZyO9BgUWkTSfFnn/62JEMsXCVsb1RXRcbVu/aLQtFNjolG8R9dy3ifi
WFN8B/z5BGKYqbb8F6UVplXu4aUmglfR5tv44jxpQZSjP+5PaYA=
=cV8D
-----END PGP SIGNATURE-----
--=-=-=--

--===============8865430317028999732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8865430317028999732==--
