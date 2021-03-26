Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A4F349EBA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 02:32:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B5F084C1A;
	Fri, 26 Mar 2021 01:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4VgNB60JeZP5; Fri, 26 Mar 2021 01:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3416884C10;
	Fri, 26 Mar 2021 01:32:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A586E1BF397
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 01:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91F9740FB2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 01:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BpdlEauNYTb1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 01:32:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9723C4145C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 01:32:28 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id y5so3822150pfn.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 18:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=XO29j1OMPBw+/hFMqECn7SF+nm2rgnY1wqpR0EjsPnk=;
 b=W4gwiRGAbLO1tr3wDYqVFxjQtSUfky65c/bbL6ucZlTZfcx+QIxi2AaR8NhKHsBArz
 OR0qTeJneIqOkg8sjmko8MYu8piqDBdLXOfywoa+3ohk2MNW0MToT51ANMssgVB46U3m
 TutxiS+WHIzGj+iZDsBER6TsaEd4fbzP5NN91H5+s3wVXpprd/fvvaLgiKHCXBfdJo+Z
 k1JCCY/i8FEkpJQ2XJDB/l7I8rQUIzA+wvXZeH8xS0IN9z997kM7XWJqP5lxAUd310jl
 hwhRlgWFFHRearfWAbZb8gZyZCSjnD8OSrVCJ5WAHsjabSLGLR/T3CLJNKm+MslusZFR
 U3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XO29j1OMPBw+/hFMqECn7SF+nm2rgnY1wqpR0EjsPnk=;
 b=YVVMUGvLc+o7/vOkjd79aXv60KOh/ap5K/IvItmeSE+lc3TGWE9YxQct+CyKLMDrs/
 4jIfgByflg/kmpAibWNOMoxpCLOwSP2F6CJkKkfqGLNarjkKCy24YtawnI3r2F5bjMsH
 bjkKPtr6RVw06/lQAp7TMoltZgHLhcRzU3ou1P84e7oul+a07EGf3rj+hOrF+MGGlCcl
 VqpRjP670PTDcG4rmKk0rA4CBVjBXaAFlaO8RS9dON9eggQ1rJXW6onXOuUywtP4NloF
 pmV7hFH1meRHp48zorbBoW3rwxlGmfCtf6pRH0vSC15YhrDrsNO5nCUcQYkUskV4s+c1
 fVOQ==
X-Gm-Message-State: AOAM5323X9K9mqce4+9uCc3BBylKflgC++fW9MmxBfIGygVLoUJxVUHi
 P1sPtZKlsF16fsHM/9wdKvgCVA==
