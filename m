Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DD1360BA5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C149584747;
	Thu, 15 Apr 2021 14:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id czNJhfJmm5md; Thu, 15 Apr 2021 14:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E229084719;
	Thu, 15 Apr 2021 14:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D28B71BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD818401CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:16:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="d04iDxqa";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="tDGZPdPV"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BkFfmOu26vuY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 12:16:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F27A40129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:16:42 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618488998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=d8i7b4mBlEgaESrmLRVp1HQxG++cCPSc6OtknPI/zOQ=;
 b=d04iDxqa7GQot9UhuNz2kn4hnMWF+aOQkOnu3wLjrbtzODV8luCkNKR1gTdauJeXBM82+f
 uuYboZd2ELCCXeYPDYx3m+pbQE+T4DiYTIRuJxLbdcBJXn1OQnyVZYrt7nDSktKu9p2UnR
 U/6bczP6vW5BSQ5NoGqVQ3dok8TTzt77nfr3El2tG0kvsWS6ZGara6ZAeOfKb19aDgqKhg
 v5ZrADtiCzwlgDzes9Rl5la1CfDfkJnUhmrje1DIIuC6ItHst5vAl/b+SHqeFhOtDFWBpg
 NKbhOlk6q1KK0FJPG/us/GXDTuHElgKgwaSwLt5OyNJl0MDpn7+meuDjhs8+fw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618488998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=d8i7b4mBlEgaESrmLRVp1HQxG++cCPSc6OtknPI/zOQ=;
 b=tDGZPdPVTqxqRjggQ7l0XiEzA8AzTTCyVtNQyzUCLjsiseO+wFU2G5DlBjQLdzRQlDdfyr
 g74qMKdFfkXRRTBg==
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
In-Reply-To: <20210415140438.60221f21@carbon>
References: <20210415092145.27322-1-kurt@linutronix.de>
 <20210415140438.60221f21@carbon>
Date: Thu, 15 Apr 2021 14:16:36 +0200
Message-ID: <874kg7hhej.fsf@kurt>
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
Content-Type: multipart/mixed; boundary="===============1418140340640637300=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1418140340640637300==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Apr 15 2021, Jesper Dangaard Brouer wrote:
> On Thu, 15 Apr 2021 11:21:45 +0200
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
>>=20
>> Tested with Intel i210 card and AF_XDP sockets.
>
> Doesn't the i210 card use the igc driver?
> This change is for igb driver.

Nope. igb is for i210 and igc is for the newer Intel i225 NICs.

|01:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network Connec=
tion (rev 03)
|[...]
|        Kernel driver in use: igb
|        Kernel modules: igb

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmB4LqQACgkQeSpbgcuY
8KaoBg//a9XcbfhzKEgjiDZBhuhZz94UXxYnGdzMDXwBYfRPHMCVS/Ck2dp93J42
5SZtzICTcJ0j0/v9af0YbYUyMaObglMWrg2llYyCvmRbq9Q8Zb/6Av+GzjsCBHKJ
E76Cj6KGyfdT5z4ijhFUUmqLAFECNiyjP2TVL6DZmhRs4EHI7WeA7E4aGYzuiOmM
M/aqkaOL+wsDyZLkvPPMQGuDyWI83m+4DPfflOBwWLt422nm3trRnG0awAGkBwch
LNkRneWaFMSQy4fgJIsa7QZcmnhFOM9Ro2suwcmZkH7gt2A5m5nL9zZqe9FxW2zG
oHgvSJPUKWC+CTaQ2KwBsBRfPXtAGBqgkNFFjEy7Vk+VK4fKaWtX4sQ/S1U37D8Z
LNINpIPas4b4ogLujIU9DHa57QhEjDXNMTgSzQQX4MQc1DoO2knIPf+R0HDjqEe6
5Ppu0V70Nssz+g3iPhWdcxdqi1d0CTjxGiSfPS585ru/1SlqBV11nou9q5qxXVMw
QaJy1aWED+VEFUoMP58XJ+scepJYZwd2jqP+qhz2OmuoF/iIRW/+kkYrHVLO0TZq
Y7yQYQOK5E5+n9K8NYL1Kzcoo02vVb7kCEY05szXg2q4vNjOlTidgZn6BOECRsb8
NaU2cPHMfdXDZM6/p4gNt4jcYcanp3Tp9fxkK3gaog9iEMC2tDU=
=PbrL
-----END PGP SIGNATURE-----
--=-=-=--

--===============1418140340640637300==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1418140340640637300==--
