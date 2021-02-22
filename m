Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0E4321328
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 10:33:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4975985660;
	Mon, 22 Feb 2021 09:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GmGMUI7K3W9P; Mon, 22 Feb 2021 09:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71E6A857C1;
	Mon, 22 Feb 2021 09:33:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E25F81BF38E
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D012B6F53A
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YFYVsbwnAHSP for <intel-wired-lan@osuosl.org>;
 Mon, 22 Feb 2021 09:33:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FB8E6001B
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 09:33:06 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id n10so13682349wmq.0
 for <intel-wired-lan@osuosl.org>; Mon, 22 Feb 2021 01:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rYvuvWZnniOmjwGz5S+ryLVWDWaokquUYjt42CP2SE4=;
 b=MJl15YyI6GF27jPlJ5RGzxxpHklYTk+12e52Sv7VZ9JVVEtw1gAhqqqBaqbwOZvIkN
 /oOO1tYRlH/AmnZycJdggNAZJ3AAjLL3FNXYoXI5EslGUKO+Og2Kb3xgPbCPEqbYDEIO
 GbaGkISegtSWH1JuS9wwOlr5iwdYnOa9h++PomhBbekZTfvoHTXhAvzBF/CMx1jwMLhQ
 y2fbuDhe58XhhgICeMEjBK3uJkF7G1bD+X5ty2XBInYYe+wr77br17F9OW3fv3WCx0Vl
 ChJ+6UNlD2T1LKJsmZtbSL0qp4FahokHjO+ENMOiMVb0Thgd9v66eZO1PrGkyIgO0glZ
 Rlpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rYvuvWZnniOmjwGz5S+ryLVWDWaokquUYjt42CP2SE4=;
 b=hCGAN94TxUtc1d8az89rTbEDeo1qV5LCbOzNGgvEWN7WPjj9qDMBbqkj7l4jRy4Jr0
 UjDrcUZps0opqUO5c4ff75r1M7WdihjMTE79zLljr5ib2BtNVLWtfYQmwbMKkFoI8ipx
 EDDcPxYCpG0LCy0Dl3D3ByGg0IYuIw5tSbOwkJocmlxeDS7fE78lH0uiTVgyRAXktdfJ
 lQM7OA9PKTHyLjKJyK0Lr395cLsZ6Xi+hiw7dO8YIEIJFXegqQFXWBT+8VOQGYAN9A+w
 UR3t9OL60TI+Aek9dRDeTsd9I56VA2T5hYySimbKNc92BRvQqK7nmlVSp00EwTzePI3J
 2XKQ==
X-Gm-Message-State: AOAM5338BOjKQ6FpwVunRWAi6HbULVCytbrhp+dHKeubvA3o/rcmJ7MD
 sjAJ4Np2rJ07KhYKdLCSCLB7kpLftJ1wetqb5jnIXhUDIr6L/Q==
X-Google-Smtp-Source: ABdhPJxyZqq5L4DL7Ix2dracl2LKedPswZQU17l8lEB76FPZyaeV/jA2q7hkVYV9qlrVcRabakdfMSSgUJxIBDeFn1E=
X-Received: by 2002:a05:600c:4ec7:: with SMTP id
 g7mr19029587wmq.56.1613986384258; 
 Mon, 22 Feb 2021 01:33:04 -0800 (PST)
MIME-Version: 1.0
References: <20210222090936.6768-1-jithu.joseph@intel.com>
 <20210222090936.6768-5-jithu.joseph@intel.com>
