Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BACC76392E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 16:33:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5176A41DF1;
	Wed, 26 Jul 2023 14:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5176A41DF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690381980;
	bh=rXm0sQ34gxfO8N6VrnpvBx7jRJ21aTd8VWZYX0cXF/U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v+GA42G5U4ku/D6AuaiwhH3L3CpQqHtBdtSPfOFjRqvwzrHVAwCQ5m3SsonfyVBCn
	 D5cqFXilzOLYhbqE7h3Q1DEab0WgP3eZW97H22kwnCKp/dc9OAZyHLZa9ZFB0s6YUZ
	 AO0leCnLQf7LjDrkt+DOBqsVtYDj3YHIhpHcbRrR44aPO5wQNou10W4UPzgU/RgRAb
	 pY1alNiG0S6z6BcDhY0Xjy7shAlZNkfOHkOihaYofItQnkYKSoszyQPH5CDaDCIvIh
	 7N4bH5fFW7+h3yJUBJfJpdnLhwh8kfaRfn4QFUjLEZmGxZfIsjEUwT6JwwE+8nuiMP
	 f5WNSMbZWVpWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOJgrhWdvGst; Wed, 26 Jul 2023 14:32:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01D3D41DDD;
	Wed, 26 Jul 2023 14:32:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01D3D41DDD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BB4A1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 14:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E9A7041757
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 14:32:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9A7041757
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ie469f7VKOEX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 14:32:49 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 636DF4173B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 14:32:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 636DF4173B
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-98377c5d53eso1076618466b.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:32:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690381967; x=1690986767;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Mv0yRbES3EfD9bspTWviKRieLzb9r1m2dwD2cIgf4aY=;
 b=LhbtMZ5IyiBNYnCU/BPJwpJ8p2EoRVLm2t2SBPpUpYvmatBlhgfDpcYn12nfhC9Inu
 8q8vG1wtiHjmGSKY7NEeRqT/3LbLNauEx3uFH/uqdEPm4VfxisnE+TS55BJqLpnxWOE7
 xYJ+42DGNEg/hAmhFY8MBtFwtnJO5pohPuj6nfoIVRqVuPeh9E6Z+RjWSIh70HyqkAec
 CLyfbBZOmoDxauYpDY9Y3vwXiBdncE0ueE00T3kExrLlpl30XQhZavbdfKQp6RFeU3rS
 UZ+OGdDeMBoRzglTdPPbiAQJXAORsUT6ZgwJIUAyQJARTslJRsh/iOni29lCROKqs9zY
 eWIA==
X-Gm-Message-State: ABy/qLbMuv7G5UvVXMgySYO1+7OOjO67cBKYhASnuH/eb0n1LCQIfMHE
 npTqZiVyRxEiSNxRy5OdB3fax7ntsTI71ZgTv+M=
X-Google-Smtp-Source: APBJJlF5G3155eQMm3z4NuIiXvIs/2CDl6Is8q4+f1WNKHF6LWYe6F3a6l8dKDuUSYNVBobMQKpJ+aVwLuX4XSUv3jU=
X-Received: by 2002:a17:906:5a5a:b0:973:e5d9:d6ff with SMTP id
 my26-20020a1709065a5a00b00973e5d9d6ffmr2007741ejc.66.1690381967155; Wed, 26
 Jul 2023 07:32:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-3-marcin.szycik@linux.intel.com>
 <ZLqZRFa1VOHHWCqX@smile.fi.intel.com>
 <5775952b-943a-f8ad-55a1-c4d0fd08475f@intel.com>
 <CAHp75VcFse1_gijfhDkyxhBFtd1d-o5_4RO2j2urSXJ_HuZzyg@mail.gmail.com>
 <d5ffe1d3-0378-eaaf-c77f-a1f8a2875826@intel.com>
In-Reply-To: <d5ffe1d3-0378-eaaf-c77f-a1f8a2875826@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 26 Jul 2023 17:32:10 +0300
Message-ID: <CAHp75VfP5b4Rv64LZb1e2oCxfjfvNRZvBbGNcOc19tTcUYEjhA@mail.gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690381967; x=1690986767;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Mv0yRbES3EfD9bspTWviKRieLzb9r1m2dwD2cIgf4aY=;
 b=dUYpGqPbFkMgPrdLowlCuNuFT8QmIzngzDO2cyymud5D8XpUWyNJYY0o2A+heA1QDh
 BHPhmOi07H9EkbDRjdEEWxdQPV96Xwh9Mm5WMgyXNam1nfmN7Pzsm6C95dlqrLsEwb+Y
 SK+bt/W2HxHNMn3G51qINxqmQHYsEkmiCMrLmTPBXxbZMutxtVUtVrUDmucU7zBabto/
 4mqmH98w92aLQpzjOrY9qAR/VgfTMVkMqgYFYjBJ1Rfj4BMYqk5GQdwPa9QOOROAkLes
 H0T8VoSoNnw/wZ/YH/BAs42LeT/Ogi6oBxTR5QhtTAbH8aD3oiq6zDLTAbiwkWFJOuyF
 mQBw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=dUYpGqPb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: Andy Shevchenko <andy@kernel.org>, Yury Norov <yury.norov@gmail.com>,
 netdev@vger.kernel.org, idosch@nvidia.com, jiri@resnulli.us,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdWwgMjYsIDIwMjMgYXQgNDoxN+KAr1BNIEFsZXhhbmRlciBMb2Jha2luCjxhbGVr
