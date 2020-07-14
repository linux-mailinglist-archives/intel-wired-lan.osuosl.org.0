Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD7721FD9B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2020 21:42:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1BD789DE9;
	Tue, 14 Jul 2020 19:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nIqcQD5xrpSr; Tue, 14 Jul 2020 19:42:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A04889DEE;
	Tue, 14 Jul 2020 19:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 58FD71BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC26A87BB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qnjR4MvapDDm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2020 19:42:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 51DD087BA9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 19:42:26 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o13so8056491pgf.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2020 12:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=PQoiTk/94i+cEQXK8JsAB0AkTjYJXwZwOn4dJ+xwUDg=;
 b=AXt6kevxd3MbkPZ1VCvIa7CWEeXW1Hnzu9JlVFfg+1OzvgzUAs4ASun5mkK+0k500o
 54P7OkAxIMaeRNbb/vjw0CL+AutZpp0r7vyr5oyUq4ShbS2sVv/2A0MWOOff+TCUY+GK
 pKhZ2JjaGSpeJShOUUlm56WAoCdzjQg0SPcnrkLVptvoSMr5T1Sf0HXgY2zsFwfsPWm7
 8xSYOIfbXa2kgyKX++hsK8Zo0qwamVWWPEzJ9ZaztPc5qb4phTanBGehRlouMu37JdT2
 E1mOz3JeXHs6zZyqFIEezDNeKtT8bcUCsxRPjyv/6wcz6xCO27uD+xryOUOnbqiuvk3/
 s5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=PQoiTk/94i+cEQXK8JsAB0AkTjYJXwZwOn4dJ+xwUDg=;
 b=d99u1bU8la9wDA+vV8WNOL6iEzizG7xW6aqF7PLXFaqJSBYRRO1EJ7zvBRYcsIvPdM
 qsn62V2gFzWURWdTUt+Y6NfjiDqfP0bVQVmY91z6vQtdhEEWDmV9TP9IeGW4/FuIud+t
 ofofxwJErXV+FrMHVpyOFXplayXxrw0UF0nCegYQ+iYw3cWVuFW/UZNrNNX+MFh7MhOh
 3ma26zpz6HT/iFyiSEOO+REQiUhET5mvTFFFVpvkcARSQfHFCHtlJCz8qXeLhAPYBcbN
 vUArrRvEe30yzVzZhbW1oF4kHKOKrgf+u4F7MbwPUN110zbvulFmznZbWNn5GHLBaHhg
 Tlzg==
X-Gm-Message-State: AOAM5316ntKtDUPhzUYa9bY8PhQSAYLNr+PpCpfpawvvhJYr4dpOc/hD
 PATWEZ0WCpspySxnkmU3EAdfi13onI9q9g==
X-Google-Smtp-Source: ABdhPJwAec0PSq8vCkDHhMwK5e+77YkqFKNDRznTfSIalx/Ujpnz4QHpwP48pufGGWmOeeKFrr9t7g==
X-Received: by 2002:a05:6a00:f:: with SMTP id
 h15mr5547490pfk.193.1594755745915; 
 Tue, 14 Jul 2020 12:42:25 -0700 (PDT)
Received: from blackclown ([103.88.82.145])
 by smtp.gmail.com with ESMTPSA id g6sm10805pfr.129.2020.07.14.12.42.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Jul 2020 12:42:25 -0700 (PDT)
Date: Wed, 15 Jul 2020 01:12:13 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jeffrey.t.kirsher@intel.com, davem@davemloft.net, kuba@kernel.org
Message-ID: <20200714194212.GA21612@blackclown>
MIME-Version: 1.0
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 14 Jul 2020 19:42:37 +0000
Subject: [Intel-wired-lan] [PATCH 4/4] ixgbe/ixgbe_ethtool.c: Remove
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
Content-Type: multipart/mixed; boundary="===============0558642458736464157=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============0558642458736464157==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Replace memsets of 1 byte with simple assignment.
Issue found with checkpatch.pl

Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 6725d892336e..71ec908266a6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1951,8 +1951,8 @@ static void ixgbe_create_lbtest_frame(struct sk_buff =
*skb,
 	memset(skb->data, 0xFF, frame_size);
 	frame_size >>=3D 1;
 	memset(&skb->data[frame_size], 0xAA, frame_size / 2 - 1);
-	memset(&skb->data[frame_size + 10], 0xBE, 1);
-	memset(&skb->data[frame_size + 12], 0xAF, 1);
+	skb->data[frame_size + 10] =3D 0xBE;
+	skb->data[frame_size + 12] =3D 0xAF;
 }
=20
 static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
--=20
2.17.1


--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl8OCpQACgkQ+gRsbIfe
747X5hAAmO9wn96MNt3fhAqcRyBhBhOvp01FWsT+wzrwjc+1bw4lkhROTDcrOjpf
1efjH5SijYmhpe5WwtmmW82lLLBf8Dz1P3z50LDW/P/Y4LJBJa401d+iUubw8VNI
an0hcZ7RqJuxO9P4LI1HT+xa7OlI5nZB1bYEPToeQRdbutLXZg7KmIP/mlMYK76i
2e4cj0oVCkKtYcsPTK6tMCAmWFhR58uxoiS5OVIqz2r6kyISMplwF0rzv3uUbz8Q
hUBh3dtQfoAENaSTlvcWCb8Bpdgp/DoaQOPgRD97nxbWmaX+byg9elyzElMjtvKv
6oU5D9FuDSnO4Z+qciTkajLE+hq2rBpN44WA55DDBcT2q7wbaVtfu18+GJQyUhqb
4PBKeGLLnVORKGhbEtofmDV1mSt+GjvW60YIkaJlF084Our7850xWdqO7jpd5Wtc
jfGQph7TTC7Myqk6xi7foWRe7kuTZNuProC7DFN9z6idow/q9+PVrO2YKEI8pDwi
xj6g3DLurusKneJR1wMFv4T1iU7/Aafc5q90xwSGAku7/W155CO7LR6OkA6Tv/Wg
AcFMBtKyTrUL+1q0zb3eg36DjpH2Tr7T40mtyK5XPo31Bv4PIx8Q1XjLXbCFaDtD
pST0Sam3+M5Ng88ktcGITfbvLzHQ6bNJhGbDstTbW/tqCRZ9peg=
=mpgA
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--

--===============0558642458736464157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0558642458736464157==--
