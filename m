Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFCB99E9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 20:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 750A186AEC;
	Thu, 22 Aug 2019 18:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_kXPiMkJFtv; Thu, 22 Aug 2019 18:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2308486B04;
	Thu, 22 Aug 2019 18:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7391BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 21:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 074BB863DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 21:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XBWZ9gqXByoD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2019 21:39:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37ACC86356
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 21:39:06 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 44so4930384qtg.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 14:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DUnGPgYSlYELq8snkCH3/ogLmFH6bABIvcNtaNXTSVc=;
 b=AXDHQob5IyMllJJoCx7ZMR8TK3SJN0l7qIATQtWf6ngixz26/p+Sey60awnPqojOTU
 ECTbzza4sfLN2MZNGWAPC5aO0a/n+iDaEPCfzPGJF911kaP0oySCyhDQenhRqoGE/46f
 SNLMK3otufWhvREna0kxOFS7STmbaaVnCSswUJsIxkc+s50sZi3CxY3Se6mco3tFynew
 5pFuHfoV0v9VCYiMjGnz4d3zyUnuTg5tAPIb9HAxcnHQZxyrEQekItEFl8cKP3TY0Kh0
 uleYqDjSSbn/nF5glEFEJye/1xrV8Du+6FWcXn0h5IoikXVIaQ5kMZ2Ddrb6jckdzwUU
 iJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DUnGPgYSlYELq8snkCH3/ogLmFH6bABIvcNtaNXTSVc=;
 b=soqZ8ZsRAVLANslv4OD7sTPk++8ydCHpD5RJvhRIjKfqki1rgZ0+gG75mogoApoLwY
 7bg4dlFl45fqZEHAbIPCuZEdDJTY+MkWC5FIN3IVVQEuZhW7D0UQjAHP34wEKkH+42Ql
 LYH/7zrG6ea5Hz9GNfEV0uwd3pDK1vVbvgfCmrLzY0jjLonwsuJtsO6i/Tc48T2Zn/YX
 vZ6B1nVhQdTzeDHy/W7PSXDZZMWMNL3ttC2nbwWzC0fE2r3zSEAqVCh8GCPxfpsztlrg
 Oh2RjOyREPqtvtCSWf/pk/OQuLW46alyLox8DWo4DX/4B7OfYsjSVqmMaZnFZR+bu53R
 FBoQ==
X-Gm-Message-State: APjAAAUj1cscZ3+u3Zd5nE1mnOL0AeYgeL81U94K8NINERvU4+Q7v/D4
 TFD5pUPNtafR9W1lWkh6f4Zx7QcoV8E7bK6m12g=
X-Google-Smtp-Source: APXvYqyy0hvvRHykzg7i0XuhNgycH/ll14e3xUl/E4u+m0BQJBHvXmJ9XL1xul4O3FjgxkcePIYvjvZNX2y+J4rwF4w=
X-Received: by 2002:a0c:db12:: with SMTP id d18mr19832519qvk.199.1566423544935; 
 Wed, 21 Aug 2019 14:39:04 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
 <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
 <f7d0f7a5-e664-8b72-99c7-63275aff4c18@samsung.com>
 <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
