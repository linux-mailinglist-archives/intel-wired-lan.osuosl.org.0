Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1302D0FC2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 12:55:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2989C87160;
	Mon,  7 Dec 2020 11:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u3wo6MHOZSIx; Mon,  7 Dec 2020 11:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FCA2870FE;
	Mon,  7 Dec 2020 11:55:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5692D1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 11:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AA8E870EF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 11:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fIY+o8kKZ3Q6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 11:55:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 49F0E870EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 11:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607342114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RFxHsnImOflCZF1OXAJjc3KHnp1DAGQjdGBQW7WJyfU=;
 b=LjI138oX5AUGPk9aYp2J0BDo9IPmAcZY3EfJ3rQbVMGVMEE2tQoWrxOLS7A1o/zA0LzwBQ
 5McOAJNP1FmYu/NyIZgsVLNnVXMLyc1sgJ6JWvoNcgTolOzZrdhoXnQqtHcFn5tkWplPht
 W4Zs586tKcdNJHdxxfK9060vN4kAvEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-1vbLW6_MOg2laIdy23Kp7w-1; Mon, 07 Dec 2020 06:55:11 -0500
X-MC-Unique: 1vbLW6_MOg2laIdy23Kp7w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ADB8F801FDB;
 Mon,  7 Dec 2020 11:55:08 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4A50C60C4D;
 Mon,  7 Dec 2020 11:54:55 +0000 (UTC)
Date: Mon, 7 Dec 2020 12:54:54 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <20201207125454.3883d315@carbon>
In-Reply-To: <eb305a4f-c189-6b32-f718-6e709ef0fa55@iogearbox.net>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <87pn3p7aiv.fsf@toke.dk>
 <eb305a4f-c189-6b32-f718-6e709ef0fa55@iogearbox.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
 Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 ast@kernel.org, Marek Majtyka <marekx.majtyka@intel.com>, brouer@redhat.com,
 Saeed Mahameed <saeed@kernel.org>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCA0IERlYyAyMDIwIDIzOjE5OjU1ICswMTAwCkRhbmllbCBCb3JrbWFubiA8ZGFuaWVs
