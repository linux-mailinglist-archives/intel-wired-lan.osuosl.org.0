Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A5658EDA4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 15:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 431C040C0E;
	Wed, 10 Aug 2022 13:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 431C040C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660139630;
	bh=M1PQcJpLvuePTFkYETr0keG3oIMpuzDjijnAMeOmw3Y=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FH4OS8D7fMM0GWsFxB6BL2DQvVoDcbyYM3Rgb//yzsPDehJmD4T93ZAq7QNaeyUIu
	 Gi/uNMdoIh6FD4yauJSXnF404bPClKtOtB3xzFVpfXeeVutxq2FX9N7eIAHyrMVOlG
	 1PWV7Myu02IlTMuQC7t6CSfI9revU/2wdou2proeuPnEdjMTPFMO5FOjzJGVn+9wGO
	 0nS+gbTyqlVbI8N5koiSeKyfahWAYMPdJc/NGzG/y0HeJP7VhOSNF5ceYL/4p7ljyH
	 cGVaMV9iOfVhE21OKYgzrV2jZ6fan+2BM/F8lqK0ZSaypLnR15/h+BXGWFSS4o9Bc5
	 B4tvBosxeXE0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9xeFOnUTTMw; Wed, 10 Aug 2022 13:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00E4840C09;
	Wed, 10 Aug 2022 13:53:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00E4840C09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 202AF1BF588
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 08:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06B6281D5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 08:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06B6281D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pFJUpsb50z82 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 08:22:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 136EF81948
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 136EF81948
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 08:22:48 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id ha11so14064424pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 01:22:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-language:content-transfer-encoding:in-reply-to:mime-version
 :user-agent:date:message-id:references:cc:to:subject:from
 :x-gm-message-state:from:to:cc;
 bh=9zO6VsxpNwvBhILnEVUXUDk4PHjbIaeGm/Tf8gWbKd8=;
 b=RlcGNp6lvIt9Q4dxvmfTdbnhj1xV7FBLazHm+UR+X9BMcpE6azN71DDroEvIJicwcr
 hAYgVTwWG9cwDTUMYmmsctfizvnn46E/wDj9d6KS3Dtg/gosnivrggyhyOKcBW1eMSQm
 YDe6dbSSgrqfXDzVOVnMvwuKQjfNe4fcV3ZDGAc+i1QIGN/yeBAvcTKxvdyJUemmf7kA
 JjWpuZkCGHFl9l/05D8Fn0bZNZU7Um7Ohp/9Nn/e6PY2dYmA7jX5awbFz4aTBHR4by6A
 Ob5qCGERawrMlYMzWokc2FKrMKNSWzLwobsdyPqR9Ws1lSIdikxHwjAZZyuTbz3frZs5
 JC3Q==
X-Gm-Message-State: ACgBeo3MaL86bEbHkbX2rL4pBBwQ0UfuL3GNImiByKHG9OGPNrQchRAa
 Az/oSDt4FvSQWFYcMlhBwMw=
X-Google-Smtp-Source: AA6agR5y9WLMW8E5HivgLerrbmcpreuQd7mObHrDuT7HnrqnxivT2oI2aJH1zwrapSoKpV1JBOFqHQ==
X-Received: by 2002:a17:903:268f:b0:16d:d62c:5b8b with SMTP id
 jf15-20020a170903268f00b0016dd62c5b8bmr27408513plb.107.1660119767437; 
 Wed, 10 Aug 2022 01:22:47 -0700 (PDT)
Received: from [0.0.0.0] ([205.198.104.55]) by smtp.gmail.com with ESMTPSA id
 j3-20020a62c503000000b0052dcd14e3desm1259922pfg.183.2022.08.10.01.22.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Aug 2022 01:22:47 -0700 (PDT)
From: Linjun Bao <meljbao@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20220809133502.37387-1-meljbao@gmail.com>
 <b39c9fa3-1b7c-c7b1-c3dd-bf5ceb035dc8@intel.com>
Message-ID: <0b4ce201-be78-5a5d-0098-0cbe14ea43fd@gmail.com>
Date: Wed, 10 Aug 2022 16:22:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b39c9fa3-1b7c-c7b1-c3dd-bf5ceb035dc8@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 10 Aug 2022 13:53:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-language:content-transfer-encoding:in-reply-to:mime-version
 :user-agent:date:message-id:references:cc:to:subject:from:from:to:cc;
 bh=9zO6VsxpNwvBhILnEVUXUDk4PHjbIaeGm/Tf8gWbKd8=;
 b=S3UoT348G+5VZXwsh4iDlr/D1pNVi+J/4RtltoMtjLQxwlM0H9OPW7euHzQf5I6QGd
 jjAJjXGEPnTuVOxgKg1SvYGeZnpr91Vzl+LqhfWXOIpGD4vxZqlop6nCqz7/d+xCvJ2F
 452AW2wH6gxBGU9RPMhC0huBgPtF1gOgEeipyiUlujPFJJNUJ6/4cjbH45qxL0WzkZBY
 BU38vSIC39jXKpRLc61x6onHXk3dDyzc/cHFa6Dq1pLXBw43RVjt1driQZEnC0393Wz/
 Rya1z9EG+P+YTXeLXwqQ4f+KdJdg3ymRIDxniqLup1T5JZpvHHTC/keirIqZdeq794IE
 mMEA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=S3UoT348
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
