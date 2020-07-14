Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF21221FD9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2020 21:42:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 892922474E;
	Tue, 14 Jul 2020 19:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d6JHZKb+bbP9; Tue, 14 Jul 2020 19:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AAD7B2C8E3;
	Tue, 14 Jul 2020 19:42:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10CB71BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0BD2C890C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gp99lTXKJLIR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2020 19:41:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 95D3688EFF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:41:30 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id gc9so2098927pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 12:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=niAIjn+Een/amQTg5fN18KJRwMOstxeUEV0t203OE2I=;
 b=U4GSwduRBIN/yTj+kSe1e3FhlYu/eU+cNd3YvmhAgwNpYObKc0ECpYaCaH/2CfjvbC
 IpqBWb44SwRTcVaIf1U3pUOENQcwd2PTZYbEDJTHLSpmuY0BGenZJkq4l2PIrR89ANoB
 KbkmGpnvSUb4wdeuAZQFz0x/z6xk61MwIgK+JTRIyzEYluvVUM7IaXpHFL2F17LFh1/s
 npt0w4UMgdTBr3F3ba5j6MX2kRR8wzeANYFiwaXeHBQjb1+62g/LcMhLNBdJcZI0CVby
 DwwZcRJTa6pQoanI2h7/ji6UxrcUQ7/VHgftXOKvybMx/C5wwtuPZGGddVHWEolYWzsl
 Gupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=niAIjn+Een/amQTg5fN18KJRwMOstxeUEV0t203OE2I=;
 b=Rltebs5/HmbbZWEQOLpcRW6z8BFAzL3Waz4kJdVfR5c6yCyYSo6L0BRDTcU9Mxy440
 7C5iwnR5spmx107WBMfLzAYA28zY+pF8U7RQDbBVtTGjpGG9H2mowc9Xgdc0TPTx5bnf
 BIjD+AfHbItBzllUskmpEG0ZXa1w48tIeMpg8VMbAZNvfgcoo+cPO4qUWajY8F1GBsHr
 iEQLdYG4yuMXW9KLFrfBMfmQO3MogLljkW5e0fuqNCYLjfO8/SNuwpP9f+6j7OqbgjD5
 3H9CP6IYUm7pzxuWPu6fTx3WA9xiDmTY6SkDVtUfT0u1W134yUQGG+8q4SuYQUbc0Uw1
 3DkQ==
X-Gm-Message-State: AOAM530VEcP/753Uq748/tsRirkYgWluMVfRHQI78hNLJvBcpV4qDya1
 sX2KnuK3cNhv6yIQO6iUB30=
X-Google-Smtp-Source: ABdhPJxnqN8nrX9Fqfy1W5R/qQtza/2Q/DP10I0i1HHBCyZOqj/LDHNKzVdELgVVBxO9fEp/MDav7g==
X-Received: by 2002:a17:90a:72c7:: with SMTP id
 l7mr6645940pjk.34.1594755690151; 
 Tue, 14 Jul 2020 12:41:30 -0700 (PDT)
Received: from blackclown ([103.88.82.145])
 by smtp.gmail.com with ESMTPSA id r204sm9234pfc.134.2020.07.14.12.41.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Jul 2020 12:41:29 -0700 (PDT)
Date: Wed, 15 Jul 2020 01:11:17 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net, kuba@kernel.org
Message-ID: <20200714194117.GA21460@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 14 Jul 2020 19:42:28 +0000
Subject: [Intel-wired-lan] [PATCH 2/4] e1000e/ethtool.c : Remove unnecessary
 usages of memset.
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1962971156662929985=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============1962971156662929985==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace memsets of 1 byte with simple assignments.
Issue found with checkpatch.pl

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethe=
rnet/intel/e1000e/ethtool.c
index 64f684dc6c7a..a8fc9208382c 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -1608,8 +1608,8 @@ static void e1000_create_lbtest_frame(struct sk_buff =
*skb,
 	memset(skb->data, 0xFF, frame_size);
 	frame_size &=3D ~1;
 	memset(&skb->data[frame_size / 2], 0xAA, frame_size / 2 - 1);
-	memset(&skb->data[frame_size / 2 + 10], 0xBE, 1);
-	memset(&skb->data[frame_size / 2 + 12], 0xAF, 1);
+	skb->data[frame_size / 2 + 10] =3D 0xBE;
+	skb->data[frame_size / 2 + 12] =3D 0xAF;
 }
=20
 static int e1000_check_lbtest_frame(struct sk_buff *skb,
--=20
2.17.1


--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8OCl0ACgkQ+gRsbIfe
746ntw//Up63f9QJZQqL9+A+8jZ6A99A9PBee7fkjHVtAiLdaVg/xQMJD3lvbrPS
MtdWfUsVOwvSkPGyGd8+v1XH3Xk/7mj2lFrG28fR4z2BxS8u3Kzu8ufiB0bAJH9n
8F5hGTzwJkplP20bPcsqq6z5ffvZicoIGmIOZra3tHRNM3+3TurVJi7zJw8Xnl03
PL5+EHQm5qbAG3iXsrx1nvUyPCHH6rX6fQH9PegcEt172CisnWx9/6gS2cF/U8Ba
dWMozeK11DnPt1z2bV+oGxsPiFc+L+y/SwhkV46FDmKasHwBCWTBClJW3royGu4u
O7PriCh8HYYqu0vu8CWRBPrwF7Ube5/ZBhnKmyjA7zUTF1LQyaoDSdTHajeaONaa
/uRuaqgI7GGioLkIXUxh4XdZQJE2WuuCl3sDW4bRidMI1VHliUNtqtXJ2ALzhxuH
bkh0cJY7WxYoDBbI1G6HVHcD4a9hxITTku13Dcg21Il5uKZ36WXzzb0a1RG5kuxx
5jAtEpxK4cW4kXipXPOXcEYoKmnKYFmTmY5hc+QLe0AOWsDUJdDP51Q/r7/eKS4X
swVlV0gyubhsZ36BL5sebGiM/IYCYvocv00PA8/9fRebNbw5nsd8nC/glcT2ekgR
+ISpehIiCZo3kmMmOQ/p/3beK4B5ZH0x/VdAWh7+vqIqfMHbzxg=
=eUcI
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--

--===============1962971156662929985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1962971156662929985==--
