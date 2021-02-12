Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E943197F3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 02:26:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1158E86F6A;
	Fri, 12 Feb 2021 01:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ExNgmMxwfF2B; Fri, 12 Feb 2021 01:26:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B45DF86F89;
	Fri, 12 Feb 2021 01:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DBFA1BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98DF6875F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:26:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R3DFfes-vilI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 01:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E710F875F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 01:26:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBE4764E3B;
 Fri, 12 Feb 2021 01:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613093165;
 bh=wilJ8lskA8dshMWOY4eOP0upu6a6phBxe5ABOy25GUU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=r++H1etXUpaC4HUoLGcIw4A412v8aSTChbUopnOUL49MZXsv8ZTPRGLS2Zm51XgYD
 Rt6dNUiI3/0BI3Hm+cZx8DpfQH6PoW7uubdJJEcTuWk7XOjde49x9h8X5RC3mzFyln
 pdRqmZlQNhRZxcjYd3ykEXkmCzvBxedQAlLqwDBF6UkLvVCMbywlZuM+itpRHDeMml
 jq4NIji9R3Q/I+D13FzaVcZej4hxUzsKGAlornXIGyMgO6dXuC75vgQEM1iAO4qw0q
 p16cAuhTLqVccK1517Kra2Vu67eI4i96PmNXJYfW0L8AgrIEsawnyFGfu0pk+arziH
 kVxk30TiZnmLg==
Date: Thu, 11 Feb 2021 17:26:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20210211172603.17d6a8f6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87czx7r0w8.fsf@toke.dk>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
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
 <CAAOQfrGqcsn3wu5oxzHYxtE8iK3=gFdTka5HSh5Fe9Hc6HWRWA@mail.gmail.com>
 <20210203090232.4a259958@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <874kikry66.fsf@toke.dk>
 <20210210103135.38921f85@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87czx7r0w8.fsf@toke.dk>
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

