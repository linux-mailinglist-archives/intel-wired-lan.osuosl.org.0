Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A50A58EDA3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 15:53:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A1894148A;
	Wed, 10 Aug 2022 13:53:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A1894148A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660139626;
	bh=M1PQcJpLvuePTFkYETr0keG3oIMpuzDjijnAMeOmw3Y=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LQL8J5VNda5L1ExLwbFVXWGWo9izOZI8dXJoy6UpPh+6bWfTVrFF8B33c6fYdy6j3
	 73evOLBp+QanrEm0XcI4scIZa8WEUekWXQ3L6mt5cqrYgqrnli8aX6ggt0psXLSa+2
	 7qC06+hcD9jB30Y61+Aipbwd/nEBU//1fMMCc0oBIU/Ase0Eyy2zja8Cvhdjf7PHaX
	 kJZ7PDd/EzZjro+vu3RGOMojlw4iztSm4FUgWNSzNHUIVA/0Yn8RmNXQOx5LoE68Iq
	 +y085Cf3NO4B5pUe77Rm+IsCt0BLTLwlBqHqtHrWMRh5eXhCvluo8RfR8d4qfItpzp
	 eT2aEnEexP/FQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gVeenqt7RERl; Wed, 10 Aug 2022 13:53:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED0814092E;
	Wed, 10 Aug 2022 13:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED0814092E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D18E31BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 07:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B455060BF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 07:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B455060BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sfSm8KZAQq1F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 07:37:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85D6660BB3
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85D6660BB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 07:37:28 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id f192so12950967pfa.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 00:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-language:content-transfer-encoding:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc;
 bh=9zO6VsxpNwvBhILnEVUXUDk4PHjbIaeGm/Tf8gWbKd8=;
 b=BzUGjTIEuAF+xUsAdX3sFIu7Tv6yFDUFOIrJBIw02LAGdAvPuW9T6U5X1bywE/7JXY
 5W+g1QlAoAZYZRgP59eTuOWHQ6QlxJlLO6R9FrhPcVR2vYZjtMx+Lpo/p8JWAxXcZAX+
 BITVGRy56lQcVmjWMIZHn8Dx21l8N5PSt7urIKN7o5DnSle6F77wirMe5XPvNXCp8Tz9
 AZkQYWIDXa4/dPefYRFSprJBBBaYABTzh9E3M5uto/6nUhL+rGskyow5cmqGPvFJyKOV
 HTkemPCzZgWgQ5+/OiW5O5IOkyD8MiEnfCb6aB15AICUmwR9uD2CQFIkmQjMlrn6L0ZJ
 Nmog==
X-Gm-Message-State: ACgBeo12jhUX34YjoE35oGZoTV2wjHxPjy4aq/dz/j/C7fh8LNWeyO0c
 6AvnDrDs9vidlEiy2wr7/8iFhOD+gueIhZNoKoY=
X-Google-Smtp-Source: AA6agR6ctfWGjpGGhS6GTB10hZ9CoTx07BOOKP6nz7E4kB0Iv6T3ovEzi0b9J0wxqEeBuDjzTxFvjg==
X-Received: by 2002:a05:6a00:2308:b0:52f:8ae9:9465 with SMTP id
 h8-20020a056a00230800b0052f8ae99465mr8872860pfh.77.1660117047772; 
 Wed, 10 Aug 2022 00:37:27 -0700 (PDT)
Received: from [0.0.0.0] ([123.253.225.53]) by smtp.gmail.com with ESMTPSA id
 l16-20020a17090a3f1000b001f56405ab36sm865509pjc.23.2022.08.10.00.37.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Aug 2022 00:37:27 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20220809133502.37387-1-meljbao@gmail.com>
 <b39c9fa3-1b7c-c7b1-c3dd-bf5ceb035dc8@intel.com>
