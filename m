Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7563B5057DC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28EE24167E;
	Mon, 18 Apr 2022 13:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gz2NeH2ju2JP; Mon, 18 Apr 2022 13:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7377641B6A;
	Mon, 18 Apr 2022 13:55:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 792061BF589
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 13:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6519060B57
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 13:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aMBpHw5oKtl2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 13:18:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF4C460B2F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 13:18:17 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id m14so13534444wrb.6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 06:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=UXVIgoFYs8vsH8vpoCLGmkcmYfTHRALX33Ntdgh3h50=;
 b=i5R7voAqMw3IkNbZ205uB3jZh7KrTyvi4z2SN5EULNf3WJEl+edvTXfn1zC8FtiiUn
 YFVTnzqbWUhfpHsqfdd+9z+6UD9inu0TRL7ftH81gbunCkZdwg0BAH6vgjxCQTsaH9Th
 85/PeFeeuxShAatHYiomslhvUrbFX0jXYwRdZGiNR742qG4umdSm5berad8Gf+YB7S1S
 flXaZetPTQrIWrqLCsAFv+AoGXDZmx6KvkPSDj3lgMPKhM4zXGMdjqmLB4J0/QjuH/3A
 R/MI66r9eNm0leJG0C4U40tXX+WdnjDsj693/hnLnEXhuF4jsGOOmVTdB3s5XQzCpJSX
 qQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=UXVIgoFYs8vsH8vpoCLGmkcmYfTHRALX33Ntdgh3h50=;
 b=PmthVF/6LyPODbg9CNR+dLjT9HxuYOKdvOAKwzK3ia66SbJm3dhV8jcCjY8B4S2jJ3
 kvrL+zWeSffq3ZxIvUDar4W8qYCCZCfm68lRiXGwI7KdyFfa2ByKvlr2yiep07P96C+z
 yTSkJzaBF0mwjeB+eXZFym66MAUC0xDgEG0UJ41NsxEfac4dDCofkbEGp1rvezNl1Nx8
 FJAZon34etWflFOVoq7BfRHr8SSGTcpJedsnnuEO/Nz2xQea1b4tx5cn47o6LGH3RQ89
 AP39/XfMyKIHHdfTDvXzpXM+iJV7lrf/z8zLXSO/I3ZjYgp4hJDrAsLKVR7p/msvO0I4
 KcDQ==
X-Gm-Message-State: AOAM532po60PXClNr3R//ppdWd1vm/Gz5i6DFtH42udG8MHu5LutErZg
 LAB1jNOnmsW1V/b1Hf+l9s8=
X-Google-Smtp-Source: ABdhPJyJ06sKHsPB4+wIBhVC0HslxWUz7QAdEMKT8yyqPoyR/rswgpyfI3awyjFXTK+20cmJdmZsTQ==
X-Received: by 2002:a05:6000:1684:b0:209:7fda:e3a with SMTP id
 y4-20020a056000168400b002097fda0e3amr2454676wrd.709.1650115095860; 
 Sat, 16 Apr 2022 06:18:15 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.90.163])
 by smtp.gmail.com with ESMTPSA id
 d6-20020a5d5386000000b0020a79c74bedsm4451623wrv.79.2022.04.16.06.18.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Apr 2022 06:18:15 -0700 (PDT)
