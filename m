Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3640921FD98
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2020 21:42:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC0118987D;
	Tue, 14 Jul 2020 19:42:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NB-f8ErhlgAb; Tue, 14 Jul 2020 19:42:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9107B89884;
	Tue, 14 Jul 2020 19:42:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D0B01BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08392897ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udpC2KvrF-aS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2020 19:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 95CB8897DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:40:48 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id q17so7437959pls.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 12:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=wNJ0xqiQMwf9wWolmo2V4dwfmbUBzz5d6DDV7wSVVDU=;
 b=eP79sZLCqJtSL9WEEFX5EaaYP2heGJfFeAyQ6tvZshn/yxxu+m+xqfmi+SdX3bhtrc
 RJtmkqNoiZ4yw9eYBsVPjYCkFllcW4K8ObnGQfh/R1lOCK8Su4l5gURpSSiFk2rkmAVJ
 7RIUwCO6eyIRY6MN4N14tUg+cToCHO7udjv1j2lfp64Qux6zmV1IrlV2PKhQ2I0g5krl
 RdYNQIyzhUxe3RAnSzwOv3XtTNf1bl4HVYmWCS7DA8imU9NDoGKww0s4k59+gaqSBFAJ
 qoudDtigrhf+aETbaGdAWu2aDXqH3fGt94qWSFsRDd6YT7essvT/eYq2uRyFJVYdFrxs
 6XJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=wNJ0xqiQMwf9wWolmo2V4dwfmbUBzz5d6DDV7wSVVDU=;
 b=qEFlQc7m0N8Ozjs69Yls162tmOgUg4sZj+TaCcyY7N3Q6WsnVN0lRfSUzYehHNqlXm
 F4r1ayhjhhfps5dq3QsbJX66y4wsLhQuSbFSTqqPR6biMwwH7eWsPSY2cLE7um52ZnvR
 lBsUTDTiEyEDruZWMblFPtXkLd1cCwanWoF03QmAqB/IWJLI2GmTXi+9vPUK2Ht+muzB
 J0tQ+jx6+Ddy/96MRF1kfO/2abnZHsfssZtZnyqJVunPfuPVpX6jL0AB/aVuP4fXavOa
 2LaDwY8hyFWPngwjo/K2DkvBnjhJlltABSO/EkVNbhrKYG3uhKF6WHFoaVfsMPto1ce7
 KPag==
X-Gm-Message-State: AOAM530bgHTQGkZMwFgaLOZgwW3gLju8Nfosljm8t8mqUZeV9I4CsCo2
 KOUwY9j4TvlCvxUgkycNuQY=
X-Google-Smtp-Source: ABdhPJyyflRxQgKU+fmkrQq4IN69SodmKNRAcSYeuyBMhZoOiLpFcwnXc5U0QG974Y1D0I4womwZ+g==
X-Received: by 2002:a17:90a:1f81:: with SMTP id
 x1mr5717456pja.115.1594755648184; 
 Tue, 14 Jul 2020 12:40:48 -0700 (PDT)
Received: from blackclown ([103.88.82.145])
 by smtp.gmail.com with ESMTPSA id h23sm5569pfo.166.2020.07.14.12.40.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Jul 2020 12:40:47 -0700 (PDT)
Date: Wed, 15 Jul 2020 01:10:35 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net, kuba@kernel.org
Message-ID: <20200714194035.GA21382@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 14 Jul 2020 19:42:28 +0000
Subject: [Intel-wired-lan] [PATCH 1/4] e1000/e1000_ethtool.c: Remove
 unnecessary usages of memset
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
Content-Type: multipart/mixed; boundary="===============4426033420153440923=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4426033420153440923==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace memsets of 1 byte with simple assignments.
Issue reported by checkpatch.pl.

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net=
/ethernet/intel/e1000/e1000_ethtool.c
index 0b4196d2cdd4..f976e9daa3d8 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
@@ -1356,8 +1356,8 @@ static void e1000_create_lbtest_frame(struct sk_buff =
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
 static int e1000_check_lbtest_frame(const unsigned char *data,
--=20
2.17.1


--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8OCjIACgkQ+gRsbIfe
747epg//conbuZWFS5h8Mh9FCzDGo6kg8I5K3s+UtdTWXSIX5OEy34KmJAYx81fw
qGMZaR4CyF4O/0vI8KxgUMTPGxf77keTsSDQhU4fE9IPPfI0MhGzLM+M5gjUiTfW
Ireu76SCme6orWv6Z7+q6CVbLFYMIL7hslLgLTFI9+6MbX/IBqEXKPpa3owthbsR
qHR8u8U2VAR9jEyB9CdND4oCsrF1GabZS/Dx01Uf2+3MQqEe4fdMTwqBkv1v4Nm6
XDE3FCLqWNWzc4cogFPWpDFGu0esbD7WV3X7pUuiGVIs2HNUslNKKOMyWfDwU9Cz
qvp8GHUWKARttcEgNUjgVyjtQuLmSWrpFUHFCrulI+8ZKidk7GF0RLZ0MB43ha5u
/CQWJCSPwuG9mJPrSfekRvv1zd/QvyKqzTY4JHLoCMY5VWM2gZHb7TCZua4ZaAWa
psq4itAML6IRbO7mQn+W2W8plFxAiBeDvcblH2gJwT9QMi1P16mTm3rZUV4e+0bS
9MGF3DmKTUY73oeMfkTuKSpuLFjpdTIaupRwN5vxozSRVJSV3vXhjSlwx/Ie0wd/
t8vO1TIfMYmNmDwxIJ3jnAGaMwDhckg0RjrONCMWZHDkvafftruUDrYvghYDbZDa
HPZ1+0dcgPi9nATBTZrVeW4ucr9Mb0+v0bH/CmC1Gwx1caoGA24=
=53mg
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--

--===============4426033420153440923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4426033420153440923==--
