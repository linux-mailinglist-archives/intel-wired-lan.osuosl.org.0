Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0F2728772
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 20:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E35D83F4C;
	Thu,  8 Jun 2023 18:45:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E35D83F4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686249907;
	bh=FR1ILqTfOW8UWA2VGoQ5Y1zKMOvu3Oz17kB9sl10yCE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9wxVCJLqIt+vkJxiL+YztHUIrPomT9RRP50cNIlV4QualJscSbiPvUtVr02jqMZbI
	 jIQThcs6IBZm5FRP0WBukw77sh8BlUu0jnXZJgiOhbjdXgk3PaRKJ3g2SARNvMEOPV
	 rkoHdvd+uQn5rWGNIx1E03po88UkJHbRmVhNzeeKqp0R2+dc7IcD2tWErooK45GhNu
	 zKS1pLUPJg7M6/bN2gyGGbnygB14uSBAVOazyaEFWQDWA9wcLo3c39Bi2PYSFANX0y
	 lOcFizT3ycK8O/LWD4EutH7R5kJHA635IH0MPPlYNxUbY6yoeImKGR1KGs6psCIc0b
	 KQNOLrhq3wMeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOdASGwgzwmp; Thu,  8 Jun 2023 18:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D522E83F2B;
	Thu,  8 Jun 2023 18:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D522E83F2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45BFF1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2938A41F0A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:45:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2938A41F0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zl_19eyhMKCL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 18:44:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA73541932
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA73541932
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:44:58 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 46e09a7af769-6b2b6910facso15655a34.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 08 Jun 2023 11:44:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686249898; x=1688841898;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yt12+1+dARtKc3fRLQ7ivDg1sn89g+SY2IZ1KjaiaJs=;
 b=G/3cKtpe6RxTsGCDvJMw3jGUTvt/fcHMwd70jVs/0FvZ33Mx9wJvTqbLOcP6Hv7cMQ
 D9koelZ22rkWcsUEfDTT3ZVZ+5Sjcj07CKVQwlQJPvlzL4wK5fgIswq7uX01ADhLlDT5
 AADxR4ETkt6i5hEEXBU8KNeiQDmvqf9bGtKLb/wTuqHkWLC1ju/ZCEuoPe6ut9Z5hrAL
 vbvZ/8WghBzlPPNMwSqSAB+3nH9Sc1lfGGsA6gdj/jFf2d/0eaBc88c0TaVoMA9sBkqE
 xLVcteQpDkgVrrg+fNpxCBS/XnOaTR+B2LaTnz73BIQSAqUPYnsR1ejFLer+uf0e6uha
 RrWA==
X-Gm-Message-State: AC+VfDwXsNyanp/RgefFRdTnnQjJJGe3sGhxO7FmgiM5CYEswIExfmeg
 pkfmF0VcB31m2wdQ2Syn5v5mCoOG1vtNNx9+AZ9PgA==
X-Google-Smtp-Source: ACHHUZ6qTt2rGt9wmZJ/SPf4KQOMj4ZBEd3BOO3j7B2iz3zwr55Kb1Y6wu4JUoLhK2C91muXfFqoZoIhgmucd8I7ZNU=
X-Received: by 2002:a05:6359:a9b:b0:129:b9a9:7858 with SMTP id
 em27-20020a0563590a9b00b00129b9a97858mr3725483rwb.3.1686249897389; Thu, 08
 Jun 2023 11:44:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <20230602103750.2290132-6-vladimir.oltean@nxp.com>
