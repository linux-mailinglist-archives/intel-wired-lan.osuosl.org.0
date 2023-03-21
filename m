Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B366C397C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 19:47:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28AE340CC9;
	Tue, 21 Mar 2023 18:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28AE340CC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679424468;
	bh=ONbaXTxEcieqLnIXJTR7UcyMA7CRBZwE4O8rwNiXOw4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D4+7tiJVi9o8qR+Gy+xo/8b3zRr2/HJPFHPwFeZfW6O2txjlAegvYh6X8e+XznfHZ
	 vEXwTSqmNydqccz0AugCQKHShj7aAt7y2vAlwY99BuLo69Vk5AcPIzHPRrRt9LAbGD
	 RChgthGrfbZQoAs203X/uweDYEtInIN6X8l+SYs73FsJ1sOeWYCqHuszPtV83Sj0P8
	 Xu38pPvtW6UTKY6JbqNZWi3TqUBSjlqG/FJzv2BsEbMKcXwmO3LvXnXClEJMG147zM
	 IWvAXuyw48ypg6MMo2e3Mt+cVdeX7wmruxIYMzeUOCKHmMDiFYKHpyy0CUNu98tUlT
	 fa1DXEN6rHLyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fG3rifHWXYsw; Tue, 21 Mar 2023 18:47:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D6D040C20;
	Tue, 21 Mar 2023 18:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D6D040C20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CA8C1BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 18:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 403FC611A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 18:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 403FC611A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWkHLECySwqG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 18:47:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E2C561177
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E2C561177
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 18:47:41 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id k15so8405604pgt.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 11:47:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679424461;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nMXuzSvBcY6wo6gmjxQswt5Hcr72mV9P0nbNbA0RBpw=;
 b=NLe1Co3/LyHtkQYrzKpfjXqfWGoLHPA6DyTa1/IJ980y4rFN9Up41P40sNTWlRbVHX
 wxPa3kVdmMmOqzH8WmtioZBV8PmWwGDpT2MMwDFRZZ6KpCKHKDfAKsyvv2fnQNh+Glti
 Hhq+pbKdt03QGOOYhwO4Pl1khKxY5YfByCYJKEQ+vuqFR0+Wuu52o3hhlFnc38NX17qm
 4UT8I8zoY43yVSWNUeT1GpnnJDPwN8tvYvLqfptpZKA6jN15/dA+IUXUFU1Vlk/fIo7F
 lePK1x0j1tFACsCIRKBeRD+5XtWrMBdXESedNh5SMVZ7umnTvBT8ngACqKTF1qv5GmV+
 bKIA==
X-Gm-Message-State: AO0yUKW0jFz/PBz9zYcK8mAFILZMTizSKdTrT8Gv4KNiRhWpdVYdCfWI
 v3eT0jQQmG4+HJQXaEc//MtS1waa8GTheJmK6Dmskg==
X-Google-Smtp-Source: AK7set/dRzPdTcuUTfjVGXOOTTi/AD0/54Cm5YH/fj/MLar3MvUn+tnk4s1XttRr3kjfRHV/EbKh+QlG18P9jNVp840=
X-Received: by 2002:a65:4247:0:b0:503:7bcd:89e9 with SMTP id
 d7-20020a654247000000b005037bcd89e9mr18351pgq.1.1679424460710; Tue, 21 Mar
 2023 11:47:40 -0700 (PDT)
MIME-Version: 1.0
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
 <167940643669.2718137.4624187727245854475.stgit@firesoul>
