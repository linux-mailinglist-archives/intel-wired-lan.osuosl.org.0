Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF97A7CCAEA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 20:42:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AA4441EAD;
	Tue, 17 Oct 2023 18:42:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AA4441EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697568167;
	bh=cqWG13XMgnb555foa09S9XvqWtAXpBiCXbQGAz+UV1A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=32tKAdU3/ASgYlm33c6aIHL2WMLeDDSzMj0T4l5AIuQAG0Ta78neaJvJQknCCsoOI
	 GpXz1qGMiGHCywjyqi9RgtsnBKbyYuATohOBWiyYSd7qQm289w02UjMk5zN8A7wUlg
	 S3gc5wlcKj5s6/G9STXypjlaDEY+qwfvOSN5W6+4SVWu/dLvqoxqCtuXAE0kxx8AWO
	 vO8lPOd46ZGGw7iTC5P9LtZgpm3KNA7zkSRAGt+L/Qm0yx7lDXKDL67agMAVh0B3fW
	 yAznHbfeeAOYPb6ekmTswYg0cJKgp6Fy8cCNDmcvnzy4DXq9Tbgbfoo46WKGU30McD
	 NhEio8IQ6teAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AYQseqgd4cac; Tue, 17 Oct 2023 18:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBBF441E90;
	Tue, 17 Oct 2023 18:42:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CBBF441E90
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E33991BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:42:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C39FF613FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:42:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C39FF613FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oyy-1Khv7bkH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 18:42:39 +0000 (UTC)
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8E8C613F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 18:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E8C613F7
Received: by mail-il1-x136.google.com with SMTP id
 e9e14a558f8ab-3512fae02ecso23252835ab.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 11:42:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697568159; x=1698172959;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hY8pDtSj4J0DMbNt62MAWtdtLc0zQPLrC85LJaVi6Wk=;
 b=IdnqakrBYxzPHwIxa7mhgiRx6T00JYB5LAAZG9K9IK6StISlV70clWSHFfIYznjK/s
 SoyGaz7O+NwZW94UFcBKcgAC5BmHXMsZPp4YasaNjUzPgJbJiklFIDdMm0p9FjFDWzoY
 fun11xWGf0epf4q8TT6R2ZOpsqB4igAOcBmW+4EuV3gGrxs+vpvE0srO82Dw1T42FmwJ
 QtlGqQQy6H4rs6g+2/OUbMGXLCRgZ7WP1KJ+oP3k22Wk8KWco7LcvWkxtDFznZXq4SAg
 Tz7g2incQUjzv6XFbTzOhG7Vn3RDwMHL7lZ6vZ3Fj8EYr0qMClsBwtw783AZHeg3WKBi
 2gzw==
X-Gm-Message-State: AOJu0YzGDgdKd3awHCZosEw6u9PiItTvwlCLwQtOnPj//anSYQAN5hC6
 2sX9qkz/6WmqX1FuBG++tmJq0p3aj93iBltEUO4=
X-Google-Smtp-Source: AGHT+IFCpZJ85xe399/2lA7A2dJ4nyIOWeBkwjpG17gzDCFjwl44jwsihXr9SarpLA0QM/9JWhFTjXAtdB3Pf6+tkPk=
X-Received: by 2002:a05:6e02:12e7:b0:351:4e9f:5606 with SMTP id
 l7-20020a056e0212e700b003514e9f5606mr4292877iln.10.1697568158863; Tue, 17 Oct
 2023 11:42:38 -0700 (PDT)
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
In-Reply-To: <afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 17 Oct 2023 11:42:02 -0700
Message-ID: <CAKgT0UdPe_Lb=E+P+zuwyyWVfqBQWLaomwGLwkqnsr0mf40E+g@mail.gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697568159; x=1698172959; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hY8pDtSj4J0DMbNt62MAWtdtLc0zQPLrC85LJaVi6Wk=;
 b=hUQ2fWX7ir+0OJ/grrAMg0iy1oNsIoc+K7/bqLKwKRSUyD9C5dtbrhDQWaGcW1uZih
 CDzD2MuyuKTZyV9fxS5fk1kWkqz9rnU7el/eJ3WqQan6j+ijUVYe+v8wUtmv/LtksvtO
 ywgCbvWKm6nZEjGSNOBa2eXEgVx45cPueTnEjvOaxf1/X94GjLVwMnnWt0SOr6KhasDD
 LWNP/Pve+nm/2VFwOB37G4FW9A+Q30lKBHpiCYRdJeFXhtfW1xtLGVwsfRTnlfZz8j5b
 YZGkxlY/1TlkOjfjKUGk66IhDYe7AO0eC3neE9CEON/49py9aMLyc3oXI2G/Ugtlnnqz
 OWfw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=hUQ2fWX7
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

