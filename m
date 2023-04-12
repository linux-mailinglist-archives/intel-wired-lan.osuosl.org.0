Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F316DFAD4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 18:06:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEBB740B9E;
	Wed, 12 Apr 2023 16:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEBB740B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681315612;
	bh=10h07iOWPs2pOIrIJp4vPBPLh4rqeB6MhHBjgtFrQYo=;
	h=Date:In-Reply-To:References:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dC63EKv50oPsVi1EP2Log5u1AfT/D79EfNyGZe94RjAoSxDCDC1rl5+jiQxY7L0fz
	 1LN+mJY8ieB0RM7AEB+jNDHzP7db84JiIocncm8JvELp9DkkHWXMuhso9E2JJraoBR
	 7TtBy+5j+flTzcfh5R939wxIUby/jd6bwbVgZPpsYzXwNPvQzJBmu2bxXTaNJ7Qddd
	 7gFI/NhCYT/iI6QGYNpdfuIXqFc3Cdeg51R/Ru2czI9TfMErSEPbA80KXvnmvFGGfa
	 Thz9HH9rOtAN8vl36qML3h07zdZAKHe5Svv41C5u2FvaLB2dcJQVLDKobckV45WVeu
	 tS+zq75GZ0+9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DDJcSU_u8eXb; Wed, 12 Apr 2023 16:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A10E9409AC;
	Wed, 12 Apr 2023 16:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A10E9409AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 083861BF37A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3AB281902
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:06:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3AB281902
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJeNj4UXz4kn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 16:06:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D341A81766
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D341A81766
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 16:06:45 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-54be7584b28so240915147b3.16
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 09:06:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681315605;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=qOZ3tRdzr0hGyj65SmYqR8EOiBJrMHU9wHV0sWwy2Pc=;
 b=qeNpqnGDzv8TMuoKb1RCvq0bizaoc/HnOVjsUkGf9t6K+K2izLOF/Jsjdf4IF4Qaem
 lMoLhgzaGyRANII8YmYNexQqn2F4igpfRswMy6yUsfwZtUmY4FDLtuCsOwJvi2el0CUO
 NV/PY6/RjqEGcU+eJv9ZX84mEo1T7OgKDy05PfP1LTD4UhWAKidOOD6SaK6uEp5Vce0L
 8YLjYXNbynEIUb+kU10JdRf0B+7AoC4Pb1w4OQhW+KqLxhI2du/knL2CFj3ENp/JJoVN
 CqfbnB5Bt1wOEOrETQVPXFp2uNKhi28pYeIBpA1/qiCVRP8nAOlKty5rBdylQmdB3W7J
 clDQ==
X-Gm-Message-State: AAQBX9cE7091mY7YWSv/E0RFZ9hFpooJm1TDmeeuLSnJUM7cYmThE0tz
 h+HNKPUT3RtsAnecl0V5TxlSTrU=
X-Google-Smtp-Source: AKy350alO6Bi7nwBbBUyvXEpvPDdFjOYyG+3EN768sevyKcN5qXz8S1F1xuMmrr51w4VCv+w61ymJ58=
X-Received: from sdf.c.googlers.com ([fda3:e722:ac3:cc00:7f:e700:c0a8:5935])
 (user=sdf job=sendgmr) by 2002:a25:d988:0:b0:997:c919:4484 with SMTP id
 q130-20020a25d988000000b00997c9194484mr7803210ybg.6.1681315604689; Wed, 12
 Apr 2023 09:06:44 -0700 (PDT)
Date: Wed, 12 Apr 2023 09:06:42 -0700
In-Reply-To: <402a3c73-d26d-3619-d69a-c90eb3f0e9ee@redhat.com>
Mime-Version: 1.0
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098188134.96582.7870014252568928901.stgit@firesoul>
 <CAKH8qBu2ieR+puSkF30-df3YikOvDZErxc2qjjVXPPAvCecihA@mail.gmail.com>
 <402a3c73-d26d-3619-d69a-c90eb3f0e9ee@redhat.com>
