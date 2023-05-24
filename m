Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 192907100DA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 00:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3ABE60E11;
	Wed, 24 May 2023 22:23:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3ABE60E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684967010;
	bh=R2ELcpThacOgiR6TbaW/EPlisD9oruSLkvWsCSyk/kI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vIBJSbvD2mAqeQTmHNPsHpLKB2rhSIv2pzkDPsATzVx7LWcThTxRuUa2blE+xOb1x
	 dFCfin0tBm+7TtdrISJuArvlRI2goVpyW4lIfDm0wKDrRzu+97b/M9oPK91AkwrJQ/
	 A1zIoJunUACHJBYDoN3Wo2jkRRLL0o3IEcw4PTCpvF4j3F7Zc2/mDLInPxU2LAdoJv
	 bM2cJgRWGfgiqMiChw0i229s1CflgUfM9XCA5nJTdO4JmeLPzQXXHo5FCDf5fSCPFl
	 HLxATZW/tzAf3ONXmAl5tair1dfVOBseHg6v1Ac0F71vBzRAxwu0uxDEdtXAgdaZLn
	 XjKbZowayXDyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToDTs7POXXo9; Wed, 24 May 2023 22:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1745607A3;
	Wed, 24 May 2023 22:23:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1745607A3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 536A11BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 21:01:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28413841C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 21:01:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28413841C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1JNJhCyqSNzj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 21:01:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 430A1841C3
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 430A1841C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 21:01:58 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-510e5a8704bso781a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 14:01:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684962116; x=1687554116;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ecRHb3a4uZb7D9V7KAm1/nNRXIsZmVIjd+RGF7WArC0=;
 b=DgLB+fLLz9GuR8Le3dCVAXAd02b3qi80YCG+5uaD9xOKSHxh2Gobd7sxQEEH10/h75
 Jh2s1PZ/k4bBTJuOXe+Uinv0Hfy8MZ74079DN2r/4WDSgSiRGTxLfntlfX7Rt4+94BCv
 zhQjkpmwr2K9lfwFJsB5FpUyi6OopCdd9bYaHqXsCteziIduOeCFoPusBfbphzsS5qO6
 ELN1REGTqwU8EQVMxVBrosjZe0c/Ng83rH8GXVd1VElHvernUBPZmonT+5fJTuou4nHW
 h5nzcFkctuEenp/iMEfYgc7GuIdfXPDmpuetwCGf6V2MfA+zN1nO/MedUhGqIsX1b+1p
 0AIw==
X-Gm-Message-State: AC+VfDxN6Ptffvx5MoB3TWYRfGeEIgYKMZsO3D03F7AOHHz0W0NipvaC
 LgkghXLGh+JDLeQTufctdYPBLPO+abKBJagqBdYjLA==
X-Google-Smtp-Source: ACHHUZ6ZLl9FAFgZv7T7gZGWy3LVOp7WfMUJpmQRoNZp2N//Vp6blt2TIamig2Vgxpe5PVROXbu3CI1TU8VYliv/Kzk=
X-Received: by 2002:a50:cd47:0:b0:4bc:dee8:94ca with SMTP id
 d7-20020a50cd47000000b004bcdee894camr23378edj.7.1684962116191; Wed, 24 May
 2023 14:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20230518072657.1.If9539da710217ed92e764cc0ba0f3d2d246a1aee@changeid>
 <CALs4sv2+Uu=Bry=B3FYzWdNrHjGWDvPCDhTFcNERVpWTjpmEyA@mail.gmail.com>
 <CANEJEGuzoBa_yYHRCa0KygUe=AOhUkSg4u6gWx+QNCuGtKod2Q@mail.gmail.com>
 <52cfebaf-79f6-c318-c14b-3716555d0e8f@intel.com>
 <SJ0PR11MB5866456B9007E3DC55FD8728E5419@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866456B9007E3DC55FD8728E5419@SJ0PR11MB5866.namprd11.prod.outlook.com>
