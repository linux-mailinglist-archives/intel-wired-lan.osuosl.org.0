Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD3070CB1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 22:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97705408E4;
	Mon, 22 May 2023 20:33:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97705408E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684787633;
	bh=gam9mZ0g2uuT3zH0kc9TQ1E+LPgn1yPf5nKPu+Cq4io=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EP9HBPh6ZzKG9fuhPZ4uX1Lc3YnaHy5VjS2h+Nuabhl3O5tKNqQVYD6VJsMP6YYqz
	 WwCyFFURNVvXFqXh10BTMXm7xDvwNyNWVVrEtL3iNdGVy0fDjGz1MggkYFMipQMqQd
	 rLYMfkgEq2QbYHfFzvREs9Zbtd8yYAZnzetTOpMLwAzhKkd/XiabAzdtZ2SPf2V5nf
	 zI2XZYhuLU89LvIewLBrak0J9FuiKR01CXJ2SJO33OmaiPEx8G6bFfWO7kDqAoXmXT
	 zjH2989N2ssjjBBLpozRRe7cPsTjhNqRh36VO9Xl5QKhTia7lvyihU2dj2WOP8szLk
	 BjrLKbqzdbjSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B37f5_XKQ9lg; Mon, 22 May 2023 20:33:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B851408C5;
	Mon, 22 May 2023 20:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B851408C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B5021BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3111A41E4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:16:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3111A41E4B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oo9mSAUw0Vq6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 20:16:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D7BB41D62
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D7BB41D62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:16:26 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-3f5dbd8f677so1475e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 13:16:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684786584; x=1687378584;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NgIuipWDW2M3E5mzxpsdUwXJEbfSRwP8TZNDUu0qiYg=;
 b=QZ5bknDLEKzr3JMgXg1QV5g04wYA45tF0rkL/dKViZnoLevVw8BrKxi6CR6CmX428H
 F50yCwdOVxa24PSrPby/97MT5MB9cUEDmx2YcLLfiF0pj5ftu7OkX3iUJExu6MpcRPdY
 LwRnFkAJ51PVMFqGo33XToFxSMSGC76GviMLrQJh0w3wAO6S3PMAiqkW7xIekS5JuK18
 Zc/q5lqw3tdBEK2Eoya/XpsfZHsLxw5H2SoqRb4+bGCsLb7t9dUbTADbvxoLYRurVf1b
 u7AKkAMb0m/Lfrd+C/A4jezzpbhEhwrm6HpY50nQ0uF6fCok79KlEJ+nJWGA5MHd8WjN
 q7BA==
X-Gm-Message-State: AC+VfDx0SmJ9tdtSRLUNc5Jez767i9HyJDfDa04EBJxPj6/LzHIcMDir
 G4L1P/zOza1UorzqH5CLPX9QblMmLvmuv7f4FSIiLw==
X-Google-Smtp-Source: ACHHUZ5iGjpuC9AkaKlFs80nVJ4jJR4XYAbA6DOvdT3vqQU4/vsED7Tl61v0MgCb7ZChy9ZvLgST86vy7qhmkA5Pbro=
X-Received: by 2002:a05:600c:3b16:b0:3f4:fb7:48d4 with SMTP id
 m22-20020a05600c3b1600b003f40fb748d4mr36406wms.3.1684786584163; Mon, 22 May
 2023 13:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
 <CALs4sv2+Uu=Bry=B3FYzWdNrHjGWDvPCDhTFcNERVpWTjpmEyA@mail.gmail.com>
