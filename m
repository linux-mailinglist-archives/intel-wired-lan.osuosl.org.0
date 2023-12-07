Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEA88081C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 08:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F02761551;
	Thu,  7 Dec 2023 07:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F02761551
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701933756;
	bh=On8M5MYOs4sAQ3LRsr1jGw2nNE0xHyDQJuAuncuXu3o=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cydmVn1IV1rpCpnbX91Zjt0L13xaN0LKKaS86/NKx8bSZG2/cdIVswGGZ9i5xZm9y
	 khwy8sVIdxjMqf556emEhOPOqGfmLFUI8Uaam+r5p7iQ6KsPtP6KUgkLwOgBoRv2jX
	 1/eeIr7kE83VXzDtCWQooJG19ipp1cZy8t6aOA79NrVdEid50uhbpM8Gi3ZGNIFESb
	 oLrIJ1SNlQQYcssWV3bJI6VqVxbn52I5wUVQ+/ZjTAEdXqC0oTgzON9KIM2O+SSDXR
	 xrbnK8uIdyCmO49pmLOUp4qHDNlyl8GcrToIYw60UbCS7upGUqczajDuJOOSLcypBY
	 TLpCPRZyh8cJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PjgaJt-0vw95; Thu,  7 Dec 2023 07:22:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5317E60BFE;
	Thu,  7 Dec 2023 07:22:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5317E60BFE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8B991BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C776403E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C776403E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2PufGrPgE0AB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 07:22:28 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78DEE402B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:22:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78DEE402B1
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <87r0jy6bwy.fsf@intel.com>
References: <20231206140718.57433-1-kurt@linutronix.de>
 <87r0jy6bwy.fsf@intel.com>
Date: Thu, 07 Dec 2023 08:22:24 +0100
Message-ID: <874jgufpe7.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1701933746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=guf7bFM7WEo92xyrZ1udRhLTzFoRowkGH5SLHEtlCNw=;
 b=LsqJTjxau61Z9yETPtDfQGoe8tP6FD7ZwqHKpLw40hlg2e8H+N6PQTjOa/6NjbxmmkZ1lZ
 4DGrSrGKMTKJdWeW3iHwY4NL5uBC0A8oVkcGMH4B8Zp2VgXUihAr2dqZWTtk7HwRGjErmZ
 U/Bno4clvO1gS2JAKe7cAFfP0p4AT3TKScAal+pYlshUSTXMCdKtBUtw0whcEaHCF/Y8me
 YI+APaU+d6n6eutsJMH7IhT0NKqNv0y+af4odNW8YZaGNW36zHN4wQIvZQH7ZPUuWxRqvH
 TsXWEopYKtNhEzHvSxts1tmLb7DJd5pqWOhld4iqK8p/jy62ABt0qAzjB0htJg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1701933746;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=guf7bFM7WEo92xyrZ1udRhLTzFoRowkGH5SLHEtlCNw=;
 b=nIWOiChBBauBSUl82hSZxKtYu5bD0H/O+njT3MKz6O1WnAjCJuA1JGI7nkWZ+TTI4jpnu0
 Pi5d3lk6UqdeqUCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=LsqJTjxa; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=nIWOiChB
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Check VLAN EtherType mask
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
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Suman Ghosh <sumang@marvell.com>
Content-Type: multipart/mixed; boundary="===============3268062062557591787=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3268062062557591787==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Wed Dec 06 2023, Vinicius Costa Gomes wrote:
> Kurt Kanzenbach <kurt@linutronix.de> writes:
>
>> Currently the driver accepts VLAN EtherType steering rules regardless of
>> the configured mask. And things might fail silently or with confusing error
>> messages to the user. The VLAN EtherType can only be matched by full
>> mask. Therefore, add a check for that.
>>
>> For instance the following rule is invalid, but the driver accepts it and
>> ignores the user specified mask:
>> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
>> |             m 0x00ff action 0
>> |Added rule with ID 63
>> |root@host:~# ethtool --show-ntuple enp3s0
>> |4 RX rings available
>> |Total 1 rules
>> |
>> |Filter: 63
>> |        Flow Type: Raw Ethernet
>> |        Src MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
>> |        Dest MAC addr: 00:00:00:00:00:00 mask: FF:FF:FF:FF:FF:FF
>> |        Ethertype: 0x0 mask: 0xFFFF
>> |        VLAN EtherType: 0x8100 mask: 0x0
>> |        VLAN: 0x0 mask: 0xffff
>> |        User-defined: 0x0 mask: 0xffffffffffffffff
>> |        Action: Direct to queue 0
>>
>> After:
>> |root@host:~# ethtool -N enp3s0 flow-type ether vlan-etype 0x8100 \
>> |             m 0x00ff action 0
>> |rmgr: Cannot insert RX class rule: Operation not supported
>>
>> Fixes: 2b477d057e33 ("igc: Integrate flex filter into ethtool ops")
>> Suggested-by: Suman Ghosh <sumang@marvell.com>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> ---
>
> I was just wondering if an alternative would be to use flex filters
> for matching vlan-etype with a partial mask.  But I don't think
> there's any real use case for partial masks, better to reject them:

With flex filters it is possible to match by byte wise partial
masks. However, I also think there's no use case for it.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmVxcrATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgg1vD/9t8xIdqGmymTzUoeNETrs4XJFs1fEd
rRMHY0LBRfgWljxPsv7cDxU5OrbU97ZHlbTucTnGB/Jus3r1z1R1/tjNqf4ltDrk
mpxQ2HVCHTk1fnWgmTGizU6Ux3aIaj2kdwIVk+ycG9xIKN1UH+Huw/Ciz8+t8y6N
FGFjmTw3NnJVVICtFvG44i5CJeT645osc+PDm+vBNyYCMtdS2EfaQM0OJ8ullSZC
Rt8UtkyjJx24r2gbfneUpR/vweaNdM/ZZQZbHKF+oViJ/Y+pEcjDAHnriRWZEbKp
0xDYwSAkH9P3iMs050+7btmXphQbmAcbevs45sQnJGfRuZjFWoE5UEaDMqYf3aas
BHdP4hCGuOZnHycm/TJHLKQNAX6xVklRDZaaA3PuUyB9MGNDFZH1mtXs/NOLhBlQ
aV2Y1qXkduRJmxtKZtHDdwmuIiPIS5FRKaN4OBmUUMkpcv9dykhuIUonBOKovB2w
CUf63yQXWSz9h1HGscgd5d2VIjFVE1Qu9uRPlH2E7WaTULdVE8YMEnuGlroS2DQ6
CXxOcaiNpo9GkQWKJ5CDIwYBRYDgzRLiiMYarr0/RB6HdsqM2A8ZD/Dr1nrzx992
UAE35iu+nsXaqsij4J14jCyULzdnUm4c3mclSVVxklUdWihk7uzntxmzj63G9SXZ
rG1U3laaivZmJg==
=qHMT
-----END PGP SIGNATURE-----
--=-=-=--

--===============3268062062557591787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3268062062557591787==--
