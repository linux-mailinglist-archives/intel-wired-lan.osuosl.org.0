Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845082D1D6C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 23:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D45387713;
	Mon,  7 Dec 2020 22:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pt46n8GkhuqH; Mon,  7 Dec 2020 22:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9827E87641;
	Mon,  7 Dec 2020 22:38:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8114F1BF389
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78E9687713
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFYBOqIfjMGo for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 22:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B04F187641
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 22:38:03 +0000 (UTC)
Message-ID: <9a224bc0ae7853178f2db7e2c1abe94500032018.camel@kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607380683;
 bh=uQu2GXYTBm90vG9wxg3tl/ZjwTerCKY5alr6hiEup4o=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=kETtHEx6rH1Nu/8tLKusIF6RIF2tkDZe5QXQ2p71noP16EowHvtIcO/WmvcLmUMV5
 UinhSNY7N+PfCZ452p2BlZTiTrWarr5O5FbMx6hORiD7PAhsf0DXxjncqaCkINYiM9
 nPsoKtqew6ESyfUz/9EReK0a1ts+D5xET25EqzW3UUrSJp6gFkPpnQOLKoXHKrcQYr
 Hk6hhU0aNXD4r+KwVcSNexnPTh9HRpUu5y5XsZZWT3btsB0BhgmhXZo6qcgZ3n1oXL
 xArZKs7WBb+q2oPStJZi8Mq0fAhqmV8Y5SKV/UhYVkx7DZ3Wq+FwZR09opklyuvmif
 SEo9U70J3C38Q==
From: Saeed Mahameed <saeed@kernel.org>
To: John Fastabend <john.fastabend@gmail.com>, Jesper Dangaard Brouer
 <jbrouer@redhat.com>, Daniel Borkmann <daniel@iogearbox.net>
Date: Mon, 07 Dec 2020 14:38:01 -0800
In-Reply-To: <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, netdev@vger.kernel.org,
 Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIwLTEyLTA3IGF0IDEyOjUyIC0wODAwLCBKb2huIEZhc3RhYmVuZCB3cm90ZToK
PiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIHdyb3RlOgo+ID4gT24gRnJpLCA0IERlYyAyMDIwIDE2
OjIxOjA4ICswMTAwCj4gPiBEYW5pZWwgQm9ya21hbm4gPGRhbmllbEBpb2dlYXJib3gubmV0PiB3
cm90ZToKPiA+IAo+ID4gPiBPbiAxMi80LzIwIDE6NDYgUE0sIE1hY2llaiBGaWphbGtvd3NraSB3
cm90ZToKPiA+ID4gPiBPbiBGcmksIERlYyAwNCwgMjAyMCBhdCAwMToxODozMVBNICswMTAwLCBU
b2tlIEjDuGlsYW5kLQo+ID4gPiA+IErDuHJnZW5zZW4gd3JvdGU6ICAKPiA+ID4gPiA+IGFsYXJk
YW1AZ21haWwuY29tIHdyaXRlczogIAo+ID4gPiA+ID4gPiBGcm9tOiBNYXJlayBNYWp0eWthIDxt
YXJla3gubWFqdHlrYUBpbnRlbC5jb20+Cj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJbXBsZW1l
bnQgc3VwcG9ydCBmb3IgY2hlY2tpbmcgd2hhdCBraW5kIG9mIHhkcAo+ID4gPiA+ID4gPiBmdW5j
dGlvbmFsaXR5IGEgbmV0ZGV2Cj4gPiA+ID4gPiA+IHN1cHBvcnRzLiBQcmV2aW91c2x5LCB0aGVy
ZSB3YXMgbm8gd2F5IHRvIGRvIHRoaXMgb3RoZXIKPiA+ID4gPiA+ID4gdGhhbiB0byB0cnkKPiA+
ID4gPiA+ID4gdG8gY3JlYXRlIGFuIEFGX1hEUCBzb2NrZXQgb24gdGhlIGludGVyZmFjZSBvciBs
b2FkIGFuIFhEUAo+ID4gPiA+ID4gPiBwcm9ncmFtIGFuZCBzZWUKPiA+ID4gPiA+ID4gaWYgaXQg
d29ya2VkLiBUaGlzIGNvbW1pdCBjaGFuZ2VzIHRoaXMgYnkgYWRkaW5nIGEgbmV3Cj4gPiA+ID4g
PiA+IHZhcmlhYmxlIHdoaWNoCj4gPiA+ID4gPiA+IGRlc2NyaWJlcyBhbGwgeGRwIHN1cHBvcnRl
ZCBmdW5jdGlvbnMgb24gcHJldHR5IGRldGFpbGVkCj4gPiA+ID4gPiA+IGxldmVsOiAgCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IEkgbGlrZSB0aGUgZGlyZWN0aW9uIHRoaXMgaXMgZ29pbmchIDopCj4g
PiAKPiA+IChNZSB0b28sIGRvbid0IGdldCBkaXNjb3VyYWdlZCBieSBvdXIgbml0cGlja2luZywg
a2VlcCB3b3JraW5nIG9uCj4gPiB0aGlzISA6LSkpCj4gPiAKPiA+ID4gPiA+ICAKPiA+ID4gPiA+
ID4gICAtIGFib3J0ZWQKPiA+ID4gPiA+ID4gICAtIGRyb3AKPiA+ID4gPiA+ID4gICAtIHBhc3MK
PiA+ID4gPiA+ID4gICAtIHR4ICAKPiA+ID4gCj4gPiA+IEkgc3Ryb25nbHkgdGhpbmsgd2Ugc2hv
dWxkIF9ub3RfIG1lcmdlIGFueSBuYXRpdmUgWERQIGRyaXZlcgo+ID4gPiBwYXRjaHNldAo+ID4g
PiB0aGF0IGRvZXMgbm90IHN1cHBvcnQvaW1wbGVtZW50IHRoZSBhYm92ZSByZXR1cm4gY29kZXMu
IAo+ID4gCj4gPiBJIGFncmVlLCB3aXRoIGFib3ZlIHN0YXRlbWVudC4KPiA+IAo+ID4gPiBDb3Vs
ZCB3ZSBpbnN0ZWFkIGdyb3VwIHRoZW0gdG9nZXRoZXIgYW5kIGNhbGwgdGhpcyBzb21ldGhpbmcg
bGlrZQo+ID4gPiBYRFBfQkFTRSBmdW5jdGlvbmFsaXR5IHRvIG5vdCBnaXZlIGEgd3JvbmcgaW1w
cmVzc2lvbj8KPiA+IAo+ID4gSSBkaXNhZ3JlZS4gIEkgY2FuIGFjY2VwdCB0aGF0IFhEUF9CQVNF
IGluY2x1ZGUgYWJvcnRlZCtkcm9wK3Bhc3MuCj4gPiAKWERQX0JBU0UgaXMgYSB3ZWlyZCBuYW1l
IGkgdm90ZTogIApYRFBfRkxBR19SWCwKWERQX0ZMQUdfVFgsClhEUF9GTEFHX1JFRElSRUNULApY
RFBfRkxBR19BRl9YRFAsClhEUF9GTEFHX0FGWERQX1pDCgo+ID4gSSB0aGluayB3ZSBuZWVkIHRv
IGtlZXAgWERQX1RYIGFjdGlvbiBzZXBhcmF0ZSwgYmVjYXVzZSBJIHRoaW5rCj4gPiB0aGF0Cj4g
PiB0aGVyZSBhcmUgdXNlLWNhc2VzIHdoZXJlIHRoZSB3ZSB3YW50IHRvIGRpc2FibGUgWERQX1RY
IGR1ZSB0byBlbmQtCj4gPiB1c2VyCj4gPiBwb2xpY3kgb3IgaGFyZHdhcmUgbGltaXRhdGlvbnMu
Cj4gCj4gSG93IGFib3V0IHdlIGRpc2NvdmVyIHRoaXMgYXQgbG9hZCB0aW1lIHRob3VnaC4gTWVh
bmluZyBpZiB0aGUKPiBwcm9ncmFtCj4gZG9lc24ndCB1c2UgWERQX1RYIHRoZW4gdGhlIGhhcmR3
YXJlIGNhbiBza2lwIHJlc291cmNlIGFsbG9jYXRpb25zCj4gZm9yCj4gaXQuIEkgdGhpbmsgd2Ug
Y291bGQgaGF2ZSB2ZXJpZmllciBvciBleHRyYSBwYXNzIGRpc2NvdmVyIHRoZSB1c2Ugb2YKPiBY
RFBfVFggYW5kIHRoZW4gcGFzcyBhIGJpdCBkb3duIHRvIGRyaXZlciB0byBlbmFibGUvZGlzYWJs
ZSBUWCBjYXBzLgo+IAoKKzEsIGhvdyBhYm91dCB3ZSBhbHNvIGF0dGFjaCBzb21lIGF0dHJpYnV0
ZXMgdG8gdGhlIHByb2dyYW0gdGhhdCB3b3VsZAp0ZWxsIHRoZSBrZXJuZWwvZHJpdmVyIGhvdyB0
byBwcmVwYXJlIGNvbmZpZ3VyZSBpdHNlbGYgZm9yIHRoZSBuZXcKcHJvZ3JhbSA/CgpBdHRyaWJ1
dGVzIGxpa2UgaG93IG11Y2ggaGVhZHJvb20gdGhlIHByb2dyYW0gbmVlZHMsIHdoYXQgbWV0YSBk
YXRhCmRyaXZlciBtdXN0IHByb3ZpZGUsIHNob3VsZCB0aGUgZHJpdmVyIGRvIGNzdW0gb24gdHgs
IGV0YyAuLiAKCnNvbWUgYXR0cmlidXRlIGNhbiBiZSBleHRyYWN0ZWQgZnJvbSB0aGUgYnl0ZSBj
b2RlL2xvZ2ljIG90aGVycyBhcmUKc3RhdGVkIGV4cGxpY2l0bHkgaW4gc29tZSBwcmVkZWZpbmVk
IHNlY3Rpb24gaW4gdGhlIFhEUCBwcm9nIGl0c2VsZi4KCk9uIGEgc2Vjb25kIHRob3VnaHQsIHRo
aXMgY291bGQgYmUgZGlzcnVwdGl2ZSwgdXNlcnMgd2lsbCBldmVudHVhbGx5CndhbnQgdG8gcmVw
bGFjZSBYRFAgcHJvZ3MsIGFuZCB0aGV5IG1pZ2h0IHdhbnQgYSBwZXJzaXN0ZW50IGNvbmZpZwpw
cmlvciB0byBsb2FkaW5nL3JlbG9hZGluZyBhbnkgcHJvZyB0byBhdm9pZCByZWNvbmZpZ3MgKHBh
Y2tldCBkcm9wcykKYmV0d2VlbiBwcm9ncy4KCj4gPiBVc2UtY2FzZSgxKTogQ2xvdWQtcHJvdmlk
ZXIgd2FudCB0byBnaXZlIGN1c3RvbWVycyAocnVubmluZyBWTXMpCj4gPiBhYmlsaXR5Cj4gPiB0
byBsb2FkIFhEUCBwcm9ncmFtIGZvciBERG9TIHByb3RlY3Rpb24gKG9ubHkpLCBidXQgZG9uJ3Qg
d2FudCB0bwo+ID4gYWxsb3cKPiA+IGN1c3RvbWVyIHRvIHVzZSBYRFBfVFggKHRoYXQgY2FuIGlt
cGxlbWVudCBMQiBvciBjaGVhdCB0aGVpciBWTQo+ID4gaXNvbGF0aW9uIHBvbGljeSkuCj4gCj4g
Tm90IGZvbGxvd2luZy4gV2hhdCBpbnRlcmZhY2UgZG8gdGhleSB3YW50IHRvIGFsbG93IGxvYWRp
bmcgb24/IElmCj4gaXRzCj4gdGhlIFZNIGludGVyZmFjZSB0aGVuIEkgZG9uJ3Qgc2VlIGhvdyBp
dCBtYXR0ZXJzLiBGcm9tIG91dHNpZGUgdGhlCj4gVk0gdGhlcmUgc2hvdWxkIGJlIG5vIHdheSB0
byBkaXNjb3ZlciBpZiBpdHMgZG9uZSBpbiBWTSBvciBpbiB0YyBvcgo+IHNvbWUgb3RoZXIgc3Rh
Y2suCj4gCj4gSWYgaXRzIGRvaW5nIHNvbWUgb25sb2FkaW5nL29mZmxvYWRpbmcgSSB3b3VsZCBh
c3N1bWUgdGhleSBuZWVkIHRvCj4gZW5zdXJlIHRoZSBpc29sYXRpb24sIGV0Yy4gaXMgc3RpbGwg
bWFpbnRhaW5lZCBiZWNhdXNlIHlvdSBjYW4ndAo+IGxldCBvbmUgVk1zIHByb2dyYW0gd29yayBv
biBvdGhlciBWTXMgcGFja2V0cyBzYWZlbHkuCj4gCj4gU28gd2hhdCBkaWQgSSBtaXNzLCBhYm92
ZSBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUuCj4gCj4gPiBVc2UtY2FzZSgyKTogRGlzYWJsZSBY
RFBfVFggb24gYSBkcml2ZXIgdG8gc2F2ZSBoYXJkd2FyZSBUWC1xdWV1ZQo+ID4gcmVzb3VyY2Vz
LCBhcyB0aGUgdXNlLWNhc2UgaXMgb25seSBERG9TLiAgVG9kYXkgd2UgaGF2ZSB0aGlzCj4gPiBw
cm9ibGVtCj4gPiB3aXRoIHRoZSBpeGdiZSBoYXJkd2FyZSwgdGhhdCBjYW5ub3QgbG9hZCBYRFAg
cHJvZ3JhbXMgb24gc3lzdGVtcwo+ID4gd2l0aAo+ID4gbW9yZSB0aGFuIDE5MiBDUFVzLgo+IAo+
IFRoZSBpeGdiZSBpc3N1ZXMgaXMganVzdCBhIGJ1ZyBvciBtaXNzaW5nLWZlYXR1cmUgaW4gbXkg
b3Bpbmlvbi4KPiAKPiBJIHRoaW5rIHdlIGp1c3QgZG9jdW1lbnQgdGhhdCBYRFBfVFggY29uc3Vt
ZXMgcmVzb3VyY2VzIGFuZCBpZiB1c2Vycwo+IGNhcmUgdGhleSBzaG91bGRuJ3QgdXNlIFhEX1RY
IGluIHByb2dyYW1zIGFuZCBpbiB0aGF0IGNhc2UgaGFyZHdhcmUKPiBzaG91bGQgdmlhIHByb2dy
YW0gZGlzY292ZXJ5IG5vdCBhbGxvY2F0ZSB0aGUgcmVzb3VyY2UuIFRoaXMgc2VlbXMKPiBjbGVh
bmVyIGluIG15IG9waW5pb24gdGhlbiBtb3JlIGJpdHMgZm9yIGZlYXR1cmVzLgo+IAo+ID4gCj4g
PiA+IElmIHRoaXMgaXMgcHJvcGVybHkgZG9jdW1lbnRlZCB0aGF0IHRoZXNlIGFyZSBiYXNpYyBt
dXN0LWhhdmUKPiA+ID4gX3JlcXVpcmVtZW50c18sIHRoZW4gdXNlcnMgYW5kIGRyaXZlciBkZXZl
bG9wZXJzIGJvdGgga25vdyB3aGF0Cj4gPiA+IHRoZQo+ID4gPiBleHBlY3RhdGlvbnMgYXJlLgo+
ID4gCj4gPiBXZSBjYW4gc3RpbGwgZG9jdW1lbnQgdGhhdCBYRFBfVFggaXMgYSBtdXN0LWhhdmUg
cmVxdWlyZW1lbnQsIHdoZW4KPiA+IGEKPiA+IGRyaXZlciBpbXBsZW1lbnRzIFhEUC4KPiAKPiAr
MQo+IAoKSG8gYWJvdXQgeGRwIHJlZGlyZWN0ID8gCmRvIHdlIHN0aWxsIG5lZWQgdG8gbG9hZCBh
IG5vLW9wIHByb2dyYW0gb24gdGhlIGVncmVzcyBuZXRkZXYgc28gaXQKd291bGQgYWxsb2NhdGUg
dGhlIHhkcCB0eC9yZWRpcmVjdCBxdWV1ZXMgPyAKCkFkZGluZyB0aGUgYWJvdmUgZGlzY292ZXJ5
IGZlYXR1cmUgd2lsbCBicmVhayB4ZHAgcmVkaXJlY3QgbmF0aXZlIG1vZGUKYW5kIHdpbGwgcmVx
dWlyZSB0byBoYXZlIGEgc3BlY2lhbCBmbGFnIGZvciB4ZHBfcmVkaXJlY3QsIHNvIGl0CmFjdHVh
bGx5IG1ha2VzIG1vcmUgc2Vuc2UgdG8gaGF2ZSBhIHVuaXF1ZSBrbm9iIHRvIHR1cm4gb24gWERQ
IHR4LCBmb3IKdGhlIHJlZGlyZWN0IHVzZSBjYXNlLgoKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
