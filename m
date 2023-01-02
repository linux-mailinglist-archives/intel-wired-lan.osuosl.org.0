Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0336565C42D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jan 2023 17:48:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E85154016B;
	Tue,  3 Jan 2023 16:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E85154016B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672764524;
	bh=Df44RggE8xNgnf66UEj6/MsRnJXHw3eFP+2ZFX3DfYc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SQ11kwNr2GZRL8HrkP46bbZwuNSxV/MSiuf5Ad0wxHGrmLURaOlAI/PJck5cO8agz
	 B7IE7kXXH6IEVfOLXk67Ft/S/N5rgkZuZivlm9nEL5M9IM25M2IyPXCBjACVncExZa
	 P3NBPOHX4cuZxlER3ekXs0+UQGpUemyh1q0V35UTuAy959n3RdjqCxPSvMvBjYLBOa
	 nKEdID7qSCd/PudJC0LhYNy+I/LxXmwebLph+JxxRqW7zbRRs+/RPa6psQ/TVqMDRg
	 woQTr52trK180R5I+ZBCDC/54hlZkMc/ZHE86qrCyLurweoVw5dc8IS5oG8aO3USJC
	 Y6xSmkXnErVSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7x7Nq18QOaRn; Tue,  3 Jan 2023 16:48:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5A3D4017A;
	Tue,  3 Jan 2023 16:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5A3D4017A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2BCE1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jan 2023 11:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99D1F60AA0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jan 2023 11:09:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99D1F60AA0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QHbkE2gZdBqs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Jan 2023 11:09:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88D01600CA
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88D01600CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Jan 2023 11:09:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3F0CFB80D14;
 Mon,  2 Jan 2023 11:09:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 798E0C433EF;
 Mon,  2 Jan 2023 11:09:12 +0000 (UTC)
Date: Mon, 2 Jan 2023 11:09:10 +0000
From: Conor Dooley <conor@kernel.org>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <Y7K7VgArVFijJMY4@spud>
References: <CAPAtJa_-yMusW5-C3BDivMu=MOyfKF9VQkxQotX3L_P+Q48oMA@mail.gmail.com>
 <CAPAtJa_nL5edyiN61ghXZxVUSDBFQQR3uiYJM0uo9mEao=RC0w@mail.gmail.com>
 <CAPAtJa_hbFbVXQbiNnb_byLqtZ-Dy_EBcvTFH9GyPqt__dFmLQ@mail.gmail.com>
 <Y3gKkYeijrAIhxjc@spud> <20221118145443.427ecf10@kernel.org>
 <Y3gTdsg4l71L0vz9@spud>
 <a15508df-eab4-ce00-7340-69323c462fdc@intel.com>
 <Y3qGHROcvdL1vKip@spud> <Y6NCzgXZzv+oJKV1@spud>
 <Y7BPIYsBXN0ivoLE@spud>
MIME-Version: 1.0
In-Reply-To: <Y7BPIYsBXN0ivoLE@spud>
X-Mailman-Approved-At: Tue, 03 Jan 2023 16:48:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672657754;
 bh=M9mDbZVR4CRey6FhrL7S9PcXw0pAxu7wRACcaKmZbF4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p20FkhyetNfhmN9vt1etJmkIVFdmtV575r2xgg+z9Id9fMFuwdXdloNFgJtNvmaIE
 n4yr+BR4s4FEECvZ+HwzL2xIcx/SFZBRB84vccJvIVx5A7zK/Al0G2dVODBACeSPvG
 YqoA1CQhoTe2q3JTYq4+sfPg6gTh/gg/x6TRov9Gy7RQ7/EX+gy+an+KNCTjXZHzu9
 A9/GPFdXvA0mRFCt5RZejnoBtCnJYooNvuAYe4/xV9KC7ikYsOP2tPbZ+mSWar86rw
 EWYcoxhd55UuMW4Hlqff7q55kM56Iml1lcLCJ2uJUTLy7pmvU2vSdDh11GrGWKH96t
 6ny4QgJeFuxRQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=p20Fkhye
Subject: Re: [Intel-wired-lan] igc kernel module crashes on new hardware
 (Intel Ethernet I225-V)
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
Cc: "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, helgaas@kernel.org,
 regressions@lists.linux.dev, "Meir, NaamaX" <naamax.meir@intel.com>,
 Ivan Smirnov <isgsmirnov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Avivi, Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============0535309705911055964=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0535309705911055964==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8hopDFj/ehSmCprM"
Content-Disposition: inline


--8hopDFj/ehSmCprM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 31, 2022 at 03:02:57PM +0000, Conor Dooley wrote:

> I didn't actually give the bios stuff a go in the end. I figured that
> changing everything at once would likely not be a good idea - but what I
> did do was try v6.1.1 & have now been running for 50-something hours
> without any issues while using the igc iface.

Bah, it died last night about about the 90 hour mark. Still an order of
magnitude longer than I had got it to work sequentially for before, but
not fixed :(

I'll give the bios a go I suppose, sorry for the noise!


--8hopDFj/ehSmCprM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCY7K7UQAKCRB4tDGHoIJi
0gFdAP4g2vChgwslMx2MWMfdhclDOxjbUsxyd8/8aDrM7rj9swEAhBqFoO9Vdsn2
Fznui7KAoQoajxBUUyGebuOvJFX6PA4=
=zYkj
-----END PGP SIGNATURE-----

--8hopDFj/ehSmCprM--

--===============0535309705911055964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0535309705911055964==--
