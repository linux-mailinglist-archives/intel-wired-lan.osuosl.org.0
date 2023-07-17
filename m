Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFC1755D19
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 09:38:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 207F5403D8;
	Mon, 17 Jul 2023 07:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 207F5403D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689579518;
	bh=Z/14FJhlTzKYXvmHDyXCgK3PAcKopamtJnNhgAwkels=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LE2ONGZgQ9b6qGacTQLtb+lX/Bx5vyMZI3mkEWlCBpDpVdLNE/2qEJ00sCM6xXd6s
	 prLbjl19x9BK8Qsj2JWLxdF4wLnOBRsBd+0TVMMDw7RS4WMrbGZZb7d+S8QllHhGsm
	 RvjQIMDY+QrEikqRAeWtD/lRvjoNeeeBHKZEsa9C1bEOuYCJ0opvsPPOuCc/An3ocM
	 VRrQGxnu18qHGxyhAEWgrtsV/K1ltnMQ3eIlsako4cfbw1nWnZWd1J0N0qvCpmNBxh
	 qUssKCq91p4z15NjdfMMD6f7jjw/9hvJslRCYv7XzCgM2ma4H6Lrn33mhCYTMKODT5
	 IvnyG56LSAV6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9YRU4DmPl7u; Mon, 17 Jul 2023 07:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BE07403B4;
	Mon, 17 Jul 2023 07:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BE07403B4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED6A41BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE02960BD6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE02960BD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1yzagNpQNNWZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 07:38:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4036D6061B
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4036D6061B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:38:29 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EDA193F1A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 07:38:22 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-7659c6caeaeso562407685a.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 00:38:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689579502; x=1692171502;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MAlGaXtehqgWPJcNsE/u7WTIL9sCas4Vh5dXm4S4XCE=;
 b=OE85+rQ1cpcPhEMzEipYcT4YdTEDhu70HegVPWvIPFIAGv/+awNoR6gQHjkOhbop99
 VXvo9ohGkLwu92ciGJI+n9fzfd1mWnfiOO2s69p+jScpnXAjDF4XmpxCVM/zFH1mWSXr
 H231ZHNfzCEnPFT5eWZbjcU2Nrk6oq7mlGCAT6MwsD8fKBmpGGDpy5XXw9I4VD2QS5it
 7ijIG9k48D39DnaFOjzssewaSSnFGChuVpafAWnl9VutIKks3n0b+bvS4LR649VySMC2
 oakBSGa5pg4p16IOpSSroyDUtiX4P9dtXpUQwp//TBqZnfDDJgwdhCX65dfgJQ9tV6i6
 Nfnw==
X-Gm-Message-State: ABy/qLa4F+t8Ws+Z6lbzwP6seGwO+6GOufJpwN6963j3OXR6U5G50Dyq
 jDtyf+NlcaSnyl8bTiFv2IwDyTPszZXPBxV7idWvN36Jmxl04gaizGIrcx9h/76WvphuvMFdJtS
 99NOiBHuS0mmElrgsJj+W37toMFe9lUiDkWuo+gBmuFyQw/NHa7aAHGKGqMRmCg4=
X-Received: by 2002:a05:620a:2403:b0:767:1938:93c7 with SMTP id
 d3-20020a05620a240300b00767193893c7mr15175710qkn.43.1689579501871; 
 Mon, 17 Jul 2023 00:38:21 -0700 (PDT)
X-Google-Smtp-Source: APBJJlEXndrCszhc01Ang+8MTUDFaoQ/GVyMz5a6ACO3CyrHv7+mb6yN+kdZAUzYEE85a5rEttlirRaBhZZJcInJGl0=
X-Received: by 2002:a05:620a:2403:b0:767:1938:93c7 with SMTP id
 d3-20020a05620a240300b00767193893c7mr15175696qkn.43.1689579501610; Mon, 17
 Jul 2023 00:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230714050541.2765246-1-kai.heng.feng@canonical.com>
 <20230714145445.GA354014@bhelgaas>
In-Reply-To: <20230714145445.GA354014@bhelgaas>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Mon, 17 Jul 2023 15:38:09 +0800
Message-ID: <CAAd53p4Owt_ygt2f=38M0X2MxnPsXv=BHzSLRbprwW208MUVdQ@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1689579502;
 bh=MAlGaXtehqgWPJcNsE/u7WTIL9sCas4Vh5dXm4S4XCE=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=howuZi/7PYcojVb3qGJ0EgzeoY1Xaf4Q8+ZXKqb0TAYf8RrO+/RhY9jkjqV8uAqoa
 TW3de6o/RoacauZsHcXurIuGhYre24yYmYX/QWlFNTcCxumOEczTd5y0PknefWRrh4
 XVktk3VjtCxRSGmTHZ8eUXKVwZ/sCZFUss22x+R59qkIDxcPVpQXwAENeF7NJDrjhN
 EENAcsWuICdV1L6TW1o4KdPNl+3JeIuYODvYg0QjKqAOmvoSZG14SYAawCvGJ5E1Yo
 K3t0SpY2xzRu6vGCVwQk4P0soYjZcKt+qBPV5OjzoTHJaCtxZxpL2uRttDitB9ThjD
 6cK/V55DdYFhw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=howuZi/7
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Ignore AER reset when device
 is suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Aaron Ma <aaron.ma@canonical.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

