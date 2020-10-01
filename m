Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F293E28063E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 20:09:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43BC887374;
	Thu,  1 Oct 2020 18:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pWnkn92uq+5B; Thu,  1 Oct 2020 18:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1319E8736F;
	Thu,  1 Oct 2020 18:09:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 462A41BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 18:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4063584DF6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 18:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQhBMSX9_GCB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 18:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1270386396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 18:09:06 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id a2so6361478otr.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 01 Oct 2020 11:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BLbez/nr5DmxvMUZcQ0LxwWwXjfp5WBmRBwJxSMUeWk=;
 b=iwQoZgXm5kn4vMiDAyWHyM6u0cyYcHrbvV0karYr+wUpzN/m/q4M63GiiiKeJlmKy6
 HQSTMm81id8f8ZHmEmcciQfdrVe8BX7wENjLXTZT7d+ICcHk2nqAKSVUSQS69OMkDqmH
 AUOir20rWYoeh9nR+NcXqny+PVgIKx4enaGh8c3Sl2DaG0Wj490Fg20sJq0VPUxIvxwE
 hThivafDRBs/yVb8u2aYGp31WgqZ2MOcTXv9aRa99KaxGR9i6wLDOZexAlHNuqwgrI7L
 llYXLeeYeRZZBnFrMv85Ug3KvNAT/73wXziFxZLsidkkDb6qBPvtVXeDKFhUGyreealu
 RJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BLbez/nr5DmxvMUZcQ0LxwWwXjfp5WBmRBwJxSMUeWk=;
 b=m1Pei7WVacYCzlQFlO6VnGePsItTzG9PnD0tXgsArnZYrHe6GJctT8v5xmAAkUivkz
 SDCMMi++SNRZETRJgEbQBlpIzalTt1kR+/2gYkGEFtF7E6DqFClYIsEL4cmsbKqIIVPl
 e204mKKIgwEFK6zTi6aVQSl9PahFKWsyb+ohPbUCZhfV4bJcircQ/38nDMmWOkIZPGWW
 JlyApZNmMjGmvh2WqLFy4MdFZzbUeGa0l0Ykp8vjqRnqTtlCnDd2gWcLSDfuK2obA1bq
 R30ptkqyBRdn9q1FArB+qge2cJi65FBret5R89/H63u3wP9ogXAjfxZF61rWVlXmkTAv
 2Xug==
X-Gm-Message-State: AOAM533mmH2d8WjJYnkpyJFh4IbRxgWgWhUJQFCimbnJXuvLUO2es8ek
 W++L7jFq2b6B8q8KqtKb936y9KtF8UK59oALyFk=
X-Google-Smtp-Source: ABdhPJwXeKWw+feoo75kd/7m+IQ4OUN94TPzfVlEWfZJOZ7x951eFsMx2uUMa4Ln53rNBlbVgIRNKLU06y4ajmY33KE=
X-Received: by 2002:a05:6830:1e39:: with SMTP id
 t25mr5836268otr.8.1601575745249; 
 Thu, 01 Oct 2020 11:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200918184152.604967-1-jesse.brandeburg@intel.com>
 <c270e596-b5db-005b-fa18-cd374981429c@molgen.mpg.de>