In-Reply-To: <20210222090936.6768-5-jithu.joseph@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 22 Feb 2021 10:32:52 +0100
Message-ID: <CAJ+HfNhx5LhsS++sFxq2w50gmsnVd2QeXT35ZFVPwvaixbnPAQ@mail.gmail.com>
To: Jithu Joseph <jithu.joseph@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v4 4/9] igc: Refactor XDP rxq info
 registration
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
Cc: intel-wired-lan@osuosl.org, Andre Guedes <andre.guedes@intel.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMiBGZWIgMjAyMSBhdCAxMDowOCwgSml0aHUgSm9zZXBoIDxqaXRodS5qb3NlcGhA
aW50ZWwuY29tPiB3cm90ZToKPgo+IEZyb206IEFuZHJlIEd1ZWRlcyA8YW5kcmUuZ3VlZGVzQGlu
dGVsLmNvbT4KPgo+IFJlZmFjdG9yIFhEUCByeHEgaW5mbyByZWdpc3RyYXRpb24gY29kZSwgcHJl
cGFyaW5nIHRoZSBkcml2ZXIgZm9yIEFGX1hEUAo+IHplcm8tY29weSBzdXBwb3J0IHdoaWNoIGlz
IGFkZGVkIGJ5IHVwY29taW5nIHBhdGNoZXMuCj4KPiBDdXJyZW50bHksIHhkcF9yeHEgYW5kIG1l
bW9yeSBtb2RlbCBhcmUgYm90aCByZWdpc3RlcmVkIGR1cmluZyBSWAo+IHJlc291cmNlIHNldHVw
IHRpbWUgYnkgaWdjX3hkcF9yZWdpc3Rlcl9yeHFfaW5mbygpIGhlbHBlci4gV2l0aCBBRl9YRFAs
Cj4gd2Ugd2FudCB0byByZWdpc3RlciB0aGUgbWVtb3J5IG1vZGVsIGxhdGVyIG9uIHdoaWxlIGNv
bmZpZ3VyaW5nIHRoZSByaW5nCj4gYmVjYXVzZSB3ZSB3aWxsIGtub3cgd2hpY2ggbWVtb3J5IG1v
ZGVsIHR5cGUgdG8gcmVnaXN0ZXIKPiAoTUVNX1RZUEVfUEFHRV9TSEFSRUQgb3IgTUVNX1RZUEVf
WFNLX0JVRkZfUE9PTCkuCj4KPiBUaGUgaGVscGVycyBpZ2NfeGRwX3JlZ2lzdGVyX3J4cV9pbmZv
KCkgYW5kIGlnY194ZHBfdW5yZWdpc3Rlcl9yeHFfCj4gaW5mbygpIGFyZSBub3QgdXNlZnVsIGFu
eW1vcmUgc28gdGhleSBhcmUgcmVtb3ZlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIEd1ZWRl
cyA8YW5kcmUuZ3VlZGVzQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWZWRhbmcgUGF0ZWwg
PHZlZGFuZy5wYXRlbEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSml0aHUgSm9zZXBoIDxq
aXRodS5qb3NlcGhAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kg
PG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgMTUgKysrKysrKysrLS0tLQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3hkcC5jICB8IDI3IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfeGRwLmggIHwgIDMgLS0t
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+IGluZGV4IGJjMDg2
ZDJmNzM4Yi4uMjYyMDg0NDFhYWQzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19tYWluLmMKPiBAQCAtNDE5LDcgKzQxOSw3IEBAIHZvaWQgaWdjX2ZyZWVfcnhfcmVz
b3VyY2VzKHN0cnVjdCBpZ2NfcmluZyAqcnhfcmluZykKPiAgewo+ICAgICAgICAgaWdjX2NsZWFu
X3J4X3JpbmcocnhfcmluZyk7Cj4KPiAtICAgICAgIGlnY194ZHBfdW5yZWdpc3Rlcl9yeHFfaW5m
byhyeF9yaW5nKTsKPiArICAgICAgIHhkcF9yeHFfaW5mb191bnJlZygmcnhfcmluZy0+eGRwX3J4
cSk7Cj4KPiAgICAgICAgIHZmcmVlKHJ4X3JpbmctPnJ4X2J1ZmZlcl9pbmZvKTsKPiAgICAgICAg
IHJ4X3JpbmctPnJ4X2J1ZmZlcl9pbmZvID0gTlVMTDsKPiBAQCAtNDU4LDExICs0NTgsMTUgQEAg
aW50IGlnY19zZXR1cF9yeF9yZXNvdXJjZXMoc3RydWN0IGlnY19yaW5nICpyeF9yaW5nKQo+ICB7
Cj4gICAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqbmRldiA9IHJ4X3JpbmctPm5ldGRldjsKPiAg
ICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IHJ4X3JpbmctPmRldjsKPiArICAgICAgIHU4IGlu
ZGV4ID0gcnhfcmluZy0+cXVldWVfaW5kZXg7Cj4gICAgICAgICBpbnQgc2l6ZSwgZGVzY19sZW4s
IHJlczsKPgo+IC0gICAgICAgcmVzID0gaWdjX3hkcF9yZWdpc3Rlcl9yeHFfaW5mbyhyeF9yaW5n
KTsKPiAtICAgICAgIGlmIChyZXMgPCAwKQo+ICsgICAgICAgcmVzID0geGRwX3J4cV9pbmZvX3Jl
ZygmcnhfcmluZy0+eGRwX3J4cSwgbmRldiwgaW5kZXgsIDApOwoKVGhhbmtzIGZvciB3b3JraW5n
IG9uIEFGX1hEUCBaQyBzdXBwb3J0IQoKVGhlIGxhc3QgYXJndW1lbnQgaXMgdGhlIG5hcGlfaWQu
IFNldHRpbmcgdGhpcyB0byAwLCBtZWFucyB0aGF0IHRoZQpuYXBpX2lkIGlzIHVua25vd24vbm90
IGF2YWlsYWJsZSBhdCB0aGlzIHBvaW50LiBJdCBhbHNvIG1lYW5zIHRoYXQgdGhlCkFGX1hEUCBi
dXN5LXBvbGxpbmcgdXNpbmcgcHJlZmVycmVkIGJ1c3ktcG9sbGluZyBbMV0gd2lsbCBub3Qgd29y
ay4gSWYKdGhlIG5hcGkgaXMgcmVnaXN0ZXJlZCBhdCB0aGlzIHBvaW50LCBwbGVhc2UgcGFzczoK
cnhfcmluZy0+cV92ZWN0b3ItPm5hcGkubmFwaV9pZCBpbnN0ZWFkIG9mIDAhCgooTG9vayBhdCB0
aGUgaTQwZS9pY2UgZHJpdmVycy4pCgpDaGVlcnMsCkJqw7ZybgoKWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2JwZi8yMDIwMTEzMDE4NTIwNS4xOTYwMjktMS1iam9ybi50b3BlbEBnbWFpbC5j
b20vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
