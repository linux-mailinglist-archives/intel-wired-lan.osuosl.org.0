Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C618E886044
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 19:05:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D47141781;
	Thu, 21 Mar 2024 18:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dedrSKKkVrdJ; Thu, 21 Mar 2024 18:05:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8C2E41782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711044333;
	bh=XR5rc0S/5gMcNC+NgBpFr5aoRAVSFdliYHhVZzy6GVk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K9iBNIud9B4zmdIoeZpdVGgS5CMErkpCGnkbaR2uEq/JeTHakagHb7j2dP222K05n
	 0sSBIsxRjdBu7MmP9uxpOt/d+kQYcaSNJkab0ItQ3/UwltLgSHRC5E6uXlNKYSeBx3
	 NjLkozWPMhys/IBZKtG3lAiMfJ+6eRcQjTEaJXfNJraTiaUlsege7nyrr+X4w9KRSf
	 o9UpkOo/v0bhw/OFmutRyjBF8Z8Sj8oOXb0W+7vbSi3r3uxWSFL5XNVw95xwxonagI
	 s73lyKUaiYbsMOHxNMtIHAAy0isEZf8pwZt2eZu+NgvT/IoLOYTLwjT+aSS6z+rzZO
	 CglZ04sdZ/Lgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8C2E41782;
	Thu, 21 Mar 2024 18:05:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B77AB1BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:05:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF7A3415DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9fv3WyzcIaJQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 18:05:30 +0000 (UTC)
X-Greylist: delayed 332 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 21 Mar 2024 18:05:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1CD8B415C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CD8B415C5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.3;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CD8B415C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:05:29 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MRW6L-1rQRxD46UP-00ScjT; Thu, 21
 Mar 2024 18:59:19 +0100
Message-ID: <d2b1f3bd-42f1-483b-916e-3735b39a30e1@web.de>
Date: Thu, 21 Mar 2024 18:59:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:V0HP89HbmD0ouUhnwO91mCsXsGnWuF9Bmjam4+ePUedUat+hJTu
 peduW2zPMrbVMSOjYTSiZ9VUQRXVQD/OSjGIoSvIlqQw5j6p9os+Yh5e+zu8dkF8+Qn52US
 wibyD2ex+TpHUo/dpIttenN+pa+cRpaXIzQhG/5xgbncTdLxzQMDwtu4r0MpCxmBOil9lgk
 WDO6m4DWr7vtaR/w62YGA==
UI-OutboundReport: notjunk:1;M01:P0:B2DNFMyFY28=;ATXJbpVWpMOQaEKtNWIOZ8gCwQV
 Mfw2mzqTlm41PQS9iaUptNmnSR3Mp6B6R6PoPFK0AMgUqVtrN1WYIr9sGIqwXiVKPUyG07E8T
 A1QYzMyRiL9nUWciB5M43QZlssly6v6ZXxJq4TKMdTICP9HCv+J/TqFBdGWleJWOBwz/isg3N
 Hqbd8kyz1fzg0SYR97/GQO2QiKbW3WLT0ivpVJIY4q4fmi+mzgHsoi3d0jmj93nWgvimVHqUy
 YyRAcWknw0ysaXkUfihX9sKg6sbHpQOPrCpmNICN1pR0MtZW1Pt4JC92LqdgPoec1BYEiqxv9
 CTc8/RsttlL5b+DEAZnUVyyaMEnu2lpoRNjfzIGVGKRpf7OH8u2JHkkxTRgrp60sVDWdD1ugW
 xc7GfeI+5LWEBWcrsE6YLDl8lasUxkoUuaPmEjF54ZJfzTd9XlQSWnfAlAgqyuhRKmBph53pP
 q4cBT+6S6PnLLBSvnfBTCyP11zqDdK+lsxecIuVGBHA2DgxNi4RxPptybfWyc6NKUvCPgfG+0
 Q38qLaCUxHXBVhp0i10ILqbosiAn2OVb5UvIQwjUIsTwJuaDfW/KeqgSj4MJXeFTOonFlf/k1
 yfXFXaiW11JQ25kgRNiymMH2gjqPcPXs08JPSV2O0r9RUeqspeTHUz6APK3KH1Jse9aBWhAPv
 xBTrJlw+KtUeBMqDg+0YysH8Tk28mP4EFRDqhVrSdIM07P++5/0ceRXk+B3DqqJU5rY2hPYsB
 PUWRxQSFF2O8TmZ6uNhPd3wDlg7dpt6VZl1Gg1mxn1acXb9kl/sbEzwzjDyfSmdOrNEIBdVuc
 xAfC66HXxYj/EjQ53Hg1FcQOEMpYcXbB4UqvkAE5uEorc=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711044319; x=1711649119; i=markus.elfring@web.de;
 bh=XR5rc0S/5gMcNC+NgBpFr5aoRAVSFdliYHhVZzy6GVk=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
 In-Reply-To;
 b=NeKmWZXWddBPIi6lSzMHfywcSQ0goyI/hggv8+7bOKVJ26bJM7X7Y2vBecu44BHl
 2gXzrMCHJpIfHi+T8HQP+vYn1HIhcjaBWXaUFbO0jPQG7l8F1S/8pECmW5EFh2B0A
 9juvV4sOgLhzuJ1Tk6s7UILeIKrgtep4A3MkXRjtPOcVpkAxFARa/ojwJjcFJYHyL
 pj0C40WuWKO2RYvEevuOr4YwX0MEpF140IdB5ZiOGwgW0RxTlNUkKt2Z/rVr8fT6M
 NkjzqULTj5exb4pb8moFTMccvQHrlhqO0n2pCNy8oCNs4XzmN5Lr+DMx+eGtpOjPx
 MvhiYItiOi9zvbizEg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=NeKmWZXW
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Kees Cook <keescook@chromium.org>, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Automatically cleaned up pointers need to be initialized before exiting
> their scope.  In this case, they need to be initialized to NULL before
> any return statement.

How will development interests evolve further for such design aspects?


=E2=80=A6
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -941,11 +941,11 @@ static u64 ice_loopback_test(struct net_device *ne=
tdev)
>  	struct ice_netdev_priv *np =3D netdev_priv(netdev);
>  	struct ice_vsi *orig_vsi =3D np->vsi, *test_vsi;
>  	struct ice_pf *pf =3D orig_vsi->back;
> +	u8 *tx_frame __free(kfree) =3D NULL;
>  	u8 broadcast[ETH_ALEN], ret =3D 0;
>  	int num_frames, valid_frames;
>  	struct ice_tx_ring *tx_ring;
>  	struct ice_rx_ring *rx_ring;
> -	u8 *tx_frame __free(kfree);
>  	int i;
>
>  	netdev_info(netdev, "loopback test\n");

How do you think about to reduce the scope for the affected local variable=
 instead
with the help of a small script (like the following) for the semantic patc=
h language?

@movement@
attribute name __free;
@@
-u8 *tx_frame __free(kfree);
 int i;
 ... when any
 if (ice_fltr_add_mac(test_vsi, ...))
 { ... }
+
+{
+u8 *tx_frame __free(kfree) =3D NULL;
 if (ice_lbtest_create_frame(pf, &tx_frame, ...))
 { ... }
 ... when any
+}
+
 valid_frames =3D ice_lbtest_receive_frames(...);


Regards,
Markus
