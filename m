Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D40667384A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 13:24:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 038A840B77;
	Thu, 19 Jan 2023 12:24:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 038A840B77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674131066;
	bh=WCH1GIGJIU1IT/VQS5oP30ZY4kIAamw0KFylZ6qocso=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=20GB/PqMopytEaAj61gvwSy4exBX2tQjeQrBbreB5ojZX/lQCmwcewHyBypfm2uDh
	 JEYxn1fmq1DCAK6/5+WGSe9l3+T+3ZuYnl7zS8eJaQ74+R1v8dY/OTJ7gXD3K+m/cu
	 ttVrXuWnT96NFbBjELmOcf+8MON4muiKTIrkQB+bOwP0N2WuSMwOEZX/xhpyesNlMG
	 V/Qm54BOtV1rG9CxV0PQehZF08iRWfkYnsPTiCrixWjtvu34a2Y1Hu1tLZw54IDjka
	 7jd9y280GErgJQAIxxIZgLBWjSdhJLT83Ct9e9W91a16OCqP8tpd3Iq+MLmxcbYImX
	 y+CQKbE+IaM3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4qZw8HWjho7d; Thu, 19 Jan 2023 12:24:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 957B5404EF;
	Thu, 19 Jan 2023 12:24:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 957B5404EF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E645D1BF2C8
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 12:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1961404EF
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 12:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1961404EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ys-cqXQD628d for <intel-wired-lan@osuosl.org>;
 Thu, 19 Jan 2023 12:24:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DCEB40199
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DCEB40199
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 12:24:17 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 f12-20020a7bc8cc000000b003daf6b2f9b9so3439580wml.3
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 04:24:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=FX9Mfb24gJlsHgP4a0XeQNRlaL2qfOwNv92m+typ/N8=;
 b=uwQbVK0CdoFY6he5cwD6l7E6xITm2eLFNNzpOfj8OJGZvItzDhVvzVmyZm6PfgosS2
 aMqtHN2eCV/lv53cAakPiOtPElcBCHwIAkzgfjaajF+SMva4wEetoB/qetmlRnDDkO8d
 tTDhzavgkiRjZtH2iWj4KF9fbk8oqBYR4hmZJOHZhDulWHKNwaTJu832Ld7dROaZEpGC
 o3akQFWZFdZ0jgcR1WTMJLJwTEPQDNbzBCfW/4nRawUclbrGMHC7sSboBnTOGPgZ0N+U
 HKFxkSdmgP72UwVryrs/C+Vb5bfIg3+hSUxSfrPwrmiMjCVzdeVduyqeWXOur97vqS1R
 voTg==
X-Gm-Message-State: AFqh2kotyV1CRB2mLIDFiYaa6z1WwVSE61jDUdKsMxALe/W7NnlxcLsN
 2Z4tRklWKbQ+t4cVoUdCsPNbF742HPo=
X-Google-Smtp-Source: AMrXdXtL0Czzu3r5rTHxGVeZDdrr/t86wi3Oz99Him2TnvwyX48P5OCan+l3t7eBv9N/HUKLXcg1Fw==
X-Received: by 2002:a05:600c:3d96:b0:3db:26b7:2fc8 with SMTP id
 bi22-20020a05600c3d9600b003db26b72fc8mr1125857wmb.39.1674131055307; 
 Thu, 19 Jan 2023 04:24:15 -0800 (PST)
Received: from [10.0.10.31] (rejtana.telefonserwis.pl. [91.231.125.228])
 by smtp.gmail.com with ESMTPSA id
 bp28-20020a5d5a9c000000b00273cd321a1bsm33725760wrb.107.2023.01.19.04.24.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Jan 2023 04:24:14 -0800 (PST)
Message-ID: <744de70c-782d-5d36-87fc-e6b92ac84190@gmail.com>
Date: Thu, 19 Jan 2023 13:24:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: pl
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
 <652bf236-d97e-832c-e0f3-24927a46d7ad@molgen.mpg.de>