In-Reply-To: <CAKgT0UcCKiM1Ys=vWxctprN7fzWcBCk-PCuKB-8=RThM=CqLSQ@mail.gmail.com>
From: William Tu <u9012063@gmail.com>
Date: Wed, 21 Aug 2019 14:38:28 -0700
Message-ID: <CALDO+SZCbxEEwCS6MyHk-Cp_LJ33N=QFqwZ8uRm0e-PBRgxRYw@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
X-Mailman-Approved-At: Thu, 22 Aug 2019 18:21:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Ilya Maximets <i.maximets@samsung.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgOTo1NyBBTSBBbGV4YW5kZXIgRHV5Y2sKPGFsZXhhbmRl
ci5kdXlja0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgOToy
MiBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPiB3cm90ZToKPiA+Cj4g
PiBPbiAyMS4wOC4yMDE5IDQ6MTcsIEFsZXhhbmRlciBEdXljayB3cm90ZToKPiA+ID4gT24gVHVl
LCBBdWcgMjAsIDIwMTkgYXQgODo1OCBBTSBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1
bmcuY29tPiB3cm90ZToKPiA+ID4+Cj4gPiA+PiBPbiAyMC4wOC4yMDE5IDE4OjM1LCBBbGV4YW5k
ZXIgRHV5Y2sgd3JvdGU6Cj4gPiA+Pj4gT24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgODoxOCBBTSBJ
bHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPiB3cm90ZToKPiA+ID4+Pj4KPiA+
ID4+Pj4gVHggY29kZSBkb2Vzbid0IGNsZWFyIHRoZSBkZXNjcmlwdG9yIHN0YXR1cyBhZnRlciBj
bGVhbmluZy4KPiA+ID4+Pj4gU28sIGlmIHRoZSBidWRnZXQgaXMgbGFyZ2VyIHRoYW4gbnVtYmVy
IG9mIHVzZWQgZWxlbXMgaW4gYSByaW5nLCBzb21lCj4gPiA+Pj4+IGRlc2NyaXB0b3JzIHdpbGwg
YmUgYWNjb3VudGVkIHR3aWNlIGFuZCB4c2tfdW1lbV9jb21wbGV0ZV90eCB3aWxsIG1vdmUKPiA+
ID4+Pj4gcHJvZF90YWlsIGZhciBiZXlvbmQgdGhlIHByb2RfaGVhZCBicmVha2luZyB0aGUgY29t
bGV0aW9uIHF1ZXVlIHJpbmcuCj4gPiA+Pj4+Cj4gPiA+Pj4+IEZpeCB0aGF0IGJ5IGxpbWl0aW5n
IHRoZSBudW1iZXIgb2YgZGVzY3JpcHRvcnMgdG8gY2xlYW4gYnkgdGhlIG51bWJlcgo+ID4gPj4+
PiBvZiB1c2VkIGRlc2NyaXB0b3JzIGluIHRoZSB0eCByaW5nLgo+ID4gPj4+Pgo+ID4gPj4+PiBG
aXhlczogODIyMWM1ZWJhOGMxICgiaXhnYmU6IGFkZCBBRl9YRFAgemVyby1jb3B5IFR4IHN1cHBv
cnQiKQo+ID4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBJbHlhIE1heGltZXRzIDxpLm1heGltZXRzQHNh
bXN1bmcuY29tPgo+ID4gPj4+Cj4gPiA+Pj4gSSdtIG5vdCBzdXJlIHRoaXMgaXMgdGhlIGJlc3Qg
d2F5IHRvIGdvLiBNeSBwcmVmZXJlbmNlIHdvdWxkIGJlIHRvCj4gPiA+Pj4gaGF2ZSBzb21ldGhp
bmcgaW4gdGhlIHJpbmcgdGhhdCB3b3VsZCBwcmV2ZW50IHVzIGZyb20gcmFjaW5nIHdoaWNoIEkK
PiA+ID4+PiBkb24ndCB0aGluayB0aGlzIHJlYWxseSBhZGRyZXNzZXMuIEkgYW0gcHJldHR5IHN1
cmUgdGhpcyBjb2RlIGlzIHNhZmUKPiA+ID4+PiBvbiB4ODYgYnV0IEkgd291bGQgYmUgd29ycmll
ZCBhYm91dCB3ZWFrIG9yZGVyZWQgc3lzdGVtcyBzdWNoIGFzCj4gPiA+Pj4gUG93ZXJQQy4KPiA+
ID4+Pgo+ID4gPj4+IEl0IG1pZ2h0IG1ha2Ugc2Vuc2UgdG8gbG9vayBhdCBhZGRpbmcgdGhlIGVv
cF9kZXNjIGxvZ2ljIGxpa2Ugd2UgaGF2ZQo+ID4gPj4+IGluIHRoZSByZWd1bGFyIHBhdGggd2l0
aCBhIHByb3BlciBiYXJyaWVyIGJlZm9yZSB3ZSB3cml0ZSBpdCBhbmQgYWZ0ZXIKPiA+ID4+PiB3
ZSByZWFkIGl0LiBTbyBmb3IgZXhhbXBsZSB3ZSBjb3VsZCBob2xkIG9mIG9uIHdyaXRpbmcgdGhl
IGJ5dGVjb3VudAo+ID4gPj4+IHZhbHVlIHVudGlsIHRoZSBlbmQgb2YgYW4gaXRlcmF0aW9uIGFu
ZCBjYWxsIHNtcF93bWIgYmVmb3JlIHdlIHdyaXRlCj4gPiA+Pj4gaXQuIFRoZW4gb24gdGhlIGNs
ZWFudXAgd2UgY291bGQgcmVhZCBpdCBhbmQgaWYgaXQgaXMgbm9uLXplcm8gd2UgdGFrZQo+ID4g
Pj4+IGFuIHNtcF9ybWIgYmVmb3JlIHByb2NlZWRpbmcgZnVydGhlciB0byBwcm9jZXNzIHRoZSBU
eCBkZXNjcmlwdG9yIGFuZAo+ID4gPj4+IGNsZWFyaW5nIHRoZSB2YWx1ZS4gT3RoZXJ3aXNlIHRo
aXMgY29kZSBpcyBnb2luZyB0byBqdXN0IGtlZXAgcG9wcGluZwo+ID4gPj4+IHVwIHdpdGggaXNz
dWVzLgo+ID4gPj4KPiA+ID4+IEJ1dCwgdW5saWtlIHJlZ3VsYXIgY2FzZSwgeGRwIHplcm8tY29w
eSB4bWl0IGFuZCBjbGVhbiBmb3IgcGFydGljdWxhcgo+ID4gPj4gdHggcmluZyBhbHdheXMgaGFw
cGVucyBpbiB0aGUgc2FtZSBOQVBJIGNvbnRleHQgYW5kIGV2ZW4gb24gdGhlIHNhbWUKPiA+ID4+
IENQVSBjb3JlLgo+ID4gPj4KPiA+ID4+IEkgc2F3IHRoZSAnZW9wX2Rlc2MnIG1hbmlwdWxhdGlv
bnMgaW4gcmVndWxhciBjYXNlIGFuZCB5ZXMsIHdlIGNvdWxkCj4gPiA+PiB1c2UgJ25leHRfdG9f
d2F0Y2gnIGZpZWxkIGp1c3QgYXMgYSBmbGFnIG9mIGRlc2NyaXB0b3IgZXhpc3RlbmNlLAo+ID4g
Pj4gYnV0IGl0IHNlZW1zIHVubmVjZXNzYXJpbHkgY29tcGxpY2F0ZWQuIEFtIEkgbWlzc2luZyBz
b21ldGhpbmc/Cj4gPiA+Pgo+ID4gPgo+ID4gPiBTbyBpcyBpdCBhbHdheXMgaW4gdGhlIHNhbWUg
TkFQSSBjb250ZXh0Py4gSSBmb3Jnb3QsIEkgd2FzIHRoaW5raW5nCj4gPiA+IHRoYXQgc29tZWhv
dyB0aGUgc29ja2V0IGNvdWxkIHBvc3NpYmx5IG1ha2UgdXNlIG9mIFhEUCBmb3IgdHJhbnNtaXQu
Cj4gPgo+ID4gQUZfWERQIHNvY2tldCBvbmx5IHRyaWdnZXJzIHR4IGludGVycnVwdCBvbiBuZG9f
eHNrX2FzeW5jX3htaXQoKSB3aGljaAo+ID4gaXMgdXNlZCBpbiB6ZXJvLWNvcHkgbW9kZS4gUmVh
bCB4bWl0IGhhcHBlbnMgaW5zaWRlCj4gPiBpeGdiZV9wb2xsKCkKPiA+ICAtPiBpeGdiZV9jbGVh
bl94ZHBfdHhfaXJxKCkKPiA+ICAgICAtPiBpeGdiZV94bWl0X3pjKCkKPiA+Cj4gPiBUaGlzIHNo
b3VsZCBiZSBub3QgcG9zc2libGUgdG8gYm91bmQgYW5vdGhlciBYRFAgc29ja2V0IHRvIHRoZSBz
YW1lIG5ldGRldgo+ID4gcXVldWUuCj4gPgo+ID4gSXQgYWxzbyBwb3NzaWJsZSB0byB4bWl0IGZy
YW1lcyBpbiB4ZHBfcmluZyB3aGlsZSBwZXJmb3JtaW5nIFhEUF9UWC9SRURJUkVDVAo+ID4gYWN0
aW9ucy4gUkVESVJFQ1QgY291bGQgaGFwcGVuIGZyb20gZGlmZmVyZW50IG5ldGRldiB3aXRoIGRp
ZmZlcmVudCBOQVBJCj4gPiBjb250ZXh0LCBidXQgdGhpcyBvcGVyYXRpb24gaXMgYm91bmQgdG8g
c3BlY2lmaWMgQ1BVIGNvcmUgYW5kIGVhY2ggY29yZSBoYXMKPiA+IGl0cyBvd24geGRwX3Jpbmcu
Cj4gPgo+ID4gSG93ZXZlciwgSSdtIG5vdCBhbiBleHBlcnQgaGVyZS4KPiA+IEJqw7ZybiwgbWF5
YmUgeW91IGNvdWxkIGNvbW1lbnQgb24gdGhpcz8KPiA+Cj4gPiA+Cj4gPiA+IEFzIGZhciBhcyB0
aGUgbG9naWMgdG8gdXNlIEkgd291bGQgYmUgZ29vZCB3aXRoIGp1c3QgdXNpbmcgYSB2YWx1ZSB5
b3UKPiA+ID4gYXJlIGFscmVhZHkgc2V0dGluZyBzdWNoIGFzIHRoZSBieXRlY291bnQgdmFsdWUu
IEFsbCB0aGF0IHdvdWxkIG5lZWQKPiA+ID4gdG8gaGFwcGVuIGlzIHRvIGd1YXJhbnRlZSB0aGF0
IHRoZSB2YWx1ZSBpcyBjbGVhcmVkIGluIHRoZSBUeCBwYXRoLiBTbwo+ID4gPiBpZiB5b3UgY2xl
YXIgdGhlIGJ5dGVjb3VudCBpbiBpeGdiZV9jbGVhbl94ZHBfdHhfaXJxIHlvdSBjb3VsZAo+ID4g
PiB0aGVvcmV0aWNhbGx5IGp1c3QgdXNlIHRoYXQgYXMgd2VsbCB0byBmbGFnIHRoYXQgYSBkZXNj
cmlwdG9yIGhhcyBiZWVuCj4gPiA+IHBvcHVsYXRlZCBhbmQgaXMgcmVhZHkgdG8gYmUgY2xlYW5l
ZC4gQXNzdW1pbmcgdGhlIGxvZ2ljIGFib3V0IHRoaXMKPiA+ID4gYWxsIGJlaW5nIGluIHRoZSBz
YW1lIE5BUEkgY29udGV4dCBhbnl3YXkgeW91IHdvdWxkbid0IG5lZWQgdG8gbWVzcwo+ID4gPiB3
aXRoIHRoZSBiYXJyaWVyIHN0dWZmIEkgbWVudGlvbmVkIGJlZm9yZS4KPiA+Cj4gPiBDaGVja2lu
ZyB0aGUgbnVtYmVyIG9mIHVzZWQgZGVzY3MsIGkuZS4gbmV4dF90b191c2UgLSBuZXh0X3RvX2Ns
ZWFuLAo+ID4gbWFrZXMgaXRlcmF0aW9uIGluIHRoaXMgZnVuY3Rpb24gbG9naWNhbGx5IGVxdWFs
IHRvIHRoZSBpdGVyYXRpb24gaW5zaWRlCj4gPiAnaXhnYmVfeHNrX2NsZWFuX3R4X3JpbmcoKScu
IERvIHlvdSB0aGluayB3ZSBuZWVkIHRvIGNoYW5nZSB0aGUgbGF0ZXIKPiA+IGZ1bmN0aW9uIHRv
byB0byBmb2xsb3cgc2FtZSAnYnl0ZWNvdW50JyBhcHByb2FjaD8gSSBkb24ndCBsaWtlIGhhdmlu
Zwo+ID4gdHdvIGRpZmZlcmVudCB3YXlzIHRvIGRldGVybWluZSBudW1iZXIgb2YgdXNlZCBkZXNj
cmlwdG9ycyBpbiB0aGUgc2FtZSBmaWxlLgo+ID4KPiA+IEJlc3QgcmVnYXJkcywgSWx5YSBNYXhp
bWV0cy4KPgo+IEFzIGZhciBhcyBpeGdiZV9jbGVhbl94ZHBfdHhfaXJxKCkgdnMgaXhnYmVfeHNr
X2NsZWFuX3R4X3JpbmcoKSwgSQo+IHdvdWxkIHNheSB0aGF0IGlmIHlvdSBnb3QgcmlkIG9mIGJ1
ZGdldCBhbmQgZnJhbWVkIHRoaW5ncyBtb3JlIGxpa2UKPiBob3cgaXhnYmVfeHNrX2NsZWFuX3R4
X3Jpbmcgd2FzIGZyYW1lZCB3aXRoIHRoZSBudGMgIT0gbnR1IGJlaW5nCj4gb2J2aW91cyBJIHdv
dWxkIHByZWZlciB0byBzZWUgdXMgZ28gdGhhdCByb3V0ZS4KPgo+IFJlYWxseSB0aGVyZSBpcyBu
byBuZWVkIGZvciBidWRnZXQgaW4gaXhnYmVfY2xlYW5feGRwX3R4X2lycSgpIGlmIHlvdQo+IGFy
ZSBnb2luZyB0byBiZSB3b3JraW5nIHdpdGggYSBzdGF0aWMgbnR1IHZhbHVlIHNpbmNlIHlvdSB3
aWxsIG9ubHkKPiBldmVyIHByb2Nlc3Mgb25lIGl0ZXJhdGlvbiB0aHJvdWdoIHRoZSByaW5nIGFu
eXdheS4gSXQgbWlnaHQgbWFrZSBtb3JlCj4gc2Vuc2UgaWYgeW91IGp1c3Qgd2VudCB0aHJvdWdo
IGFuZCBnb3QgcmlkIG9mIGJ1ZGdldCBhbmQgaSwgYW5kCj4gaW5zdGVhZCB1c2VkIG50YyBhbmQg
bnR1IGxpa2Ugd2hhdCB3YXMgZG9uZSBpbgo+IGl4Z2JlX3hza19jbGVhbl90eF9yaW5nKCkuCj4K
PiBUaGFua3MuCj4KPiAtIEFsZXgKCk5vdCBmYW1pbGlhciB3aXRoIHRoZSBkcml2ZXIgZGV0YWls
cy4KSSB0ZXN0ZWQgdGhpcyBwYXRjaCBhbmQgdGhlIGlzc3VlIG1lbnRpb25lZCBpbiBPVlMgbWFp
bGluZyBsaXN0LgpodHRwczovL3d3dy5tYWlsLWFyY2hpdmUuY29tL292cy1kZXZAb3BlbnZzd2l0
Y2gub3JnL21zZzM1MzYyLmh0bWwKYW5kIGluZGVlZCB0aGUgcHJvYmxlbSBnb2VzIGF3YXkuIEJ1
dCBJIHNhdyBhIGh1Z2UgcGVyZm9ybWFuY2UgZHJvcCwKbXkgQUZfWERQIHR4IHBlcmZvcm1hbmNl
IGRyb3BzIGZyb20gPjlNcHBzIHRvIDw1TXBwcy4KClRlc3RlZCB1c2luZyBrZXJuZWwgNS4zLjAt
cmMzKwowMzowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6IEludGVsIENvcnBvcmF0aW9uIEV0aGVy
bmV0IENvbnRyb2xsZXIKMTAtR2lnYWJpdCBYNTQwLUFUMiAocmV2IDAxKQpTdWJzeXN0ZW06IElu
dGVsIENvcnBvcmF0aW9uIEV0aGVybmV0IDEwRyAyUCBYNTQwLXQgQWRhcHRlcgpDb250cm9sOiBJ
L08tIE1lbSsgQnVzTWFzdGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZHQVNub29wLSBQYXJFcnIt
ClN0ZXBwaW5nLSBTRVJSLSBGYXN0QjJCLSBEaXNJTlR4KwoKUmVnYXJkcywKV2lsbGlhbQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
