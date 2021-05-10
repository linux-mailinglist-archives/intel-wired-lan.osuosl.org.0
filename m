Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E303791CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 17:01:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6366F60BDA;
	Mon, 10 May 2021 15:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JgyCqrzBdEJa; Mon, 10 May 2021 15:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3143D60BD8;
	Mon, 10 May 2021 15:01:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 295411BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 15:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 174D340E6D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 15:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apscfrMA5N61 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 15:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9966D40E5F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 15:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620658891;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tQFidAMkIKIHS26NAPycpeHm02ATyGtJ8uUbhbJtKSE=;
 b=b4GhfNMM4I+FPgfMtIP3XLC9Y1XPHdtp0wqAklCTzJY7fO9Bhk8FqaeMxBQEy7Q1rQrZT0
 vGbzJk9wm4CqyY+5TCzHuEM37ZQAYwGacw7aQYBlZ3c7OkxEr8mxfXDr1TNj6u17rouW7A
 C6s9xP16zqAf3vHuuJmVTKLjkmoR1i0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-12-X-Yxeb4tNHewz_99_55bkQ-1; Mon, 10 May 2021 11:01:27 -0400
X-MC-Unique: X-Yxeb4tNHewz_99_55bkQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9700E107ACC7;
 Mon, 10 May 2021 15:01:25 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 861FC60CC5;
 Mon, 10 May 2021 15:01:11 +0000 (UTC)
Date: Mon, 10 May 2021 17:01:10 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20210510170110.52640ae8@carbon>
In-Reply-To: <87h7jaq1dd.fsf@toke.dk>
References: <CAC1LvL1NHj6n+RNYRmja2YDhkcCwREuhjaBz_k255rU1jdO8Sw@mail.gmail.com>
 <CADS2XXpjasmJKP__oHsrvv3EG8n-FjB6sqHwgQfh7QgeJ8GrrQ@mail.gmail.com>
 <CAC1LvL2Q=s8pmwKAh2615fsTFEETKp96jpoLJS+75=0ztwuLFQ@mail.gmail.com>
 <CADS2XXptoyPTBObKgp3gcRZnWzoVyZrC26tDpLWhC9YrGMSefw@mail.gmail.com>
 <CAC1LvL2zmO1ntKeAoUMkJSarJBgxNhnTva3Di4047MTKqo8rPA@mail.gmail.com>
 <CAC1LvL1Kd-TCuPk0BEQyGvEiLzgUqkZHOKQNOUnxXSY6NjFMmw@mail.gmail.com>
 <20210505130128.00006720@intel.com>
 <20210505212157.GA63266@ranger.igk.intel.com>
 <87fsz0w3xn.fsf@toke.dk>
 <20210509155033.GB36905@ranger.igk.intel.com>
 <87h7jaq1dd.fsf@toke.dk>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: Re: [Intel-wired-lan] Dropped packets mapping IRQs for adjusted
 queue counts on i40e
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
Cc: Xdp <xdp-newbies@vger.kernel.org>, T K Sourabh <sourabhtk37@gmail.com>,
 netdev@vger.kernel.org, brouer@redhat.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAxMCBNYXkgMjAyMSAxMzoyMjo1NCArMDIwMApUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+IE1hY2llaiBGaWphbGtvd3NraSA8bWFjaWVq
