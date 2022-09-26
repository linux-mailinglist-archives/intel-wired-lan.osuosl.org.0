Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F23F5EA79B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Sep 2022 15:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 612AE417E0;
	Mon, 26 Sep 2022 13:49:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 612AE417E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664200150;
	bh=QWxHyjn3raqO7GvLieMMG+/YBz/FnxgKRT5belZLGpA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UsKHPJ7NulCa59TjD1BBdMtTO2ooCvRIXI4tNSZwuSs5dYYXbGVLiKYciQxkJ38ku
	 DAK4eCD56qYuMrPW9Sp94RdHpBvuXQ0yAZ/NSZPngf1zZ2rF5WuBpdaMKPua0pXRA+
	 b+LaWPp/2nLrrhHqrs4Roo20smTfkUo2WC8hgx8Vr9lT9L8P1kYw+YrM5CDijY5OX/
	 RM5NWhp/HffIIyIyUVUWDRcKK07vBMMJJRdOTlQzrIVrZrsIW6w9emkssneZRppeoa
	 ws35Ieyw6OMQwEMfCpwK25ruvC0jHRKsYPfNUHo5fy8FKzYCf6DaIkZja9j8qcwluY
	 Gstass5UAGxsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BE2dkqmkMRvN; Mon, 26 Sep 2022 13:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9395417CC;
	Mon, 26 Sep 2022 13:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9395417CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E7631BF25F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 09:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68E5B40176
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 09:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68E5B40176
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ep-DNigbc7zQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Sep 2022 09:29:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9112840159
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9112840159
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 09:29:26 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id f20so8139706edf.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Sep 2022 02:29:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=RRTzEh4eX7QJuMr9PBYcSE6qe2YnKNQ4s+EeI3ZLOR8=;
 b=0sjYYpbvtG8MLF1t4VNHzPXwggDeroTE7Cc6Ykv8M8V6xxWwAYRN79NB+5gH0Z+Vqh
 NteKoilaZ64oROS9+jJt1Iwq5oK55fqhSVFgamOf2cJ/yAb33vX/DKKuRZ8XKgTpt+eU
 jkR4FyEE9OTU43DnBviTpUu9MxZz7qhj1axYPn0XkfBtzlomXwDOxmyBQjUoJryTg3BO
 5/sUOF5n8k60OYTIYNBynOGg8BlcN4G5klmVQaSs9dLWZHikZJUrb4tJfz9ncERULOW7
 MwMa/XWie12FDOAar6O8FR2gMWpdjdF5Ep6Gc6ro9Er8ds1X2WouGNjBrZKEWYR/U5BY
 RRDQ==
X-Gm-Message-State: ACrzQf3isLMtmp/SZB+rDUNPPoNTlssWvfQ+u3Z8amtRhalR9fvQw3K3
 eSG6xg1iDvlizDuhnZHv2b4=
X-Google-Smtp-Source: AMsMyM7SuVBgSYWy5kh1HhAcVXy6Llss6obNUjIA/ZoXJgkE8T8RGaoTb9VPoRu5QX3Pg6i6kN2O6A==
X-Received: by 2002:a05:6402:2489:b0:454:11de:7698 with SMTP id
 q9-20020a056402248900b0045411de7698mr21490387eda.214.1664184564514; 
 Mon, 26 Sep 2022 02:29:24 -0700 (PDT)
Received: from [192.168.178.21] (p4fc20ebf.dip0.t-ipconnect.de.
 [79.194.14.191]) by smtp.gmail.com with ESMTPSA id
 lh3-20020a170906f8c300b00782ee6b34f2sm3710039ejb.183.2022.09.26.02.29.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Sep 2022 02:29:24 -0700 (PDT)
Message-ID: <a07c4a5e-1668-3609-334c-8aee2834ff90@gmail.com>
Date: Mon, 26 Sep 2022 11:29:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-9-keescook@chromium.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220923202822.2667581-9-keescook@chromium.org>
X-Mailman-Approved-At: Mon, 26 Sep 2022 13:48:55 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date;
 bh=RRTzEh4eX7QJuMr9PBYcSE6qe2YnKNQ4s+EeI3ZLOR8=;
 b=N2CdQZ5DidOd7rXorrAHwsU7REyGYjsVLRQw24k5i/zVnwxTVLXi79SokmwMPQ23dG
 ltHADiZ2Xdl1ZpGJHcq9sCz91HuEiXsn5cgUkN6cCcc0qhs3gJdO6JtWSNxOVKAm2maA
 RUP45w5trMH4BmzGD7P4bYWDoQ80fJ5gk/tTcqUWNZwxEVqilkjzRE/DXJj2o9eLrnMT
 Eibb/G/CFzTjUYyiTkzjs9+xpKaddZrQr2Ady4gPnOt6q/+8sfnBsKlTNnNA0nWB58c5
 OZTJtHQ5pIa7jnF722Q6qFBJveO3Wd9eH06jY4XW0T30bgmjP4abl+o8prFN+WFIDcbp
 QH5w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20210112 header.b=N2CdQZ5D
