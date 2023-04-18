Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1832E6E67DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Apr 2023 17:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1A7241E2F;
	Tue, 18 Apr 2023 15:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1A7241E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681830827;
	bh=Iv2T++amMKLDNLbcslgAIuk6X7OCr+R7K0gvoQBHiPw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0kyY+PF+azqZBPoIfcUsshTjvP7FW0K5j8CiFBprApxocmUFm5MfPTg/xVwl43N8J
	 n4nHtHocp3QhncyQlRgyyvJVX7V1LUbJixJEL6UiOIM1Ebg1qRe9ORgtrJ5TO8BSE0
	 cegiAvUi84huiTGTDMZDL3ss6A0u9LTGraglElUGwnVOZpXJPsWwoKMp0J4KmK0lfI
	 2wrWlOZr8CROLaTr/AQbxXsYPFk6zWFB6PPddmSTY5l6I5P9mqfv3GLutcIkyGJKBd
	 WORvXXEzsjT3VdHnmj8hkK635IpJaai3vVpgJiNyq/ACe1yDPjI7olM80k2FPnj8dm
	 AjlzV1ZTdKHGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xN2pGBFcpdQ6; Tue, 18 Apr 2023 15:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C00F641DFB;
	Tue, 18 Apr 2023 15:13:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C00F641DFB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 914FB1C4253
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 06:38:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74B33401FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 06:38:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74B33401FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cmQ0Hd40L47U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Apr 2023 06:38:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19CD54029F
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19CD54029F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Apr 2023 06:38:20 +0000 (UTC)
From: Kurt Kanzenbach <kurt.kanzenbach@linutronix.de>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Brouer, Jesper"
 <brouer@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 Stanislav Fomichev <sdf@google.com>, Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8r?=
 =?utf-8?Q?gensen?= <toke@redhat.com>
In-Reply-To: <PH0PR11MB5830D771AA05F28675173A42D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
 <168174344813.593471.4026230439937368990.stgit@firesoul>
 <87leiqsexd.fsf@kurt>
 <PH0PR11MB5830D771AA05F28675173A42D89D9@PH0PR11MB5830.namprd11.prod.outlook.com>
Date: Tue, 18 Apr 2023 08:38:14 +0200
Message-ID: <87pm81hezt.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Apr 2023 15:13:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1681799896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Kfz+D7TM/wHowDOMCAkr1nIxmgPwDwdseJ81VbVMqLU=;
 b=Qja9sjb3hQzLpzYJq2J0Wa+VA84Fie+HUHIAafEimKkSsDTfhfEbA7YKRlIlznBiL7a6A5
 d/0TMIyv7/xxuquJngOnG98QmXOv96gKkv/RIzNbwv5o1ucLLub1LkvX8fgioRLwEqFXWW
 KpxTnnvR06hWG101r/yrIABPF9BZGEh+nDZDjxqZ7BmJ7pDpIxnNJVj/CF4n6fUOBRI2cV
 oPQ5A+cAOkmLLa+gPrUuUPq51uXlvUiy74/S715js6GfMmGO+1hhTkEBNtVn6QGqCsKe6e
 fgyZyVUJA9FCefuEfwA6Ncriwo9Wghm3/9o99YGb5O8711TYZiOklXz1xCPkGA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1681799896;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Kfz+D7TM/wHowDOMCAkr1nIxmgPwDwdseJ81VbVMqLU=;
 b=XO/be0eJ+3EB/ipq+vqyJvwMnot+gGdBOHn8XVymJOPJnAODYiA68QW6/cQQ6xIhZExCLY
 lhsiR3kNp8ZF9cAQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=Qja9sjb3; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=XO/be0eJ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1 5/5] selftests/bpf:
 xdp_hw_metadata track more timestamps
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "martin.lau@kernel.org" <martin.lau@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "ast@kernel.org" <ast@kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brouer,
 Jesper" <brouer@redhat.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "hawk@kernel.org" <hawk@kernel.org>
Content-Type: multipart/mixed; boundary="===============5108503703830314555=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5108503703830314555==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Tue Apr 18 2023, Song, Yoong Siang wrote:
> Tested-by: Song Yoong Siang <yoong.siang.song@intel.com>
>
> I tested this patchset by using I226-LM (rev 04) NIC on Tiger Lake Platform.
> I use testptp selftest tool to make sure PHC is almost same as system clock.

OK, your test result looks sane.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJSBAEBCgA8FiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmQ+OtYeHGt1cnQua2Fu
emVuYmFjaEBsaW51dHJvbml4LmRlAAoJEMGT0fKqRnOC6bsQAJRVKF/pZAkeaqAc
Zrovwe3r4Hk/cQsHhBEwbl7oKLKqXEHRBDeGrIZj80NpkQoAuWfEVLlppqw4KwMH
Ac3FIejTKnrpXJTGm99SwL7pzMu+N98l4MHmPWDTbTUCtz17lDv3BHqTBlZUMEXH
HKWgB5GsFLXfkKVtSfLXDVEx2SQ90RgLXi3GKvBc5X0Iitfm459wP7Mogg69wgty
R17bYgsJtWo2qCjnHGawo5QVhFjHV5Rc6l87Im2fJedStx9Ge+UXD+xqzAc8i1Jk
iEwFQfLIziyXlBViF5GrxOhG6PfQLdt+8v/ABoO+CXpmvOFZ+1Qyu8alAmkmR5ld
wG/V6rZiCMbOViE69nSK6dpxOE0PXa8b7Wc0HRM+dmjbDPK2M+xnQgoJBmPcONeO
drIOvkDg/LMQGXQhfvr7jL/RefOQFImpTwDc/0XFIUMzFcTIbi7y8j/ZBTLMncWP
Lv/wJMxxnfqXBN2kjvE/AGSB6MfZ5rRNEwpiT/fv/QEJ98QnrZOGthHhCtDamwEL
YXFd/jAbmctteSQNTaa9UnRyRR/eP+JNUJNiDUybs4rsNfI+DSch2c3yRFE105lO
krcz2Bn4cDoDNOAt/qBgJYYZXUeT2keCtRRAhR3abjdpGqdTsc+WFUHQB1lyeXXj
St1S+5DrUeqMgTowGML8JYqRtqE7
=Vlmm
-----END PGP SIGNATURE-----
--=-=-=--

--===============5108503703830314555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5108503703830314555==--
