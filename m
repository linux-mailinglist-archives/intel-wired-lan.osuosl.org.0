Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A021830DA2F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Feb 2021 13:51:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59C7F8683D;
	Wed,  3 Feb 2021 12:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caSNBpXEgkSJ; Wed,  3 Feb 2021 12:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38F6D86793;
	Wed,  3 Feb 2021 12:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A15881BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 12:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9C82985EA8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 12:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QKnmwCOmV47o for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Feb 2021 12:51:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8142A85B00
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 12:51:11 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id a20so4329928pjs.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Feb 2021 04:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=S9+BN5vtBtRNRklrmhD8i8s/HAewqFBC4xIWzBNnZpA=;
 b=PzAfJHsUytagm16pcRgqIuQOi6kw/XpJ40siwz3Da+5F32b9Zq+VIsqgRGIr4KByoM
 fCB5EkY5YkEMZNOiCJ1GRJDnfmligi6/4u/VhtFXCwt1WwWZE4mzGY759jQY70+bOTFp
 r14ratgNNiGJaLU5UOpYqrBlHKwHRNEVjkgpap12hwV493SvabT8hae1zpF+eqIGmhGn
 gcwD4moDUT3xTRq2Fg16yY5rIBZk2/d/JYWhDNgXqAZCGo1hPWlRyRwssVHbbkfE4rz+
 bPt6gS/Nq14zB720K1BpLg+PuCi59m8ChkjKSTIsrf+bRJq0imJpwi7qRkZyeU7vCdWP
 TbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=S9+BN5vtBtRNRklrmhD8i8s/HAewqFBC4xIWzBNnZpA=;
 b=Uat7V3XAfdhzlYL1aTPHQwFSsVSBTLvw3wwMM2jGqwXjZ/STpEi49fq7PkdzOIlteS
 hSAYnonfI61O034gtVPUG79fFWIdbMhDKz/QxuHIrUIU5ClFfi2dL8qDYgBRClpF0wbE
 5ta2mC8CwDRWjS+Ccq9heMTQDdBnBEHF+1Zip+GNT3+HNUtjpHowg2Lo1vPF17BVoU9e
 yPK5T2pmfhDAeXlGU22z8FoZ9kxC4HpgdY7D0oMjOX9FNrl2Cj0q09k0u1cAJlwQVmiW
 sRdjFR6zXKZ2Wx+JbWalckIVdvrhWZnwR8zcqS5ksxj+cFa3bgtjmpJfecjpjPtjiMIc
 c7Eg==
X-Gm-Message-State: AOAM530S0ShhJWkVZC/QS/cUd99+icWT7V6GhY8xo/Qh2r5HH98A4CPd
 VYKMoU+uY89fw5zSN3bcUlK5qj02/MP84pD0hII=
X-Google-Smtp-Source: ABdhPJy085hGLdV3fX0r3q7Ieui6cZUtfqMubqv4wtMjc1VtnqAw/dhTCQ9i05Il/R03Nu2GKJ3R0JicMHJuDZLoGOg=
X-Received: by 2002:a17:902:760f:b029:df:e6bf:7e53 with SMTP id
 k15-20020a170902760fb02900dfe6bf7e53mr2945946pll.80.1612356671051; Wed, 03
 Feb 2021 04:51:11 -0800 (PST)
MIME-Version: 1.0
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk> <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
 <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
 <1e5e044c8382a68a8a547a1892b48fb21d53dbb9.camel@kernel.org>
 <cb6b6f50-7cf1-6519-a87a-6b0750c24029@gmail.com>
 <f4eb614ac91ee7623d13ea77ff3c005f678c512b.camel@kernel.org>
 <d5be0627-6a11-9c1f-8507-cc1a1421dade@gmail.com>
 <6f8c23d4ac60525830399754b4891c12943b63ac.camel@kernel.org>
 <CAAOQfrHN1-oHmbOksDv-BKWv4gDF2zHZ5dTew6R_QTh6s_1abg@mail.gmail.com>
 <87h7mvsr0e.fsf@toke.dk>
 <CAAOQfrHA+-BsikeQzXYcK_32BZMbm54x5p5YhAiBj==uaZvG1w@mail.gmail.com>
 <87bld2smi9.fsf@toke.dk>
 <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Marek Majtyka <alardam@gmail.com>
