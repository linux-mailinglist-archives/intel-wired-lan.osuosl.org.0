Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ABFA34E3A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 20:12:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F7AB83F48;
	Thu, 13 Feb 2025 19:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOJzh3qb2reN; Thu, 13 Feb 2025 19:12:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADF6083F4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739473934;
	bh=GajXLDN2685pWJo9xC0Nx2+rK1EwQ+K75rt+Q/4qOCM=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9ApuX+s/CG21gh8nCie2myllI8JjBxWSmmyxSHgL9CwHJdTNjHFzY2TFWf0nhQjiS
	 /616BEJIr2Bp/TBmsJ0oYMXiz6Lv1tlQBV1GPIldW2butdiyISc93mJrWtpZJ7MJF/
	 WLcGh5h8YOT+5fkQf+uzWqrj1GIlt4uprHqb7qRWSHTrUcg+dLmQ5fqJiqKdirg5/c
	 nEeuf69IH0AXrHNs6WIQW81/YB9Sp0mVM7Su6jNSNX8EPSX/4YTEc0/7SdKPKxbsxz
	 9RRNvWhQRyTJjdWi9lSj2lhkLtccWMWxZGyEtHU5LNVw7sbk076R3Mm4RhqEXdbgCR
	 KoLdsorwe+yAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADF6083F4A;
	Thu, 13 Feb 2025 19:12:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BEEC812D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 19:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB8C340418
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 19:12:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ROLjQ-Z8eSq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 19:12:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A579E40140
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A579E40140
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A579E40140
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 19:12:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Simon Horman
 <horms@kernel.org>, Russell King <linux@armlinux.org.uk>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>, Russell King
 <rmk+kernel@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>, Suraj Jaiswal
 <quic_jsuraj@quicinc.com>, Kory Maincent <kory.maincent@bootlin.com>, Gal
 Pressman <gal@nvidia.com>, Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
In-Reply-To: <20250213184613.cqc2zhj2wkaf5hn7@skbuf>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
 <87cyfmnjdh.fsf@kurt.kurt.home>
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
 <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
 <877c5undbg.fsf@kurt.kurt.home> <20250213184613.cqc2zhj2wkaf5hn7@skbuf>
Date: Thu, 13 Feb 2025 20:12:06 +0100
Message-ID: <87v7td3bi1.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739473929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GajXLDN2685pWJo9xC0Nx2+rK1EwQ+K75rt+Q/4qOCM=;
 b=NSpbBFE1aVWv4CUyVIyy8riKxiF2EC4/siz5rBzOHmG4U22DSfCQNKAOgi5C8eirgRh1ho
 bdpnUTW+2fqZgg1d0EoWomTjaGjCwh5DIOwHQ5uGOq1/YlWZ5OknnB3V+krWU5WnUPtR3C
 pQFv81WdqqMu/IaTr2hh7HjrZGpt+4lhh10WpZ699NXQMnaOfdymm8laArzpbRDDVjEsqb
 sTYUQsP1twvZz3YYXV6FwkT5Tb+ao6OTO3e5FJtp9tpsq5tsXzJaH78aGxs6IN++967t/y
 w8qHULwNTJ4XLP+NKRGHBOBJxV3Xn4wRNTLAiYbmOnmxPp6UzsSfdyCH3nwUnA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739473929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GajXLDN2685pWJo9xC0Nx2+rK1EwQ+K75rt+Q/4qOCM=;
 b=iZmKUni1dH4kiDDh/0GIAY089sWMZeS0ib4L4RxdVqhbyRgXwwEqBZ/AkFhfj6lhFMoShn
 QVU77G37xaLlkyDg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=NSpbBFE1; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=iZmKUni1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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

On Thu Feb 13 2025, Vladimir Oltean wrote:
> So, confusingly to me, it seems like one operating mode is fundamentally
> different from the other, and something will have to change if both will
> be made to behave the same. What will change? You say mqprio will behave
> like taprio, but I think if anything, mqprio is the one which does the
> right thing, in igc_tsn_tx_arb(), and taprio seems to use the default Tx
> arbitration scheme?

Correct. taprio is using the default scheme. mqprio configures it to
what ever the user provided (in igc_tsn_tx_arb()).

> I don't think I'm on the same page as you guys, because to me, it is
> just odd that the P traffic classes would be the first ones with
> mqprio, but the last ones with taprio.

I think we are on the same page here. At the end both have to behave the
same. Either by using igc_tsn_tx_arb() for taprio too or only using the
default scheme for both (and thereby keeping broken_mqprio). Whatever
Faizal implements I'll match the behavior with mqprio.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmeuRAYTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgoNMEACxHuGRV1xo/6Yr14uiqR7/m6lnJfHO
VTBNS6156eY78HOjVVIf+0xjxVFobt8kZyohcfPY147TRWrpHMg4ZQ1uLu+YGkEi
xDmY+wpwU/CN+/8bbfQwijBQ0fHYGPmP7k0x416USYh3v1pw4nS8jOoZ/jOyV8PG
fM9g5geb8hVNqHwqTSMXA/YUBsZWLHyU21KZ0HPHsw7bADdXLEMWyFhRJaVY7FSD
SOdNfVqqjS0JZVDjq9VG2ducxhT7pX+3eWvtbXQE389lfGTmksx/Y51OFlIbRmpj
pvWvsxdQbD1/eAhnf5KBUWekuFLuGnJfvWI+cj0+Bm4dHiICIQHUgPj7Hg7xNiPs
eF1MfoS6N0ZDoO5RvHRB8DxzqUhBIOtDnEhBSITVraGkvH7C6tmtOHWrx1NSnuAs
d6Ia/wwRTeCKvUfMWkgFdIAJU+FFWSAxbOjNEDPzzbrACs+/M7m6O0tpmZUWnYbN
pXmA3a8EPGgkWxVgXBmQkqaPqCp8idSlLE1K7n7vIumuHfxTkg3QHa8EU7lYogkk
jPBMvornSEgDfvotXaprSHKdW+J0kiGTwZ7xDX3tUcAofflSmtbxFhOeXa3rs8Js
v/GJW2S0mWcjeCRbJePDGeg1PSQwXGmV2PL6WBzNOhjSBvwluBguSQnrLhfYwXtK
icCpedLirXUfiQ==
=C6Aw
-----END PGP SIGNATURE-----
--=-=-=--
