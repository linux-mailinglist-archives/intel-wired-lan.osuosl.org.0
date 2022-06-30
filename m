Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B28515625C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 23:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 052F5410A5;
	Thu, 30 Jun 2022 21:59:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 052F5410A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656626389;
	bh=scsI5sE9VFkvg2i3D7d8QrswThaxv105EkTtkUNRSYw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x6Ll6XSZrBtURJEl1BYeyOUT9KRTX7TXTYyKeIQuZZX6zZ6o8GBlWiE5O3Oja1o4d
	 D67kw5gx/YmoPx5qeD1GiCPJH3JPIDWGZrcSzpVJ7CkH0Zule5clnCD5urwLvYPlPq
	 gyWsTj91xT85OeHl0WDrWAj1RHIRx0CqX3rbLq5wyZ47cnFyxhUh3DwSfvtmagrTJ9
	 fSdVkjsL6MJtae3iwAiVxZ408k3UQtTrKRUEBVR5a5GPIFQ3Uvc60/P2X0/mEuFtoc
	 xafAx+e/bfcwgs3ax2fGEMVFMhVC+nNyW574PSOCfaa4dYl+IeoZAdh3uA11aXFS8h
	 HfetIbh3w708A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LaHJw6Fraene; Thu, 30 Jun 2022 21:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AC7541774;
	Thu, 30 Jun 2022 21:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AC7541774
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D6D141BF349
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 21:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F7C541774
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 21:59:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F7C541774
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-v6VtVdI4Nt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 21:59:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 453EB410A5
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 453EB410A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 21:59:37 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id q6so583778eji.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 14:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VCFiO/DeU9BXKDMeaTVORaJLJS+2vXFEBjORLfl2s5k=;
 b=J7Q+AES623E2QZbx90H8Wnf0fTMi9df7JPgsuwggE+L+eISwi3Isw3I3S+7LBe+v0L
 D1rVuNcahd02IImSWJ9jMgPyJtAdgwR9SfI4R6DJULA9N4z/2DjiWKN6y7LADGAefIny
 ONMLkz7beYzdTK+cIg9mbAl2iqPYM+0axDXTfN8D073JfVrIVtJsbiTJVTZxWhTR3OPN
 QRDP603Mg3eleK2T1MGjitHMmi1VN4mdfgIhFCOQ0YTqDoXCL8HisW7h+poXqDeZuZFd
 tGkgtSH7exdjdOpossACQhxgiPiXOJ+cpmd4OPkahyEE9nI2uVMkOByEGIjmliua4v08
 +gZg==
X-Gm-Message-State: AJIora9mWD0ADaV4Ey1VcJpdWgjLusHwRVvOfh/b0zhNFWEfa3wLFJe4
 bj2n4WDtGDq59xbJO+duxGCG2ZrNxfXjyZQvcFg=
X-Google-Smtp-Source: AGRyM1utaObcR+X0r6TrHRoLKwSzV4pBavCJL1T5Wzg7peFzpGSlpvtkm1Sf8JauMB3VhrTRV7HUakvHEsj0+Nbkr+k=
X-Received: by 2002:a17:906:5a62:b0:728:f6d4:7786 with SMTP id
 my34-20020a1709065a6200b00728f6d47786mr10914153ejc.184.1656626375309; Thu, 30
 Jun 2022 14:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <CANn89iK6g+4Fy2VMV7=feUAOUDHu-J38be+oU76yp+zGH6xCJQ@mail.gmail.com>
 <CAKgT0UcKRJUJrpFHdNrdH98eu_dpiZiVakJRqc2qHrdGJJQRQA@mail.gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
