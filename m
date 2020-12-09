Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C632D3B0C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 06:50:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6374186937;
	Wed,  9 Dec 2020 05:50:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4jGL5pdU3Wo2; Wed,  9 Dec 2020 05:50:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B69786A70;
	Wed,  9 Dec 2020 05:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BCEC1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 05:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 169BD8688A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 05:50:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVxTtsSNDdSa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 05:50:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A8DD85F46
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 05:50:34 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id s2so596675oij.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Dec 2020 21:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=ND2tD+7Jx2gQmpOSM894CsoiaxDjDETPdHa/hyM90oc=;
 b=NrK8G6s9BErmDQfLleIY0KXBEcOlkm+fdiECSvO3k8YuABReFpLp1QBBAXfUhs6y1F
 VixCoiS0GRT6I9XOplAWaRNDkWnCHBaXLjewUryw46E2AhG/Xs+8u/z9uL/8nPmaCdoE
 s4z7uffhXCMefnxPKJwG7LTZvdaFMEXSCtE7HqtOYIe5yZXBBQYzB0ZAdlu3/XgJI11b
 0vUvYmu3h65zApqbhUM4DF+JNvKUXVlnb06qeYm8bWfVTromacXm7ZRqp1qRCZ2XJOsV
 s8djvtpgGhW1of1m8FAlcXbtCVZqrZXl15kyMcbCau8qTxjQHQ3dLzf/Il361WV0SYwG
 sVQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=ND2tD+7Jx2gQmpOSM894CsoiaxDjDETPdHa/hyM90oc=;
 b=JE5GPW/SikKexb6fzbPTo9qdc8TPmjL1qxZ/6EsduIBjAkRYpeZC11+/tfofvfjld5
 VNVGRa+RH+oc/gpajgS2NOR95N2ikxY9k/SF6g0XY9OZ2lhjLFc81wPXf5YQzY4/Uq+A
 s1NLn/tP6DyPLSeuY4VycR+QfAMspaXADyqK6N1E2Uxks+UW+tkhtrOxiHz+vrtyZmV6
 xEwbZ1Y23Cn7zJahM6Ute8KS10i5Js72Jhs5MDmhKy1pvm6xLvIhsN+ghiiQQoSzoIoS
 1pFkxZG5cWYVCk8UJrnYslw31Jx5nH2+fAkBTOstX4RSYwSMNGbtkd2iCS4WeykgFyd+
 GLFQ==
X-Gm-Message-State: AOAM530NN2njSwxM5gbm97thPmSuZKkNNIyB6oTDl+jcl8YhjRYaAbD+
 KuiarYTxNtew5nfFdZd0pkU=
X-Google-Smtp-Source: ABdhPJz0SNSBWxF84Jfr/FlBBmsQOaECSAgOcZFYAgfaxZFNTFmQHh1bIgPNC3bMonrMF32/bhOV/g==
X-Received: by 2002:aca:cc01:: with SMTP id c1mr714149oig.18.1607493033489;
 Tue, 08 Dec 2020 21:50:33 -0800 (PST)
Received: from localhost ([184.21.204.5])
 by smtp.gmail.com with ESMTPSA id 60sm182040otn.35.2020.12.08.21.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 21:50:32 -0800 (PST)
Date: Tue, 08 Dec 2020 21:50:25 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
 Jesper Dangaard Brouer <jbrouer@redhat.com>, 
 David Ahern <dsahern@gmail.com>
Message-ID: <5fd065a1479c4_50ce208b1@john-XPS-13-9370.notmuch>
In-Reply-To: <87lfe8ik5c.fsf@toke.dk>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <431a53bd-25d7-8535-86e1-aa15bf94e6c3@gmail.com>
 <20201208092803.05b27db3@carbon> <87lfe8ik5c.fsf@toke.dk>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IEplc3BlciBEYW5nYWFyZCBCcm91ZXIg
