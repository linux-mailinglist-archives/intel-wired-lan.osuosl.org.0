Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CD1CB2A83
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 11:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58FB86090C;
	Wed, 10 Dec 2025 10:16:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rh5F-SnbJARE; Wed, 10 Dec 2025 10:16:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A993E60BF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765361791;
	bh=4BMSEJ6lggL5sT7YO3szjRGjzmCcBHLP3Iry0cibk5Q=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R0LEkF8RSsgLhF7pF4J0XmrtcVjQc5o59DxlBP3fUcQ7Y49eDgdGPcqNPIsTKRPUw
	 6goV04/iLgPCJwloE9796G13WTr6dTnhj9KdcwXlqfDBCpYSfCZSZ6iBLhsSkyQIIe
	 4XiPOv2GY9cHYs3EM8xF+WcoPLK5nIv0H23M0s/YC6Gc4KUZBnXZeJRzRqVv1rxMn4
	 REhamBOYTErOjSYeoGpskfaxKQz+NREsuqGJfP2J877b4P7KcpxjR0r34lBbDtK2lQ
	 nb1sn86qZDm4udp3lCn2spcJQqiAccIDYogoRytIZdel7ac8wQ1REjfJk0/CS9UYER
	 zFmfX0iAmO0Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A993E60BF2;
	Wed, 10 Dec 2025 10:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C77B2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:16:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E79C6406FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:16:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tXCB8vFQOfSO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 10:16:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E3D6E40344
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3D6E40344
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3D6E40344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:16:28 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: "Behera, VIVEK" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
In-Reply-To: <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Date: Wed, 10 Dec 2025 11:16:24 +0100
Message-ID: <878qfaabgn.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1765361785;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4BMSEJ6lggL5sT7YO3szjRGjzmCcBHLP3Iry0cibk5Q=;
 b=11A3USNjquSo0ukyz5OCT3Dbn3R59bsgw70fJgQHXcRJpEEU0EGvffqxCq2U7k59Rkt3bA
 zRV46lZumxoAqxxboqWOzQyBbajL59aO6Btj10JE3J/QvgP5XWvSkVWa76LOhDp02dH/Ld
 h+4zuZsonW3Hfr2VgVSJz0cDlRN1dCX5MS+yDdkjPxXrNoJjsSxXnlVH670YNJSox2CStn
 7waukRQ7cGHVyAKRBJRAS1zVDmJVmxr00gWgd99VAvBhdPkmbOHg2tsFn0FB0rf1f+6CCA
 /3X1w1G+NxtC34GX/pUWEityzGXipzYkJih1wiMWIC9rGBFugdQwKhfvWwuJnA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1765361785;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4BMSEJ6lggL5sT7YO3szjRGjzmCcBHLP3Iry0cibk5Q=;
 b=8HntsYnwQlBGhma0mu8LOlkG9W4csnEA7Plii0l1v+8f33XVSUYZOmVBvHmgmsUx7k5fUl
 HNjOTaaXNjEN9uDA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=11A3USNj; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=8HntsYnw
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

On Wed Dec 10 2025, Behera, VIVEK wrote:
> Changes in v5:
> - Updated comment style from multi-star to standard /* */ as suggested by  Aleksandr.
>
> From ab2583ff8a17405d3aa6caf4df1c4fdfb21f5e98 Mon Sep 17 00:00:00 2001
> From: Vivek Behera <vivek.behera@siemens.com>
> Date: Fri, 5 Dec 2025 10:26:05 +0100
> Subject: [PATCH v5] [iwl-net] igc: Fix trigger of incorrect irq in
>  igc_xsk_wakeup function
>
> This patch addresses the issue where the igc_xsk_wakeup function
> was triggering an incorrect IRQ for tx-0 when the i226 is configured
> with only 2 combined queues or in an environment with 2 active CPU cores.
> This prevented XDP Zero-copy send functionality in such split IRQ
> configurations.
>
> The fix implements the correct logic for extracting q_vectors saved
> during rx and tx ring allocation and utilizes flags provided by the
> ndo_xsk_wakeup API to trigger the appropriate IRQ.
>
> Changed comment blocks to align with standard Linux comments
>
> Fixes: fc9df2a0b520d7d439ecf464794d53e91be74b93 ("igc: Enable RX via AF_XDP zero-copy")
> Fixes: 15fd021bc4270273d8f4b7f58fdda8a16214a377 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Jacob Keller <jacob.keller@intel.com>
> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>

Hi,

thanks for this fix. Does the same issue also exist for i210 in the igb
driver? The igb driver also has this split IRQ configuration with 2
queues. Might be good to fix this one as well :).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmk5SHgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgjWoD/485rWxJhoXG6maGIgXgnSZ06MZB3ER
/QypdRblVxa6pTV+7sSaXolGSZCrVyfT231q9U0kQA81CWjPPFQbvIxTDISoP6x+
HZqe0tHBqJ0Dj+sH9L5VxhdogKNBxmQ219xpzkhomSFCCTjg0U+wB4SuwsUGDJ6U
h+5YhSMmAH2j92Lbk7+acCsOTM/r9cMEUD2iUhqGfj0banlnwNNox9DAwUeuboFD
EwfzA3Exe9bFIompFdSOoFQ5/kMfyCvF/JxRe71UwqdEuFcwRf4h538kHbF+dwDD
UTZYU7MhnGknSdLsilQL3275WZw7qrXo4sorkD1+gCkkUcMsAep/oC10sT6zXpJR
q216rqXOuI63LC+dcTKlv5472XK+nIhcw5XNK4/OWpGSTnnQ8TwgjnJCVq9qO98U
lVzvUBKAeDftbogUdN5u3WpzdOEsXv81AAJN7vyf41mt/kDcPj1g6XVjdQlHlH0E
PSNEdd8E9EjE+BF/d9KDeojKayF/TqiNRn9TmzBFVJ+EZcC91yUCLy9+oIahOaZB
M+bsDzDDnkjLb0BAlj2G4jre2zeyp8sx+M3y5pAAZTZ8uB5bokEBn0EFt3+HZ+qV
ze37Zi3W7xDA5KVxL3QML9juaIHvu/L41OWTk++H/pMm6u1p2itJloYlx/WDIK8h
WNMHmtvlUE/7+g==
=hm/z
-----END PGP SIGNATURE-----
--=-=-=--
