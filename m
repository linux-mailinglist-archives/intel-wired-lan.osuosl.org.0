Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4714F781769
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 07:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16DB0607F5;
	Sat, 19 Aug 2023 05:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16DB0607F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692421415;
	bh=CIRGHV8L8C0BURTU2G0rkA62Pn5duDMoCmtMrJi6CMk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Fl0O9gdvtRbJ3Mw495dzDl4IMEFmcMMvNGWe7GaA4IOGHlpuv2RyHKS5yGLLJohg
	 0fraqO5Y+bVIVsGgOYwv2z9UIqT7G6D7dwc46z67mQ707AEmJmOZd3vGJZ2uBMd80E
	 QYGM0uRVGwU1k9AE983t2ssZrVFkuCVyZN0h2d0z/J6hYcFgc18ObbbJG9pK+XTScU
	 XgP5z05FZtYhAj/3QxPLEr1MqUpRWAH1HIZIAl79939QOzJlFRjgf8kV/591XkPRHC
	 14B0vL/jWu8wxOxhbKZ0iL3i6rBJUFEYlnf8lXG0xFCYTFFHrXguu4NSuaYEDruV9J
	 3zND9torAUNGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2i_s2xvYMFyF; Sat, 19 Aug 2023 05:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A335D608D8;
	Sat, 19 Aug 2023 05:03:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A335D608D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0171BF292
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 05:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63024840A1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 05:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63024840A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KR75FMUSuVVD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 05:03:26 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7418E84094
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 05:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7418E84094
Received: from [192.168.0.2] (ip5f5aed0d.dynamic.kabel-deutschland.de
 [95.90.237.13])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 470C261E5FE01;
 Sat, 19 Aug 2023 07:03:06 +0200 (CEST)
Message-ID: <fd4b1f89-ffd5-421f-81bb-5715afaf7fca@molgen.mpg.de>
Date: Sat, 19 Aug 2023 07:03:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>
References: <20230816235719.1120726-1-paul.greenwalt@intel.com>
 <20230816235719.1120726-8-paul.greenwalt@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230816235719.1120726-8-paul.greenwalt@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable support for
 E830 device IDs
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
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBQYXdlbCwgZGVhciBQYXVsLAoKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgoKQW0gMTcu
MDguMjMgdW0gMDE6NTcgc2NocmllYiBQYXVsIEdyZWVud2FsdDoKPiBGcm9tOiBQYXdlbCBDaG1p
ZWxld3NraSA8cGF3ZWwuY2htaWVsZXdza2lAaW50ZWwuY29tPgoKRm9yIHRoZSBjb21taXQgbWVz
c2FnZSBzdW1tYXJ5LCBpdCBzb3VuZHMgYSBsaXR0bGUgc3RyYW5nZSwgaG93IHRvIAplbmFibGUg
c3VwcG9ydCBmb3IgYSDigJxkZXZpY2UgSUTigJ0uIE1heWJlOgoKICAgICBpY2U6IEFkZCBJRHMg
b2YgNCBFODMwIGRldmljZXMKCm9yCgogICAgIGljZTogSG9vayB1cCA0IEU4MzAgZGV2aWNlcyBi
eSBhZGRpbmcgdGhlaXIgSURzCgo+IEFzIHRoZSBwcmV2aW91cyBwYXRjaGVzIHByb3ZpZGUgc3Vw
cG9ydCBmb3IgRTgzMCBoYXJkd2FyZSwgYWRkIEU4MzAKPiBzcGVjaWZpYyBJRHMgdG8gdGhlIFBD
SSBkZXZpY2UgSUQgdGFibGUsIHNvIHRoZXNlIGRldmljZXMgY2FuIG5vdyBiZQo+IHByb2JlZCBi
eSB0aGUga2VybmVsLgoKSWYgeW91IGNvdWxkIGFkZCBhIHBhcmFncmFwaCBkZXNjcmliaW5nIHlv
dXIgdGVzdCBzeXN0ZW0gYW5kIHN0YXRpbmcgdGhlIAp0ZXN0IHJlc3VsdHMsIHRoYXQgd291bGQg
YmUgdmVyeSB1c2VmdWwgaW4gbXkgb3Bpbmlvbi4KCj4gUmV2aWV3ZWQtYnk6IEplc3NlIEJyYW5k
ZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBhd2Vs
IENobWllbGV3c2tpIDxwYXdlbC5jaG1pZWxld3NraUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogUGF1bCBHcmVlbndhbHQgPHBhdWwuZ3JlZW53YWx0QGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIHwgNCArKysrCj4gICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmMKPiBpbmRleCBkNjcxNWE4OWVjNzguLjgwMDEzYzgzOTU3OSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gQEAgLTU2MzAs
NiArNTYzMCwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaWNlX3BjaV90
YmxbXSA9IHsKPiAgIAl7IFBDSV9WREVWSUNFKElOVEVMLCBJQ0VfREVWX0lEX0U4MjNMXzEwR19C
QVNFX1QpfSwKPiAgIAl7IFBDSV9WREVWSUNFKElOVEVMLCBJQ0VfREVWX0lEX0U4MjNMXzFHQkUp
fSwKPiAgIAl7IFBDSV9WREVWSUNFKElOVEVMLCBJQ0VfREVWX0lEX0U4MjNMX1FTRlApfSwKPiAr
CXsgUENJX1ZERVZJQ0UoSU5URUwsIElDRV9ERVZfSURfRTgzMF9CQUNLUExBTkUpfSwKPiArCXsg
UENJX1ZERVZJQ0UoSU5URUwsIElDRV9ERVZfSURfRTgzMF9RU0ZQNTYpfSwKPiArCXsgUENJX1ZE
RVZJQ0UoSU5URUwsIElDRV9ERVZfSURfRTgzMF9TRlApfSwKPiArCXsgUENJX1ZERVZJQ0UoSU5U
RUwsIElDRV9ERVZfSURfRTgzMF9TRlBfREQpfSwKPiAgIAl7IFBDSV9WREVWSUNFKElOVEVMLCBJ
Q0VfREVWX0lEX0U4MjJfU0lfREZMVCl9LAoKSeKAmWQgYWRkIHRoZSBlbnRyaWVzIGFmdGVyIGFs
bCBFODIyIGVudHJpZXMsIHNvIHRoZXkgYXJlIGtpbmQgb2Ygc29ydGVkLgoKPiAgIAkvKiByZXF1
aXJlZCBsYXN0IGVudHJ5ICovCj4gICAJeyAwLCB9CgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
