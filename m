Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4123826133E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Sep 2020 17:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7136627A6E;
	Tue,  8 Sep 2020 15:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7ZD0z3UqeBK; Tue,  8 Sep 2020 15:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4FDC32E11E;
	Tue,  8 Sep 2020 15:12:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 243471BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 15:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F6DC872F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 15:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YpcSr6vOc5nS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Sep 2020 15:12:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A63A1872E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Sep 2020 15:12:18 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id k18so2412168wmj.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Sep 2020 08:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mFqUHNa2HKeprNbMY5P0sIdymvWv+BxfsBb5YUnjXv4=;
 b=T3SnR/rgkfKF8JRAYgqSzsQ2FSthg6eGluOCQVeSHEiQ44Xda5SBVdTFR1NvwXL4lv
 wehgyPzjlWSKmA053McW3e0tOPnEpl6hTmWcAcvCbGudI8btTji2qL5R2hr/ah8r0ZJT
 cof21kjiZ9VvBC9FBcVlFX8QZUVNcMEjvqzyWMxRAQJxNLTAmVo7TVuYHCDZD2luoyNs
 z14G8RUSn1iQe9g5op1FC9j6bO7gliaKUZXWavKUx9Ix7vgnRIt2hRlJdO0wM/Hs7iM2
 uvL0GTB9aaJIbC8SsX/J+IdUk6nc73oV4yW8m4XchE5B43OVaoGUWsamylTDEyFAlpLK
 WK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mFqUHNa2HKeprNbMY5P0sIdymvWv+BxfsBb5YUnjXv4=;
 b=cXxqi9S4G552Wcaq4QOpYosn2Fo0h+sQGNtCtMTB4+2zq4TxkqqoDR38PJi+pkOS9l
 TIbw3LR5nZHO8C7YV+WNJc1IzLiKPKRg4sRpi1BWT8xszn708TnsHV+La42e3UUyb4Zp
 zi1KM1HD4EZ+A/iQRA16hGH04GsYIcjYBYAZyP/AvylNRt2W2uopL8N/CQ/vv957n9xV
 yyx3jWNlvip5GCCTpo7IuNbVwT2ZLQxsqiiVVvj7Xtwu7cyE0wQg3uGbUueZRhFqXodJ
 ZFzc7OEtF7Xvy8doyRFbJiWcO4XjZwcB3pXEDwOXmYwaOxihkWjgKMwFGpnvf/EzivHT
 FUeA==
X-Gm-Message-State: AOAM5335bCL/iXTc5FtUbF05iJ2DtqPutL4YbECFe7Xft8xk1ermgP0K
 pWA6WoEg8rsaeA5UqSgtrVPluHiU23c=
X-Google-Smtp-Source: ABdhPJz8C3DbOYdaaFlhkfHPQYMbaGPmVa8FfTBshBFyULdVGQlp6upXGBrSYh3C9rLfzINlYBclrw==
X-Received: by 2002:a7b:cf30:: with SMTP id m16mr54831wmg.0.1599577936612;
 Tue, 08 Sep 2020 08:12:16 -0700 (PDT)
Received: from [192.168.8.147] ([37.171.26.134])
 by smtp.gmail.com with ESMTPSA id p9sm31578930wma.42.2020.09.08.08.12.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 08:12:16 -0700 (PDT)
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>, ast@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
 <20200907150217.30888-5-bjorn.topel@gmail.com>
 <6bbf1793-d2be-b724-eec4-65546d4cbc9c@gmail.com>
 <c5dac6d2-e2aa-05a4-2606-7db0687dd12b@intel.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <b17dcc6e-cb48-9c90-f233-a178b23f9004@gmail.com>
