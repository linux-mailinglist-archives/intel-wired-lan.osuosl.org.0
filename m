Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D476F8059
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 11:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04E98616BD;
	Fri,  5 May 2023 09:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04E98616BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683280159;
	bh=kV6IZ4WJGyVHV//iuV017lEh5zfkAG4ZkX6t5VODzsk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u8PWhn9AQQg1H0Gcu4Hx1QZQ1dLk3wN6Bi9jTgCIAPH6joda/S0NVUQUTl/FQl8W5
	 LH3FZrCCLQgPkPQpBzWPpcnMXyXCmc9hK7FZGTJtX8BRcjH1B2P7T6jzkPznBey8tI
	 QI5Z37u23LzjF3Vay8HIMRywpQSwZp389SutGVq5bl2/Q4h1tUcYI4S953gxHvGcJ1
	 QoVNRNBJdRyRhkByPXEfNvvo8rsi+5usgbp2M52bWpQzHpsP2rOePe0ysedkWlZuUQ
	 bShEgE0gdltO5UFfRM01aOHdBc1JxzJXDRrRNojynH2p12Klb0ESx5U5AiIgK7Z0lI
	 1GMejutUcaSRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGOEhLVB-O6B; Fri,  5 May 2023 09:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0F1661140;
	Fri,  5 May 2023 09:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0F1661140
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 632F71BF393
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FD0541F8B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FD0541F8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1f8DgapzzSv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 09:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91EA141F2A
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91EA141F2A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 09:49:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230504235233.1850428-2-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <20230504235233.1850428-2-vinicius.gomes@intel.com>
Date: Fri, 05 May 2023 11:49:07 +0200
Message-ID: <87fs8bumzw.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1683280149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dYDb4oi3Z4UXKQ4StM1F4V4nF1BA8xVMNNX/0cFnGSg=;
 b=vauLD70J7Vj9cjcuf7lSNOxhgVbhj+U6ITbTERiBMimIdNrdV3rU+1WQy5t/eSwD19MU3G
 wVzjCVmliBcYCox464CSrbyYhXdiyAU2oSQ+XVpuu/uNGEC+Kobx7dYG6m1461d93RH/2h
 991RwCYEPYPg9wtEf+tEOm2wPmyXVX21cO3eUfaqenJ9BO9q/f1abeCf/tVjlP8EcIw5Y+
 pbg26lhFiivafyj1J7Xcnh/0L9CE/b57erqi5SkdgAT3zLy8wlMk8MTAsJhE31o5kPH6jd
 s/BXWOKkY84wsBXkND8yAb8DZWomhNjd0vAbKUXaEWafG3na9uWHu8zzGsEHeA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1683280149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dYDb4oi3Z4UXKQ4StM1F4V4nF1BA8xVMNNX/0cFnGSg=;
 b=f9Xb37zmbZC4urhzl/RufUMCaihMqxjAFrSRXap8EpGub5PwUSNaXIfM8fY5iYyDttImbu
 1xcLkPeNtwzp59DA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=vauLD70J; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=f9Xb37zm
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 1/5] igc: Fix marking some
 timestamps as skipped wrongly
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
Cc: vladimir.oltean@nxp.com, anthony.l.nguyen@intel.com
Content-Type: multipart/mixed; boundary="===============2466334833783875140=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2466334833783875140==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Thu May 04 2023, Vinicius Costa Gomes wrote:
> If a packet was internally forwarded to a igc managed NIC, and it had
> the SKBTX_HW_TSTAMP flag set, the driver would mark that timestamp as
> skipped.
>
> In reality, that timestamp was "not for us", as TX timestamp could
> never be enabled in the NIC.
>
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Suggested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmRU0RMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgnfSD/9Z0QlLHAZMsjT5NfIMs9bhgJN82Sqn
isNugi+BZP3EXhWX96T08EXa9FPYIV5A0QnCrI3bKg7P64+2/CuJMm6ZHqFtcr4K
GrzyVhJNI1e4rWhXrWfc4OajXppBMw5FXhCwGARe2LOUEiSRwK30jkT6703AYuec
W3K+1C5lRCahI9109vTM/sOoTDbSzglS03XMrPMuYPynI7MpBhntgYECu1n64oDZ
tTaVepEqUi2FPegIdhvXbvraCagNtwOycURw6khNzc9/Rjke/6d8/dsCpJ4dY/8X
0FhrcPx0EKAl+E4HvuvCVsfNF13HWNoLNvBwob4YAe4A1Uy3Er8JcbTb/D8Ph5pa
PUMntyV+yQy3y/0bMUabgZyO5sCBef3tWjUv8jbrvI+OGBYYWydz+5+Gsf2rREOM
jKLbQw4XVGGGxR6fTmTbzp01WpBlrocmou0EAj7E3ypKKmlqPKw3KM05Oi1s2SIl
goTdlsaoRg/SUL3e+aM8AtS2Bc3ZlkmWmcIFX0wlT7mS2dwiwg/w5E3j79IaKc3n
dINgon7TcLI9+mpFeCrO5M2cSIih/1tV2yuuD1/whdhysy0j6YYq7M5I869KxNSC
Db2uAgF7ps/ECo8drr5ZCtZd8vbV69Uq9Iytl/V7z73VuHjLVvG75gIYAC/C+atm
FE/nXTKqXyBIiA==
=lRv6
-----END PGP SIGNATURE-----
--=-=-=--

--===============2466334833783875140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2466334833783875140==--
