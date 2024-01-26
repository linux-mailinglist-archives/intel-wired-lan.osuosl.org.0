Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 592FC83D4C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 09:37:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C666484E77;
	Fri, 26 Jan 2024 08:37:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C666484E77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706258254;
	bh=X0SiHFkiWKAhDPmg71AH4QepY4u+nFwTSDqxTdOMzWk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aiQMCx3hFBn6ug0nS51Pk1eaeTnn3nhwFBciSIPVGPyMxaX4EvMMZklk3IiCWdM7o
	 wBWP3F0X6JFRU9dT5n0m66i2hVAJPInYu6WH/vVljJhI6jjHk+TSuAK+O3Fsk7H90k
	 rhEndkC3pnaViVADCwXishYnEKDZYFvx57lOT1VU/LkLeDKAv//H/dY9C9GMtZ2g8j
	 FC68qgTFCuiRM0S/9AxVTqoEK5L0nP2Gb4/rIJJEDQ/X/zf5OJ/ggQYgegfT/E8DWL
	 fKJKXjpYdqSRJ5q+WNXqLPsnt+15r//L/WSbSTbGfr8rmTlaiYhQ2fHu53qlE62VOL
	 3T6bGoXIA4xkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y64UD-E5kzFD; Fri, 26 Jan 2024 08:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5CDA84E56;
	Fri, 26 Jan 2024 08:37:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5CDA84E56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B27541BF420
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 08:37:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 846BD402B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 08:37:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 846BD402B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JKr3C09tL4EC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 08:37:27 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BA5A4370A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 08:37:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA5A4370A
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
In-Reply-To: <2caec578-a268-4e82-95df-9573a52d6b7b@lunn.ch>
References: <20240124082408.49138-1-kurt@linutronix.de>
 <de659af0-807f-4176-a7c2-d8013d445f9e@lunn.ch>
 <87ede5eumt.fsf@kurt.kurt.home>
 <2caec578-a268-4e82-95df-9573a52d6b7b@lunn.ch>
Date: Fri, 26 Jan 2024 09:37:22 +0100
Message-ID: <87y1cch4n1.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1706258243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=X0SiHFkiWKAhDPmg71AH4QepY4u+nFwTSDqxTdOMzWk=;
 b=Y1XN9KY+Zez1/kABUGhTpJkU34KqkcIla1oU/I3WlGX5pktP1jFkmDOMCYZLDjHZ0/RFeR
 9BTV0VylKIpim6M3icMN1FzNERTjmp5jFe+KI7OFHn9H6gyPWGk74+/3qPGOPJP7XDyWmN
 LKg8R1WwblRon9FFG7rWphdzCDpACL9PgafFfXVJiSRdkN/hsopGdigr8NdC/ivai1Y+ow
 1KLH9QSvrdqG58yIyP4AYLpz0U4ZWxyP94cDtPYE/XFB7WuSrcqOAIOKaXK7+aHynJ+tYr
 mXwOKgey68/NSH6Uk6TkWPEkHJQtGkxh6qqu3Ut0LYSHEWBDjuwxPrSrgKpI9Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1706258243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=X0SiHFkiWKAhDPmg71AH4QepY4u+nFwTSDqxTdOMzWk=;
 b=b14yElSzKVIyJw270bzJi4GidrzEs6/pg81dP08mL75cAW2NiAjVKl8ggd65nAPJCjicaV
 OBcilCkleEajx0CA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Y1XN9KY+; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=b14yElSz
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] igc: Add support for LEDs
 on i225/i226
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu Jan 25 2024, Andrew Lunn wrote:
> On Thu, Jan 25, 2024 at 08:31:54AM +0100, Kurt Kanzenbach wrote:
>> On Wed Jan 24 2024, Andrew Lunn wrote:
>> > On Wed, Jan 24, 2024 at 09:24:08AM +0100, Kurt Kanzenbach wrote:
>> >> Add support for LEDs on i225/i226. The LEDs can be controlled via sys=
fs
>> >> from user space using the netdev trigger. The LEDs are named as
>> >> igc-<bus><device>-<led> to be easily identified.
>> >>=20
>> >> Offloading activity and link speed is supported. Tested on Intel i225.
>> >
>> > Nice to see something not driver by phylib/DSA making use of LEDs.
>> >
>> > Is there no plain on/off support? Ideally we want that for software
>> > blinking for when a mode is not supported.
>>=20
>> Plain on and off is supported is supported, too. Should be possible to
>> implement brightness_set().
>
> Great.
>
> Its actually better to first implement brightness_set(). That gives
> you full support for everything the netdev trigger has. Then add
> offload, which is optional, and will fall back to software for modes
> which cannot be offloaded.

Understood. I'll do that.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmWzb0ITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgh8tEACuu9QsIaTI4/ZbjIT+yLekZ5GSd91w
xHK647qj4dpL1hObVIimTobuL8qKH5ZOoRRT+kIp8crjnZh7xFFAtfY4frCSa/7g
SizPhBVmSGg/sKV6TnYUsKvuVVgp54jAz+KWx/OLE5cnQQSFcpqyk+c0PuV/xQZr
lS2+yIQz0ucK4GuqM6hJ1xjR+p0VtaSFoUASKAu7wZbWaAe42KDW8zsWibvnBLCw
zx8fBDtxHI/Rf+E6YLpfKkd9+3AVO39Zvp2m9kRipdULXvyul8mBjfiU7K0/pYbP
rMbYxlicLgzFDyYE2Q87cEiUnhWLmHmuQiI9dRMKGcPmC2nfkIN/eZ4Qky5nt7pD
RrGz8AWT81a/NAorTXh59WikubTUpA61S5krIOb6eMKbyd4bJ0g4Rz2Yj45u1Z5T
ypOBLdt7NJnqdKe4Yn9vHZyP89HdIp0JgSrPoXGzsw0l4YLY8lEUuK44YFzenC9U
ZINUmQKRHVSfHtSvwLOPMMMO5tnwC7+gxJLaHFCyy0rhsDmoyZqhBDnnfPRCpa+M
OVxzNqgfebn7m5eh8/77FdPabZZS6YipbU7I2dz/tSKfhK6WHoPYQmYPlyJJZMqU
ivBR5sQ8NuJGVrrk+sb/rPPYmnGEydedu7Qkiq61KxYyW+n5sPpsiMptgBLW+FuF
YO+3hg52d+Ji6Q==
=ref4
-----END PGP SIGNATURE-----
--=-=-=--
