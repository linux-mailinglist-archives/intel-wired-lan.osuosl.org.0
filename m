Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F8A7CCD63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 22:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EBFB60AB1;
	Tue, 17 Oct 2023 20:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EBFB60AB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697573065;
	bh=EWta8YTNMIYrTd17YfVWLhoi3MJfdYNeroVql0JzSXI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x6XEnhw02JRpWrVWesRl836/8PH6BMZXqiiWYPy9j+hy9aCkSeD67WTZ3YKpeqevm
	 j1pjnYkiIWq0m1P74YgCSqjPH4t4h5ZYwW/srW6zpwCFBx3wHWgG+YGLi6IkJDgjui
	 BroUwX6WhgTgf6Zxn5wR0KRvQDRceMW4X+87wr8FhRvywoy9DDkRdndwhHL4Zd8iwk
	 zS/Q8tVlUFK8dioJtVEDQhneg7mxLAG+ULV5iiL7AF8+UkuSTQshQ5Egtrm2bUJ48p
	 gYjMqr+OcPVsmrm6qnIzcCwCBqY9m0qN87l7/6K9BUjP1g5wlxyUtzCB5dhadWnKJY
	 etWqzK2IFOZFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKBCvkiyXw6P; Tue, 17 Oct 2023 20:04:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9592260A79;
	Tue, 17 Oct 2023 20:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9592260A79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AF481BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:04:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 71CCD60A79
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71CCD60A79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llHeBx5Sz2dP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 20:04:17 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6629F60A70
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 20:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6629F60A70
Received: by mail-pf1-x432.google.com with SMTP id
 d2e1a72fcca58-6be840283ceso747837b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 13:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697573057; x=1698177857;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ol+kCKVMHScc7eCHeFPtS5drRW2fVcdYBunG3FxpNVU=;
 b=N3t+WLS6QCNuAGhNhV8ndTOFzygDtNslBSSB0fRRqJylq0xqKw3aBG+YZV20ap0uPf
 BfDGpKJ2sVpqhzus+Xddxy3NaUv6WCOix7OO96U15sBvhfNhtPdDuMO3y70pO6SIN5op
 C3CnpS0DZ39ht7bcRGXiwXa65J3+uMAwh+Q+5+T9rT4Tax/kl0jZkd648RClq19OKQY0
 3ts1MQQtup1aAO5MmwqDOzg50KcZ+8EAaG4YqsMH8UhLSo1UxzhwU8TFQpm6neVYXuw6
 h5bM7lq98X7YMYRaxP9VFmoh4IGooa+qyE8sdIJSEm8FrIXzQiRlass9zWaZgZV66uMg
 yRUw==
X-Gm-Message-State: AOJu0YxpkGUdjslV6s/U9o2QJle77Od7mGcanszqZooYSHvfynUszbLt
 slbYQ47A7vAHaqp0HD++lDXJrLv1VSQt5ZeqVQg=
X-Google-Smtp-Source: AGHT+IH20edpPTjoyuZ/zAKfSKbi6Gs2ePTV0lH0/UQIVDHwz+x2K9xMfpBS64dmBMGyuFVtEvR30ZcN6dSBjXd9cJE=
X-Received: by 2002:a05:6a20:3c90:b0:17b:3438:cf92 with SMTP id
 b16-20020a056a203c9000b0017b3438cf92mr683432pzj.5.1697573056583; Tue, 17 Oct
 2023 13:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com>
 <CAKgT0UdPe_Lb=E+P+zuwyyWVfqBQWLaomwGLwkqnsr0mf40E+g@mail.gmail.com>
 <31cde50b-2603-443c-8f55-a0809ecdd987@intel.com>