From: Linjun Bao <meljbao@gmail.com>
Message-ID: <d1a03e34-56af-efd7-9e2e-61a2bad0ef2a@gmail.com>
Date: Wed, 10 Aug 2022 15:37:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b39c9fa3-1b7c-c7b1-c3dd-bf5ceb035dc8@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 10 Aug 2022 13:53:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-language:content-transfer-encoding:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc;
 bh=9zO6VsxpNwvBhILnEVUXUDk4PHjbIaeGm/Tf8gWbKd8=;
 b=g6y821k0rHBOsVO5buJzSkN4BcpKTz5ZYVLFCkB0r9v8DQbJqvahWuCALGRrLowAnb
 qtVOWFTpZdc5T25pBIpvBL5oZqCpP3g56PF0XE/xfqe4YZYzUf61PnlljpHylKRYZrQp
 mdFfqDAYPFTVq+7ehyyoEcPyfBPsrIbi0roDyZFH9im+tTmWxCWkzsKYI66lV3nJtSiY
 2X8GnrdSExy0I9sSXHHxHLllp1o1Yd4LA7pAmRFC8AWFiuwhG8LYefyiDUjv340lgWCg
 G6TdDqtQhq1cEq4qrsic/HX78K2FBVq7SmDOLorjy67Ymqsq3MOzT68xzZDaR3/x8y7R
 U/lA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=g6y821k0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Remove _I_PHY_ID check for i225
 devices
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjIvOC8xMCDkuIrljYgxOjMyLCBUb255IE5ndXllbiB3cm90ZToKPiBPbiA4LzkvMjAy
MiA2OjM1IEFNLCBMaW5qdW4gQmFvIHdyb3RlOgo+PiBTb3VyY2UgY29tbWl0IDdjNDk2ZGU1Mzhl
ZSAoImlnYzogUmVtb3ZlIF9JX1BIWV9JRCBjaGVja2luZyIpLAo+PiByZW1vdmUgX0lfUEhZX0lE
IGNoZWNrIGZvciBpMjI1IGRldmljZSwgc2luY2UgaTIyNSBkZXZpY2VzIG9ubHkKPj4gaGF2ZSBv
bmUgUEhZIHZlbmRvci4KPgo+IFdoYXQgYXJlIHlvdSB0cnlpbmcgdG8gZG8gd2l0aCB0aGlzIHBh
dGNoPyBZb3UncmUgcmVmZXJlbmNpbmcgdGhlIG9yaWdpbmFsIGNvbW1pdCBzbyB5b3Uga25vdyBp
dCdzIGNvbW1pdHRlZCwgYnV0IGl0J3Mgbm90IGNsZWFyIHRvIG1lIHdoeSB5b3UgYXJlIHJlLXNl
bmRpbmcgaXQuCj4KSSdtIG5ldyBoZXJlLCBwbGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIGRvaW5n
IHRoaW5ncyBpbiB0aGUgd3Jvbmcgd2F5LgoKClllcyB0aGlzIGNvbW1pdCB3YXMgY29tbWl0dGVk
IHRvIG1haW5saW5lIGFib3V0IG9uZSB5ZWFyIGFnby4gQnV0IHRoaXMgY29tbWl0IGhhcyBub3Qg
YmVlbiBpbmNsdWRlZCBpbnRvIGtlcm5lbCA1LjQgeWV0LCBhbmQgSSBlbmNvdW50ZXJlZCB0aGUg
cHJvYmUgZmFpbHVyZSB3aGVuIHVzaW5nIGFsZGVybGFrZS1zIHdpdGggRXRoZXJuZXQgYWRhcHRl
ciBpMjI1LUxNLiBTaW5jZSBJIGNvdWxkIG5vdCBkaXJlY3RseSBhcHBseSB0aGUgcGF0Y2ggN2M0
OTZkZTUzOGVlIHRvIGtlcm5lbCA1LjQsIHNvIEkgZ2VuZXJhdGVkIHRoaXMgcGF0Y2ggZm9yIGtl
cm5lbCA1LjQgdXNhZ2UuCgoKTG9va3MgbGlrZSBzZW5kaW5nIGEgZHVwbGljYXRlZCBwYXRjaCBp
cyBub3QgZXhwZWN0ZWQuIFdvdWxkIHlvdSBwbGVhc2UgYWR2aXNlIHdoYXQgaXMgdGhlIHByb3Bl
ciBhY3Rpb24gd2hlbiBlbmNvdW50ZXJpbmcgc3VjaCBjYXNlPyBJIHdvdWxkIGxpa2UgdGhpcyBm
aXggdG8gYmUgaW1wbGVtZW50ZWQgaW50byBMVFMga2VybmVsIDUuNCwgSSBhbHNvIHdyb3RlIGEg
dGlja2V0IG9uIGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjE2
MjYxLCBidXQgbm8gcmVzcG9uc2UuCgoKUmVnYXJkcwoKSm9zZXBoCgoKPiBUaGFua3MsCj4gVG9u
eQo+Cj4+IFNpZ25lZC1vZmYtYnk6IExpbmp1biBCYW8gPG1lbGpiYW9AZ21haWwuY29tPgo+PiAt
LS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19iYXNlLmMgfCAxMCAr
LS0tLS0tLS0tCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
IHzCoCAzICstLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3BoeS5j
wqAgfMKgIDYgKystLS0tCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAx
NSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfYmFzZS5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19i
YXNlLmMKPj4gaW5kZXggZGIyODliY2NlMjFkLi5kNjY0MjllYjE0YTUgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfYmFzZS5jCj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfYmFzZS5jCj4+IEBAIC0xODcsMTUgKzE4Nyw3
IEBAIHN0YXRpYyBzMzIgaWdjX2luaXRfcGh5X3BhcmFtc19iYXNlKHN0cnVjdCBpZ2NfaHcgKmh3
KQo+PiDCoCDCoMKgwqDCoMKgIGlnY19jaGVja19mb3JfY29wcGVyX2xpbmsoaHcpOwo+PiDCoCAt
wqDCoMKgIC8qIFZlcmlmeSBwaHkgaWQgYW5kIHNldCByZW1haW5pbmcgZnVuY3Rpb24gcG9pbnRl
cnMgKi8KPj4gLcKgwqDCoCBzd2l0Y2ggKHBoeS0+aWQpIHsKPj4gLcKgwqDCoCBjYXNlIEkyMjVf
SV9QSFlfSUQ6Cj4+IC3CoMKgwqDCoMKgwqDCoCBwaHktPnR5cGXCoMKgwqAgPSBpZ2NfcGh5X2ky
MjU7Cj4+IC3CoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gLcKgwqDCoCBkZWZhdWx0Ogo+PiAtwqDC
oMKgwqDCoMKgwqAgcmV0X3ZhbCA9IC1JR0NfRVJSX1BIWTsKPj4gLcKgwqDCoMKgwqDCoMKgIGdv
dG8gb3V0Owo+PiAtwqDCoMKgIH0KPj4gK8KgwqDCoCBwaHktPnR5cGUgPSBpZ2NfcGh5X2kyMjU7
Cj4+IMKgIMKgIG91dDoKPj4gwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKPj4gaW5kZXggOWJhMDVkOWFhOGUwLi5i
ODI5N2E2M2E3ZmQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfbWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
bWFpbi5jCj4+IEBAIC0yODg0LDggKzI4ODQsNyBAQCBib29sIGlnY19oYXNfbGluayhzdHJ1Y3Qg
aWdjX2FkYXB0ZXIgKmFkYXB0ZXIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gwqDC
oMKgwqDCoCB9Cj4+IMKgIC3CoMKgwqAgaWYgKGh3LT5tYWMudHlwZSA9PSBpZ2NfaTIyNSAmJgo+
PiAtwqDCoMKgwqDCoMKgwqAgaHctPnBoeS5pZCA9PSBJMjI1X0lfUEhZX0lEKSB7Cj4+ICvCoMKg
wqAgaWYgKGh3LT5tYWMudHlwZSA9PSBpZ2NfaTIyNSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKCFuZXRpZl9jYXJyaWVyX29rKGFkYXB0ZXItPm5ldGRldikpIHsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgYWRhcHRlci0+ZmxhZ3MgJj0gfklHQ19GTEFHX05FRURfTElOS19VUERB
VEU7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9IGVsc2UgaWYgKCEoYWRhcHRlci0+ZmxhZ3MgJiBJ
R0NfRkxBR19ORUVEX0xJTktfVVBEQVRFKSkgewo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19waHkuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYy9pZ2NfcGh5LmMKPj4gaW5kZXggNjE1NmM3NmQ3NjVmLi4xYmUxMTJjZTY3NzQgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcGh5LmMKPj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19waHkuYwo+PiBAQCAtMjM1LDgg
KzIzNSw3IEBAIHN0YXRpYyBzMzIgaWdjX3BoeV9zZXR1cF9hdXRvbmVnKHN0cnVjdCBpZ2NfaHcg
Kmh3KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0X3ZhbDsKPj4gwqDC
oMKgwqDCoCB9Cj4+IMKgIC3CoMKgwqAgaWYgKChwaHktPmF1dG9uZWdfbWFzayAmIEFEVkVSVElT
RV8yNTAwX0ZVTEwpICYmCj4+IC3CoMKgwqDCoMKgwqDCoCBody0+cGh5LmlkID09IEkyMjVfSV9Q
SFlfSUQpIHsKPj4gK8KgwqDCoCBpZiAocGh5LT5hdXRvbmVnX21hc2sgJiBBRFZFUlRJU0VfMjUw
MF9GVUxMKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBSZWFkIHRoZSBNVUxUSSBHQlQgQU4g
Q29udHJvbCBSZWdpc3RlciAtIHJlZyA3LjMyICovCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXRf
dmFsID0gcGh5LT5vcHMucmVhZF9yZWcoaHcsIChTVEFOREFSRF9BTl9SRUdfTUFTSyA8PAo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNTURfREVW
QUREUl9TSElGVCkgfAo+PiBAQCAtMzc2LDggKzM3NSw3IEBAIHN0YXRpYyBzMzIgaWdjX3BoeV9z
ZXR1cF9hdXRvbmVnKHN0cnVjdCBpZ2NfaHcgKmh3KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
X3ZhbCA9IHBoeS0+b3BzLndyaXRlX3JlZyhodywgUEhZXzEwMDBUX0NUUkwsCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWlpXzEwMDB0X2N0
cmxfcmVnKTsKPj4gwqAgLcKgwqDCoCBpZiAoKHBoeS0+YXV0b25lZ19tYXNrICYgQURWRVJUSVNF
XzI1MDBfRlVMTCkgJiYKPj4gLcKgwqDCoMKgwqDCoMKgIGh3LT5waHkuaWQgPT0gSTIyNV9JX1BI
WV9JRCkKPj4gK8KgwqDCoCBpZiAocGh5LT5hdXRvbmVnX21hc2sgJiBBRFZFUlRJU0VfMjUwMF9G
VUxMKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0X3ZhbCA9IHBoeS0+b3BzLndyaXRlX3JlZyho
dywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAoU1RBTkRBUkRfQU5fUkVHX01BU0sgPDwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNTURfREVWQUREUl9TSElGVCkgfApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
