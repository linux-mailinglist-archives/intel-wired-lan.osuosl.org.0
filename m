Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EBE30BCF7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 12:26:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 504B3858D3;
	Tue,  2 Feb 2021 11:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZEGQpAZ87pK; Tue,  2 Feb 2021 11:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F395185116;
	Tue,  2 Feb 2021 11:26:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4C711BF865
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 11:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B03D28633B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 11:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AH9ZXR-Wm-+z for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 11:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A761861C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 11:26:44 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id y10so8040647plk.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 02 Feb 2021 03:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YQTLhZR3hDf/41Do9Wuvt9T1ewGnoc9cSUmCkbXo2v4=;
 b=QMbZAzTLylWpjRpuDOf7MOcTUsDSZ4g61Vu+tL8Vlb+zyCPrEPOw3Lr5G7vPtsZC06
 WGQC4t+KMz6odoGASegp3HmEMasvbRYGu0e1vsJixEIrDR93B6yqL3mTV6B35T+bxI96
 /230yhbqa5y5Y0XSLMcFU6oWnbRmgaSIbEZv+UWdkVbOILGXpwiYyIVhEamToGW4ZM+D
 rpecn+hjffYEB8pxDtd4MwWXH3VSpI5iIM498LV2lyHF5yN9a4ayg4lSwDwVZ4ayscFz
 x71JscBMiC6gZJpb1MCuDBDUbkQmyBgrk+AI0CBss/SnSJLR9QZCTUmJIp3IhkJtulhC
 +/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YQTLhZR3hDf/41Do9Wuvt9T1ewGnoc9cSUmCkbXo2v4=;
 b=ME6YR+fgIxUeasHBtvAz7RSp84qVax9ZiRjPgZ2i4vQGydlc6IMG2Uv1KZFfIQYx4C
 cfVYDTx4hQqTGq0ftNAn9C4jpxun54MjvA5HDLydMOpU0DIbptX+BmWGXp8KVYbmQTT1
 ue3nAZ2LkyxcyJ1+C9oa0OuqsBOjEChHVQ4CU0KZU7uKp9Hz0IxR9iy94zyJMQa8A59f
 XxDAMtQ34TDaSclDLDkU+EAY5QqmnDp+bELwJM+/VO3hyAFhMg/XtH1D3WdwKWSuUhdw
 7jTKE8ik1rmIJ18YaGCsza+A96wcIxTzGBh7S5DQUvGSBTXA3+JjHhFT09fOirPcbRFY
 eFpA==
X-Gm-Message-State: AOAM532tS3/E8b0eLhAMJF+sNM/lN8AO5zJ8BxD8lyWaVhIxe6q6adzV
 y09ltPNrZ/uGg06gim8xjzwDp5FI62LZ6uoIbpo=
X-Google-Smtp-Source: ABdhPJwakZ1GnIoxdbhWs9AnFYxkfFUhHiGw0yRpMlAGmAPk6odqH0k51T9mGKOI0yhL1mZsfDwMb4mCvPVYIt/KU6g=
X-Received: by 2002:a17:902:7b89:b029:e1:1b46:bcec with SMTP id
 w9-20020a1709027b89b02900e11b46bcecmr21704504pll.5.1612265203527; Tue, 02 Feb
 2021 03:26:43 -0800 (PST)