In-Reply-To: <c270e596-b5db-005b-fa18-cd374981429c@molgen.mpg.de>
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Date: Thu, 1 Oct 2020 11:08:54 -0700
Message-ID: <CAEuXFEwy5wbTwT+Xn_Ez-bPjmXpCrYaYf+x7ms=HWg5x_YztiA@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
 incorrect code
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBPY3QgMSwgMjAyMCBhdCAxMjoyMiBBTSBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xn
ZW4ubXBnLmRlPiB3cm90ZToKPiA+IEZpeCB0aGlzIHdhcm5pbmcgYnkgcmVtb3ZpbmcgdGhlIG9m
ZmVuZGluZyBjb2RlIGFuZCBzaW1wbGlmeWluZwo+ID4gdGhlIHJvdXRpbmUgdG8gZG8gZXhhY3Rs
eSB3aGF0IGl0IGRpZCBiZWZvcmUsIG5vIGZ1bmN0aW9uYWwKPiA+IGNoYW5nZS4KPgo+IEl0IGxv
b2tzIGxpa2UgdGhpcyBmaXhlcyBjb21taXQgMTUzMmVjZWEgKGUxMDAwOiBkcm9wIGRlYWQgcGNp
ZSBjb2RlCj4gZnJvbSBlMTAwMCkgcmVtb3Zpbmcgc3VwcG9ydCBmb3IgZTEwMDBfODI1NzM/CgpJ
dCBtYXksIGJ1dCB0aGF0IGNvbW1pdCBpcyBmcm9tIDIwMDksIGFuZCBzaW5jZSB0aGlzIGNvZGUg
Y2hhbmdlCmFjdHVhbGx5IGRvZXNuJ3QgZml4IGFueSBidWcgSSBkaWRuJ3QgdGhpbmsgaXQgd2Fz
IGEpIHdvcnRoIGRhdmVtCnRhcmdldGluZyB0byBuZXQsIGIpIHdvcnRoIHRoZSBib3RzIHBpY2tp
bmcgdXAgZm9yIGJhY2twb3J0aW5nIHRvCnN0YWJsZSwgYXMgaXQgaXMganVzdCB3YXN0ZSBvZiB0
aW1lLCBhbmQgbWF5YmUgd291bGRuJ3QgYmUgY29uc2lkZXJlZAphcyBpbXBvcnRhbnQgZW5vdWdo
IGZvciBzdGFibGUuCgo+ID4gU2lnbmVkLW9mZi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2Uu
YnJhbmRlYnVyZ0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+Cj4gPiBOT1RFOiBJIGRvbid0IHJlY29t
bWVuZCB0aGlzIGdvIHRvIHN0YWJsZSBhcyB0aGVyZSBpcyBubyBmdW5jdGlvbmFsCj4gPiBjaGFu
Z2UuCgpZb3UnbGwgbm90ZSBJIGF0dGVtcHRlZCB0byBhZGRyZXNzIHlvdXIgY29tbWVudCB3aXRo
IHRoZSBhYm92ZSBsaW5lCmV2ZW4gYmVmb3JlIHlvdSBtYWRlIGl0LgoKPiA+IC0tLQo+ID4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jIHwgMTAgKy0tLS0tLS0t
LQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDkgZGVsZXRpb25zKC0pCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAw
X2h3LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMC9lMTAwMF9ody5jCj4gPiBp
bmRleCAyMTIwZGFjZmQ1NWMuLmM1ZDcwMjU0M2RhYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3LmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2UxMDAwL2UxMDAwX2h3LmMKPiA+IEBAIC00NDAzLDE3ICs0NDAzLDkg
QEAgdm9pZCBlMTAwMF93cml0ZV92ZnRhKHN0cnVjdCBlMTAwMF9odyAqaHcsIHUzMiBvZmZzZXQs
IHUzMiB2YWx1ZSkKPiA+ICAgc3RhdGljIHZvaWQgZTEwMDBfY2xlYXJfdmZ0YShzdHJ1Y3QgZTEw
MDBfaHcgKmh3KQo+Cj4gKFdoeSBpcyB0aGUgZGlmZiBhbHNvIG1lbnRpb25pbmcgdGhlIGZ1bmN0
aW9uIGJlZm9yZSBgdm9pZAo+IGUxMDAwX3dyaXRlX3ZmdGEoKWA/KQoKVGhpcyBpcyBhbiBhcnRp
ZmFjdCBvZiBob3cgZGlmZiB3b3Jrcywgc2luY2UgdGhlIGUxMDAwX2NsZWFyX3ZmdGEKZnVuY3Rp
b24gd2FzIHBhcnQgb2YgdGhlIGRpZmYgY29udGV4dCwgdGhlICJwcmV2aW91cyBmdW5jdGlvbiBz
ZWFyY2giCnRoYXQgZGlmZiBkb2VzIGZvdW5kIHdyaXRlX3ZmdGEuIFRoZXJlIGlzIG5vIGlzc3Vl
IGhlcmUsIGV2ZXJ5dGhpbmcgaXMKd29ya2luZyBhcyBpdCBzaG91bGQuCgo+Cj4gPiAgIHsKPiA+
ICAgICAgIHUzMiBvZmZzZXQ7Cj4gPiAtICAgICB1MzIgdmZ0YV92YWx1ZSA9IDA7Cj4gPiAtICAg
ICB1MzIgdmZ0YV9vZmZzZXQgPSAwOwo+ID4gLSAgICAgdTMyIHZmdGFfYml0X2luX3JlZyA9IDA7
Cj4gPgo+ID4gICAgICAgZm9yIChvZmZzZXQgPSAwOyBvZmZzZXQgPCBFMTAwMF9WTEFOX0ZJTFRF
Ul9UQkxfU0laRTsgb2Zmc2V0KyspIHsKPiA+IC0gICAgICAgICAgICAgLyogSWYgdGhlIG9mZnNl
dCB3ZSB3YW50IHRvIGNsZWFyIGlzIHRoZSBzYW1lIG9mZnNldCBvZiB0aGUKPiA+IC0gICAgICAg
ICAgICAgICogbWFuYWdlYWJpbGl0eSBWTEFOIElELCB0aGVuIGNsZWFyIGFsbCBiaXRzIGV4Y2Vw
dCB0aGF0IG9mIHRoZQo+ID4gLSAgICAgICAgICAgICAgKiBtYW5hZ2VhYmlsaXR5IHVuaXQKPiA+
IC0gICAgICAgICAgICAgICovCj4gPiAtICAgICAgICAgICAgIHZmdGFfdmFsdWUgPSAob2Zmc2V0
ID09IHZmdGFfb2Zmc2V0KSA/IHZmdGFfYml0X2luX3JlZyA6IDA7Cj4gPiAtICAgICAgICAgICAg
IEUxMDAwX1dSSVRFX1JFR19BUlJBWShodywgVkZUQSwgb2Zmc2V0LCB2ZnRhX3ZhbHVlKTsKPiA+
ICsgICAgICAgICAgICAgRTEwMDBfV1JJVEVfUkVHX0FSUkFZKGh3LCBWRlRBLCBvZmZzZXQsIDAp
Owo+ID4gICAgICAgICAgICAgICBFMTAwMF9XUklURV9GTFVTSCgpOwo+ID4gICAgICAgfQo+ID4g
ICB9Cj4KPiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IHVwZGF0ZWQgdGhlIGNvbW1pdCBkZXNjcmlw
dGlvbi4KClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjaywgYnV0IGluIHRoaXMgY2FzZSBJIGRvbid0
IHRoaW5rIHRoZXJlIGlzCmFueXRoaW5nIHRvIGNoYW5nZSwgSSByZWNvbW1lbmQgd2Ugc2VuZCB0
aGUgcGF0Y2ggYXMtaXMuIEkgYXBwcmVjaWF0ZQp5b3VyIHRpbWUgc3BlbnQgcmV2aWV3aW5nIQoK
SmVzc2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