Subject: Re: [Intel-wired-lan] [Linaro-mm-sig] [PATCH v2 08/16] dma-buf:
 Proactively round up to kmalloc bucket size
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Oj eda <ojeda@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QW0gMjMuMDkuMjIgdW0gMjI6Mjggc2NocmllYiBLZWVzIENvb2s6Cj4gSW5zdGVhZCBvZiBkaXNj
b3ZlcmluZyB0aGUga21hbGxvYyBidWNrZXQgc2l6ZSBfYWZ0ZXJfIGFsbG9jYXRpb24sIHJvdW5k
Cj4gdXAgcHJvYWN0aXZlbHkgc28gdGhlIGFsbG9jYXRpb24gaXMgZXhwbGljaXRseSBtYWRlIGZv
ciB0aGUgZnVsbCBzaXplLAo+IGFsbG93aW5nIHRoZSBjb21waWxlciB0byBjb3JyZWN0bHkgcmVh
c29uIGFib3V0IHRoZSByZXN1bHRpbmcgc2l6ZSBvZgo+IHRoZSBidWZmZXIgdGhyb3VnaCB0aGUg
ZXhpc3RpbmcgX19hbGxvY19zaXplKCkgaGludC4KPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5v
cmc+CgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgOSArKysrKysrLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYwo+IGluZGV4IDIwNWFjYjJjNzQ0ZC4uNWIwYTRiODgzMGZmIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMKPiBAQCAtOTgsMTIgKzk4LDE3IEBAIHN0YXRpYyB2b2lkIGRtYV9yZXN2X2xpc3Rf
c2V0KHN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0LAo+ICAgc3RhdGljIHN0cnVjdCBkbWFfcmVz
dl9saXN0ICpkbWFfcmVzdl9saXN0X2FsbG9jKHVuc2lnbmVkIGludCBtYXhfZmVuY2VzKQo+ICAg
ewo+ICAgCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0Owo+ICsJc2l6ZV90IHNpemU7Cj4gICAK
PiAtCWxpc3QgPSBrbWFsbG9jKHN0cnVjdF9zaXplKGxpc3QsIHRhYmxlLCBtYXhfZmVuY2VzKSwg
R0ZQX0tFUk5FTCk7Cj4gKwkvKiBSb3VuZCB1cCB0byB0aGUgbmV4dCBrbWFsbG9jIGJ1Y2tldCBz
aXplLiAqLwo+ICsJc2l6ZSA9IGttYWxsb2Nfc2l6ZV9yb3VuZHVwKHN0cnVjdF9zaXplKGxpc3Qs
IHRhYmxlLCBtYXhfZmVuY2VzKSk7Cj4gKwo+ICsJbGlzdCA9IGttYWxsb2Moc2l6ZSwgR0ZQX0tF
Uk5FTCk7Cj4gICAJaWYgKCFsaXN0KQo+ICAgCQlyZXR1cm4gTlVMTDsKPiAgIAo+IC0JbGlzdC0+
bWF4X2ZlbmNlcyA9IChrc2l6ZShsaXN0KSAtIG9mZnNldG9mKHR5cGVvZigqbGlzdCksIHRhYmxl
KSkgLwo+ICsJLyogR2l2ZW4gdGhlIHJlc3VsdGluZyBidWNrZXQgc2l6ZSwgcmVjYWxjdWxhdGVk
IG1heF9mZW5jZXMuICovCj4gKwlsaXN0LT5tYXhfZmVuY2VzID0gKHNpemUgLSBvZmZzZXRvZih0
eXBlb2YoKmxpc3QpLCB0YWJsZSkpIC8KPiAgIAkJc2l6ZW9mKCpsaXN0LT50YWJsZSk7Cj4gICAK
PiAgIAlyZXR1cm4gbGlzdDsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
