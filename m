Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DB83038C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2019 22:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2FE0D88411;
	Thu, 30 May 2019 20:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SN0PyEOJo889; Thu, 30 May 2019 20:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78B7A8841A;
	Thu, 30 May 2019 20:48:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4AF11BF867
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 20:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A945A203CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 20:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JVqMu9heEURM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2019 20:48:17 +0000 (UTC)
X-Greylist: delayed 00:06:55 by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 97FD7203B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 20:48:17 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id l128so4874830qke.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 13:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=f5E0mA5EJgN67XjHcWSoimcwtGSg4IIi6lDpuHoTf3A=;
 b=VnKcVxjYZkufLSXo1mQwurs8pn/4FCkyQ0vGBFkGv1IZrARf5Jm9s0v6giq65h8/x6
 5pbSNgiRsEYkGbuxQSNjs+JnFABotZ3P+QESihl7yx5J4mn9wm7ugjS90dyXzdGUmigd
 +ick3x8X/c3HpUrZx9ogoTOYK35ZZk6s9kK+qWu8+SLtz70WL3qRV8X8ED5ieIXHga2r
 0nONmLMtCBZi267IWB6AOyXJa7hCO2Mrd0xtqU4TpOVlIrfWU+Pts79BPRYpEoVVtrKQ
 /fyZ+bK6HVy0bLS+hIX2Ac2lZx7L1OFSC0iXanWx0dffcJkV1Zo3sA44E/j8226OA0dp
 XS8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=f5E0mA5EJgN67XjHcWSoimcwtGSg4IIi6lDpuHoTf3A=;
 b=NOULQ9lIUP0Zm4585V40oY2aiZ+KRR0Hk7Z0K4p9+2vbtTn2F5KJKDZeHAHmYNiCuc
 z+e1i7BK6Jl/ufTgIaMllYHCq5tknnHdNNVGIpad1HbMN58PIhRtVlItXdtziznDcd1D
 1fLYIGFreay3sHqe/hH9gmflheqYOWBwvcLJwrl7JDtsc0A5SPJgyPaS6IizpYVby8hi
 PyWV3TyTwLCIuFG3VwTxSxqTNi/mrnFWmftpNe2jp3QonLKYV1Y4xyPbAZMs6EJonn3O
 JZoGEsZ6FLbAfGZrFtR6klwSE6woHwn068iYQfS/k6mUHri7x2CkgRaKA8mscjfFE6TE
 P/hg==
X-Gm-Message-State: APjAAAVdwNpC0A53InrFeitSEgEUByCl0oQsQgDEbaASnepgqpE9+Azn
 MM520+zq4ww7wm4kC+oCUgE/mg==
X-Google-Smtp-Source: APXvYqzxEUVPph26eeKVeACUsWd/jmLha5zO0+5SbjUPvatAIj8u4pwF7Ljv8oB1l7zJefBKZ/MoNQ==
X-Received: by 2002:a37:640f:: with SMTP id y15mr5025019qkb.79.1559248881371; 
 Thu, 30 May 2019 13:41:21 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id a64sm1712514qkd.73.2019.05.30.13.41.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 30 May 2019 13:41:20 -0700 (PDT)
