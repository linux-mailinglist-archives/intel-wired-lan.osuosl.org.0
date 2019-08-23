Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7639B09E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 15:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4453386D36;
	Fri, 23 Aug 2019 13:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PK_-qNB5OAq4; Fri, 23 Aug 2019 13:20:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57FB286D64;
	Fri, 23 Aug 2019 13:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B8B81BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 13:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94591232A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 13:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6eZySU3m3BBA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 13:20:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D5B22231A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 13:20:26 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id 44so11090454qtg.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 06:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1LfnWFWs0YWvUwvqhsL90T++L1EYbaF8DCL5i8TnlTQ=;
 b=IGcqT2L9Wkft5cAwK651j3W3eBHxve8x0C4MyikQws9NcZLM190a7/AA3JZ1HtXWpy
 GdGzRMoVVUREaXD/dkNg6XQgREa2yhuygZpG1qGG7MEL2Hf2V3TlohAf1wgBYw4asGVS
 iZG2a+U7LL18sOQP9/LmObdflOitwFE4afnCDwhPo9LKKZdkGqSxdF18BsijKXc4C+qU
 I04eNIzpKktFUyypNR34I9HyQBVBufsb9RUKdTcB7yETG7bHE7Od/XvFgGtMSbaUy7Un
 8iRj4oNsHd+pb7mswL7+8gOIzrxF05qPOBd0o5ksLHEvQCipM/Q8OP9zEV82Cs3yc5oF
 LzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1LfnWFWs0YWvUwvqhsL90T++L1EYbaF8DCL5i8TnlTQ=;
 b=CV28GbjqJ1gbdPzgh3/neeSIy+sbRoObYf6TAWPooE7GAgxJDWIciLZfYWsk/unped
 3vuZO6+5ZtgLRKKusp53REEpkTF9UPQy4RjaZnLgPP6iK6eAvitDUX5vay3t4akMEhG0
 q46mxgWr83cRL2Vu3uJ7t9A9R960cR136TxfcVWqY1x/o5S0puFZuPFbomJeeVRi3PJQ
 68sibRQ9rxnxjfqKNYUu2RWEtGm7ALy5dB+BjhsLIm9qZU8RXqApVbUkig8GXFiVA19o
 LZ1pZRRJKermWjF7M7HzUuqnhXXxBMwh42kAafMEOl8Ei7tEqumMKcLTq9Xzldy7Lbu5
 X/0Q==
X-Gm-Message-State: APjAAAU51+j6jj9ywe/4FPGBQLsE9UJDy2yaCFOz03oXs+0IfdPHBAHM
 Vc201lqg48NCz8XRHxezSG8nev0WwuQUQZjew1U=
X-Google-Smtp-Source: APXvYqzwV94dsSIn/VkYPZoc4KCCI+cdmF8oVTo1U8feC63LjNcIddNEQlDaT+/Y6KbvgkLYv+gJ6MnwAOt5WD+BwGo=
X-Received: by 2002:a0c:abca:: with SMTP id k10mr3794577qvb.177.1566566425657; 
 Fri, 23 Aug 2019 06:20:25 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190822171243eucas1p12213f2239d6c36be515dade41ed7470b@eucas1p1.samsung.com>
 <20190822171237.20798-1-i.maximets@samsung.com>
 <CAKgT0UepBGqx=FiqrdC-r3kvkMxVAHonkfc6rDt_HVQuzahZPQ@mail.gmail.com>
 <CALDO+SYhU4krmBO8d4hsDGm+BuUAR4qMv=WzVa=jAx27+g9KnA@mail.gmail.com>
 <217e90f5-206a-bb80-6699-f6dd750b57d9@intel.com>
