Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E0A43672
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 08:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7EA1960A54;
	Tue, 25 Feb 2025 07:50:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o8mH5yASgrHN; Tue, 25 Feb 2025 07:50:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D54BC60851
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740469847;
	bh=/AlSEgSDOXBnaGrfxeUnY9+FCGxh6v470RpBdGOMQ/c=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cAETevVGqf+hGucYO39Sqk3STsK5EGUMYWM9HIHFBqesnqgDJzS76FHGRucpFEGj2
	 GBAr1mTHyDeZAKh9V8xqg17fa6AcSP3TGL3jwpkCGdSaNEl7kH3MOEgz2+cDZI1OPu
	 3i3T+LiTI/F0eFy1C15xEAsjkFmN0Byr7SDzZAsnoQLQXyxrTlQY/U4ZU5XmUyIGVM
	 UmDhvd4mnjwo9N3rmWO0mqjGqyHHVbmC6BvaHVTouY7d69lWF4I8WAyVvKiRvH5RzJ
	 FAM9XXJpg0POccOuym6iwsVhDqcSxqlfx0DmEu3NFME2o8+slb8yXCWXrIMayD4Ed9
	 PqqXnw8M6sClw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D54BC60851;
	Tue, 25 Feb 2025 07:50:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 36D532292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AF5A40C80
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:50:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lTB7KghPQQPI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 07:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A18D40C7A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A18D40C7A
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A18D40C7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 07:50:44 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <1e8e6855-0c87-4007-aadd-bdcad51f97cf@molgen.mpg.de>
References: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
 <1e8e6855-0c87-4007-aadd-bdcad51f97cf@molgen.mpg.de>
Date: Tue, 25 Feb 2025 08:50:38 +0100
Message-ID: <87y0xuzcmp.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1740469841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/AlSEgSDOXBnaGrfxeUnY9+FCGxh6v470RpBdGOMQ/c=;
 b=D0Za6qyxwz9wHMA3UYklfzOmtt5BnJrd485nl5pOFJNMLlENZvAcMptjI08MDo5y/OQHJC
 oFimYx/g3gUqbsxbK/5cZb0qiYnTTMWx90cZgFogxWrVijfBX9nV4gvypAPvtYurH9JWMX
 5177gAffUDftApjh4FkC7I+IHb58kr/dySeAacoI7As1jismniEPDtB4+OptG0/v+JTir/
 mcJHWvDOn9wrIxPMA2p+aFKigYWZwL5IseA0b9/ijx/f8MBz8nK2MxAvE+kJosfsHsQNP6
 JFd1X92KecxxuvvcB/rUxxWZ3Ig+2mIjC54aOjcScWbbZrkHtdqADF2194P8GA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1740469841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/AlSEgSDOXBnaGrfxeUnY9+FCGxh6v470RpBdGOMQ/c=;
 b=HmATznfrgc51qXcH7B7/huWm3tJKPqcBLs2v7EpaOJrWqiFbm9qHIz/M9vu/nGBbvkL+uP
 Sx+/LIj+40ZQVpDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=D0Za6qyx; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=HmATznfr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
 MQPRIO offloading
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
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Mon Feb 24 2025, Paul Menzel wrote:
> Dear Kurt,
>
>
> Thank you for the patch.
>
>
> Am 24.02.25 um 11:05 schrieb Kurt Kanzenbach:
>> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
>> this mode the hardware uses four packet buffers and considers queue
>> priorities.
>
> If I didn=E2=80=99t miss anything, later on you do not specify how many b=
uffers=20
> are used after changing the Tx mode.

After changing the Tx mode, the NIC uses four packet buffers as
well. I'll add it to the commit message. Thanks.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme9dk8THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgiTREACfGb+/KsvZWrxd3BzCT4zu2YeTN4tQ
WF/yaCIT3YINg+ykGfI6/ounDceGigKVZBwcGgfLSDiZpIej2jpmvJP7zLkPDvHH
refHCbRmNbTWBRGshi0oHIaKMFJE4krnuD/8DqruJh1yw09ywSsi+lIuwJ3pOLhx
6gBa5wayAiKA/GWnDkosDvepFgH2SReYaE2o5MzHLJF+nrTtZFKLIxBCRl9Psj1Z
e4MvGzGagCoiu9Vbhip9YycduRliUWYhel6hTP9hs9vrfqljOq0N/8MnLbYwslRk
f/9I4YyMfJwsXd1fQARDJ2wbLJP/6I+/BcZ5CVGL30LD3fDDnC6vmqb42HS/b8PY
l4lXicsjPKG8fFlABDaPcsNPp/H04h/bqF5Z2nydcqtk8LoNLz2vU2oTiHuo0zXx
wZiihtGCVN4ruaemJwBdOURACtQW6trghflCAh6kOViPkA1aqJM16EbXARQ3oMix
NuRaXVuDAiEX+qZ46EDuv23Qo4P9fQo1jSpRVExARJnXA3NKUJLRaoS522i7+jHS
/9Zd+WtlmgjJXKXkknN8iOEQt4Mhy4JPH94dRgDFh+PN1x7uFm4LcBnyPXdoBc44
ApwN3bCqqdjiQo3Axf2XVH+abqGPI2N48NckyED97Uw3tjvuB/sWAJ/XOvHE6JYy
tk1z3DtyZB0cEA==
=nusx
-----END PGP SIGNATURE-----
--=-=-=--
