Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E551EB38310
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 14:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 094DE60C16;
	Wed, 27 Aug 2025 12:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nXCDnrQq_OHO; Wed, 27 Aug 2025 12:57:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B12C560D84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756299462;
	bh=lV5YY2KxYAYcMrdQAvjAnPLYR/NFDUczGvU03DTrv/I=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iCEY2D3mZE77Ty6Ewm4AS4xmf/+HU5fKfmPYx6PzSzFJZTirMhOrCgcgGRj1sdBz9
	 IBavHxlCl+bBuwUu3KY0dKIRwSsNB5WNLZt5GqoY/rftsbGweJzSPEx3vFEflCNQEc
	 RRssTBEx+R0uUrb8bEgnSZLwyVMZpXGadFdwURfiIOWdoZA2h2qiNhy30hOorvntj6
	 Iao9cN/8J8SI/JkJCyjGy3HEdpJVodmphOwItg0bTCauVgafyHX6QStJJxnTPzHgj2
	 aUFf9Pjl7umYK/BF1+o2TN/DcqjLHZ8A0XggE1Qo/kKP/QeJvCF/yo+SQ1q+fczvDn
	 Dl21FRMnJb4bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B12C560D84;
	Wed, 27 Aug 2025 12:57:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F797B8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9194440B71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OU3yCD1QavBg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 12:57:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D751E40B73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D751E40B73
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D751E40B73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 12:57:40 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jacob Keller <jacob.e.keller@intel.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>
In-Reply-To: <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
Date: Wed, 27 Aug 2025 14:57:36 +0200
Message-ID: <87ecswq5vj.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1756299457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lV5YY2KxYAYcMrdQAvjAnPLYR/NFDUczGvU03DTrv/I=;
 b=cYBYpS5ZxYCk3mIG9ubOSXUfqCVpqX/4k+pWHMqYK1jzVwF8WeW4BeE8CHUj9Y7RqlRNhB
 2+dHhvFQ9z7xorK05g0NxgRBQhbBP9ZvYCP/cfMC186R4DR4In+X92Vooa+G8SL60DrTkp
 NM2mjJoOt3BApEJskjeckAabU9MZJAn7G8IDaaQJ6lowzbcvQmZGkydmqDinif4EvdgafO
 pynEJ3tCGAjVnic/NOCrOerA4B6CEaB+FWnvmRHwSrq/3xx5WC6Q1lMxMgWquAUOsDBVsq
 4zvWQxedvFVM5xI6LvraW9nr8Y/15kvNt0OFoPtUi+yVQ8MCizGrj1Vj8REo1A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1756299457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lV5YY2KxYAYcMrdQAvjAnPLYR/NFDUczGvU03DTrv/I=;
 b=AHOjvoa10tLSvMo2jnKhGgp6pngYPLAqQyt6Xe6h+jonmBKlnk2fr0t3w4pfYX58JeRntY
 G+T0KYbHT9lchpCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=cYBYpS5Z; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=AHOjvoa1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Aug 26 2025, Jacob Keller wrote:
> On 8/26/2025 5:59 AM, Sebastian Andrzej Siewior wrote:
>> On 2025-08-25 16:28:38 [-0700], Jacob Keller wrote:
>>> Ya, I don't think we fully understand either. Miroslav said he tested on
>>> I350 which is a different MAC from the I210, so it could be something
>>> there. Theoretically we could handle just I210 directly in the interrupt
>>> and leave the other variants to the kworker.. but I don't know how much
>>> benefit we get from that. The data sheet for the I350 appears to have
>>> more or less the same logic for Tx timestamps. It is significantly
>>> different for Rx timestamps though.
>>=20
>> From logical point of view it makes sense to retrieve the HW timestamp
>> immediately when it becomes available and feed it to the stack. I can't
>> imagine how delaying it to yet another thread improves the situation.
>> The benchmark is about > 1k packets/ second while in reality you have
>> less than 20 packets a second. With multiple applications you usually
>> need a "second timestamp register" or you may lose packets.
>>=20
>> Delaying it to the AUX worker makes sense for hardware which can't fire
>> an interrupt and polling is the only option left. This is sane in this
>> case but I don't like this solution as some kind compromise for
>> everyone. Simply because it adds overhead and requires additional
>> configuration.
>>=20
>
> I agree. Its just frustrating that doing so appears to cause a
> regression in at least one test setup on hardware which uses this method.
>
>>>> Also I couldn't really see a performance degradation with ntpperf. In =
my
>>>> tests the IRQ variant reached an equal or higher rate. But sometimes I
>>>> get 'Could not send requests at rate X'. No idea what that means.
>>>>
>>>> Anyway, this patch is basically a compromise. It works for Miroslav and
>>>> my use case.
>>>>
>>>>> This is also what the igc does and the performance improved
>>>>> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handling=
")
>>>>>
>>>
>>> igc supports several hardware variations which are all a lot similar to
>>> i210 than i350 is to i210 in igb. I could see this working fine for i210
>>> if it works fine in igb.. I honestly am at a loss currently why i350 is
>>> much worse.
>>>
>>>>> and here it causes the opposite?
>>>>
>>>> As said above, I'm out of ideas here.
>>>>
>>>
>>> Same. It may be one of those things where the effort to dig up precisely
>>> what has gone wrong is so large that it becomes not feasible relative to
>>> the gain :(
>>=20
>> Could we please use the direct retrieval/ submission for HW which
>> supports it and fallback to the AUX worker (instead of the kworker) for
>> HW which does not have an interrupt for it?
>>=20
>
> I have no objection. Perhaps we could assume the high end of the ntpperf
> benchmark is not reflective of normal use case? We *are* limited to only
> one timestamp register, which the igb driver does protect by bitlock.

Does that mean we're going back to v1 + the AUX worker for 82576? Let me
prepare v3 then.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmivAMATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgn09EACundGRrW9W+DW5FnYEnEYmdeuhJ/Su
bZqDYZo6QCYGY1/M7hPGPcBM1USaiwdNDv/MnzhkWqdZmBNcIeQDL7PHJr+5MIMi
gFvQxpGAq6o95sTcMWXtOjfEHIRVb0BYC4badCIHsdAx5kP7n/389D1jYUxXM1dz
Ssj5mgAb1lYzsj4TdNKIFo/iHWCvSgSwKqrs51g6UUCLKi3x1ne4KQQiJVwoShD9
g8u4vuz3MS8d2Yga1q7OPIITHIL5nAgE8/4q2pbfKsaoMklickhtS5OWI8NpHjSe
GSFAeYh2svBI7DOPbaPUD8USTfW22he3DGdBERr6x+QJ6GyNSIAzQPLRJ2ySuU3z
8iKyR3U50wvC/Ak4hLzkj5/XsauNNdxKG3NhDcz+boj7blHM0KwUcJcAo5ogvFd+
qXY8dckvCp41yvieHCPlaZ2zs0xRzA3t66syt4oi1AGAJGBczfb0rLtsfGZWtUK4
6KfLutlEzkJYk83VekNxrDFW71VZ49EAGXC52cUmQFX/DhYR2BKZLOoor/wYUzf+
munnmDUXcH7d9BPlJ7FO19UdD4LAYs0FYhSjjgMY6msm29lYcCuexwFPJ3PJ0wbh
kPhta3ViNj49dD6D4AtCgwKeILaBGhPO7kBA899ZxjyhsboGhoemiW8k2zY/uNf4
SiFdfVM5vPlP4A==
=51tg
-----END PGP SIGNATURE-----
--=-=-=--
