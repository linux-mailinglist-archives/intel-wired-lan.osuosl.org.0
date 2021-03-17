Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F93833F890
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 19:58:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F17F54ECC6;
	Wed, 17 Mar 2021 18:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V64uwsKnFia9; Wed, 17 Mar 2021 18:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABABD4ECD1;
	Wed, 17 Mar 2021 18:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D49C1BF330
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6872943098
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7qOSMn1eM8Sp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 18:58:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 501F24303F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 18:58:13 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id 16so4484368ljc.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 11:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4tkhXz7ciBpwwPumsE8QZTmyp8AevItredkFY7TSORQ=;
 b=E5uNQ5HR2vm/LcV09nz3Jy9xCy4NevVtgcwEskfoCxV0rh3LoaOeF1rVJdHkhThgla
 OTgXFFEnsj1kovBCJU2GLDgdQPDGlAFX5lP/lTIl3+y5CThXEWZO8+DoGHBwpH00/9eR
 gee/VOKAIre91MnnvaNmSjynUKSJUVpFdRqzj1jVDxoQPbJH2CLaKvBERLTn+qjksv82
 9jzbKUHOdrHW7hsA9xmNS2XQhTyGspCBiyA4QnJTkmiry8dZdtrNVWlKY0tBGh+BuG2A
 ZHWj6NitZnMqBsRbgiCxqhMHWCEAfk6VgDLMPkvqgHE3r+ZcUw7i6YxPt8qPvjO8sRjb
 /CJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4tkhXz7ciBpwwPumsE8QZTmyp8AevItredkFY7TSORQ=;
 b=Rk1fr65vyxTq0xceiA8C5qROX1msIKhuMiMM4BRmPTKdpcbtUkwyBUCPrczRbay1eN
 JqdOUUqBe9c5QV9rSNoBugP/ffC3ABPLYFFoN/URv4zVVNciDq7Y4wyQksWLZa0LjUMk
 107kLrj5L8SeLLtxhlYUhskuq5euEI5BdKnwE3blztw52K83ReV8kXFwbYr1nvBMvkSi
 m8MT3322BXkYq9wdusFCbwHdy56oxSxwhut37NePprOXqGTwPuRbv0E6QcCNVzqdL+C0
 bXU7h7jaKBELPxInTGjQmusKPA9BVV+RbQeT7oeUoNzSuycERNCkSPr9cQVkJsFb0QDK
 XtQA==
X-Gm-Message-State: AOAM531YnDiGchM8h1CkLPj6S2Af06HfUpl5LTFwXWwbAh+XbrwRpKed
 x8dydFineOYYE7H8KgyF75n+CuTyndGCJc3RirbhRg==
X-Google-Smtp-Source: ABdhPJwaPhnsiLqqCDjn4YrthpikIfaOtSJjzyFR2YNIAhcPW965YmQXEKwVehsmEmAxjilmIDVwpz9hTiGhU6JLzsQ=
X-Received: by 2002:a05:651c:1134:: with SMTP id
 e20mr3228605ljo.385.1616007490899; 
 Wed, 17 Mar 2021 11:58:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210317064148.GA55123@embeddedor>
 <CAG48ez2RDqKwx=umOHjo_1mYyNQgzvcP=KOw1HgSo4Prs_VQDw@mail.gmail.com>
 <3bd8d009-2ad2-c24d-5c34-5970c52502de@embeddedor.com>
