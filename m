Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3947CE5F8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 20:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E0D041942;
	Wed, 18 Oct 2023 18:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E0D041942
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697652778;
	bh=qgdAtKPcM7qyksNrseo0wlDgtGC/s0yKa9TPQ/FUj40=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RApEyqptS8L7OgT3HXfaWQTA06IRxaQwvyitYCJbj5kM5gpfOAX0/UwtDVM8NSO5e
	 4y6u5DjQA6WKbMI01MUKgnT+pp4nhdBy26xS3M0cydcFZD8CPj0ieHyPzybNGZUz1D
	 dvGTjD7/FFWd4h8FUoNHnWAS0iumWxyVQiCnLd22X7wAxQbQkFocV59AVkEmMjklAe
	 fOsZ/4rt9j7RoykRQVekPFe3isvWnHmmSPrv+uOreuoo8EWBTaYI19YnPT+JGv54UM
	 hff5mno3w2asZ34OzEHDLGWVUDMCSFz6yUCH94HYosIgui/TSwXJ8M1901073ATiLq
	 JEScdCnfj3FHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGRANET-wuAg; Wed, 18 Oct 2023 18:12:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1489C4047D;
	Wed, 18 Oct 2023 18:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1489C4047D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3C111BF27A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AD3782B51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:12:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AD3782B51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tfZXTkaIRNb6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 18:12:50 +0000 (UTC)
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF85782B1A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF85782B1A
Received: by mail-pg1-x52c.google.com with SMTP id
 41be03b00d2f7-5a1d89ff4b9so4266283a12.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 11:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697652770; x=1698257570;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I6GMn7cpKzACEI5MaPrz+Tfss8qgnZd3IVim37pXeBs=;
 b=DX7IwxRjUlOomoE4lm1Le5gjIKVE2/nmFIFD2uPFtiFqu/4/aMnnEF4PGZuhDS2MnK
 64g+a6CmsLGUi/YOYYqoEhZdl/Tm/guhrr8cRPcFOBKZESlVydFleIxxLgJXmwFEpOJb
 nAgKjixkcaznC5Ofab1B0bf6Sf70jHOmM3KMMFATznOp57jpza6xqNWyyBNS/8bainz7
 LvMIZF0LqWZoZHloOc+i3evHu5JCzhoLEQS7Gtb5d5JYcOSIhl+cY8z5joD/KMU67lEL
 flDLNfkgmEase0tgabTxeLHCZEVwLehjviLiootN2f3+y4nunCgHtUMndtjK/kLw6Wdy
 Cwzw==
X-Gm-Message-State: AOJu0YxvSFvPIfqUSY0snBoJwfirFgFsB6i/dIkJy/xe3Y2HBwKL3FxC
 SbVVtGaBOLzKE9BcDIAOghqs8VGhKYlGpYHh6Co=
X-Google-Smtp-Source: AGHT+IFUWULTgFy6Wj6VevczJCO+C/6xYDTVrSlqNWMOrY8f9hNCaT5duJhriJka7CmTPYtih6ViXo1Ox2BHV9RzDkA=
X-Received: by 2002:a05:6a20:8f28:b0:16b:f3b1:c040 with SMTP id
 b40-20020a056a208f2800b0016bf3b1c040mr6402566pzk.38.1697652769936; Wed, 18
 Oct 2023 11:12:49 -0700 (PDT)
