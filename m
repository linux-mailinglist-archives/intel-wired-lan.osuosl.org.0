Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE421DBE18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 21:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E47A88C6E;
	Wed, 20 May 2020 19:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-R8YSn8Vdsz; Wed, 20 May 2020 19:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2275088C19;
	Wed, 20 May 2020 19:38:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 178831BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1073286FB7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ol1oDr93zAFP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 17:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2ECC086FB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 17:19:36 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id n5so3735436wmd.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 10:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=y8yUyVm1iQo/mod3v/ZorgdMr0NOkedItsaMzyWnI3k=;
 b=i+sEwVLCyBecdxxNGXrvdzLG4bFDyxadl2RsVH2OklScUeAFcJ9HmNEdo6usZqYSIy
 OkaJGdMvq5MGmNBCLM0I892EhrkWR0r8Kxht1UfRb9OvZISLphzQuvaYumVsGiPcbqBm
 Gko9HPAXaxEGlmID966izg0FhQP+H0i6UlLxnjlak/SrJAmpHHVCI5qTLon1Fc979Auy
 iuGWPuTyx04O+in+Y4Q5MqoqCS+YCMh8m+ublZtIdGJkN1vPnExkbAU72JA62MDvIezw
 Pz5GcZ6oYsSVF+gtV6TpuVYtqBT3no0m/zRGod5s+h8QUzQeSaKAPohpL/Y8YbnPy90U
 ndEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=y8yUyVm1iQo/mod3v/ZorgdMr0NOkedItsaMzyWnI3k=;
 b=atQsB5zrjzQ0VRmo52yIY438RZLcrorQn54dfzkUfjwdje52qATIpz6yFcITc/bzno
 JASRC8coa9KBsLdMvLbeg+3SmjHJdgiZ1+WWaAB0OooOIPHfhPVm7hrf4LctlMyfYXD2
 5WMhy0gxdZx/I2Xth83yTAeC7apdCkNkL5f/aZhnqLomzpntdaTTRBfje4Cbb6hwv6BT
 suJCAB2d/11fNX5K4AhxuZpr5+5p7exeleXOaGeJQGdAuIFnXQBXxLe4bFf1SSASMwW9
 jq3i99DTbfaInmKUXOTLxQaJS0FvujRhgJwbnrHRB0yJH7r2yRMw42tYG8IGn/ipYh/X
 0pBQ==
X-Gm-Message-State: AOAM531O9LqiPdZOaci430W8u72n+Ik1IYv9sOkoH1AemexHXbCU/bkV
 CjKZ58rq4AiHFfwd0sipFg2s3DJAkYUWimPIiaU=
X-Google-Smtp-Source: ABdhPJyHqLx5nZUFccD6mBIJZ0Sj6jqebi2SOcGJxSylM31RSSLDJaUMgq5UtSHHT/NBLm7NS0684QV+bsyGj9eIhLY=
X-Received: by 2002:a1c:3281:: with SMTP id y123mr5449288wmy.30.1589995174436; 
 Wed, 20 May 2020 10:19:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200520094742.337678-1-bjorn.topel@gmail.com>
 <20200520094742.337678-8-bjorn.topel@gmail.com>
 <20200520100218.56e4ee2c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200520100218.56e4ee2c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 20 May 2020 19:19:22 +0200
Message-ID: <CAJ+HfNgE5TTFfGa-XNS7_=ukcNJ=jMUoBLmmA_c=iVY3C_DXZA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Wed, 20 May 2020 19:38:45 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 07/15] i40e: separate
 kernel allocated rx_bi rings from AF_XDP rings
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
Cc: Maxim Mikityanskiy <maximmi@mellanox.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 David Miller <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMCBNYXkgMjAyMCBhdCAxOTowMiwgSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIDIwIE1heSAyMDIwIDExOjQ3OjM0ICswMjAwIEJqw7Zy
biBUw7ZwZWwgd3JvdGU6Cj4gPiBGcm9tOiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRl
bC5jb20+Cj4gPgo+ID4gQ29udGludWluZyB0aGUgcGF0aCB0byBzdXBwb3J0IE1FTV9UWVBFX1hT
S19CVUZGX1BPT0wsIHRoZSBBRl9YRFAKPiA+IHplcm8tY29weS9za19idWZmIHJ4X2JpIHJpbmdz
IGFyZSBub3cgc2VwYXJhdGUuIEZ1bmN0aW9ucyB0byBwcm9wZXJseQo+ID4gYWxsb2NhdGUgdGhl
IGRpZmZlcmVudCByaW5ncyBhcmUgYWRkZWQgYXMgd2VsbC4KPiA+Cj4gPiB2My0+djQ6IE1hZGUg
aTQwZV9mZF9oYW5kbGVfc3RhdHVzKCkgc3RhdGljLiAoa2J1aWxkIHRlc3Qgcm9ib3QpCj4gPgo+
ID4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCj4gPiBTaWduZWQtb2ZmLWJ5
OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4KPiBUaGVyZSBpcyBhIG5l
dyB3YXJuaW5nIGhlcmUsIGF0IGxlYXN0IG9uZS4gQnV0IGk0MGUgaGFzIHNvIG1hbnkKPiBleGlz
dGluZyB3YXJuaW5ncyB3aXRoIFc9MSwgSSBjYW4ndCBmaWd1cmUgb3V0IHdoaWNoIG9uZSBpcyBu
ZXcgOigKPgo+IFlvdSBtb3N0IGxpa2VseSBmb3Jnb3QgdG8gYWRqdXN0IGtkb2Mgc29tZXdoZXJl
IGFmdGVyIGFkZGluZyBvcgo+IHJlbW92aW5nIGEgZnVuY3Rpb24gcGFyYW1ldGVyLgoKSG1tLCB5
ZXMuIEEgbG90IG9mIHdhcm5pbmdzIHRoZXJlLiBJJ2xsIHNlZSBpZiBJIGNhbiBmaW5kIGl0LiBU
aGFua3MhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