In-Reply-To: <217e90f5-206a-bb80-6699-f6dd750b57d9@intel.com>
From: William Tu <u9012063@gmail.com>
Date: Fri, 23 Aug 2019 06:19:49 -0700
Message-ID: <CALDO+SZGXKW_PMrL_AarT3i8WPcM0X=RkEhTnKCDnUkS1cOH0Q@mail.gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v3] ixgbe: fix double clean of tx
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
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTE6MTAgUE0gQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9w
ZWxAaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIDIwMTktMDgtMjIgMTk6MzIsIFdpbGxpYW0gVHUg
d3JvdGU6Cj4gPiBPbiBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAxMDoyMSBBTSBBbGV4YW5kZXIgRHV5
Y2sKPiA+IDxhbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIFRo
dSwgQXVnIDIyLCAyMDE5IGF0IDEwOjEyIEFNIElseWEgTWF4aW1ldHMgPGkubWF4aW1ldHNAc2Ft
c3VuZy5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBUeCBjb2RlIGRvZXNuJ3QgY2xlYXIgdGhlIGRl
c2NyaXB0b3JzJyBzdGF0dXMgYWZ0ZXIgY2xlYW5pbmcuCj4gPj4+IFNvLCBpZiB0aGUgYnVkZ2V0
IGlzIGxhcmdlciB0aGFuIG51bWJlciBvZiB1c2VkIGVsZW1zIGluIGEgcmluZywgc29tZQo+ID4+
PiBkZXNjcmlwdG9ycyB3aWxsIGJlIGFjY291bnRlZCB0d2ljZSBhbmQgeHNrX3VtZW1fY29tcGxl
dGVfdHggd2lsbCBtb3ZlCj4gPj4+IHByb2RfdGFpbCBmYXIgYmV5b25kIHRoZSBwcm9kX2hlYWQg
YnJlYWtpbmcgdGhlIGNvbXBsZXRpb24gcXVldWUgcmluZy4KPiA+Pj4KPiA+Pj4gRml4IHRoYXQg
YnkgbGltaXRpbmcgdGhlIG51bWJlciBvZiBkZXNjcmlwdG9ycyB0byBjbGVhbiBieSB0aGUgbnVt
YmVyCj4gPj4+IG9mIHVzZWQgZGVzY3JpcHRvcnMgaW4gdGhlIHR4IHJpbmcuCj4gPj4+Cj4gPj4+
ICdpeGdiZV9jbGVhbl94ZHBfdHhfaXJxKCknIGZ1bmN0aW9uIHJlZmFjdG9yZWQgdG8gbG9vayBt
b3JlIGxpa2UKPiA+Pj4gJ2l4Z2JlX3hza19jbGVhbl90eF9yaW5nKCknIHNpbmNlIHdlJ3JlIGFs
bG93ZWQgdG8gZGlyZWN0bHkgdXNlCj4gPj4+ICduZXh0X3RvX2NsZWFuJyBhbmQgJ25leHRfdG9f
dXNlJyBpbmRleGVzLgo+ID4+Pgo+ID4+PiBGaXhlczogODIyMWM1ZWJhOGMxICgiaXhnYmU6IGFk
ZCBBRl9YRFAgemVyby1jb3B5IFR4IHN1cHBvcnQiKQo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBJbHlh
IE1heGltZXRzIDxpLm1heGltZXRzQHNhbXN1bmcuY29tPgo+ID4+PiAtLS0KPiA+Pj4KPiA+Pj4g
VmVyc2lvbiAzOgo+ID4+PiAgICAqIFJldmVydGVkIHNvbWUgcmVmYWN0b3JpbmcgbWFkZSBmb3Ig
djIuCj4gPj4+ICAgICogRWxpbWluYXRlZCAnYnVkZ2V0JyBmb3IgdHggY2xlYW4uCj4gPj4+ICAg
ICogcHJlZmV0Y2ggcmV0dXJuZWQuCj4gPj4+Cj4gPj4+IFZlcnNpb24gMjoKPiA+Pj4gICAgKiAn
aXhnYmVfY2xlYW5feGRwX3R4X2lycSgpJyByZWZhY3RvcmVkIHRvIGxvb2sgbW9yZSBsaWtlCj4g
Pj4+ICAgICAgJ2l4Z2JlX3hza19jbGVhbl90eF9yaW5nKCknLgo+ID4+Pgo+ID4+PiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIHwgMjkgKysrKysrKystLS0t
LS0tLS0tLS0KPiA+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTggZGVs
ZXRpb25zKC0pCj4gPj4KPiA+PiBUaGFua3MgZm9yIGFkZHJlc3NpbmcgbXkgY29uY2VybnMuCj4g
Pj4KPiA+PiBBY2tlZC1ieTogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuaC5kdXlja0BsaW51
eC5pbnRlbC5jb20+Cj4gPgo+ID4gVGhhbmtzLgo+ID4KPiA+IFRlc3RlZC1ieTogV2lsbGlhbSBU
dSA8dTkwMTIwNjNAZ21haWwuY29tPgo+ID4KPgo+IFdpbGwsIHRoYW5rcyBmb3IgdGVzdGluZyEg
Rm9yIHRoaXMgcGF0Y2gsIGRpZCB5b3Ugbm90aWNlIGFueSBwZXJmb3JtYW5jZQo+IGRlZ3JhZGF0
aW9uPwo+CgpObyBub3RpY2VhYmxlIHBlcmZvcm1hbmNlIGRlZ3JhZGF0aW9uIHNlZW4gdGhpcyB0
aW1lLgpUaGFua3MsCldpbGxpYW0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