In-Reply-To: <31cde50b-2603-443c-8f55-a0809ecdd987@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 17 Oct 2023 13:03:39 -0700
Message-ID: <CAKgT0UepNjfPp=TzXyY9Z7rYSGPZyUY64yjB2pqgWTP56=hCcA@mail.gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697573057; x=1698177857; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ol+kCKVMHScc7eCHeFPtS5drRW2fVcdYBunG3FxpNVU=;
 b=h5rrZ2NQH6cwF5tNtnzes71Wv6pyHq03vgwtE3mRbTg9gkjQehzMkeMxA/jdREP5Y/
 ZLQl6Ha9c3mytEcm8YgAjS2tzVvosJ6Yj2dJTj/ZwF5KMWoSKfmeHD1ByTH/evyWoH/A
 cGErmu2T2uJ+H6uK+wTXmhnN1T8G/A37FTpSCZl6bri9WIgz3xMtydgcRmiQbaGOyx0r
 Oxb1dDVtbaWuskKn7VfCvSWIJibe4ISLgrs3d9DVuOl3eDD936sHfcv48W+9JzVNbL2n
 jmK9SQEC3b2ciMLttKtdT/MMG5bxWroSECFKz8kgFwD1fhfLaAay7lr4kcw68XkdMHXY
 KddA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=h5rrZ2NQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 pabeni@redhat.com, Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTcsIDIwMjMgYXQgMTI6MTXigK9QTSBBaG1lZCBaYWtpIDxhaG1lZC56YWtp
QGludGVsLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gMjAyMy0xMC0xNyAxMjo0MiwgQWxleGFuZGVy
IER1eWNrIHdyb3RlOgo+ID4gT24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgNTowOOKAr1BNIEFobWVk
IFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29tPiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4KPiA+PiBP
biAyMDIzLTEwLTE2IDE3OjMwLCBKYWt1YiBLaWNpbnNraSB3cm90ZToKPiA+Pj4gT24gTW9uLCAx
NiBPY3QgMjAyMyAxNTo1NToyMSAtMDcwMCBBbGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPj4+PiBJ
dCB3b3VsZCBtYWtlIG1vcmUgc2Vuc2UgdG8ganVzdCBhZGQgaXQgYXMgYSB2YXJpYW50IGhhc2gg
ZnVuY3Rpb24gb2YKPiA+Pj4+IHRvZXBsaXR6LiBJZiB5b3UgZGlkIGl0IHJpZ2h0IHlvdSBjb3Vs
ZCBwcm9iYWJseSBtYWtlIHRoZSBmb3JtYXR0aW5nCj4gPj4+PiBwcmV0dHksIHNvbWV0aGluZyBs
aWtlOgo+ID4+Pj4gUlNTIGhhc2ggZnVuY3Rpb246Cj4gPj4+PiAgICAgICB0b2VwbGl0ejogb24K
PiA+Pj4+ICAgICAgICAgICBzeW1tZXRyaWMgeG9yOiBvbgo+ID4+Pj4gICAgICAgeG9yOiBvZmYK
PiA+Pj4+ICAgICAgIGNyYzMyOiBvZmYKPiA+Pj4+Cj4gPj4+PiBJdCBkb2Vzbid0IG1ha2Ugc2Vu
c2UgdG8gcGxhY2UgaXQgaW4gdGhlIGlucHV0IGZsYWdzIGFuZCB3aWxsIGp1c3QKPiA+Pj4+IGNh
dXNlIHF1aWNrIGNvbmdlc3Rpb24gYXMgdGhpbmdzIGdldCBhZGRlZCB0aGVyZS4gVGhpcyBpcyBh
biBhbGdvcml0aG0KPiA+Pj4+IGNoYW5nZSBzbyBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIHBsYWNl
IGl0IHRoZXJlLgo+ID4+Pgo+ID4+PiBBbGdvIGlzIGFsc28gYSBiaXQgY29uZnVzaW5nLCBpdCdz
IG1vcmUgbGlrZSBrZXkgcHJlLXByb2Nlc3Npbmc/Cj4gPj4+IFRoZXJlJ3Mgbm90aGluZyB0b2Vw
bGl0eiBhYm91dCB4b3JpbmcgaW5wdXQgZmllbGRzLiBXb3JrcyBhcyB3ZWxsCj4gPj4+IGZvciBD
UkMzMi4uIG9yIFhPUi4KPiA+Pj4KPiA+Pj4gV2UgY2FuIHVzZSBvbmUgb2YgdGhlIHJlc2VydmVk
IGZpZWxkcyBvZiBzdHJ1Y3QgZXRodG9vbF9yeGZoIHRvIGNhcnJ5Cj4gPj4+IHRoaXMgZXh0ZW5z
aW9uLiBJIHRoaW5rIEkgYXNrZWQgZm9yIHRoaXMgYXQgc29tZSBwb2ludCwgYnV0IHRoZXJlJ3MK
PiA+Pj4gb25seSBzbyBtdWNoIHJlcGVhdGVkIGZlZWRiYWNrIG9uZSBjYW4gc2VuZCBpbiBhIGRh
eSA6KAo+ID4+Cj4gPj4gU29ycnkgeW91IGZlbHQgdGhhdC4gSSB0b29rIHlvdSBjb21tZW50IFsx
XToKPiA+Pgo+ID4+ICJVc2luZyBoYXNoaW5nIGFsZ28gZm9yIGNvbmZpZ3VyaW5nIGZpZWxkcyBm
ZWVscyBsaWtlIGEgZGlydHkgaGFjayIuCj4gPj4KPiA+PiBUbyBtZWFuIHRoYXQgdGhlIHdlIHNo
b3VsZCBub3QgdXNlIHRoZSBoZnVuYyBBUEkgKCJldGh0b29sX3J4ZmgiKS4gVGhpcwo+ID4+IGlz
IHdoeSBpbiB0aGUgbmV3IHNlcmllcyBJIGNob3NlIHRvIGNvbmZpZ3VyZSB0aGUgUlNTIGZpZWxk
cy4gVGhpcyBhbHNvCj4gPj4gcHJvdmlkZXMgdGhlIHVzZXIgd2l0aCBtb3JlIGNvbnRyb2wgYW5k
IGJldHRlciBncmFudWxhcml0eSBvbiB3aGljaAo+ID4+IGZsb3ctdHlwZXMgdG8gYmUgc3ltbWV0
cmljLCBhbmQgd2hpY2ggcHJvdG9jb2xzIChMMyBhbmQvb3IgTDQpIHRvIHVzZS4gSQo+ID4+IGhh
dmUgbm8gaWRlYSBob3cgdG8gZG8gYW55IG9mIHRoZXNlIHZpYSBoZnVuYy9ldGh0b29sX3J4Zmgg
QVBJIHNvIGl0Cj4gPj4gc2VlbWVkIGEgYmV0dGVyIGFwcHJvYWNoLgo+ID4+Cj4gPj4gSSBzZWUg
eW91IG1hcmtlZCB0aGUgc2VyaWVzIGFzICJDaGFuZ2VzIFJlcXVlc3RlZCIuIEkgd2lsbCBzZW5k
IGEgbmV3Cj4gPj4gdmVyc2lvbiB0b21vcnJvdyBhbmQgbW92ZSB0aGUgc2FuaXR5IGNoZWNrcyBp
bnNpZGUgaWNlX2V0aHRvb2wuCj4gPj4KPiA+Pgo+ID4+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbmV0ZGV2LzIwMjMwODI0MTc0MzM2LjZmYjgwMWQ1QGtlcm5lbC5vcmcvCj4gPgo+ID4g
U28gb25lIHF1ZXN0aW9uIEkgd291bGQgaGF2ZSBpcyB3aGF0IGhhcHBlbnMgaWYgeW91IHdlcmUg
dG8gaWdub3JlIHRoZQo+ID4gZXh0cmEgY29uZmlndXJhdGlvbiB0aGF0IHByZXZlbnRzIHBlb3Bs
ZSBmcm9tIGRpc2FibGluZyBlaXRoZXIgc291cmNlCj4gPiBvciBkZXN0aW5hdGlvbiBmcm9tIHRo
ZSBpbnB1dD8gRG9lcyBpdCBhY3R1YWxseSBoYXZlIHRvIGJlIGhhcmQKPiA+IHJlc3RyaWN0ZWQg
b3IgZG8geW91IGVuZCB1cCB3aXRoIHRoZSBoYXJkd2FyZSBnZW5lcmF0aW5nIG5vbi1zeW1tZXRy
aWMKPiA+IGhhc2hlcyBiZWNhdXNlIGl0IGlzbid0IGRvaW5nIHRoZSBYT1Igd2l0aCBib3RoIHNv
dXJjZSBhbmQgZGVzdGluYXRpb24KPiA+IGZpZWxkcz8KPgo+IERvIHlvdSBtZWFuIGFsbG93IHRo
ZSB1c2VyIHRvIHVzZSBhbnkgUlNTIGZpZWxkcyBhcyBpbnB1dD8gV2hhdCBkbyB3ZQo+IGdhaW4g
YnkgdGhhdD8KPgo+IFRoZSBoYXJkd2FyZSdzIFRPRVBMSVRaIGFuZCBTWU1fVE9FUExJVFogZnVu
Y3Rpb25zIGFyZSB0aGUgc2FtZSBleGNlcHQKPiBmb3IgdGhlIFhPUmluZyBzdGVwLiBXaGF0IGdl
dHMgWE9SJ2QgbmVlZHMgdG8gYmUgcHJvZ3JhbW1lZCAoUGF0Y2ggNToKPiBpY2VfcnNzX2NvbmZp
Z194b3IoKSkgYW5kIHdlIGFyZSBwcm9ncmFtbWluZyB0aGUgaGFyZHdhcmUgdG8gWE9SIHRoZSBz
cmMKPiBhbmQgZHN0IGZpZWxkcyB0byBnZXQgdGhpcyBoYXNoIHN5bW1ldHJ5LiBJZiBhbnkgZmll
bGRzIHRoYXQgYXJlIG5vdAo+IHN3YXBwZWQgaW4gdGhlIG90aGVyIGZsb3cgZGlyZWN0aW9uIG9y
IGlmIChmb3IgZXhhbXBsZSkgb25seSBzcmMgaXMKPiB1c2VkLCB0aGUgaGFyZHdhcmUgd2lsbCBn
ZW5lcmF0ZSBub24tc3ltbWV0cmljIGhhc2guCgpUaGUgcG9pbnQgSSBhbSBnZXR0aW5nIGF0IGlz
IHRvIGRldGVybWluZSBpZiB0aGUKdG9lcGxpdHotc3ltbWV0cmljLXhvciBpcyBhY3R1YWxseSBj
aGFuZ2VzIHRvIHRoZSBpbnB1dHMgb3IgYSBjaGFuZ2UKdG8gdGhlIGFsZ29yaXRobS4gQmFzZWQg
b24geW91ciBkZXNjcmlwdGlvbiBoZXJlIGl0IGlzIGVzc2VudGlhbGx5IGEKc3Vic2V0IG9mIHRv
ZXBsaXR6LCBhbmQgYWxsIG9mIHRoZSBzYW1lIGlucHV0cyB3b3VsZCBhcHBseS4gQWxsIHlvdQpo
YXZlIGVzc2VudGlhbGx5IGRvbmUgaXMgY29sbGFwc2VkIHRoZSBrZXkuIFJhdGhlciB0aGFuIHN5
bW1ldHJpYwp0b2VwbGl0eiB0aGlzIGNvdWxkIGFsbW9zdCBiZSBjb25zaWRlcmVkIHNpbXBsaWZp
ZWQgdG9lcGxpdHouCgpPbmUgc2lkZSBlZmZlY3Qgb2YgWE9SaW5nIHRoZSBzb3VyY2UgYW5kIGRl
c3RpbmF0aW9uIGRhdGEgaXMgdGhhdCB5b3UKY2FuIGVzc2VudGlhbGx5IGNvbGxhcHNlIHRoZSBr
ZXkuIFlvdSBjb3VsZCBYT1IgdG9nZXRoZXIgdGhlIDUgRFdPUkRzCigxNTkgYml0cykgYXNzb2Np
YXRlZCB3aXRoIHRoZSBzb3VyY2UgYW5kIGRlc3RpbmF0aW9uIElQIHBvcnRpb24gb2YKdGhlIGtl
eSwgYW5kIHRoZW4gZG8gdGhlIHNhbWUgd2l0aCB0aGUgMyBXT1JEcyAoNDcgYml0cykgYXNzb2Np
YXRlZAp3aXRoIHRoZSBzb3VyY2UgYW5kIGRlc3RpbmF0aW9uIHBvcnQuIFRoZW4geW91IHdvdWxk
IG9ubHkgaGF2ZSB0bwpwcm9jZXNzIHRoZSBYT1JlZCBpbnB1dHMuIEFzIGEgcmVzdWx0IHlvdSBh
cmUgZ29pbmcgdG8gbG9zZSBhIGZhaXIgYml0Cm9mIGVudHJvcHkgc2luY2UgaXQgZWZmZWN0aXZl
bHkgY3V0cyB0aGUgaW5wdXQgbGVuZ3RoIGFuZCBrZXkgbGVuZ3RoCmluIGhhbGYuIFRoZSBzYW1l
IGNvdWxkIGVzc2VudGlhbGx5IGJlIGRvbmUgYnkgZG9pbmcgYSBiaXQgb2Yga2V5Cm1hbmlwdWxh
dGlvbiwgdGhlIHNpbXBsZXN0IGFwcHJvYWNoIGJlaW5nIHVzaW5nIGEgMTZiIHJlcGVhdGluZyBr
ZXkKdmFsdWUsIGFuZCB0aGUgbW9yZSBudWFuY2VkIHJlcXVpcmluZyBwYXlpbmcgYXR0ZW50aW9u
IHRvIElQIGFuZCBwb3J0CmJvdW5kYXJpZXMgaW4gdGVybXMgb2YgcmVwZXRpdGlvbi4gSSB3b3Vs
ZCBzYXkgYmVjYXVzZSBvZiB0aGUgZXh0cmEKcHJvY2Vzc2luZyBzdGVwcyBpdCBpcyBhIGRpZmZl
cmVudCBoZnVuYyB2ZXJzdXMganVzdCBiZWluZyBhIGRpZmZlcmVudApzZXQgb2YgaW5wdXRzLgoK
PiA+Cj4gPiBNeSB0aG91Z2h0IHdvdWxkIGJlIHRvIHBvc3NpYmx5IGp1c3QgbG9vayBhdCByZWR1
Y2luZyB5b3VyIG1lc3NhZ2luZwo+ID4gdG8gYSB3YXJuaW5nIGZyb20gdGhlIGRyaXZlciBpZiB0
aGUgaW5wdXRzIGFyZSBub3Qgc3ltbWV0cmljLCBidXQgeW91Cj4gPiBoYXZlIHlvdXIgc3ltbWV0
cmljIHhvciBoYXNoIGZ1bmN0aW9uIGVuYWJsZWQuCj4KPiBXaXRoIHRoZSByZXN0cmljdGlvbnMg
KHRvIGJlIG1vdmVkIGludG8gaWNlX2V0aHRvb2wpLCB0aGUgdXNlciBpcyB1bmFibGUKPiB0byB1
c2Ugbm9uLXN5bW1ldHJpYyBpbnB1dHMuCgpJIHRoaW5rIGEgd2FybmluZyB3b3VsZCBtYWtlIG1v
cmUgc2Vuc2UgdGhhbiBhbiBvdXRyaWdodCByZXN0cmljdGlvbi4KWW91IGNvdWxkIHdhcm4gb24g
Ym90aCB0aGUgZW5hYmxpbmcgaWYgdGhlIG1hc2sgaXMgYWxyZWFkeSB1bmJhbGFuY2VkLApvciB5
b3UgY291bGQgd2FybiBpZiB0aGUgbWFzayBpcyBzZXQgdG8gYmUgdW5iYWxhbmNlZCBhZnRlciBl
bmFibGluZwp5b3VyIGhhc2hpbmcuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