Message-ID: <ZDbXEqQc3MpKPmGv@google.com>
From: Stanislav Fomichev <sdf@google.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1681315605;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qOZ3tRdzr0hGyj65SmYqR8EOiBJrMHU9wHV0sWwy2Pc=;
 b=3GKeCmKb7WhOPuw6f/+cIH8Uoeg+1ifv4Y68fT/r0CxL0AN2gEYouHvT0LuXvb3PIN
 5fn8/269X8MwwOYUN+DquyOvQDu+d/A63xTmsf952SUmDQFLpzdB+0Set1ZcJA9fTpDU
 eh2v+vT1WOlc+bOiPTOwcRM6BVhUaI8oAm7LvhjaZNgMBSVv58MUL0pHIeGC908APq0M
 9iaf5No+f3MYrx8Qlg+kzdXrFmvQVdVQ0KTFJdyKvHCKw2HOxhbKQkr9LQIy41/Pex1r
 P57jQI5ZzrAhN2S7XrezPZZwGkGL1Ry4iPmZi0Rqe+2Tt4apKDtGgIRjDipEM+1vGSfi
 3JgQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=3GKeCmKb
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 1/7] selftests/bpf:
 xdp_hw_metadata default disable bpf_printk
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, kuba@kernel.org, pabeni@redhat.com, martin.lau@kernel.org,
 larysa.zaremba@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMDQvMTIsIEplc3BlciBEYW5nYWFyZCBCcm91ZXIgd3JvdGU6Cj4gCj4gT24gMTIvMDQvMjAy
