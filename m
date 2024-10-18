Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F449A3BE3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 12:45:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6414B40825;
	Fri, 18 Oct 2024 10:45:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j8jxSug97fEH; Fri, 18 Oct 2024 10:45:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4250B40793
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729248348;
	bh=Kskf9UDezxVGJ4aXQTni8no/qq21DITWsZfuuEZ1kwQ=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DTwr4s6nnz7e3fdSg4wDBTqkQEx33uUQ4A5wmeN/0jdWXKBMOVgtj50BwJsU18WD2
	 6tj2UeJ+VGh5aaknfp6J9Mhx7rUoU06njbMGFmiV8wNH5o9/roFVJGPSTOxrdwpyw4
	 Cu/nsaQVFIu2Ryletu6KEk/W89/sTGrdOf8VFbf0QvAj5XI1X/lE01EicQ1CqK7YYa
	 6ZhoG/DXMwgtIGCvPliJbg+/awC8FVCZEAFVR8m2qzR5PvvWj/6lNXc1Gs9fmDlk7m
	 c45Pgh45dlmmLld5B4Pb3bzehwxcCi4LVFQZ/SRBlqy+0REAd+l8ldGWp1Lpnh4+ak
	 aDqJChL0nE9Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4250B40793;
	Fri, 18 Oct 2024 10:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 390C92072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 10:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 126BC8134E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 10:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6QZnAhMux38z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 10:45:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 953068176E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 953068176E
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 953068176E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 10:45:42 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Richard Cochran
 <richardcochran@gmail.com>, Sriram Yagnaraman
 <sriram.yagnaraman@ericsson.com>, Benjamin Steinke
 <benjamin.steinke@woks-audio.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org, Sriram Yagnaraman
 <sriram.yagnaraman@est.tech>
In-Reply-To: <ZxIzRJlXA91Bapwt@boxer>
References: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
 <20241018-b4-igb_zero_copy-v9-6-da139d78d796@linutronix.de>
 <ZxIzRJlXA91Bapwt@boxer>
Date: Fri, 18 Oct 2024 12:45:34 +0200
Message-ID: <87frot8zap.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729248336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Kskf9UDezxVGJ4aXQTni8no/qq21DITWsZfuuEZ1kwQ=;
 b=4yxB3N6TbaZy71+8aqvd7ML7qf907GLVntdilhKlZZRann1yDSITkz7a8HQyjxZDcUxCmG
 Y2QoiIsnJhI8B6fPz/8jyykIDsdN8cdX17R7U9z1ZAq5Ce/Mx+SOoLxaEbYdCenJVu4t/L
 GPDlORusEl4P4F4zotOUcVOb27GjhrAVj9wjTJ3/2aoYkUFvovmaftSdSHTrB4RxSrYcYh
 BSrLFTeF/4AICBdADIQC5LDU5tmmzwEUiERNQG6LRRxMi3oqaT1YI73JBotXeLVrVBquUz
 uQlQeUPDsNZp3xZh670VfcXv+gNYwSBJLwAz1SouGKwrydgE4rCZboi2szJwQQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729248336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Kskf9UDezxVGJ4aXQTni8no/qq21DITWsZfuuEZ1kwQ=;
 b=8opP18O8dIu248QLLC9BECp9981hLdkusjOEtW96d8ONnz112eSzAKk2u4wbu/iGyyqmul
 ifmA7I0scCzrSUBA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=4yxB3N6T; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=8opP18O8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 6/6] igb: Add AF_XDP
 zero-copy Tx support
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
Content-Transfer-Encoding: quoted-printable

On Fri Oct 18 2024, Maciej Fijalkowski wrote:
> On Fri, Oct 18, 2024 at 10:40:02AM +0200, Kurt Kanzenbach wrote:
>> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>>=20
>> Add support for AF_XDP zero-copy transmit path.
>>=20
>> A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx
>> frame was allocated from the xsk buff pool, so igb_clean_tx_ring() and
>> igb_clean_tx_irq() can clean the buffers correctly based on type.
>>=20
>> igb_xmit_zc() performs the actual packet transmit when AF_XDP zero-copy =
is
>> enabled. We share the TX ring between slow path, XDP and AF_XDP
>> zero-copy, so we use the netdev queue lock to ensure mutual exclusion.
>>=20
>> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>> [Kurt: Set olinfo_status in igb_xmit_zc() so that frames are transmitted,
>>        Use READ_ONCE() for xsk_pool and check Tx disabled and carrier in
>>        igb_xmit_zc(), Add FIXME for RS bit]
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>
> I didn't give you my tag on this patch in previous revision, but from what
> I can see now it can stay here:)

At some point you did [1]. And I didn't remove it, because it felt like
only small changes like adding the FIXME and re-using the xsk pool
pointer were made.

>
> Finally, thanks!
>

Yay :). Thanks for your review and time spent.

[1] - https://lore.kernel.org/intel-wired-lan/ZsNzLvH38p%2FcWwI0@boxer/

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcSPE4THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmxjD/4x2gifNl9lijcJL5SfPTDKL1Tmkr61
/shaBi4j9ucmzG23CT9xIgbCS004WltMximufeVHSpJPwWFc0IYgejOrsr3MTAcJ
pXgveA/s6aJjondxglSWv3RAr11lmyl/qI2EtXNtVV2xFaURti0ygJZ+HTUh2POu
8vDMWqCVFyRMpsQPt2N6WdeLRLEpDKxWPkPZWu0pR7tTWC5pfv51tbAEv63iED2P
Md+IgOolqJkC3YKJL61KPg/XK/ztK7ttrLYG+3OiQp19MTj8FVshmR1QGmYsS8mx
2Z/462emgRJGLynRTbRPA1zsy/Qr90V4ox7YeF4BNgCEUtCo3WP2bx7Ib5whi5P/
c7FaqKDmgA0rFsHgdxwgTB13qNJGPjS5I7zHt5+JMZH4rUmGipp0E8/+PfZgyHI3
FPLpJJV+6E6WxOtUBkEMfW+7cuFHrp+OCuXkG7UikVBNbALvNYMXFJw7bGKNHT7S
4RsnxipOMA05ORwnzyHf2G1HGS+kqZl09k5X9vh4vzH+5YuvdfPByVF8ieX3/HP/
qWS7TwaBWoKJdSU0G8EpjKwym18iXm1dWOIVjdU19q1Y6FukuNYkDUwK54iohaRh
2Tp9NYv1iK3E6g311O9krYMTWDE9O+aYYHx2/L0xHEZgH/gmtirnkfFia1vDlBk1
+bVdqz00q5I+eQ==
=iCBf
-----END PGP SIGNATURE-----
--=-=-=--
