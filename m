Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DAF6ADC73
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 11:54:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECAB360E6A;
	Tue,  7 Mar 2023 10:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECAB360E6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678186492;
	bh=f3yefCd5SvXBF5tRRtaB476Dd847ZbTF+2PXY8wCf68=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kUIsbjOHqByG99G8131K/fsQcU3abyD26VkrQBTUmV0+tuGZf/+6z2oAvBiucMPWH
	 ILkWCqpMFuNbBll80aE40jsMOn+L4R42X3a0Tu+8oofVE242Lf1KXlAl5S/jHw0qCI
	 g2WDsEDnSEVNfMgLR12W86RIOsyeR15YvHm+aC19qwJ/A+5xn3qbrtNCASJeh5/2WM
	 d88NOJMzPuNp3q/TUenPDFc7NnNKpFKPvFg+UIrL8IpWqmyEWwYa7Q+ELzuV9+h6wk
	 wgj0nITQPnxZ+uwA6dg+8g8iPi0gaCTxbJmNHHggCAnjTpuRD+RF7GVtRrGmy0sTko
	 qHPM6LNZGnlCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iv1QXgQEZSNX; Tue,  7 Mar 2023 10:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C504560D5F;
	Tue,  7 Mar 2023 10:54:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C504560D5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D3461BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:54:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34EB481E05
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34EB481E05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2LXbQKRfM_DQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 10:54:45 +0000 (UTC)
X-Greylist: delayed 00:08:03 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FB3F81E04
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FB3F81E04
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 10:54:45 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
In-Reply-To: <20230307064531.68840-1-takahiro.akashi@linaro.org>
References: <20230307064531.68840-1-takahiro.akashi@linaro.org>
Date: Tue, 07 Mar 2023 11:46:33 +0100
Message-ID: <871qm0j0ty.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1678185996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ObrbMdqU0lu6uA2iywkZi4GzQ4lsKGLzl32oWr0AMDo=;
 b=iI2WSac5gOkObudYyBTatJRMEs0fUHGDQvBGapyWIDjotk26dC7mENEZdetZlMDcr1H3sU
 yORxD5yeK4H0ab5InNnD3dU/O3o9njkaEGWIe2jmkF9z0tAcIwVuEWC14qV56q71JnV94M
 wCHR1ONZSLAZOcIGl1n4KxPVyUJ+FWd5SAFwr7wJuAs+s7C21j2TqwWkw/ywABXiib4mrF
 xUhaTRtOXS+N7/EDLYGyTyZMISnmNLJtFF68HM9nqU9HZmh8lsMuKJ0uFfioNOVZYs75E2
 6hxyFUQkGvdak5JvzWsDZMB1rzcy/bJaIR6DoH9I0iFVeVmGoEOpmWuYu3R/LA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1678185996;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ObrbMdqU0lu6uA2iywkZi4GzQ4lsKGLzl32oWr0AMDo=;
 b=/9fCRj23q8b0aobck8YMLr37aZ55iJK32vXqyEe8c5W3Cri0FOTN0XeK0HHOjskZviLzjj
 5GHSFQbkBlzcUfDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=iI2WSac5; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=/9fCRj23
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix the validation logic for
 taprio's gate list
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: multipart/mixed; boundary="===============3991988058004450203=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3991988058004450203==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Tue Mar 07 2023, AKASHI Takahiro wrote:
> The check introduced in the commit a5fd39464a40 ("igc: Lift TAPRIO schedule
> restriction") can detect a false positive error in some corner case.
> For instance,
>     tc qdisc replace ... taprio num_tc 4
> 	...
> 	sched-entry S 0x01 100000	# slot#1
> 	sched-entry S 0x03 100000	# slot#2
> 	sched-entry S 0x04 100000	# slot#3
> 	sched-entry S 0x08 200000	# slot#4
> 	flags 0x02			# hardware offload
>
> Here the queue#0 (the first queue) is on at the slot#1 and #2,
> and off at the slot#3 and #4. Under the current logic, when the slot#4
> is examined, validate_schedule() returns *false* since the enablement
> count for the queue#0 is two and it is already off at the previous slot
> (i.e. #3). But this definition is truely correct.
>
> Let's fix the logic to enforce a strict validation for consecutively-opened
> slots.
>
> Fixes: a5fd39464a40 ("igc: Lift TAPRIO schedule restriction")
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>

Grml. Thanks!

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmQHFgkTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgpbnD/9FfpobNY/3VeArd3CCnEwhBaXypTLq
0CIwh5kAtIG0Z5DDB26zvnLEVr6crYmA1aD472A6x/HUV49oj6Bmefs4eWmqO6Gf
6lEpRGR1v9kfXGg2AwG56aPythVBwN55BWqbrQa4yCy5fIiCKhoUn4hEFeCFSq+a
YFMSkVNTojVfrIhPqGL0Qnnb+VBtxRxT0dkK4aNmqxjpzG5Q1S7VPvfxkcnTyaU8
sUKvr7APcmdthuNr2Fm03ba/aooPiZkGG3x1F0H/il6GpgTThqh/EKuqdieM1s6r
XRhBe9rkEYGDb7WDZa0W1uG1PGzKBbcBXTvbS5dS9FWQyOA6ubJFsoceI59/AbWM
4NdOpsuSgixwuKtEZvY0j9hHgsFOSJmoBdxZJ6ywFAPefq+sj68hfUferZe1E1bx
UWRdbXaDoGpl7aYnAsgEu8M2bdMCkvllimE8lowyfkZvAr5BNOXeHSikYVAuikGk
Em3X8nv7Ae7D1W76aLc2AgeHI9yze5Tp17aVDROGf6gdrrd9E++czizldRLzLc3r
VMkjB5twPf062J/W9Oi4E1AByE0rRYlo9tVwWW5tN5zvcavStslQddZ7aOQAPkfL
HD5c/tYh2FK7RhDF3CqW5QET52Ygx3vy6kPv6BkItI/41u/puhrKAJi0KZBCwXWZ
ZDoZG6x4f8SpUw==
=lXNq
-----END PGP SIGNATURE-----
--=-=-=--

--===============3991988058004450203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3991988058004450203==--