In-Reply-To: <3bd8d009-2ad2-c24d-5c34-5970c52502de@embeddedor.com>
From: Jann Horn <jannh@google.com>
Date: Wed, 17 Mar 2021 19:57:44 +0100
Message-ID: <CAG48ez2jr_8MbY_sNXfwvs7WsF-5f9j=U4-66dTcgXd2msr39A@mail.gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [Intel-wired-lan] [PATCH][next] ixgbe: Fix out-of-bounds
 warning in ixgbe_host_interface_command()
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
Cc: Network Development <netdev@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBNYXIgMTcsIDIwMjEgYXQgNzoyNyBQTSBHdXN0YXZvIEEuIFIuIFNpbHZhCjxndXN0
YXZvQGVtYmVkZGVkb3IuY29tPiB3cm90ZToKPiBPbiAzLzE3LzIxIDEyOjExLCBKYW5uIEhvcm4g
d3JvdGU6Cj4gPiBPbiBXZWQsIE1hciAxNywgMjAyMSBhdCA4OjQzIEFNIEd1c3Rhdm8gQS4gUi4g
U2lsdmEKPiA+IDxndXN0YXZvYXJzQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+IEZpeCB0aGUgZm9s
bG93aW5nIG91dC1vZi1ib3VuZHMgd2FybmluZyBieSByZXBsYWNpbmcgdGhlIG9uZS1lbGVtZW50
Cj4gPj4gYXJyYXkgaW4gYW4gYW5vbnltb3VzIHVuaW9uIHdpdGggYSBwb2ludGVyOgo+ID4+Cj4g
Pj4gICBDQyBbTV0gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1v
bi5vCj4gPj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmM6
IEluIGZ1bmN0aW9uIOKAmGl4Z2JlX2hvc3RfaW50ZXJmYWNlX2NvbW1hbmTigJk6Cj4gPj4gZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmM6MzcyOToxMzogd2Fy
bmluZzogYXJyYXkgc3Vic2NyaXB0IDEgaXMgYWJvdmUgYXJyYXkgYm91bmRzIG9mIOKAmHUzMlsx
XeKAmSB7YWthIOKAmHVuc2lnbmVkIGludFsxXeKAmX0gWy1XYXJyYXktYm91bmRzXQo+ID4+ICAz
NzI5IHwgICBicC0+dTMyYXJyW2JpXSA9IElYR0JFX1JFQURfUkVHX0FSUkFZKGh3LCBJWEdCRV9G
TEVYX01ORywgYmkpOwo+ID4+ICAgICAgIHwgICB+fn5+fn5+fn5+Xn5+fgo+ID4+IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jOjM2ODI6Nzogbm90ZTogd2hp
bGUgcmVmZXJlbmNpbmcg4oCYdTMyYXJy4oCZCj4gPj4gIDM2ODIgfCAgIHUzMiB1MzJhcnJbMV07
Cj4gPj4gICAgICAgfCAgICAgICBefn5+fn4KPiA+Pgo+ID4+IFRoaXMgaGVscHMgd2l0aCB0aGUg
b25nb2luZyBlZmZvcnRzIHRvIGdsb2JhbGx5IGVuYWJsZSAtV2FycmF5LWJvdW5kcy4KPiA+Pgo+
ID4+IE5vdGljZSB0aGF0LCB0aGUgdXN1YWwgYXBwcm9hY2ggdG8gZml4IHRoZXNlIHNvcnRzIG9m
IGlzc3VlcyBpcyB0bwo+ID4+IHJlcGxhY2UgdGhlIG9uZS1lbGVtZW50IGFycmF5IHdpdGggYSBm
bGV4aWJsZS1hcnJheSBtZW1iZXIuIEhvd2V2ZXIsCj4gPj4gZmxleGlibGUgYXJyYXlzIHNob3Vs
ZCBub3QgYmUgdXNlZCBpbiB1bmlvbnMuIFRoYXQsIHRvZ2V0aGVyIHdpdGggdGhlCj4gPj4gZmFj
dCB0aGF0IHRoZSBhcnJheSBub3RhdGlvbiBpcyBub3QgYmVpbmcgYWZmZWN0ZWQgaW4gYW55IHdh
eXMsIGlzIHdoeQo+ID4+IHRoZSBwb2ludGVyIGFwcHJvYWNoIHdhcyBjaG9zZW4gaW4gdGhpcyBj
YXNlLgo+ID4+Cj4gPj4gTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVz
LzEwOQo+ID4+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNA
a2VybmVsLm9yZz4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmVfY29tbW9uLmMgfCAyICstCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2NvbW1vbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfY29tbW9uLmMKPiA+PiBpbmRleCA2MmRkYjQ1MmY4NjIuLmJmZjNk
YzFhZjcwMiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdi
ZS9peGdiZV9jb21tb24uYwo+ID4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4
Z2JlL2l4Z2JlX2NvbW1vbi5jCj4gPj4gQEAgLTM2NzksNyArMzY3OSw3IEBAIHMzMiBpeGdiZV9o
b3N0X2ludGVyZmFjZV9jb21tYW5kKHN0cnVjdCBpeGdiZV9odyAqaHcsIHZvaWQgKmJ1ZmZlciwK
PiA+PiAgICAgICAgIHUzMiBoZHJfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgaXhnYmVfaGljX2hkcik7
Cj4gPj4gICAgICAgICB1bmlvbiB7Cj4gPj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpeGdiZV9o
aWNfaGRyIGhkcjsKPiA+PiAtICAgICAgICAgICAgICAgdTMyIHUzMmFyclsxXTsKPiA+PiArICAg
ICAgICAgICAgICAgdTMyICp1MzJhcnI7Cj4gPj4gICAgICAgICB9ICpicCA9IGJ1ZmZlcjsKPiA+
PiAgICAgICAgIHUxNiBidWZfbGVuLCBkd29yZF9sZW47Cj4gPj4gICAgICAgICBzMzIgc3RhdHVz
Owo+ID4KPiA+IFRoaXMgbG9va3MgYm9ndXMuIEFuIGFycmF5IGlzIGlubGluZSwgYSBwb2ludGVy
IHBvaW50cyBlbHNld2hlcmUgLQo+ID4gdGhleSdyZSBub3QgaW50ZXJjaGFuZ2VhYmxlLgo+Cj4g
WWVwOyBidXQgaW4gdGhpcyBjYXNlIHRoZXNlIGFyZSB0aGUgb25seSBwbGFjZXMgaW4gdGhlIGNv
ZGUgd2hlcmUgX3UzMmFycl8gaXMKPiBiZWluZyB1c2VkOgo+Cj4gMzcwNyAgICAgICAgIC8qIGZp
cnN0IHB1bGwgaW4gdGhlIGhlYWRlciBzbyB3ZSBrbm93IHRoZSBidWZmZXIgbGVuZ3RoICovCj4g
MzcwOCAgICAgICAgIGZvciAoYmkgPSAwOyBiaSA8IGR3b3JkX2xlbjsgYmkrKykgewo+IDM3MDkg
ICAgICAgICAgICAgICAgIGJwLT51MzJhcnJbYmldID0gSVhHQkVfUkVBRF9SRUdfQVJSQVkoaHcs
IElYR0JFX0ZMRVhfTU5HLCBiaSk7Cj4gMzcxMCAgICAgICAgICAgICAgICAgbGUzMl90b19jcHVz
KCZicC0+dTMyYXJyW2JpXSk7Cj4gMzcxMSAgICAgICAgIH0KClNvIG5vdyBsaW5lIDM3MDkgbWVh
bnM6IFJlYWQgYSBwb2ludGVyIGZyb20gYnAtPnUzMmFyciAodGhlIHZhbHVlCmJlaW5nIHJlYWQg
ZnJvbSB0aGVyZSBpcyBub3QgYWN0dWFsbHkgYSB2YWxpZCBwb2ludGVyKSwgYW5kIHdyaXRlIHRv
CnRoYXQgcG9pbnRlciBhdCBvZmZzZXQgYGJpYC4gSSBkb24ndCBzZWUgaG93IHRoYXQgbGluZSBj
b3VsZCBleGVjdXRlCndpdGhvdXQgY3Jhc2hpbmcuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