LmZpamFsa293c2tpQGludGVsLmNvbT4gd3JpdGVzOgo+IAo+ID4gT24gVGh1LCBNYXkgMDYsIDIw
MjEgYXQgMTI6Mjk6NDBQTSArMDIwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOiAg
Cj4gPj4gTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3
cml0ZXM6Cj4gPj4gICAKPiA+PiA+IE9uIFdlZCwgTWF5IDA1LCAyMDIxIGF0IDAxOjAxOjI4UE0g
LTA3MDAsIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6ICAKPiA+PiA+PiBadmkgRWZmcm9uIHdyb3Rl
Ogo+ID4+ID4+ICAgCj4gPj4gPj4gPiBPbiBUdWUsIE1heSA0LCAyMDIxIGF0IDQ6MDcgUE0gWnZp
IEVmZnJvbiA8emVmZnJvbkByaW90Z2FtZXMuY29tPiB3cm90ZTogIAo+ID4+ID4+ID4gPiBJJ20g
c3VzcGVjdGluZyBpdCdzIHNvbWV0aGluZyB3aXRoIGhvdyBYRFBfUkVESVJFQ1QgaXMgaW1wbGVt
ZW50ZWQgaW4KPiA+PiA+PiA+ID4gdGhlIGk0MGUgZHJpdmVyLCBidXQgSSBkb24ndCBrbm93IGlm
IHRoaXMgaXMgYSkgY3Jvc3MgZHJpdmVyIGJlaGF2aW9yLAo+ID4+ID4+ID4gPiBiKSBleHBlY3Rl
ZCBiZWhhdmlvciwgb3IgYykgYSBidWcuICAKPiA+PiA+PiA+IEkgdGhpbmsgSSd2ZSBmb3VuZCB0
aGUgaXNzdWUsIGFuZCBpdCBhcHBlYXJzIHRvIGJlIHNwZWNpZmljIHRvIGk0MGUKPiA+PiA+PiA+
IChhbmQgbWF5YmUgb3RoZXIgZHJpdmVycywgdG9vLCBidXQgbm90IFhEUCBpdHNlbGYpLgo+ID4+
ID4+ID4gCj4gPj4gPj4gPiBXaGVuIHBlcmZvcm1pbmcgdGhlIFhEUCB4bWl0LCBpNDBlIHVzZXMg
dGhlIHNtcF9wcm9jZXNzb3JfaWQoKSB0bwo+ID4+ID4+ID4gc2VsZWN0IHRoZSB0eCBxdWV1ZSAo
c2VlCj4gPj4gPj4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xMi4xL3Nv
dXJjZS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jI0wzODQ2KS4K
PiA+PiA+PiA+IEknbSBub3QgMTAwJSBjbGVhciBvbiBob3cgdGhlIENQVSBpcyBzZWxlY3RlZCAo
c2luY2Ugd2UgZG9uJ3QgdXNlCj4gPj4gPj4gPiBjb3JlcyAwIGFuZCAxKSwgd2UgZW5kIHVwIG9u
IGEgY29yZSB3aG9zZSBpZCBpcyBoaWdoZXIgdGhhbiBhbnkKPiA+PiA+PiA+IGF2YWlsYWJsZSBx
dWV1ZS4KPiA+PiA+PiA+IAo+ID4+ID4+ID4gSSdtIGdvaW5nIHRvIHRyeSB0byBtb2RpZnkgb3Vy
IElSUSBtYXBwaW5ncyB0byB0ZXN0IHRoaXMuCj4gPj4gPj4gPiAKPiA+PiA+PiA+IElmIEknbSBj
b3JyZWN0LCB0aGlzIGZlZWxzIGxpa2UgYSBidWcgdG8gbWUsIHNpbmNlIGl0IHJlcXVpcmVzIGEg
dXNlcgo+ID4+ID4+ID4gdG8gdW5kZXJzdGFuZCBsb3cgbGV2ZWwgZHJpdmVyIGRldGFpbHMgdG8g
ZG8gSVJRIHJlbWFwcGluZywgd2hpY2ggaXMgYQo+ID4+ID4+ID4gYml0IGhpZ2hlciBsZXZlbC4g
QnV0IGlmIGl0J3MgaW50ZW5kZWQsIHdlJ2xsIGp1c3QgaGF2ZSB0byBmaWd1cmUgb3V0Cj4gPj4g
Pj4gPiBob3cgdG8gd29yayBhcm91bmQgdGhpcy4gKFVuZm9ydHVuYXRlbHksIHVzaW5nIHNwbGl0
IHR4IGFuZCByeCBxdWV1ZXMKPiA+PiA+PiA+IGlzIG5vdCBwb3NzaWJsZSB3aXRoIGk0MGUsIHNv
IHRoYXQgZWFzeSBzb2x1dGlvbiBpcyB1bmF2YWlsYWJsZS4pCj4gPj4gPj4gPiAKPiA+PiA+PiA+
IC0tWnZpICAKPiA+PiA+Cj4gPj4gPiBIZXkgWnZpLCBzb3JyeSBmb3IgdGhlIGxhY2sgb2YgYXNz
aXN0YW5jZSwgdGhlcmUgaGFzIGJlZW4gc3RhdHV0b3J5IGZyZWUKPiA+PiA+IHRpbWUgaW4gUG9s
YW5kIGFuZCB0b2RheSBpJ20gaW4gdGhlIGJpcnRoZGF5IG1vZGUsIGJ1dCB3ZSBtYW5hZ2VkIHRv
Cj4gPj4gPiBkaXNjdXNzIHRoZSBpc3N1ZSB3aXRoIE1hZ251cyBhbmQgd2UgZmVlbCBsaWtlIHdl
IGNvdWxkIGhhdmUgYSBzb2x1dGlvbgo+ID4+ID4gZm9yIHRoYXQsIG1vcmUgYmVsb3cuCj4gPj4g
PiAgCj4gPj4gPj4gCj4gPj4gPj4gCj4gPj4gPj4gSXQgc2VlbXMgbGlrZSBmb3IgSW50ZWwgZHJp
dmVycywgaWdjLCBpeGdiZSwgaTQwZSwgaWNlIGFsbCBoYXZlCj4gPj4gPj4gdGhpcyBwcm9ibGVt
Lgo+ID4+ID4+IAo+ID4+ID4+IE5vdGFibHksIGlnYiwgZml4ZXMgaXQgbGlrZSBJIHdvdWxkIGV4
cGVjdC4gIAo+ID4+ID4KPiA+PiA+IGlnYiBpcyBjb3JyZWN0IGJ1dCBJIHRoaW5rIHRoYXQgd2Ug
d291bGQgbGlrZSB0byBhdm9pZCB0aGUgaW50cm9kdWN0aW9uIG9mCj4gPj4gPiBsb2NraW5nIGZv
ciBoaWdoZXIgc3BlZWQgTklDcyBpbiBYRFAgZGF0YSBwYXRoLgo+ID4+ID4KPiA+PiA+IFdlIHRh
bGtlZCB3aXRoIE1hZ251cyB0aGF0IGZvciBpNDBlIGFuZCBpY2UgdGhhdCBoYXZlIGxvdHMgb2Yg
SFcKPiA+PiA+IHJlc291cmNlcywgd2UgY291bGQgYWx3YXlzIGNyZWF0ZSB0aGUgeGRwX3Jpbmdz
IGFycmF5IG9mIG51bV9vbmxpbmVfY3B1cygpCj4gPj4gPiBzaXplIGFuZCB1c2Ugc21wX3Byb2Nl
c3Nvcl9pZCgpIGZvciBhY2Nlc3NlcywgcmVnYXJkbGVzcyBvZiB0aGUgdXNlcidzCj4gPj4gPiBj
aGFuZ2VzIHRvIHF1ZXVlIGNvdW50LiAgCj4gPj4gCj4gPj4gV2hhdCBpcyAibG90cyI/IFN5c3Rl
bXMgd2l0aCBodW5kcmVkcyBvZiBDUFVzIGV4aXN0IChhbmQgSSBzZWVtIHRvCj4gPj4gcmVjYWxs
IGFuIGlzc3VlIHdpdGgganVzdCBzdWNoIGEgc3lzdGVtIG9uIEludGVsIGhhcmR3YXJlKD8pKS4g
QWxzbywKPiA+PiB3aGF0IGlmIG51bV9vbmxpbmVfY3B1cygpIGNoYW5nZXM/ICAKPiA+Cj4gPiAi
TG90cyIgaXMgMTZrIGZvciBpY2UuIEZvciBpNDBlIGRhdGFzaGVldCB0ZWxscyB0aGF0IGl0J3Mg
b25seSAxNTM2IGZvcgo+ID4gd2hvbGUgZGV2aWNlLCBzbyBJIGJhY2sgb2ZmIGZyb20gdGhlIHN0
YXRlbWVudCB0aGF0IGk0MGUgaGFzIGEgbG90IG9mCj4gPiByZXNvdXJjZXMgOikKPiA+Cj4gPiBB
bHNvLCBzL251bV9vbmxpbmVfY3B1cygpL251bV9wb3NzaWJsZV9jcHVzKCkuICAKPiAKPiBPSywg
ZXZlbiAxNTM2IGlzIG1vcmUgdGhhbiBJIGV4cGVjdGVkOyBJIGZpZ3VyZWQgaXQgd291bGQgYmUg
d2F5IGxvd2VyLAo+IHdoaWNoIGlzIHdoeSB5b3Ugd2VyZSBzdWdnZXN0aW5nIHRvIHVzZSBudW1f
b25saW5lX2NwdXMoKSBpbnN0ZWFkOyBidXQKPiB5ZWFoLCBudW1fcG9zc2libGVfY3B1cygpIGlz
IG9idmlvdXNseSBiZXR0ZXIsIHRoZW4gOikKPiAKPiA+PiA+IFRoaXMgd2F5IHRoZSBzbXBfcHJv
Y2Vzc29yX2lkKCkgcHJvdmlkZXMgdGhlIHNlcmlhbGl6YXRpb24gYnkgaXRzZWxmIGFzCj4gPj4g
PiB3ZSdyZSB1bmRlciBuYXBpIG9uIGEgZ2l2ZW4gY3B1LCBzbyB0aGVyZSdzIG5vIG5lZWQgZm9y
IGxvY2tpbmcKPiA+PiA+IGludHJvZHVjdGlvbiAtIHRoZXJlIGlzIGEgcGVyLWNwdSBYRFAgcmlu
ZyBwcm92aWRlZC4gSWYgd2Ugd291bGQgc3RpY2sgdG8KPiA+PiA+IHRoZSBhcHByb2FjaCB3aGVy
ZSB5b3UgYWRqdXN0IHRoZSBzaXplIG9mIHhkcF9yaW5ncyBkb3duIHRvIHRoZSBzaHJpbmtlZAo+
ID4+ID4gUnggcXVldWUgY291bnQgYW5kIHVzZSBhIHNtcF9wcm9jZXNzb3JfaWQoKSAlIHZzaS0+
bnVtX3F1ZXVlX3BhaXJzIGZvcm11bGEKPiA+PiA+IHRoZW4gd2UgY291bGQgaGF2ZSBhIHJlc291
cmNlIGNvbnRlbnRpb24uIFNheSB0aGF0IHlvdSBkaWQgb24gYSAxNiBjb3JlCj4gPj4gPiBzeXN0
ZW06Cj4gPj4gPiAkIGV0aHRvb2wgLUwgZXRoMCBjb21iaW5lZCAyCj4gPj4gPgo+ID4+ID4gYW5k
IHRoZW4gbWFwcGVkIHRoZSBxMCB0byBjcHUxIGFuZCBxMSB0byBjcHUgMTEuIEJvdGggcXVldWVz
IHdpbGwgZ3JhYiB0aGUKPiA+PiA+IHhkcF9yaW5nc1sxXSwgc28gd2Ugd291bGQgaGF2ZSB0byBp
bnRyb2R1Y2UgdGhlIGxvY2tpbmcuCj4gPj4gPgo+ID4+ID4gUHJvcG9zZWQgYXBwcm9hY2ggd291
bGQganVzdCByZXN1bHQgd2l0aCBtb3JlIFR4IHF1ZXVlcyBwYWNrZWQgb250byBUeAo+ID4+ID4g
cmluZyBjb250YWluZXIgb2YgcXVldWUgdmVjdG9yLgo+ID4+ID4KPiA+PiA+IFRob3VnaHRzPyBB
bnkgY29uY2VybnM/IFNob3VsZCB3ZSBoYXZlIGEgJ2ZhbGxiYWNrJyBtb2RlIGlmIHdlIHdvdWxk
IGJlCj4gPj4gPiBvdXQgb2YgcXVldWVzPyAgCj4gPj4gCj4gPj4gWWVzLCBwbGVhc2UgOikgIAo+
ID4KPiA+IEhvdyB0byBoYXZlIGEgZmFsbGJhY2sgKGluIGRyaXZlcnMgdGhhdCBuZWVkIGl0KSBp
biBhIHdheSB0aGF0IHdvdWxkbid0Cj4gPiBodXJ0IHRoZSBzY2VuYXJpbyB3aGVyZSBxdWV1ZSBw
ZXIgY3B1IHJlcXVpcmVtZW50IGlzIHNhdGlzZmllZD8gIAo+IAo+IFdlbGwsIGl0IHNob3VsZCBi
ZSBwb3NzaWJsZSB0byBkZXRlY3QgdGhpcyBhdCBzZXR1cCB0aW1lLCByaWdodD8gTm90IHRvbwo+
IGZhbWlsaWFyIHdpdGggdGhlIGRyaXZlciBjb2RlLCBidXQgd291bGQgaXQgYmUgcG9zc2libGUg
dG8gc3RhdGljYWxseQo+IGRpc3BhdGNoIHRvIGFuIGVudGlyZWx5IGRpZmZlcmVudCBjb2RlIHBh
dGggaWYgdGhpcyBoYXBwZW5zPwoKVGhlIG5kb194ZHBfeG1pdCBjYWxsIGlzIGEgZnVuY3Rpb24g
cG9pbnRlci4gIFRodXMsIGlmIGl0IGhhcHBlbnMgYXQKdGhpcyBsZXZlbCwgdGhlbiBhdCBzZXR1
cCB0aW1lIHRoZSBkcml2ZXIgY2FuIHNpbXBseSBjaGFuZ2UgdGhlIE5ETyB0bwp1c2UgYSBUWC1x
dWV1ZS1sb2NrZWQgdmFyaWFudC4KCkkgYWN0dWFsbHkgY29uc2lkZXIgaXQgYSBidWcgdGhhdCBp
NDBlIGFsbG93IHRoaXMgbWlzY29uZmlnIHRvIGhhcHBlbi4KVGhlIGl4Z2JlIGRyaXZlciBzb2x2
ZXMgdGhlIHByb2JsZW0gYnkgcmVqZWN0aW5nIFhEUCBhdHRhY2ggaWYgdGhlCnN5c3RlbSBoYXZl
IG1vcmUgQ1BVcyB0aGFuIFRYUXMgYXZhaWxhYmxlLgoKSU1ITyBpdCBpcyBhIGJldHRlciBzb2x1
dGlvbiB0byBhZGQgc2hhcmQnZWQvcGFydGl0aW9uZWQgVFhRLWxvY2tpbmcKd2hlbiB0aGlzIHNp
dHVhdGlvbiBoYXBwZW5zLCBpbnN0ZWFkIG9mIGRlbnlpbmcgWERQIGF0dGFjaC4gIFNpbmNlIHRo
ZQpvcmlnaW5hbCBYRFAtcmVkaXJlY3QgdGhlIG5kb194ZHBfeG1pdCBjYWxsIGhhdmUgZ290dGVu
IGJ1bGtpbmcgYWRkZWQsCnRodXMgdGhlIGxvY2tpbmcgd2lsbCBiZSBhbW9ydGl6ZWQgb3ZlciB0
aGUgYnVsay4KCk9uZSBxdWVzdGlvbiBpcyBob3cgZG8gd2UgaW5mb3JtIHRoZSBlbmQtdXNlciB0
aGF0IFhEUCB3aWxsIGJlIHVzaW5nCmEgc2xpZ2h0bHkgc2xvd2VyIFRYUS1sb2NraW5nIHNjaGVt
ZT8gIEdpdmVuIHdlIGhhdmUgbm8gWERQLWZlYXR1cmVzCmV4cG9zZWQsIEkgc3VnZ2VzdCBhIHNp
bXBsZSBrZXJuZWwgbG9nIG1lc3NhZ2UsIHdoaWNoIHdlIGFscmVhZHkgaGF2ZQpmb3Igb3RoZXIg
WERQIHNpdHVhdGlvbnMgd2hlbiB0aGUgTVRVIGlzIHRvbyBsYXJnZSwgb3IgVFNPIGlzIGVuYWJs
ZWQuCgotLSAKQmVzdCByZWdhcmRzLAogIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKICBNU2MuQ1Ms
IFByaW5jaXBhbCBLZXJuZWwgRW5naW5lZXIgYXQgUmVkIEhhdAogIExpbmtlZEluOiBodHRwOi8v
d3d3LmxpbmtlZGluLmNvbS9pbi9icm91ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