MIME-Version: 1.0
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
In-Reply-To: <20231017173448.3f1c35aa@kernel.org>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 18 Oct 2023 11:12:13 -0700
Message-ID: <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697652770; x=1698257570; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I6GMn7cpKzACEI5MaPrz+Tfss8qgnZd3IVim37pXeBs=;
 b=EmblvO5gyhqVS4JbPWs6E45HnFsY5tK3cM1v4d/LQEEMlgs8kU7x++u1yYD6FzymWq
 KuDoqe/fQMwwsgLoWB1+G9ctK9JSyX3e3Gg9+J3OY+DRFjeTAmU9LRA9MrEj/4mUOg8s
 4chw54gwjVnwjBXtQMVUt4QK2vCmR5HE0oCAtHRJloHRyvk/Hzlopmyty7xG5qWEP6Iv
 KsH4SKcjEYiv+xGXGVtLZy66mH5jrEIYjPZHBLkwCEkA4EVU57QJP7+kJueg8jjzbSEI
 VqYDdLa6/TlUm3gN6b6Mxw9nCOJsf85kKT47wVVHirrVXCsy+0zBT5Ui2ZQlsvNTaX5P
 bJUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=EmblvO5g
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
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, vladimir.oltean@nxp.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTcsIDIwMjMgYXQgNTozNOKAr1BNIEpha3ViIEtpY2luc2tpIDxrdWJhQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAxNyBPY3QgMjAyMyAxMzo0MToxOCAtMDcwMCBB
bGV4YW5kZXIgRHV5Y2sgd3JvdGU6Cj4gPiBJIGFtIHRoaW5raW5nIG9mIHRoaXMgZnJvbSBhIHNv
ZnR3YXJlIGVuZ2luZWVyaW5nIHBlcnNwZWN0aXZlLiBUaGlzCj4gPiBzeW1tZXRyaWMteG9yIGFr
YSBzaW1wbGlmaWVkLXRvZXBsaXR6IGlzIGFjdHVhbGx5IG11Y2ggY2hlYXBlciB0bwo+ID4gaW1w
bGVtZW50IGluIHNvZnR3YXJlIHRoYW4gdGhlIG9yaWdpbmFsLiBBcyBzdWNoIEkgd291bGQgd2Fu
dCBpdCB0byBiZQo+ID4gY29uc2lkZXJlZCBhIHNlcGFyYXRlIGFsZ29yaXRobSBhcyBJIGNvdWxk
IG1ha2UgdXNlIG9mIHNvbWV0aGluZyBsaWtlCj4gPiB0aGF0IHdoZW4gaGF2aW5nIHRvIGltcGxl
bWVudCBSU1MgaW4gUUVNVSBmb3IgaW5zdGFuY2UuCj4KPiBUaGF0J3MgZXhhY3RseSB3aHkgWE9S
IGFuZCBDUkMzMiBfYWxnb3JpdGhtc18gYWxyZWFkeSBleGlzdC4KPiBDUFVzIGhhdmUgaW5zdHJ1
Y3Rpb25zIHRvIGRvIHRoZW0gd29yZCBhdCBhIHRpbWUuCj4KPiAgICAgICAgIEVUSF9SU1NfSEFT
SF9UT1BfQklULCAvKiBDb25maWd1cmFibGUgUlNTIGhhc2ggZnVuY3Rpb24gLQo+ICAgICAgICAg
VG9lcGxpdHogKi8KPiAgICAgICAgIEVUSF9SU1NfSEFTSF9YT1JfQklULCAvKiBDb25maWd1cmFi
bGUgUlNTIGhhc2ggZnVuY3Rpb24gLSBYb3IgKi8KPiAgICAgICAgIEVUSF9SU1NfSEFTSF9DUkMz
Ml9CSVQsIC8qIENvbmZpZ3VyYWJsZSBSU1MgaGFzaCBmdW5jdGlvbiAtIENyYzMyICovCj4KPiBJ
ZiBlZmZpY2llbnQgU1cgaW1wbGVtZW50YXRpb24gaXMgaW1wb3J0YW50IHdoeSBkbyBzb21lIHdl
aXJkCj4gYmFzdGFyZGl6ZWQgcGFyYS10b2VwbGl0eiBhbmQgbm90IGNyYzMyPyBIYXNoZXMgZmFp
cmx5IHdlbGwKPiBmcm9tIHdoYXQgSSByZWNhbGwgd2l0aCB0aGUgb2xkZXIgTkZQcy4geDg2IGhh
cyBhbiBpbnN0cnVjdGlvbgo+IGZvciBpdCwgSUlSQyBpdCB3YXMgcGFydCBvZiBTU0UgYnV0IG9u
IG5vcm1hbCByZWdpc3RlcnMuCgpJZiB3ZSB3YW50IHRvIG5vdCBzdXBwb3J0IHRoYXQgSSB3b3Vs
ZCBiZSBmaW5lIHdpdGggdGhhdCB0b28uIEluIG15CnZpZXcgdGhpcyBpcyBhYm91dCBhcyBzZWN1
cmUgYXMgdXNpbmcgdGhlIDE2YiByZXBlYXRpbmcga2V5LgoKPiA+IEJhc2VkIG9uIGVhcmxpZXIg
Y29tbWVudHMgaXQgZG9lc24ndCBjaGFuZ2UgdGhlIGlucHV0cywgaXQganVzdAo+ID4gY2hhbmdl
cyBob3cgSSBoYXZlIHRvIGhhbmRsZSB0aGUgZGF0YSBhbmQgdGhlIGtleS4gSXQgc3RhcnRzIHJl
ZHVjaW5nCj4gPiB0aGluZ3MgZG93biB0byBzb21ldGhpbmcgbGlrZSB0aGUgSW50ZWwgaW1wbGVt
ZW50YXRpb24gb2YgRmxvdwo+ID4gRGlyZWN0b3IgaW4gdGVybXMgb2YgaG93IHRoZSBrZXkgZ2V0
cyBnZW5lcmF0ZWQgYW5kIGhhc2hlZC4KPgo+IEFib3V0IEZsb3cgRGlyZWN0b3IgSSBrbm93IG9u
bHkgdGhhdCBpdCBpcyBiYWQgOikKClllYWgsIGFuZCB0aGF0IGlzIG15IGNvbmNlcm4gdy8gdGhl
IHN5bW1ldHJpYyBYT1IgaXMgdGhhdCBpdCBpc24ndApnb29kLiBJdCBvcGVucyB1cCB0aGUgdG9l
cGxpdHogaGFzaCB0byBleHBsb2l0YXRpb24uIFlvdSBjYW4gdGFyZ2V0CnRoZSBzYW1lIGJ1Y2tl
dCBieSBqdXN0IG1ha2luZyBzdXJlIHRoYXQgc291cmNlIElQIGFuZCBwb3J0IFhPUiB3aXRoCmRl
c3RpbmF0aW9uIElQIGFuZCBwb3J0IHRvIHRoZSBzYW1lIHZhbHVlLiBUaGF0IGNhbiBiZSBkb25l
IGJ5IGFkZGluZwp0aGUgc2FtZSBhbW91bnQgdG8gZWFjaCBzaWRlLiBTbyB0aGVyZSBhcmUgMl4x
NDQgZWFzaWx5IHByZWRpY3RhYmxlCnBvc3NpYmxlIGNvbWJpbmF0aW9ucyB0aGF0IHdpbGwgZW5k
IHVwIGluIHRoZSBzYW1lIGhhc2ggYnVja2V0LiBTZWVtcwpsaWtlIGl0IG1pZ2h0IGJlIHNvbWV0
aGluZyB0aGF0IGNvdWxkIGJlIGV4cGxvaXRhYmxlLiBUaGF0IGlzIHdoeSBJCndhbnQgaXQgbWFy
a2VkIG91dCBhcyBhIHNlcGFyYXRlIGFsZ28gc2luY2UgaXQgaXMgZXNzZW50aWFsbHkKZGVzdHJv
eWluZyBlbnRyb3B5IGJlZm9yZSB3ZSBldmVuIGdldCB0byB0aGUgVG9lcGxpdHogcG9ydGlvbiBv
ZiB0aGUKaGFzaC4gQXMgc3VjaCBpdCBpc24ndCBhIGhhc2ggSSB3b3VsZCB3YW50IHRvIHVzZSBm
b3IgYW55dGhpbmcgdGhhdCBpcwptZWFudCB0byBzcHJlYWQgd29ya2xvYWQgc2luY2UgaXQgaXMg
c28gZWFzaWx5IGV4cGxvaXRhYmxlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
