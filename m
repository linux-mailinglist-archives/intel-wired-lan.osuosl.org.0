Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1027335E5C1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 19:58:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8E9C60C1E;
	Tue, 13 Apr 2021 17:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1iMER3VB94FS; Tue, 13 Apr 2021 17:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A44560C16;
	Tue, 13 Apr 2021 17:58:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E99751BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 17:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7065405EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 17:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="2ls2iDkJ";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="cvPB+KjZ"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k5WmfUeuEj3c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 17:21:06 +0000 (UTC)
X-Greylist: delayed 09:46:11 by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA66640E58
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 17:21:05 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618334461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/FIguiC0JpPqnEHwTEVTe/PehrMSgAq174+EKyhr82I=;
 b=2ls2iDkJEgxLT8BBbuxpsz+mBg1wpRLaZvIiJwhFSRwgoiRMRnJzbT0sYoJa4inNSgR7n+
 yUBE8eyjM1W4GLKVGy2FAZbaqa99UbF2JxojJdoSpuVrV+Lgu3IpVtB0uw71Bb/TdOs0lH
 lj+1e99uaxO9VNKrRsD3NzbXge6FqqhohbcsoUHjPXr+qj7ED0Pofah6oLDFDg2JYcgqwD
 mQDojXqvWnX1rlEtXGPBu0JZRmSWr345WSwhsX+zYTuxXSBbAzGtaeCOolXeXbgsMSo5n2
 YoVytbBJ6VCsPsJ9spHa95w6rfgnfj40aRiyEFkhM88KW948okBz7aQPZev+Hg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618334461;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/FIguiC0JpPqnEHwTEVTe/PehrMSgAq174+EKyhr82I=;
 b=cvPB+KjZ1ydaw7+/5jmL7AtRi2v45vBIWXzrEbqnaXnlvGRBOeJQzWM2dzpHFR670qb0/5
 pSegCUAMuXU7XPCg==
To: Alexander Duyck <alexander.duyck@gmail.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>
In-Reply-To: <CAKgT0UekqPNQxV6PzpEeis69z3e3YNcaFyot=nD7w26hLxPX2Q@mail.gmail.com>
References: <20210412101713.15161-1-kurt@linutronix.de>
 <20210412162846.42706d99@carbon>
 <CAKgT0UekqPNQxV6PzpEeis69z3e3YNcaFyot=nD7w26hLxPX2Q@mail.gmail.com>
Date: Tue, 13 Apr 2021 19:21:00 +0200
Message-ID: <87fszuyubn.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Apr 2021 17:58:38 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC net] igb: Fix XDP with PTP enabled
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4925421365699620633=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4925421365699620633==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Tue Apr 13 2021, Alexander Duyck wrote:
> On Mon, Apr 12, 2021 at 7:29 AM Jesper Dangaard Brouer
> <brouer@redhat.com> wrote:
>> > +ktime_t igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va)
>> >  {
>> >       struct igb_adapter *adapter = q_vector->adapter;
>> > +     struct skb_shared_hwtstamps ts;
>> >       __le64 *regval = (__le64 *)va;
>> >       int adjust = 0;
>> >
>> >       if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
>> > -             return IGB_RET_PTP_DISABLED;
>> > +             return 0;
>> >
>> >       /* The timestamp is recorded in little endian format.
>> >        * DWORD: 0        1        2        3
>> > @@ -888,10 +887,9 @@ int igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
>> >
>> >       /* check reserved dwords are zero, be/le doesn't matter for zero */
>> >       if (regval[0])
>> > -             return IGB_RET_PTP_INVALID;
>> > +             return 0;
>> >
>
> One thing that needs to be cleaned up in the patch is that if it is
> going to drop these return values it should probably drop the defines
> for them since I don't think they are used anywhere else.

Yes, of course. I'll clean it up before sending a non RFC version.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmB10vwACgkQeSpbgcuY
8Kae6A//Y46kXPei0XtDNGOtHdy8H2HDncTe48K7rSLmFB2pYeSlsBGsh5LrXJeK
7o5qc8ZQ5dZq1zkdJZvvfZurP7/t2S/c4+rh3w0fEUH/UF1Zpu0P4ZNEcA6zOBrb
cPm/nLQZydrfreTcN3bJ2PM3/+80K8FLfF74M/wc47Wi7biCYx94ls2mNoihvy1z
2TWwTY7EeoN4YElwyIXFGKIqgkuTCMt3hgBtVFnzLCnl7xRu9snHLiCFo5PiNKRT
qpC79qUHcqtu39VQHlkvHM9tQvnaMj08okgllnvbLX+XftX+ZyEROO5O5AGjS79E
h5ftqZ6TBqxrOGT3z1M88vlSSBClw2+ZoOXBMCg87Ir4eO5vZwCblvmzipZ5m5Io
aVqPmUsi3gGNwdvySsBGAweJ4cTrteHyHVBDmB4pd+87IpxCPHh/vj3b1v+kjMcJ
aUx7Ken6cu9Sx5YifWE33Ad5PbcR1dXjBIQUuf3HKTodX6swudzLSEsKdEN1Nz88
Ekg+V/YXuV7zDYH9i02OfUTJovD4+AplgNSE/JE3VqQa9G7UrPekMpBJp2DkjwEL
1N/d0pYPARMDC90TpGbaD1FmXjKPs45Zwe6NEJtoF2d5nHrQWa+biNgs/EnGkfOx
9ZTEhIBgfmdjG1yetmoQmXZtlPTyKYMoaTV4HjrQ/aGnE4zOKhw=
=HXr0
-----END PGP SIGNATURE-----
--=-=-=--

--===============4925421365699620633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4925421365699620633==--