WytDYyBBYXJvbl0KCk9uIEZyaSwgSnVsIDE0LCAyMDIzIGF0IDEwOjU04oCvUE0gQmpvcm4gSGVs
Z2FhcyA8aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIEZyaSwgSnVsIDE0LCAyMDIz
IGF0IDAxOjA1OjQxUE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4gPiBXaGVuIGEgc3lz
dGVtIHRoYXQgY29ubmVjdHMgdG8gYSBUaHVuZGVyYm9sdCBkb2NrIGVxdWlwcGVkIHdpdGggSTIy
NSwKPiA+IGxpa2UgSFAgVGh1bmRlcmJvbHQgRG9jayBHNCwgSTIyNSBzdG9wcyB3b3JraW5nIGFm
dGVyIFMzIHJlc3VtZToKPiA+IC4uLgo+Cj4gPiBUaGUgaXNzdWUgaXMgdGhhdCB0aGUgUFRNIHJl
cXVlc3RzIGFyZSBzZW5kaW5nIGJlZm9yZSBkcml2ZXIgcmVzdW1lcyB0aGUKPiA+IGRldmljZS4g
U2luY2UgdGhlIGlzc3VlIGNhbiBhbHNvIGJlIG9ic2VydmVkIG9uIFdpbmRvd3MsIGl0J3MgcXVp
dGUKPiA+IGxpa2VseSBhIGZpcm13YXJlL2hhcmR3YXJlIGxpbWl0YXRpb24uCj4KPiBEb2VzIHRo
aXMgbWVhbiB3ZSBkaWRuJ3QgZGlzYWJsZSBQVE0gY29ycmVjdGx5IG9uIHN1c3BlbmQ/ICBPciBp
cyB0aGUKClBUTSBnZXRzIGRpc2FibGVkIGNvcnJlY3RseSBkdXJpbmcgc3VzcGVuZCwgYnkgY29t
bWl0IGMwMTE2M2RiZDFiOAooIlBDSS9QTTogQWx3YXlzIGRpc2FibGUgUFRNIGZvciBhbGwgZGV2
aWNlcyBkdXJpbmcgc3VzcGVuZCIpLgpCZWZvcmUgdGhhdCBjb21taXQgdGhlIHN1c3BlbmQgd2ls
bCBmYWlsLgoKPiBkZXZpY2UgZGVmZWN0aXZlIGFuZCBzZW5kaW5nIFBUTSByZXF1ZXN0cyBldmVu
IHRob3VnaCBQVE0gaXMgZGlzYWJsZWQ/CgpZZXMuIFdoZW4gUzMgcmVzdW1lLCBJIGd1ZXNzIHRo
ZSBmaXJtd2FyZSByZXNldHMgdGhlIGRvY2sgYW5kL29yIEkyMjUKc28gUFRNIHJlcXVlc3Qgc3Rh
cnRzIGV2ZW4gYmVmb3JlIHRoZSBPUyBpcyByZXN1bWVkLgpBRkFJSyB0aGUgaXNzdWUgZG9lc24n
dCBoYXBwZW4gd2hlbiBzMklkbGUgaXMgdXNlZC4KCj4KPiBJZiB0aGUgbGF0dGVyLCBJIHZvdGUg
Zm9yIGEgcXVpcmsgdGhhdCBqdXN0IGRpc2FibGVzIFBUTSBjb21wbGV0ZWx5Cj4gZm9yIHRoaXMg
ZGV2aWNlLgoKVGhlIFMzIHJlc3VtZSBlbmFibGVzIFBUTSByZWdhcmRsZXNzIG9mIE9TIGludm9s
dmVtZW50LiBTbyBJIGRvbid0CnRoaW5rIHRoaXMgd2lsbCB3b3JrLgoKPgo+IFRoaXMgY2hlY2sg
aW4gLmVycm9yX2RldGVjdGVkKCkgbG9va3Mgb3V0IG9mIHBsYWNlIHRvIG1lIGJlY2F1c2UKPiB0
aGVyZSdzIG5vIGNvbm5lY3Rpb24gYmV0d2VlbiBBRVIgYW5kIFBUTSwgdGhlcmUncyBubyBjb25u
ZWN0aW9uCj4gYmV0d2VlbiBQVE0gYW5kIHRoZSBkZXZpY2UgYmVpbmcgZW5hYmxlZCwgYW5kIHRo
ZSBjb25uZWN0aW9uIGJldHdlZW4KPiB0aGUgZGV2aWNlIGJlaW5nIGVuYWJsZWQgYW5kIGJlaW5n
IGZ1bGx5IHJlc3VtZWQgaXMgYSBsaXR0bGUgdGVudW91cy4KClRydWUuIFRoaXMgcGF0Y2ggaXMg
anVzdCBhIHdvcmthcm91bmQuCgpIYXZlIHlvdSBjb25zaWRlcmVkIG15IG90aGVyIHByb3Bvc2Vk
IGFwcHJvYWNoPyBMaWtlIGRpc2FibGUgQUVSCmNvbXBsZXRlbHkgZHVyaW5nIHN1c3BlbmQsIG9y
IGV2ZW4gZGVmZXIgdGhlIHJlc3VtaW5nIG9mIFBDSWUgc2VydmljZXMKYWZ0ZXIgdGhlIGVudGly
ZSBoaWVyYXJjaHkgaXMgcmVzdW1lZD8KCj4KPiBJZiB3ZSBtdXN0IGRvIGl0IHRoaXMgd2F5LCBt
YXliZSBhZGQgYSBjb21tZW50IGFib3V0ICp3aHkqIHdlJ3JlCj4gY2hlY2tpbmcgcGNpX2lzX2Vu
YWJsZWQoKS4gIE90aGVyd2lzZSB0aGlzIHdpbGwgYmUgY29waWVkIHRvIG90aGVyCj4gZHJpdmVy
cyB0aGF0IGRvbid0IG5lZWQgaXQuCgpTdXJlLgoKS2FpLUhlbmcKCj4KPiA+IFNvIGF2b2lkIHJl
c2V0dGluZyB0aGUgZGV2aWNlIGlmIGl0J3Mgbm90IHJlc3VtZWQuIE9uY2UgdGhlIGRldmljZSBp
cwo+ID4gZnVsbHkgcmVzdW1lZCwgdGhlIGRldmljZSBjYW4gd29yayBub3JtYWxseS4KPiA+Cj4g
PiBMaW5rOiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIxNjg1
MAo+ID4gUmV2aWV3ZWQtYnk6IEd1aWxoZXJtZSBHLiBQaWNjb2xpIDxncGljY29saUBpZ2FsaWEu
Y29tPgo+ID4gQWNrZWQtYnk6IFZpbmljaXVzIENvc3RhIEdvbWVzIDx2aW5pY2l1cy5nb21lc0Bp
bnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBLYWktSGVuZyBGZW5nIDxrYWkuaGVuZy5mZW5n
QGNhbm9uaWNhbC5jb20+Cj4gPgo+ID4gLS0tCj4gPiB2MjoKPiA+ICAtIEZpeCB0eXBvLgo+ID4g
IC0gTWVudGlvbiB0aGUgcHJvZHVjdCBuYW1lLgo+ID4KPiA+ICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDMgKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFp
bi5jCj4gPiBpbmRleCA5ZjkzZjBmNGY3NTIuLjhjMzZiYmU1ZTQyOCAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCj4gPiArKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+ID4gQEAgLTcxMTUsNiArNzEx
NSw5IEBAIHN0YXRpYyBwY2lfZXJzX3Jlc3VsdF90IGlnY19pb19lcnJvcl9kZXRlY3RlZChzdHJ1
Y3QgcGNpX2RldiAqcGRldiwKPiA+ICAgICAgIHN0cnVjdCBuZXRfZGV2aWNlICpuZXRkZXYgPSBw
Y2lfZ2V0X2RydmRhdGEocGRldik7Cj4gPiAgICAgICBzdHJ1Y3QgaWdjX2FkYXB0ZXIgKmFkYXB0
ZXIgPSBuZXRkZXZfcHJpdihuZXRkZXYpOwo+ID4KPiA+ICsgICAgIGlmICghcGNpX2lzX2VuYWJs
ZWQocGRldikpCj4gPiArICAgICAgICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gICAgICAgbmV0
aWZfZGV2aWNlX2RldGFjaChuZXRkZXYpOwo+ID4KPiA+ICAgICAgIGlmIChzdGF0ZSA9PSBwY2lf
Y2hhbm5lbF9pb19wZXJtX2ZhaWx1cmUpCj4gPiAtLQo+ID4gMi4zNC4xCj4gPgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