In-Reply-To: <167940643669.2718137.4624187727245854475.stgit@firesoul>
From: Stanislav Fomichev <sdf@google.com>
Date: Tue, 21 Mar 2023 11:47:28 -0700
Message-ID: <CAKH8qBuv-9TXAmi0oTbB0atC4f6jzFcFhAgQ3D89VX45vUU9hw@mail.gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679424461;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nMXuzSvBcY6wo6gmjxQswt5Hcr72mV9P0nbNbA0RBpw=;
 b=ZVKAN6kZNKLbFLMXMn11gxilOycK7pM2JzP5L2Vi9pFmOYeGSh16g6d/UjSJnlB+NC
 v1AVILgWnUG9M8V4H/5NTtBbGP4AA31HYsqWTFeFrtv5iYFy9BqYK7yi/ePOcFRo3rDz
 N4OOdtB7HhCoAI6ndLZ7jsYyxK9ZfhYl5zF+N78jlOwJJuX+EkoD6HYOMP1XIg4Q/2Ke
 jZ6qAtRbbZ3psYk1aZCfuFAbjnnkQmq1lfpkKWpUMaRnWzi9Wx47EYcfu3r7ZiWuBJ21
 zj9WDnDPqdlgk83oEBRac/zye3mYkoQpm97HsC6cYn8Ppo10uX+1frxyupPPgt7Wg/Mk
 oCBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=ZVKAN6kZ
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 pabeni@redhat.com, yoong.siang.song@intel.com, kuba@kernel.org,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBNYXIgMjEsIDIwMjMgYXQgNjo0N+KAr0FNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIK
PGJyb3VlckByZWRoYXQuY29tPiB3cm90ZToKPgo+IFdoZW4gZHJpdmVyIGRldmVsb3BlcnMgYWRk
IFhEUC1oaW50cyBrZnVuY3MgZm9yIFJYIGhhc2ggaXQgaXMKPiBwcmFjdGljYWwgdG8gcHJpbnQg
dGhlIHJldHVybiBjb2RlIGluIGJwZl9wcmludGsgdHJhY2UgcGlwZSBsb2cuCj4KPiBQcmludCBo
YXNoIHZhbHVlIGFzIGEgaGV4IHZhbHVlLCBib3RoIEFGX1hEUCB1c2Vyc3BhY2UgYW5kIGJwZl9w
cm9nLAo+IGFzIHRoaXMgbWFrZXMgaXQgZWFzaWVyIHRvIHNwb3QgcG9vciBxdWFsaXR5IGhhc2hl
cy4KPgo+IFNpZ25lZC1vZmYtYnk6IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRo
YXQuY29tPgo+IC0tLQo+ICAuLi4vdGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19t
ZXRhZGF0YS5jICB8ICAgIDkgKysrKysrLS0tCj4gIHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Jw
Zi94ZHBfaHdfbWV0YWRhdGEuYyAgICAgIHwgICAgNSArKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gaW5kZXggNDBjMTdh
ZGJmNDgzLi5jZTA3MDEwZTRkNDggMTAwNjQ0Cj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCj4gQEAgLTc3LDEwICs3NywxMyBAQCBp
bnQgcngoc3RydWN0IHhkcF9tZCAqY3R4KQo+ICAgICAgICAgICAgICAgICBtZXRhLT5yeF90aW1l
c3RhbXAgPSAwOyAvKiBVc2VkIGJ5IEFGX1hEUCBhcyBub3QgYXZhaWwgc2lnbmFsICovCj4gICAg
ICAgICB9Cj4KPiAtICAgICAgIGlmICghYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1l
dGEtPnJ4X2hhc2gpKQo+IC0gICAgICAgICAgICAgICBicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhf
aGFzaCB3aXRoICV1IiwgbWV0YS0+cnhfaGFzaCk7Cj4gLSAgICAgICBlbHNlCj4gKyAgICAgICBy
ZXQgPSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goY3R4LCAmbWV0YS0+cnhfaGFzaCk7Cj4gKyAg
ICAgICBpZiAocmV0ID49IDApIHsKPiArICAgICAgICAgICAgICAgYnBmX3ByaW50aygicG9wdWxh
dGVkIHJ4X2hhc2ggd2l0aCAweCUwOFgiLCBtZXRhLT5yeF9oYXNoKTsKPiArICAgICAgIH0gZWxz
ZSB7Cj4gKyAgICAgICAgICAgICAgIGJwZl9wcmludGsoInJ4X2hhc2ggbm90LWF2YWlsIGVycm5v
OiVkIiwgcmV0KTsKPiAgICAgICAgICAgICAgICAgbWV0YS0+cnhfaGFzaCA9IDA7IC8qIFVzZWQg
YnkgQUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KPiArICAgICAgIH0KPgo+ICAgICAgICAg
cmV0dXJuIGJwZl9yZWRpcmVjdF9tYXAoJnhzaywgY3R4LT5yeF9xdWV1ZV9pbmRleCwgWERQX1BB
U1MpOwo+ICB9Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBf
aHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRh
dGEuYwo+IGluZGV4IDQwMGJmZTE5YWJmZS4uZjNlYzA3Y2NkYzk1IDEwMDY0NAo+IC0tLSBhL3Rv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+ICsrKyBiL3Rvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfaHdfbWV0YWRhdGEuYwo+IEBAIC0zLDYgKzMsOSBA
QAo+ICAvKiBSZWZlcmVuY2UgcHJvZ3JhbSBmb3IgdmVyaWZ5aW5nIFhEUCBtZXRhZGF0YSBvbiBy
ZWFsIEhXLiBGdW5jdGlvbmFsIHRlc3QKPiAgICogb25seSwgZG9lc24ndCB0ZXN0IHRoZSBwZXJm
b3JtYW5jZS4KPiAgICoKPiArICogQlBGLXByb2cgYnBmX3ByaW50ayBpbmZvIG91dG91dCBjYW4g
YmUgYWNjZXNzIHZpYQo+ICsgKiAvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL3RyYWNlX3BpcGUK
CnMvb3V0b3V0L291dHB1dC8KCkJ1dCBsZXQncyBtYXliZSBkcm9wIGl0PyBJZiB5b3Ugd2FudCB0
byBtYWtlIGl0IG1vcmUgdXNhYmxlLCBsZXQncwpoYXZlIGEgc2VwYXJhdGUgcGF0Y2ggdG8gZW5h
YmxlIHRyYWNpbmcgYW5kIHBlcmlvZGljYWxseSBkdW1wIGl0IHRvCnRoZSBjb25zb2xlIGluc3Rl
YWQgKGFzIHByZXZpb3VzbHkgZGlzY3Vzc2VkKS4KCldpdGggdGhpcyBhZGRyZXNzZWQ6CkFja2Vk
LWJ5OiBTdGFuaXNsYXYgRm9taWNoZXYgPHNkZkBnb29nbGUuY29tPgoKPiArICoKPiAgICogUlg6
Cj4gICAqIC0gVURQIDkwOTEgcGFja2V0cyBhcmUgZGl2ZXJ0ZWQgaW50byBBRl9YRFAKPiAgICog
LSBNZXRhZGF0YSB2ZXJpZmllZDoKPiBAQCAtMTU2LDcgKzE1OSw3IEBAIHN0YXRpYyB2b2lkIHZl
cmlmeV94ZHBfbWV0YWRhdGEodm9pZCAqZGF0YSwgY2xvY2tpZF90IGNsb2NrX2lkKQo+Cj4gICAg
ICAgICBtZXRhID0gZGF0YSAtIHNpemVvZigqbWV0YSk7Cj4KPiAtICAgICAgIHByaW50Zigicnhf
aGFzaDogJXVcbiIsIG1ldGEtPnJ4X2hhc2gpOwo+ICsgICAgICAgcHJpbnRmKCJyeF9oYXNoOiAw
eCUwOFhcbiIsIG1ldGEtPnJ4X2hhc2gpOwo+ICAgICAgICAgcHJpbnRmKCJyeF90aW1lc3RhbXA6
ICAlbGx1IChzZWM6JTAuNGYpXG4iLCBtZXRhLT5yeF90aW1lc3RhbXAsCj4gICAgICAgICAgICAg
ICAgKGRvdWJsZSltZXRhLT5yeF90aW1lc3RhbXAgLyBOQU5PU0VDX1BFUl9TRUMpOwo+ICAgICAg
ICAgaWYgKG1ldGEtPnJ4X3RpbWVzdGFtcCkgewo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