Date: Thu, 30 May 2019 13:41:15 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Patel, Vedang" <vedang.patel@intel.com>
Message-ID: <20190530134115.36f13bb5@cakuba.netronome.com>
In-Reply-To: <861F87D1-6A0B-438D-BBD5-6A15BDA398F7@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
 <20190528154510.41b50723@cakuba.netronome.com>
 <62E2DD49-AC21-46DE-8E5B-EBC67230FA7D@intel.com>
 <20190529121440.46c40967@cakuba.netronome.com>
 <A9D05E0B-FC24-4904-B3E5-1E069C92A3DA@intel.com>
 <20190529140620.68fa8e64@cakuba.netronome.com>
 <861F87D1-6A0B-438D-BBD5-6A15BDA398F7@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/7] taprio: Add the
 skeleton to enable hardware offloading
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAzMCBNYXkgMjAxOSAwMDoyMTozOSArMDAwMCwgUGF0ZWwsIFZlZGFuZyB3cm90ZToK
PiA+IE9uIE1heSAyOSwgMjAxOSwgYXQgMjowNiBQTSwgSmFrdWIgS2ljaW5za2kgPGpha3ViLmtp
Y2luc2tpQG5ldHJvbm9tZS5jb20+IHdyb3RlOgo+ID4gT24gV2VkLCAyOSBNYXkgMjAxOSAyMDow
NToxNiArMDAwMCwgUGF0ZWwsIFZlZGFuZyB3cm90ZTogIAo+ID4+IFtTZW5kaW5nIHRoZSBlbWFp
bCBhZ2FpbiBzaW5jZSB0aGUgbGFzdCBvbmUgd2FzIHJlamVjdGVkIGJ5IG5ldGRldiBiZWNhdXNl
IGl0IHdhcyBodG1sLl0KPiA+PiAgIAo+ID4+PiBPbiBNYXkgMjksIDIwMTksIGF0IDEyOjE0IFBN
LCBKYWt1YiBLaWNpbnNraSA8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbT4gd3JvdGU6Cj4g
Pj4+IAo+ID4+PiBPbiBXZWQsIDI5IE1heSAyMDE5IDE3OjA2OjQ5ICswMDAwLCBQYXRlbCwgVmVk
YW5nIHdyb3RlOiAgICAKPiA+Pj4+PiBPbiBNYXkgMjgsIDIwMTksIGF0IDM6NDUgUE0sIEpha3Vi
IEtpY2luc2tpIDxqYWt1Yi5raWNpbnNraUBuZXRyb25vbWUuY29tPiB3cm90ZToKPiA+Pj4+PiBP
biBUdWUsIDI4IE1heSAyMDE5IDEwOjQ2OjQ0IC0wNzAwLCBWZWRhbmcgUGF0ZWwgd3JvdGU6ICAg
ICAgCj4gPj4+Pj4+IEZyb206IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0Bp
bnRlbC5jb20+Cj4gPj4+Pj4+IAo+ID4+Pj4+PiBUaGlzIGFkZHMgdGhlIFVBUEkgYW5kIHRoZSBj
b3JlIGJpdHMgbmVjZXNzYXJ5IGZvciB1c2Vyc3BhY2UgdG8KPiA+Pj4+Pj4gcmVxdWVzdCBoYXJk
d2FyZSBvZmZsb2FkaW5nIHRvIGJlIGVuYWJsZWQuCj4gPj4+Pj4+IAo+ID4+Pj4+PiBUaGUgZnV0
dXJlIGNvbW1pdHMgd2lsbCBlbmFibGUgaHlicmlkIG9yIGZ1bGwgb2ZmbG9hZGluZyBmb3IgdGFw
cmlvLiBUaGlzCj4gPj4+Pj4+IGNvbW1pdCBzZXRzIHVwIHRoZSBpbmZyYXN0cnVjdHVyZSB0byBl
bmFibGUgaXQgdmlhIHRoZSBuZXRsaW5rIGludGVyZmFjZS4KPiA+Pj4+Pj4gCj4gPj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0BpbnRlbC5j
b20+Cj4gPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFZlZGFuZyBQYXRlbCA8dmVkYW5nLnBhdGVsQGlu
dGVsLmNvbT4gICAgICAKPiA+Pj4+PiAKPiA+Pj4+PiBPdGhlciBxZGlzY3Mgb2ZmbG9hZCBieSBk
ZWZhdWx0LCB0aGlzIG9mZmxvYWQtbGV2ZWwgc2VsZWN0aW9uIGhlcmUgaXMgYQo+ID4+Pj4+IGxp
dHRsZSBiaXQgaW5jb25zaXN0ZW50IHdpdGggdGhhdCA6KAo+ID4+Pj4+ICAgCj4gPj4+PiBUaGVy
ZSBhcmUgMiBkaWZmZXJlbnQgb2ZmbG9hZCBtb2RlcyBpbnRyb2R1Y2VkIGluIHRoaXMgcGF0Y2gu
Cj4gPj4+PiAKPiA+Pj4+IDEuIFR4dGltZSBvZmZsb2FkIG1vZGU6IFRoaXMgbW9kZSBkZXBlbmRz
IG9uIHNraXBfc29ja19jaGVjayBmbGFnIGJlaW5nIHNldCBpbiB0aGUgZXRmIHFkaXNjLiBBbHNv
LCBpdCByZXF1aXJlcyBzb21lIG1hbnVhbCBjb25maWd1cmF0aW9uIHdoaWNoIG1pZ2h0IGJlIHNw
ZWNpZmljIHRvIHRoZSBuZXR3b3JrIGFkYXB0ZXIgY2FyZC4gRm9yIGV4YW1wbGUsIGZvciB0aGUg
aTIxMCBjYXJkLCB0aGUgdXNlciB3aWxsIGhhdmUgdG8gcm91dGUgYWxsIHRoZSB0cmFmZmljIHRv
IHRoZSBoaWdoZXN0IHByaW9yaXR5IHF1ZXVlIGFuZCBpbnN0YWxsIGV0ZiBxZGlzYyB3aXRoIG9m
ZmxvYWQgZW5hYmxlZCBvbiB0aGF0IHF1ZXVlLiBTbywgSSBkb27igJl0IHRoaW5rIHRoaXMgbW9k
ZSBzaG91bGQgYmUgZW5hYmxlZCBieSBkZWZhdWx0LiAgICAKPiA+Pj4gCj4gPj4+IEV4Y2VsbGVu
dCwgaXQgbG9va3MgbGlrZSB0aGVyZSB3aWxsIGJlIGRyaXZlciBwYXRjaGVzIG5lY2Vzc2FyeSBm
b3IKPiA+Pj4gdGhpcyBvZmZsb2FkIHRvIGZ1bmN0aW9uLCBhbHNvIGl0IHNlZW1zIHlvdXIgb2Zm
bG9hZCBlbmFibGUgZnVuY3Rpb24KPiA+Pj4gc3RpbGwgY29udGFpbnMgdGhpcyBhZnRlciB0aGUg
c2VyaWVzOgo+ID4+PiAKPiA+Pj4gCS8qIEZJWE1FOiBlbmFibGUgb2ZmbG9hZGluZyAqLwo+ID4+
PiAKPiA+Pj4gUGxlYXNlIG9ubHkgcG9zdCBvZmZsb2FkIGluZnJhc3RydWN0dXJlIHdoZW4gZnVs
bHkgZmxlc2hlZCBvdXQgYW5kIHdpdGgKPiA+Pj4gZHJpdmVyIHBhdGNoZXMgbWFraW5nIHVzZSBv
ZiBpdC4gIAo+ID4+IAo+ID4+IFRoZSBhYm92ZSBjb21tZW50IHJlZmVycyB0byB0aGUgZnVsbCBv
ZmZsb2FkIG1vZGUgZGVzY3JpYmVkIGJlbG93LiBJdAo+ID4+IGlzIG5vdCBuZWVkZWQgZm9yIHR4
dGltZSBvZmZsb2FkIG1vZGUuIFR4dGltZSBvZmZsb2FkIG1vZGUgaXMKPiA+PiBlc3NlbnRpYWxs
eSBzZXR0aW5nIHRoZSB0cmFuc21pdCB0aW1lIGZvciBlYWNoIHBhY2tldCAgZGVwZW5kaW5nIG9u
Cj4gPj4gd2hhdCBpbnRlcnZhbCBpdCBpcyBnb2luZyB0byBiZSB0cmFuc21pdHRlZCBpbnN0ZWFk
IG9mIHJlbHlpbmcgb24gdGhlCj4gPj4gaHJ0aW1lcnMgdG8gb3BlbiBnYXRlcyBhbmQgc2VuZCBw
YWNrZXRzLiBNb3JlIGRldGFpbHMgYWJvdXQgd2h5Cj4gPj4gZXhhY3RseSB0aGlzIGlzIGRvbmUg
aXMgbWVudGlvbmVkIGluIHBhdGNoICM1WzFdIG9mIHRoaXMgc2VyaWVzLiAgCj4gPiAKPiA+IEZy
b20gbG9va2luZyBhdCB0aGlzIHNldCBpdCBsb29rcyBsaWtlIEkgY2FuIGFkZCB0aGF0IHFkaXNj
IHRvIGFueQo+ID4gbmV0ZGV2IG5vdyAqd2l0aCogb2ZmbG9hZCwgYW5kIGFzIGxvbmcgYXMgdGhl
IGRyaXZlciBoYXMgX2FueV8KPiA+IG5kb19zZXR1cF90YyBpbXBsZW1lbnRhdGlvbiB0YXByaW8g
d2lsbCBub3QgcmV0dXJuIGFuIGVycm9yLiAKPiA+IAo+ID4gUGVyaGFwcyB0aGlzIG1vZGUgb2Yg
b3BlcmF0aW9uIHNob3VsZCBub3QgYmUgY2FsbGVkIG9mZmxvYWQ/ICBDYW4ndCAKPiA+IHRoZSBF
VEYgcWRpc2MgdW5kZXJuZWF0aCBydW4gaW4gc29mdHdhcmUgbW9kZT8KPiA+ICAgCj4gWWVhaCwg
aXQgZG9lc27igJl0IG1ha2UgbXVjaCBzZW5zZSB0byBydW4gRVRGIGluIHNvZnR3YXJlIG1vZGUg
YnV0IGl0Cj4gY2FuIGJlIGRvbmUuIFdoYXQgYWJvdXQgbmFtaW5nIGl0IHR4dGltZS1hc3Npc3Qg
aW5zdGVhZD8KClNvdW5kcyBnb29kISAgdHh0aW1lLiogd29ya3MgZm9yIG1lLgoKPiA+PiBXaGF0
IHdlIGNhbiBkbyBpcyBqdXN0IGFkZCB0aGUgdHh0aW1lIG9mZmxvYWQgcmVsYXRlZCBmbGFnIGFu
ZCBhZGQKPiA+PiB0aGUgZnVsbCBvZmZsb2FkIGZsYWcgd2hlbmV2ZXIgdGhlIGRyaXZlciBiaXRz
IGFyZSByZWFkeS4gRG9lcyB0aGF0Cj4gPj4gYWRkcmVzcyB5b3VyIGNvbmNlcm4/ICAKPiA+IAo+
ID4gVGhhdCB3b3VsZCBiZSBhIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbi4gIEFuZCBwbGVh
c2UgcmVtb3ZlIGFsbCB0aGUKPiA+IG90aGVyIHVudXNlZCBjb2RlIGZyb20gdGhlIHNlcmllcy4g
IEFGQUlDVCB0aGlzIGlzIHdoYXQgdGhlIGVuYWJsZQo+ID4gb2ZmbG9hZCBmdW5jdGlvbiBsb29r
cyBsaWtlIGFmdGVyIHlvdXIgc2V0IC0gd2hhdCdzIHRoZSBwb2ludCBvZiB0aGUKPiA+ICdlcnIn
IHZhcmlhYmxlPwo+ID4gICAKPiBZZXMuIFRoaXMgcGF0Y2ggc2VlbXMgdG8gaGF2ZSBhIGZldyBy
ZWFsbHkgc2lsbHkgbWlzdGFrZXMuIEkKPiBhcG9sb2dpemUgZm9yIHRoYXQuIEkgd2lsbGwgY2xl
YW4gaXQgdXAgYW5kIHNlbmQgYW5vdGhlciB2ZXJzaW9uIG9mCj4gdGhlIHNlcmllcy4gVGhlcmUg
aXMgbm8gdW51c2VkIGNvZGUgYW55d2hlcmUgZWxzZSBpbiB0aGUgc2VyaWVzLgoKVGhhbmtzIQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