Date: Tue, 8 Sep 2020 17:12:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <c5dac6d2-e2aa-05a4-2606-7db0687dd12b@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 4/4] ixgbe,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA5LzgvMjAgMTo0OSBQTSwgQmrDtnJuIFTDtnBlbCB3cm90ZToKPiBPbiAyMDIwLTA5LTA4
IDExOjQ1LCBFcmljIER1bWF6ZXQgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDkvNy8yMCA1OjAyIFBNLCBC
asO2cm4gVMO2cGVsIHdyb3RlOgo+Pj4gRnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxA
aW50ZWwuY29tPgo+Pj4KPj4+IFN0YXJ0IHVzaW5nIFhTS19OQVBJX1dFSUdIVCBhcyBOQVBJIHBv
bGwgYnVkZ2V0IGZvciB0aGUgQUZfWERQIFJ4Cj4+PiB6ZXJvLWNvcHkgcGF0aC4KPj4+Cj4+PiBT
aWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4+PiAt
LS0KPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jIHwg
MiArLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX3hzay5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMK
Pj4+IGluZGV4IDM3NzE4NTdjZjg4Ny4uZjMyYzFiYTBkMjM3IDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeHNrLmMKPj4+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3hzay5jCj4+PiBAQCAtMjM5LDcgKzIz
OSw3IEBAIGludCBpeGdiZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGl4Z2JlX3FfdmVjdG9yICpx
X3ZlY3RvciwKPj4+IMKgwqDCoMKgwqAgYm9vbCBmYWlsdXJlID0gZmFsc2U7Cj4+PiDCoMKgwqDC
oMKgIHN0cnVjdCBza19idWZmICpza2I7Cj4+PiDCoCAtwqDCoMKgIHdoaWxlIChsaWtlbHkodG90
YWxfcnhfcGFja2V0cyA8IGJ1ZGdldCkpIHsKPj4+ICvCoMKgwqAgd2hpbGUgKGxpa2VseSh0b3Rh
bF9yeF9wYWNrZXRzIDwgWFNLX05BUElfV0VJR0hUKSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHVuaW9uIGl4Z2JlX2Fkdl9yeF9kZXNjICpyeF9kZXNjOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCBpeGdiZV9yeF9idWZmZXIgKmJpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2ln
bmVkIGludCBzaXplCj4+Cj4+IFRoaXMgaXMgYSB2aW9sYXRpb24gb2YgTkFQSSBBUEkuIElYR0JF
IGlzIGFscmVhZHkgZGl2ZXJnaW5nIGEgYml0IGZyb20gYmVzdCBwcmFjdGljZXMuCj4+Cj4gCj4g
VGhhbmtzIGZvciBoYXZpbmcgYSBsb29rLCBFcmljISBCeSBkaXZlcmdpbmcgZnJvbSBiZXN0IHBy
YWN0aWNlcywgZG8KPiB5b3UgbWVhbiB0aGF0IG11bHRpcGxlIHF1ZXVlcyBzaGFyZSBvbmUgTkFQ
SSBjb250ZXh0LCBhbmQgdGhlIGJ1ZGdldAo+IGlzIHNwbGl0IG92ZXIgdGhlIHF1ZXVlcyAoc2F5
LCA0IHF1ZXVlcywgNjQvNCBwZXIgcXVldWUpLCBvciB0aGF0IFR4Cj4gc2ltcGx5IGlnbm9yZXMg
dGhlIGJ1ZGdldD8gT3IgYm90aD8KCkZvciBpbnN0YW5jZSwgaGF2aW5nIGl4Z2JlX3BvbGwoKSBk
b2luZyA6CgpyZXR1cm4gbWluKHdvcmtfZG9uZSwgYnVkZ2V0IC0gMSk7CgppcyBxdWl0ZSBpbnRl
cmVzdGluZy4gSXQgY291bGQgaGlkZSBidWdzIGxpa2UgOgoKSSBnb3QgYSBidWRnZXQgb2YgNCwg
YW5kIHByb2Nlc3NlZCA5OTk5IHBhY2tldHMgYmVjYXVzZSBteSBtYXRocyBoYXZlIGEgYnVnLApi
dXQgbWFrZSBzdXJlIHRvIHByZXRlbmQgd2UgcHJvY2Vzc2VkIDMgcGFja2V0cy4uLgoKCj4gCj4+
IFRoZXJlIGFyZSByZWFzb25zIHdlIHdhbnQgdG8gY29udHJvbCB0aGUgYnVkZ2V0IGZyb20gY2Fs
bGVycywKPj4gaWYgeW91IHdhbnQgYmlnZ2VyIGJ1ZGdldCBqdXN0IGluY3JlYXNlIGl0IGluc3Rl
YWQgb2YgdXNpbmcgeW91ciBvd24gPwo+Pgo+PiBJIHdvdWxkIHJhdGhlciB1c2UgYSBnZW5lcmlj
IHBhdGNoLgo+Pgo+IAo+IEhtbSwgc28gYSBjb25maWd1cmFibGUgTkFQSSBidWRnZXQgZm9yLCBz
YXksIHRoZSBBRl9YRFAgZW5hYmxlZAo+IHF1ZXVlcy9OQVBJcz8gQW0gSSByZWFkaW5nIHRoYXQg
Y29ycmVjdD8gKE5vdGUgdGhhdCB0aGlzIGlzICpvbmx5KiBmb3IKPiB0aGUgQUZfWERQIGVuYWJs
ZWQgcXVldWVzLikKPiAKPiBJJ2xsIHRyeSB0byByZXdvcmsgdGhpcyB0byBzb21ldGhpbmcgbW9y
ZSBwYWxhdGFibGUuCj4gCj4gCj4gVGhhbmtzLAo+IEJqw7Zybgo+IAo+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
