Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1AFA803EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 14:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B217F610F2;
	Tue,  8 Apr 2025 12:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G9P-5Ym6X3Ux; Tue,  8 Apr 2025 12:04:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32DD260AD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744113870;
	bh=DUIhkfxLW/XlWJKlZW3tDkzpsaxUijtWfsWVavFzJgw=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NoY+loj/Wuphx3+4VdJ8PKvI789PRHisAkGgO7sZUB7n5iisq8GI/FCnLuehRFaRh
	 m9fSEvzujZnchnRIQzdF9fxtORrKIHahZL0QNLVBOIoRpPqF45308Eat9Q23jxn0Uj
	 kGax+BAI1srdv+YP9ThsVPJigfXoZyeskjd8pIbp0aADNmxeEmNBOjBryEMDch5ljN
	 qXt+VuqbPL8AFE7eb/2q89y/DZaoKBfwtTYDZcu4CAvJxjlatyYOibxwPUtYgHlcPv
	 LSJbRUcDKzQQtrEfpH3bfjL3W8zQWe/VkaCquTSgvRJLIXWMB76Ue8M3VtD//any/s
	 SYp7fsR5SS4Wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32DD260AD5;
	Tue,  8 Apr 2025 12:04:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 815D81F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FF8760AD5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:04:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ISsVmw7zjm1D for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 12:04:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9F93D60A71
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F93D60A71
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F93D60A71
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 12:04:27 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <20250407124741.GJ395307@horms.kernel.org>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
 <20250321-igc_mqprio_tx_mode-v4-1-4571abb6714e@linutronix.de>
 <20250407124741.GJ395307@horms.kernel.org>
Date: Tue, 08 Apr 2025 14:04:21 +0200
Message-ID: <87mscqsvui.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744113863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DUIhkfxLW/XlWJKlZW3tDkzpsaxUijtWfsWVavFzJgw=;
 b=nLfZEsyzOb7FAC+IqSA4Wr0ondG7gmYFnOdVjb7JQpjiL2O4Tc6ANK/vKP6KDHQ3rFyR/Y
 p8tsA4pWgz7OlUM7kgfeCV7Q908QiV3XOf5oy9vLv7nmEbfRn59eUdWiwxXizoj6iJMyvu
 2WUhcxtZmfBeVczk/t5SmsmIkcqBWrSf+MchOE29b38d3DY/rcqqz09AF28naqG+L4OMGB
 i1JABEXvLZtwiD1Io5z0mBvEPg2+9fz1OlZS/bu6+j4QyEG7AFntUFrC/r0bpzwB7V9CDV
 RBVFDB5BrF8L+yovCQwcdUu6Ru4qSt6nzzlhOgtp0SlwfjBx1oqrch71nb96+A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744113863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DUIhkfxLW/XlWJKlZW3tDkzpsaxUijtWfsWVavFzJgw=;
 b=URE34VJWFHwTsxTG+5n7ywKdsXUjc1UCcHYYmQqbHICpTZZWbl0SrxNZjQyWvxgKPCyZJm
 qTks3sMk2aL1R3BQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=nLfZEsyz; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=URE34VJW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/2] igc: Limit netdev_tc
 calls to MQPRIO
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

On Mon Apr 07 2025, Simon Horman wrote:
> On Fri, Mar 21, 2025 at 02:52:38PM +0100, Kurt Kanzenbach wrote:
>> Limit netdev_tc calls to MQPRIO. Currently these calls are made in
>> igc_tsn_enable_offload() and igc_tsn_disable_offload() which are used by
>> TAPRIO and ETF as well. However, these are only required for MQPRIO.
>>=20
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>
> Hi Kurt,
>
> Thanks for the update. And I apologise that I now have question.
>
> I see that:
>
> * This patch moves logic from igc_tsn_disable_offload()
>   and igc_tsn_enable_offload() to igc_tsn_enable_mqprio().
>
> * That both igc_tsn_disable_offload() and igc_tsn_enable_offload()
>   are only called from igc_tsn_reset().
>
> * And that based on the description, this looks good for the case
>   where igc_tsn_reset() is called from igc_tsn_offload_apply().
>   This is because igc_tsn_offload_apply() is called from
>   igc_tsn_enable_mqprio().
>
> All good so far.
>
> But my question is about the case where igc_tsn_reset() is called from
> igc_reset(). Does the logic previously present in igc_tsn_enable_offload()
> and igc_tsn_disable_offload() need to run in that case?

This patch moves the netdev_tc calls only. These do not have to run in
this case. The hardware configuration is still applied in
igc_tsn_enable_offload() and igc_tsn_disable_offload().

Thanks,
Kurt

> And, if so, how is that handled?

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmf1EMUTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgn55EAClsf1y2fAQh+R9zer0mAjHGDqIJB/I
yByUgRD3zZ4pqHAF5SCwhc46V5PNautDo0OD8YhXrsDFXloNu8TXo15NzzckxFQh
gB8M/oNhdVOWlvfTkDRCe/6GJRvsQa+aQZwQGLW38bLzU1+4KX770p/xHJqHj1B8
o//TTsUJuS6UrPj2Y3yR1dNt9fPMEpeAJZyiXekX9bNyvA4gbsu5MLm+/dd8uhKX
1w+L2nnAX6r5i4E+MfpiQnfyovxZWQPepqeCpQPGfsBQuI9XDquSe2qb/hnYmth5
tWzWnKgSumcp+OumNEv5Fe8VSrsazy1TM8FcBMX+RTNO3JZXDRi6ZO8WjZ/kOT5c
Nl9FOWFYmd8EQPjAT8JPPYmopbRCy/P4WrEueMhehKblq89pJYLJs1WwNRlfGe5z
WJA/lj5e4RtVVqhxgPB6ohn9z3dl7PMomKYUrIOEq8hMjyraI5xaZJLZ82nJ5TXv
0JnEHiuEJqvU8w1eg/IsJdhsxPOx1OwjYx5pUwSopW8Iy+aLtqEt/pSJfFcoqnHF
b7KRkG/aHjTEJsSWDSPJj+GaFZt+LQYPDairp1kaJqpKCt1F7G3VqrjRN9q5xnmc
hOnZGt9Ly6ytXqRURhuS11HR0gAyYXuh9Dv7xig6zBG0tWaoO5A4PiUs57huZf23
w4X2PdPIA/kWlg==
=miv5
-----END PGP SIGNATURE-----
--=-=-=--