In-Reply-To: <CALs4sv2+Uu=Bry=B3FYzWdNrHjGWDvPCDhTFcNERVpWTjpmEyA@mail.gmail.com>
From: Grant Grundler <grundler@chromium.org>
Date: Mon, 22 May 2023 13:16:12 -0700
Message-ID: <CANEJEGuzoBa_yYHRCa0KygUe=AOhUkSg4u6gWx+QNCuGtKod2Q@mail.gmail.com>
To: Pavan Chebbi <pavan.chebbi@broadcom.com>
X-Mailman-Approved-At: Mon, 22 May 2023 20:33:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1684786584; x=1687378584;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NgIuipWDW2M3E5mzxpsdUwXJEbfSRwP8TZNDUu0qiYg=;
 b=IH3g/6o9+scn7S83kkFJQ8yep4C+vmuV6+fjgPWMhxosVlhn1PbcSI8CMX8hB70r6e
 r/mr/dorGNRzM5dhLeDd3YbZYKdpMXkGBVWRY2je15izsopn9asKiztX8WdJKqaq17yD
 YTHAL7pUyU/rVlKqHjlaCPBMXJCeRCZpZ3zRU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=IH3g/6o9
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise
 removal
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
Cc: grundler@chromium.org, netdev@vger.kernel.org,
 Ying Hsu <yinghsu@chromium.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBNYXkgMTgsIDIwMjMgYXQgMzozNuKAr0FNIFBhdmFuIENoZWJiaSA8cGF2YW4uY2hl
YmJpQGJyb2FkY29tLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE1heSAxOCwgMjAyMyBhdCAxMjo1
OOKAr1BNIFlpbmcgSHN1IDx5aW5naHN1QGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMKPiA+IGluZGV4IDU4ODcyYTRj
MjU0MC4uYThiMjE3MzY4Y2ExIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdiL2lnYl9tYWluLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jCj4gPiBAQCAtOTU4MSw2ICs5NTgxLDExIEBAIHN0YXRpYyBwY2lfZXJz
X3Jlc3VsdF90IGlnYl9pb19lcnJvcl9kZXRlY3RlZChzdHJ1Y3QgcGNpX2RldiAqcGRldiwKPiA+
ICAgICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2
KTsKPiA+ICAgICAgICAgc3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYo
bmV0ZGV2KTsKPiA+Cj4gPiArICAgICAgIGlmIChzdGF0ZSA9PSBwY2lfY2hhbm5lbF9pb19ub3Jt
YWwpIHsKPiA+ICsgICAgICAgICAgICAgICBkZXZfd2FybigmcGRldi0+ZGV2LCAiTm9uLWNvcnJl
Y3RhYmxlIG5vbi1mYXRhbCBlcnJvciByZXBvcnRlZC5cbiIpOwo+ID4gKyAgICAgICAgICAgICAg
IHJldHVybiBQQ0lfRVJTX1JFU1VMVF9DQU5fUkVDT1ZFUjsKPiA+ICsgICAgICAgfQo+ID4gKwo+
Cj4gVGhpcyBjb2RlIG1heSBiZSBnb29kIHRvIGhhdmUuIEJ1dCBub3Qgc3VyZSBpZiB0aGlzIHNo
b3VsZCBiZSB0aGUgZml4Cj4gZm9yIGlnYl9kb3duKCkgc3luY2hyb25pemF0aW9uLgoKSSBoYXZl
IHRoZSBzYW1lIG9waW5pb24uIFRoaXMgYXBwZWFycyB0byBzb2x2ZSB0aGUgcHJvYmxlbSAtIGJ1
dCBJCmRvbid0IGtub3cgaWYgdGhlcmUgaXMgYSBiZXR0ZXIgd2F5IHRvIHNvbHZlIHRoaXMgcHJv
YmxlbS4KCj4gSW50ZWwgZ3V5cyBtYXkgY29tbWVudC4KClBpbmc/IENhbiB3ZSBwbGVhc2UgZ2V0
IGZlZWRiYWNrIGZyb20gSUdCL0lHQyBtYWludGFpbmVycyB0aGlzIHdlZWs/CgooSSBob3BlIGln
YyBtYWludGFpbmVycyBjYW4gY29uZmlybSB0aGlzIGlzbid0IGFuIGlzc3VlIGZvciBpZ2MuKQoK
Y2hlZXJzLApncmFudAoKPgo+ID4gICAgICAgICBuZXRpZl9kZXZpY2VfZGV0YWNoKG5ldGRldik7
Cj4gPgo+ID4gICAgICAgICBpZiAoc3RhdGUgPT0gcGNpX2NoYW5uZWxfaW9fcGVybV9mYWlsdXJl
KQo+ID4gLS0KPiA+IDIuNDAuMS42MDYuZ2E0YjFiMTI4ZDYtZ29vZwo+ID4KPiA+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