c2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPiB3cm90ZToKPiBGcm9tOiBBbmR5IFNoZXZjaGVua28g
PGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+Cj4gRGF0ZTogV2VkLCAyNiBKdWwgMjAyMyAxNTow
MTo0NCArMDMwMAo+ID4gT24gV2VkLCBKdWwgMjYsIDIwMjMgYXQgMjoxMeKAr1BNIEFsZXhhbmRl
ciBMb2Jha2luCj4gPiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4gd3JvdGU6Cj4gPj4g
RnJvbTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGtlcm5lbC5vcmc+LCBZdXJ5IE5vcm92IDx5dXJ5
Lm5vcm92QGdtYWlsLmNvbT4KPiA+PiBEYXRlOiBGcmksIDIxIEp1bCAyMDIzIDE3OjQyOjEyICsw
MzAwCj4gPj4+IE9uIEZyaSwgSnVsIDIxLCAyMDIzIGF0IDA5OjE1OjI4QU0gKzAyMDAsIE1hcmNp
biBTenljaWsgd3JvdGU6Cj4gPj4+PiBGcm9tOiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRl
ci5sb2Jha2luQGludGVsLmNvbT4KCi4uLgoKPiA+Pj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaXBf
dHVubmVsX2ZsYWdzX2Zyb21fYmUxNih1bnNpZ25lZCBsb25nICpkc3QsIF9fYmUxNiBmbGFncykK
PiA+Pj4+ICt7Cj4gPj4+PiArICAgIGJpdG1hcF96ZXJvKGRzdCwgX19JUF9UVU5ORUxfRkxBR19O
VU0pOwo+ID4+Pgo+ID4+Pj4gKyAgICAqZHN0ID0gYmUxNl90b19jcHUoZmxhZ3MpOwo+ID4+Pgo+
ID4+PiBPaCwgVGhpcyBpcyBub3QgZ29vZC4gV2hhdCB5b3UgbmVlZCBpcyBzb21ldGhpbmcgbGlr
ZSBiaXRtYXBfc2V0X3ZhbHVlMTYoKSBpbgo+ID4+PiBhbmFsb2d1ZSB3aXRoIGJpdG1hcF9zZXRf
dmFsdWU4KCkuCj4gPj4KPiA+PiBCdXQgSSBkb24ndCBuZWVkIGBzdGFydGAsIHRob3NlIGZsYWcg
d2lsbCBhbHdheXMgYmUgaW4gdGhlIGZpcnN0IHdvcmQKPiA+PiBhbmQgSSBkb24ndCBuZWVkIHRv
IHJlcGxhY2Ugb25seSBzb21lIHJhbmdlLCBidXQgdG8gY2xlYXIgZXZlcnl0aGluZyBhbmQKPiA+
PiB0aGVuIHNldCBvbmx5IHRoZSBmbGFncyB3aGljaCBhcmUgc2V0IGluIHRoYXQgX19iZTE2Lgo+
ID4+IFdoeSBzaG91bGRuJ3QgdGhpcyB3b3JrPwo+ID4KPiA+IEknbSBub3Qgc2F5aW5nIGl0IHNo
b3VsZCBvciBzaG91bGRuJ3QgKGFjdHVhbGx5IHlvdSBuZWVkIHRvIHByb3ZlIHRoYXQKPiA+IHdp
dGggc29tZSB0ZXN0IGNhc2VzIGFkZGVkKS4gV2hhdCBJJ20gc2F5aW5nIGlzIHRoYXQgdGhpcyBj
b2RlIGlzIGEKPgo+IEdvb2QgaWRlYSBCVFchCj4KPiA+IGhhY2sgYmVjYXVzZSBvZiBhIGxheWVy
aW5nIHZpb2xhdGlvbi4gV2UgZG8gbm90IGRlcmVmZXJlbmNlIGJpdG1hcHMKPiA+IHdpdGggZGly
ZWN0IGFjY2Vzcy4gRXZlbiBpbiB5b3VyIGNvZGUgeW91IGhhdmUgYml0bWFwX3plcm8oKSBmb2xs
b3dlZAo+ID4gYnkgdGhpcyBoYWNrLiBXaHkgZG8geW91IGNhbGwgdGhhdCBiaXRtYXBfemVybygp
IGluIHRoZSBmaXJzdCBwbGFjZSBpZgo+ID4geW91IGFyZSBzbyBzdXJlIGV2ZXJ5dGhpbmcgd2ls
bCBiZSBva2F5PyBTbyBlaXRoZXIgeW91IHN0aWNrIHdpdGgKPgo+IEJlY2F1c2UgdGhlIGJpdG1h
cCBjYW4gYmUgbG9uZ2VyIHRoYW4gb25lIGxvbmcsIGJ1dCB3aXRoIHRoYXQgZGlyZWN0Cj4gZGVm
ZXJlbmNlIEkgb25seSByZXdyaXRlIHRoZSBmaXJzdCBvbmUuCgpBbmQgZWl0aGVyIHlvdSBkb24n
dCBuZWVkIGJpdG1hcHMgKHlvdSBhbHdheXMgb3BlcmF0ZSBpbiB0aGUgcmFuZ2Ugb2YKYSAzMi1i
aXQgdHlwZSkgb3IgeW91IG5lZWQgdG8gYXZvaWQga25vd2luZyB0aGUgYml0bWFwIGludGVybmFs
cy4KUmVseWluZyBvbiBpbnRlcm5hbCBpbXBsZW1lbnRhdGlvbiBpcyBub3QgYSBnb29kIGNvZGUs
IGkuZS4gbGF5ZXJpbmcKdmlvbGF0aW9uLgoKPiBCdXQgSSBhZG1pdCBpdCdzIGEgaGFjayAod2Fz
bid0IGhpZGluZyB0aGF0KS4gSnVzdCB0aG91Z2h0IHRoaXMgb25lIGlzCj4gInNlbWktaW50ZXJu
YWwiIGFuZCBpdCB3b3VsZCBiZSBva2F5aXNoIHRvIGhhdmUgaXQuLi4gSSB3YXMgd3JvbmcgOkQK
PiBXaGF0IEknbSB0aGlua2luZyBvZiBub3cgaXM6Cj4KPiAgICAgICAgIGJpdG1hcF96ZXJvKCkg
Ly8gbWFrZSBzdXJlIHRoZSB3aG9sZSBiaXRtYXAgaXMgY2xlYXJlZAo+ICAgICAgICAgYml0bWFw
X3NldF92YWx1ZTE2KCkgLy8gd2l0aCBgc3RhcnRgID09IDAKClJpZ2h0LgoKPiBXaXRoIGFkZGlu
ZyBiaXRtYXBfc2V0X3ZhbHVlMTYoKSBpbiBhIHNlcGFyYXRlIGNvbW1pdCBvYnZpb3VzbHkuCgpD
b3JyZWN0LgoKPiBUaGF0IGNvbWJvIHNob3VsZG4ndCBiZSB0b28gaGFyZCBmb3IgdGhlIGNvbXBp
bGVyIHRvIG9wdGltaXplIGludG8KPiBhIGNvdXBsZSB3cml0ZXMgSSBob3BlLgoKRXhhY3RseSB3
aHkgSSBzdWdnZXN0ZWQgdXNpbmcgZml4ZWQtd2lkdGggYWNjZXNzb3JzLiBBbmQgaWYgeW91IHVz
ZQpjb21waWxlLXRpbWUgY29uc3RhbnRzIGZvciB0aGUgYml0bWFwcyA8PSBCSVRTX1BFUl9MT05H
LCBpdCB3aWxsIGJlCihvciBhdCBsZWFzdCBpdCBzaG91bGQgYmUpIG9wdGltaXplZCB0byB0aGUg
Yml0d2lzZSBvcHMuIFRoYXQncyBob3cKYml0bWFwIEFQSXMgYXJlIGRvbmUgbm93YWRheXMuCgo+
ID4gYml0b3BzIC8gYml0bWFwIEFQSXMgb3IgZHJvcCBhbGwgb2YgdGhlbSBhbmQgdXNlIFBPRCB0
eXBlcyBhbmQgYml0Cj4gPiB3aXNlIG9wcy4KCi4uLgoKPiA+Pj4+ICsgICAgcmV0ID0gY3B1X3Rv
X2JlMTYoKmZsYWdzICYgVTE2X01BWCk7Cj4gPgo+ID4gU2FtZSBhcyBhYm92ZS4KCi0tIApXaXRo
IEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