QGlvZ2VhcmJveC5uZXQ+IHdyb3RlOgoKPiBPbiAxMi80LzIwIDY6MjAgUE0sIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiB3cm90ZToKPiA+IERhbmllbCBCb3JrbWFubiA8ZGFuaWVsQGlvZ2VhcmJv
eC5uZXQ+IHdyaXRlczogIAo+IFsuLi5dCj4gPj4gV2UgdHJpZWQgdG8gc3RhbmRhcmRpemUgb24g
YSBtaW5pbXVtIGd1YXJhbnRlZWQgYW1vdW50LCBidXQgdW5mb3J0dW5hdGVseSBub3QKPiA+PiBl
dmVyeW9uZSBzZWVtcyB0byBpbXBsZW1lbnQgaXQsIGJ1dCBJIHRoaW5rIGl0IHdvdWxkIGJlIHZl
cnkgdXNlZnVsIHRvIHF1ZXJ5Cj4gPj4gdGhpcyBmcm9tIGFwcGxpY2F0aW9uIHNpZGUsIGZvciBl
eGFtcGxlLCBjb25zaWRlciB0aGF0IGFuIGFwcCBpbnNlcnRzIGEgQlBGCj4gPj4gcHJvZyBhdCBY
RFAgZG9pbmcgY3VzdG9tIGVuY2FwIHNob3J0bHkgYmVmb3JlIFhEUF9UWCBzbyBpdCB3b3VsZCBi
ZSB1c2VmdWwgdG8KPiA+PiBrbm93IHdoaWNoIG9mIHRoZSBkaWZmZXJlbnQgZW5jYXBzIGl0IGlt
cGxlbWVudHMgYXJlIHJlYWxpc3RpY2FsbHkgcG9zc2libGUgb24KPiA+PiB0aGUgdW5kZXJseWlu
ZyBYRFAgc3VwcG9ydGVkIGRldi4gIAo+ID4gCj4gPiBIb3cgbWFueSBkaXN0aW5jdCB2YWx1ZXMg
YXJlIHRoZXJlIGluIHJlYWxpdHk/IEVub3VnaCB0byBleHByZXNzIHRoaXMgaW4KPiA+IGEgZmV3
IGZsYWdzIChYRFBfSEVBRFJPT01fMTI4LCBYRFBfSEVBRFJPT01fMTkyLCBldGM/KSwgb3IgZG9l
cyBpdCBuZWVkCj4gPiBhbiBhZGRpdGlvbmFsIGZpZWxkIHRvIGdldCB0aGUgZXhhY3QgdmFsdWU/
IElmIHdlIGltcGxlbWVudCB0aGUgbGF0dGVyCj4gPiB3ZSBhbHNvIHJ1biB0aGUgcmlzayBvZiBw
ZW9wbGUgYWN0dWFsbHkgaW1wbGVtZW50aW5nIGFsbCBzb3J0cyBvZiB3ZWlyZAo+ID4gdmFsdWVz
LCB3aGVyZWFzIGlmIHdlIGNvbnN0cmFpbiBpdCB0byBhIGZldyBkaXN0aW5jdCB2YWx1ZXMgaXQn
cyBlYXNpZXIKPiA+IHRvIHB1c2ggYmFjayBhZ2FpbnN0IGFkZGluZyBuZXcgdmFsdWVzIChhcyBp
dCdsbCBiZSBvYnZpb3VzIGZyb20gdGhlCj4gPiBhZGRpdGlvbiBvZiBuZXcgZmxhZ3MpLiAgCj4g
Cj4gSXQncyBub3QgZXZlcnl3aGVyZSBzdHJhaWdodCBmb3J3YXJkIHRvIGRldGVybWluZSB1bmZv
cnR1bmF0ZWx5LCBzZWUgYWxzbyBbMCwxXQo+IGFzIHNvbWUgZGF0YSBwb2ludHMgd2hlcmUgSmVz
cGVyIGxvb2tlZCBpbnRvIGluIHRoZSBwYXN0LCBzbyBpbiBzb21lIGNhc2VzIGl0Cj4gbWlnaHQg
ZGlmZmVyIGRlcGVuZGluZyBvbiB0aGUgYnVpbGQvcnVudGltZSBjb25maWcuLgo+IAo+ICAgIFsw
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9icGYvMTU4OTQ1MzE0Njk4Ljk3MDM1LjUyODY4Mjc5
NTEyMjU1Nzg0Njcuc3RnaXRAZmlyZXNvdWwvCj4gICAgWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2JwZi8xNTg5NDUzNDY0OTQuOTcwMzUuMTI4MDk0MDA0MTQ1NjYwNjE4MTUuc3RnaXRAZmly
ZXNvdWwvCgpZZXMsIHVuZm9ydHVuYXRlbHkgZHJpdmVycyBoYXZlIGFscmVhZHkgZ290dGVuIGNy
ZWF0aXZlIGluIHRoaXMgYXJlYSwKYW5kIHZhcmlhdGlvbnMgaGF2ZSBzbmVha2VkIGluLiAgSSBy
ZW1lbWJlciB0aGF0IHdlIHdlcmUgZm9yY2VkIHRvCmFsbG93IFNGQyBkcml2ZXIgdG8gdXNlIDEy
OCBieXRlcyBoZWFkcm9vbSwgdG8gYXZvaWQgYSBtZW1vcnkKY29ycnVwdGlvbi4gSSB0cmllZCBo
YXJkIHRvIGhhdmUgdGhlIG1pbmltdW0gMTkyIGJ5dGVzIGFzIGl0IGlzIDMKY2FjaGVsaW5lcywg
YnV0IEkgZmFpbGVkIHRvIGVuZm9yY2UgdGhpcy4KCkl0IG1pZ2h0IGJlIHZhbHVhYmxlIHRvIGV4
cG9zZSBpbmZvIG9uIHRoZSBkcml2ZXJzIGhlYWRyb29tIHNpemUsIGFzCnRoaXMgd2lsbCBhbGxv
dyBlbmQtdXNlcnMgdG8gdGFrZSBhZHZhbnRhZ2Ugb2YgdGhpcyAoaW5zdGVhZCBvZiBoYXZpbmcK
dG8gdXNlIHRoZSBsb3dlc3QgY29tbW9uIGhlYWRyb29tKSBhbmQgdXAtZnJvbnQgaW4gdXNlcnNw
YWNlIHJlamVjdGluZwp0byBsb2FkIG9uIGUuZy4gU0ZDIHRoYXQgaGF2ZSB0aGlzIGFubm95aW5n
IGxpbWl0YXRpb24uCgpCVVQgdGhpbmtpbmcgYWJvdXQgd2hhdCB0aGUgZHJpdmVycyBoZWFkcm9v
bSBzaXplIE1FQU5TIHRvIHVzZXJzcGFjZSwKSSdtIG5vdCBzdXJlIGl0IGlzIHdpc2UgdG8gZ2l2
ZSB0aGlzIGluZm8gdG8gdXNlcnNwYWNlLiAgVGhlClhEUC1oZWFkcm9vbSBpcyB1c2VkIGZvciBz
ZXZlcmFsIGtlcm5lbCBpbnRlcm5hbCB0aGluZ3MsIHRoYXQgbGltaXQgdGhlCmF2YWlsYWJsZSBz
cGFjZSBmb3IgZ3Jvd2luZyBwYWNrZXQtaGVhZHJvb20uICBFLmcuICgxKSB4ZHBfZnJhbWUgaXMK
c29tZXRoaW5nIHRoYXQgd2UgbGlrZWx5IG5lZWQgdG8gZ3JvdyAoZXZlbi10aG91Z2ggSSdtIHB1
c2hpbmcgYmFjayksCkUuZy4gKDIpIG1ldGFkYXRhIGFyZWEgd2hpY2ggU2FlZWQgaXMgbG9va2lu
ZyB0byBwb3B1bGF0ZSBmcm9tIGRyaXZlcgpjb2RlIChhbHNvIHJlZHVjZSBwYWNrZXQtaGVhZHJv
b20gZm9yIGVuY2FwLWhlYWRlcnMpLiAgU28sIHVzZXJzcGFjZQpjYW5ub3QgdXNlIHRoZSBYRFAt
aGVhZHJvb20gc2l6ZSB0byBtdWNoLi4uCgotLSAKQmVzdCByZWdhcmRzLAogIEplc3BlciBEYW5n
YWFyZCBCcm91ZXIKICBNU2MuQ1MsIFByaW5jaXBhbCBLZXJuZWwgRW5naW5lZXIgYXQgUmVkIEhh
dAogIExpbmtlZEluOiBodHRwOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9icm91ZXIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
