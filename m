Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A20D2812A82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 09:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 233BC83BD1;
	Thu, 14 Dec 2023 08:37:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 233BC83BD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702543075;
	bh=+tiOJTrQyLMIHS+gbR+LGjLKcCOet2kKyFJbR5rwBSU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hPY0wi3uBeoudf+qqes2CZc04pXLUFbZGTN/aMjKTu6qf9S+9bC5v1NYu/E4hoMN0
	 13I4GfTqA3OPP+Wq0o4Orp5jwkpJK3ZJdSqERLEzj9Rrp+6Cg4EWwL68HZXF1AN52E
	 UnE0s+VOb70KCll15BH0ErpCV9QF1LogKbg77BqsiLgQCxk/4ciz1YU+NJCEZ8dB9d
	 ZSrBk9wCo8Cpnf1FTUbLIDXI6Hc6PxfqE6S4vzPfhu1hv8bOY9CkOyflNqlpNBVDev
	 HBxGGBDZWANM16K1WkUcdKa2Roh/E7en/3tR/crclDCvx+g/UXy3wcAuU/8htnYZup
	 P9LDx5ttHzASg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fos6ZPY9jqSr; Thu, 14 Dec 2023 08:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E29F83C23;
	Thu, 14 Dec 2023 08:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E29F83C23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E514A1BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C906B83BD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C906B83BD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWcHl1-ioFuu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 08:37:48 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F24AB83A8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 08:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F24AB83A8A
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-102-LjUsiuN-NfSPatXsRMzIoQ-1; Thu, 14 Dec 2023 03:37:45 -0500
X-MC-Unique: LjUsiuN-NfSPatXsRMzIoQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-54c72459097so4516655a12.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 00:37:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702543064; x=1703147864;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oXOBVzpvKvhd2chS55XvNzJeAhU9TyiGp328MmRIZKo=;
 b=Y08c1TE7Pycu7Zv6jLdmO0sxU/sbwYc8JC7pGWCmQsNJzjVgLOl/De+/h8eNge/3Go
 yzT6zSK3etIUXKwOc3pFNKHian+i869nzpkA31tIcxVqHL63BJy4rgvjvVAjjYdHQ7ZW
 PQ3waIULBn+B92IBMXUS9OhDORiNRsR4TJYIZMjLMWzqEi3B5G4uvcCg+GP0KjXacJJ7
 lamiqSpva5eeOqNJdU31V7BL+DObqRn1uZ6Aub2K3U6CvTz37nLRwSga0vbTbcIN1L50
 5tlnpYuCQmhk9IwFIimElm1uxTu65cAh+4jzUO1nBKUWpWi3qCbbIwRPZFSDQxOGSLDG
 6Mog==
X-Gm-Message-State: AOJu0YwkT2V2DQeND9Ei93Cf4nBonMu4QzRSghziO6QEIezjI4nxomkX
 z2jHFSpmnmI6iiZIiZEiB4e2WZPGoJ6++JXomLUlYWVPaTF6IqP7zD+IzI2C50EmIzGrPOgezw+
 ahA9yf43GCe/ag0BS6L5g02hAxU94yJ8uPCuVjGZCk558Eg==
X-Received: by 2002:a50:9342:0:b0:552:33b9:f810 with SMTP id
 n2-20020a509342000000b0055233b9f810mr799404eda.62.1702543064090; 
 Thu, 14 Dec 2023 00:37:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFG+WzqaxvbKUUT6dFMVEqdFxaQHNl67nWn83NQ3R+BT7W/RHMlx6Oju7nRuw4HEPH80O5rEuXtIotqixn5TRs=
X-Received: by 2002:a50:9342:0:b0:552:33b9:f810 with SMTP id
 n2-20020a509342000000b0055233b9f810mr799399eda.62.1702543063730; Thu, 14 Dec
 2023 00:37:43 -0800 (PST)