PGpicm91ZXJAcmVkaGF0LmNvbT4gd3JpdGVzOgo+IAo+ID4gT24gTW9uLCA3IERlYyAyMDIwIDE4
OjAxOjAwIC0wNzAwCj4gPiBEYXZpZCBBaGVybiA8ZHNhaGVybkBnbWFpbC5jb20+IHdyb3RlOgo+
ID4KPiA+PiBPbiAxMi83LzIwIDE6NTIgUE0sIEpvaG4gRmFzdGFiZW5kIHdyb3RlOgo+ID4+ID4+
Cj4gPj4gPj4gSSB0aGluayB3ZSBuZWVkIHRvIGtlZXAgWERQX1RYIGFjdGlvbiBzZXBhcmF0ZSwg
YmVjYXVzZSBJIHRoaW5rIHRoYXQKPiA+PiA+PiB0aGVyZSBhcmUgdXNlLWNhc2VzIHdoZXJlIHRo
ZSB3ZSB3YW50IHRvIGRpc2FibGUgWERQX1RYIGR1ZSB0byBlbmQtdXNlcgo+ID4+ID4+IHBvbGlj
eSBvciBoYXJkd2FyZSBsaW1pdGF0aW9ucy4gIAo+ID4+ID4gCj4gPj4gPiBIb3cgYWJvdXQgd2Ug
ZGlzY292ZXIgdGhpcyBhdCBsb2FkIHRpbWUgdGhvdWdoLiAKPiA+Cj4gPiBOaXRwaWNrIGF0IFhE
UCAiYXR0YWNoIiB0aW1lLiBUaGUgZ2VuZXJhbCBkaXNjb25uZWN0IGJldHdlZW4gQlBGIGFuZAo+
ID4gWERQIGlzIHRoYXQgQlBGIGNhbiB2ZXJpZnkgYXQgImxvYWQiIHRpbWUgKGFzIGtlcm5lbCBr
bm93cyB3aGF0IGl0Cj4gPiBzdXBwb3J0KSB3aGlsZSBYRFAgY2FuIGhhdmUgZGlmZmVyZW50IHN1
cHBvcnQvZmVhdHVyZXMgcGVyIGRyaXZlciwgYW5kCj4gPiBjYW5ub3QgZG8gdGhpcyB1bnRpbCBh
dHRhY2htZW50IHRpbWUuIChTZWUgbGF0ZXIgaXNzdWUgd2l0aCB0YWlsIGNhbGxzKS4KPiA+IChB
bGwgb3RoZXIgQlBGLWhvb2tzIGRvbid0IGhhdmUgdGhpcyBpc3N1ZSkKPiA+Cj4gPj4gPiBNZWFu
aW5nIGlmIHRoZSBwcm9ncmFtCj4gPj4gPiBkb2Vzbid0IHVzZSBYRFBfVFggdGhlbiB0aGUgaGFy
ZHdhcmUgY2FuIHNraXAgcmVzb3VyY2UgYWxsb2NhdGlvbnMgZm9yCj4gPj4gPiBpdC4gSSB0aGlu
ayB3ZSBjb3VsZCBoYXZlIHZlcmlmaWVyIG9yIGV4dHJhIHBhc3MgZGlzY292ZXIgdGhlIHVzZSBv
Zgo+ID4+ID4gWERQX1RYIGFuZCB0aGVuIHBhc3MgYSBiaXQgZG93biB0byBkcml2ZXIgdG8gZW5h
YmxlL2Rpc2FibGUgVFggY2Fwcy4KPiA+PiA+ICAgCj4gPj4gCj4gPj4gVGhpcyB3YXMgZGlzY3Vz
c2VkIGluIHRoZSBjb250ZXh0IG9mIHZpcnRpb19uZXQgc29tZSBtb250aHMgYmFjayAtIGl0IGlz
Cj4gPj4gaGFyZCB0byBpbXBvc3NpYmxlIHRvIGtub3cgYSBwcm9ncmFtIHdpbGwgbm90IHJldHVy
biBYRFBfVFggKGUuZy4sIHZhbHVlCj4gPj4gY29tZXMgZnJvbSBhIG1hcCkuCj4gPgo+ID4gSXQg
aXMgaGFyZCwgYW5kIHNvbWV0aW1lcyBub3QgcG9zc2libGUuICBGb3IgbWFwcyB0aGUgd29ya2Fy
b3VuZCBpcwo+ID4gdGhhdCBCUEYtcHJvZ3JhbW1lciBhZGRzIGEgYm91bmQgY2hlY2sgb24gdmFs
dWVzIGZyb20gdGhlIG1hcC4gSWYgbm90Cj4gPiBkb2luZyB0aGF0IHRoZSB2ZXJpZmllciBoYXZl
IHRvIGFzc3VtZSBhbGwgcG9zc2libGUgcmV0dXJuIGNvZGVzIGFyZQo+ID4gdXNlZCBieSBCUEYt
cHJvZy4KPiA+Cj4gPiBUaGUgcmVhbCBuZW1lc2lzIGlzIHByb2dyYW0gdGFpbCBjYWxscywgdGhh
dCBjYW4gYmUgYWRkZWQgZHluYW1pY2FsbHkKPiA+IGFmdGVyIHRoZSBYRFAgcHJvZ3JhbSBpcyBh
dHRhY2hlZC4gIEl0IGlzIGF0IGF0dGFjaG1lbnQgdGltZSB0aGF0Cj4gPiBjaGFuZ2luZyB0aGUg
TklDIHJlc291cmNlcyBpcyBwb3NzaWJsZS4gIFNvLCBmb3IgcHJvZ3JhbSB0YWlsIGNhbGxzIHRo
ZQo+ID4gdmVyaWZpZXIgaGF2ZSB0byBhc3N1bWUgYWxsIHBvc3NpYmxlIHJldHVybiBjb2RlcyBh
cmUgdXNlZCBieSBCUEYtcHJvZy4KPiAKPiBXZSBhY3R1YWxseSBoYWQgc29tZW9uZSB3b3JraW5n
IG9uIGEgc2NoZW1lIGZvciBob3cgdG8gZXhwcmVzcyB0aGlzIGZvcgo+IHByb2dyYW1zIHNvbWUg
bW9udGhzIGFnbywgYnV0IHVuZm9ydHVuYXRlbHkgdGhhdCBzdGFsbGVkIG91dCAoSmVzcGVyCj4g
YWxyZWFkeSBrbm93cyB0aGlzLCBidXQgRllJIHRvIHRoZSByZXN0IG9mIHlvdSkuIEluIGFueSBj
YXNlLCBJIHZpZXcKPiB0aGlzIGFzIGEgIm5leHQgc3RlcCIuIEp1c3QgZXhwb3NpbmcgdGhlIGZl
YXR1cmUgYml0cyB0byB1c2Vyc3BhY2Ugd2lsbAo+IGhlbHAgdXNlcnMgdG9kYXksIGFuZCBhcyBh
IHNpZGUgZWZmZWN0LCB0aGlzIGFsc28gbWFrZXMgZHJpdmVycyBkZWNsYXJlCj4gd2hhdCB0aGV5
IHN1cHBvcnQsIHdoaWNoIHdlIGNhbiB0aGVuIGluY29ycG9yYXRlIGludG8gdGhlIGNvcmUgY29k
ZSB0bywKPiBlLmcuLCByZWplY3QgYXR0YWNobWVudCBvZiBwcm9ncmFtcyB0aGF0IHdvbid0IHdv
cmsgYW55d2F5LiBCdXQgbGV0J3MKPiBkbyB0aGlzIGluIGluY3JlbWVudHMgYW5kIG5vdCBtYWtl
IHRoZSBwZXJmZWN0IHRoZSBlbmVteSBvZiB0aGUgZ29vZAo+IGhlcmUuCj4gCj4gPiBCUEYgbm93
IGhhdmUgZnVuY3Rpb24gY2FsbHMgYW5kIGZ1bmN0aW9uIHJlcGxhY2UgcmlnaHQoPykgIEhvdyBk
b2VzCj4gPiB0aGlzIGFmZmVjdCB0aGlzIGRldGVjdGlvbiBvZiBwb3NzaWJsZSByZXR1cm4gY29k
ZXM/Cj4gCj4gSXQgZG9lcyBoYXZlIHRoZSBzYW1lIGlzc3VlIGFzIHRhaWwgY2FsbHMsIGluIHRo
YXQgdGhlIHJldHVybiBjb2RlIG9mCj4gdGhlIGZ1bmN0aW9uIGJlaW5nIHJlcGxhY2VkIGNhbiBv
YnZpb3VzbHkgY2hhbmdlLiBIb3dldmVyLCB0aGUgdmVyaWZpZXIKPiBrbm93cyB0aGUgdGFyZ2V0
IG9mIGEgcmVwbGFjZSwgc28gaXQgY2FuIHByb3BhZ2F0ZSBhbnkgY29uc3RyYWludHMgcHV0Cj4g
dXBvbiB0aGUgY2FsbGVyIGlmIHdlIGltcGxlbWVudCBpdCB0aGF0IHdheS4KCk9LIEknbSBjb252
aW5jZWQgaXRzIG5vdCBwb3NzaWJsZSB0byB0ZWxsIGF0IGF0dGFjaCB0aW1lIGlmIGEgcHJvZ3Jh
bQp3aWxsIHVzZSBYRFBfVFggb3Igbm90IGluIGdlbmVyYWwuIEFuZCBpbiBmYWN0IGZvciBtb3N0
IHJlYWwgcHJvZ3JhbXMgaXQKbGlrZWx5IHdpbGwgbm90IGJlIGtub3dhYmxlLiBBdCBsZWFzdCBt
b3N0IHByb2dyYW1zIEkgbG9vayBhdCB0aGVzZSBkYXlzCnVzZSBlaXRoZXIgdGFpbCBjYWxscyBv
ciBmdW5jdGlvbiBjYWxscyBzbyBzZWVtcyBsaWtlIGEgZGVhZCBlbmQuCgpBbHNvIGFib3ZlIHNv
bWV3aGVyZSBpdCB3YXMgcG9pbnRlZCBvdXQgdGhhdCBYRFBfUkVESVJFQ1Qgd291bGQgd2FudAp0
aGUgcXVldWVzIGFuZCBpdCBzZWVtcyBldmVuIG1vcmUgY2hhbGxlbmdpbmcgdG8gc29ydCB0aGF0
IG91dC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
