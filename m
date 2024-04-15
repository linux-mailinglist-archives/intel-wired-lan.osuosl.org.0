Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42358A5289
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 16:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 684A240AE0;
	Mon, 15 Apr 2024 14:01:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cn-P3fzxD33I; Mon, 15 Apr 2024 14:01:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E5A240AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713189660;
	bh=8CkXYS21B8SH8DBLj2VWRkV6viWLhTMjW+3OPz7/pzQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CKLvGzMsmhxVRbkAFiNmBLePwNcp9wdir7BxeQcYV7wSAHyRLSQIce9iGfj4XrjtG
	 dcMa6/sZB7kgYzjholFjVt9P5pT6XK7YMwpuuC08CilVCBf4zTGGOakTbLoTRKZEgC
	 06XU4eVhDBsPA3J4pLbUETVjYeDP2DuLXcqv2khuImCMDGsBu9uc8E+ootTCgXY2W0
	 KdqkmXL3nzNba5SVLpSLZuYzIOX1A7z+ZmDpn/cZ55kfQDB8staI/iwsdHCu6ba8P4
	 3w0rb556IS4T/Y8NqcWnQv729N+a8OOpzF4eKY9kTQo9EPgYf1BhJHNCd5daPHadFt
	 oiYh42psyfU3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E5A240AC1;
	Mon, 15 Apr 2024 14:01:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85A121BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 14:00:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71BF081257
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 14:00:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YlYH0cDCKUcI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 14:00:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F419980FA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F419980FA6
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F419980FA6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 14:00:53 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Lukas Wunner <lukas@wunner.de>
In-Reply-To: <Zh0xguaCQB-V8ckO@wunner.de>
References: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
 <Zhubjkscu9HPgUcA@wunner.de> <877ch0b901.fsf@kurt.kurt.home>
 <87zftukhxl.fsf@kurt.kurt.home> <Zh0xguaCQB-V8ckO@wunner.de>
Date: Mon, 15 Apr 2024 16:00:50 +0200
Message-ID: <87ttk2k9nx.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1713189651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8CkXYS21B8SH8DBLj2VWRkV6viWLhTMjW+3OPz7/pzQ=;
 b=JMXT1O6oZ6nTdi4AMFLgwnZgPGJ118+Fqm24qdKBp74cis8rybF0EST1nxdwNwMufuyRlH
 4fBc+6apyqVN+f8yXOw2FcNaO8CKBtDTH9wD+JHl9mvwlQnrFjSANvkvwiQunM7yIVzETU
 5XD5PFnryJIX13v/Ut1Cr3y80mVhx62YAaHkTzsGcJOfh2k9VB003waU45iJBGL0z33kHW
 ARsV72CZVGnSk0Yr7v/Ai7TFBcTO7fiCscxx/f39BLF4Wyo+EMW4H2SicO1y8qI0bt40Fj
 K51B5TeF2T3THDJezdNHF4dbijIDzJ14pwDjZFpuOsnbnTsy4/4rnyvFxFS+8w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1713189651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8CkXYS21B8SH8DBLj2VWRkV6viWLhTMjW+3OPz7/pzQ=;
 b=bG0RKwoMXR2QZzzmRtLvhLpK4rtObVSmR+dHWmkXp4lJFK5NEqoeGLa/MBTqb0HHWWWqAa
 KE+az3Qc5Se7wnDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=JMXT1O6o; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=bG0RKwoM
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix deadlock on module
 removal
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 Roman Lozko <lozko.roma@gmail.com>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi Lukas,

On Mon Apr 15 2024, Lukas Wunner wrote:
> On Mon, Apr 15, 2024 at 01:02:14PM +0200, Kurt Kanzenbach wrote:
>> > > I would have been happy to submit a patch myself, I was waiting
>> > > for a Tested-by from Roman or you.
>> >
>> > Perfect. I was wondering why you are not submitting the patch
>> > yourself. Then, please go ahead and submit the patch. Feel free to add
>> > my Tested-by.
>>=20
>> Scratch that. I've sent v2 with your SoB. PTAL, because your original
>> code snippet didn't have a SoB.
>>=20
>> https://lore.kernel.org/netdev/20240411-igc_led_deadlock-v2-1-b758c0c88b=
2b@linutronix.de/
>
> I created a patch yesterday, as you've requested, then waited for 0-day
> to crunch through it and report success.  Which it just did, so here's
> my proposal and I guess maintainers now have more than enough options
> to choose from:
>
> https://lore.kernel.org/netdev/2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1=
713188539.git.lukas@wunner.de/

Yes. And sorry for being a bit unresponsive, but i was out-of-office for
the last couple of weeks. Anyway, thank you for your help in debugging
this!

Regarding testing, it worked on my test machines and the Intel
maintainers will validate it as well.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYdMxITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgm8dD/9wq0wT4s0WUmzJKekTZ5wLDvDGWoiM
BvfXf2TuVuADSCwL7rOrPQjcenNkznF7lr834KXR5Emi1W6brNtb+5TbZUvXKb3e
sfrYJL6BDrLCb9Ii3/Ib9V9gGPwXcxa2WLbn8bgRO02PYUH07SHiuauSsi2MqT+F
zSZyIDugP1S7fpH11zb1IW4Cvd67iPr+ol+eUdYVx+ZKJDkBNkdm33vHXHMFq2ud
s9oKZhTZshDXbgPR+5MnVdaCyJIw3HOdrFijHOcMIHUQOotaJhmOuk4IxQ6xWMRb
BxrUypJcBY3aaej1byqu1zha6vhnKeVgxPk+E8VxFYhrHFvBkmaInTaxRrol6s1H
aiDFcOAnWYt6uH/3N5QPRq3qqNIPoSfmvMpm3RfKhcTTGWgwVkOT4tx+iMLGA0Vq
6dO/P2C/LgVAOAf58QnMrX6oWxTBNz4qRLx0F5B7N/npUNTr+wWlojXEzS4AAjaC
7W29HEGX/qmVgJTAcK7X3ZoIU3ia/vhrdQashGytswJ53CuQeb0gkfY4Y9gTKLwx
zSDqEChuw2vCYJK5mflWX4YXWD0Hwe8mFXSxPcM8b2/0G4teMCSv0ESNrlkN1baS
QKZU3ev5BX5yHZHVs2HaxVwdLlSjm+F9KC6gV6wlm8POpfm2S4AKMl2Vjy5wKOe3
Bm/7y5c0wlRtZw==
=kppl
-----END PGP SIGNATURE-----
--=-=-=--
