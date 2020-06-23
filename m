Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5C2205C11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 21:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C65882E2F8;
	Tue, 23 Jun 2020 19:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDzI1SUwDvKc; Tue, 23 Jun 2020 19:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0058F2E2EA;
	Tue, 23 Jun 2020 19:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 945FD1BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FA6F86AEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkqWSqsUC4uZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 09:18:52 +0000 (UTC)
X-Greylist: delayed 00:06:16 by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA8C986ACE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:18:52 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id w9so4680503ilk.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 02:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ArED5WuE5vKbhzC135CloJUx+24YnwYK5ybAFszEdN0=;
 b=ASFYFZLD4aP93JKRZIyA6O0H0NHUXDOOfNLHL/aMSsgdBZOsNnH3zT0gCrhdXgK8nW
 UZDPqMRx5OCS70CZy1VvFgEANzq+vvMA9DkFdMTApsspNXbeKXUaS0QTHNEblOzMxoul
 g+FdxpIqYFHTabKh1lUt2b2iybw5OvjuO7k6R7CoBft0DpYj3dsf39s5Kb0DNOOT3s9j
 LDJTxdGAiwclMZ69BAQmr1FOsIRembCoClHnAnDybsAeZz+xxw/3EHmpT7OuiHsH1krE
 eW/Q5gK2odDWFp6exLEKTP21ly+TvdRk4LNDDTmrHXsHbiKlZMNfOBHZCPU9i8aDsbAT
 xxew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ArED5WuE5vKbhzC135CloJUx+24YnwYK5ybAFszEdN0=;
 b=uDrpATFjevlB8XzL3oKdBp/UIUd6Rjwt0wumIqBbYtUZ1l5k/mAIYM4gbojPhcqAKg
 4/t6IUFzGgjPiBYqZO26r0LQGB1K8ol1xIlh20sWzFubg2QCmJIiuYF2/daHR2iUCQRi
 GUnnhrJMZqbERBO8QB3tmUJ7EDi9U+nc5Amm58n5T3D+3CW+6W8eYv4bKcY2+WypR/X1
 HqyXEDmbKnNJ2wKt44OczQHHdaLRuhqB6nfOmj57r38kXVp3kgMjZUIqIa3QhsuuulBN
 Q3z9np8m0VIIIk2jWMHI4YELUpzFoqpHbnzwMy7wQg1IOe99oBFuWiaKncwbFi9ISaGs
 M2XQ==
X-Gm-Message-State: AOAM533QpF5qVIJGLun76fAUAFz5ryNMIT586LhwTrQ0AgICslgyo/wp
 WAKEbKPiKzHx5nWVT31H68t97SgfmR+TC9yQK9l8BcJ7
X-Google-Smtp-Source: ABdhPJxU72/5mqONl5oZETdKCZkVmtw1I/YvVqqrx1X4F9E+xx1C98ZJHbHv94J5cjJ0DUueC4XDcam6w5sx7T2+tmk=
X-Received: by 2002:a92:c509:: with SMTP id r9mr21034414ilg.189.1592903555407; 
 Tue, 23 Jun 2020 02:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200622100056.10151-1-brgl@bgdev.pl>
 <20200622100056.10151-4-brgl@bgdev.pl>
 <20200622154943.02782b5a@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200622154943.02782b5a@kicinski-fedora-PC1C0HJN>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 23 Jun 2020 11:12:24 +0200
Message-ID: <CAMRc=MfF1RbQCJ62QhscFLu1HKYRc9M-2SMep1_vTJ2xhKjLAA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Approved-At: Tue, 23 Jun 2020 19:46:14 +0000
Subject: Re: [Intel-wired-lan] [PATCH 03/11] net: devres: relax
 devm_register_netdev()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-doc <linux-doc@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 intel-wired-lan@lists.osuosl.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, "David S . Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

