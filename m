Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061752D3FE9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 11:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87AD487813;
	Wed,  9 Dec 2020 10:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9uvW0Sw079r; Wed,  9 Dec 2020 10:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79B7B8784B;
	Wed,  9 Dec 2020 10:32:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FBE21BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 10:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11285273D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 10:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a+Fnr01B0Jah for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 10:32:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CD01273E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 10:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607509927;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=La+7aZBP/zikpn17cs0eTnjJeU3L2OtLFnAzQbOFm28=;
 b=TyZlBI4GVpSzFR/MZ8HZ5MdbcK0y12009OID2l4wjX/zGZgLP6RhPMjuv1wUGObNFb3iHW
 PK3rS2tCb1BW/llZnRY32vZEqHLoaAF0Mfj48Ot7JSaslGzocvOCMHlvxpj7RfbJkxNgDY
 aF208K9GGar28iS0xYm3e0EFdudaFRM=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-_ZDqSg0uPnaU205CgNHumQ-1; Wed, 09 Dec 2020 05:32:03 -0500
X-MC-Unique: _ZDqSg0uPnaU205CgNHumQ-1
Received: by mail-wr1-f71.google.com with SMTP id j5so489854wro.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Dec 2020 02:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=cOGqBzHVVKEnqwg2bfVwU3p+w6oB2N4Q9f8QqmS+U5M=;
 b=onfBKhYjS5pzRMAXMJrLZArsGioEUJF0zybCVs0/DonJLgYBW7VXUn57KnPooJccQS
 4/CYWWOnnKeH2JE5qsye0hEEA3Nm+xrXJQ2Do9qmFIbJx6e1yUmRocoduZqpjZQ7A5ny
 dV9tW6p0PUi7XbgvmjXQ3GhmhT1VEyfmV+NnkI8PJNshIalYt3cK9fcVkHl6QsESzMXh
 i59hQARwjtsaTDDfVG+IvVU4Ec0LVVlhRB9hFMPidQENNh5TkqwJ5aN08n7+RXek8T7o
 N320oX7QFalTrlTrKmYYhHF45V0rQjinZEDVj6e3WVZ9tO/ab9u1XvjLt4tKflAMJ+qF
 +yyQ==
X-Gm-Message-State: AOAM530nl4QKAontvXfbeWjGwesn1eB1Ir5YwH5V8X5BoDCNawKUyXyg
 xVaRD6H74+qzD1AN6fGEBVdQIw+CbZkGpYToE3/6VAbSO+f5pnwAmaTjUVuyO/UA+23Jm1Ts+q2
 Fl7qbf2ETaZmdnabruzog7Uxiu/cdoA==
X-Received: by 2002:a1c:3c09:: with SMTP id j9mr2031899wma.180.1607509922399; 
 Wed, 09 Dec 2020 02:32:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyBiILwRPyHO+wjb6cs5eMg3G3ifBjCTwNJrVuvV0WYJad0N/7Pn/n3Xy9E+xVdIVFcx5tcYg==
X-Received: by 2002:a1c:3c09:: with SMTP id j9mr2031846wma.180.1607509922100; 
 Wed, 09 Dec 2020 02:32:02 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id h204sm2493607wme.17.2020.12.09.02.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 02:32:01 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A39B8180003; Wed,  9 Dec 2020 11:26:19 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: John Fastabend <john.fastabend@gmail.com>, Jesper Dangaard Brouer
 <jbrouer@redhat.com>, David Ahern <dsahern@gmail.com>
In-Reply-To: <5fd065a1479c4_50ce208b1@john-XPS-13-9370.notmuch>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <431a53bd-25d7-8535-86e1-aa15bf94e6c3@gmail.com>
 <20201208092803.05b27db3@carbon> <87lfe8ik5c.fsf@toke.dk>
 <5fd065a1479c4_50ce208b1@john-XPS-13-9370.notmuch>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 09 Dec 2020 11:26:19 +0100
Message-ID: <87ft4fp96c.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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

