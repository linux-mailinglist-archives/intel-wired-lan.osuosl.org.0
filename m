Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8A2B3846B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 16:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B140A60E35;
	Wed, 27 Aug 2025 14:05:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XNdBvQ9TDGhA; Wed, 27 Aug 2025 14:05:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32DBE60E13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756303559;
	bh=e5BVtBpCtOJyC1Pkcou+8CrjG0HCXemPLs+PbZIHaVE=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WJiiLheqyvzxJCrbU7aeKsI9AS6VaMQo4kd17FwtEOJgOugGXFtXdlpiI05AH1S88
	 cFwOAL+oD3XDmeP8gkkrzfO76cKvq4oLeO7BNThvRzfyAgwOWeDV2CDeRcEfDN2f+c
	 96GJK5cR0YBxtJscDLsUBsmNUefwrTG5zrgi+Xejt6C4cpJ06DeJABXH/sn3qAdMwB
	 BTyVacIFGmXBBcFYC4UoQ5WTL4k2pDpisaQ6EuwnFkOXauvFDqW0og5NXEGx/J2uNW
	 7iNK39OJvXVUtpyThwnfhGhajzeDcfL2rsuUe5mhv0Xb21BFkiKcc+eY3eYmKEaX+n
	 yjzDE0JIQve6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32DBE60E13;
	Wed, 27 Aug 2025 14:05:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EB54E114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDA0060C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ve8Ym-3NjocK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 14:05:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 427E860BDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 427E860BDB
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 427E860BDB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:05:57 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Miroslav Lichvar <mlichvar@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>
Cc: Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, Vinicius
 Costa Gomes <vinicius.gomes@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <aK8OrXDsZclpSQzF@localhost>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de> <aK8OrXDsZclpSQzF@localhost>
Date: Wed, 27 Aug 2025 16:05:53 +0200
Message-ID: <878qj4q2pq.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1756303554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e5BVtBpCtOJyC1Pkcou+8CrjG0HCXemPLs+PbZIHaVE=;
 b=3HJvKnkwWt5wuklmTFsJb/PzlNIcYTM4h7cjpMMqG5CQWR6XwrDxpFuYyDCdcvj/9VPvwj
 pXr0x5NRwx0ft2sJxyjSczgRlC/MHWS9YvBLIdH87DxuRAfR9f1tyPCQXj6+KyMstE+aJH
 P07PbJrfHlguQjqr55XZFcvSLudkNsHHwZwhMExEMLAv4v3742KNRU/2Lj6VCtZjKI6OL3
 ac1t/2Ch/A/1+f9JEHUgxM2B4amIKvo3Xalc4VvNVJqTwZYqbeRWR+EChd+AduTjG/lEG8
 3LWyItZLxsBVb8x9v6qQvMqyhQ9va2r16D2arm/EXQ+L9hYN7EGw8ZYYHf2Wxg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1756303554;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e5BVtBpCtOJyC1Pkcou+8CrjG0HCXemPLs+PbZIHaVE=;
 b=o9vwByD2aTF8gtV+jrXX286j+J01pXzFjFqxqa0SjLlQjrFlq946R8Zxg1mauNIkOSR+Qb
 7tKXucAwX6x5qNBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=3HJvKnkw; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=o9vwByD2
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Wed Aug 27 2025, Miroslav Lichvar wrote:
> On Tue, Aug 26, 2025 at 02:59:12PM +0200, Sebastian Andrzej Siewior wrote:
>> The benchmark is about > 1k packets/ second while in reality you have
>> less than 20 packets a second.
>
> I don't want to argue about which use case is more important, but it's
> normal for NTP servers to receive requests at much higher rates than
> that. In some countries, public servers get hundreds of thousands of
> packets per second. A server in a local network may have clients
> polling 128 times per second each.
>
> Anyway, if anyone is still interested in finding out the cause of
> the regression, there is a thing I forgot to mention for the
> reproducer using ntpperf. chronyd needs to be configured with a larger
> clientloglimit (e.g. clientloglimit 100000000), otherwise it won't be
> able to respond to the large number of clients in interleaved mode
> with a HW TX timestamp.

Yeah, I realized that myself while testing :). The default
clientloglimit is too low.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmivEMETHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgluMD/47MKWmL3M7Yq+ds4JgDuT8hQ0abUGI
e3sT05iKddJemgYsc9tyMQ8C8DfHVOwRKZ82/ZiZ8J5cltb/5kWWYYGKjDLU8tsE
pTGpDh/NEcEUZlC9Vz+joROWnZSsYIoMa5Nc758d+eNIXzlykesYjsnnMQ3uYb8F
CWzY1K97uz6lwBbKyXN2S4clWL1PwAKfVrYzkunTsfvpljq5JwdvmfP1dZuYqHmN
iEi+dlbMry8pMN3Nu5Gf0kin4TkjFDa2H4GFaMjdnFhh1srNK7cPzAGO3p6dIGJH
lHvqeHJp0a2xP86XZyrT9l5Lk25VEG3rFidmO2D5ekbAT2hTBYzNtnkmM+qA1gbF
jaH2VovcgJ1Okg4SxCqEtoXabcVP+/mJIlOmdpmUiGs4VeLq18DxjwBa5jJnBCzt
xgUuIXiCp/7j4bBQTdbyN8CYyV8hF+jCs5npSUCTeWqGFpkcOSUNWfxW84htwh5g
GyhKVAh8mUsqFBzjBjKIk3d5y7gStqWpAbZBnthrr8dFdxXCaGyWntkJcnuvldJl
fMghrAAC7V+16tDxxD4rNHk8TfXy1gJFzqQ9CAm7nAp5ax7MIwdyJ4a1yc7ARk5k
ndpLPY/Kz3f1i8WSZd9VGqJRFSuLNeONiTeTiHuwYoZICOwr7ljaX3AUoKMo5gsZ
fMMhDbY79rh5Xg==
=6dcc
-----END PGP SIGNATURE-----
--=-=-=--