In-Reply-To: <20230602103750.2290132-6-vladimir.oltean@nxp.com>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Thu, 8 Jun 2023 14:44:46 -0400
Message-ID: <CAM0EoM=P9+wNnNQ=ky96rwCx1z20fR21EWEdx+Na39NCqqG=3A@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686249898; x=1688841898; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yt12+1+dARtKc3fRLQ7ivDg1sn89g+SY2IZ1KjaiaJs=;
 b=0sPZpYtCx2uIcWQN2SI/AEQ/WWZcXhOA/di7WAeDir9+IxajPlSiVl+Hm2Chzremmo
 dNc1GyBIQugOsTs0Op4y9GnHpYJA6Lk2SzxfAFqSh7gT18FVPy6ip84ibVOzTAH/UfUA
 ZvZjqPRxbDJ1qCdiplb3WeEslaA6HHFH8lOx/eE5silGncLGYYiL5xP/SkdO+VG6Dm5D
 1eFQ20JbZf12nZYUu92bxsTJf6ot+K12YXjoCdFGJuDefST2cgBxazwwt2XthTgYPA/o
 sHIPKcuZ2bM83dfwq5rhxfjHleCZJVwihFvLBLGwll/oJeiCqDdp3ptsYVl+seJdxQ30
 YSqA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=0sPZpYtC
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 5/5] net/sched:
 taprio: dump class stats for the actual q->qdiscs[]
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBKdW4gMiwgMjAyMyBhdCA2OjM44oCvQU0gVmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1p
ci5vbHRlYW5AbnhwLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIG1ha2VzIGEgZGlmZmVyZW5jZSBmb3Ig
dGhlIHNvZnR3YXJlIHNjaGVkdWxpbmcgbW9kZSwgd2hlcmUKPiBkZXZfcXVldWUtPnFkaXNjX3Ns
ZWVwaW5nIGlzIHRoZSBzYW1lIGFzIHRoZSB0YXByaW8gcm9vdCBRZGlzYyBpdHNlbGYsCj4gYnV0
IHdoZW4gd2UncmUgdGFsa2luZyBhYm91dCB3aGF0IFFkaXNjIGFuZCBzdGF0cyBnZXQgcmVwb3J0
ZWQgZm9yIGEKPiB0cmFmZmljIGNsYXNzLCB0aGUgcm9vdCB0YXByaW8gaXNuJ3Qgd2hhdCBjb21l
cyB0byBtaW5kLCBidXQgcS0+cWRpc2NzW10KPiBpcy4KPgo+IFRvIHVuZGVyc3RhbmQgdGhlIGRp
ZmZlcmVuY2UsIEkndmUgYXR0ZW1wdGVkIHRvIHNlbmQgMTAwIHBhY2tldHMgaW4KPiBzb2Z0d2Fy
ZSBtb2RlIHRocm91Z2ggdHJhZmZpYyBjbGFzcyAwICh0aGV5IGFyZSBpbiB0aGUgUWRpc2MncyBi
YWNrbG9nKSwKPiBhbmQgcmVjb3JkZWQgdGhlIHN0YXRzIGJlZm9yZSBhbmQgYWZ0ZXIgdGhlIGNo
YW5nZS4KPgoKT3RoZXIgdGhhbiB0aGUgcmVmY291bnQgaXNzdWUgaSB0aGluayB0aGUgYXBwcm9h
Y2ggbG9va3MgcmVhc29uYWJsZSB0bwptZS4gVGhlIHN0YXRzIGJlZm9yZS9hZnRlciB5b3UgYXJl
IHNob3dpbmcgYmVsb3cgdGhvdWdoIGFyZQppbnRlcmVzdGluZzsgYXJlIHlvdSBzaG93aW5nIGEg
dHJhbnNpZW50IHBoYXNlIHdoZXJlIHBhY2tldHMgYXJlCnRlbXBvcmFyaWx5IGluIHRoZSBiYWNr
bG9nLiBUeXBpY2FsbHkgdGhlIGJhY2tsb2cgaXMgYSB0cmFuc2llbnQgcGhhc2UKd2hpY2ggbGFz
dHMgYSB2ZXJ5IHNob3J0IHBlcmlvZC4gTWF5YmUgaXQgd29ya3MgZGlmZmVyZW50bHkgZm9yCnRh
cHJpbz8gSSB0b29rIGEgcXVpY2sgbG9vayBhdCB0aGUgY29kZSBhbmQgZG8gc2VlIHRvIGRlY3Jl
bWVudCB0aGUKYmFja2xvZyBpbiB0aGUgZGVxdWV1ZSwgc28gaWYgaXQgaXMgbm90IHRyYW5zaWVu
dCB0aGVuIHNvbWUgY29kZSBwYXRoCmlzIG5vdCBiZWluZyBoaXQuCgpBc2lkZTogSSByZWFsaXpl
IHlvdSBhcmUgYnVzeSAtIGJ1dCBpZiB5b3UgZ2V0IHRpbWUgYW5kIHByb3ZpZGUgc29tZQpzYW1w
bGUgdGMgY29tbWFuZCBsaW5lcyBmb3IgdGVzdGluZyB3ZSBjb3VsZCBoZWxwIGNyZWF0ZSB0aGUg
dGVzdHMgZm9yCnlvdSwgYXQgbGVhc3QgdGhlIGZpcnN0IHRpbWUuIFRoZSBhZHZhbnRhZ2Ugb2Yg
cHV0dGluZyB0aGVzZSB0ZXN0cyBpbgp0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy90Yy10ZXN0aW5n
LyBpcyB0aGF0IHRoZXJlIGFyZSB0ZXN0IHRvb2xzIG91dAp0aGVyZSB0aGF0IHJ1biB0aGVzZSB0
ZXN0cyBhbmQgc28gcmVncmVzc2lvbnMgYXJlIGVhc2llciB0byBjYXRjaApzb29uZXIuCgpjaGVl
cnMsCmphbWFsCgo+IEhlcmUgaXMgYmVmb3JlOgo+Cj4gJCB0YyAtcyBjbGFzcyBzaG93IGRldiBl
dGgwCj4gY2xhc3MgdGFwcmlvIDgwMDE6MSByb290IGxlYWYgODAwMToKPiAgU2VudCAwIGJ5dGVz
IDAgcGt0IChkcm9wcGVkIDAsIG92ZXJsaW1pdHMgMCByZXF1ZXVlcyAwKQo+ICBiYWNrbG9nIDk0
MDBiIDEwMHAgcmVxdWV1ZXMgMAo+ICBXaW5kb3cgZHJvcHM6IDAKPiBjbGFzcyB0YXByaW8gODAw
MToyIHJvb3QgbGVhZiA4MDAxOgo+ICBTZW50IDAgYnl0ZXMgMCBwa3QgKGRyb3BwZWQgMCwgb3Zl
cmxpbWl0cyAwIHJlcXVldWVzIDApCj4gIGJhY2tsb2cgOTQwMGIgMTAwcCByZXF1ZXVlcyAwCj4g
IFdpbmRvdyBkcm9wczogMAo+IGNsYXNzIHRhcHJpbyA4MDAxOjMgcm9vdCBsZWFmIDgwMDE6Cj4g
IFNlbnQgMCBieXRlcyAwIHBrdCAoZHJvcHBlZCAwLCBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkK
PiAgYmFja2xvZyA5NDAwYiAxMDBwIHJlcXVldWVzIDAKPiAgV2luZG93IGRyb3BzOiAwCj4gY2xh
c3MgdGFwcmlvIDgwMDE6NCByb290IGxlYWYgODAwMToKPiAgU2VudCAwIGJ5dGVzIDAgcGt0IChk
cm9wcGVkIDAsIG92ZXJsaW1pdHMgMCByZXF1ZXVlcyAwKQo+ICBiYWNrbG9nIDk0MDBiIDEwMHAg
cmVxdWV1ZXMgMAo+ICBXaW5kb3cgZHJvcHM6IDAKPiBjbGFzcyB0YXByaW8gODAwMTo1IHJvb3Qg
bGVhZiA4MDAxOgo+ICBTZW50IDAgYnl0ZXMgMCBwa3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0cyAw
IHJlcXVldWVzIDApCj4gIGJhY2tsb2cgOTQwMGIgMTAwcCByZXF1ZXVlcyAwCj4gIFdpbmRvdyBk
cm9wczogMAo+IGNsYXNzIHRhcHJpbyA4MDAxOjYgcm9vdCBsZWFmIDgwMDE6Cj4gIFNlbnQgMCBi
eXRlcyAwIHBrdCAoZHJvcHBlZCAwLCBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkKPiAgYmFja2xv
ZyA5NDAwYiAxMDBwIHJlcXVldWVzIDAKPiAgV2luZG93IGRyb3BzOiAwCj4gY2xhc3MgdGFwcmlv
IDgwMDE6NyByb290IGxlYWYgODAwMToKPiAgU2VudCAwIGJ5dGVzIDAgcGt0IChkcm9wcGVkIDAs
IG92ZXJsaW1pdHMgMCByZXF1ZXVlcyAwKQo+ICBiYWNrbG9nIDk0MDBiIDEwMHAgcmVxdWV1ZXMg
MAo+ICBXaW5kb3cgZHJvcHM6IDAKPiBjbGFzcyB0YXByaW8gODAwMTo4IHJvb3QgbGVhZiA4MDAx
Ogo+ICBTZW50IDAgYnl0ZXMgMCBwa3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0cyAwIHJlcXVldWVz
IDApCj4gIGJhY2tsb2cgOTQwMGIgMTAwcCByZXF1ZXVlcyAwCj4gIFdpbmRvdyBkcm9wczogMAo+
Cj4gYW5kIGhlcmUgaXMgYWZ0ZXI6Cj4KPiBjbGFzcyB0YXByaW8gODAwMToxIHJvb3QKPiAgU2Vu
dCAwIGJ5dGVzIDAgcGt0IChkcm9wcGVkIDAsIG92ZXJsaW1pdHMgMCByZXF1ZXVlcyAwKQo+ICBi
YWNrbG9nIDk0MDBiIDEwMHAgcmVxdWV1ZXMgMAo+ICBXaW5kb3cgZHJvcHM6IDAKPiBjbGFzcyB0
YXByaW8gODAwMToyIHJvb3QKPiAgU2VudCAwIGJ5dGVzIDAgcGt0IChkcm9wcGVkIDAsIG92ZXJs
aW1pdHMgMCByZXF1ZXVlcyAwKQo+ICBiYWNrbG9nIDBiIDBwIHJlcXVldWVzIDAKPiAgV2luZG93
IGRyb3BzOiAwCj4gY2xhc3MgdGFwcmlvIDgwMDE6MyByb290Cj4gIFNlbnQgMCBieXRlcyAwIHBr
dCAoZHJvcHBlZCAwLCBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkKPiAgYmFja2xvZyAwYiAwcCBy
ZXF1ZXVlcyAwCj4gIFdpbmRvdyBkcm9wczogMAo+IGNsYXNzIHRhcHJpbyA4MDAxOjQgcm9vdAo+
ICBTZW50IDAgYnl0ZXMgMCBwa3QgKGRyb3BwZWQgMCwgb3ZlcmxpbWl0cyAwIHJlcXVldWVzIDAp
Cj4gIGJhY2tsb2cgMGIgMHAgcmVxdWV1ZXMgMAo+ICBXaW5kb3cgZHJvcHM6IDAKPiBjbGFzcyB0
YXByaW8gODAwMTo1IHJvb3QKPiAgU2VudCAwIGJ5dGVzIDAgcGt0IChkcm9wcGVkIDAsIG92ZXJs
aW1pdHMgMCByZXF1ZXVlcyAwKQo+ICBiYWNrbG9nIDBiIDBwIHJlcXVldWVzIDAKPiAgV2luZG93
IGRyb3BzOiAwCj4gY2xhc3MgdGFwcmlvIDgwMDE6NiByb290Cj4gIFNlbnQgMCBieXRlcyAwIHBr
dCAoZHJvcHBlZCAwLCBvdmVybGltaXRzIDAgcmVxdWV1ZXMgMCkKPiAgYmFja2xvZyAwYiAwcCBy
ZXF1ZXVlcyAwCj4gIFdpbmRvdyBkcm9wczogMAo+IGNsYXNzIHRhcHJpbyA4MDAxOjcgcm9vdCBs
ZWFmIDgwMTA6Cj4gIFNlbnQgMCBieXRlcyAwIHBrdCAoZHJvcHBlZCAwLCBvdmVybGltaXRzIDAg
cmVxdWV1ZXMgMCkKPiAgYmFja2xvZyAwYiAwcCByZXF1ZXVlcyAwCj4gIFdpbmRvdyBkcm9wczog
MAo+IGNsYXNzIHRhcHJpbyA4MDAxOjggcm9vdAo+ICBTZW50IDAgYnl0ZXMgMCBwa3QgKGRyb3Bw
ZWQgMCwgb3ZlcmxpbWl0cyAwIHJlcXVldWVzIDApCj4gIGJhY2tsb2cgMGIgMHAgcmVxdWV1ZXMg
MAo+ICBXaW5kb3cgZHJvcHM6IDAKPgo+IFRoZSBtb3N0IGdsYXJpbmcgKGFuZCBleHBlY3RlZCkg
ZGlmZmVyZW5jZSBpcyB0aGF0IGJlZm9yZSwgYWxsIGNsYXNzCj4gc3RhdHMgcmVwb3J0ZWQgdGhl
IGdsb2JhbCBzdGF0cywgd2hlcmVhcyBub3csIHRoZXkgcmVhbGx5IHJlcG9ydCBqdXN0Cj4gdGhl
IGNvdW50ZXJzIGZvciB0aGF0IHRyYWZmaWMgY2xhc3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWbGFk
aW1pciBPbHRlYW4gPHZsYWRpbWlyLm9sdGVhbkBueHAuY29tPgo+IC0tLQo+ICBuZXQvc2NoZWQv
c2NoX3RhcHJpby5jIHwgNyArKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF90YXByaW8u
YyBiL25ldC9zY2hlZC9zY2hfdGFwcmlvLmMKPiBpbmRleCBjYzdmZjk4ZTVlODYuLjIzYjk4YzNh
ZjhiMiAxMDA2NDQKPiAtLS0gYS9uZXQvc2NoZWQvc2NoX3RhcHJpby5jCj4gKysrIGIvbmV0L3Nj
aGVkL3NjaF90YXByaW8uYwo+IEBAIC0yNDUyLDExICsyNDUyLDExIEBAIHN0YXRpYyB1bnNpZ25l
ZCBsb25nIHRhcHJpb19maW5kKHN0cnVjdCBRZGlzYyAqc2NoLCB1MzIgY2xhc3NpZCkKPiAgc3Rh
dGljIGludCB0YXByaW9fZHVtcF9jbGFzcyhzdHJ1Y3QgUWRpc2MgKnNjaCwgdW5zaWduZWQgbG9u
ZyBjbCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBza19idWZmICpza2Is
IHN0cnVjdCB0Y21zZyAqdGNtKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3QgbmV0ZGV2X3F1ZXVlICpk
ZXZfcXVldWUgPSB0YXByaW9fcXVldWVfZ2V0KHNjaCwgY2wpOwo+ICsgICAgICAgc3RydWN0IFFk
aXNjICpjaGlsZCA9IHRhcHJpb19sZWFmKHNjaCwgY2wpOwo+Cj4gICAgICAgICB0Y20tPnRjbV9w
YXJlbnQgPSBUQ19IX1JPT1Q7Cj4gICAgICAgICB0Y20tPnRjbV9oYW5kbGUgfD0gVENfSF9NSU4o
Y2wpOwo+IC0gICAgICAgdGNtLT50Y21faW5mbyA9IGRldl9xdWV1ZS0+cWRpc2Nfc2xlZXBpbmct
PmhhbmRsZTsKPiArICAgICAgIHRjbS0+dGNtX2luZm8gPSBjaGlsZC0+aGFuZGxlOwo+Cj4gICAg
ICAgICByZXR1cm4gMDsKPiAgfQo+IEBAIC0yNDY2LDggKzI0NjYsNyBAQCBzdGF0aWMgaW50IHRh
cHJpb19kdW1wX2NsYXNzX3N0YXRzKHN0cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBsb25nIGNs
LAo+ICAgICAgICAgX19yZWxlYXNlcyhkLT5sb2NrKQo+ICAgICAgICAgX19hY3F1aXJlcyhkLT5s
b2NrKQo+ICB7Cj4gLSAgICAgICBzdHJ1Y3QgbmV0ZGV2X3F1ZXVlICpkZXZfcXVldWUgPSB0YXBy
aW9fcXVldWVfZ2V0KHNjaCwgY2wpOwo+IC0gICAgICAgc3RydWN0IFFkaXNjICpjaGlsZCA9IGRl
dl9xdWV1ZS0+cWRpc2Nfc2xlZXBpbmc7Cj4gKyAgICAgICBzdHJ1Y3QgUWRpc2MgKmNoaWxkID0g
dGFwcmlvX2xlYWYoc2NoLCBjbCk7Cj4gICAgICAgICBzdHJ1Y3QgdGNfdGFwcmlvX3FvcHRfb2Zm
bG9hZCBvZmZsb2FkID0gewo+ICAgICAgICAgICAgICAgICAuY21kID0gVEFQUklPX0NNRF9UQ19T
VEFUUywKPiAgICAgICAgICAgICAgICAgLnRjX3N0YXRzID0gewo+IC0tCj4gMi4zNC4xCj4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
