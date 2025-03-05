Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D27D0A4F883
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 09:17:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 885C3839DD;
	Wed,  5 Mar 2025 08:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQoQiwwdtxIp; Wed,  5 Mar 2025 08:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB21D839E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741162618;
	bh=QStBYi6pwdK1Tb36EYQktQO0A7l90MX13f4+gcwwHC8=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1fVxaCBHAlQEXD/9eeFZ0Dl4LHtXX8t/7dljB4/3T8zzAZDqWNeAQm2lmA0raAmGc
	 hTNaC+bcaVvAFdiBMeqE4QO+I2YwTf1CGT/3lx7qa8gfSyoU/g6vJl7XCI/Ql6vxDD
	 IlTYhBlMpaguTxCkDrbEqoreGWPTQ7fSPRzO74Ly1Zi1GjYnA45VEA68Cm5ldy9yru
	 Ldoq+jbKZ/04xdOAl8um/hGrT6wkDsMuu2qsHtqc3ee4Cil7+EYgt8yxiJm3LB/n3o
	 mMyvYL0MS/azrwNnaAdEV7RJBV23Tx3j3A8WHR/nRblKZCe7UmNnwXgjLoUlQYVYM4
	 yk2bQGp0UjH2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB21D839E0;
	Wed,  5 Mar 2025 08:16:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 571EFE2E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 08:16:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BA1760F25
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 08:16:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EuHINqLP9i5x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 08:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7D5A060F24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D5A060F24
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D5A060F24
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 08:16:55 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Simon Horman <horms@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <20250304173021.GH3666230@kernel.org>
References: <20250303-igc_mqprio_tx_mode-v3-1-0efce85e6ae0@linutronix.de>
 <20250304173021.GH3666230@kernel.org>
Date: Wed, 05 Mar 2025 09:16:50 +0100
Message-ID: <87a59zc2od.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1741162611;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QStBYi6pwdK1Tb36EYQktQO0A7l90MX13f4+gcwwHC8=;
 b=qXiwMTb1GNumeIUzRqx7+OwDkD+b1GgnGhUIlZGRC5DgMHDFDl3c9cTbK4jSN4r81FWk4i
 G2T9zI6vBanbigSyO2u0ijZyjaCbnx3A03IhtrHoBz4LED7Gx0oNh7phUS/7XTMWMXX+UU
 oK7quyWPTZs0mXbPH78+jar1y7mKQ+RcEtULNaFdMsUzTt7IO8oc1otyrYSR3lD5F0R84J
 9EMGCvQbb75jfTAcbcdDoHyAlT06tYBIjDW0/kHfGqcLPY9CYtw2D0Ehvv6cW+csUk0XfV
 KE3y8PZWWuNkbUrY1tQNB/GGuz8w1i0Rd/Llep4B+172MF7+6w3fQkaJBi9uZg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1741162611;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QStBYi6pwdK1Tb36EYQktQO0A7l90MX13f4+gcwwHC8=;
 b=cFY0t7axV2rn/eAyp6C+uQFaHl5YntHsUQ3zTHHndsc8Rk33kBq3Bwemz8Mwve522oWwnK
 Ul8Hd7CgDpJftGDw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=qXiwMTb1; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=cFY0t7ax
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Change Tx mode for
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
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue Mar 04 2025, Simon Horman wrote:
> On Mon, Mar 03, 2025 at 10:16:33AM +0100, Kurt Kanzenbach wrote:
>> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
>> this mode the hardware uses four packet buffers and considers queue
>> priorities.
>>=20
>> In order to harmonize the TAPRIO implementation with MQPRIO, switch to t=
he
>> regular TSN Tx mode. This mode also uses four packet buffers and conside=
rs
>> queue priorities. In addition to the legacy mode, transmission is always
>> coupled to Qbv. The driver already has mechanisms to use a dummy schedule
>> of 1 second with all gates open for ETF. Simply use this for MQPRIO too.
>>=20
>> This reduces code and makes it easier to add support for frame preemption
>> later.
>>=20
>> While at it limit the netdev_tc calls to MQPRIO only.
>
> Hi Kurt,
>
> Can this part be broken out into a separate patch?
> It seems so to me, but perhaps I'm missing something.
>
> The reason that I ask is that this appears to be a good portion of the
> change, and doing so would make the code changes for main part of the
> patch, as per the description prior to the line above, clearer IMHO.

Sure, i think it can be broken out into a dedicated patch. I'll see what
I can come up with.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmfICHITHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgn/RD/9KB1zcoSwrPck4K0Si/VAbhwwAmN0j
gf8SCmqPhp7HID5y+ECXInVfcSGXPXJ+95XTrY0IbP5UcAEhrr72Qu2EVfFqsiJb
dBhfvwSUDh1e1oDNvjsBg8+2AnQXQzZe0JWH94GBIsH0EDVEx1OnrJffvHkjeocm
L8/h43WlDBGMY9fgtB6O4oqkzb19eGnoyfhloMufpOZEms5DHa4Tf/nshZE+K1Vf
DCnazJd+af1dCKSM2gRXhcjD7eiLcPt3v4M0N6veKyDWCt+qPcV7u3eSIprEQ815
IrigR1RH+LhqAnYKfwULRnvlDc4a/JCNlMhLxvoOwRj1vwpwiTWTs+EIHBXWijCr
T/7P2G2sVvO0khkjTkIfd6JDxE9H+0W/PBfsMwx2R4ap3jjooP7YDze7GPlkk3G0
AHMfOcuc1rMjuas1VaITz1VdKYCqhCRkQ7rH6NaoFT6e+w3I49vdmw7PpjS2KirE
NGaw8DzVDPSEnuDWlDdCIuLOdexWa3QxSxYAMJb9F5mKK/eo1sPO7TR6ExrzPxTz
0+uxJSBfYzcc+pdDvNRXPifjqdGX+qMW6dWysDIOOiv3Y733HrpErKMUbebhF7pE
pNQqGjIXDe4rLjd7D0yXU41ueBAH5gmnvyR1nVRd7eeOYE/4XkCqhz/dgiPyIAk/
WzqHNTTsjjuxvw==
=ES86
-----END PGP SIGNATURE-----
--=-=-=--
