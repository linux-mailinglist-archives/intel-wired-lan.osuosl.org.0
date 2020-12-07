Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990C72D14EA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 16:40:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E43787977;
	Mon,  7 Dec 2020 15:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCy6KuZ2pcuI; Mon,  7 Dec 2020 15:40:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADC3C877E5;
	Mon,  7 Dec 2020 15:40:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7FC1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:54:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36C8E86E00
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVHmcw0cBy9T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 12:54:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF4C386DF8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 12:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607345690;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Z/UDXawBbiAwmcYELjEA0HOu1lNMEHhASoAQYhol/lw=;
 b=aFUmM6wNL7gUeBnQGB3H7F0fIiSM1x0nocGDCp05tGenvEjdqKM05N5Sq/b4Y/ogqnhzJH
 b18SihJ37Ta/roCKr1z4Kh3LL5zMJ/53Lys+ZD9LepuuMkCCh7c5ArreiEex5PD0FefVcE
 d3c5p4katiraerR745cJ7ZD1qCYtiLE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-bTM0Fr_nPyaSkXpTLdjtFw-1; Mon, 07 Dec 2020 07:54:46 -0500
X-MC-Unique: bTM0Fr_nPyaSkXpTLdjtFw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 241A1100C60A;
 Mon,  7 Dec 2020 12:54:44 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9445A5D6AB;
 Mon,  7 Dec 2020 12:54:36 +0000 (UTC)
Date: Mon, 7 Dec 2020 13:54:33 +0100
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
To: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <20201207135433.41172202@carbon>
In-Reply-To: <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
Organization: Red Hat Inc.
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mailman-Approved-At: Mon, 07 Dec 2020 15:40:40 +0000
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
 Toke =?UTF-8?B?SMO4?= =?UTF-8?B?aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 ast@kernel.org, Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCA0IERlYyAyMDIwIDE2OjIxOjA4ICswMTAwCkRhbmllbCBCb3JrbWFubiA8ZGFuaWVs
