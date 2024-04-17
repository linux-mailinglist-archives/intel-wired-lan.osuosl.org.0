Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 745E18A8CDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Apr 2024 22:25:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FF5640800;
	Wed, 17 Apr 2024 20:25:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9tBaJfBlnmDG; Wed, 17 Apr 2024 20:25:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24AEE4065E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713385507;
	bh=GaLh8Q5WBEyaPy49ACZRYWDRLAqz47vBjUJgPI5NwTU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3+0Xsg0iNrXEhIOzlKl0ZU8xVChVrrmoovbZawSbWcrHWCnsj/Ls1UsH46aBN8nAO
	 3aTbghG7bkyult30DvUl+VJtau28p1mOQpPSVA3t5X9ODgMy6RIdiTpqU4n42jjJcH
	 fgdmD2B02mn/Sz6JY/SfbZzhwiXtQrMFLLxf4A0HBS3109U20R7C5C/08b89zU7STw
	 zBecrtCGL0fbflmTljmliEDMEgBqY6dXiVkstcAnJqqYHbiOBH9F9Mp1uFJ+fcYE6J
	 sJMpabC0mkP6XU3sA0j26a7im/Pmf65Pk8WyXNEufjl+bpNF/8MDrx8rYciW//MdXP
	 h/Z7k06OpKDfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24AEE4065E;
	Wed, 17 Apr 2024 20:25:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86FC81BF423
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 18:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72783605CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 18:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBNwUf9SX6PC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Apr 2024 18:54:21 +0000 (UTC)
X-Greylist: delayed 442 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 17 Apr 2024 18:54:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 53E7C600B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53E7C600B8
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=69.70.16.42;
 helo=zougloub.eu; envelope-from=cj@zougloub.eu; receiver=<UNKNOWN> 
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53E7C600B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Apr 2024 18:54:21 +0000 (UTC)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits)
 server-digest SHA256) (No client certificate requested)
 by zougloub.eu (Postfix) with ESMTPSA id E10AF286E3C6;
 Wed, 17 Apr 2024 14:46:57 -0400 (EDT)
Message-ID: <a7eb665c74b5efb5140e6979759ed243072cb24a.camel@zougloub.eu>
From: =?ISO-8859-1?Q?J=E9r=F4me?= Carretero <cJ@zougloub.eu>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, PaoloAbeni
 <pabeni@redhat.com>,  Thomas Gleixner <tglx@linutronix.de>, John Stultz
 <jstultz@google.com>, StephenBoyd <sboyd@kernel.org>
Date: Wed, 17 Apr 2024 14:46:52 -0400
Autocrypt: addr=cJ@zougloub.eu; prefer-encrypt=mutual;
 keydata=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
Content-Type: multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="=-HdJrXOh6mReobDPrIWlL"
User-Agent: Evolution 3.50.4 
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 17 Apr 2024 20:25:05 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=zougloub.eu; s=zougloub.eu; t=1713379618;
 bh=GaLh8Q5WBEyaPy49ACZRYWDRLAqz47vBjUJgPI5NwTU=;
 h=Subject:From:To:Cc:Date;
 b=M4LPK1QDaTcAYhDEkl1+npSkTtlz+KGfTriNnqIJ1pjPmuHYpVVsmBhCra/P25BLp
 WHwQGev4H+ejcuhDd5cmcbET1tvLHamp4BiUurKVm9ytoZqDT0q4Pann7iE/h/IJPB
 TW7t7GqiYvdtywpFci46TnEzf1E97GIWZt93HYwY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zougloub.eu
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zougloub.eu header.i=@zougloub.eu header.a=rsa-sha256
 header.s=zougloub.eu header.b=M4LPK1QD
Subject: [Intel-wired-lan] [BUG] e1000e, scheduling while atomic
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--=-HdJrXOh6mReobDPrIWlL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,


I opened https://bugzilla.kernel.org/show_bug.cgi?id=3D218740 because I'm
not quite sure the culprit is e1000e or some timer stuff.

I just verified that this happens on the latest master.


Let me know if I can (quickly) help,


--=20
J=C3=A9r=C3=B4me

PS: Sorry if I'm sending this to too many people, I did a
get_maintainer timer and e1000e code.

--=-HdJrXOh6mReobDPrIWlL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJDBAABCAAtFiEEk5TkdsnFh9XvC+SieNwb2r75s3MFAmYgGRwPHGNqQHpvdWds
b3ViLmV1AAoJEHjcG9q++bNzGPEP/jmSkbL5VKHv0TF1TCtUlY1nCCqedgceGbC6
3/lg2s7ZfB3q4PmYn2zJT8CiX5aXr0rNXPPD914Na6IHwCrnPzBj/UqOG2JTFAtd
PQinKa797fRn9zBo5w4XvVXgoaAueu5x0sIUpqzVlkuVuMdE+u9SIAOvFKCCJUO/
7bWAzHh8WAHztC78vG0kf8jI7YB9UHyCpztGBGeA1JGZKkPHtAdhdlmoadzIq5WF
rLUBQ8QxU0MVkVLO8pau4KNrT5sjpteMxZ8pqyfV3hsBlenajPMuBvUfKvwoKoLt
gaDIn7gZ6ca8sdEJQgEgl5tWo6fZ0Etr3VQFaEOP2WeN+QVo2Qh0wfDi3l0Pdnr9
1rhQXTGgr+CvD351fGyU5875Tu9MurA7eOcG57/3JgXkiPyJ2sb0mlNsCFARJC1p
JrNCkmsxKxKNrf1Eu4efvFyRae9te7D/SNtVGzwD8o/HuN3EN7OkzaYQJYjRl95V
Q4/4koR2GsfWGGpAGJBG36t3ZaGcikGxAs5rI1dZu5FCNnSmty0T/TC+3dcto2hV
SDj3T+bOv0IYluKqRHsSQ5pONEJuYBooacCqRvJ8jbOVd3XAWYE3y+pnFe68cg6B
k9rneHPBHO/fJHLSdWC4pe9hRM+SWSjuFsns/EQnAkWy5wQSbmbeshmdLkush2I6
e4pIKYeV
=RnpT
-----END PGP SIGNATURE-----

--=-HdJrXOh6mReobDPrIWlL--
