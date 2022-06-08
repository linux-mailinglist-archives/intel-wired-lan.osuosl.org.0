Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 862C3542166
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 08:00:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B381160FD8;
	Wed,  8 Jun 2022 06:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1dvjJiYLoa-y; Wed,  8 Jun 2022 06:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B859960FC8;
	Wed,  8 Jun 2022 06:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E283E1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 06:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3250415BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 06:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="UDfWj9LL";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="AtfFfi+J"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2WUjjJvmYlc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 06:00:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A56C410D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 06:00:43 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1654668038;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Xdbpm7rEw5pv+R6HDC4sqpJiOYOsoxsHStsgWZduYnM=;
 b=UDfWj9LL2TRANBMSQkcdwwRcRRfpu3E/zzefmRdAzb5KkIGEhAHVb8EX3FSTKiOP6zrYDd
 VT/XTBQaPUpqFcwTIZvO+XnN5x7gHbRNWQKVSzt9SUrfFuD01moQvC7vZlVijrTwcIVmSw
 lRJBAdHo/8agJSgpn3I9Dlca9jnNiEhCSkQtmSs7SfQIj2aamWpR233hxm2uQws8ERwtWj
 AKOFHoI0E3E4W84LBy9bVmlhgMpN6jmdF/a7A+SVPcxCsmPaOpeOqDGWeBrSinuVN1MTfD
 uDda1MywXnxdKyvZEMbiPBKvN/KI/C4hzLyf1LJp78h77ajKoV0lMIQ6+YPFcw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1654668038;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Xdbpm7rEw5pv+R6HDC4sqpJiOYOsoxsHStsgWZduYnM=;
 b=AtfFfi+JsCobOQ+a/eHwTJEBu0zbLQDpsS3keyz0BnhEsnYuOywUm5qiDVbVaU/doGPyWB
 w1hIItaPU4ZkN5Bg==
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <87wndsmm43.fsf@intel.com>
References: <20220606092747.16730-1-kurt@linutronix.de>
 <8735ghny8m.fsf@intel.com> <87k09tar5e.fsf@kurt>
 <87wndsmm43.fsf@intel.com>
Date: Wed, 08 Jun 2022 08:00:37 +0200
Message-ID: <8735gfzoca.fsf@kurt>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Lift TAPRIO schedule
 restriction
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4945551875475708602=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4945551875475708602==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

>>> What I have in mind is a schedule that queue 0 is mentioned multiple
>>> times, for example:
>>>
>>>  |   sched-entry S 0x01 300000 \ # Stream High/Low
>>>  |   sched-entry S 0x03 500000 \ # Management and Best Effort
>>>  |   sched-entry S 0x05 200000 \ # Best Effort
>>>
>>
>> So, this schedule works with the proposed patch. Queue 0 is opened in
>> all three entries. My debug code shows:
>>
>> |tc-6145    [010] .......   616.190589: igc_setup_tc: Qbv configuration:
>> |tc-6145    [010] .......   616.190592: igc_setup_tc: Queue 0 -- start_time=0 [ns]
>> |tc-6145    [010] .......   616.190592: igc_setup_tc: Queue 0 -- end_time=1000000 [ns]
>> |tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 1 -- start_time=300000 [ns]
>> |tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 1 -- end_time=800000 [ns]
>> |tc-6145    [010] .......   616.190593: igc_setup_tc: Queue 2 -- start_time=800000 [ns]
>> |tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 2 -- end_time=1000000 [ns]
>> |tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 3 -- start_time=800000 [ns]
>> |tc-6145    [010] .......   616.190594: igc_setup_tc: Queue 3 -- end_time=1000000 [ns]
>>
>> Anyway, I'd appreciate some testing on your side too :).
>
> Sure, I can give it a spin, but it'll have to be later in the week, kind
> of swamped right now.

No problem. Actually i'm out of office for the next two weeks. I'll
update the patch afterwards if required.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmKgOwUTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgnqOEACKdxFr2sRg1n7xQR5Gk8Tch/q16Tqg
qQrUZXlNcv5dMgBmyUXWLXXT/K3u4QOE9djy1KsS74GYo8fdfcXpOUHaeNxKn1ZP
RajheEG8Jkjo5Es2pLITqyMkTZ+Toc0EFC6uuuAZiTRqKb/5LXYQSHlWiLaav/UP
MoG+5/7NIAg/a+xAP9jtEUw6aALAH/18mHeHITsIqG8Pu6z05gvGMlR/VqYOU1tr
DAwv0F+2YCLx20HimMvLAUe0ar42fbaUkcL3bYoplihaoJev+A22FmNNRGsk6qtP
3a3vw9VhbtiGTmKgOdivzklBKk5k1lAPPLngTM568qD6nhYp+oiupwa3vj0wD4+5
XajAmlODe9hQAbXVuTOFu78Enkp9D7rHl33+BChTsx1BYTORGe9w8E9eTJ0PtNRJ
2smDUOAb2it7h283a/oaIr9p2tQF8BD4mNyFOJmkSMiTVX/PwC6VXIRyunYO6i1+
4pOfChu8ibDN4zoXnB0o8ANHsQQ8j4NoP1PJ56953Iahp4i95OB5ZmEnRz9b8aOn
ppYI8RvyQr4f9HEHYvGUeNPSgy7lMYlYzSVGTUT8P69QAQwNDqeMxP4bzyXMPAcx
2h0SgiAdnRcaziJ3Q6A6RC6J99Lg3g3+LKHxVjVumDNHI9RaODqoGQztTSuavA7n
DSoug1zWqshy5g==
=j42X
-----END PGP SIGNATURE-----
--=-=-=--

--===============4945551875475708602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4945551875475708602==--
