Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E9466E373
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 17:23:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAC8C82024;
	Tue, 17 Jan 2023 16:23:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAC8C82024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673972612;
	bh=sxlKZx1DfJg1tBi7jc044fmx0f0LTZl6P51C4rytzVA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=icVjQyYWiU/Fz8+3LW7OhCdg4srkxDzIfzWVitEHow/GpuqmFwnBDsf0UMP36nSJA
	 duLncr76KHgiXaiHl+1B4265feqUwOpdS0leJVwYW+WkK0tdu2JMAh30cVzqg9m6yb
	 A3sipWPBYKUxXrdFXvyUgBRDwAeJQ/gEj5pNAQTDCUnV54mmrLOF+UyYAzYQWWWMEL
	 eHSu7AV9D8stO8XmY5+8nfwNehkhffqU3HwKpib1lFrZjLvXM1TXi7NwPXQI+TmWWn
	 tmSZh5kQJWO+PADHTToPYGANzwLlP+HLE8BNVjpQwTYm4j8t8qFQ+ZK0VZ4V0UfZ17
	 IDlkmIsQlBiqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHhW5ZgnCyoO; Tue, 17 Jan 2023 16:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B11982010;
	Tue, 17 Jan 2023 16:23:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B11982010
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4D231BF34E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 13:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A23D96076C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 13:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A23D96076C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HbKmzA94Lnor for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 13:04:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59E0F605BE
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59E0F605BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 13:04:21 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id u19so58108634ejm.8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 05:04:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DsXgYjxOS09OnTxGvEc/+OP4KZLhjGwsOicuPwyzUGk=;
 b=KOiTuedHnq7t5eE2z+5EjJCuJJ4zXzjBxqAk7ne5xVhUwrgvAT70AJwtXlSNvrPiud
 Pprn5UjdXDm2dQT+xLfFQLp+UkkMUHlk0Ym4pDTvm8/S136uP17atpnZPxXyMJrxO2Xb
 20sFmyMl6KQy7PERvuslDHlU6Pc4vpHlHWAhao5er+2ghq3DZ6sW2D/OUMtSkYpB8x/N
 JagiPpH0SAnilPgOuY6YWRAA6LRwNv6+hp+4IvgqEO+DSQ12uNRrZu2/tIdgUKBoAr0s
 uqsn4r+5j+J0vFo7wBuxizmYszYVp4D7QtF03S1vtMbpUYh8qanLwTlz6+CDngT37/SW
 JpKw==
X-Gm-Message-State: AFqh2kr7CTa9I7qCj9rC33ANrAng9+7mBjjR/JCvzzGQRgRudOftwVnI
 3iZ19LmqbHnHi2g22odx6BDKhdNDuCqX0KoUNnA1Zg==
X-Google-Smtp-Source: AMrXdXtt8VtcG0ZaiQoo6Filx0B8NhS9GG4Yv0lcmZB/NBvFYyzk7XRU9CcjAvDHo/C7/85Imm7S2DThDH4GAergfik=
X-Received: by 2002:a17:906:2ccc:b0:7f3:3b2:314f with SMTP id
 r12-20020a1709062ccc00b007f303b2314fmr6669538ejr.115.1673701459232; Sat, 14
 Jan 2023 05:04:19 -0800 (PST)
MIME-Version: 1.0
References: <20230111183145.1497367-1-david.m.ertman@intel.com>
In-Reply-To: <20230111183145.1497367-1-david.m.ertman@intel.com>
From: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Date: Sat, 14 Jan 2023 14:03:52 +0100
Message-ID: <CAK8fFZ68h+AT=GmPwBGrc63t2A__eSMAufSiOL481J5icpPrCw@mail.gmail.com>
To: Dave Ertman <david.m.ertman@intel.com>
X-Mailman-Approved-At: Tue, 17 Jan 2023 16:23:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gooddata.com; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DsXgYjxOS09OnTxGvEc/+OP4KZLhjGwsOicuPwyzUGk=;
 b=bPyC5btXURVCHdTJkq7TDJ2spXeos+pcLxwlNnuulGxgOCIsiYd7IZ7OQ/wGzcdG6n
 ZhFTA0VAXZYZ+nPtzXQDFlpYNvOrgAUisQRDwJ834piB65ulkWE3iTBA66XhBCzVptXn
 ms3sL3BESXjFI1CDGEa3C/Z1vqsYvnVbtdFgg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=gooddata.com header.i=@gooddata.com
 header.a=rsa-sha256 header.s=google header.b=bPyC5btX