d3QuLCAyMyBjemUgMjAyMCBvIDAwOjQ5IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gTW9uLCAyMiBKdW4gMjAyMCAxMjowMDo0OCArMDIwMCBCYXJ0
b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8Ymdv
bGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiA+Cj4gPiBUaGlzIGRldnJlcyBoZWxwZXIgcmVnaXN0
ZXJzIGEgcmVsZWFzZSBjYWxsYmFjayB0aGF0IG9ubHkgdW5yZWdpc3RlcnMKPiA+IHRoZSBuZXRf
ZGV2aWNlLiBJdCB3b3JrcyBwZXJmZWN0bHkgZmluZSB3aXRoIG5ldGRldiBzdHJ1Y3RzIHRoYXQg
YXJlCj4gPiBub3QgbWFuYWdlZCBvbiB0aGVpciBvd24uIFRoZXJlJ3Mgbm8gcmVhc29uIHRvIGNo
ZWNrIHRoaXMgLSBkcm9wIHRoZQo+ID4gd2FybmluZy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBC
YXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+Cj4gSSB0aGlu
ayB0aGUgcmVhc29uaW5nIGZvciB0aGlzIHN1Z2dlc3Rpb24gd2FzIHRvIGNhdGNoIHBvc3NpYmxl
IFVBRgo+IGVycm9ycy4gVGhlIG5ldGRldiBkb2Vzbid0IG5lY2Vzc2FyaWx5IGhhcyB0byBiZSBm
cm9tIGRldm1fYWxsb2NfKgo+IGJ1dCBpdCBoYXMgdG8gYmUgcGFydCBvZiBkZXZtLWVkIG1lbW9y
eSBvciBtZW1vcnkgd2hpY2ggaXMgZnJlZWQKPiBhZnRlciBkcml2ZXIncyByZW1vdmUgY2FsbGJh
Y2suCj4KClllcyBJIHVuZGVyc3RhbmQgdGhhdCBVQUYgd2FzIHRoZSBjb25jZXJuIGhlcmUsIGJ1
dCB0aGlzIGxpbWl0YXRpb24gaXMKdW5uZWNlc3NhcnkuIEluIGl0cyBjdXJyZW50IGZvcm0gZGV2
bV9yZWdpc3Rlcl9uZXRkZXYoKSBvbmx5IHdvcmtzIGZvcgpzdHJ1Y3QgbmV0X2RldmljZSBhbGxv
Y2F0ZWQgd2l0aCBkZXZtX2FsbG9jX2V0aGVyZGV2KCkuIE1lYW53aGlsZQpjYWxsaW5nIGFsbG9j
X25ldGRldigpICh3aGljaCBkb2Vzbid0IGhhdmUgaXRzIGRldm0gY291bnRlcnBhcnQgeWV0IC0K
SSBtYXkgbG9vayBpbnRvIGl0IHNob3J0bHkpLCB0aGVuIHJlZ2lzdGVyaW5nIGEgZGV2bSBhY3Rp
b24gd2l0aApkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKSB3aGljaCB3b3VsZCBmcmVlIHRoaXMg
bWVtb3J5IGlzIGEgcGVyZmVjdGx5CmZpbmUgdXNlIGNhc2UuIFRoaXMgcGF0Y2ggd291bGQgbWFr
ZSBpdCBwb3NzaWJsZS4KCj4gQXJlIHRoZXJlIGNhc2VzIGluIHByYWN0aWNlIHdoZXJlIHlvdSd2
ZSBzZWVuIHRoZSBuZXRkZXYgbm90IGJlaW5nCj4gZGV2bSBhbGxvY2F0ZWQ/CgpBcyBJIHNhaWQg
YWJvdmUgLSBhbGxvY19uZXRkZXYoKSB1c2VkIGJ5IHdpcmVsZXNzLCBjYW4sIHVzYiBldGMuCmRy
aXZlcnMgZG9lc24ndCBoYXZlIGEgZGV2cmVzIHZhcmlhbnQuCgpCYXJ0b3N6Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
