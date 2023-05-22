Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F0570C5A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 21:05:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3642C41C43;
	Mon, 22 May 2023 19:04:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3642C41C43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684782299;
	bh=RsUCjZ9l/0P7Xsrv7hnXDrjHXdzDJpKYl6hDa79e+6A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L929jCNncF8TDZBZAGT3EQLP6J/urL3KlFQ3rbQSNqbqeYsxm3BQw6f+8/ISkNftE
	 qH/SaKX/wFf7/S9GcifXygBc8BB8SKHTHZUuby1HbfrP57YUp6sgS9NPSMB5yQV9ne
	 PO56lSDN5kE9MF/nwrO1rJbXzosGttdA+4Vv+JECk0lRwj3QH2Tv5/Wz/kI0YGN8/J
	 HdCmxbBOo9JIOx9VHLwvlurT8oTVVmBUboP4JkB7bHMbwFpLc8hJHEYoCDD2dFDOLd
	 UUcwXVBfY7Z4gq9+ZKdsGYjvWPzeII8H5Xn+eSH6Ahm5lNE3L0d4e+HpFbzorfjile
	 dFiqJijHKWPKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ChXpDxrNUM0W; Mon, 22 May 2023 19:04:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 94D9C41C3B;
	Mon, 22 May 2023 19:04:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94D9C41C3B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 998251BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 19:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EC88822F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 19:04:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EC88822F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cw2pCi9UshZM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 19:04:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06CDC82F99
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 06CDC82F99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 19:04:50 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-404-P7ufCRHfMSeSpZBdXJS7HQ-1; Mon, 22 May 2023 15:04:46 -0400
X-MC-Unique: P7ufCRHfMSeSpZBdXJS7HQ-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-3f60481749eso7523955e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 12:04:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684782285; x=1687374285;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6jZ28GuDynsihTAd/3VuLVOzUIH4ZwLQEZqNL+84MuY=;
 b=NMDze2FbB8l2cpyDLsN8bbFatdY6y4vgKe4vQBl7GVSaI/xG1ldtr6oosPB9Pg+xES
 Nkqke3vQMV3TcbpWUkL6XlT4tZiPyHJQH8jKT7ZskgKJx2g16v8LBvEazVBXibBOf2Vv
 L/CHlo1V5djTP6V3eJj0ycO3YRru7gtshsWOpktth9ZNI9p1DK/DdqojYdhyHAaTqPV4
 n2l3+9uxfT3/TOEokToMEbcqrpI8vN460zI0ODXboprBFb5aQy4GZ+4WpK29bjISvvdk
 yjRYjXRbC07Kxb/lmmfHBbYUL+vrz32q1onSRBuSc1mxr7Yd2WHAfgLNo0Nsn5ExsbhX
 RcYA==
X-Gm-Message-State: AC+VfDwM3YMqPd/r07quGRY9qwRURUh296XXotLF377Aes+pJSz780u5
 TqcfwznxMLVmNjwINB2rnKtjjq+SJZkZXaU/IjBaxghgLwVww29lQ78GElUUxPtYaYaH1LHlgZt
 BFDMG6SzUfIfjkgnIPm62grDlNEoH0g==
X-Received: by 2002:a1c:790b:0:b0:3f6:1ac:5feb with SMTP id
 l11-20020a1c790b000000b003f601ac5febmr4329589wme.16.1684782285369; 
 Mon, 22 May 2023 12:04:45 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7QbSewB6BsJ5gKLZmpBeVzToPF+5tO7N7Pm53qG70bIifqfT4ySC3qTsizV5jxSdSGcFqtiQ==
X-Received: by 2002:a1c:790b:0:b0:3f6:1ac:5feb with SMTP id
 l11-20020a1c790b000000b003f601ac5febmr4329567wme.16.1684782284967; 
 Mon, 22 May 2023 12:04:44 -0700 (PDT)
Received: from redhat.com ([2.52.20.68]) by smtp.gmail.com with ESMTPSA id
 z10-20020a05600c220a00b003f50e29bce3sm9169360wml.48.2023.05.22.12.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 May 2023 12:04:44 -0700 (PDT)
