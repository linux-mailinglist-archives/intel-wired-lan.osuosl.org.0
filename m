Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EBD3694C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 16:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2096460DC5;
	Fri, 23 Apr 2021 14:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-lRb-wtoa4k; Fri, 23 Apr 2021 14:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C614607D0;
	Fri, 23 Apr 2021 14:32:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 092C81BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 06:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB48160DC9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 06:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TQ7n7GtTiM4A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 06:46:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A28360DC5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 06:46:07 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1619160362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=COpI2hRP60Vs2lnyODeiD9EhKAi0HtjdTtgcT2kw3Hc=;
 b=Tat9RtrgjoUdU2WZNdvnghT6Etxjtfc9mkKhkXJIVA7dzvtLJqNjYSKisckLvjSwoIiUIV
 RnMLSK7XGcAGMJbZVYoHOa3MntLf/UMEOwqqXqn/4fBBJqwRut1oNsy+1L624nLYAM/9zE
 +PYsVB9Z2U+8dPtXvxGu0Fp+RNT2u5CfuOLZDovLGYQiVGepJa8rgWaJD75aga2EObBYQ6
 ITXgCRNnB1Rfqej4THc5QfPj8CQwFtAnt10Oat2ujzWeJR9ewWPWJpPpFHJ0ymOl04lT4T
 lm3/FuwwHsB+vORaCX36YerTLoAI4Tq1mBWQvpCOp5MfTjff4MO8bj4GtfSaEg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1619160362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=COpI2hRP60Vs2lnyODeiD9EhKAi0HtjdTtgcT2kw3Hc=;
 b=XVXMIiSoL7ZehE5pRQd2hsow7veSTYahNLh/QvNIKx3Es3yPioDrWLNDxXFPibFmxfQvUf
 XN71MyCQfFRc7LDg==
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <20210422101129.GB44289@ranger.igk.intel.com>
References: <20210422052617.17267-1-kurt@linutronix.de>
 <20210422101129.GB44289@ranger.igk.intel.com>
Date: Fri, 23 Apr 2021 08:45:52 +0200
Message-ID: <878s59qz1b.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 23 Apr 2021 14:32:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v3] igb: Fix XDP with PTP enabled
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
Content-Type: multipart/mixed; boundary="===============0292140996471576680=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0292140996471576680==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Apr 22 2021, Maciej Fijalkowski wrote:
> On Thu, Apr 22, 2021 at 07:26:17AM +0200, Kurt Kanzenbach wrote:
>> +		/* pull rx packet timestamp if available and valid */
>> +		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
>> +			timestamp =3D igb_ptp_rx_pktstamp(rx_ring->q_vector,
>> +							pktbuf);
>> +
>> +			if (timestamp) {
>> +				pkt_offset +=3D IGB_TS_HDR_LEN;
>> +				size -=3D IGB_TS_HDR_LEN;
>> +			}
>> +		}
>
> Small nit: since this is a hot path, maybe we could omit the additional
> branch that you're introducing above and make igb_ptp_rx_pktstamp() to
> return either 0 for error cases and IGB_TS_HDR_LEN if timestamp was fine?
> timestamp itself would be passed as an arg.
>
> So:
> 		if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
> 			ts_offset =3D igb_ptp_rx_pktstamp(rx_ring->q_vector,
> 							pktbuf, &timestamp);
> 			pkt_offset +=3D ts_offset;
> 			size -=3D ts_offset;
> 		}
>
> Thoughts? I feel like if we see that desc has timestamp enabled then let's
> optimize it for successful case.

Yes, this should work as well. Actually I didn't like the if statement
either. Only one comment: It's not an offset but rather the timestamp
header length. I'd call it 'ts_len'.

>
>>=20=20
>>  		/* retrieve a buffer from the ring */
>>  		if (!skb) {
>> -			unsigned int offset =3D igb_rx_offset(rx_ring);
>> -			unsigned char *hard_start;
>> +			unsigned char *hard_start =3D pktbuf - igb_rx_offset(rx_ring);
>> +			unsigned int offset =3D pkt_offset + igb_rx_offset(rx_ring);
>
> Probably we could do something similar in flavour of:
> https://lore.kernel.org/bpf/20210118151318.12324-10-maciej.fijalkowski@in=
tel.com/
>
> which broke XDP_REDIRECT and got fixed in:
> https://lore.kernel.org/bpf/20210303153928.11764-2-maciej.fijalkowski@int=
el.com/
>
> You get the idea.

Yes, I do. However, I think such a change doesn't belong in this patch,
which is a bugfix for XDP. It looks like an optimization. Should I split
it into two patches and rather target net-next instead of net?

Thanks for your review.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmCCbSAACgkQeSpbgcuY
8KZFcw//eFr5BqqCeafT7m7sSMhiuiG0plalsTXxSK877VCcoGMIMMjAks4moTNv
3oL7Mz6NkGsMCi/BXwwBTer/orNzEfEPphWV/HcShgnBErsaJtHydiFkL+KaKFBm
HPkghjIfN9bOehDLrLmXNWWLuLx7I1YWak+LeH7NGCNo4oAu2IvaDPxhJNDEpywk
5hC3oSsGdHLv81SqKc8pkGSEhdiNloAOuPDuOxAJTmC3eEgXszSMk5MYdLK8huDs
FzkHiGWNZgYRMR1lWePzhlrTIMQPf7J0Kg3zk5urmwQxNP3xg6ljsNOs3yMATKM5
DTyvE3PsRQjMRDIsGhBCk3N6OezoOfM0Iqz7bJLOJNwMgffyeFHQgvE1x0qSHatV
bLWl2pr5SaoGsPxrrmUgpbF/DoXRwfZhrC3fk9vznzHNNHL7HiP2soE+K1EgyYCZ
/7HbwRlaMjeELhtwueh2fuSXQoHJDq5QzoqnceJOirgXJmGiJTNZn9CptHtYQHsL
OCe9BC6XPcB53Tmyqf5IGqkdS40Uw6vqV7aAp/gB1HJfPHGE6F4Bqg5U5Cdzlqr5
PUH12N0JhvcbUnXpX/Rl0fnXDcmSbtv6heH0e+rQowJK5E1MlVz+wJoKpq8sndJB
WWpn5MbDOHzpzXxImgyJL9zY1HuS1sIZb4vjDfmiKHShgqXIXEs=
=yxE8
-----END PGP SIGNATURE-----
--=-=-=--

--===============0292140996471576680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0292140996471576680==--
