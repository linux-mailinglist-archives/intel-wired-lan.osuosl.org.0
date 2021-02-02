Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1030CBB2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 20:35:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE601228BD;
	Tue,  2 Feb 2021 19:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBII+OmCwHtm; Tue,  2 Feb 2021 19:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6C0C228E3;
	Tue,  2 Feb 2021 19:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4E71BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 19:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 489B086936
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 19:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PlC40Z1E3l+J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 19:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C27F086932
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 19:34:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A3F3A64E39;
 Tue,  2 Feb 2021 19:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612294498;
 bh=WC5Lt7FO1YCCTlx62ZrKm1lIJjAacPhiw1YwF3tHUJ8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HeNWkMoDFzRTV5ILjCtPyxS6/ZeLWABp9ipxmY0mPZ/HqVYwm1x44OnL02CuYAft2
 0EGKzulbkp2NFOKpDhRuaVz3N5g0mFFusjnVHWRRe5jnP/9VDWTNDEqdsGJF8FeBL/
 CyfzeTZumODueoaPmZ0kNC0qooUOGKGecoYVs8/f1AywzzH4vYqfWuw0hPvPkjE5C/
 cW3q5thnzxvZqv3rHYFXaRY0F4oEACAj5kYumtwCT/Q0aIhyMeZ17Xym/ehOtsPNWt
 yQ2Iuum6N1R/+rvPtqIS+2YNkCFjX7MrOuOxcXwGMsC8LaI8YQT03Fk+yP4S/jYq3J
 GVb3sSo1u2gEQ==
Date: Tue, 2 Feb 2021 11:34:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20210202113456.30cfe21e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87bld2smi9.fsf@toke.dk>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
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
MIME-Version: 1.0
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
 Marek Majtyka <alardam@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 jeffrey.t.kirsher@intel.com, David Ahern <dsahern@gmail.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "David S.
 Miller" <davem@davemloft.net>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAwMiBGZWIgMjAyMSAxMzowNTozNCArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gTWFyZWsgTWFqdHlrYSA8YWxhcmRhbUBnbWFpbC5jb20+IHdyaXRlczoKPiAK
PiA+IFRoYW5rcyBUb2tlLAo+ID4KPiA+IEluIGZhY3QsIEkgd2FzIHdhaXRpbmcgZm9yIGEgc2lu
Z2xlIGNvbmZpcm1hdGlvbiwgZGlzYWdyZWVtZW50IG9yCj4gPiBjb21tZW50LiBJIGhhdmUgaXQg
bm93LiBBcyB0aGVyZSBhcmUgbm8gbW9yZSBjb21tZW50cywgSSBhbSBnZXR0aW5nCj4gPiBkb3du
IHRvIHdvcmsgcmlnaHQgYXdheS4gIAo+IAo+IEF3ZXNvbWUhIEFuZCBzb3JyeSBmb3Igbm90IHJl
cGx5aW5nIHN0cmFpZ2h0IGF3YXkgLSBJIGhhdGUgaXQgd2hlbiBJCj4gc2VuZCBvdXQgc29tZXRo
aW5nIG15c2VsZiBhbmQgcmVjZWl2ZSBubyByZXBsaWVzLCBzbyBJIHN1cHBvc2UgSSBzaG91bGQK
PiBnZXQgYmV0dGVyIGF0IG5vdCBkb2luZyB0aGF0IG15c2VsZiA6KQo+IAo+IEFzIGZvciB0aGUg
aW5jbHVzaW9uIG9mIHRoZSBYRFBfQkFTRSAvIFhEUF9MSU1JVEVEX0JBU0Ugc2V0cyAod2hpY2gg
SQo+IGp1c3QgcmVhbGlzZWQgSSBkaWRuJ3QgcmVwbHkgdG8pLCBJIGFtIGZpbmUgd2l0aCBkZWZp
bmluZyBYRFBfQkFTRSBhcyBhCj4gc2hvcnRjdXQgZm9yIFRYL0FCT1JURUQvUEFTUy9EUk9QLCBi
dXQgdGhpbmsgd2Ugc2hvdWxkIHNraXAKPiBYRFBfTElNSVRFRF9CQVNFIGFuZCBpbnN0ZWFkIHJl
cXVpcmUgYWxsIG5ldyBkcml2ZXJzIHRvIGltcGxlbWVudCB0aGUKPiBmdWxsIFhEUF9CQVNFIHNl
dCBzdHJhaWdodCBhd2F5LiBBcyBsb25nIGFzIHdlJ3JlIHRhbGtpbmcgYWJvdXQKPiBmZWF0dXJl
cyAqaW1wbGVtZW50ZWQqIGJ5IHRoZSBkcml2ZXIsIGF0IGxlYXN0OyBpLmUuLCBpdCBzaG91bGQg
c3RpbGwgYmUKPiBwb3NzaWJsZSB0byAqZGVhY3RpdmF0ZSogWERQX1RYIGlmIHlvdSBkb24ndCB3
YW50IHRvIHVzZSB0aGUgSFcKPiByZXNvdXJjZXMsIGJ1dCBJIGRvbid0IHRoaW5rIHRoZXJlJ3Mg
bXVjaCBiZW5lZml0IGZyb20gZGVmaW5pbmcgdGhlCj4gTElNSVRFRF9CQVNFIHNldCBhcyBhIHNo
b3J0Y3V0IGZvciB0aGlzIG1vZGUuLi4KCkkgc3RpbGwgaGF2ZSBtaXhlZCBmZWVsaW5ncyBhYm91
dCB0aGVzZSBmbGFncy4gVGhlIGZpcnN0IHN0ZXAgSU1PCnNob3VsZCBiZSBhZGRpbmcgdmFsaWRh
dGlvbiB0ZXN0cy4gSSBiZXReVyBwcmF5IGV2ZXJ5IHZlbmRvciBoYXMKdmFsaWRhdGlvbiB0ZXN0
cyBidXQgc2luY2UgdGhleSBhcmUgbm90IHVuaWZpZWQgd2UgZG9uJ3Qga25vdyB3aGF0CmxldmVs
IG9mIGludGVyb3BlcmFiaWxpdHkgd2UncmUgYWNoaWV2aW5nIGluIHByYWN0aWNlLiBUaGF0IGRv
ZXNuJ3QKbWF0dGVyIGZvciB0cml2aWFsIGZlYXR1cmUgbGlrZSBiYXNlIGFjdGlvbnMsIGJ1dCB3
ZSdsbCBpbmV2aXRhYmx5IAptb3ZlIG9uIHRvIGRlZmluaW5nIG1vcmUgYWR2YW5jZWQgY2FwYWJp
bGl0aWVzIGFuZCB0aGUgcXVlc3Rpb24gb2YKIndoYXQgc3VwcG9ydGluZyBYIGFjdHVhbGx5IG1l
YW4iIHdpbGwgY29tZSB1cCAoMyB5ZWFycyBsYXRlciwgd2hlbgp3ZSBkb24ndCByZW1lbWJlciBv
dXJzZWx2ZXMpLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