T24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgNTowOOKAr1BNIEFobWVkIFpha2kgPGFobWVkLnpha2lA
aW50ZWwuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAyMDIzLTEwLTE2IDE3OjMwLCBKYWt1YiBLaWNp
bnNraSB3cm90ZToKPiA+IE9uIE1vbiwgMTYgT2N0IDIwMjMgMTU6NTU6MjEgLTA3MDAgQWxleGFu
ZGVyIER1eWNrIHdyb3RlOgo+ID4+IEl0IHdvdWxkIG1ha2UgbW9yZSBzZW5zZSB0byBqdXN0IGFk
ZCBpdCBhcyBhIHZhcmlhbnQgaGFzaCBmdW5jdGlvbiBvZgo+ID4+IHRvZXBsaXR6LiBJZiB5b3Ug
ZGlkIGl0IHJpZ2h0IHlvdSBjb3VsZCBwcm9iYWJseSBtYWtlIHRoZSBmb3JtYXR0aW5nCj4gPj4g
cHJldHR5LCBzb21ldGhpbmcgbGlrZToKPiA+PiBSU1MgaGFzaCBmdW5jdGlvbjoKPiA+PiAgICAg
IHRvZXBsaXR6OiBvbgo+ID4+ICAgICAgICAgIHN5bW1ldHJpYyB4b3I6IG9uCj4gPj4gICAgICB4
b3I6IG9mZgo+ID4+ICAgICAgY3JjMzI6IG9mZgo+ID4+Cj4gPj4gSXQgZG9lc24ndCBtYWtlIHNl
bnNlIHRvIHBsYWNlIGl0IGluIHRoZSBpbnB1dCBmbGFncyBhbmQgd2lsbCBqdXN0Cj4gPj4gY2F1
c2UgcXVpY2sgY29uZ2VzdGlvbiBhcyB0aGluZ3MgZ2V0IGFkZGVkIHRoZXJlLiBUaGlzIGlzIGFu
IGFsZ29yaXRobQo+ID4+IGNoYW5nZSBzbyBpdCBtYWtlcyBtb3JlIHNlbnNlIHRvIHBsYWNlIGl0
IHRoZXJlLgo+ID4KPiA+IEFsZ28gaXMgYWxzbyBhIGJpdCBjb25mdXNpbmcsIGl0J3MgbW9yZSBs
aWtlIGtleSBwcmUtcHJvY2Vzc2luZz8KPiA+IFRoZXJlJ3Mgbm90aGluZyB0b2VwbGl0eiBhYm91
dCB4b3JpbmcgaW5wdXQgZmllbGRzLiBXb3JrcyBhcyB3ZWxsCj4gPiBmb3IgQ1JDMzIuLiBvciBY
T1IuCj4gPgo+ID4gV2UgY2FuIHVzZSBvbmUgb2YgdGhlIHJlc2VydmVkIGZpZWxkcyBvZiBzdHJ1
Y3QgZXRodG9vbF9yeGZoIHRvIGNhcnJ5Cj4gPiB0aGlzIGV4dGVuc2lvbi4gSSB0aGluayBJIGFz
a2VkIGZvciB0aGlzIGF0IHNvbWUgcG9pbnQsIGJ1dCB0aGVyZSdzCj4gPiBvbmx5IHNvIG11Y2gg
cmVwZWF0ZWQgZmVlZGJhY2sgb25lIGNhbiBzZW5kIGluIGEgZGF5IDooCj4KPiBTb3JyeSB5b3Ug
ZmVsdCB0aGF0LiBJIHRvb2sgeW91IGNvbW1lbnQgWzFdOgo+Cj4gIlVzaW5nIGhhc2hpbmcgYWxn
byBmb3IgY29uZmlndXJpbmcgZmllbGRzIGZlZWxzIGxpa2UgYSBkaXJ0eSBoYWNrIi4KPgo+IFRv
IG1lYW4gdGhhdCB0aGUgd2Ugc2hvdWxkIG5vdCB1c2UgdGhlIGhmdW5jIEFQSSAoImV0aHRvb2xf
cnhmaCIpLiBUaGlzCj4gaXMgd2h5IGluIHRoZSBuZXcgc2VyaWVzIEkgY2hvc2UgdG8gY29uZmln
dXJlIHRoZSBSU1MgZmllbGRzLiBUaGlzIGFsc28KPiBwcm92aWRlcyB0aGUgdXNlciB3aXRoIG1v
cmUgY29udHJvbCBhbmQgYmV0dGVyIGdyYW51bGFyaXR5IG9uIHdoaWNoCj4gZmxvdy10eXBlcyB0
byBiZSBzeW1tZXRyaWMsIGFuZCB3aGljaCBwcm90b2NvbHMgKEwzIGFuZC9vciBMNCkgdG8gdXNl
LiBJCj4gaGF2ZSBubyBpZGVhIGhvdyB0byBkbyBhbnkgb2YgdGhlc2UgdmlhIGhmdW5jL2V0aHRv
b2xfcnhmaCBBUEkgc28gaXQKPiBzZWVtZWQgYSBiZXR0ZXIgYXBwcm9hY2guCj4KPiBJIHNlZSB5
b3UgbWFya2VkIHRoZSBzZXJpZXMgYXMgIkNoYW5nZXMgUmVxdWVzdGVkIi4gSSB3aWxsIHNlbmQg
YSBuZXcKPiB2ZXJzaW9uIHRvbW9ycm93IGFuZCBtb3ZlIHRoZSBzYW5pdHkgY2hlY2tzIGluc2lk
ZSBpY2VfZXRodG9vbC4KPgo+Cj4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
MjAyMzA4MjQxNzQzMzYuNmZiODAxZDVAa2VybmVsLm9yZy8KClNvIG9uZSBxdWVzdGlvbiBJIHdv
dWxkIGhhdmUgaXMgd2hhdCBoYXBwZW5zIGlmIHlvdSB3ZXJlIHRvIGlnbm9yZSB0aGUKZXh0cmEg
Y29uZmlndXJhdGlvbiB0aGF0IHByZXZlbnRzIHBlb3BsZSBmcm9tIGRpc2FibGluZyBlaXRoZXIg
c291cmNlCm9yIGRlc3RpbmF0aW9uIGZyb20gdGhlIGlucHV0PyBEb2VzIGl0IGFjdHVhbGx5IGhh
dmUgdG8gYmUgaGFyZApyZXN0cmljdGVkIG9yIGRvIHlvdSBlbmQgdXAgd2l0aCB0aGUgaGFyZHdh
cmUgZ2VuZXJhdGluZyBub24tc3ltbWV0cmljCmhhc2hlcyBiZWNhdXNlIGl0IGlzbid0IGRvaW5n
IHRoZSBYT1Igd2l0aCBib3RoIHNvdXJjZSBhbmQgZGVzdGluYXRpb24KZmllbGRzPwoKTXkgdGhv
dWdodCB3b3VsZCBiZSB0byBwb3NzaWJseSBqdXN0IGxvb2sgYXQgcmVkdWNpbmcgeW91ciBtZXNz
YWdpbmcKdG8gYSB3YXJuaW5nIGZyb20gdGhlIGRyaXZlciBpZiB0aGUgaW5wdXRzIGFyZSBub3Qg
c3ltbWV0cmljLCBidXQgeW91CmhhdmUgeW91ciBzeW1tZXRyaWMgeG9yIGhhc2ggZnVuY3Rpb24g
ZW5hYmxlZC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