T24gV2VkLCAxMCBGZWIgMjAyMSAyMzo1MjozOSArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgo+ID4g
T24gV2VkLCAxMCBGZWIgMjAyMSAxMTo1Mzo1MyArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6ICAKPiA+PiBXaGlsZSBJIGRvIGFncmVlIHRoYXQgdGhhdCBraW5kIG9mIGNvbmZv
cm1hbmNlIHRlc3Qgd291bGQgYmUgZ3JlYXQsIEkKPiA+PiBkb24ndCB0aGluayBpdCBoYXMgdG8g
aG9sZCB1cCB0aGlzIHNlcmllcyAodGhlIHBlcmZlY3QgYmVpbmcgdGhlIGVuZW15Cj4gPj4gb2Yg
dGhlIGdvb2QsIGFuZCBhbGwgdGhhdCkuIFdlIGhhdmUgYSByZWFsIHByb2JsZW0gdG9kYXkgdGhh
dCB1c2Vyc3BhY2UKPiA+PiBjYW4ndCB0ZWxsIGlmIGEgZ2l2ZW4gZHJpdmVyIGltcGxlbWVudHMs
IHNheSwgWERQX1JFRElSRUNULCBhbmQgc28KPiA+PiBwZW9wbGUgdHJ5IHRvIHVzZSBpdCBhbmQg
c3BlbmQgZGF5cyB3b25kZXJpbmcgd2hpY2ggYmxhY2sgaG9sZSB0aGVpcgo+ID4+IHBhY2tldHMg
ZGlzYXBwZWFyIGludG8uIEFuZCBmb3IgdGhpbmdzIGxpa2UgY29udGFpbmVyIG1pZ3JhdGlvbiB3
ZSBuZWVkCj4gPj4gdG8gYmUgYWJsZSB0byBwcmVkaWN0IHdoZXRoZXIgYSBnaXZlbiBob3N0IHN1
cHBvcnRzIGEgZmVhdHVyZSAqYmVmb3JlKgo+ID4+IHdlIHN0YXJ0IHRoZSBtaWdyYXRpb24gYW5k
IHRyeSB0byB1c2UgaXQuICAKPiA+Cj4gPiBVbmxlc3MgeW91IGhhdmUgYSBzdHJvbmcgZGVmaW5p
dGlvbiBvZiB3aGF0IFhEUF9SRURJUkVDVCBtZWFucyB0aGUgZmxhZwo+ID4gaXRzZWxmIGlzIG5v
dCB3b3J0aCBtdWNoLiBXZSdyZSBub3QgdGFsa2luZyBhYm91dCBub3JtYWwgZXRodG9vbCBmZWF0
dXJlCj4gPiBmbGFncyB3aGljaCBhcmUgcHJpbWFyaWx5IHN0YWNrLWRyaXZlbiwgWERQIGlzIGlt
cGxlbWVudGVkIG1vc3RseSBieQo+ID4gdGhlIGRyaXZlciwgZWFjaCB2ZW5kb3IgY2FuIGRvIHRo
ZWlyIG93biB0aGluZy4gTWF5YmUgSSd2ZSBzZWVuIG9uZQo+ID4gdmVuZG9yIGluY29tcGF0aWJp
bGl0eSB0b28gbWFueSBhdCBteSBkYXkgam9iIHRvIGhvcGUgZm9yIHRoZSBiZXN0Li4uICAKPiAK
PiBJJ20gdG90YWxseSBvbiBib2FyZCB3aXRoIGRvY3VtZW50aW5nIHdoYXQgYSBmZWF0dXJlIG1l
YW5zLgoKV2UncmUgdHJ5aW5nIGRvY3VtZW50YXRpb24gaW4gZGV2bGluayBldGMuIGFuZCBpdCdz
IG5vdCB0aGF0IGdyZWF0LgpJdCdzIG5ldmVyIGNsZWFyIGFuZCBjb21wcmVoZW5zaXZlIGVub3Vn
aCwgYmFyZWx5IGFueW9uZSByZWFkcyBpdC4KCj4gRS5nLiwgZm9yCj4gWERQX1JFRElSRUNULCB3
aGV0aGVyIGl0J3MgYWNjZXB0YWJsZSB0byBmYWlsIHRoZSByZWRpcmVjdCBpbiBzb21lCj4gc2l0
dWF0aW9ucyBldmVuIHdoZW4gaXQncyBhY3RpdmUsIG9yIGlmIHRoZXJlIHNob3VsZCBhbHdheXMg
YmUgYQo+IHNsb3ctcGF0aCBmYWxsYmFjay4KPiAKPiBCdXQgSSBkaXNhZ3JlZSB0aGF0IHRoZSBm
bGFnIGlzIHdvcnRobGVzcyB3aXRob3V0IGl0LiBQZW9wbGUgYXJlIHJ1bm5pbmcKPiBpbnRvIHJl
YWwgaXNzdWVzIHdpdGggdHJ5aW5nIHRvIHJ1biBYRFBfUkVESVJFQ1QgcHJvZ3JhbXMgb24gYSBk
cml2ZXIKPiB0aGF0IGRvZXNuJ3Qgc3VwcG9ydCBpdCBhdCBhbGwsIGFuZCBpdCdzIGluY3JlZGli
bHkgY29uZnVzaW5nLiBUaGUKPiBsYXRlc3QgZXhhbXBsZSBwb3BwZWQgdXAgbGl0ZXJhbGx5IHll
c3RlcmRheToKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy94ZHAtbmV3Ymllcy9DQU0tc2Na
UFBldTQ0RmVDUEdPPVF6PTAzQ3JoaGZCMUdkSjhGTkVwUHFQX0cyN2M2bVFAbWFpbC5nbWFpbC5j
b20vCgpUbyBoZWxwIHN1Y2ggY29uZnVzaW9uIHdlJ2QgYWN0dWFsbHkgaGF2ZSB0byB2YWxpZGF0
ZSB0aGUgcHJvZ3JhbQphZ2FpbnN0IHRoZSBkZXZpY2UgY2Fwcy4gQnV0IHBlcmhhcHMgSSdtIGxl
c3MgY29uY2VybmVkIGFib3V0IGEKbmV3Y29tZXIgbm90IGtub3dpbmcgaG93IHRvIHVzZSB0aGlu
Z3MgYW5kIG1vcmUgY29uY2VybmVkIGFib3V0CnByb3ZpZGluZyBhYnN0cmFjdGlvbnMgd2hpY2gg
d2lsbCBtYWtlIHByb2dyYW1zIGRlcGVuZGFibHkgd29ya2luZwphY3Jvc3MgdmVuZG9ycyBhbmQg
SFcgZ2VuZXJhdGlvbnMuCgo+ID4+IEkgdmlldyB0aGUgZmVhdHVyZSBmbGFncyBhcyBhIGxpc3Qg
b2YgZmVhdHVyZXMgKmltcGxlbWVudGVkKiBieSB0aGUKPiA+PiBkcml2ZXIuIFdoaWNoIHNob3Vs
ZCBiZSBwcmV0dHkgc3RhdGljIGluIGEgZ2l2ZW4ga2VybmVsLCBidXQgbWF5IGJlCj4gPj4gZGlm
ZmVyZW50IHRoYW4gdGhlIGZlYXR1cmVzIGN1cnJlbnRseSAqZW5hYmxlZCogb24gYSBnaXZlbiBz
eXN0ZW0gKGR1ZQo+ID4+IHRvLCBlLmcuLCB0aGUgVFggcXVldWUgc3R1ZmYpLiAgCj4gPgo+ID4g
SG0sIG1heWJlIEknbSBub3QgYmVpbmcgY2xlYXIgZW5vdWdoLiBUaGUgd2F5IFhEUF9SRURJUkVD
VCAoeW91cgo+ID4gZXhhbXBsZSkgaXMgaW1wbGVtZW50ZWQgYWNyb3NzIGRyaXZlcnMgZGlmZmVy
cyBpbiBhIG1lYW5pbmdmdWwgd2F5cy4gCj4gPiBIZW5jZSB0aGUgbmVlZCBmb3IgY29uZm9ybWFu
Y2UgdGVzdGluZy4gV2UgZG9uJ3QgaGF2ZSBhIGdvbGRlbiBTVwo+ID4gc3RhbmRhcmQgdG8gZmFs
bCBiYWNrIG9uLCBsaWtlIHdlIGRvIHdpdGggSFcgb2ZmbG9hZHMuICAKPiAKPiBJJ20gbm90IGRp
c2FncmVlaW5nIHRoYXQgd2UgbmVlZCB0byBoYXJtb25pc2Ugd2hhdCAiaW1wbGVtZW50aW5nIGEK
PiBmZWF0dXJlIiBtZWFucy4gTWF5YmUgSSdtIGp1c3Qgbm90IHN1cmUgd2hhdCB5b3UgbWVhbiBi
eSAiY29uZm9ybWFuY2UKPiB0ZXN0aW5nIj8gV2hhdCB3b3VsZCB0aGF0IGxvb2sgbGlrZSwgc3Bl
Y2lmaWNhbGx5PyAKCldlIGRldmVsb3BlZCBhIHByZXR0eSBnb29kIHNldCBvZiB0ZXN0cyBhdCBt
eSBwcmV2aW91cyBqb2IgZm9yIHRlc3RpbmcKZHJpdmVyIFhEUCBhcyB3ZWxsIGFzIGNoZWNraW5n
IHRoYXQgdGhlIG9mZmxvYWQgY29uZm9ybXMgdG8gdGhlIFNXCmJlaGF2aW9yLiBJIGFzc3VtZSBh
bnkgdmVuZG9yIHdobyB0YWtlcyBxdWFsaXR5IHNlcmlvdXNseSBoYXMKY29tcHJlaGVuc2l2ZSBY
RFAgdGVzdHMuCgpJZiB0aG9zZSB0ZXN0cyB3ZXJlIHVwc3RyZWFtIC8gY29tbW9uIHNvIHRoYXQg
d2UgY291bGQgcnVuIHRoZW0KYWdhaW5zdCBldmVyeSBpbXBsZW1lbnRhdGlvbiAtIHRoZSBmZWF0
dXJlcyB3aGljaCBhcmUgc3VwcG9ydGVkIGJ5IAphIGRyaXZlciBmYWxsIG91dCBuYXR1cmFsbHkg
b3V0IG9mIHRoZSBzZXQgb2YgdGVzdHMgd2hpY2ggcGFzc2VkLgpBbmQgdGhlIHN0cnVjdHVyZSBv
ZiB0aGUgY2FwYWJpbGl0eSBBUEkgY291bGQgYmUgYmFzZWQgb24gd2hhdCB0aGUKdGVzdHMgbmVl
ZCB0byBrbm93IHRvIG1ha2UgYSBTS0lQIHZzIEZBSUwgZGVjaXNpb24uCgpDb21tb24gdGVzdHMg
d291bGQgb2J2aW91c2x5IGFsc28gZWFzZSB0aGUgdmFsaWRhdGlvbiBidXJkZW4sIGJ1cmRlbiBv
Zgp3cml0aW5nIHRlc3RzIG9uIHZlbmRvcnMgYW5kIG1ha2UgaXQgZmFyIGVhc2llciBmb3IgbmV3
IGltcGxlbWVudGF0aW9ucwp0byBiZSBjb25maWRlbnRseSBzdWJtaXR0ZWQuCgo+IEEgc2NyaXB0
IGluIHNlbGZ0ZXN0IHRoYXQgc2V0cyB1cCBhIHJlZGlyZWN0IGJldHdlZW4gdHdvIGludGVyZmFj
ZXMKPiB0aGF0IHdlIHRlbGwgcGVvcGxlIHRvIHJ1bj8gT3Igd2hhdD8gSG93IHdvdWxkIHlvdSBj
YXRjaCwgc2F5LCB0aGF0Cj4gaXNzdWUgd2hlcmUgaWYgYSBtYWNoaW5lIGhhcyBtb3JlIENQVXMg
dGhhbiB0aGUgTklDIGhhcyBUWFFzIHRoaW5ncwo+IHN0YXJ0IGZhbGxpbmcgYXBhcnQ/CgpzZWxm
dGVzdHMgc2hvdWxkIGJlIGEgZ29vZCBwbGFjZSwgYnV0IEkgZG9uJ3QgbWluZCB0aGUgbG9jYXRp
b24uClRoZSBwb2ludCBpcyBoYXZpbmcgdGVzdHMgd2hpY2ggYW55b25lICh2ZW5kb3JzIGFuZCB1
c2VycykgY2FuIHJ1bgp0byB0ZXN0IHRoZWlyIHBsYXRmb3Jtcy4gT25lIG9mIHRoZSB0ZXN0cyBz
aG91bGQgaW5kZWVkIHRlc3QgaWYgZXZlcnkKQ1BVIGluIHRoZSBwbGF0Zm9ybSBjYW4gWERQX1JF
RElSRUNULiBTaG91bGRuJ3QgaXQgYmUgYSByYXRoZXIgdHJpdmlhbApjb21iaW5hdGlvbiBvZiB0
dW4vdmV0aCwgbWggYW5kIHRhc2tzZXQ/Cgo+ID4gQWxzbyBJREsgd2h5IHRob3NlIHRlc3RzIGFy
ZSBjb25zaWRlcmVkIHN1Y2ggYSBodWdlIGFzay4gQXMgSSBzYWlkIG1vc3QKPiA+IHZlbmRvcnMg
cHJvYmFibHkgYWxyZWFkeSBoYXZlIHRoZW0sIGFuZCBzbyBJJ2QgZ3Vlc3MgZG8gZ29vZCBkaXN0
cm9zLgo+ID4gU28gbGV0J3Mgd29yayB0b2dldGhlci4gIAo+IAo+IEkgZ3Vlc3Mgd2hhdCBJJ20g
YWZyYWlkIG9mIGlzIHRoYXQgdGhpcyB3aWxsIGVuZCB1cCBkZWxheWluZyBvciBzdGFsbGluZwo+
IGEgZml4IGZvciBhIGxvbmctc3RhbmRpbmcgaXNzdWUgKHdoaWNoIGlzIHdoYXQgSSBjb25zaWRl
ciB0aGlzIHNlcmllcyBhcwo+IHNob3duIGJ5IHRoZSBleGFtcGxlIGFib3ZlKS4gTWF5YmUgeW91
IGNhbiBhbGxldmlhdGUgdGhhdCBieSBleHBhbmRpbmcgYQo+IGJpdCBvbiB3aGF0IHlvdSBtZWFu
PwoKSSBob3BlIHdoYXQgSSB3cm90ZSBoZWxwcyBhIGxpdHRsZS4gSSdtIG5vdCBnb29kIGF0IGV4
cGxhaW5pbmcuIAoKUGVyaGFwcyBJIGhhZCBzZWVuIG9uZSB0b28gbWFueSB2ZW5kb3IgaW5jb21w
YXRpYmlsaXR5IHRvIHRydXN0IHRoYXQKYWRkaW5nIGEgZHJpdmVyIEFQSSB3aXRob3V0IGEgdmFs
aWRhdGlvbiBzdWl0ZSB3aWxsIHJlc3VsdCBpbiBzb21ldGhpbmcKdXNhYmxlIGluIHByb2R1Y3Rp
b24gc2V0dGluZ3MuIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