MyAwMC40MiwgU3RhbmlzbGF2IEZvbWljaGV2IHdyb3RlOgo+ID4gT24gU2F0LCBBcHIgOCwgMjAy
MyBhdCAxMjoyNOKAr1BNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiA+IDxicm91ZXJAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBUaGUgdG9vbCB4ZHBfaHdfbWV0YWRhdGEgY2FuIGJl
IHVzZWQgYnkgZHJpdmVyIGRldmVsb3BlcnMKPiA+ID4gaW1wbGVtZW50aW5nIFhEUC1oaW50cyBr
ZnVuY3MuICBUaGUgdG9vbCB0cmFuc2ZlcnMgdGhlCj4gPiA+IFhEUC1oaW50cyB2aWEgbWV0YWRh
dGEgaW5mb3JtYXRpb24gdG8gYW4gQUZfWERQIHVzZXJzcGFjZQo+ID4gPiBwcm9jZXNzLiBXaGVu
IGV2ZXJ5dGhpbmcgd29ya3MgdGhlIGJwZl9wcmludGsgY2FsbHMgYXJlCj4gPiA+IHVubmNlc3Nz
YXJ5LiAgVGh1cywgZGlzYWJsZSBicGZfcHJpbnRrIGJ5IGRlZmF1bHQsIGJ1dAo+ID4gPiBtYWtl
IGl0IGVhc3kgdG8gcmVlbmFibGUgZm9yIGRyaXZlciBkZXZlbG9wZXJzIHRvIHVzZQo+ID4gPiB3
aGVuIGRlYnVnZ2luZyB0aGVpciBkcml2ZXIgaW1wbGVtZW50YXRpb24uCj4gPiA+IAo+ID4gPiBU
aGlzIGFsc28gY29udmVydHMgYnBmX3ByaW50ayAiZm9yd2FyZGluZyBVRFA6OTA5MSB0byBBRl9Y
RFAiCj4gPiA+IGludG8gYSBjb2RlIGNvbW1lbnQuICBUaGUgYnBmX3ByaW50aydzIHRoYXQgYXJl
IGltcG9ydGFudAo+ID4gPiB0byB0aGUgZHJpdmVyIGRldmVsb3BlcnMgaXMgd2hlbiBicGZfeGRw
X2FkanVzdF9tZXRhIGZhaWxzLgo+ID4gPiBUaGUgbGlrZWx5IG1pc3Rha2UgZnJvbSBkcml2ZXIg
ZGV2ZWxvcGVycyBpcyBleHBlY3RlZCB0bwo+ID4gPiBiZSB0aGF0IHRoZXkgZGlkbid0IGltcGxl
bWVudCBYRFAgbWV0YWRhdGEgYWRqdXN0IHN1cHBvcnQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEu
YyAgfCAgIDE2ICsrKysrKysrKysrKysrLS0KPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS90b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMgYi90b29scy90
ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4gaW5kZXgg
NGM1NWI0ZDc5ZDNkLi45ODBlYjYwZDhlNWIgMTAwNjQ0Cj4gPiA+IC0tLSBhL3Rvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwo+ID4gPiArKysgYi90b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX2h3X21ldGFkYXRhLmMKPiA+ID4gQEAg
LTUsNiArNSwxOSBAQAo+ID4gPiAgICNpbmNsdWRlIDxicGYvYnBmX2hlbHBlcnMuaD4KPiA+ID4g
ICAjaW5jbHVkZSA8YnBmL2JwZl9lbmRpYW4uaD4KPiA+ID4gCj4gPiA+ICsvKiBQZXIgZGVmYXVs
dCBiZWxvdyBicGZfcHJpbnRrKCkgY2FsbHMgYXJlIGRpc2FibGVkLiAgQ2FuIGJlCj4gPiA+ICsg
KiByZWVuYWJsZWQgbWFudWFsbHkgZm9yIGNvbnZlbmllbmNlIGJ5IFhEUC1oaW50cyBkcml2ZXIg
ZGV2ZWxvcGVyLAo+ID4gPiArICogd2hlbiB0cm91YmxzaG9vdGluZyB0aGUgZHJpdmVycyBrZnVu
Y3MgaW1wbGVtZW50YXRpb24gZGV0YWlscy4KPiA+ID4gKyAqCj4gPiA+ICsgKiBSZW1lbWJlciBC
UEYtcHJvZyBicGZfcHJpbnRrIGluZm8gb3V0cHV0IGNhbiBiZSBhY2Nlc3MgdmlhOgo+ID4gPiAr
ICogIC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhY2VfcGlwZQo+ID4gPiArICovCj4gPiA+
ICsvLyNkZWZpbmUgREVCVUcgICAgICAgIDEKPiA+ID4gKyNpZm5kZWYgREVCVUcKPiA+ID4gKyN1
bmRlZiAgYnBmX3ByaW50awo+ID4gPiArI2RlZmluZSBicGZfcHJpbnRrKGZtdCwgLi4uKSAoe30p
Cj4gPiA+ICsjZW5kaWYKPiA+IAo+ID4gQXJlIHlvdSBwbGFubmluZyB0byBldmVudHVhbGx5IGRv
IHNvbWV0aGlrZSBzaW1pbGFyIHRvIHdoYXQgSSd2ZQo+ID4gbWVudGlvbmVkIGluIFswXT8gSWYg
bm90LCBzaG91bGQgSSB0cnkgdG8gc2VuZCBhIHBhdGNoPwo+IAo+IFNlZSBuZXh0IHBhdGNoOgo+
ICAtIFtQQVRDSCBicGYgVjcgMi83XSBzZWxmdGVzdHMvYnBmOiBBZGQgY291bnRlcnMgdG8geGRw
X2h3X21ldGFkYXRhCj4gCj4gd2hlcmUgSSBhZGQgdGhlc2UgY291bnRlcnMgOi0pCgpPaCwgbmlj
ZSwgbGV0IG1lIHRha2UgYSBsb29rLiBJIHdhcyBhc3N1bWluZyB2NyBpcyBtb3N0bHkgdGhlIHNh
bWUgYXMKdjYuLgogCj4gPiAKPiA+IDA6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi9D
QUtIOHFCdXBSWUVnK1NQTVRNYjRoNTMyR0VTRzdQMVFkYUZKLSt6cmJBUlZOOXhyZEFAbWFpbC5n
bWFpbC5jb20vCj4gPiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
