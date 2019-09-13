Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0F6B17BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Sep 2019 06:32:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 090BB8761E;
	Fri, 13 Sep 2019 04:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqSdQKhP6dI9; Fri, 13 Sep 2019 04:32:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 087E287619;
	Fri, 13 Sep 2019 04:32:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12D321BF842
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 04:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06208875E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 04:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doE1gsrRZEYN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Sep 2019 04:32:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 82F94873B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Sep 2019 04:32:20 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id v11so32298456qto.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 21:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Yse8g8Q3UwGovp9kmEu/ngI/ZbWCMGb6gH3RV7HcZFA=;
 b=kC2TX1ensAA3ANidZN+R3xInNoGyBjIrz+f8zg2IfQ1rTGc8sjOw69hQL33RGItTNa
 TSOGL9ocNapSDLjHpsR+NvAACob8IJw1LbZvKQRsuIgCC8U0eiIE0ZUgJy0VIUJCkzeu
 BgXHDg+GtdZ6nL1e56QeEyNwrYYLW4drWSrkEHdTkwtTgD9/QYT2guFHmRBqO6ICpUDx
 Y7C2ocB5rkK9Vp8bAwgOzFKs6b9NkmozdKC8NAlWPIijnMpBwmCqUUgE9mPTF3CofFh6
 17xcB35IaTqVUNEl0uh2OoAbl9zZVQknrykzpqiQaQQAc7YYIVuxjC8lwP8VSambt9Vt
 CDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Yse8g8Q3UwGovp9kmEu/ngI/ZbWCMGb6gH3RV7HcZFA=;
 b=tDmXwfh2MiHU8rL+DTGPYGjUtZgDM/7ekDBRBPg4LZtCqMaCXePvTZHuQreoFOw+Bm
 /Zhagi+Pviyv9Ut6qU5lIyqaclIm8UTXo8+Lx1SC6+6MORpJh/LqqjqqBm4HRYLx3Nif
 GkcGLPWKKy5pY61/anl0g111Xa82dfAn5iwl5SQFgDqPAYATLONdGOTjpr8cWvkStoTO
 nfdVXJZscn6OAvQQzbn5/uMx/RDIHXjTOF2yBqUlUjcBLQcnVOE7gRhOGHR0PS5mrE5c
 94k+sYoO9yePGtGtTYv6aULbebYjlVFeRGzXK3sZxdxMBcbmhq9aMdHJBD6MiAAByvBB
 qv2A==
X-Gm-Message-State: APjAAAVyD6hhnfrPgmFkmg90+By9Di6bVoZd76ue3xjhRVqxX3vr6p3m
 YQnhZwbO8vVvlCs3rzNE4XLVUElXp9oRNXklTBY=
X-Google-Smtp-Source: APXvYqyFRo+kMM4H0/cH+ZcHpMFiZE0C1FPWmpFQ8UVQbm/cULX1srRSxjrDyA1OMn3Gib+K6YJhy4XenWKfNkpJpKY=
X-Received: by 2002:ad4:54e3:: with SMTP id k3mr30475927qvx.9.1568349139276;
 Thu, 12 Sep 2019 21:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190911172435.21042-1-ciara.loftus@intel.com>
