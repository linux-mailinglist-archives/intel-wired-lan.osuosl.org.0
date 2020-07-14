Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D173C21FD99
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2020 21:42:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 870368988D;
	Tue, 14 Jul 2020 19:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XmJFF0vx9B1J; Tue, 14 Jul 2020 19:42:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 244D6898A2;
	Tue, 14 Jul 2020 19:42:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1AAA1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB5FD89883
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7q8bOSp3mEq1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2020 19:42:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 771D68987D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:42:00 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d4so8047576pgk.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 12:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=U6wnNdQGYzjTM+8H6Cnp8bIF9ECNSsdex0J9VIEDN8k=;
 b=WEBXB6igBdu6ROj5Tdt64QJhL9xOAqNkJGXW4MpgsabaGHtlIGrooBXTq2dhm+LkN8
 s5ZXTb3KBqo7i+kWvyGCtH390hxDCSYK4tJfuN9GR5b8UOq1qxOE5tclLpgxfiRt/jLN
 fexCwCWqOc/97/UfokXolHj9N/jgDWsCahnzPR8tURwoHDXh9BG6AModtiVlIrhpnm6P
 UlRVg3weGUgWq4TV8OZArK7KTH22VzL8415ELf9x7TATwVBhKRUPQtEHuekmIEqztx5R
 LMTt528AWoPrcr3bBZzx70w+ZsP+2l8Bx3omLxio+wt2l/IqwUdd86x+AKeqxbihbTmr
 gXIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=U6wnNdQGYzjTM+8H6Cnp8bIF9ECNSsdex0J9VIEDN8k=;
 b=Vr5NDyseNitj5l+feGDFe+vTU6xYuK+ezlJutk9x7ScBbKMtowegsbxa5DfCMNHhQw
 whp/cIyrTvTf6FuX6AeWFBkqERh7r5QkEkN9Fn/H9cSRX9Yjdlqo4FNapJc1rGrTcQUJ
 tUVlidP2ZcENpwoyfwIB86Hi1gg1c0PkqNyMwSWBs8nzs9/KtnjclX2bbBAspbYM5xQN
 zRmgpTZ9GejPmipjMLrkxdqgNP7MgGnUHw7V1aDovUroR8eJdgwehAnMRIGBd+dsNg8h
 yW8YwspAjUrA0M5dCoq3pSjFvHiVcTzdQyxo7+jH03DG/YAfpHPbJjZiM38FlIVWan7M
 Hsiw==
X-Gm-Message-State: AOAM530pD3tKAg+wLlaTlX65PVTYQTmg2AGLcI2ecDS9slHi8xJK88Ho
 BY06Dq/LSgGfyi9DE6EQ0B0=
X-Google-Smtp-Source: ABdhPJybSvB/F9GjQ0jmE43Re8wHuZG9KV1oJjCCUTGugBHRSsDGybtJm4nzTYbu5nOAY0VAf9qYGQ==
X-Received: by 2002:a62:8f50:: with SMTP id n77mr5343854pfd.259.1594755720063; 
 Tue, 14 Jul 2020 12:42:00 -0700 (PDT)
Received: from blackclown ([103.88.82.145])
 by smtp.gmail.com with ESMTPSA id z1sm16815171pgk.89.2020.07.14.12.41.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Jul 2020 12:41:59 -0700 (PDT)
Date: Wed, 15 Jul 2020 01:11:47 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net, kuba@kernel.org
Message-ID: <20200714194147.GA21537@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 14 Jul 2020 19:42:28 +0000
Subject: [Intel-wired-lan] [PATCH 3/4] igb/igb_ethtool.c : Remove
 unnecessary usages of memset.
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
Content-Type: multipart/mixed; boundary="===============8503896710148124824=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============8503896710148124824==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace memsets of 1 byte with simple assignment.
Issue found with checkpatch.pl

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/eth=
ernet/intel/igb/igb_ethtool.c
index c2cf414d126b..6e8231c1ddf0 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1782,8 +1782,8 @@ static void igb_create_lbtest_frame(struct sk_buff *s=
kb,
 	memset(skb->data, 0xFF, frame_size);
 	frame_size /=3D 2;
 	memset(&skb->data[frame_size], 0xAA, frame_size - 1);
-	memset(&skb->data[frame_size + 10], 0xBE, 1);
-	memset(&skb->data[frame_size + 12], 0xAF, 1);
+	skb->data[frame_size + 10] =3D 0xBE;
+	skb->data[frame_size + 12] =3D 0xAF;
 }
=20
 static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
--=20
2.17.1


--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8OCnsACgkQ+gRsbIfe
7475jQ/5AdsAUEVRQdc0hTq29NBB9KUt2H2J6niOmK0ZE2cvKvt2rxRQ76d4r6pt
rWTD6v4FckiDuyoazjH5tZUlIVxVCFoybnpsS4a0aq6rQZyjZXKpTVwCwQH1tqDf
QxojbKNVKORdyI/u3x7hsxSKdKALPVQVYpUvNKGE2hSIm2+/jWIjXnyPlyCBmZOn
VesYzQ1PA2rPDccWHCXp3ijtGOXXqEu+hDOZbmzgtn8yc2KPSmb0zutbObL2Nl/m
OYTLUtDzNOMGeksmqzX+4EZ2ZrwaZ397zqGuKdxDKHKup5LWVf0qLaWWIYZiLdhD
mzWAbSWOKzVd6jOn/e2WKKin1TTN0wC4qgN84XXkyfrSE3ufpGAQsW2zhfgqA8jD
XPPfu+SHRXuqLhYApiNuhZh3ePOQjmcwCZ9TA7/YOMLrgIRNpwqRDY0PeFpWjjr3
OUbsPnCrRx3w1JkmslRaFwSE98wGDTmWZovT5bf6jdkl5i0xyHtXNWF4d/gg3Sre
0+EFSerViO1nMFW/w1qizuuSgwJBP0jFSxoM6RAl28gTH+Bj3g9TKC9YO49RM41G
tO1GrK/JksnXEkjQf3Orjv4hdqB7efDfYKG8kha6wchPfIbNM/N9yEenvZjUi9PN
NIw2hW64PEoYg4CDPDHISme5YPt4j20Sb3XhWU+lzUCvaNFY1+k=
=cAMq
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--

--===============8503896710148124824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============8503896710148124824==--