QGlvZ2VhcmJveC5uZXQ+IHdyb3RlOgoKPiBPbiAxMi80LzIwIDE6NDYgUE0sIE1hY2llaiBGaWph
bGtvd3NraSB3cm90ZToKPiA+IE9uIEZyaSwgRGVjIDA0LCAyMDIwIGF0IDAxOjE4OjMxUE0gKzAx
MDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZTogIAo+ID4+IGFsYXJkYW1AZ21haWwu
Y29tIHdyaXRlczogIAo+ID4+PiBGcm9tOiBNYXJlayBNYWp0eWthIDxtYXJla3gubWFqdHlrYUBp
bnRlbC5jb20+Cj4gPj4+Cj4gPj4+IEltcGxlbWVudCBzdXBwb3J0IGZvciBjaGVja2luZyB3aGF0
IGtpbmQgb2YgeGRwIGZ1bmN0aW9uYWxpdHkgYSBuZXRkZXYKPiA+Pj4gc3VwcG9ydHMuIFByZXZp
b3VzbHksIHRoZXJlIHdhcyBubyB3YXkgdG8gZG8gdGhpcyBvdGhlciB0aGFuIHRvIHRyeQo+ID4+
PiB0byBjcmVhdGUgYW4gQUZfWERQIHNvY2tldCBvbiB0aGUgaW50ZXJmYWNlIG9yIGxvYWQgYW4g
WERQIHByb2dyYW0gYW5kIHNlZQo+ID4+PiBpZiBpdCB3b3JrZWQuIFRoaXMgY29tbWl0IGNoYW5n
ZXMgdGhpcyBieSBhZGRpbmcgYSBuZXcgdmFyaWFibGUgd2hpY2gKPiA+Pj4gZGVzY3JpYmVzIGFs
bCB4ZHAgc3VwcG9ydGVkIGZ1bmN0aW9ucyBvbiBwcmV0dHkgZGV0YWlsZWQgbGV2ZWw6ICAKPiA+
Pgo+ID4+IEkgbGlrZSB0aGUgZGlyZWN0aW9uIHRoaXMgaXMgZ29pbmchIDopCgooTWUgdG9vLCBk
b24ndCBnZXQgZGlzY291cmFnZWQgYnkgb3VyIG5pdHBpY2tpbmcsIGtlZXAgd29ya2luZyBvbiB0
aGlzISA6LSkpCgo+ID4+ICAKPiA+Pj4gICAtIGFib3J0ZWQKPiA+Pj4gICAtIGRyb3AKPiA+Pj4g
ICAtIHBhc3MKPiA+Pj4gICAtIHR4ICAKPiAKPiBJIHN0cm9uZ2x5IHRoaW5rIHdlIHNob3VsZCBf
bm90XyBtZXJnZSBhbnkgbmF0aXZlIFhEUCBkcml2ZXIgcGF0Y2hzZXQKPiB0aGF0IGRvZXMgbm90
IHN1cHBvcnQvaW1wbGVtZW50IHRoZSBhYm92ZSByZXR1cm4gY29kZXMuIAoKSSBhZ3JlZSwgd2l0
aCBhYm92ZSBzdGF0ZW1lbnQuCgo+IENvdWxkIHdlIGluc3RlYWQgZ3JvdXAgdGhlbSB0b2dldGhl
ciBhbmQgY2FsbCB0aGlzIHNvbWV0aGluZyBsaWtlCj4gWERQX0JBU0UgZnVuY3Rpb25hbGl0eSB0
byBub3QgZ2l2ZSBhIHdyb25nIGltcHJlc3Npb24/CgpJIGRpc2FncmVlLiAgSSBjYW4gYWNjZXB0
IHRoYXQgWERQX0JBU0UgaW5jbHVkZSBhYm9ydGVkK2Ryb3ArcGFzcy4KCkkgdGhpbmsgd2UgbmVl
ZCB0byBrZWVwIFhEUF9UWCBhY3Rpb24gc2VwYXJhdGUsIGJlY2F1c2UgSSB0aGluayB0aGF0CnRo
ZXJlIGFyZSB1c2UtY2FzZXMgd2hlcmUgdGhlIHdlIHdhbnQgdG8gZGlzYWJsZSBYRFBfVFggZHVl
IHRvIGVuZC11c2VyCnBvbGljeSBvciBoYXJkd2FyZSBsaW1pdGF0aW9ucy4KClVzZS1jYXNlKDEp
OiBDbG91ZC1wcm92aWRlciB3YW50IHRvIGdpdmUgY3VzdG9tZXJzIChydW5uaW5nIFZNcykgYWJp
bGl0eQp0byBsb2FkIFhEUCBwcm9ncmFtIGZvciBERG9TIHByb3RlY3Rpb24gKG9ubHkpLCBidXQg
ZG9uJ3Qgd2FudCB0byBhbGxvdwpjdXN0b21lciB0byB1c2UgWERQX1RYICh0aGF0IGNhbiBpbXBs
ZW1lbnQgTEIgb3IgY2hlYXQgdGhlaXIgVk0KaXNvbGF0aW9uIHBvbGljeSkuCgpVc2UtY2FzZSgy
KTogRGlzYWJsZSBYRFBfVFggb24gYSBkcml2ZXIgdG8gc2F2ZSBoYXJkd2FyZSBUWC1xdWV1ZQpy
ZXNvdXJjZXMsIGFzIHRoZSB1c2UtY2FzZSBpcyBvbmx5IEREb1MuICBUb2RheSB3ZSBoYXZlIHRo
aXMgcHJvYmxlbQp3aXRoIHRoZSBpeGdiZSBoYXJkd2FyZSwgdGhhdCBjYW5ub3QgbG9hZCBYRFAg
cHJvZ3JhbXMgb24gc3lzdGVtcyB3aXRoCm1vcmUgdGhhbiAxOTIgQ1BVcy4KCgo+IElmIHRoaXMg
aXMgcHJvcGVybHkgZG9jdW1lbnRlZCB0aGF0IHRoZXNlIGFyZSBiYXNpYyBtdXN0LWhhdmUKPiBf
cmVxdWlyZW1lbnRzXywgdGhlbiB1c2VycyBhbmQgZHJpdmVyIGRldmVsb3BlcnMgYm90aCBrbm93
IHdoYXQgdGhlCj4gZXhwZWN0YXRpb25zIGFyZS4KCldlIGNhbiBzdGlsbCBkb2N1bWVudCB0aGF0
IFhEUF9UWCBpcyBhIG11c3QtaGF2ZSByZXF1aXJlbWVudCwgd2hlbiBhCmRyaXZlciBpbXBsZW1l
bnRzIFhEUC4KCgo+ID4+PiAgIC0gcmVkaXJlY3QgIAo+ID4+CgoKLS0gCkJlc3QgcmVnYXJkcywK
ICBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyCiAgTVNjLkNTLCBQcmluY2lwYWwgS2VybmVsIEVuZ2lu
ZWVyIGF0IFJlZCBIYXQKICBMaW5rZWRJbjogaHR0cDovL3d3dy5saW5rZWRpbi5jb20vaW4vYnJv
dWVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