In-Reply-To: <20190911172435.21042-1-ciara.loftus@intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 13 Sep 2019 06:32:08 +0200
Message-ID: <CAJ+HfNiL3AKHYOv42d5oca7CaYLso18dV=+=_oDpBQsKMk7-fw@mail.gmail.com>
To: Ciara Loftus <ciara.loftus@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/3] i40e: fix xdp handle
 calculations
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
Cc: Kevin Laatz <kevin.laatz@intel.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Bruce Richardson <bruce.richardson@intel.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAxMSBTZXAgMjAxOSBhdCAxOToyNywgQ2lhcmEgTG9mdHVzIDxjaWFyYS5sb2Z0dXNA
aW50ZWwuY29tPiB3cm90ZToKPgo+IENvbW1pdCA0YzVkOWE3ZmExNDkgKCJpNDBlOiBmaXggeGRw
IGhhbmRsZSBjYWxjdWxhdGlvbnMiKSByZWludHJvZHVjZWQKPiB0aGUgYWRkaXRpb24gb2YgdGhl
IHVtZW0gaGVhZHJvb20gdG8gdGhlIHhkcCBoYW5kbGUgaW4gdGhlIGk0MGVfemNhX2ZyZWUsCj4g
aTQwZV9hbGxvY19idWZmZXJfc2xvd196YyBhbmQgaTQwZV9hbGxvY19idWZmZXJfemMgZnVuY3Rp
b25zLiBIb3dldmVyLAo+IHRoZSBoZWFkcm9vbSBpcyBhbHJlYWR5IGFkZGVkIHRvIHRoZSBoYW5k
bGUgaW4gdGhlIGZ1bmN0aW9uIGk0MF9ydW5feGRwX3pjLgo+IFRoaXMgY29tbWl0IHJlbW92ZXMg
dGhlIGxhdHRlciBhZGRpdGlvbiBhbmQgZml4ZXMgdGhlIGNhc2Ugd2hlcmUgdGhlCj4gaGVhZHJv
b20gaXMgbm9uLXplcm8uCj4KPiBGaXhlczogNGM1ZDlhN2ZhMTQ5ICgiaTQwZTogZml4IHhkcCBo
YW5kbGUgY2FsY3VsYXRpb25zIikKPiBTaWduZWQtb2ZmLWJ5OiBDaWFyYSBMb2Z0dXMgPGNpYXJh
LmxvZnR1c0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV94c2suYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV94c2suYwo+IGluZGV4IDAzNzNiYzZjN2U2MS4uNWYyODViYTFmMWY5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwo+IEBAIC0xOTIsNyArMTkyLDcg
QEAgc3RhdGljIGludCBpNDBlX3J1bl94ZHBfemMoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywg
c3RydWN0IHhkcF9idWZmICp4ZHApCj4gIHsKPiAgICAgICAgIHN0cnVjdCB4ZHBfdW1lbSAqdW1l
bSA9IHJ4X3JpbmctPnhza191bWVtOwo+ICAgICAgICAgaW50IGVyciwgcmVzdWx0ID0gSTQwRV9Y
RFBfUEFTUzsKPiAtICAgICAgIHU2NCBvZmZzZXQgPSB1bWVtLT5oZWFkcm9vbTsKPiArICAgICAg
IHU2NCBvZmZzZXQ7CgpIaSBDaWFyYSEgVGhhbmtzIGZvciB0aGUgcGF0Y2g7IFNtYWxsIG5pdDog
UGxlYXNlIHNvcnQgbG9jYWwgdmFyaWFibGUKZGVjbGFyYXRpb25zIGZyb20gbG9uZ2VzdCB0byBz
aG9ydGVzdCBsaW5lLgoKCkNoZWVycywKQmrDtnJuCgoKPiAgICAgICAgIHN0cnVjdCBpNDBlX3Jp
bmcgKnhkcF9yaW5nOwo+ICAgICAgICAgc3RydWN0IGJwZl9wcm9nICp4ZHBfcHJvZzsKPiAgICAg
ICAgIHUzMiBhY3Q7Cj4gQEAgLTIwMyw3ICsyMDMsNyBAQCBzdGF0aWMgaW50IGk0MGVfcnVuX3hk
cF96YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCBzdHJ1Y3QgeGRwX2J1ZmYgKnhkcCkKPiAg
ICAgICAgICAqLwo+ICAgICAgICAgeGRwX3Byb2cgPSBSRUFEX09OQ0UocnhfcmluZy0+eGRwX3By
b2cpOwo+ICAgICAgICAgYWN0ID0gYnBmX3Byb2dfcnVuX3hkcCh4ZHBfcHJvZywgeGRwKTsKPiAt
ICAgICAgIG9mZnNldCArPSB4ZHAtPmRhdGEgLSB4ZHAtPmRhdGFfaGFyZF9zdGFydDsKPiArICAg
ICAgIG9mZnNldCA9IHhkcC0+ZGF0YSAtIHhkcC0+ZGF0YV9oYXJkX3N0YXJ0Owo+Cj4gICAgICAg
ICB4ZHAtPmhhbmRsZSA9IHhza191bWVtX2FkanVzdF9vZmZzZXQodW1lbSwgeGRwLT5oYW5kbGUs
IG9mZnNldCk7Cj4KPiAtLQo+IDIuMTcuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
