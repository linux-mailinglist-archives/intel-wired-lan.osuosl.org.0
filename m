Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3945251E3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 19:27:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 626DC881DA;
	Tue, 25 Aug 2020 17:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-gV3Ue8RV2w; Tue, 25 Aug 2020 17:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF3CA88212;
	Tue, 25 Aug 2020 17:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0B941BF41C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B96FD881DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UQI8J+pm00x8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 17:27:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C793882CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 17:27:51 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id q1so1586685pjd.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 10:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R96er/PUVvfadsqAyZv+jNgEaJpcty4Nzo7grHpCEwo=;
 b=apeSbu/SUCX4n2tlsVngUvy9gGtEQOK9BDjzH4FDbB2y1L2RKRDtTeXhbaFatRa4lk
 k0zgA3E75zj1asMXPBXfD34AMSrQTUqEm+eipH/W/zscyEfppmLasI2KnQh9TlvKisGm
 e5a96y6rtGooDV1nW2wgVx5wJ5mwkQNvz7nkTQeD6k1ZMcAKiADm10/Goqn5sUmNNKQE
 n1bby2NcH/HUOQnnz4gOjtounHXOTQs2K5C9z+QryO/HaLjhDv9GLL0us6ztfWbfFKtm
 RIm1NQ6iIplIIIo31Ikjs+vUh4gme6BvffX1zhXifU+Xzc0/cIeVN9GI1T06VxK0Lke3
 Evpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R96er/PUVvfadsqAyZv+jNgEaJpcty4Nzo7grHpCEwo=;
 b=jfi1ZOe+DkMjgju0hhBHes0Qt1ytdLZTGXZSN5TFIuME6PANth2z7kX8AUtFtiVq+4
 kccufTNudWTs4EaCh9yFoQsBDE9dXrELrHYWdlagpa0kH+rdOtDVvcDjAlxW8F9hBKyl
 QGPL1/TSOf5hBoMO12TaeYyyV1ZR0spqBR2AjziTOzKUt1j+dhb54sjh0dQyB9U/HRDZ
 9mtgJHYncdA7CdEFtFieYnVz9tCPKu9Ap1j2UvI1xXvexlt3E6D4fk86FPdvIuuKmf9A
 RKrG1SY4yCbINmIblrrLnWpcE8Eyxrt4jd4cdMNphPOAh7lImp0Bze5GM0aFQfl7uVSL
 8ryQ==
X-Gm-Message-State: AOAM530tzzml0R7uBpZQ+Bs2Pt6cpb1yncUbwlmLR0WqDcmm2ww+t8k6
 Zw6zWf+vRqB+Pm48VdNk/d8=
X-Google-Smtp-Source: ABdhPJxQtVm46T/KQ/dnkbqg0kkC84ILQee1EL+5QmQ6iMdHInpMtTQZ2saxctC7G0GXeiNNNYlVlQ==
X-Received: by 2002:a17:90b:c97:: with SMTP id
 o23mr2514529pjz.216.1598376470570; 
 Tue, 25 Aug 2020 10:27:50 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([134.134.137.77])
 by smtp.gmail.com with ESMTPSA id n72sm11685763pfd.93.2020.08.25.10.27.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 10:27:49 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: jeffrey.t.kirsher@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 19:27:33 +0200
Message-Id: <20200825172736.27318-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3 0/3] Avoid premature Rx buffer
 reuse for XDP_REDIRECT
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
LSkKCgpDaGVlcnMsCkJqw7ZybgoKdjItPnYzOiBGaXhlZCBrZG9jIGZvciBpNDBlL2ljZS4gKEph
a3ViKQp2MS0+djI6IFJlbW92ZWQgcGFnZSBjb3VudCBmdW5jdGlvbiBpbnRvIGdldCBSeCBidWZm
ZXIgZnVuY3Rpb24sIGFuZAogICAgICAgIGNoYW5nZWQgc2NvcGUgb2YgYXV0b21hdGljIHZhcmlh
YmxlLiAoTWFjaWVqKQoKCkJqw7ZybiBUw7ZwZWwgKDMpOgogIGk0MGU6IGF2b2lkIHByZW1hdHVy
ZSBSeCBidWZmZXIgcmV1c2UKICBpeGdiZTogYXZvaWQgcHJlbWF0dXJlIFJ4IGJ1ZmZlciByZXVz
ZQogIGljZTogYXZvaWQgcHJlbWF0dXJlIFJ4IGJ1ZmZlciByZXVzZQoKIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgICB8IDI3ICsrKysrKysrKysrKy0tLS0tCiBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyAgICAgfCAzMCArKysrKysr
KysrKysrLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWlu
LmMgfCAyNCArKysrKysrKysrLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygr
KSwgMjMgZGVsZXRpb25zKC0pCgoKYmFzZS1jb21taXQ6IDk5NDA4YzQyMmQzMzZkYjMyYmZhYjVj
YmViYzEwMDM4YTcwY2Y3ZDIKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