X-Google-Smtp-Source: ABdhPJytw8OOd9uctEZuS8gQxLLXDM5+n4vvJ0RO+IDziv+wnoI/bysI4BHafZBi8DacxUwsquofeA==
X-Received: by 2002:a63:1d5c:: with SMTP id d28mr9484460pgm.315.1616722347889; 
 Thu, 25 Mar 2021 18:32:27 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([50.53.47.17])
 by smtp.gmail.com with ESMTPSA id t16sm7094129pfc.204.2021.03.25.18.32.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Mar 2021 18:32:27 -0700 (PDT)
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-12-jesse.brandeburg@intel.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <955f389f-a672-52c5-39d1-e73a149b01f4@pensando.io>
Date: Thu, 25 Mar 2021 18:32:25 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210326003834.3886241-12-jesse.brandeburg@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 11/11] ixgbe: reduce
 checker warnings
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8yNS8yMSA1OjM4IFBNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+IEZpeCB0aGUgc3Bh
cnNlIHdhcm5pbmdzIGluIHRoZSBpeGdiZSBjcnlwdG8gb2ZmbG9hZCBjb2RlLiBUaGVzZQo+IGNo
YW5nZXMgd2VyZSBtYWRlIGluIHRoZSBtb3N0IGNvbnNlcnZhdGl2ZSB3YXkgKGZvcmNlIGNhc3Qp
Cj4gaW4gb3JkZXIgdG8gaG9wZWZ1bGx5IG5vdCBicmVhayB0aGUgY29kZS4gSSBzdXNwZWN0IHRo
YXQgdGhlCj4gY29kZSBtaWdodCBzdGlsbCBiZSBicm9rZW4gb24gYmlnLWVuZGlhbiBhcmNoaXRl
Y3R1cmVzLCBidXQKPiBubyBvbmUgaXMgY29tcGxhaW5pbmcsIHNvIEknbSBqdXN0IGxlYXZpbmcg
aXQgZnVuY3Rpb25hbGx5Cj4gdGhlIHNhbWUuCgpUaGFua3MgZm9yIHBva2luZyBhdCB0aGlzIG9u
ZS4KClllYWgsIHRoaXMgaXMgYSBmdW5reSBvbmUgd2hlcmUgdGhlc2Ugc3BlY2lmaWMgcmVnaXN0
ZXIgY29udGVudHMgYXJlIGluIApCRSBvcmRlciBpbiBuaWFudGljLCBhcyBhcmUgdGhlIGFkZHJl
c3MgYXJyYXkgZW50cmllcywgYnV0IApJWEdCRV9SRUFEX1JFRygpIGlzIGRlZmluZWQgYXMgcmV0
dXJuaW5nIHUzMi7CoCBUaGUgcG9pbnQgaXMgdGhhdCB3ZSB3YW50IAp0byBjb21wYXJlIHRoZSBy
ZWdpc3RlciBjb250ZW50cyBkaXJlY3RseSB0byB0aGUgYXJyYXkgZW50cmllcyB3aXRoIG5vIApi
eXRlc3dhcHBpbmcuwqAgSSBkb24ndCB0aGluayB0aGlzIGlzIGJyb2tlbiBvbiBCRSBhcmNoLCBi
dXQgSSBjYW4ndCAKcmVtZW1iZXIgaWYgSSB0ZXN0ZWQgaXQgb24gU1BBUkMgdGhpbmdzIHdoZW4g
SSB3cm90ZSB0aGlzIGF0IG15IHByZXZpb3VzIAplbXBsb3llci4KCkl0IG1pZ2h0IG1ha2UgbW9y
ZSBzZW5zZSBpbiB0aGlzIGNvbnRleHQgdG8gZGVmaW5lIHJlZyBhcyBfX2JlMzIgYW5kIAp0aGVu
IGZvcmNlIHRoZSBjYXN0IG9uIHRoZSByZXR1cm4gZnJvbSBJWEdCRV9SRUFEX1JFRygpLsKgIE1h
eWJlIGV2ZW4gCmNoYW5nZSB0aGUgbmFtZSBvZiAncmVnJyB0byAnYmVfcmVnJyBvciAnYmlnZW5k
JyBqdXN0IHRvIGJlIG9ibm94aW91c2x5IApjbGVhciB0aGF0IHRoaXMgaXMgYSB3ZWlyZCByZWdp
c3Rlci4KCnNsbgoKPiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFu
ZGVidXJnQGludGVsLmNvbT4KPiBDYzogU2hhbm5vbiBOZWxzb24gPHNuZWxzb25AcGVuc2FuZG8u
aW8+Cj4gLS0tCj4gV2FybmluZyBEZXRhaWw6Cj4gLi4uL2l4Z2JlL2l4Z2JlX2lwc2VjLmM6NTE0
OjU2OiB3YXJuaW5nOiByZXN0cmljdGVkIF9fYmUzMiBkZWdyYWRlcyB0byBpbnRlZ2VyCj4gLi4u
L2l4Z2JlL2l4Z2JlX2lwc2VjLmM6NTIxOjQ4OiB3YXJuaW5nOiByZXN0cmljdGVkIF9fYmUzMiBk
ZWdyYWRlcyB0byBpbnRlZ2VyCj4gLi4uL2l4Z2JlL2l4Z2JlX2lwc2VjLmM6NTM2OjU5OiB3YXJu
aW5nOiByZXN0cmljdGVkIF9fYmUzMiBkZWdyYWRlcyB0byBpbnRlZ2VyCj4gLi4uL2l4Z2JlL2l4
Z2JlX2lwc2VjLmM6NTQ2OjU5OiB3YXJuaW5nOiByZXN0cmljdGVkIF9fYmUzMiBkZWdyYWRlcyB0
byBpbnRlZ2VyCj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdi
ZV9pcHNlYy5jIHwgOCArKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9peGdiZS9peGdiZV9pcHNlYy5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmVfaXBzZWMuYwo+IGluZGV4IDU0ZDQ3MjY1YTdhYy4uZTU5NmUxYTlmYzc1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2lwc2VjLmMK
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9pcHNlYy5jCj4g
QEAgLTUxMSwxNCArNTExLDE0IEBAIHN0YXRpYyBpbnQgaXhnYmVfaXBzZWNfY2hlY2tfbWdtdF9p
cChzdHJ1Y3QgeGZybV9zdGF0ZSAqeHMpCj4gICAJCQkJCWNvbnRpbnVlOwo+ICAgCj4gICAJCQkJ
cmVnID0gSVhHQkVfUkVBRF9SRUcoaHcsIE1JUEFGX0FSUigzLCBpKSk7Cj4gLQkJCQlpZiAocmVn
ID09IHhzLT5pZC5kYWRkci5hNCkKPiArCQkJCWlmIChyZWcgPT0gKF9fZm9yY2UgdTMyKXhzLT5p
ZC5kYWRkci5hNCkKPiAgIAkJCQkJcmV0dXJuIDE7Cj4gICAJCQl9Cj4gICAJCX0KPiAgIAo+ICAg
CQlpZiAoKGJtY2lwdmFsICYgQk1DSVBfTUFTSykgPT0gQk1DSVBfVjQpIHsKPiAgIAkJCXJlZyA9
IElYR0JFX1JFQURfUkVHKGh3LCBJWEdCRV9CTUNJUCgzKSk7Cj4gLQkJCWlmIChyZWcgPT0geHMt
PmlkLmRhZGRyLmE0KQo+ICsJCQlpZiAocmVnID09IChfX2ZvcmNlIHUzMil4cy0+aWQuZGFkZHIu
YTQpCj4gICAJCQkJcmV0dXJuIDE7Cj4gICAJCX0KPiAgIAo+IEBAIC01MzMsNyArNTMzLDcgQEAg
c3RhdGljIGludCBpeGdiZV9pcHNlY19jaGVja19tZ210X2lwKHN0cnVjdCB4ZnJtX3N0YXRlICp4
cykKPiAgIAo+ICAgCQkJZm9yIChqID0gMDsgaiA8IDQ7IGorKykgewo+ICAgCQkJCXJlZyA9IElY
R0JFX1JFQURfUkVHKGh3LCBNSVBBRl9BUlIoaSwgaikpOwo+IC0JCQkJaWYgKHJlZyAhPSB4cy0+
aWQuZGFkZHIuYTZbal0pCj4gKwkJCQlpZiAocmVnICE9IChfX2ZvcmNlIHUzMil4cy0+aWQuZGFk
ZHIuYTZbal0pCj4gICAJCQkJCWJyZWFrOwo+ICAgCQkJfQo+ICAgCQkJaWYgKGogPT0gNCkgICAv
KiBkaWQgd2UgbWF0Y2ggYWxsIDQgd29yZHM/ICovCj4gQEAgLTU0Myw3ICs1NDMsNyBAQCBzdGF0
aWMgaW50IGl4Z2JlX2lwc2VjX2NoZWNrX21nbXRfaXAoc3RydWN0IHhmcm1fc3RhdGUgKnhzKQo+
ICAgCQlpZiAoKGJtY2lwdmFsICYgQk1DSVBfTUFTSykgPT0gQk1DSVBfVjYpIHsKPiAgIAkJCWZv
ciAoaiA9IDA7IGogPCA0OyBqKyspIHsKPiAgIAkJCQlyZWcgPSBJWEdCRV9SRUFEX1JFRyhodywg
SVhHQkVfQk1DSVAoaikpOwo+IC0JCQkJaWYgKHJlZyAhPSB4cy0+aWQuZGFkZHIuYTZbal0pCj4g
KwkJCQlpZiAocmVnICE9IChfX2ZvcmNlIHUzMil4cy0+aWQuZGFkZHIuYTZbal0pCj4gICAJCQkJ
CWJyZWFrOwo+ICAgCQkJfQo+ICAgCQkJaWYgKGogPT0gNCkgICAvKiBkaWQgd2UgbWF0Y2ggYWxs
IDQgd29yZHM/ICovCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
