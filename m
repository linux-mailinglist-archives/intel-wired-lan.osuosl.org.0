Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04512B2FC1A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 16:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02419843B9;
	Thu, 21 Aug 2025 14:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f0kVLTuFqY5v; Thu, 21 Aug 2025 14:15:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657AC843BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755785753;
	bh=+a0n6yg5YpwXfaAe6ujzgjNE4xpyhtOIVlYowEYwLrg=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=833L5f9OG+o1JkOZrYqDxHbRzmwlGpNm7FjedvN0C5t8dvXOhP1t+hjIUxIAUCMyJ
	 bKYrnPTyegbVBQs+Tkcj9VNcyqIMbcegR0ojYWR6dkD7or6P/Qc/fCIYOs+YkM/+Uj
	 etMjxHeXiL26Fk68SqJP6cfWRx7PR0kRPFPdhXY2nyvk6WW6CTv6hfrBXunbXEqTAm
	 k9HqrR5UYhzwYH/r5o1MEtUpMA3muzzd9oqD9Uqk6U4TjZsDbFNip37A2n87r5UpT0
	 ZF1yKms+NsnHtCjVUfvMsy6mfLdcGfuVSIje5IzdyNbgTHN7XFyStsf51TITpbQ7VQ
	 dbKtaVKDXdaMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 657AC843BB;
	Thu, 21 Aug 2025 14:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CA501E0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7AFB843B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4JYCXSM61UC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 14:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7E07843B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7E07843B8
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7E07843B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:15:50 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <aKcYFbzbbfPXlrlN@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
 <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
 <87ldncoqez.fsf@jax.kurt.home> <aKcYFbzbbfPXlrlN@localhost>
Date: Thu, 21 Aug 2025 16:08:02 +0200
Message-ID: <87cy8ooji5.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1755785284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+a0n6yg5YpwXfaAe6ujzgjNE4xpyhtOIVlYowEYwLrg=;
 b=rOJN1s2I/sErJtAxlWiWnB/Zke8rfX5pHhgKnuJQhY0gujy7bJOZAFxINvVwtQCdRiDomg
 q/59rcaMI2QUKsjAi08IHmxr2L27Brps4a5BOIsPlBfgFRFIgRrs5lQ7sTZkA49HAVO1fi
 Z3CVQyXuUysK5nrl7JccVn87I5ey8sXv67nmtM2/GZ9nOLxkF/bBcImoOjmNOHQ8o5T47M
 esx3djGv8IrRoaM3NqgUlrjCDxseIyO5MGTbC3dMeK5Qj+1rgD/rh06qfc5DgjECLiKePn
 ZMnpeaG1XtDLOW7EOCEgh9GQiJ2YqBAwgDeIfs+ZnMwKwE0GEZ+zlMVOqS+2bw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1755785284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+a0n6yg5YpwXfaAe6ujzgjNE4xpyhtOIVlYowEYwLrg=;
 b=gYn6KMMRYMBjxIKsLf+ZQx0i51JXsE4/aG/YsHP5zjYn06GV/GyJXXWrBzkgSIwjNZDwS8
 LoM2A7jzTKu6GKAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=rOJN1s2I; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=gYn6KMMR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
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

On Thu Aug 21 2025, Miroslav Lichvar wrote:
> On Thu, Aug 21, 2025 at 01:38:44PM +0200, Kurt Kanzenbach wrote:
>> On Wed Aug 20 2025, Jacob Keller wrote:
>> > On 8/20/2025 12:56 AM, Miroslav Lichvar wrote:
>> >> But when I increase the rate to 200000, I get this:
>> >>=20
>> >> Without the patch:
>> >> NTP daemon TX timestamps   : 35835
>> >> NTP kernel TX timestamps   : 1410956
>> >> NTP hardware TX timestamps : 581575=20=20=20=20=20=20=20=20=20=20=20=
=20
>> >>=20
>> >> With the patch:
>> >> NTP daemon TX timestamps   : 476908
>> >> NTP kernel TX timestamps   : 646146
>> >> NTP hardware TX timestamps : 412095
>
>> Miroslav, can you test the following patch? Does this help?
>
> It seems better than with the original patch, but not as good as
> before, at least in the tests I'm doing. The maximum packet rate the
> server can handle is now only about 5% worse (instead of 40%), but the
> the number of missing timestamps on the server still seems high.
>
> With the new patch at 200000 requests per second:
> NTP daemon TX timestamps   : 192404
> NTP kernel TX timestamps   : 1318971
> NTP hardware TX timestamps : 418805
>
> I didn't try to adjust the aux worker priority.

Here's what I can see in the traces: In the current implementation, the
kworker runs directly after the IRQ on the *same* CPU. With the AUX
worker approach the kthread can be freely distributed to any other
CPU. This in turn involves remote wakeups etc.

You could try to pin the PTP AUX worker (e.g. called ptp0) with taskset
to the same CPU where the TS IRQs are processed. That might help to get
the old behavior back. Adjusting the priority is not necessary, both the
kworker and AUX thread run with 120 (SCHED_OTHER, nice value 0) by
default.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAminKEITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmnuEACsD6c/HGINjfd4LUKYXkIyGMzWu+/q
YiRzYk51/ZKeYPDASuO4pgA7Zlv5kfoPz7lfs7J+b9Pqkn7xR+aUk63Yjw5c9qI+
dYZ8hOXG1UR8SX9dtGITHhDc4J8cBQZdIQlyHLXBgMQ8Q1n1gdDud9lakTXTU5ld
CYk2MmWpxqA7I0/uwx7FyUfIoeLVWt3QMThsVsUHXVuchCp6XN5ubptdKbdQJqrD
na1/S+BnccF5GUc9KX5LCG14jzNVgVvV/O4C99RjeCAv7krMkJpl4Lee0oxrVZpV
ofg2qY9uKoUZGh6SelPtk74sI7G/CbZvN8AQLpg47BpvNtUZtwmj4HK00DPiiPTu
mzwrmhoTI/s5fcdwKsYNFlIaA73RN6xGE7RCOovGnMb6guyMYyPb6Uco3sQ/qtfY
JePd8Jrvac4MV7OR1FH3mat7L5R70v/NWKqVanQlLn5ofI2zEaWAU/poeWYmob7g
wwpBv3yDRrDOXvl04JCY3eFh6G5Kb8Yc+vHpgZ+VAQfOJjyME7UkySTS42PZwFPT
tgWaXqJVSLClObVp/gptJueaRpzE6FUalJxkKrc6ICxgqsJBCrLuKBqe0NxR8zef
9TCmer4t3Jwo9JwiHEVI2LRIrS5R6RzSInoc4tvODRNb15tEps003vuHHbkGBIgJ
xFPd492TdGdDtg==
=qiXK
-----END PGP SIGNATURE-----
--=-=-=--