Sm9obiBGYXN0YWJlbmQgPGpvaG4uZmFzdGFiZW5kQGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IEplc3BlciBEYW5nYWFyZCBCcm91ZXIgPGpi
cm91ZXJAcmVkaGF0LmNvbT4gd3JpdGVzOgo+PiAKPj4gPiBPbiBNb24sIDcgRGVjIDIwMjAgMTg6
MDE6MDAgLTA3MDAKPj4gPiBEYXZpZCBBaGVybiA8ZHNhaGVybkBnbWFpbC5jb20+IHdyb3RlOgo+
PiA+Cj4+ID4+IE9uIDEyLzcvMjAgMTo1MiBQTSwgSm9obiBGYXN0YWJlbmQgd3JvdGU6Cj4+ID4+
ID4+Cj4+ID4+ID4+IEkgdGhpbmsgd2UgbmVlZCB0byBrZWVwIFhEUF9UWCBhY3Rpb24gc2VwYXJh
dGUsIGJlY2F1c2UgSSB0aGluayB0aGF0Cj4+ID4+ID4+IHRoZXJlIGFyZSB1c2UtY2FzZXMgd2hl
cmUgdGhlIHdlIHdhbnQgdG8gZGlzYWJsZSBYRFBfVFggZHVlIHRvIGVuZC11c2VyCj4+ID4+ID4+
IHBvbGljeSBvciBoYXJkd2FyZSBsaW1pdGF0aW9ucy4gIAo+PiA+PiA+IAo+PiA+PiA+IEhvdyBh
Ym91dCB3ZSBkaXNjb3ZlciB0aGlzIGF0IGxvYWQgdGltZSB0aG91Z2guIAo+PiA+Cj4+ID4gTml0
cGljayBhdCBYRFAgImF0dGFjaCIgdGltZS4gVGhlIGdlbmVyYWwgZGlzY29ubmVjdCBiZXR3ZWVu
IEJQRiBhbmQKPj4gPiBYRFAgaXMgdGhhdCBCUEYgY2FuIHZlcmlmeSBhdCAibG9hZCIgdGltZSAo
YXMga2VybmVsIGtub3dzIHdoYXQgaXQKPj4gPiBzdXBwb3J0KSB3aGlsZSBYRFAgY2FuIGhhdmUg
ZGlmZmVyZW50IHN1cHBvcnQvZmVhdHVyZXMgcGVyIGRyaXZlciwgYW5kCj4+ID4gY2Fubm90IGRv
IHRoaXMgdW50aWwgYXR0YWNobWVudCB0aW1lLiAoU2VlIGxhdGVyIGlzc3VlIHdpdGggdGFpbCBj
YWxscykuCj4+ID4gKEFsbCBvdGhlciBCUEYtaG9va3MgZG9uJ3QgaGF2ZSB0aGlzIGlzc3VlKQo+
PiA+Cj4+ID4+ID4gTWVhbmluZyBpZiB0aGUgcHJvZ3JhbQo+PiA+PiA+IGRvZXNuJ3QgdXNlIFhE
UF9UWCB0aGVuIHRoZSBoYXJkd2FyZSBjYW4gc2tpcCByZXNvdXJjZSBhbGxvY2F0aW9ucyBmb3IK
Pj4gPj4gPiBpdC4gSSB0aGluayB3ZSBjb3VsZCBoYXZlIHZlcmlmaWVyIG9yIGV4dHJhIHBhc3Mg
ZGlzY292ZXIgdGhlIHVzZSBvZgo+PiA+PiA+IFhEUF9UWCBhbmQgdGhlbiBwYXNzIGEgYml0IGRv
d24gdG8gZHJpdmVyIHRvIGVuYWJsZS9kaXNhYmxlIFRYIGNhcHMuCj4+ID4+ID4gICAKPj4gPj4g
Cj4+ID4+IFRoaXMgd2FzIGRpc2N1c3NlZCBpbiB0aGUgY29udGV4dCBvZiB2aXJ0aW9fbmV0IHNv
bWUgbW9udGhzIGJhY2sgLSBpdCBpcwo+PiA+PiBoYXJkIHRvIGltcG9zc2libGUgdG8ga25vdyBh
IHByb2dyYW0gd2lsbCBub3QgcmV0dXJuIFhEUF9UWCAoZS5nLiwgdmFsdWUKPj4gPj4gY29tZXMg
ZnJvbSBhIG1hcCkuCj4+ID4KPj4gPiBJdCBpcyBoYXJkLCBhbmQgc29tZXRpbWVzIG5vdCBwb3Nz
aWJsZS4gIEZvciBtYXBzIHRoZSB3b3JrYXJvdW5kIGlzCj4+ID4gdGhhdCBCUEYtcHJvZ3JhbW1l
ciBhZGRzIGEgYm91bmQgY2hlY2sgb24gdmFsdWVzIGZyb20gdGhlIG1hcC4gSWYgbm90Cj4+ID4g
ZG9pbmcgdGhhdCB0aGUgdmVyaWZpZXIgaGF2ZSB0byBhc3N1bWUgYWxsIHBvc3NpYmxlIHJldHVy
biBjb2RlcyBhcmUKPj4gPiB1c2VkIGJ5IEJQRi1wcm9nLgo+PiA+Cj4+ID4gVGhlIHJlYWwgbmVt
ZXNpcyBpcyBwcm9ncmFtIHRhaWwgY2FsbHMsIHRoYXQgY2FuIGJlIGFkZGVkIGR5bmFtaWNhbGx5
Cj4+ID4gYWZ0ZXIgdGhlIFhEUCBwcm9ncmFtIGlzIGF0dGFjaGVkLiAgSXQgaXMgYXQgYXR0YWNo
bWVudCB0aW1lIHRoYXQKPj4gPiBjaGFuZ2luZyB0aGUgTklDIHJlc291cmNlcyBpcyBwb3NzaWJs
ZS4gIFNvLCBmb3IgcHJvZ3JhbSB0YWlsIGNhbGxzIHRoZQo+PiA+IHZlcmlmaWVyIGhhdmUgdG8g
YXNzdW1lIGFsbCBwb3NzaWJsZSByZXR1cm4gY29kZXMgYXJlIHVzZWQgYnkgQlBGLXByb2cuCj4+
IAo+PiBXZSBhY3R1YWxseSBoYWQgc29tZW9uZSB3b3JraW5nIG9uIGEgc2NoZW1lIGZvciBob3cg
dG8gZXhwcmVzcyB0aGlzIGZvcgo+PiBwcm9ncmFtcyBzb21lIG1vbnRocyBhZ28sIGJ1dCB1bmZv
cnR1bmF0ZWx5IHRoYXQgc3RhbGxlZCBvdXQgKEplc3Blcgo+PiBhbHJlYWR5IGtub3dzIHRoaXMs
IGJ1dCBGWUkgdG8gdGhlIHJlc3Qgb2YgeW91KS4gSW4gYW55IGNhc2UsIEkgdmlldwo+PiB0aGlz
IGFzIGEgIm5leHQgc3RlcCIuIEp1c3QgZXhwb3NpbmcgdGhlIGZlYXR1cmUgYml0cyB0byB1c2Vy
c3BhY2Ugd2lsbAo+PiBoZWxwIHVzZXJzIHRvZGF5LCBhbmQgYXMgYSBzaWRlIGVmZmVjdCwgdGhp
cyBhbHNvIG1ha2VzIGRyaXZlcnMgZGVjbGFyZQo+PiB3aGF0IHRoZXkgc3VwcG9ydCwgd2hpY2gg
d2UgY2FuIHRoZW4gaW5jb3Jwb3JhdGUgaW50byB0aGUgY29yZSBjb2RlIHRvLAo+PiBlLmcuLCBy
ZWplY3QgYXR0YWNobWVudCBvZiBwcm9ncmFtcyB0aGF0IHdvbid0IHdvcmsgYW55d2F5LiBCdXQg
bGV0J3MKPj4gZG8gdGhpcyBpbiBpbmNyZW1lbnRzIGFuZCBub3QgbWFrZSB0aGUgcGVyZmVjdCB0
aGUgZW5lbXkgb2YgdGhlIGdvb2QKPj4gaGVyZS4KPj4gCj4+ID4gQlBGIG5vdyBoYXZlIGZ1bmN0
aW9uIGNhbGxzIGFuZCBmdW5jdGlvbiByZXBsYWNlIHJpZ2h0KD8pICBIb3cgZG9lcwo+PiA+IHRo
aXMgYWZmZWN0IHRoaXMgZGV0ZWN0aW9uIG9mIHBvc3NpYmxlIHJldHVybiBjb2Rlcz8KPj4gCj4+
IEl0IGRvZXMgaGF2ZSB0aGUgc2FtZSBpc3N1ZSBhcyB0YWlsIGNhbGxzLCBpbiB0aGF0IHRoZSBy
ZXR1cm4gY29kZSBvZgo+PiB0aGUgZnVuY3Rpb24gYmVpbmcgcmVwbGFjZWQgY2FuIG9idmlvdXNs
eSBjaGFuZ2UuIEhvd2V2ZXIsIHRoZSB2ZXJpZmllcgo+PiBrbm93cyB0aGUgdGFyZ2V0IG9mIGEg
cmVwbGFjZSwgc28gaXQgY2FuIHByb3BhZ2F0ZSBhbnkgY29uc3RyYWludHMgcHV0Cj4+IHVwb24g
dGhlIGNhbGxlciBpZiB3ZSBpbXBsZW1lbnQgaXQgdGhhdCB3YXkuCj4KPiBPSyBJJ20gY29udmlu
Y2VkIGl0cyBub3QgcG9zc2libGUgdG8gdGVsbCBhdCBhdHRhY2ggdGltZSBpZiBhIHByb2dyYW0K
PiB3aWxsIHVzZSBYRFBfVFggb3Igbm90IGluIGdlbmVyYWwuIEFuZCBpbiBmYWN0IGZvciBtb3N0
IHJlYWwgcHJvZ3JhbXMgaXQKPiBsaWtlbHkgd2lsbCBub3QgYmUga25vd2FibGUuIEF0IGxlYXN0
IG1vc3QgcHJvZ3JhbXMgSSBsb29rIGF0IHRoZXNlIGRheXMKPiB1c2UgZWl0aGVyIHRhaWwgY2Fs
bHMgb3IgZnVuY3Rpb24gY2FsbHMgc28gc2VlbXMgbGlrZSBhIGRlYWQgZW5kLgo+Cj4gQWxzbyBh
Ym92ZSBzb21ld2hlcmUgaXQgd2FzIHBvaW50ZWQgb3V0IHRoYXQgWERQX1JFRElSRUNUIHdvdWxk
IHdhbnQKPiB0aGUgcXVldWVzIGFuZCBpdCBzZWVtcyBldmVuIG1vcmUgY2hhbGxlbmdpbmcgdG8g
c29ydCB0aGF0IG91dC4KClllYWguIERvZXNuJ3QgbWVhbiB0aGF0IGFsbCBob3BlIGlzIGxvc3Qg
Zm9yICJyZWplY3Qgc3R1ZmYgdGhhdCBkb2Vzbid0CndvcmsiLiBXZSBjb3VsZCBlaXRoZXIgZG8g
cGVzc2ltaXN0aWMgcmV0dXJuIGNvZGUgZGV0ZWN0aW9uIChpZiB3ZSBkb24ndAprbm93IGZvciBz
dXJlIGFzc3VtZSBhbGwgY29kZXMgYXJlIHVzZWQpLCBvciB3ZSBjb3VsZCBhZGQgbWV0YWRhdGEg
d2hlcmUKdGhlIHByb2dyYW0gZGVjbGFyZXMgd2hhdCBpdCB3YW50cyB0byBkby4uLgoKLVRva2UK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