Subject: Re: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8KCkkgdGVzdGVkIHRoaXMgcGF0Y2ggd2l0aCA2LjEuNSBhbmQgNi4xLjYgYW5kIHRoZSBz
eXN0ZW0gaGFzIGEgd29ya2luZyBuZXR3b3JrLgoKQmVzdCwKSmFyb3NsYXYgUC4KCgpzdCAxMS4g
MS4gMjAyMyB2IDE5OjMxIG9kZXPDrWxhdGVsIERhdmUgRXJ0bWFuIDxkYXZpZC5tLmVydG1hbkBp
bnRlbC5jb20+IG5hcHNhbDoKPgo+IFJETUEgaXMgbm90IHN1cHBvcnRlZCBpbiBpY2Ugb24gYSBQ
RiB0aGF0IGhhcyBiZWVuIGFkZGVkIHRvIGEgYm9uZGVkCj4gaW50ZXJmYWNlLiBUbyBlbmZvcmNl
IHRoaXMsIHdoZW4gYW4gaW50ZXJmYWNlIGVudGVycyBhIGJvbmQsIHdlIHVucGx1Zwo+IHRoZSBh
dXhpbGlhcnkgZGV2aWNlIHRoYXQgc3VwcG9ydHMgUkRNQSBmdW5jdGlvbmFsaXR5LiAgVGhpcyB1
bnBsdWcKPiBjdXJyZW50bHkgaGFwcGVucyBpbiB0aGUgY29udGV4dCBvZiBoYW5kbGluZyB0aGUg
bmV0ZGV2IGJvbmRpbmcgZXZlbnQuCj4gVGhpcyBldmVudCBpcyBzZW50IHRvIHRoZSBpY2UgZHJp
dmVyIHVuZGVyIFJUTkwgY29udGV4dC4gIFRoaXMgaXMgY2F1c2luZwo+IGEgZGVhZGxvY2sgd2hl
cmUgdGhlIFJETUEgZHJpdmVyIGlzIHdhaXRpbmcgZm9yIHRoZSBSVE5MIGxvY2sgdG8gY29tcGxl
dGUKPiB0aGUgcmVtb3ZhbC4KPgo+IERlZmVyIHRoZSB1bnBsdWdnaW5nL3JlLXBsdWdnaW5nIG9m
IHRoZSBhdXhpbGlhcnkgZGV2aWNlIHRvIHRoZSBzZXJ2aWNlCj4gdGFzayBzbyB0aGF0IGl0IGlz
IG5vdCBwZXJmb3JtZWQgdW5kZXIgdGhlIFJUTkwgbG9jayBjb250ZXh0Lgo+Cj4gUmVwb3J0ZWQt
Ynk6IEphcm9zbGF2IFB1bGNoYXJ0IDxqYXJvc2xhdi5wdWxjaGFydEBnb29kZGF0YS5jb20+Cj4g
TGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcmRtYS82OGIxNGIxMS1kMGM3LTY1
YzktNGVlYi0wNDg3Yzk1ZTM5NWRAbGVlbWh1aXMuaW5mby8KPiBGaXhlczogNWNiMWViZGJjNDM0
ICgiaWNlOiBGaXggcmFjZSBjb25kaXRpb24gZHVyaW5nIGludGVyZmFjZSBlbnNsYXZlIikKPiBG
aXhlczogNDI1YzliZDA2YjdhICgiUkRNQS9pcmRtYTogUmVwb3J0IHRoZSBjb3JyZWN0IGxpbmsg
c3BlZWQiKQo+IFNpZ25lZC1vZmYtYnk6IERhdmUgRXJ0bWFuIDxkYXZpZC5tLmVydG1hbkBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCAgICAg
IHwgMTQgKysrKystLS0tLS0tLS0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9tYWluLmMgfCAxNyArKysrKysrLS0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2UuaAo+IGluZGV4IDJmMGI2MDRhYmM1ZS4uMGFkOWJhYjg0NjE3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaAo+IEBAIC01MDYsNiArNTA2LDcgQEAgZW51bSBpY2Vf
cGZfZmxhZ3Mgewo+ICAgICAgICAgSUNFX0ZMQUdfVkZfVkxBTl9QUlVOSU5HLAo+ICAgICAgICAg
SUNFX0ZMQUdfTElOS19MRU5JRU5UX01PREVfRU5BLAo+ICAgICAgICAgSUNFX0ZMQUdfUExVR19B
VVhfREVWLAo+ICsgICAgICAgSUNFX0ZMQUdfVU5QTFVHX0FVWF9ERVYsCj4gICAgICAgICBJQ0Vf
RkxBR19NVFVfQ0hBTkdFRCwKPiAgICAgICAgIElDRV9GTEFHX0dOU1MsICAgICAgICAgICAgICAg
ICAgLyogR05TUyBzdWNjZXNzZnVsbHkgaW5pdGlhbGl6ZWQgKi8KPiAgICAgICAgIElDRV9QRl9G
TEFHU19OQklUUyAgICAgICAgICAgICAgLyogbXVzdCBiZSBsYXN0ICovCj4gQEAgLTk1MCwxNiAr
OTUxLDExIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpY2Vfc2V0X3JkbWFfY2FwKHN0cnVjdCBpY2Vf
cGYgKnBmKQo+ICAgKi8KPiAgc3RhdGljIGlubGluZSB2b2lkIGljZV9jbGVhcl9yZG1hX2NhcChz
dHJ1Y3QgaWNlX3BmICpwZikKPiAgewo+IC0gICAgICAgLyogV2UgY2FuIGRpcmVjdGx5IHVucGx1
ZyBhdXggZGV2aWNlIGhlcmUgb25seSBpZiB0aGUgZmxhZyBiaXQKPiAtICAgICAgICAqIElDRV9G
TEFHX1BMVUdfQVVYX0RFViBpcyBub3Qgc2V0IGJlY2F1c2UgaWNlX3VucGx1Z19hdXhfZGV2KCkK
PiAtICAgICAgICAqIGNvdWxkIHJhY2Ugd2l0aCBpY2VfcGx1Z19hdXhfZGV2KCkgY2FsbGVkIGZy
b20KPiAtICAgICAgICAqIGljZV9zZXJ2aWNlX3Rhc2soKS4gSW4gdGhpcyBjYXNlIHdlIG9ubHkg
Y2xlYXIgdGhhdCBiaXQgbm93IGFuZAo+IC0gICAgICAgICogYXV4IGRldmljZSB3aWxsIGJlIHVu
cGx1Z2dlZCBsYXRlciBvbmNlIGljZV9wbHVnX2F1eF9kZXZpY2UoKQo+IC0gICAgICAgICogY2Fs
bGVkIGZyb20gaWNlX3NlcnZpY2VfdGFzaygpIGZpbmlzaGVzIChzZWUgaWNlX3NlcnZpY2VfdGFz
aygpKS4KPiArICAgICAgIC8qIGRlZmVyIHVucGx1ZyB0byBzZXJ2aWNlIHRhc2sgdG8gYXZvaWQg
UlROTCBsb2NrIGFuZAo+ICsgICAgICAgICogY2xlYXIgUExVRyBiaXQgc28gdGhhdCBwZW5kaW5n
IHBsdWdzIGRvbid0IGludGVyZmVyZQo+ICAgICAgICAgICovCj4gLSAgICAgICBpZiAoIXRlc3Rf
YW5kX2NsZWFyX2JpdChJQ0VfRkxBR19QTFVHX0FVWF9ERVYsIHBmLT5mbGFncykpCj4gLSAgICAg
ICAgICAgICAgIGljZV91bnBsdWdfYXV4X2RldihwZik7Cj4gLQo+ICsgICAgICAgY2xlYXJfYml0
KElDRV9GTEFHX1BMVUdfQVVYX0RFViwgcGYtPmZsYWdzKTsKPiArICAgICAgIHNldF9iaXQoSUNF
X0ZMQUdfVU5QTFVHX0FVWF9ERVYsIHBmLT5mbGFncyk7Cj4gICAgICAgICBjbGVhcl9iaXQoSUNF
X0ZMQUdfUkRNQV9FTkEsIHBmLT5mbGFncyk7Cj4gIH0KPiAgI2VuZGlmIC8qIF9JQ0VfSF8gKi8K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+IGluZGV4IGE5YTdm
OGI1MjE0MC4uZTJiYzEzNDA4MzNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9tYWluLmMKPiBAQCAtMjI5MCwxOCArMjI5MCwxNSBAQCBzdGF0aWMgdm9pZCBpY2Vf
c2VydmljZV90YXNrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgICAgICAgICAgICAgICAg
fQo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBpZiAodGVzdF9iaXQoSUNFX0ZMQUdfUExVR19BVVhf
REVWLCBwZi0+ZmxhZ3MpKSB7Cj4gLSAgICAgICAgICAgICAgIC8qIFBsdWcgYXV4IGRldmljZSBw
ZXIgcmVxdWVzdCAqLwo+ICsgICAgICAgLyogUGx1ZyBhdXggZGV2aWNlIHBlciByZXF1ZXN0ICov
Cj4gKyAgICAgICBpZiAodGVzdF9hbmRfY2xlYXJfYml0KElDRV9GTEFHX1BMVUdfQVVYX0RFViwg
cGYtPmZsYWdzKSkKPiAgICAgICAgICAgICAgICAgaWNlX3BsdWdfYXV4X2RldihwZik7Cj4KPiAt
ICAgICAgICAgICAgICAgLyogTWFyayBwbHVnZ2luZyBhcyBkb25lIGJ1dCBjaGVjayB3aGV0aGVy
IHVucGx1ZyB3YXMKPiAtICAgICAgICAgICAgICAgICogcmVxdWVzdGVkIGR1cmluZyBpY2VfcGx1
Z19hdXhfZGV2KCkgY2FsbAo+IC0gICAgICAgICAgICAgICAgKiAoZS5nLiBmcm9tIGljZV9jbGVh
cl9yZG1hX2NhcCgpKSBhbmQgaWYgc28gdGhlbgo+IC0gICAgICAgICAgICAgICAgKiBwbHVnIGF1
eCBkZXZpY2UuCj4gLSAgICAgICAgICAgICAgICAqLwo+IC0gICAgICAgICAgICAgICBpZiAoIXRl
c3RfYW5kX2NsZWFyX2JpdChJQ0VfRkxBR19QTFVHX0FVWF9ERVYsIHBmLT5mbGFncykpCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgaWNlX3VucGx1Z19hdXhfZGV2KHBmKTsKPiAtICAgICAgIH0K
PiArICAgICAgIC8qIHVucGx1ZyBhdXggZGV2IHBlciByZXF1ZXN0LCBpZiBhbiB1bnBsdWcgcmVx
dWVzdCBjYW1lIGluCj4gKyAgICAgICAgKiB3aGlsZSBwcm9jZXNzaW5nIGEgcGx1ZyByZXF1ZXN0
LCB0aGlzIHdpbGwgaGFuZGxlIGl0Cj4gKyAgICAgICAgKi8KPiArICAgICAgIGlmICh0ZXN0X2Fu
ZF9jbGVhcl9iaXQoSUNFX0ZMQUdfVU5QTFVHX0FVWF9ERVYsIHBmLT5mbGFncykpCj4gKyAgICAg
ICAgICAgICAgIGljZV91bnBsdWdfYXV4X2RldihwZik7Cj4KPiAgICAgICAgIGlmICh0ZXN0X2Fu
ZF9jbGVhcl9iaXQoSUNFX0ZMQUdfTVRVX0NIQU5HRUQsIHBmLT5mbGFncykpIHsKPiAgICAgICAg
ICAgICAgICAgc3RydWN0IGlpZGNfZXZlbnQgKmV2ZW50Owo+IC0tCj4gMi4zNy4zCj4KCgotLSAK
SmFyb3NsYXYgUHVsY2hhcnQKU3IuIFByaW5jaXBhbCBTVyBFbmdpbmVlcgpHb29kRGF0YQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
