Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8EB956D1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 16:23:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE62060816;
	Mon, 19 Aug 2024 14:23:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w59LeIT_zG58; Mon, 19 Aug 2024 14:23:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15CC060818
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724077414;
	bh=+mxhW/AMCmI2oaiMdzAW2dtIm1Ckb87i0ukk7+cIY4I=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L6xzpU7HsJtnCpyLSFPXxH09Tx3rCupUjyam6nDV9nvmao4xAJDOnYwwjemKfREUM
	 Ud9gOpXUFeIb40lvO7WD5ZrCrlmf1oygW+LVnpBT4RGSlNdvT8DkliuK+XQYLTn34s
	 1M3i5YnAMmp3iZCtCcBYNe/hc4D5Pb0EkGnlbSqKclnEQr22NAis4BOgH8P8PQl0Q3
	 K010fXXebayjVF/SbhHitKLeCv7tFKL02WQVg5I7JJTf30QybYpb8ypu7NPxzDSIli
	 VoirKfsjr0yF41sYBThFYTqUm0ZaIoDTWOxH0QMZU3jnyLaajcQNwbopfo+focmzjk
	 1Hl1hHjoHX+/Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15CC060818;
	Mon, 19 Aug 2024 14:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8ADD41BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 836AB40491
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:23:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qt7ozOCZmpo3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 14:23:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75B7D4048F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75B7D4048F
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75B7D4048F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:23:31 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <ZsNEU1OPt6PYhBnT@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-2-4bfb68773b18@linutronix.de>
 <ZsNEU1OPt6PYhBnT@boxer>
Date: Mon, 19 Aug 2024 16:23:27 +0200
Message-ID: <87jzgc8ucg.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1724077409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+mxhW/AMCmI2oaiMdzAW2dtIm1Ckb87i0ukk7+cIY4I=;
 b=iUrS1NI9pTD61ICXAO/4wBIl74n5KrnCcoLLIRJtqExUDJFbD1TH94gwxGx2c/gXnkFKqJ
 AXLGlogabypH0IYEP8XLzSgI1K/taJz+aoG5649kccSCcvGzzEpvzFXTJ5Efk9UBmcD53H
 D4mzhDCo9AI0tpOgrP3VCpmIlmbBICmHQP7l7P6DXr6CLUeHDfeYWaTeoU9LaM6eTbK4nA
 UtSdON26Ea2SPv9tmmdTZjMldDHUsIJnCyyqsBVFTijffukQLhZNp+gYz/Gcrl+0XaomQd
 Yzz9vLdWcAWANhhVOU5CbZRwl5Wgb+pKci/BqLD59bVXwrNcUL4o4U2l1c546g==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1724077409;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+mxhW/AMCmI2oaiMdzAW2dtIm1Ckb87i0ukk7+cIY4I=;
 b=edGRjFn6pqNQ9iqMPbs5B4pEJsRIwpS4DDzyET7tE6SMA5PZz69RByR20WOQtkjZtEu3Ot
 AXxiyks0NnqfBYBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=iUrS1NI9; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=edGRjFn6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/6] igb: Remove static
 qualifiers
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Aug 19 2024, Maciej Fijalkowski wrote:
> On Fri, Aug 16, 2024 at 11:24:01AM +0200, Kurt Kanzenbach wrote:
>> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>>=20
>> Remove static qualifiers on the following functions to be able to call
>> from XSK specific file that is added in the later patches:
>> - igb_xdp_tx_queue_mapping()
>> - igb_xdp_ring_update_tail()
>> - igb_clean_tx_ring()
>> - igb_clean_rx_ring()
>> - igb_xdp_xmit_back()
>> - igb_process_skb_fields()
>
> How about inlining some of these that are small enough?
>
> - igb_xdp_tx_queue_mapping()
> - igb_xdp_ring_update_tail()

Will do.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmbDVV8THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgowCD/0ep7WJYeDlyu9YzP+Hs3hojDR8zDf7
bZuuR+QZbpX2BFP7pa15MaaRzcIRumkqC4gIse67H++iEBedii9FmntU0LyeaMS/
p6ThB/E6JY7+iCDJfTCTXNJ5A4uf4g8y6qLtizLWjsNhUwKW5HeiT2h9eHDYnJAU
mo9KRYvjG3EFMmskiO7fxzhF5cobwoTgrIR2gOH16pwqM5B3j2rbIRjwNIriYbo5
Q8FQBqXWPMYwxSmY1SEiHOQ5LEp8uM9VyT244UrqT24rCENLO5xKjzyFfx3lma+s
xRgQCtYmmTQhBqC0ujozgiB50TB7yO8PCn/NEfZDEEP8sz8F3gMBGa1YFbpq/m0J
Il8hatVhxOfMBVvseDhEW0wgEZQ/zW25YvIP1C3z/hxAz0u/RYaaioRa+HdRlws2
zp7gtqo8E+jzKG7kK48i6CSikxBI/aauOZQ8ihg76+cBy7SVz7Veeq6WmQ/brJX+
UArZJQZd37cNjDtZALxgvEVAXZgyogXEdfSYiBdfGHKF4Z33i0dpr83tUBi6gWOm
9824+CM91+qJxCbl25HyAC/OPrS0YOlUxusoIxDYiRQbDOpUgw79YjqclpVhn9oi
Z0ry80HGjTeleQ3pg7Xp9JSL1nlofr3OM3mTPpkah7MHhIUhLc7zA1P/rWMFsTXK
Uc+jR5/+VjJ0yA==
=1bJz
-----END PGP SIGNATURE-----
--=-=-=--
