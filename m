Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F2C2CF0E8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 16:41:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E242987B9A;
	Fri,  4 Dec 2020 15:41:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rg9DZ+4tevcj; Fri,  4 Dec 2020 15:41:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A78287B55;
	Fri,  4 Dec 2020 15:41:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B75A1BF30D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 15:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 323F0204B1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 15:41:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SP6H-2j35Pk5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 15:41:49 +0000 (UTC)
X-Greylist: delayed 00:20:19 by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D930203A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 15:41:49 +0000 (UTC)
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@iogearbox.net>)
 id 1klCtR-0006nT-Tm; Fri, 04 Dec 2020 16:21:10 +0100
Received: from [85.7.101.30] (helo=pc-9.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1klCtR-000Orp-JL; Fri, 04 Dec 2020 16:21:09 +0100
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
Date: Fri, 4 Dec 2020 16:21:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20201204124618.GA23696@ranger.igk.intel.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.4/26007/Thu Dec  3 14:13:31 2020)
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
 hawk@kernel.org, netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvNC8yMCAxOjQ2IFBNLCBNYWNpZWogRmlqYWxrb3dza2kgd3JvdGU6Cj4gT24gRnJpLCBE
ZWMgMDQsIDIwMjAgYXQgMDE6MTg6MzFQTSArMDEwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IHdyb3RlOgo+PiBhbGFyZGFtQGdtYWlsLmNvbSB3cml0ZXM6Cj4+PiBGcm9tOiBNYXJlayBNYWp0
eWthIDxtYXJla3gubWFqdHlrYUBpbnRlbC5jb20+Cj4+Pgo+Pj4gSW1wbGVtZW50IHN1cHBvcnQg
Zm9yIGNoZWNraW5nIHdoYXQga2luZCBvZiB4ZHAgZnVuY3Rpb25hbGl0eSBhIG5ldGRldgo+Pj4g
c3VwcG9ydHMuIFByZXZpb3VzbHksIHRoZXJlIHdhcyBubyB3YXkgdG8gZG8gdGhpcyBvdGhlciB0
aGFuIHRvIHRyeQo+Pj4gdG8gY3JlYXRlIGFuIEFGX1hEUCBzb2NrZXQgb24gdGhlIGludGVyZmFj
ZSBvciBsb2FkIGFuIFhEUCBwcm9ncmFtIGFuZCBzZWUKPj4+IGlmIGl0IHdvcmtlZC4gVGhpcyBj
b21taXQgY2hhbmdlcyB0aGlzIGJ5IGFkZGluZyBhIG5ldyB2YXJpYWJsZSB3aGljaAo+Pj4gZGVz
Y3JpYmVzIGFsbCB4ZHAgc3VwcG9ydGVkIGZ1bmN0aW9ucyBvbiBwcmV0dHkgZGV0YWlsZWQgbGV2
ZWw6Cj4+Cj4+IEkgbGlrZSB0aGUgZGlyZWN0aW9uIHRoaXMgaXMgZ29pbmchIDopCj4+Cj4+PiAg
IC0gYWJvcnRlZAo+Pj4gICAtIGRyb3AKPj4+ICAgLSBwYXNzCj4+PiAgIC0gdHgKCkkgc3Ryb25n
bHkgdGhpbmsgd2Ugc2hvdWxkIF9ub3RfIG1lcmdlIGFueSBuYXRpdmUgWERQIGRyaXZlciBwYXRj
aHNldCB0aGF0IGRvZXMKbm90IHN1cHBvcnQvaW1wbGVtZW50IHRoZSBhYm92ZSByZXR1cm4gY29k
ZXMuIENvdWxkIHdlIGluc3RlYWQgZ3JvdXAgdGhlbSB0b2dldGhlcgphbmQgY2FsbCB0aGlzIHNv
bWV0aGluZyBsaWtlIFhEUF9CQVNFIGZ1bmN0aW9uYWxpdHkgdG8gbm90IGdpdmUgYSB3cm9uZyBp
bXByZXNzaW9uPwpJZiB0aGlzIGlzIHByb3Blcmx5IGRvY3VtZW50ZWQgdGhhdCB0aGVzZSBhcmUg
YmFzaWMgbXVzdC1oYXZlIF9yZXF1aXJlbWVudHNfLCB0aGVuCnVzZXJzIGFuZCBkcml2ZXIgZGV2
ZWxvcGVycyBib3RoIGtub3cgd2hhdCB0aGUgZXhwZWN0YXRpb25zIGFyZS4KCj4+PiAgIC0gcmVk
aXJlY3QKPj4KPj4gRHJpdmVycyBjYW4gaW4gcHJpbmNpcGxlIGltcGxlbWVudCBzdXBwb3J0IGZv
ciB0aGUgWERQX1JFRElSRUNUIHJldHVybgo+PiBjb2RlIChhbmQgY2FsbGluZyB4ZHBfZG9fcmVk
aXJlY3QoKSkgd2l0aG91dCBpbXBsZW1lbnRpbmcgbmRvX3hkcF94bWl0KCkKPj4gZm9yIGJlaW5n
IHRoZSAqdGFyZ2V0KiBvZiBhIHJlZGlyZWN0LiBXaGlsZSBteSBxdWljayBncmVwcGluZyBkb2Vz
bid0Cj4+IHR1cm4gdXAgYW55IGRyaXZlcnMgdGhhdCBkbyBvbmx5IG9uZSBvZiB0aGVzZSByaWdo
dCBub3csIEkgdGhpbmsgd2UndmUKPj4gaGFkIGV4YW1wbGVzIG9mIGl0IGluIHRoZSBwYXN0LCBz
byBpdCB3b3VsZCBwcm9iYWJseSBiZSBiZXR0ZXIgdG8gc3BsaXQKPj4gdGhlIHJlZGlyZWN0IGZl
YXR1cmUgZmxhZyBpbiB0d28uCj4+Cj4+IFRoaXMgd291bGQgYWxzbyBtYWtlIGl0IHRyaXZpYWwg
dG8gcmVwbGFjZSB0aGUgY2hlY2sgaW4gX194ZHBfZW5xdWV1ZSgpCj4+IChpbiBkZXZtYXAuYykg
ZnJvbSBsb29raW5nIGF0IHdoZXRoZXIgdGhlIG5kbyBpcyBkZWZpbmVkLCBhbmQganVzdAo+PiBj
aGVja2luZyB0aGUgZmxhZy4gSXQgd291bGQgYmUgZ3JlYXQgaWYgeW91IGNvdWxkIGRvIHRoaXMg
YXMgcGFydCBvZgo+PiB0aGlzIHNlcmllcy4KPj4KPj4gTWF5YmUgd2UgY291bGQgZXZlbiBtYWtl
IHRoZSAncmVkaXJlY3QgdGFyZ2V0JyBmbGFnIGJlIHNldCBhdXRvbWF0aWNhbGx5Cj4+IGlmIGEg
ZHJpdmVyIGltcGxlbWVudHMgbmRvX3hkcF94bWl0Pwo+IAo+ICsxCj4gCj4+PiAgIC0gemVybyBj
b3B5Cj4+PiAgIC0gaGFyZHdhcmUgb2ZmbG9hZC4KCk9uZSBvdGhlciB0aGluZyB0aGF0IGlzIHF1
aXRlIGFubm95aW5nIHRvIGZpZ3VyZSBvdXQgc29tZXRpbWVzIGFuZCBub3QgYWx3YXlzCm9idmlv
dXMgZnJvbSByZWFkaW5nIHRoZSBkcml2ZXIgY29kZSAoYW5kIGl0IG1heSBldmVuIGRpZmZlciBk
ZXBlbmRpbmcgb24gaG93CnRoZSBkcml2ZXIgd2FzIGJ1aWx0IDovKSBpcyBob3cgbXVjaCBYRFAg
aGVhZHJvb20gYSBkcml2ZXIgcmVhbGx5IHByb3ZpZGVzLgoKV2UgdHJpZWQgdG8gc3RhbmRhcmRp
emUgb24gYSBtaW5pbXVtIGd1YXJhbnRlZWQgYW1vdW50LCBidXQgdW5mb3J0dW5hdGVseSBub3QK
ZXZlcnlvbmUgc2VlbXMgdG8gaW1wbGVtZW50IGl0LCBidXQgSSB0aGluayBpdCB3b3VsZCBiZSB2
ZXJ5IHVzZWZ1bCB0byBxdWVyeQp0aGlzIGZyb20gYXBwbGljYXRpb24gc2lkZSwgZm9yIGV4YW1w
bGUsIGNvbnNpZGVyIHRoYXQgYW4gYXBwIGluc2VydHMgYSBCUEYKcHJvZyBhdCBYRFAgZG9pbmcg
Y3VzdG9tIGVuY2FwIHNob3J0bHkgYmVmb3JlIFhEUF9UWCBzbyBpdCB3b3VsZCBiZSB1c2VmdWwg
dG8Ka25vdyB3aGljaCBvZiB0aGUgZGlmZmVyZW50IGVuY2FwcyBpdCBpbXBsZW1lbnRzIGFyZSBy
ZWFsaXN0aWNhbGx5IHBvc3NpYmxlIG9uCnRoZSB1bmRlcmx5aW5nIFhEUCBzdXBwb3J0ZWQgZGV2
LgoKVGhhbmtzLApEYW5pZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
