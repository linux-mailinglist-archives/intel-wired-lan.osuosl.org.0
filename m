Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DC288618A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 21:20:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C10C8229A;
	Thu, 21 Mar 2024 20:20:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbFx2XQzRG68; Thu, 21 Mar 2024 20:20:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB32B822AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711052420;
	bh=eFrHAh7BJNnqflbNawWUWzv1wOsF6n2g6fArJ0mZMlY=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pz8v+1PQNT0ZktZkci5LHAz24xMRWpFmfMKOKQ/MQPOKH9VLazIJ45JFmRHjqoH/k
	 2Gy0GqkIeYsmqgHftujhbh6zIUl0A8qqw8ul1KeZvXLqE5WnIJdVIVEP/m793oh4ca
	 WtmYdNT1facQJESAV8WKkRZzD/1s0S3DhdnnsAlHiOztu0nFI5RmrMtm9P1IkBvnOh
	 giN48N0dwbmLz7MTPaZDVh05JLAiqE/NIzHgLUTH1vSC7vZ8ZpvFf2+9mI3nprNG6B
	 QRG0MtmlTXSmWk9mBcwvPiTUK+JbEJxgIAw5Bal7IpbrHRzbz/v2z36vejgv8vz2c1
	 Qj+Q50c+8gpaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB32B822AD;
	Thu, 21 Mar 2024 20:20:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C708A1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 20:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2ABE60699
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 20:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XPn90QcpVVkb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 20:20:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.134.164.104;
 helo=mail3-relais-sop.national.inria.fr; envelope-from=julia.lawall@inria.fr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 595AD60685
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 595AD60685
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 595AD60685
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 20:20:16 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.07,143,1708383600"; d="scan'208";a="82803127"
Received: from 184-074-243-067.biz.spectrum.com (HELO smtpclient.apple)
 ([184.74.243.67]) by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Mar 2024 21:20:12 +0100
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Julia Lawall <Julia.Lawall@inria.fr>
Mime-Version: 1.0 (1.0)
Date: Thu, 21 Mar 2024 16:20:09 -0400
Message-Id: <F2FBADE8-EDF9-4987-A97B-CF4D2D1452E0@inria.fr>
References: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
In-Reply-To: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
To: Markus Elfring <Markus.Elfring@web.de>
X-Mailer: iPhone Mail (19H384)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inria.fr; s=dc;
 h=content-transfer-encoding:from:mime-version:subject:date:
 message-id:references:cc:in-reply-to:to;
 bh=eFrHAh7BJNnqflbNawWUWzv1wOsF6n2g6fArJ0mZMlY=;
 b=b+iOeAwyum6sXPaLJdb+fWcvioaIay6A5QdvQAH59gWJUsmGC9jNdIvf
 /ahM63HH30yJBWqhsW2vS2WPc5h/9lkl9FlcxgEizgMNTAwfqQZw4FHWI
 d57CFM4Nc+XCYjiqBF+Y6RbCzR99H+QXO1yy2H4bghO54mhDp3Cik0xCj
 0=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=inria.fr
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256
 header.s=dc header.b=b+iOeAwy
X-Mailman-Original-Authentication-Results: mail3-relais-sop.national.inria.fr;
 dkim=none (message not signed)
 header.i=none; spf=SoftFail smtp.mailfrom=Julia.Lawall@inria.fr;
 dmarc=fail (p=none dis=none) d=inria.fr
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 intel-wired-lan@lists.osuosl.org, Jonathan Cameron <jic23@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Does one prefer an initialization of null at the top of the function or an i=
nitialization to a meaningful value in the middle of the function ?

(Sorry for top posting)


Sent from my iPhone

> On 21 Mar 2024, at 14:14, Markus Elfring <Markus.Elfring@web.de> wrote:
>=20
> =EF=BB=BF
>>=20
>>> How do you think about to reduce the scope for the affected local variab=
le instead
>>> with the help of a small script (like the following) for the semantic pa=
tch language?
>>>=20
>>> @movement@
>>> attribute name __free;
>>> @@
>>> -u8 *tx_frame __free(kfree);
>>> int i;
>>> ... when any
>>> if (ice_fltr_add_mac(test_vsi, ...))
>>> { ... }
>>> +
>>> +{
>>> +u8 *tx_frame __free(kfree) =3D NULL;
>>> if (ice_lbtest_create_frame(pf, &tx_frame, ...))
>>> { ... }
>>> ... when any
>>> +}
>>> +
>>> valid_frames =3D ice_lbtest_receive_frames(...);
>>=20
>> I believe you don't understand what the scope of the above can be.
>=20
> Will the understanding improve for the proposed source code transformation=
?
>=20
> Regards,
> Markus

