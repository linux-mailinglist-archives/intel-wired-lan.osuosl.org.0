Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C4D251521
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 11:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC1B922775;
	Tue, 25 Aug 2020 09:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLmnpzEFxirC; Tue, 25 Aug 2020 09:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E63A92271F;
	Tue, 25 Aug 2020 09:16:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1A321BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA8F186670
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBaxcL06_-BZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 09:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 525EE86652
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 09:16:47 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g1so2595175pgm.9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 02:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTy5ZLdsTNmabWU2DWRr860vlaqppGQ9l3PUT3pKZKg=;
 b=KWGP12qr/5CWzdzEVxVy3mStxfchbvmRqdHhp35wzrencHPvPVx415IgC0Zb1CgX9U
 gmDC/XYid3kywQMqJv8Rj9Iwn2akiYZmmgUouDL3veDgQVQM8Rxwjv6sEzAwUt4kxUVg
 tjCqnY++qQBwWT8jA0lz0+/oJcqrrd+Qw8QcBFdqlAqes2I0/HkRMt3ZARzVYXIg6yv/
 iuHAZ8HRdYa4A5PUKuwxeUfGiOICHTBaqm7uLkdYYS0Dvp0gSdGU2gB5RUOIFarW6//Y
 l5lRTwcJoXpiOQHHVd/VpKAo2bLllQES7yBxOgdr/wHzgD+aXXbkTIC2SAnz8Au6+2BB
 ujAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTy5ZLdsTNmabWU2DWRr860vlaqppGQ9l3PUT3pKZKg=;
 b=tA5wMb1f6cJd4GPmj5X00DCWFzAt62MwZ/vrDI+66h7jYs2p82MtC6v5cVagabqWUI
 aia84pTm/FB0qaWoCcicu8v9Xj4k9NwAuA+ICwHZaClqrhg+ByeBQGC1noAuyiIBZGma
 zoAF7aETOr0X6ww9Y1CwoPcA7jH4AJzqLB8FQITNkdO9bORaFJYWytN7CyUilNGFcSe4
 MzJnZCoJAH2qqioWxvFTd74sjJKDeKS0alpcE5KP3APLOU6BOZQAnTvDQsObM4XA6IJU
 G98gs7S3wjq1D2uvhvlDmiIv7v4AxCBy1NJQzj2w3VY70DeXQhH2BGq/2If0zZnUaHi1
 PEKA==
X-Gm-Message-State: AOAM531MOFPyW0yEkRuoRiZueap8srSwCQawaMSlpXZbPVTBdJmW1pM1
 xRVcpUC1RaaW70okOSv5Ps8=
X-Google-Smtp-Source: ABdhPJwSi+EnfmwXMOGq6kOtMIcMso1m5VQPIMrQfrb5c9rSI5wqTO26owbfeoIUi7fgHgZxycf8xw==
X-Received: by 2002:aa7:925a:: with SMTP id 26mr3591281pfp.6.1598347006883;
 Tue, 25 Aug 2020 02:16:46 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 2sm2121857pjg.32.2020.08.25.02.16.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 02:16:46 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 11:16:26 +0200
Message-Id: <20200825091629.12949-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 0/3] Avoid premature Rx buffer reuse
 for XDP_REDIRECT
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
Cc: maciej.fijalkowski@intel.com, maciej.machnikowski@intel.com,
 lirongqing@baidu.com, netdev@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SW50ZWwgTklDcyBoYXZlIGEgcmVjeWNsZSBtZWNoYW5pc20uIFRoZSBtYWluIGlkZWEgaXMgdGhh