Date: Wed, 3 Feb 2021 13:50:59 +0100
Message-ID: <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
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
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, Saeed Mahameed <saeed@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA4OjM0IFBNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAwMiBGZWIgMjAyMSAxMzowNTozNCArMDEwMCBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gPiBNYXJlayBNYWp0eWthIDxhbGFyZGFtQGdt
YWlsLmNvbT4gd3JpdGVzOgo+ID4KPiA+ID4gVGhhbmtzIFRva2UsCj4gPiA+Cj4gPiA+IEluIGZh
Y3QsIEkgd2FzIHdhaXRpbmcgZm9yIGEgc2luZ2xlIGNvbmZpcm1hdGlvbiwgZGlzYWdyZWVtZW50
IG9yCj4gPiA+IGNvbW1lbnQuIEkgaGF2ZSBpdCBub3cuIEFzIHRoZXJlIGFyZSBubyBtb3JlIGNv
bW1lbnRzLCBJIGFtIGdldHRpbmcKPiA+ID4gZG93biB0byB3b3JrIHJpZ2h0IGF3YXkuCj4gPgo+
ID4gQXdlc29tZSEgQW5kIHNvcnJ5IGZvciBub3QgcmVwbHlpbmcgc3RyYWlnaHQgYXdheSAtIEkg
aGF0ZSBpdCB3aGVuIEkKPiA+IHNlbmQgb3V0IHNvbWV0aGluZyBteXNlbGYgYW5kIHJlY2VpdmUg
bm8gcmVwbGllcywgc28gSSBzdXBwb3NlIEkgc2hvdWxkCj4gPiBnZXQgYmV0dGVyIGF0IG5vdCBk
b2luZyB0aGF0IG15c2VsZiA6KQo+ID4KPiA+IEFzIGZvciB0aGUgaW5jbHVzaW9uIG9mIHRoZSBY
RFBfQkFTRSAvIFhEUF9MSU1JVEVEX0JBU0Ugc2V0cyAod2hpY2ggSQo+ID4ganVzdCByZWFsaXNl
ZCBJIGRpZG4ndCByZXBseSB0byksIEkgYW0gZmluZSB3aXRoIGRlZmluaW5nIFhEUF9CQVNFIGFz
IGEKPiA+IHNob3J0Y3V0IGZvciBUWC9BQk9SVEVEL1BBU1MvRFJPUCwgYnV0IHRoaW5rIHdlIHNo
b3VsZCBza2lwCj4gPiBYRFBfTElNSVRFRF9CQVNFIGFuZCBpbnN0ZWFkIHJlcXVpcmUgYWxsIG5l
dyBkcml2ZXJzIHRvIGltcGxlbWVudCB0aGUKPiA+IGZ1bGwgWERQX0JBU0Ugc2V0IHN0cmFpZ2h0
IGF3YXkuIEFzIGxvbmcgYXMgd2UncmUgdGFsa2luZyBhYm91dAo+ID4gZmVhdHVyZXMgKmltcGxl
bWVudGVkKiBieSB0aGUgZHJpdmVyLCBhdCBsZWFzdDsgaS5lLiwgaXQgc2hvdWxkIHN0aWxsIGJl
Cj4gPiBwb3NzaWJsZSB0byAqZGVhY3RpdmF0ZSogWERQX1RYIGlmIHlvdSBkb24ndCB3YW50IHRv
IHVzZSB0aGUgSFcKPiA+IHJlc291cmNlcywgYnV0IEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBtdWNo
IGJlbmVmaXQgZnJvbSBkZWZpbmluZyB0aGUKPiA+IExJTUlURURfQkFTRSBzZXQgYXMgYSBzaG9y
dGN1dCBmb3IgdGhpcyBtb2RlLi4uCj4KPiBJIHN0aWxsIGhhdmUgbWl4ZWQgZmVlbGluZ3MgYWJv
dXQgdGhlc2UgZmxhZ3MuIFRoZSBmaXJzdCBzdGVwIElNTwo+IHNob3VsZCBiZSBhZGRpbmcgdmFs
aWRhdGlvbiB0ZXN0cy4gSSBiZXReVyBwcmF5IGV2ZXJ5IHZlbmRvciBoYXMKPiB2YWxpZGF0aW9u
IHRlc3RzIGJ1dCBzaW5jZSB0aGV5IGFyZSBub3QgdW5pZmllZCB3ZSBkb24ndCBrbm93IHdoYXQK
PiBsZXZlbCBvZiBpbnRlcm9wZXJhYmlsaXR5IHdlJ3JlIGFjaGlldmluZyBpbiBwcmFjdGljZS4g
VGhhdCBkb2Vzbid0Cj4gbWF0dGVyIGZvciB0cml2aWFsIGZlYXR1cmUgbGlrZSBiYXNlIGFjdGlv
bnMsIGJ1dCB3ZSdsbCBpbmV2aXRhYmx5Cj4gbW92ZSBvbiB0byBkZWZpbmluZyBtb3JlIGFkdmFu
Y2VkIGNhcGFiaWxpdGllcyBhbmQgdGhlIHF1ZXN0aW9uIG9mCj4gIndoYXQgc3VwcG9ydGluZyBY
IGFjdHVhbGx5IG1lYW4iIHdpbGwgY29tZSB1cCAoMyB5ZWFycyBsYXRlciwgd2hlbgo+IHdlIGRv
bid0IHJlbWVtYmVyIG91cnNlbHZlcykuCgpJIGFtIGEgYml0IGNvbmZ1c2VkIG5vdy4gRGlkIHlv
dSBtZWFuIHZhbGlkYXRpb24gdGVzdHMgb2YgdGhvc2UgWERQCmZsYWdzLCB3aGljaCBJIGFtIHdv
cmtpbmcgb24gb3Igc29tZSBvdGhlciB2YWxpZGF0aW9uIHRlc3RzPwpXaGF0IHNob3VsZCB0aGVz
ZSB0ZXN0cyB2ZXJpZnk/IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBtb3JlIG9uIHRoZQp0b3Bp
YywgcGxlYXNlIC0ganVzdCBhIGZldyBzZW50ZW5jZXMgaG93IGFyZSB5b3Ugc2VlIGl0PwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