From: Bartek Kois <bartek.kois@gmail.com>
In-Reply-To: <652bf236-d97e-832c-e0f3-24927a46d7ad@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FX9Mfb24gJlsHgP4a0XeQNRlaL2qfOwNv92m+typ/N8=;
 b=EjyrwTQV2Uxkw5+IYFQVyabv07socjV7JD9qoNWI7WGpQoWtdZZzV2hw2RIYIInkCS
 Tqt3nlwS5cFpxuZwph73GXB99gFcJ+HBmuuP9zT6tYdkx7uirGVWbMT6MHraMEed7AyC
 c+0bb4Vdippv1uG28Q6+S3EaXqGsVWaT7lT8CFXmLlw0x8IHIKWYU4iOeKF/fhGPiG5f
 AT746iEhWiiefL1jtWCeEXWvxYcHC8DKqAknx8vNC8YNVeTkgKJysRQGWm33qtYGdubI
 KEGnqNvzhUmneX9Pfo287GpFoWdXwKBusXKr74r+WTX/n00ipLu/Dd0W0R/ijKOiJeLs
 bqrQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=EjyrwTQV
Subject: Re: [Intel-wired-lan] Supermicro AOC-STGN-I1S (Intel 82599EN based
 10G adapter) - poor network perfomance after moving to Debian 11.5
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
Cc: intel-wired-lan@osuosl.org, regressions@lists.linux.dev
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ClcgZG5pdSAxOS4wMS4yMDIzIG/CoDExOjE3LCBQYXVsIE1lbnplbCBwaXN6ZToKPgo+ICNyZWd6
Ym90IF5pbnRyb2R1Y2VkOiA0LjkuODguLjUuMTAuMTQ5Cj4KPiBEZWFyIEJhcnRlaywKPgo+Cj4g
QW0gMTQuMDEuMjMgdW0gMTE6MjMgc2NocmllYiBCYXJ0ZWsgS29pczoKPgo+PiBBZnRlciBtb3Zp
bmcgZnJvbSBEZWJpYW4gOS43IHRvIDExLjUgYXMgc29vbiBhcyBJIHBlcmZvcm0gImlwIGxpbmsg
Cj4+IHNldCBlbnAxczAgdXAiIGZvciBteSAxMEcgYWRhcHRlciAoQU9DLVNUR04tSTFTIC0gSW50
ZWwgODI1OTlFTiBiYXNlZCAKPj4gMTBHIGFkYXB0ZXIpIEkgYW0gZXhwZXJpZW5jaW5nIGhpZ2gg
Y3B1IGxvYWQgKGV2ZW4gaWYgbm8gdHJhZmZpYyBpcyAKPj4gcGFzc2luZyB0aHJvdWdoIHRoZSBh
ZGFwdGVyKSBhbmQgbmV0d29yayBwZXJmb3JtYW5jZSBpcyBsb3cgKHdoZW4gCj4+IG5ldHdvcmsg
aXMgY29ubmVjdGVkKS4KPgo+IEhvdyBkbyB5b3UgdGVzdCB0aGUgbmV0d29yayBwZXJmb3JtYW5j
ZT8gUGxlYXNlIGdpdmUgZXhhY3QgbnVtYmVycyBmb3IgCj4gY29tcGFyaXNvbi4KPgpJIGFtIHVz
aW5nIHRoaXMgc2VydmVyIGFzIGEgcm91dGVyIGZvciBteSBzdWJzY3JpYmVycyB3aXRoIGlwdGFi
bGVzIChmb3IgCk5BVCBhbmQgZmlyZXdhbGwpIGFuZCBoZnNjIChmb3IgUW9TKS4gRmlyc3QgSSBl
bmNvdW50ZXJlZCB0aGlzIHByb2JsZW0gCndoaWxlIG1pZ3JhdGluZyBmb3JtIERlYmlhbiA5Ljcg
dG8gMTEuNS4gUm91dGVycyBiYXNlZMKgIG9uIFN1cGVybWljcm8gClgxMVNTTC1GIChJbnRlbMKu
IEMyMzIgY2hpcHNldCkgd29ya3Mgd2l0aCBubyBwcm9ibGVtcyBhZnRlciB0aGF0IAptaWdyYXRp
b24sIGJ1dCByb3V0ZXJzIGJhc2VkIG9uIFN1cGVybWljcm8gWDlTQ0wgKEludGVsIEMyMDIgUENI
KSBhbmQgClN1cGVybWljcm8gWDEwU0xMKy1GIChJbnRlbCBDMjIyIEV4cHJlc3MgUENIKSBzdGFy
dHMgYmVoYXZpbmcgc3RyYW5nZWx5IAp3aXRoIGhpZ2ggY3B1IGxvYWQgKDAuNS0wLjggd2hpbGUg
YmVmb3JlIGl0IHdhcyBhcm91bmQgMC4wLTAuMSkgYW5kIApzdWJzY3JpYmVycyBub3QgYmVpbmcg
YWJsZSB0byB1dGlsaXplIHRoZWlyIHBsYW5zLiBJIHRyaWVkIHRvIHN0cmlwIGRvd24gCnRoZSBw
cm9ibGVtIGFuZCBlbmRzIHVwIHdpdGggY2xlYW4gc3lzdGVtIHdpdGggbm8gaXB0YWJsZXMgb3Ig
aGZzYyBydWxlcyAKYmVoYXZpbmcgdGhlIHNhbWUgKGhpZ2hlciBsb2FkKSByaWdodCBhZnRlciBz
ZXR0aW5nIHRoZSAxMEcgbGluayB1cGV2ZW4gCmlmIG5vIHRyYWZmaWMgaXMgcGFzc2luZyBieS4K
Cj4+IFRoZSBjcHUgbG9hZCBpcyBvc2NpbGxhdGluZyBiZXR3ZWVuIDAuMSBhbmQgMC4zIG9uIHZh
bmlsbGEgc3lzdGVtCj4+IHdpdGggbm8gbmV0d29yayBhdHRhY2hlZC4gVGhlIHByb2JsZW0gY2Fu
IGJlIG9ic2VydmVkIG9uIHRoZSAKPj4gZm9sbG93aW5nIHBsYXRmb3JtczogU3VwZXJtaWNybyBY
OVNDTCAoSW50ZWwgQzIwMiBQQ0gpIGFuZAo+PiBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwg
QzIyMiBFeHByZXNzIFBDSCksIGJ1dCBmb3IgdGhlIFN1cGVybWljcm8KPj4gWDExU1NMLUYgKElu
dGVswq4gQzIzMiBjaGlwc2V0KSBldmVyeXRoaW5nIGlzIHdvcmtpbmcgd2VsbC4KPj4KPj4gVGVz
dGVkIGVudmlyb25tZW50czoKPj4gRGViaWFuIDkuNyAtIExpbnV4IDQuOS4wLTYtYW1kNjQgIzEg
U01QIERlYmlhbiA0LjkuODgtMStkZWI5dTEgCj4+ICgyMDE4LTA1LTA3KSB4ODZfNjQgR05VL0xp
bnV4IFthbGwgcGxhdGZvcm1zIHdvcmtpbmcgd2VsbCB3aXRoIG5vIAo+PiBwcm9ibGVtczogU3Vw
ZXJtaWNybyBYOVNDTCAoSW50ZWwgQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAKPj4g
KEludGVsIEMyMjIgRXhwcmVzcyBQQ0gpLCBTdXBlcm1pY3JvIFgxMVNTTC1GIChJbnRlbMKuIEMy
MzIgY2hpcHNldCldCj4KPj4gRGViaWFuIDExLjUgLSBMaW51eCA1LjEwLjAtMTktYW1kNjQgIzEg
U01QIERlYmlhbiA1LjEwLjE0OS0yIAo+PiAoMjAyMi0xMC0yMSkgeDg2XzY0IEdOVS9MaW51eMKg
IFtvbGRlciBwbGF0Zm9ybXM6IFN1cGVybWljcm8gWDlTQ0wgCj4+IChJbnRlbCBDMjAyIFBDSCks
IFN1cGVybWljcm8gWDEwU0xMKy1GIChJbnRlbCBDMjIyIEV4cHJlc3MgUENIKSAKPj4gYmVoYXZl
IHByb2JsZW1hdGljIGFzIGRlc2NyaWJlZCBhYm92ZSB8IG5ld2VyIHBsYXRmb3JtOiBTdXBlcm1p
Y3JvIAo+PiBYMTFTU0wtRiAoSW50ZWzCriBDMjMyIGNoaXBzZXQpIHdvcmtpbmcgd2VsbCB3aXRo
IG5vIHByb2JsZW1zXQo+Cj4gTWF5YmUgY3JlYXRlIGEgYnVnIGF0IHRoZSBMaW51eCBrZXJuZWwg
YnVnIHRyYWNrZXIgWzFdLCB3aGVyZSB5b3UgY2FuIAo+IGF0dGFjaCBhbGwgdGhlIGxvZ3MgKGBk
bWVzZ2AsIGBsc3BjaSAtbm5rIC1zIOKApmAsIOKApikuCj4KSWB2ZSBhbHJlYWR5IHJlcG9ydGVk
IHRoYXQgdG8gdGhlIERlYmlhbiB0ZWFtIAp0dHBzOi8vYnVncy5kZWJpYW4ub3JnL2NnaS1iaW4v
YnVncmVwb3J0LmNnaT9idWc9MTAyNDc2MywgYnV0IHNvIGZhciAKbm9ib2R5IHRvb2sgY2FyZSBv
ZiB0aGlzIGlzc3VlIHNvIGZhci4KCj4+IFNvIGZhciB0byBzb2x2ZSB0aGUgcHJvYmxlbSBJIHdh
cyB0cnlpbmcgdG8gdXBncmFkZSBzeXN0ZW0gdG8gdGhlIAo+PiBuZXdlc3Qgc3RhYmxlIHZlcnNp
b24sIHVwZ3JhZGUga2VybmVsIHRvIHZlcnNpb24gNi54LCB1cGdyYWRlIGl4Z2JlIAo+PiBkcml2
ZXIgdG8gdGhlIG5ld2VzdCB2ZXJzaW9uIGJ1dCB3aXRoIG5vIGx1Y2suCj4KPiBUaGFuayB5b3Ug
Zm9yIGNoZWNraW5nIHRoYXQuIFRvbyBiYWQgaXTigJlzIHN0aWxsIHByZXNlbnQuIFRvIHJ1bGUg
b3V0IAo+IHNvbWUgdXNlciBzcGFjZSBwcm9ibGVtLCBjb3VsZCB5b3UgdGVzdCBEZWJpYW4gOS43
IHdpdGggYSBzdGFibGUgTGludXggCj4gcmVsZWFzZSwgY3VycmVudGx5IDYuMS43Pwo+Cj4gV2hh
dCBkb2VzIGBzdWRvIHBlcmYgdG9wIC0tc29ydCBjb21tLGRzb2Agc2hvdywgd2hlcmUgdGhlIHRp
bWUgaXMgc3BlbnQ/CgpEdXJpbmcgbXkgZmlyc3QgdGVzdCBpbiByZWFsIGVudmlyb21lbnQgd2l0
aCBzdWJzY3JpYmVycyBJIGdldGhlciB0aGUgCmZvbGxvd2luZyBkYXRhIHRocm91Z2ggdGhlIHBl
cmY6CgogwqAgMjcuODMlwqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgW2tdIHN0cm5jcHkKIMKgIDE0LjgwJcKgIFtrZXJuZWxdwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFtrXSBuZnRfZG9fY2hhaW4KIMKgwqAgNy42MSXCoCBba2VybmVs
XcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBba10gbWVtY21wCiDCoMKgIDUu
NjMlwqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgW2tdIG5m
dF9tZXRhX2dldF9ldmFsCiDCoMKgIDMuMTQlwqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgW2tdIG5mdF9jbXBfZXZhbAogwqDCoCAyLjc5JcKgIFtrZXJuZWxd
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFtrXSBhc21fZXhjX25taQogwqDC
oCAxLjA3JcKgIFtrZXJuZWxdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFtr
XSBtb2R1bGVfZ2V0X2thbGxzeW0KIMKgwqAgMC45MiXCoCBba2VybmVsXcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBba10ga2FsbHN5bXNfZXhwYW5kX3N5bWJvbC5jb25zdHBy
b3AuMAogwqDCoCAwLjg1JcKgIFtrZXJuZWxdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFtrXSBpeGdiZV9wb2xsCiDCoMKgIDAuNzUlwqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgW2tdIGZvcm1hdF9kZWNvZGUKIMKgwqAgMC42MSXCoCBb
a2VybmVsXcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBba10gbnVtYmVyCiDC
oMKgIDAuNTYlwqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
W2tdIG1lbnVfc2VsZWN0CiDCoMKgIDAuNTQlwqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgW2tdIGNsZmx1c2hfY2FjaGVfcmFuZ2UKIMKgwqAgMC41MiXCoCBb
a2VybmVsXcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBba10gY3B1aWRsZV9l
bnRlcl9zdGF0ZQogwqDCoCAwLjUxJcKgIFtrZXJuZWxdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFtrXSB2c25wcmludGYKIMKgwqAgMC41MCXCoCBba2VybmVsXcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBba10gdTMyX2NsYXNzaWZ5CiDCoMKgIDAuNDkl
wqAgW2tlcm5lbF3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgW2tdIGZpYl90
YWJsZV9sb29rdXAKIMKgwqAgMC40MCXCoCBba2VybmVsXcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBba10gZG1hX3B0ZV9jbGVhcl9sZXZlbAogwqDCoCAwLjM5JcKgIFtrZXJu
ZWxdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFtrXSBkb21haW5fbWFwcGlu
ZwogwqDCoCAwLjM2JcKgIFtrZXJuZWxdwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIFtrXSBpeGdiZV94bWl0X2ZyYW0KCgogwqDCoMKgIFBJRCBVU0VSwqDCoMKgwqDCoCBQUsKg
IE5JwqDCoMKgIFZJUlTCoMKgwqAgUkVTwqDCoMKgIFNIUiBTwqAgJUNQVcKgICVNRU0gVElNRSsg
Q09NTUFORAogwqDCoMKgwqAgMTggcm9vdMKgwqDCoMKgwqAgMjDCoMKgIDDCoMKgwqDCoMKgwqAg
MMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMCBTwqAgMjguMsKgwqAgMC4wIDc6MDYuMjcgCmtzb2Z0
aXJxZC8xCiDCoMKgwqDCoCAxMiByb290wqDCoMKgwqDCoCAyMMKgwqAgMMKgwqDCoMKgwqDCoCAw
wqDCoMKgwqDCoCAwwqDCoMKgwqDCoCAwIFLCoCAxMi4wwqDCoCAwLjAgNDoxMC44OCAKa3NvZnRp
cnFkLzAKIMKgwqDCoMKgIDIzIHJvb3TCoMKgwqDCoMKgIDIwwqDCoCAwwqDCoMKgwqDCoMKgIDDC
oMKgwqDCoMKgIDDCoMKgwqDCoMKgIDAgU8KgwqAgNi4wwqDCoCAwLjAgNDozNi4wOCAKa3NvZnRp
cnFkLzIKIMKgwqDCoMKgIDI4IHJvb3TCoMKgwqDCoMKgIDIwwqDCoCAwwqDCoMKgwqDCoMKgIDDC
oMKgwqDCoMKgIDDCoMKgwqDCoMKgIDAgU8KgwqAgNS4zwqDCoCAwLjAgNjo0Ni40NyAKa3NvZnRp
cnFkLzMKIMKgODQ2NDQ5IHJvb3TCoMKgwqDCoMKgIDIwwqDCoCAwwqDCoMKgwqDCoMKgIDDCoMKg
wqDCoMKgIDDCoMKgwqDCoMKgIDAgScKgwqAgMS4wwqDCoCAwLjAgMDowMS42MSAKa3dvcmtlci8w
OjAtZXZlbnRzX3Bvd2VyX2VmZmljaWVudAogwqDCoMKgwqAgMTMgcm9vdMKgwqDCoMKgwqAgMjDC
oMKgIDDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMCBJwqDCoCAwLjPCoMKg
IDAuMCAwOjEzLjUwIApyY3Vfc2NoZWQKIMKgwqAgODI2NCByb290wqDCoMKgwqDCoCAyMMKgwqAg
MMKgIDEwMTUzNsKgwqAgNjk0NMKgwqAgNDgyNCBTwqDCoCAwLjPCoMKgIDAuMiAwOjA3Ljc3IGRo
Y3BkCiDCoMKgwqDCoMKgIDEgcm9vdMKgwqDCoMKgwqAgMjDCoMKgIDDCoCAxNjQwNDjCoCAxMDE4
NMKgwqAgNzY3MiBTwqDCoCAwLjDCoMKgIDAuMyAwOjA0LjUyIApzeXN0ZW1kCiDCoMKgwqDCoMKg
IDIgcm9vdMKgwqDCoMKgwqAgMjDCoMKgIDDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMMKgwqDC
oMKgwqAgMCBTwqDCoCAwLjDCoMKgIDAuMCAwOjAwLjAwIAprdGhyZWFkZAogwqDCoMKgwqDCoCAz
IHJvb3TCoMKgwqDCoMKgwqAgMCAtMjDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMMKgwqDCoMKg
wqAgMCBJwqDCoCAwLjDCoMKgIDAuMCAwOjAwLjAwIHJjdV9ncAogwqDCoMKgwqDCoCA0IHJvb3TC
oMKgwqDCoMKgwqAgMCAtMjDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAgMCBJ
wqDCoCAwLjDCoMKgIDAuMCAwOjAwLjAwIApyY3VfcGFyX2dwCiDCoMKgwqDCoMKgIDYgcm9vdMKg
wqDCoMKgwqDCoCAwIC0yMMKgwqDCoMKgwqDCoCAwwqDCoMKgwqDCoCAwwqDCoMKgwqDCoCAwIEnC
oMKgIDAuMMKgwqAgMC4wIDA6MDAuMDAgCmt3b3JrZXIvMDowSC1ldmVudHNfaGlnaHByaQogwqDC
oMKgwqDCoCA5IHJvb3TCoMKgwqDCoMKgwqAgMCAtMjDCoMKgwqDCoMKgwqAgMMKgwqDCoMKgwqAg
MMKgwqDCoMKgwqAgMCBJwqDCoCAwLjDCoMKgIDAuMCAwOjAwLjAwIAptbV9wZXJjcHVfd3EKIMKg
wqDCoMKgIDEwIHJvb3TCoMKgwqDCoMKgIDIwwqDCoCAwwqDCoMKgwqDCoMKgIDDCoMKgwqDCoMKg
IDDCoMKgwqDCoMKgIDAgU8KgwqAgMC4wwqDCoCAwLjAgMDowMC4wMCAKcmN1X3Rhc2tzX3J1ZGVf
CiDCoMKgwqDCoCAxMSByb290wqDCoMKgwqDCoCAyMMKgwqAgMMKgwqDCoMKgwqDCoCAwwqDCoMKg
wqDCoCAwwqDCoMKgwqDCoCAwIFPCoMKgIDAuMMKgwqAgMC4wIDA6MDAuMDAgCnJjdV90YXNrc190
cmFjZQogwqDCoMKgwqAgMTQgcm9vdMKgwqDCoMKgwqAgcnTCoMKgIDDCoMKgwqDCoMKgwqAgMMKg
wqDCoMKgwqAgMMKgwqDCoMKgwqAgMCBTwqDCoCAwLjDCoMKgIDAuMCAwOjAwLjI2IAptaWdyYXRp
b24vMAoKPgo+PiBTdXBlcm1pY3JvIHN1cHBvcnQgc3VnZ2VzdGVkIGFzIGZvbGxvd3M6Cj4+IGl0
IG1pZ2h0IGJlIGtlcm5lbCByZWxhdGVkIGRlYmlhbiAxMS41IGhhcyBrZXJuZWwgNS4xMCB3aGlj
aCBpcyBhIAo+PiByZWNlbnQga2VybmVsIGl0IG1pZ2h0IG5vdCBwcm9wZXJseSBzdXBwb3J0IHRo
ZSBjaGlwc2V0cyBmb3IgWDkgCj4+IHRoZXJlZm9yZSBpIHN1Z2dlc3QgdG8gdXNlIFJIRUwgb3Ig
Q2VudE9TIGFzIHRoZXkgdXNlIG11Y2ggb2xkZXIgCj4+IGtlcm5lbCB2ZXJzaW9ucy4gSSBleHBl
Y3QgdGhhdCB3aXRoIHVidW50dSAyMC4wNCB5b3Ugc2VlIHRoZSBzYW1lIAo+PiBwcm9ibGVtIGl0
IHVzZXMga2VybmVsIDUuNAo+IFRlc3RpbmcgYW5vdGhlciBHTlUvTGludXggZGlzdHJpYnV0aW9u
IGZvciBhbm90aGVyIGRhdGEgcG9pbnQsIG1pZ2h0IAo+IGJlIGEgZ29vZCBpZGVhLgo+Cj4gQXMg
bm9ib2R5IGhhcyByZXNwb25kZWQgeWV0LCBiaXNlY3RpbmcgdGhlIGlzc3VlIGlzIHByb2JhYmx5
IHRoZSAKPiBmYXN0ZXN0IHdheSB0byBnZXQgdG8gdGhlIGJvdHRvbSBvZiB0aGlzLiBMdWNraWx5
IHRoZSBwcm9ibGVtIHNlZW1zIAo+IHJlcHJvZHVjaWJsZSBhbmQgeW91IHNlZW0gdG8gYmUgYWJs
ZSB0byBidWlsZCBhIExpbnV4IGtlcm5lbCB5b3Vyc2VsZiwgCj4gc28gdGhhdCBzaG91bGQgd29y
ay4gKEZvciB0ZXN0aW5nIHB1cnBvc2VzIHlvdSBjb3VsZCBhbHNvIHRlc3Qgd2l0aCAKPiBVYnVu
dHUsIGFzIHRoZXkgcHJvdmlkZSBMaW51eCBrZXJuZWwgYnVpbGRzIGZvciAoYWxtb3N0KSBhbGwg
cmVsZWFzZXMgCj4gaW4gdGhlaXIgTGludXgga2VybmVsIG1haW5saW5lIFBQQSBbMl0uKQo+Ck9m
IGNvdXJzZcKgIEkgY2FuIHRyeSBVYnVudHUgYW5kIHJlcG9ydCBob3cgaXQgaXMgd29ya2luZy4K
CkJlc3QgcmVnYXJkcwoKQmFydGVrIEtvaXMKCj4KPiBLaW5kIHJlZ2FyZHMsCj4KPiBQYXVsCj4K
Pgo+IFsxXTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnLwo+IFsyXTogaHR0cHM6Ly9rZXJu
ZWwudWJ1bnR1LmNvbS9+a2VybmVsLXBwYS9tYWlubGluZS8KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