From: Grant Grundler <grundler@chromium.org>
Date: Wed, 24 May 2023 14:01:44 -0700
Message-ID: <CANEJEGsOU3KkG5rQ5ph3EQOiBvPXmhUk7aPvM3nj5V5KudP=ZA@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
X-Mailman-Approved-At: Wed, 24 May 2023 22:23:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1684962116; x=1687554116;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ecRHb3a4uZb7D9V7KAm1/nNRXIsZmVIjd+RGF7WArC0=;
 b=Y5GLMKGFPpIlQIqkAD39okDyWwz+EMI6KjtjQk4TVsTOtaWHy4Lt7mmHTJmGhBmz/S
 7Xp5+LCH0/jjszqdPtFwYFtRNcaNAmMyWgsMV8z+snOmyhRqZ/RFPxUc/O05u+Wt8z27
 wkUu4Mkt1sKkoHYscyuLFbyJzwHe3LU0BW2Ks=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Y5GLMKGF
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix igb_down hung on surprise
 removal
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
Cc: Grant Grundler <grundler@chromium.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ying Hsu <yinghsu@chromium.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Jakub Kicinski <kuba@kernel.org>,
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXkgMjQsIDIwMjMgYXQgNTozNOKAr0FNIExva3Rpb25vdiwgQWxla3NhbmRyCjxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4gd3JvdGU6Cj4KPiBHb29kIGRheSBUb255Cj4K
PiBXZSByZXZpZXdlZCB0aGUgcGF0Y2ggYW5kIGhhdmUgbm90aGluZyBhZ2FpbnN0LgoKVGhhbmsg
eW91IGZvciByZXZpZXdpbmchCgpDYW4gSSB0YWtlIHRoaXMgYXMgdGhlIGVxdWl2YWxlbnQgb2Yg
IlNpZ25lZC1vZmYtYnk6IExva3Rpb25vdiwKQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92
QGludGVsLmNvbT4iPwoKT3Igc2luY2UgVG9ueSBpcyBsaXN0ZWQgaW4gTUFJTlRBSU5FUlMgZm9y
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsLAppcyBoZSBzdXBwb3NlZCB0byBwcm92aWRlIHRo
YXQ/CgpjaGVlcnMsCmdyYW50Cgo+Cj4gV2l0aCB0aGUgYmVzdCByZWdhcmRzCj4gQWxleAo+IE5E
IElUUCBMaW51eCA0MEcgYmFzZSBkcml2ZXIgVEwKPgo+Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4gPiBGcm9tOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBp
bnRlbC5jb20+Cj4gPiBTZW50OiBUdWVzZGF5LCBNYXkgMjMsIDIwMjMgODowNCBQTQo+ID4gVG86
IEdyYW50IEdydW5kbGVyIDxncnVuZGxlckBjaHJvbWl1bS5vcmc+OyBQYXZhbiBDaGViYmkKPiA+
IDxwYXZhbi5jaGViYmlAYnJvYWRjb20uY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIKPiA+IDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IE5lZnRpbiwgU2FzaGEgPHNhc2hhLm5lZnRp
bkBpbnRlbC5jb20+Owo+ID4gUnVpbnNraXksIERpbWEgPGRpbWEucnVpbnNraXlAaW50ZWwuY29t
Pgo+ID4gQ2M6IFlpbmcgSHN1IDx5aW5naHN1QGNocm9taXVtLm9yZz47IG5ldGRldkB2Z2VyLmtl
cm5lbC5vcmc7IERhdmlkIFMuCj4gPiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBFcmlj
IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+Owo+ID4gSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz47IEJyYW5kZWJ1cmcsIEplc3NlCj4gPiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRl
bC5jb20+OyBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBpbnRlbC0KPiA+IHdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gPiBT
dWJqZWN0OiBSZTogW1BBVENIXSBpZ2I6IEZpeCBpZ2JfZG93biBodW5nIG9uIHN1cnByaXNlIHJl
bW92YWwKPiA+Cj4gPiBPbiA1LzIyLzIwMjMgMToxNiBQTSwgR3JhbnQgR3J1bmRsZXIgd3JvdGU6
Cj4gPiA+IE9uIFRodSwgTWF5IDE4LCAyMDIzIGF0IDM6MzbigK9BTSBQYXZhbiBDaGViYmkKPiA+
IDxwYXZhbi5jaGViYmlAYnJvYWRjb20uY29tPiB3cm90ZToKPiA+ID4+Cj4gPiA+PiBPbiBUaHUs
IE1heSAxOCwgMjAyMyBhdCAxMjo1OOKAr1BNIFlpbmcgSHN1IDx5aW5naHN1QGNocm9taXVtLm9y
Zz4KPiA+IHdyb3RlOgo+ID4gPj4+Cj4gPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gPiA+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ID4gPj4+IGluZGV4IDU4ODcyYTRjMjU0MC4uYThiMjE3
MzY4Y2ExIDEwMDY0NAo+ID4gPj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yi9pZ2JfbWFpbi5jCj4gPiA+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdi
L2lnYl9tYWluLmMKPiA+ID4+PiBAQCAtOTU4MSw2ICs5NTgxLDExIEBAIHN0YXRpYyBwY2lfZXJz
X3Jlc3VsdF90Cj4gPiBpZ2JfaW9fZXJyb3JfZGV0ZWN0ZWQoc3RydWN0IHBjaV9kZXYgKnBkZXYs
Cj4gPiA+Pj4gICAgICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldiA9IHBjaV9nZXRfZHJ2
ZGF0YShwZGV2KTsKPiA+ID4+PiAgICAgICAgICBzdHJ1Y3QgaWdiX2FkYXB0ZXIgKmFkYXB0ZXIg
PSBuZXRkZXZfcHJpdihuZXRkZXYpOwo+ID4gPj4+Cj4gPiA+Pj4gKyAgICAgICBpZiAoc3RhdGUg
PT0gcGNpX2NoYW5uZWxfaW9fbm9ybWFsKSB7Cj4gPiA+Pj4gKyAgICAgICAgICAgICAgIGRldl93
YXJuKCZwZGV2LT5kZXYsICJOb24tY29ycmVjdGFibGUgbm9uLWZhdGFsIGVycm9yCj4gPiByZXBv
cnRlZC5cbiIpOwo+ID4gPj4+ICsgICAgICAgICAgICAgICByZXR1cm4gUENJX0VSU19SRVNVTFRf
Q0FOX1JFQ09WRVI7Cj4gPiA+Pj4gKyAgICAgICB9Cj4gPiA+Pj4gKwo+ID4gPj4KPiA+ID4+IFRo
aXMgY29kZSBtYXkgYmUgZ29vZCB0byBoYXZlLiBCdXQgbm90IHN1cmUgaWYgdGhpcyBzaG91bGQg
YmUgdGhlIGZpeAo+ID4gPj4gZm9yIGlnYl9kb3duKCkgc3luY2hyb25pemF0aW9uLgo+ID4gPgo+
ID4gPiBJIGhhdmUgdGhlIHNhbWUgb3Bpbmlvbi4gVGhpcyBhcHBlYXJzIHRvIHNvbHZlIHRoZSBw
cm9ibGVtIC0gYnV0IEkKPiA+ID4gZG9uJ3Qga25vdyBpZiB0aGVyZSBpcyBhIGJldHRlciB3YXkg
dG8gc29sdmUgdGhpcyBwcm9ibGVtLgo+ID4gPgo+ID4gPj4gSW50ZWwgZ3V5cyBtYXkgY29tbWVu
dC4KPiA+ID4KPiA+ID4gUGluZz8gQ2FuIHdlIHBsZWFzZSBnZXQgZmVlZGJhY2sgZnJvbSBJR0Iv
SUdDIG1haW50YWluZXJzIHRoaXMgd2Vlaz8KPiA+ID4KPiA+ID4gKEkgaG9wZSBpZ2MgbWFpbnRh
aW5lcnMgY2FuIGNvbmZpcm0gdGhpcyBpc24ndCBhbiBpc3N1ZSBmb3IgaWdjLikKPiA+Cj4gPiBB
ZGRpbmcgc29tZSBvZiB0aGUgaWdiIGFuZCBpZ2MgZGV2ZWxvcGVycy4KPiA+Cj4gPiA+IGNoZWVy
cywKPiA+ID4gZ3JhbnQKPiA+ID4KPiA+ID4+Cj4gPiA+Pj4gICAgICAgICAgbmV0aWZfZGV2aWNl
X2RldGFjaChuZXRkZXYpOwo+ID4gPj4+Cj4gPiA+Pj4gICAgICAgICAgaWYgKHN0YXRlID09IHBj
aV9jaGFubmVsX2lvX3Blcm1fZmFpbHVyZSkKPiA+ID4+PiAtLQo+ID4gPj4+IDIuNDAuMS42MDYu
Z2E0YjFiMTI4ZDYtZ29vZwo+ID4gPj4+Cj4gPiA+Pj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
