Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4B7A2BE49
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 09:44:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C966660892;
	Fri,  7 Feb 2025 08:44:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2dF2Nz7l0siq; Fri,  7 Feb 2025 08:44:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC1C60A73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738917865;
	bh=/YUQ/fILgc54btr/46zTjALdXn3Fvk+L2rzUrK8Xock=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=caWxsbfMq0ZgJFUD//EUaeVu3aN6VGJqHS8xVY+jQ9cypptD7e5TP4n/SEpjMigGv
	 HZuStk0JVysR1mL439iRlAOhnTXKTama1jP7quHVdCNnQ7A3Rc084boLGv1SLIS8uK
	 L06O+vGHu9rbzwdL0OTpTdgnvK0bG9yDwBwjoE/W6HTnv6+TAkl4QRWUJnaTgPrhiC
	 gyXPxl0iYW7O7miWPCOZ8MzLcuAVKcP5+a6Qs2xQ6ScsLOQxh3wtkyZYbmQ6lv9bK1
	 uAyJNgdwf4/a3N+MERvxnlypD6Qu4qiv0Yo01hAZ1/bEl3Kul9SIzQalfRP6dge8zi
	 TxudbEttbigAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DC1C60A73;
	Fri,  7 Feb 2025 08:44:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2566BC0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 08:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 098E340403
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 08:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JiniELIF60_u for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 08:44:22 +0000 (UTC)
X-Greylist: delayed 335 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 07 Feb 2025 08:44:22 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1F7D0401D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F7D0401D5
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1F7D0401D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 08:44:22 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Stanislav Fomichev
 <sdf@fomichev.me>, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Date: Fri, 07 Feb 2025 09:38:41 +0100
Message-ID: <871pwa6tf2.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1738917523;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=/YUQ/fILgc54btr/46zTjALdXn3Fvk+L2rzUrK8Xock=;
 b=DNG3E55oMumLP+OxTyPwucv7X27zS2lm28lD9JC5O3D1lSclgyqRTlD51/SYyB3QvhyeYa
 Axi2kibW0OazKV1yYwnzcdcZy9s8ZhnM+lDUKbAgWVsenaNsDH79mK+dp+UtgaQ2rtgUJx
 5VR2Kwdo56S5B2YIzwqzmD0r+EC1Kn7glZ0UcVOKqq8rSpKzX5wCouOMqzJnBUAWD5tCP1
 aWTqa7ir/hqH2dK+/6PROG+QVyweAnEUWuB1iF/K9mstj+oCqMp56fmBfnAlzfVwhO95+3
 Vxn63ioKHkK3q0RiLmywW5E7nZx7rBcigbVMU47Wv0yEyeyTHWYYybFKLTCrtg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1738917523;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=/YUQ/fILgc54btr/46zTjALdXn3Fvk+L2rzUrK8Xock=;
 b=KZWqJSd90PgDReyirmGu+baYSzWqBPR4NT8ZJ9cY8gcXdRIvI7NAQ4M+khb7ohE0rzAiik
 F0PXrhhbHST/0oCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=DNG3E55o; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=KZWqJSd9
Subject: [Intel-wired-lan] igb: XDP/ZC busy polling
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

Hello Joe,

I noticed that XDP/ZC busy polling does not work anymore in combination
with igb driver. This seems to be related to commit 5ef44b3cb43b ("xsk:
Bring back busy polling support") which relies on
netif_queue_set_napi().

I see you implemented it for e1000, igc and so on. However, igb is
missing. Do you have any plans to add the missing registration to igb?
Just asking. Otherwise, I can send a patch for it.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmelxpETHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgra+D/wKi0eOYmVv55JcJAPC3Xn+o/z6WMtq
B85O33kxcbKLdI4Q+VGbULeMUdJAo0BTdUJJTgFgFwlWQnLiD0XvHT6iduhL02/s
Qa/pT4tGU5B6+fV6etQIs793r8ezrgHZkiPslAI2wHJ/9uWhQilGXPhw5j5sB5Gj
qdSttpOGRgzxeKm5BroSkNBQ1uRV52rqedGGs4TMLq69/IS3B20tyT4ocphBB0Ig
rQhWN1q6n9OLO8kQcuSIgqPhVdT4HRy0y4T4iHzoXmC4K2ixru7WlSdVHwdSn14K
LaM8lzvUS3V+7OxJ4J3gSmrQDQi/SQ49bRMTUcsFc0lXJ5VSfe95Vhh7vGZplbyV
eEDUHZV1doqBhEHMWlLWhUj62bMHHYYlLqnk891tJ3HH7Vg6qDRq48+rvq3l+cDx
ARq8LYMurFk4u/3E2trAawqSjvojD8OIFuMpCM4ODzkHqtoBCQAIBE1y0x2jDbTt
qHufPcfNmxSZ7/RpS8VzOKghRNkt6zr8XTfTNqdEQypcLfjLc1toH/nY2LPccSZR
qxwRKhplh1MP/l+5ra7OZKU4IzM/jWiD/dCGwKD8bthdmWqJfbOYSyyRoU7Ss0V9
i7LvonC4XtnfycNivIpG6JtG1X6xOdqUrmNkXMvzQ4LoiV1qIWJ9rSS+yw4j9Lk3
AJoIsz2u6/tIWA==
=p631
-----END PGP SIGNATURE-----
--=-=-=--
