Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F9A360BA7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CA6B84744;
	Thu, 15 Apr 2021 14:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kW1Zw188zIOD; Thu, 15 Apr 2021 14:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 137848471E;
	Thu, 15 Apr 2021 14:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E98B1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:20:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C49B4069D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="tDV80DqY";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="QKOPL7EP"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6TDKyTchHP-5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 12:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39A2A40673
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:19:59 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618489197;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BMbOvheSsOknaamptk4bilePbxHfJjQDO8qYoDp5N4I=;
 b=tDV80DqYhwfGCxUK5pbLFv6e0FzxvMQVUbQo3ZwUc0ufmhbXjYUb4sOHQ7fWY1cRB2c2Wu
 4vL9NI0ttW0K9OeFJaN39C2ctqVtd5LTGzLhEkpndjqhTlO4lQvLX1UgMW3xcjWOtrPVFo
 dg+rzBxVGWr9xlku3Bu8HRBymsQMPo4/BRl2D1lhVIEKCrQlkzOjqeAYwxKbMOlSw1zUxX
 KgFT6FdA8+sftqEjQykhGmIDE7gjjAjiw3eEotDsX+i8Bkq85WQyJARKZN1Vu9jM3ryWnK
 nYtDWQFehKqvXR3SHyJYjX1xQWYjH/z+DmL3Zvsou2zQECRwUChF/jjwrHALOw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618489197;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BMbOvheSsOknaamptk4bilePbxHfJjQDO8qYoDp5N4I=;
 b=QKOPL7EPIF9GfHnmB2VbsPfPlSTmQAiP36KJxphlUzGla2GAXIS/sYqzS0If2D+yr603B6
 pb8sCUYgd7NWoYCA==
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
In-Reply-To: <YHgiffS6A0sDzLGW@lore-desk>
References: <20210415092145.27322-1-kurt@linutronix.de>
 <YHgiffS6A0sDzLGW@lore-desk>
Date: Thu, 15 Apr 2021 14:19:55 +0200
Message-ID: <871rbbhh90.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 15 Apr 2021 14:16:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Fix XDP with PTP enabled
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4551713354543362427=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4551713354543362427==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Apr 15 2021, Lorenzo Bianconi wrote:
> [...]
>> @@ -8683,7 +8676,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *=
q_vector, const int budget)
>>  	while (likely(total_packets < budget)) {
>>  		union e1000_adv_rx_desc *rx_desc;
>>  		struct igb_rx_buffer *rx_buffer;
>> +		ktime_t timestamp =3D 0;
>> +		int pkt_offset =3D 0;
>>  		unsigned int size;
>> +		void *pktbuf;
>>=20=20
>>  		/* return some buffers to hardware, one at a time is too slow */
>>  		if (cleaned_count >=3D IGB_RX_BUFFER_WRITE) {
>> @@ -8703,15 +8699,22 @@ static int igb_clean_rx_irq(struct igb_q_vector =
*q_vector, const int budget)
>>  		dma_rmb();
>>=20=20
>>  		rx_buffer =3D igb_get_rx_buffer(rx_ring, size, &rx_buf_pgcnt);
>> +		pktbuf =3D page_address(rx_buffer->page) + rx_buffer->page_offset;
>> +
>> +		/* pull rx packet timestamp if available */
>> +		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
>> +			timestamp =3D igb_ptp_rx_pktstamp(rx_ring->q_vector,
>> +							pktbuf);
>> +			pkt_offset +=3D IGB_TS_HDR_LEN;
>> +			size -=3D IGB_TS_HDR_LEN;
>> +		}
>>=20=20
>>  		/* retrieve a buffer from the ring */
>>  		if (!skb) {
>> -			unsigned int offset =3D igb_rx_offset(rx_ring);
>> -			unsigned char *hard_start;
>> -
>> -			hard_start =3D page_address(rx_buffer->page) +
>> -				     rx_buffer->page_offset - offset;
>> -			xdp_prepare_buff(&xdp, hard_start, offset, size, true);
>> +			xdp.data =3D pktbuf + pkt_offset;
>> +			xdp.data_end =3D xdp.data + size;
>> +			xdp.data_meta =3D xdp.data;
>> +			xdp.data_hard_start =3D pktbuf - igb_rx_offset(rx_ring);
>
> in order to keep it aligned with other xdp drivers, I guess you can do so=
mething like:
>
> 			unsigned char *hard_start =3D pktbuf - igb_rx_offset(rx_ring);
> 			unsigned int offset =3D pkt_offset + igb_rx_offset(rx_ring);
>
> 			xdp_prepare_buff(&xdp, hard_start, offset, size, true);

This should work as well. I just kept it in sync with the igc driver,
because it doesn't use xdp_prepare_buff() either.

>
> Probably the compiler will optimize it.

Most likely.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmB4L2sACgkQeSpbgcuY
8KaS9A/+OHp/1uZIOitP04uK8NHdGEgU6woimHvvC3CrFIHC+GDx1NiPZJhKWi2b
LRsAe8kPJuYIRNX7D67LQK1ZaRh7pVzc2fRyDbyZACag5jHyX1pUHhVykSiX8b67
yepBMiUG01KB3p/UIliLhuRG/v+QOht9XH5QtH2YLtPTy0KE+81Z5ZHTss/wcaqX
aFrdhwjVakQNXNbVnrNBQdrdcQv9kidIIeRNFgsftkLPz4agoULLF590yZSTqt+m
uAJTBceAc+TviLxr7wNcDEGkQaRNIK3QhcLinRsfodI3OcI5AfNulIE4H8xX14aU
oKLMLsHcN2BXt5GS7E4oPz5nr4Bqgcjq7m5pPTpUaFhO8konyY2JhQL/B5O9EtKR
BdT5uC321drrl8ZeweF5p/veLnDNWEsnBVHc+oKNQR1vDRXyIX30QXRqkKQ1EFKB
iR7jE0OK7joG78ik0Vt66PweAfRphX2wrCNyNef4BrsCgrd3aNiLTbeeTkwoSCWs
nZci29OrJUKpA9HVC6Skq75RpvyGhXxr+aBRxJuz5bch9+hunk8RqZHjEVmkac17
tirlZ9vffyYnw1nim4wN3pjV/VpLGZE7HqCyAhOelAiEbXJ5nIp/ghcI3qzcgQfD
5KiKgBu0fWoyxQWykXHaewfY/tCMFwYDKiY/jJpUk+XOaAydHIg=
=bJH5
-----END PGP SIGNATURE-----
--=-=-=--

--===============4551713354543362427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4551713354543362427==--