Message-ID: <857a2d22-5d0f-99d6-6686-98d50e4491d5@gmail.com>
Date: Sat, 16 Apr 2022 15:18:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, ira.weiny@intel.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmh2abigI8v2aTigI8v2aLZoNmi2aIg2aHZozrZo9mhLCBKdWxpYSBMYXdhbGwgd3JvdGU6
Cj4KPiBPbiBTYXQsIDE2IEFwciAyMDIyLCBBbGFhIE1vaGFtZWQgd3JvdGU6Cj4KPj4gQ29udmVy
dCBrbWFwKCkgdG8ga21hcF9sb2NhbF9wYWdlKCkKPj4KPj4gV2l0aCBrbWFwX2xvY2FsX3BhZ2Uo
KSwgdGhlIG1hcHBpbmcgaXMgcGVyIHRocmVhZCwgQ1BVIGxvY2FsIGFuZCBub3QKPj4gZ2xvYmFs
bHkgdmlzaWJsZS4KPiBJdCdzIG5vdCBjbGVhcmVyLgpJIG1lYW4gdGhpcyAiIGZpeCBrdW5tYXBf
bG9jYWwgcGF0aCB2YWx1ZSB0byB0YWtlIGFkZHJlc3Mgb2YgdGhlIG1hcHBlZCAKcGFnZSIgYmUg
bW9yZSBjbGVhcmVyCj4gVGhpcyBpcyBhIGdlbmVyYWwgc3RhdGVtZW50IGFib3V0IHRoZSBmdW5j
dGlvbi4gIFlvdQo+IG5lZWQgdG8gZXhwbGFpbiB3aHkgaXQgaXMgYXBwcm9wcmlhdGUgdG8gdXNl
IGl0IGhlcmUuICBVbmxlc3MgaXQgaXMgdGhlCj4gY2FzZSB0aGF0IGFsbCBjYWxscyB0byBrbWFw
IHNob3VsZCBiZSBjb252ZXJ0ZWQgdG8gY2FsbCBrbWFwX2xvY2FsX3BhZ2UuCkl0J3MgcmVxdWly
ZWQgdG8gY29udmVydCBhbGwgY2FsbHMga21hcCB0byBrbWFwX2xvY2FsX3BhZ2UuIFNvLCBJIGRv
bid0IAp3aGF0IHNob3VsZCB0aGUgY29tbWl0IG1lc3NhZ2UgYmU/CgpJcyB0aGlzIHdpbGwgYmUg
Z29vZCA6Cgoia21hcF9sb2NhbF9wYWdlKCkgd2FzIHJlY2VudGx5IGRldmVsb3BlZCBhcyBhIHJl
cGxhY2VtZW50IGZvciBrbWFwKCkuwqAgVGhlCmttYXBfbG9jYWxfcGFnZSgpIGNyZWF0ZXMgYSBt
YXBwaW5nIHdoaWNoIGlzIHJlc3RyaWN0ZWQgdG8gbG9jYWwgdXNlIGJ5IGEKc2luZ2xlIHRocmVh
ZCBvZiBleGVjdXRpb24uICIKPgo+IGp1bGlhCj4KPj4gU2lnbmVkLW9mZi1ieTogQWxhYSBNb2hh
bWVkIDxlbmcuYWxhYW1vaGFtZWRzb2xpbWFuLmFtQGdtYWlsLmNvbT4KPj4gLS0tCj4+IGNoYW5n
ZXMgaW4gVjI6Cj4+IAlmaXgga3VubWFwX2xvY2FsIHBhdGggdmFsdWUgdG8gdGFrZSBhZGRyZXNz
IG9mIHRoZSBtYXBwZWQgcGFnZS4KPj4gLS0tCj4+IGNoYW5nZXMgaW4gVjM6Cj4+IAllZGl0IGNv
bW1pdCBtZXNzYWdlIHRvIGJlIGNsZWFyZXIKPj4gLS0tCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMgfCA0ICsrLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9ldGh0b29sLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2IvaWdiX2V0aHRvb2wuYwo+PiBpbmRleCAyYTU3ODIwNjNmNGMuLmMxNGZj
ODcxZGQ0MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2ln
Yl9ldGh0b29sLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9l
dGh0b29sLmMKPj4gQEAgLTE3OTgsMTQgKzE3OTgsMTQgQEAgc3RhdGljIGludCBpZ2JfY2hlY2tf
bGJ0ZXN0X2ZyYW1lKHN0cnVjdCBpZ2JfcnhfYnVmZmVyICpyeF9idWZmZXIsCj4+Cj4+ICAgCWZy
YW1lX3NpemUgPj49IDE7Cj4+Cj4+IC0JZGF0YSA9IGttYXAocnhfYnVmZmVyLT5wYWdlKTsKPj4g
KwlkYXRhID0ga21hcF9sb2NhbF9wYWdlKHJ4X2J1ZmZlci0+cGFnZSk7Cj4+Cj4+ICAgCWlmIChk
YXRhWzNdICE9IDB4RkYgfHwKPj4gICAJICAgIGRhdGFbZnJhbWVfc2l6ZSArIDEwXSAhPSAweEJF
IHx8Cj4+ICAgCSAgICBkYXRhW2ZyYW1lX3NpemUgKyAxMl0gIT0gMHhBRikKPj4gICAJCW1hdGNo
ID0gZmFsc2U7Cj4+Cj4+IC0Ja3VubWFwKHJ4X2J1ZmZlci0+cGFnZSk7Cj4+ICsJa3VubWFwX2xv
Y2FsKGRhdGEpOwo+Pgo+PiAgIAlyZXR1cm4gbWF0Y2g7Cj4+ICAgfQo+PiAtLQo+PiAyLjM1LjIK
Pj4KPj4KPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