MIME-Version: 1.0
References: <20231102155149.2574209-1-pawel.chmielewski@intel.com>
In-Reply-To: <20231102155149.2574209-1-pawel.chmielewski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 14 Dec 2023 09:37:32 +0100
Message-ID: <CADEbmW03axMX30oiEG0iNLLiGYaTi6pqx9qdrLsR7DSC-x-fyw@mail.gmail.com>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1702543066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oXOBVzpvKvhd2chS55XvNzJeAhU9TyiGp328MmRIZKo=;
 b=FunBj/je+lic/T8DlntZhDD9Hosi+y2uZWhKIWrT+1+pxLorgVVohiLHho2AxS2lmt0m3v
 +3eFR1mka1Yjnwbfjs35TdklcK9LtzKXmjUEIuvs84i5oSy12Du/+xxHPCy4CQ2T8hzPYL
 GUD9qf3SyWqFEr8BNvlHrBurJ6NmHpo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FunBj/je
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Reset VF on Tx MDD
 event
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 intel-wired-lan@lists.osuosl.org, Liang-Min Wang <liang-min.wang@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBOb3YgMiwgMjAyMyBhdCA0OjU24oCvUE0gUGF3ZWwgQ2htaWVsZXdza2kKPHBhd2Vs
LmNobWllbGV3c2tpQGludGVsLmNvbT4gd3JvdGU6Cj4gRnJvbTogTGlhbmctTWluIFdhbmcgPGxp
YW5nLW1pbi53YW5nQGludGVsLmNvbT4KPgo+IEluIGNhc2VzIHdoZW4gVkYgc2VuZHMgbWFsZm9y
bWVkIHBhY2tldHMgdGhhdCBhcmUgY2xhc3NpZmllZCBhcyBtYWxpY2lvdXMsCj4gc29tZXRpbWVz
IGl0IGNhdXNlcyBUeCBxdWV1ZSB0byBmcmVlemUuIFRoaXMgZnJvemVuIHF1ZXVlIGNhbiBiZSBz
dHVjawo+IGZvciBzZXZlcmFsIG1pbnV0ZXMgYmVpbmcgdW51c2FibGUuIFRoaXMgYmVoYXZpb3Ig
Y2FuIGJlIHJlcHJvZHVjZWQgd2l0aAo+IERQREsgYXBwbGljYXRpb24sIHRlc3RwbWQuCj4KPiBX
aGVuIE1hbGljaW91cyBEcml2ZXIgRGV0ZWN0aW9uIGV2ZW50IG9jY3VycywgcGVyZm9ybSBncmFj
ZWZ1bCBWRiByZXNldAo+IHRvIHF1aWNrbHkgYnJpbmcgVkYgYmFjayB0byBvcGVyYXRpb25hbCBz
dGF0ZS4gQWRkIGEgbG9nIG1lc3NhZ2UgdG8KPiBub3RpZnkgYWJvdXQgdGhlIGNhdXNlIG9mIHRo
ZSByZXNldC4KClNvcnJ5IGZvciBicmluZ2luZyB0aGlzIHVwIHNvIGxhdGUsIGJ1dCBJIGhhdmUg
anVzdCBub3cgcmVhbGl6ZWQgdGhpczoKV2Fzbid0IGZyZWV6aW5nIG9mIHRoZSBxdWV1ZSBvcmln
aW5hbGx5IHRoZSBpbnRlbmRlZCBiZWhhdmlvciwgYXMgYQpwZW5hbHR5IGZvciBiZWluZyBtYWxp
Y2lvdXM/ClNob3VsZG4ndCB0aGVzZSByZXNldHMgYXQgbGVhc3QgYmUgZ3VhcmRlZCBieSBJQ0Vf
RkxBR19NRERfQVVUT19SRVNFVF9WRj8KCk1pY2hhbAoKPiBTaWduZWQtb2ZmLWJ5OiBMaWFuZy1N
aW4gV2FuZyA8bGlhbmctbWluLndhbmdAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBhd2Vs
IENobWllbGV3c2tpIDxwYXdlbC5jaG1pZWxld3NraUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6
IE1pY2hhbCBTd2lhdGtvd3NraSA8bWljaGFsLnN3aWF0a293c2tpQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiBDaGFuZ2Vsb2cKPiB2MS0+djI6Cj4gUmV2ZXJ0ZWQgdW5uZWVkZWQgZm9ybWF0dGlu
ZyBjaGFuZ2UsIGZpeGVkIGNvbW1pdCBtZXNzYWdlLCBmaXhlZCBhIGxvZwo+IG1lc3NhZ2Ugd2l0
aCBhIGNvcnJlY3QgZXZlbnQgbmFtZS4KPiAtLS0KPgo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX21haW4uYyB8IDggKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMK
PiBpbmRleCAzYzk0MTliMDVhMmEuLmVlOTc1MmFmNjM5NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gQEAgLTE4MzksNiArMTgzOSwxMCBAQCBzdGF0
aWMgdm9pZCBpY2VfaGFuZGxlX21kZF9ldmVudChzdHJ1Y3QgaWNlX3BmICpwZikKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBpZiAobmV0aWZfbXNnX3R4X2VycihwZikpCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBkZXZfaW5mbyhkZXYsICJNYWxpY2lvdXMgRHJpdmVyIERldGVj
dGlvbiBldmVudCBUWF9UQ0xBTiBkZXRlY3RlZCBvbiBWRiAlZFxuIiwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZmLT52Zl9pZCk7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgZGV2X2luZm8oZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJQRi10by1WRiByZXNldCBvbiBWRiAlZCBkdWUgdG8gVHggTUREIFRYX1RDTEFOIGV2ZW50XG4i
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZmLT52Zl9pZCk7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgaWNlX3Jlc2V0X3ZmKHZmLCBJQ0VfVkZfUkVTRVRfTk9USUZZKTsK
PiAgICAgICAgICAgICAgICAgfQo+Cj4gICAgICAgICAgICAgICAgIHJlZyA9IHJkMzIoaHcsIFZQ
X01ERVRfVFhfVERQVSh2Zi0+dmZfaWQpKTsKPiBAQCAtMTg0OSw2ICsxODUzLDEwIEBAIHN0YXRp
YyB2b2lkIGljZV9oYW5kbGVfbWRkX2V2ZW50KHN0cnVjdCBpY2VfcGYgKnBmKQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGlmIChuZXRpZl9tc2dfdHhfZXJyKHBmKSkKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGRldl9pbmZvKGRldiwgIk1hbGljaW91cyBEcml2ZXIgRGV0ZWN0
aW9uIGV2ZW50IFRYX1REUFUgZGV0ZWN0ZWQgb24gVkYgJWRcbiIsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB2Zi0+dmZfaWQpOwo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGRldl9pbmZvKGRldiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAi
UEYtdG8tVkYgcmVzZXQgb24gVkYgJWQgZHVlIHRvIFR4IE1ERCBUWF9URFBVIGV2ZW50XG4iLAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZmLT52Zl9pZCk7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaWNlX3Jlc2V0X3ZmKHZmLCBJQ0VfVkZfUkVTRVRfTk9USUZZKTsKPiAg
ICAgICAgICAgICAgICAgfQo+Cj4gICAgICAgICAgICAgICAgIHJlZyA9IHJkMzIoaHcsIFZQX01E
RVRfUlgodmYtPnZmX2lkKSk7Cj4gLS0KPiAyLjM3LjMKPgo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
