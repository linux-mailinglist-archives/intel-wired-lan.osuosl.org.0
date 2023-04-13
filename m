Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D67E56E0797
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 09:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F6C341E74;
	Thu, 13 Apr 2023 07:21:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F6C341E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681370470;
	bh=0cmWMnNKB2IUAU8AqdqIXkdnovWRoC7ZFfjxP9ZEGhg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tn9nM+IMqPVEiyoncI9S9TxvsmeHLq7WXtEt048m24RdWePMePUnNOWwwSl77Xvyq
	 vXOU/lgwTUgn+972mH9OFx1edaxUsWjKYopDr7UbcUk4tfssqAp4cqT4qypK1sFRdI
	 eYnZd7NETT/ME7wit5eMZBq0DSGpg4FBIChIgMYxW9DwEWa+WHPIaA7vVqimUCYBOR
	 iX5Qr6cRQfcadq+TRj0IDI+YEdHyyetP1Cn31/pYpZAvMO1se1YFb+Q4SJgTDcYvE6
	 NMNJ4v3Wfw5cM4edRi2b1AxW+dproxHppjkY5ewi+3Gt9z4IDkDcuHmVdU7ptx66iD
	 GsvIpxqBosSAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cyaD-pff7nZO; Thu, 13 Apr 2023 07:21:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0C10418AA;
	Thu, 13 Apr 2023 07:21:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0C10418AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 601101BF288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 07:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4496F83EDF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 07:21:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4496F83EDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a1XEXVp16_9F for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 07:21:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10C9283ED5
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10C9283ED5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 07:21:01 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jacob Keller <jacob.e.keller@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
References: <20230412073611.62942-1-kurt@linutronix.de>
 <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
Date: Thu, 13 Apr 2023 09:20:57 +0200
Message-ID: <874jpk2qp2.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1681370459;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Gf8o/adbOI2wRHyAYHOuUl4w2xDShw502p6uq1yjW/o=;
 b=jd0nFk877ojN78H+xnoNZJ21TJY8IunD0mL0OMSkHT8cJWKHhKCmjsXX1SZDtHp6OLzOZp
 NICA8IzoOwv7zD95uzyVTkDBmzx18xtGUPeNehe1RiPxbCqrnHuNaiW1zgsUpZOsMhihpm
 2ZTYF0YzDIuwhgmX+BstzaRDWE0w1WA+nM+mEIrhwpgeNgnbBSQiRjvCKEp3ygKClUMPlq
 K5uJftvEczJMAuN1U/U4sIGgzf/pEvTXBAg3Xk4/AMA7SzwSs2L6VQbv4jesLq2vYkX4iI
 /QHeBkApg8ydOjrkLzqp1rD0dWqlSlTfd8sFUwqs2iRqr3Oa6KaKh+3nb+OX6Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1681370459;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Gf8o/adbOI2wRHyAYHOuUl4w2xDShw502p6uq1yjW/o=;
 b=55cEtF6OKAcYwqDBb/O/ndO9DLSWPvumJVkEmWH/bw0Mg3gePHry7BysvkfLRWfZsiUbcp
 geJacF7BdpyxHGAQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=jd0nFk87; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=55cEtF6O
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Ong Boon Leong <boon.leong.ong@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4207764579087586661=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4207764579087586661==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed Apr 12 2023, Jacob Keller wrote:
> On 4/12/2023 12:36 AM, Kurt Kanzenbach wrote:
>> High XDP load triggers the netdev watchdog:
>>=20
>> |NETDEV WATCHDOG: enp3s0 (igc): transmit queue 2 timed out
>>=20
>> The reason is the Tx queue transmission start (txq->trans_start) is not =
updated
>> in XDP code path. Therefore, add it for all XDP transmission functions.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>
> For Intel, I only see this being done in igb, as 5337824f4dc4 ("net:
> annotate accesses to queue->trans_start"). I see a few other drivers
> also calling this.
>
> Is this a gap that other XDP implementations also need to fix?
>
> grepping for txq_trans_cond_update I see:
>
>> apm/xgene/xgene_enet_main.c
>> 874:            txq_trans_cond_update(txq);
>>=20
>> engleder/tsnep_main.c
>> 623:            txq_trans_cond_update(tx_nq);
>> 1660:           txq_trans_cond_update(nq);
>>=20
>> freescale/dpaa/dpaa_eth.c
>> 2347:   txq_trans_cond_update(txq);
>> 2553:   txq_trans_cond_update(txq);
>>=20
>> ibm/ibmvnic.c
>> 2485:   txq_trans_cond_update(txq);
>>=20
>> intel/igb/igb_main.c
>> 2980:   txq_trans_cond_update(nq);
>> 3014:   txq_trans_cond_update(nq);
>>=20
>> stmicro/stmmac/stmmac_main.c
>> 2428:   txq_trans_cond_update(nq);
>> 4808:   txq_trans_cond_update(nq);
>> 6436:   txq_trans_cond_update(nq);
>>=20
>
> Is most driver's XDP implementation broken? There's also
> netif_trans_update but this is called out as a legacy only function. Far
> more drivers call this but I don't see either call or a direct update to
> trans_start in many XDP implementations...
>
> Am I missing something or are a bunch of other XDP implementations also
> wrong?
>
> The patch seems ok to me, assuming this is the correct way to fix things
> and not something in the XDP path.

AFAICT the netdev watchdog is only started when the device exposes
ndo_tx_timeout callback (see __netdev_watchdog_up()). For igc this
callback was introduced recently in 9b275176270e ("igc: Add
ndo_tx_timeout support"). My guess, as soon as the net device has
ndo_tx_timeout it needs to maintain trans_start for XDP?

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmQ3rVkTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgibTD/0S41/87v4PI039H0WiQE3mh+bEA9rP
I8IbnifWL8hhJGedZBCucDwNuSsXADxiHrSLKVGdz0UjgFJExkMGrSEvBFrV0Zs4
MYuMTlw/wYTF4KN5YBYqkzCsIuzrl+yGdhtBDcuTaxl0YLzF6xUP7yALAtyZgY+1
+u15zKytCypI5FDB1VqfNiOc3kw6NtfvCxTZQwPuBC8ZP6jF+qrG0xI+ldnjnXl3
0qJyRQCdE7+cfY7/meuZRtipP6WLcOLjUofUnHVCnXmLituzWgY8ZS/nQA9yiEvU
Wo9OdTcUmof8R7cLKcQZbtf4v97CtAy6oYbONUHPDePcmDJhAO92fvmGty0GQH32
oBfOVCy2fzJ9lf4rjOKRmXYauCVtGmZDTAFcQakN1T+PXYdZku9RTp06I+JTKhgh
MPl7tyCYw4Vr576N9GLc928XIXB5WR1ADokAvgZ6zQtiVDKnM+az4MHmXfo4rHcG
BXm2zu4zQrC/DkW8CsfjcdCaloa62OlxthfD5kCkvh/Ew70E+DCJSeQGfTr4Dxkg
oO9GmxaVziXwOGuyYR4giygCHmNbPsSPK2uWRQ5VcTRjZwzYpV8Rv2NKy7ZHRsgk
7swx2IYnVijlnWri2S4rsMXxqR5QkfqdCmOTXlwWukWUE9i8JTo2/EX2kx2Z+/j3
FNJeiexMFBINug==
=iqmd
-----END PGP SIGNATURE-----
--=-=-=--

--===============4207764579087586661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4207764579087586661==--