In-Reply-To: <2254584.ElGaqSPkdT@opensuse>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 30 Jun 2022 14:59:23 -0700
Message-ID: <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VCFiO/DeU9BXKDMeaTVORaJLJS+2vXFEBjORLfl2s5k=;
 b=LvKY1OOTT78vTS8EPbGj0TrO58Z6edbacT16WUNefQLwdjxglPKC7hY1zgMoBIDwzP
 2xci4QFis9EXN30WVQkkwLYWs7l87b+YBiiRWyiHrhSXInAHmd1BM7aDXMhtPMZI2HY4
 LBqz+kuSiDwiwJ8EQhRZsklryzlVX/6VZ/Dm8QkCM7gS97EHASij1PJFrTFg3JdqV4pE
 72QKMYh6DQiwnvMQHeU9G6LbKsFaDoxkZibp7qSQ0GnOAW6OnFg0JT+KoD1aqaUuzPLf
 h75v8xrcHZUUpGwz0Pq4KzKkNFFgAbl1vUiw7aSTsjp24LOIpKbFQZWeSHfUJLj6RAJs
 dBdw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=LvKY1OOT
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ira Weiny <ira.weiny@intel.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgMTE6MTggQU0gRmFiaW8gTS4gRGUgRnJhbmNlc2NvCjxm
bWRlZnJhbmNlc2NvQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBnaW92ZWTDrCAzMCBnaXVnbm8g
MjAyMiAxODowOToxOCBDRVNUIEFsZXhhbmRlciBEdXljayB3cm90ZToKPiA+IE9uIFRodSwgSnVu
IDMwLCAyMDIyIGF0IDg6MjUgQU0gRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPiB3
cm90ZToKPiA+ID4KPiA+ID4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgNToxNyBQTSBBbGV4YW5k
ZXIgRHV5Y2sKPiA+ID4gPGFsZXhhbmRlci5kdXlja0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+
Cj4gPiA+ID4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQgMzoxMCBBTSBNYWNpZWogRmlqYWxrb3dz
a2kKPiA+ID4gPiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gT24gV2VkLCBKdW4gMjksIDIwMjIgYXQgMTA6NTg6MzZBTSArMDIwMCwgRmFi
aW8gTS4gRGUgRnJhbmNlc2NvCj4gd3JvdGU6Cj4gPiA+ID4gPiA+IFRoZSB1c2Ugb2Yga21hcCgp
IGlzIGJlaW5nIGRlcHJlY2F0ZWQgaW4gZmF2b3Igb2YKPiBrbWFwX2xvY2FsX3BhZ2UoKS4KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gV2l0aCBrbWFwX2xvY2FsX3BhZ2UoKSwgdGhlIG1hcHBpbmcg
aXMgcGVyIHRocmVhZCwgQ1BVIGxvY2FsIGFuZAo+IG5vdAo+ID4gPiA+ID4gPiBnbG9iYWxseSB2
aXNpYmxlLiBGdXJ0aGVybW9yZSwgdGhlIG1hcHBpbmcgY2FuIGJlIGFjcXVpcmVkIGZyb20KPiBh
bnkgY29udGV4dAo+ID4gPiA+ID4gPiAoaW5jbHVkaW5nIGludGVycnVwdHMpLgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBUaGVyZWZvcmUsIHVzZSBrbWFwX2xvY2FsX3BhZ2UoKSBpbiBpeGdiZV9j
aGVja19sYnRlc3RfZnJhbWUoKQo+IGJlY2F1c2UKPiA+ID4gPiA+ID4gdGhpcyBtYXBwaW5nIGlz
IHBlciB0aHJlYWQsIENQVSBsb2NhbCwgYW5kIG5vdCBnbG9iYWxseSB2aXNpYmxlLgo+ID4gPiA+
ID4KPiA+ID4gPiA+IEhpLAo+ID4gPiA+ID4KPiA+ID4gPiA+IEknZCBsaWtlIHRvIGFzayB3aHkg
a21hcCB3YXMgdGhlcmUgaW4gdGhlIGZpcnN0IHBsYWNlIGFuZCBub3QgcGxhaW4KPiA+ID4gPiA+
IHBhZ2VfYWRkcmVzcygpID8KPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbGV4Pwo+ID4gPiA+Cj4gPiA+
ID4gVGhlIHBhZ2VfYWRkcmVzcyBmdW5jdGlvbiBvbmx5IHdvcmtzIG9uIGFyY2hpdGVjdHVyZXMg
dGhhdCBoYXZlCj4gYWNjZXNzCj4gPiA+ID4gdG8gYWxsIG9mIHBoeXNpY2FsIG1lbW9yeSB2aWEg
dmlydHVhbCBtZW1vcnkgYWRkcmVzc2VzLiBUaGUga21hcAo+ID4gPiA+IGZ1bmN0aW9uIGlzIG1l
YW50IHRvIHRha2UgY2FyZSBvZiBoaWdobWVtIHdoaWNoIHdpbGwgbmVlZCB0byBiZQo+IG1hcHBl
ZAo+ID4gPiA+IGJlZm9yZSBpdCBjYW4gYmUgYWNjZXNzZWQuCj4gPiA+ID4KPiA+ID4gPiBGb3Ig
bm9uLWhpZ2htZW0gcGFnZXMga21hcCBqdXN0IGNhbGxzIHRoZSBwYWdlX2FkZHJlc3MgZnVuY3Rp
b24uCj4gPiA+ID4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJj
ZS9pbmNsdWRlL2xpbnV4L2hpZ2htZW0taW50ZXJuYWwuaCNMNDAKPiA+ID4KPiA+ID4KPiA+ID4g
U3VyZSwgYnV0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBp
cyBhbGxvY2F0aW5nCj4gPiA+IHBhZ2VzIHRoYXQgYXJlIG5vdCBoaWdobWVtID8KPiA+ID4KPiA+
ID4gVGhpcyBrbWFwKCkgZG9lcyBub3Qgc2VlbSBuZWVkZWQuCj4gPgo+ID4gR29vZCBwb2ludC4g
U28gb2RkcyBhcmUgcGFnZV9hZGRyZXNzIGlzIGZpbmUgdG8gdXNlLiBBY3R1YWxseSB0aGVyZSBp
cwo+ID4gYSBub3RlIHRvIHRoYXQgZWZmZWN0IGluIGl4Z2JlX3B1bGxfdGFpbC4KPiA+Cj4gPiBB
cyBzdWNoIHdlIGNvdWxkIHByb2JhYmx5IGdvIHRocm91Z2ggYW5kIHVwZGF0ZSBpZ2IsIGFuZCBz
ZXZlcmFsIG9mCj4gPiB0aGUgb3RoZXIgSW50ZWwgZHJpdmVycyBhcyB3ZWxsLgo+ID4KPiA+IC0g
QWxleAo+ID4KPiBJIGRvbid0IGtub3cgdGhpcyBjb2RlLCBob3dldmVyIEkga25vdyBrbWFwKigp
Lgo+Cj4gSSBhc3N1bWVkIHRoYXQsIGlmIGF1dGhvciB1c2VkIGttYXAoKSwgdGhlcmUgd2FzIHBv
c3NpYmlsaXR5IHRoYXQgdGhlIHBhZ2UKPiBjYW1lIGZyb20gaGlnaG1lbS4KPgo+IEluIHRoYXQg
Y2FzZSBrbWFwX2xvY2FsX3BhZ2UoKSBsb29rcyBjb3JyZWN0IGhlcmUuCj4KPiBIb3dldmVyLCBu
b3cgSSByZWFkIHRoYXQgdGhhdCBwYWdlIF9jYW5ub3RfIGNvbWUgZnJvbSBoaWdobWVtLiBUaGVy
ZWZvcmUsCj4gcGFnZV9hZGRyZXNzKCkgd291bGQgc3VmZmljZS4KPgo+IElmIHlvdSBhbGwgd2Fu
dCBJIGNhbiByZXBsYWNlIGttYXAoKSAvIGt1bm1hcCgpIHdpdGggYSAicGxhaW4iCj4gcGFnZV9h
ZGRyZXNzKCkuIFBsZWFzZSBsZXQgbWUga25vdy4KPgo+IFRoYW5rcywKPgo+IEZhYmlvCgpSZXBs
YWNpbmcgaXQgd2l0aCBqdXN0IHBhZ2VfYWRkcmVzcygpIHNob3VsZCBiZSBmaW5lLiBCYWNrIHdo
ZW4gSQp3cm90ZSB0aGUgY29kZSBJIGRpZG4ndCByZWFsaXplIHRoYXQgR0ZQX0FUT01JQyBwYWdl
cyB3ZXJlbid0CmFsbG9jYXRlZCBmcm9tIGhpZ2htZW0gc28gSSBzdXNwZWN0IEkganVzdCB1c2Vk
IGttYXAgc2luY2UgaXQgd2FzIHRoZQp3YXkgdG8gY292ZXIgYWxsIHRoZSBiYXNlcy4KClRoYW5r
cywKCi0gQWxleApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
