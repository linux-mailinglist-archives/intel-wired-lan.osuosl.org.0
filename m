Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FC535E13E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF1F3405C4;
	Tue, 13 Apr 2021 14:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cq0mNxSzHZZd; Tue, 13 Apr 2021 14:19:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A99D5404B0;
	Tue, 13 Apr 2021 14:19:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A47811BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 07:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C11F400DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 07:34:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Olx4Ci_j7GHC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 07:34:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3C09400D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 07:34:56 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618299290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/LfaSmfHgZ7FhwZDnDyWBTYgSSsbi4xbqPkH3xgE2QA=;
 b=U1rYNIyYBvJL7cg2KvL30AZRInQmZ8/etlrwjB2BxBSUhLQV1jUCQ3t+U7CwqVtPP3hyYH
 nGVVqejphQx69o113MhPCVJmXusUelycu12rByi6KEXVPcKt7ehQyY6uTFRFxhzSOFFdxq
 oNpMDwjEA5Mhz6+RddV6/c9aqPrp1JF1t9t+pTfW8DJc7WyjH1qt1HnP+PhjvLZDvz+LOa
 FFIFL0e2/IAQs1igq9iqHwi95xeJEk1wFEHdYkvSHQ1lYJPK0SOb18aROwKuZQDLssJWn1
 J5hQzKxkThZWaIgrYnsMnV7uByZWv+YUDO+uCjgmoWNHWbYeG4SCm6Ep0H3Naw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618299290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/LfaSmfHgZ7FhwZDnDyWBTYgSSsbi4xbqPkH3xgE2QA=;
 b=xmTfrrOSQsQaStYrHcrKkgH3R0zQpU6/tfqmMYiJP2/o6AFOHBQmn/QsVV3C2WTpdXk7AW
 ozpGAPJzKEbnhiCA==
To: Jesper Dangaard Brouer <brouer@redhat.com>
In-Reply-To: <20210412162846.42706d99@carbon>
References: <20210412101713.15161-1-kurt@linutronix.de>
 <20210412162846.42706d99@carbon>
Date: Tue, 13 Apr 2021 09:34:49 +0200
Message-ID: <874kga1vty.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Apr 2021 14:18:41 +0000
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
 Alexei Starovoitov <ast@kernel.org>, brouer@redhat.com,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Lorenzo Bianconi <lorenzo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============7269132124820014605=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7269132124820014605==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Apr 12 2021, Jesper Dangaard Brouer wrote:
> On Mon, 12 Apr 2021 12:17:13 +0200
> Kurt Kanzenbach <kurt@linutronix.de> wrote:
>
>> When using native XDP with the igb driver, the XDP frame data doesn't po=
int to
>> the beginning of the packet. It's off by 16 bytes. Everything works as e=
xpected
>> with XDP skb mode.
>>=20
>> Actually these 16 bytes are used to store the packet timestamps. Therefo=
re, pull
>> the timestamp before executing any XDP operations and adjust all other c=
ode
>> accordingly. The igc driver does it like that as well.
>
> (Cc. Alexander Duyck)

Thanks.

>
> Do we have enough room for the packet page-split tricks when these 16
> bytes are added?

I think so. AFAICT the timestamp header is accounted. There is
IGB_2K_TOO_SMALL_WITH_PADDING. If 2k isn't sufficient, then 3k buffers
are used.

The only thing this patch does, is adjusting the xdp->data pointer
before executing igb_run_xdp() instead of doing it afterwards. So, that
in the eBPF program `data' points to the packet data, and not to the
timestamp.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmB1SZkACgkQeSpbgcuY
8Kbblw/9GEZbAegavmAgPDxBCxupwmoVoxdsy+i7Nw2V5vk1L1eSVSwJwHiXL0Rs
00Dhns8rjS/FBS+mmDFdyAkz0OvADLsLf6bWE25RtJvgvetKidyq4Y/KhscOvU/7
Y07ll2KvpxoDT1Au4z3igJHllYt46KJSYnWrS2Id5rtWt9TQS+bC9EtDwMSaGAkK
krMikylRNHKwFAy4dzO+guThRSDwO0PlCATtVQ3vON47J+MxqcE/Z+5Jl5vP691X
+oXtpcodQ1lVbqxcX66BCduI+QnjBDxgYWhtDOZiDVhU+sqSDldG+MjTbfTdCOUv
PekfeQT64IaEYFocgIiYX570V0b++7fagSBSNnG7eV4+HNo4ujsWcfjnZCF11KMU
7qITP/BLK/n+OtpCnpQM6rv+AgSMY3+f3YswiEvF8at3/K77SStNRlB8mtqw3xaF
wxPQFIepGGzRHq60W3JX7KunyKIpGmg2IzMpi93p3VA1TG2uYAyDMOdqXcy6OcML
4LDlylLmHvfHRNwEZaQDbWXXdvGoj7A2p74QsoY/cSObVs7wCGL/D++BVramrSmY
jdgQrmpBJNNtZNzjjNrUE6Dm60dmbeSSHCssgUplCzL2sY+T2C+EwHpsuEXDjZyn
Djd6091Bcbo6bXfpDjY5ISyTuNI5N9XAGtis4uyr9HhgggET3dc=
=sh9o
-----END PGP SIGNATURE-----
--=-=-=--

--===============7269132124820014605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7269132124820014605==--