MIME-Version: 1.0
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com> <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
In-Reply-To: <87h7mvsr0e.fsf@toke.dk>
From: Marek Majtyka <alardam@gmail.com>
Date: Tue, 2 Feb 2021 12:26:32 +0100
Message-ID: <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIFRva2UsCgpJbiBmYWN0LCBJIHdhcyB3YWl0aW5nIGZvciBhIHNpbmdsZSBjb25maXJt
YXRpb24sIGRpc2FncmVlbWVudCBvcgpjb21tZW50LiBJIGhhdmUgaXQgbm93LiBBcyB0aGVyZSBh
cmUgbm8gbW9yZSBjb21tZW50cywgSSBhbSBnZXR0aW5nCmRvd24gdG8gd29yayByaWdodCBhd2F5
LgoKTWFyZWsKCgoKCk9uIE1vbiwgRmViIDEsIDIwMjEgYXQgNToxNiBQTSBUb2tlIEjDuGlsYW5k
LUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4KPiBNYXJlayBNYWp0eWthIDxh
bGFyZGFtQGdtYWlsLmNvbT4gd3JpdGVzOgo+Cj4gPiBJIHdvdWxkIGxpa2UgdG8gdGhhbmsgeW91
IGZvciB5b3VyIHRpbWUsIGNvbW1lbnRzLCBuaXRwaWNraW5nIGFzIHdlbGwKPiA+IGFzIGVuY291
cmFnaW5nLgo+ID4KPiA+IE9uZSB0aGluZyBuZWVkcyBjbGFyaWZpY2F0aW9uIEkgdGhpbmssIHRo
YXQgaXMsIHRoYXQgdGhvc2UgZmxhZ3MKPiA+IGRlc2NyaWJlIGRyaXZlciBzdGF0aWMgZmVhdHVy
ZSBzZXRzIC0gd2hpY2ggYXJlIHJlYWQtb25seS4gVGhleSBoYXZlCj4gPiBub3RoaW5nIGluIGNv
bW1vbiB3aXRoIGRyaXZlciBydW50aW1lIGNvbmZpZ3VyYXRpb24gY2hhbmdlIHlldC4KPiA+IFJ1
bnRpbWUgY2hhbmdlIG9mIHRoaXMgc3RhdGUgY2FuIGJlIGFkZGVkIGJ1dCBpdCBuZWVkcyBhIG5l
dyB2YXJpYWJsZQo+ID4gYW5kIGl0IGNhbiBiZSBkb25lIGxhdGVyIG9uIGlmIHNvbWVvbmUgbmVl
ZHMgaXQuCj4gPgo+ID4gT2J2aW91c2x5LCBpdCBpcyBub3QgcG9zc2libGUgdG8gbWFrZSBldmVy
eWJvZHkgaGFwcHksIGVzcGVjaWFsbHkgd2l0aAo+ID4gWERQX0JBU0UgZmxhZ3Mgc2V0LiBUbyBi
ZSBob25lc3QsIHRoaXMgWERQX0JBU0UgZGVmaW5pdGlvbiBpcyBhCj4gPiBzeW50YWN0aWMgc3Vn
YXIgZm9yIG1lIGFuZCBJIGNhbiBsaXZlIHdpdGhvdXQgaXQuIFdlIGNhbiBlaXRoZXIgcmVtb3Zl
Cj4gPiBpdCBjb21wbGV0ZWx5LCBmcm9tCj4gPiB3aGljaCBJTU8gd2UgYWxsIGFuZCBvdGhlciBk
ZXZlbG9wZXJzIHdpbGwgc3VmZmVyIGxhdGVyIG9uLCBvciBtYXliZQo+ID4gd2UgY2FuIGFncmVl
IG9uIHRoZXNlIHR3byBoZWxwZXIgc2V0IG9mIGZsYWdzOiBYRFBfQkFTRSAoVFgsIEFCT1JURUQs
Cj4gPiBQQVNTLCBEUk9QKSBhbmQgWERQX0xJTUlURURfQkFTRShBQk9SVEVELFBBU1NfRFJPUCku
Cj4gPiBXaGF0IGRvIHlvdSB0aGluaz8KPiA+Cj4gPiBJIGFtIGFsc28gZ29pbmcgdG8gYWRkIGEg
bmV3IFhEUF9SRURJUkVDVF9UQVJHRVQgZmxhZyBhbmQgcmV0cmlldmluZwo+ID4gWERQIGZsYWdz
IG92ZXIgcnRuZWxpbmsgaW50ZXJmYWNlLgo+ID4KPiA+IEkgYWxzbyB0aGluayB0aGF0IGZvciBj
b21wbGV0ZW5lc3MsIGV0aHRvb2wgaW1wbGVtZW50YXRpb24gc2hvdWxkIGJlCj4gPiBrZXB0ICB0
b2dldGhlciB3aXRoIHJ0bmVsaW5rIHBhcnQgaW4gb3JkZXIgdG8gY292ZXIgYm90aCBpcCBhbmQK
PiA+IGV0aHRvb2wgdG9vbHMuIERvIEkgaGF2ZSB5b3VyIGFwcHJvdmFsIG9yIGRpc2FncmVlbWVu
dD8gUGxlYXNlIGxldCBtZQo+ID4ga25vdy4KPgo+IEhpIE1hcmVrCj4KPiBJIGp1c3QgcmVhbGlz
ZWQgdGhhdCBpdCBzZWVtcyBubyBvbmUgYWN0dWFsbHkgcmVwbGllZCB0byB5b3VyIGVtYWlsLiBP
bgo+IG15IHBhcnQgYXQgbGVhc3QgdGhhdCB3YXMgYmVjYXVzZSBJIGRpZG4ndCBoYXZlIGFueSBv
YmplY3Rpb25zLCBzbyBJJ20KPiBob3BpbmcgeW91IGRpZG4ndCBmZWVsIHRoZSBsYWNrIG9mIHJl
c3BvbnNlIHdhcyBkaXNjb3VyYWdpbmcgKGFuZCB0aGF0Cj4geW91J3JlIHN0aWxsIHdvcmtpbmcg
b24gYSByZXZpc2lvbiBvZiB0aGlzIHNlcmllcyk/IDopCj4KPiAtVG9rZQo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