dCBhIHBhZ2UgaXMKc3BsaXQgaW50byB0d28gcGFydHMuIE9uZSBwYXJ0IGlzIG93bmVkIGJ5IHRo
ZSBkcml2ZXIsIG9uZSBwYXJ0IG1pZ2h0CmJlIG93bmVkIGJ5IHNvbWVvbmUgZWxzZSwgc3VjaCBh
cyB0aGUgc3RhY2suCgpUaGUgcGFnZSByZWN5Y2xlIGNvZGUsIGluY29ycmVjdGx5LCByZWxpZWQg
b24gdGhhdCBhIHBhZ2UgZnJhZ21lbnQKY291bGQgbm90IGJlIGZyZWVkIGluc2lkZSB4ZHBfZG9f
cmVkaXJlY3QoKSwgZS5nLiBhIHJlZGlyZWN0IHRvIGEKZGV2bWFwIHdoZXJlIHRoZSBuZG9feGRw
X3htaXQoKSBpbXBsZW1lbnRhdGlvbiB3b3VsZCB0cmFuc21pdCBhbmQgZnJlZQp0aGUgZnJhbWUs
IG9yIHhza21hcCB3aGVyZSB0aGUgZnJhbWUgd291bGQgYmUgY29waWVkIHRvIHVzZXJzcGFjZSBh
bmQKZnJlZWQuCgpUaGlzIGFzc3VtcHRpb24gbGVhZHMgdG8gdGhhdCBwYWdlIGZyYWdtZW50cyB0
aGF0IGFyZSB1c2VkIGJ5IHRoZQpzdGFjay9YRFAgcmVkaXJlY3QgY2FuIGJlIHJldXNlZCBhbmQg
b3ZlcndyaXR0ZW4uCgpUbyBhdm9pZCB0aGlzLCBzdG9yZSB0aGUgcGFnZSBjb3VudCBwcmlvciBp
bnZva2luZwp4ZHBfZG9fcmVkaXJlY3QoKS4gVGhlIGFmZmVjdGVkIGRyaXZlcnMgYXJlIGl4Z2Jl
LCBpY2UsIGFuZCBpNDBlLgoKQW4gZXhhbXBsZSBob3cgdGhpbmdzIG1pZ2h0IGdvIHdyb25nOgoK
dDA6IFBhZ2UgaXMgYWxsb2NhdGVkLCBhbmQgcHV0IG9uIHRoZSBSeCByaW5nCiAgICAgICAgICAg
ICAgKy0tLS0tLS0tLS0tLS0tLQp1c2VkIGJ5IE5JQyAtPnwgdXBwZXIgYnVmZmVyCihyeF9idWZm
ZXIpICAgKy0tLS0tLS0tLS0tLS0tLQogICAgICAgICAgICAgIHwgbG93ZXIgYnVmZmVyCiAgICAg
ICAgICAgICAgKy0tLS0tLS0tLS0tLS0tLQogIHBhZ2UgY291bnQgID09IFVTSFJUX01BWAogIHJ4
X2J1ZmZlci0+cGFnZWNudF9iaWFzID09IFVTSFJUX01BWAoKdDE6IEJ1ZmZlciBpcyByZWNlaXZl
ZCwgYW5kIHBhc3NlZCB0byB0aGUgc3RhY2sgKGUuZy4pCiAgICAgICAgICAgICAgKy0tLS0tLS0t
LS0tLS0tLQogICAgICAgICAgICAgIHwgdXBwZXIgYnVmZiAoc2tiKQogICAgICAgICAgICAgICst
LS0tLS0tLS0tLS0tLS0KdXNlZCBieSBOSUMgLT58IGxvd2VyIGJ1ZmZlcgoocnhfYnVmZmVyKSAg
ICstLS0tLS0tLS0tLS0tLS0KICBwYWdlIGNvdW50ICA9PSBVU0hSVF9NQVgKICByeF9idWZmZXIt
PnBhZ2VjbnRfYmlhcyA9PSBVU0hSVF9NQVggLSAxCgp0MjogQnVmZmVyIGlzIHJlY2VpdmVkLCBh
bmQgcmVkaXJlY3RlZAogICAgICAgICAgICAgICstLS0tLS0tLS0tLS0tLS0KICAgICAgICAgICAg
ICB8IHVwcGVyIGJ1ZmYgKHNrYikKICAgICAgICAgICAgICArLS0tLS0tLS0tLS0tLS0tCnVzZWQg
YnkgTklDIC0+fCBsb3dlciBidWZmZXIKKHJ4X2J1ZmZlcikgICArLS0tLS0tLS0tLS0tLS0tCgpO
b3csIHByaW9yIGNhbGxpbmcgeGRwX2RvX3JlZGlyZWN0KCk6CiAgcGFnZSBjb3VudCAgPT0gVVNI
UlRfTUFYCiAgcnhfYnVmZmVyLT5wYWdlY250X2JpYXMgPT0gVVNIUlRfTUFYIC0gMgoKVGhpcyBt
ZWFucyB0aGF0IGJ1ZmZlciAqY2Fubm90KiBiZSBmbGlwcGVkL3JldXNlZCwgYmVjYXVzZSB0aGUg
c2tiIGlzCnN0aWxsIHVzaW5nIGl0LgoKVGhlIHByb2JsZW0gYXJpc2VzIHdoZW4geGRwX2RvX3Jl
ZGlyZWN0KCkgYWN0dWFsbHkgZnJlZXMgdGhlCnNlZ21lbnQuIFRoZW4gd2UgZ2V0OgogIHBhZ2Ug
Y291bnQgID09IFVTSFJUX01BWCAtIDEKICByeF9idWZmZXItPnBhZ2VjbnRfYmlhcyA9PSBVU0hS
VF9NQVggLSAyCgpGcm9tIGEgcmVjeWNsZSBwZXJzcGVjdGl2ZSwgdGhlIGJ1ZmZlciBjYW4gYmUg
ZmxpcHBlZCBhbmQgcmV1c2VkLAp3aGljaCBtZWFucyB0aGF0IHRoZSBza2IgZGF0YSBhcmVhIGlz
IHBhc3NlZCB0byB0aGUgUnggSFcgcmluZyEKClRvIHdvcmsgYXJvdW5kIHRoaXMsIHRoZSBwYWdl
IGNvdW50IGlzIHN0b3JlZCBwcmlvciBjYWxsaW5nCnhkcF9kb19yZWRpcmVjdCgpLgoKTm90ZSB0
aGF0IHRoaXMgaXMgbm90IG9wdGltYWwsIHNpbmNlIHRoZSBOSUMgY291bGQgYWN0dWFsbHkgcmV1
c2UgdGhlCiJsb3dlciBidWZmZXIiIGFnYWluLiBIb3dldmVyLCB0aGVuIHdlIG5lZWQgdG8gdHJh
Y2sgd2hldGhlcgpYRFBfUkVESVJFQ1QgY29uc3VtZWQgdGhlIGJ1ZmZlciBvciBub3QuIFRoaXMg
c2NlbmFyaW8gaXMgdmVyeSByYXJlLAphbmQgdHJhY2tpbmcgY29uc3VtdGlvbiBzdGF0dXMgd291
bGQgaW50cm9kdWNlIG1vcmUgY29tcGxleGl0eS4KCkEgYmlnIHRoYW5rcyB0byBMaSBSb25nUWlu
ZyBmcm9tIEJhaWR1IGZvciBoYXZpbmcgcGF0aWVuY2Ugd2l0aCBtZQp1bmRlcnN0YW5kaW5nIHRo
YXQgdGhlcmUgd2FzIGEgYnVnLiBJIHdvdWxkIGhhdmUgZ2l2ZW4gdXAgbXVjaAplYXJsaWVyISA6
LSkKCgpDaGVlcnMsCkJqw7ZybgoKQmrDtnJuIFTDtnBlbCAoMyk6CiAgaTQwZTogYXZvaWQgcHJl
bWF0dXJlIFJ4IGJ1ZmZlciByZXVzZQogIGl4Z2JlOiBhdm9pZCBwcmVtYXR1cmUgUnggYnVmZmVy
IHJldXNlCiAgaWNlOiBhdm9pZCBwcmVtYXR1cmUgUnggYnVmZmVyIHJldXNlCgogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyAgIHwgMjggKysrKysrKysrKysrLS0t
LS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAgICB8IDMxICsr
KysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X21haW4uYyB8IDI4ICsrKysrKysrKysrKy0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDY0IGluc2Vy
dGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiA5OTQwOGM0MjJkMzM2ZGIz
MmJmYWI1Y2JlYmMxMDAzOGE3MGNmN2QyCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