Date: Mon, 22 May 2023 15:04:39 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Willem de Bruijn <willemb@google.com>
Message-ID: <20230522144241-mutt-send-email-mst@kernel.org>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <7969d09e-2b77-c1a7-0e38-f10d61c83638@amd.com>
 <CA+FuTSfUvSDFZ95d8urmEcRLMU6pnb_t-7OwV-dcJPU=mAEnkg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+FuTSfUvSDFZ95d8urmEcRLMU6pnb_t-7OwV-dcJPU=mAEnkg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684782289;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6jZ28GuDynsihTAd/3VuLVOzUIH4ZwLQEZqNL+84MuY=;
 b=Ya/RUfj61abBAYE6hLPagqAf8K/b4m0lM9SpUW7bOFl1QQLrBjpZcJdqDBOFInE1Q5gjAv
 xkKCvxOXTnKZaL2xxigQ1racXvi8H02h2eLGbvfppP4fjwgCldvtrCQYNdyE3ldvprcvkI
 AqRcK1L59iiClJeueCrXKcNK6a5tNKI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Ya/RUfj6
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: "Orr, Michael" <michael.orr@intel.com>, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBNYXkgMTksIDIwMjMgYXQgMDE6MTI6NDNQTSAtMDQwMCwgV2lsbGVtIGRlIEJydWlq
biB3cm90ZToKPiBPbiBGcmksIE1heSAxOSwgMjAyMyBhdCAxMjoxN+KAr1BNIFNoYW5ub24gTmVs
c29uIDxzaGFubm9uLm5lbHNvbkBhbWQuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiA1LzE4LzIzIDQ6
MjYgUE0sIFNhbXVkcmFsYSwgU3JpZGhhciB3cm90ZToKPiA+ID4gT24gNS8xOC8yMDIzIDEwOjEw
IEFNLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gPiA+PiBPbiBUaHUsIE1heSAxOCwgMjAy
MyBhdCAwOToxOTozMUFNIC0wNzAwLCBTYW11ZHJhbGEsIFNyaWRoYXIgd3JvdGU6Cj4gPiA+Pj4K
PiA+ID4+Pgo+ID4gPj4+IE9uIDUvMTEvMjAyMyAxMTozNCBQTSwgTWljaGFlbCBTLiBUc2lya2lu
IHdyb3RlOgo+ID4gPj4+PiBPbiBNb24sIE1heSAwOCwgMjAyMyBhdCAxMjo0MzoxMVBNIC0wNzAw
LCBFbWlsIFRhbnRpbG92IHdyb3RlOgo+ID4gPj4+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgaW50cm9k
dWNlcyB0aGUgSW50ZWwgSW5mcmFzdHJ1Y3R1cmUgRGF0YSBQYXRoCj4gPiA+Pj4+PiBGdW5jdGlv
bgo+ID4gPj4+Pj4gKElEUEYpIGRyaXZlci4gSXQgaXMgdXNlZCBmb3IgYm90aCBwaHlzaWNhbCBh
bmQgdmlydHVhbCBmdW5jdGlvbnMuCj4gPiA+Pj4+PiBFeGNlcHQKPiA+ID4+Pj4+IGZvciBzb21l
IG9mIHRoZSBkZXZpY2Ugb3BlcmF0aW9ucyB0aGUgcmVzdCBvZiB0aGUgZnVuY3Rpb25hbGl0eSBp
cyB0aGUKPiA+ID4+Pj4+IHNhbWUgZm9yIGJvdGggUEYgYW5kIFZGLiBJRFBGIHVzZXMgdmlydGNo
bmwgdmVyc2lvbjIgb3Bjb2RlcyBhbmQKPiA+ID4+Pj4+IHN0cnVjdHVyZXMgZGVmaW5lZCBpbiB0
aGUgdmlydGNobmwyIGhlYWRlciBmaWxlIHdoaWNoIGhlbHBzIHRoZSBkcml2ZXIKPiA+ID4+Pj4+
IHRvIGxlYXJuIHRoZSBjYXBhYmlsaXRpZXMgYW5kIHJlZ2lzdGVyIG9mZnNldHMgZnJvbSB0aGUg
ZGV2aWNlCj4gPiA+Pj4+PiBDb250cm9sIFBsYW5lIChDUCkgaW5zdGVhZCBvZiBhc3N1bWluZyB0
aGUgZGVmYXVsdCB2YWx1ZXMuCj4gPiA+Pj4+Cj4gPiA+Pj4+IFNvLCBpcyB0aGlzIGZvciBtZXJn
ZSBpbiB0aGUgbmV4dCBjeWNsZT8gIFNob3VsZCB0aGlzIGJlIGFuIFJGQyByYXRoZXI/Cj4gPiA+
Pj4+IEl0IHNlZW1zIHVubGlrZWx5IHRoYXQgdGhlIElEUEYgc3BlY2lmaWNhdGlvbiB3aWxsIGJl
IGZpbmFsaXplZCBieSB0aGF0Cj4gPiA+Pj4+IHRpbWUgLSBob3cgYXJlIHlvdSBnb2luZyB0byBo
YW5kbGUgYW55IHNwZWNpZmljYXRpb24gY2hhbmdlcz8KPiA+ID4+Pgo+ID4gPj4+IFllcy4gd2Ug
d291bGQgbGlrZSB0aGlzIGRyaXZlciB0byBiZSBtZXJnZWQgaW4gdGhlIG5leHQgY3ljbGUoNi41
KS4KPiA+ID4+PiBCYXNlZCBvbiB0aGUgY29tbXVuaXR5IGZlZWRiYWNrIG9uIHYxIHZlcnNpb24g
b2YgdGhlIGRyaXZlciwgd2UKPiA+ID4+PiByZW1vdmVkIGFsbAo+ID4gPj4+IHJlZmVyZW5jZXMg
dG8gT0FTSVMgc3RhbmRhcmQgYW5kIGF0IHRoaXMgdGltZSB0aGlzIGlzIGFuIGludGVsIHZlbmRv
cgo+ID4gPj4+IGRyaXZlci4KPiA+ID4+Pgo+ID4gPj4+IExpbmtzIHRvIHYxIGFuZCB2MiBkaXNj
dXNzaW9uIHRocmVhZHMKPiA+ID4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAy
MzAzMjkxNDA0MDQuMTY0NzkyNS0xLXBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbS8KPiA+ID4+
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMzA0MTEwMTEzNTQuMjYxOTM1OS0x
LXBhdmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbS8KPiA+ID4+Pgo+ID4gPj4+IFRoZSB2MS0+djIg
Y2hhbmdlIGxvZyByZWZsZWN0cyB0aGlzIHVwZGF0ZS4KPiA+ID4+PiB2MSAtLT4gdjI6IGxpbmsg
WzFdCj4gPiA+Pj4gICAqIHJlbW92ZWQgdGhlIE9BU0lTIHJlZmVyZW5jZSBpbiB0aGUgY29tbWl0
IG1lc3NhZ2UgdG8gbWFrZSBpdCBjbGVhcgo+ID4gPj4+ICAgICB0aGF0IHRoaXMgaXMgYW4gSW50
ZWwgdmVuZG9yIHNwZWNpZmljIGRyaXZlcgo+ID4gPj4KPiA+ID4+IFllcyB0aGlzIG1ha2VzIHNl
bnNlLgo+ID4gPj4KPiA+ID4+Cj4gPiA+Pj4gQW55IElEUEYgc3BlY2lmaWNhdGlvbiB1cGRhdGVz
IHdvdWxkIGJlIGhhbmRsZWQgYXMgcGFydCBvZiB0aGUKPiA+ID4+PiBjaGFuZ2VzIHRoYXQKPiA+
ID4+PiB3b3VsZCBiZSByZXF1aXJlZCB0byBtYWtlIHRoaXMgYSBjb21tb24gc3RhbmRhcmRzIGRy
aXZlci4KPiA+ID4+Cj4gPiA+Pgo+ID4gPj4gU28gbXkgcXVlc3Rpb24gaXMsIHdvdWxkIGl0IG1h
a2Ugc2Vuc2UgdG8gdXBkYXRlIEtjb25maWcgYW5kIG1vZHVsZSBuYW1lCj4gPiA+PiB0byBiZSAi
aXB1IiBvciBpZiB5b3UgcHJlZmVyICJpbnRlbC1pZHBmIiB0byBtYWtlIGl0IGNsZWFyIHRoaXMg
aXMKPiA+ID4+IGN1cnJlbnRseSBhbiBJbnRlbCB2ZW5kb3Igc3BlY2lmaWMgZHJpdmVyPyAgQW5k
IHRoZW4gd2hlbiB5b3UgbWFrZSBpdCBhCj4gPiA+PiBjb21tb24gc3RhbmRhcmRzIGRyaXZlciBy
ZW5hbWUgaXQgdG8gaWRwZj8gIFRoZSBwb2ludCBiZWluZyB0byBoZWxwIG1ha2UKPiA+ID4+IHN1
cmUgdXNlcnMgYXJlIG5vdCBjb25mdXNlZCBhYm91dCB3aGV0aGVyIHRoZXkgZ290IGEgZHJpdmVy
IHdpdGgKPiA+ID4+IG9yIHdpdGhvdXQgSURQRiB1cGRhdGVzLiBJdCdzIG5vdCBjcml0aWNhbCBJ
IGd1ZXNzIGJ1dCBzZWVtcyBsaWtlIGEgZ29vZAo+ID4gPj4gaWRlYS4gV0RZVD8KPiA+ID4KPiA+
ID4gSXQgd291bGQgYmUgbW9yZSBkaXNydXB0aXZlIHRvIGNoYW5nZSB0aGUgbmFtZSBvZiB0aGUg
ZHJpdmVyLiBXZSBjYW4KPiA+ID4gdXBkYXRlIHRoZSBwY2kgZGV2aWNlIHRhYmxlLCBtb2R1bGUg
ZGVzY3JpcHRpb24gYW5kIHBvc3NpYmx5IGRyaXZlcgo+ID4gPiB2ZXJzaW9uIHdoZW4gd2UgYXJl
IHJlYWR5IHRvIG1ha2UgdGhpcyBhIHN0YW5kYXJkIGRyaXZlci4KPiA+ID4gU28gd2Ugd291bGQg
cHJlZmVyIG5vdCBjaGFuZ2luZyB0aGUgZHJpdmVyIG5hbWUuCj4gPgo+ID4gTW9yZSBkaXNydXB0
aXZlIGZvciB3aG8/Cj4gPgo+ID4gSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gY2hhbmdl
IHRoZSBuYW1lIG9mIHRoZSBvbmUgZHJpdmVyIG5vdwo+ID4gYmVmb3JlIGEgcHJvYmxlbSBpcyBj
cmVhdGVkIGluIHRoZSB0cmVlIHRoYW4gdG8gbGVhdmUgYSBwb2ludCBvZgo+ID4gY29uZnVzaW9u
IGZvciB0aGUgcmVzdCBvZiB0aGUgZHJpdmVycyB0byBjb250ZW5kIHdpdGggaW4gdGhlIGZ1dHVy
ZS4KPiAKPiBUaGlzIGRpc2N1c3Npb24gaXMgcHJlbWlzZWQgb24gdGhlIGlkZWEgdGhhdCB0aGUg
ZHJpdmVycyB3aWxsCj4gaW5ldml0YWJseSBmb3JrLCB3aXRoIGFuIEludGVsIGRyaXZlciBhbmQg
YSBub24tYmFja3dhcmQgY29tcGF0aWJsZQo+IHN0YW5kYXJkaXplZCBkcml2ZXIuCj4gCj4gSW5z
dGVhZCwgSSBleHBlY3QgdGhhdCB0aGUgZ29hbCBpcyB0aGF0IHRoZSBmdXR1cmUgc3RhbmRhcmRp
emVkIGRyaXZlcgo+IHdpbGwgaXRlcmF0ZSBhbmQgc3VwcG9ydCBhZGRpdGlvbmFsIGZlYXR1cmVz
LiBCdXQgdGhhdCB0aGUgZXhpc3RpbmcKPiBoYXJkd2FyZSB3aWxsIGNvbnRpbnVlIHRvIGJlIHN1
cHBvcnRlZCwgaWYgcGVyaGFwcyB3aXRoIHVwZGF0ZWQKPiBmaXJtd2FyZS4KPiAKPiBJRFBGIGZy
b20gdGhlIHN0YXJ0IHVzZXMgZmVhdHVyZSBuZWdvdGlhdGlvbiBvdmVyIHZpcnRjaGFubmVsIHRv
IGJlCj4gaGlnaGx5IGNvbmZpZ3VyYWJsZS4gQSBmdXR1cmUgZHJpdmVyIG1pZ2h0IGRlcHJlY2F0
ZSBvbGRlciBmZWF0dXJlCj4gKHZhcmlhbnRzKSwgd2hpbGUgZWl0aGVyIHN0aWxsIGNvbnRpbnVl
IHRvIHN1cHBvcnQgdGhvc2Ugb3IgcmVxdWlyZQo+IGZpcm13YXJlIHVwZGF0ZXMgdG8gbWF0Y2gg
dGhlIG5ldyB2ZXJzaW9uLgo+IAo+IEV2ZW4gaWYgdGhlIGRldmljZSBBUEkgd291bGQgYnJlYWsg
aW4gYSBub24tYmFja3dhcmQgY29tcGF0aWJsZSB3YXksCj4gdGhlIHNhbWUgZHJpdmVyIGNhbiBz
dXBwb3J0IGJvdGggdmVyc2lvbnMuIFZpcnRpbyBpcyBhbiBleGFtcGxlIG9mCj4gdGhpcy4KPiAK
PiBJZiBJJ20gd3JvbmcgYW5kIGZvciBzb21lIHJlYXNvbiB0d28gZHJpdmVycyB3b3VsZCBoYXZl
IHRvIGJlCj4gc3VwcG9ydGVkLCB0aGVuIEknbSBzdXJlIHdlIGNhbiBmaWd1cmUgb3V0IGEgc3Vm
Zml4IG9yIHByZWZpeCB0byB0aGUKPiBzdGFuZGFyZCBkcml2ZXIgdGhhdCBzZXBhcmF0ZXMgaXQg
ZnJvbSB0aGUgZXhpc3Rpbmcgb25lLgoKCk9LIGxldCB1cyBsb29rIGF0IGEgbW9yZSBzcGVjaWZp
YyBleGFtcGxlLgoKVGhlIElEUEYgVEMgcmVjZW50bHkgdm90ZWQgdG8gYmluZCB0byBkZXZpY2UK
YmFzZWQgb24gY2xhc3MvcHJvZ3JhbW1pbmcgaW50ZXJmYWNlIGFzIG9wcG9zZWQgdG8gZGV2aWNl
L3ZlbmRvciBpZC4KRnV0dXJlIGRyaXZlciB3aWxsIGxpa2VseSBkbyB0aGlzLiBDdXJyZW50IGRy
aXZlciBvbmx5IGJpbmRzIHRvIGludGVsJ3MKZGV2aWNlIGFuZCB2ZW5kb3IgaWQuIEFzc3VtaW5n
IHRoaXMgaGFwcGVucywgd2hhdCBib3RoZXJzIG1lIGlzIHRoYXQKZGVwZW5kaW5nIG9uIGtlcm5l
bCB2ZXJzaW9uLCBkcml2ZXIgaWRwZi5rbyBlaXRoZXIgZG9lcyBvciBkb2VzIG5vdCBiaW5kCnRv
IGlkcGYgcHJvZ3JhbW1pbmcgaW50ZXJmYWNlLgoKQWxsIHRoaXMgaXMgcXVpdGUgaW1taW5lbnQu
CgpZZXMgdHJpY2tzIGxpa2UgY2hlY2tpbmcgbW9kdWxlIHZlcnNpb24gdG8gY2hlY2sgd2hhdCBp
cyBzdXBwb3J0ZWQgaXMKcG9zc2libGUsIGJ1dCB3ZSBhcmUgYmVnaW5uaW5nIHRvIGFscmVhZHkg
ZGV2ZWxvcCB0ZWNobmljYWwgZGVwdCBhbmQKbG9yZSBhbmQgd2UganVzdCBzdGFydGVkLiBTaW1w
bGUgbHNtb2R8Z3JlcCAtcSBpZHBmIHNlZW1zIGxpa2UgYW4KZWFzaWVyLCBtb3JlIHJvYnVzdCBh
bmQgaW50dWl0aXZlIHdheSB0aGFuIGlmIFtbICQoY2F0Ci9zeXMvbW9kdWxlL2lkcGYvdmVyc2lv
bikgPT0gIjIuMCIgXV0gdGhlbiBlY2hvICJpZHBmIiBmaQoKQW5kIHllcyBzb21lbW9yZSBtaWdo
dCBzaGlwIHRoZSBleGlzdGluZyBkcml2ZXIKZHVyaW5nIHRoaXMgaW5pdGlhbCB3aW5kb3cuIFRo
ZW4gd2UgZ2V0CmxzbW9kfGdyZXAgLXEgLWUgaWRwZiAtZSBpbnRlbC1pcHUKc3RpbGwgc2VlbXMg
cHJldHR5IGNsZWFuLiBBbmQgaG9wZWZ1bGx5IHRoZSBjaGFuZ2Ugd2lsbCBoYXBwZW4gd2l0aGlu
CmEgY291cGxlIG9mIG1vbnRocyBzbyBub3QgbW9yZSB0aGFuIG9uZSByZWxlYXNlIHdpbGwgaGF2
ZQp0aGUgaW50ZWwtaXB1IG5hbWUuCgpPZiBjb3Vyc2UgYWxsIHRoaXMgaXMgbm90IGVhcnRoIHNo
YXR0ZXJpbmdseSBpbXBvcnRhbnQgYnV0IHN0aWxsLApJJ20gaW50ZXJlc3RlZCBpbiB3aGF0IG90
aGVycyB0aGluay4KCi0tIApNU1QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
