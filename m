Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D6B360BA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CB5284747;
	Thu, 15 Apr 2021 14:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DWi2_yICSb_V; Thu, 15 Apr 2021 14:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41E5884719;
	Thu, 15 Apr 2021 14:17:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 946AB1BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 13:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8324D4021B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 13:20:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="fvZSnk4F";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="SBf11oFU"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2tQKGrh3C_d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 13:20:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D39584016C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 13:20:07 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1618492804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=onhykUzXf+/EwFP50ypOXEHOWfV85WogyE7TB/1hxLM=;
 b=fvZSnk4FDhR0rUQNCp7zWEexOgxoM6fVTb9ZNTt5vDGlOCuznffQoguS38pGzczCXY2aWe
 GZJ71VPqw+QxMhMtP2jmJDceMMVwewWMfs9lfmtusBuV1VXQOrhGWLqqn3ZPYpfMAwZ0D9
 igpD0ywki7qTftlrQkXBbIf6Z4fGIB0bcAxZSGZpkMyPa3gn6bK5Ew98fg7J5bkmY7l49u
 fAL74nA914v8mpMXhevKVc4UWaxdSWc5tW6sLhMw/to3Sv/lANv9vR9LrH3g6kjXUggwZF
 fPkSo4h+a7XyepEISpt6Eqrf8Iqg1Ks5TqXNZrmtGhlAHd+pLUyNEIyYWj/Niw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1618492804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=onhykUzXf+/EwFP50ypOXEHOWfV85WogyE7TB/1hxLM=;
 b=SBf11oFUfY83MZ9Xqsy6ctSb7TGOnnDiPFQ5O70bBSUih03DjMnMwazqNb5e9RWtKE/xyq
 oXjvaJOPUwefoeCg==
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
In-Reply-To: <20210415145011.6734d3fb@carbon>
References: <20210415092145.27322-1-kurt@linutronix.de>
 <20210415140438.60221f21@carbon> <874kg7hhej.fsf@kurt>
 <20210415145011.6734d3fb@carbon>
Date: Thu, 15 Apr 2021 15:20:02 +0200
Message-ID: <87v98nfzwd.fsf@kurt>
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
Content-Type: multipart/mixed; boundary="===============7049808170733688411=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7049808170733688411==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Thu Apr 15 2021, Jesper Dangaard Brouer wrote:
> I have a project involving i225+igc (using TSN).  And someone suggested
> that I also looked at i210 for TSN.  I've ordered hardware that have
> i210 on motherboard (and I will insert my i225 card) so I have a system
> with both chips for experimenting with TSN.  I guess, I would have
> discovered this eventually when I got the hardware.  Thanks for saving
> me from this mistake. Thanks!

Well, both cards are interesting for TSN. However, the i225 has some
advanced features in contrast to the i210. For instance, it supports
time aware scheduling (IEEE 802.1Qbv) in hardware through the Linux
TAPRIO interface.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEooWgvezyxHPhdEojeSpbgcuY8KYFAmB4PYIACgkQeSpbgcuY
8Kb++w//cWfxRdKbXgvTOAikLaw1ZzNE1Jmpt+ztax4zcmZX8Qe07WuCarmTqNWS
qZqiKEsnLvxBsZo46qQEYBofELI5TdwmkUXODmHvOFEHng/SvN4dZd0JXqI1EriY
LY37FBl00xqDUrSrt+9AgjswEnxWxueOyH/xvONxjSjNXP8sh1jk6YbRi77+ZzMA
ggVBGyCyckmhqAG7KCC+htOM+OWvChz0VOCpWRGy6LSCjQSU10b5LnCOCT2749BP
sm+QdZwcxU+vCSdzAQF6WounBgCZono2STziYzoJxOKYk2as5i94hM14DpRaTSaz
vHyyp/nVwVa3Cq1mbF1/C9Rd3XGm5h3LlbSgXe60c+jPxhQb76vvBhYTseb3ZXuR
vnH4R0RwpFshbc4PnUthyTRtM1iYOdppySsBlXCrN1EWiR9tV/8yTwou9WGP07ko
r/gM3jPolQ0bMxe+Kvhi/D+82FABC069mlAeqxks/KUCEfSJvVrRwTSom+qadKfj
ilh7IgOb5EBXwKGWAuEcmn+TqphtLy+AB7T79dbANYzmV1f6aaqyZbsMK/xYvENS
lJ6Wjyhc2jWBAjcVi8gG+PWzSMuUckdwBBIu4v7f59ZDlIcAmIdMcNCeNqdJ9YVQ
f7YgKXk1CFM9WAJzQBky9vFPL02wBhysw3fPW3vZxRMNz/syfyc=
=KPkY
-----END PGP SIGNATURE-----
--=-=-=--

--===============7049808170733688411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7049808170733688411==--
