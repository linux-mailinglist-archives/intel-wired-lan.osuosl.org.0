Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 741435EE2C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 19:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDEB44191F;
	Wed, 28 Sep 2022 17:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDEB44191F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664385207;
	bh=7QjX6WqvLfVNssbZYZg2DrD0YHlSy5f7EPy8zn+Iv90=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1zPV24hXrzy7uahpW+xl4l+buIHtrrR96Jx9Baw0iEXC3So9eFzrE20GOPmzWdchD
	 hTk2EXdFXfJaJ3PSH0Sz6X+LG1gcCl9SpI/LbLCIocXBYxSBU4kbcbQlqr3Lv63LMv
	 W1TUgeuxlNQu5wh/FhkeKIL0qbXal13mPeKXcDhstGkjNq7r6oQrGYUcpLY7Tg4JeO
	 GmQOIPxJarVDMLDhQErAwOhGpAlFtVbASzfi3hwWOZCT0B+7v+FLHbGFIxS4m42DGs
	 L1X6EPGK6rNUo45YXyR2L1hj5hpgsgtEm6A41Z9jfAL09h0MyjoVSWIKh0KpJ1mr4o
	 HxpzkVrytQpXQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZhsCsT-qienQ; Wed, 28 Sep 2022 17:13:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D6A14185F;
	Wed, 28 Sep 2022 17:13:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D6A14185F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5E6B1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 17:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9A36040FCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 17:13:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A36040FCF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nk0AAxoUBDUI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 17:13:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BAB440FBD
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BAB440FBD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 17:13:15 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 e11-20020a17090a77cb00b00205edbfd646so3188691pjs.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 10:13:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date;
 bh=d6n7vVcWWAUhY50nx1oX+SjTLgFqeY1Yq8iTalyfqd0=;
 b=uyFPfj6kL05r6DqEWPTSEn98aXS3wA2nywn8j00hOPIlxAgFNDVd8PJCtqNSStOM3w
 TzYDyrFDSxCehnutFNUXia3gjuEHHpdwKwSKtA5RxBsM4vDeGIJ0soDjkyBkhINwhjVP
 a7+voLuXOIVkw9Z2b/g0gvjNSoeXmbPIj8iH0kXCIUYHz3AInv5/HvW2DLbVzEU8vXnm
 AbGntAOi1mc8Oh9nb5sZHZ35m+EloTqCJARo/NkrdzduFEBZmLCTG6WY5qZwljDlhQM3
 A66hUnX6CJULaiI/aDreCD1ez84ZTmlzRRcZTLpUYGMf9XvXs9wHNwIlTf2fex39l2fC
 bXHg==
X-Gm-Message-State: ACrzQf3PAE3zCTjSyVnHtBsBFT0pnGxVII/+JgdGmaTKnRFhSkWSlzVw
 ajCks5B0s8OcXTjsnFnN7SN6bA==
X-Google-Smtp-Source: AMsMyM6sCBBdOCLg/ekAp2unP2+2il2GSYEdTvWU2WPyIonTKW/L3Ua/pLmu7ZGbcH4WrqStMgqaPQ==
X-Received: by 2002:a17:902:db08:b0:176:d40e:4b57 with SMTP id
 m8-20020a170902db0800b00176d40e4b57mr799977plx.172.1664385194575; 
 Wed, 28 Sep 2022 10:13:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 q3-20020a170902dac300b00177faf558b5sm4082449plx.250.2022.09.28.10.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Sep 2022 10:13:13 -0700 (PDT)
Date: Wed, 28 Sep 2022 10:13:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <202209281011.66DD717D@keescook>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date;
 bh=d6n7vVcWWAUhY50nx1oX+SjTLgFqeY1Yq8iTalyfqd0=;
 b=lIRHIZiWHITqRmakxRZHSG2SU2bpWinoR3Swar+fPYJBmT1qOO/MT6WnWN5yBDlhGu
 /lQXgjvlz0O4V2+hnYy+98Yh09p4wB3YUjZ22bnBWEa9dMSwUm7gVI6Ae5kXcacwBn8L
 BoOjiPYblWsCdJGhH6goLGXzHmU5/JoB80oyI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=lIRHIZiW
Subject: Re: [Intel-wired-lan] [PATCH v2 01/16] slab: Remove __malloc
 attribute from realloc functions
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
Cc: Roman Gushchin <roman.gushchin@linux.dev>, dri-devel@lists.freedesktop.org,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, llvm@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBTZXAgMjgsIDIwMjIgYXQgMDk6MjY6MTVBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IEhpIEtlZXMsCj4gCj4gT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6MzUg
UE0gS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+ID4gVGhlIF9fbWFs
bG9jIGF0dHJpYnV0ZSBzaG91bGQgbm90IGJlIGFwcGxpZWQgdG8gInJlYWxsb2MiIGZ1bmN0aW9u
cywgYXMKPiA+IHRoZSByZXR1cm5lZCBwb2ludGVyIG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0
aGUgcHJpb3IgcG9pbnRlci4gSW5zdGVhZAo+ID4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9jIGZyb20g
X19hbGxvY19zaXplLCB3aGljaCB3b3VsZCBiZSBhIGh1Z2UgYW1vdW50IG9mCj4gPiBjaHVybiwg
anVzdCBjcmVhdGUgX19yZWFsbG9jX3NpemUgZm9yIHRoZSBmZXcgY2FzZXMgd2hlcmUgaXQgaXMg
bmVlZGVkLgo+ID4KPiA+IEFkZGl0aW9uYWxseSByZW1vdmVzIHRoZSBjb25kaXRpb25hbCB0ZXN0
IGZvciBfX2FsbG9jX3NpemVfXywgd2hpY2ggaXMKPiA+IGFsd2F5cyBkZWZpbmVkIG5vdy4KPiA+
Cj4gPiBDYzogQ2hyaXN0b3BoIExhbWV0ZXIgPGNsQGxpbnV4LmNvbT4KPiA+IENjOiBQZWtrYSBF
bmJlcmcgPHBlbmJlcmdAa2VybmVsLm9yZz4KPiA+IENjOiBEYXZpZCBSaWVudGplcyA8cmllbnRq
ZXNAZ29vZ2xlLmNvbT4KPiA+IENjOiBKb29uc29vIEtpbSA8aWFtam9vbnNvby5raW1AbGdlLmNv
bT4KPiA+IENjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+ID4g
Q2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+Cj4gPiBDYzogUm9tYW4gR3VzaGNo
aW4gPHJvbWFuLmd1c2hjaGluQGxpbnV4LmRldj4KPiA+IENjOiBIeWVvbmdnb24gWW9vIDw0Mi5o
eWV5b29AZ21haWwuY29tPgo+ID4gQ2M6IE1hcmNvIEVsdmVyIDxlbHZlckBnb29nbGUuY29tPgo+
ID4gQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwo+ID4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4gCj4gVGhhbmtzIGZvciB5b3VyIHBhdGNoLCB3aGljaCBp
cyBub3cgY29tbWl0IDYzY2FhMDRlYzYwNTgzYjEgKCJzbGFiOgo+IFJlbW92ZSBfX21hbGxvYyBh
dHRyaWJ1dGUgZnJvbSByZWFsbG9jIGZ1bmN0aW9ucyIpIGluIG5leHQtMjAyMjA5MjcuCj4gCj4g
Tm9yZXBseUBlbGxlcm1hbi5pZC5hdSByZXBvcnRlZCBhbGwgZ2NjOC1iYXNlZCBidWlsZHMgdG8g
ZmFpbAo+IChlLmcuIFsxXSwgbW9yZSBhdCBbMl0pOgo+IAo+ICAgICBJbiBmaWxlIGluY2x1ZGVk
IGZyb20gPGNvbW1hbmQtbGluZT46Cj4gICAgIC4vaW5jbHVkZS9saW51eC9wZXJjcHUuaDogSW4g
ZnVuY3Rpb24g4oCYX19hbGxvY19yZXNlcnZlZF9wZXJjcHXigJk6Cj4gICAgIC4vLi9pbmNsdWRl
L2xpbnV4L2NvbXBpbGVyX3R5cGVzLmg6Mjc5OjMwOiBlcnJvcjogZXhwZWN0ZWQKPiBkZWNsYXJh
dGlvbiBzcGVjaWZpZXJzIGJlZm9yZSDigJhfX2FsbG9jX3NpemVfX+KAmQo+ICAgICAgI2RlZmlu
ZSBfX2FsbG9jX3NpemUoeCwgLi4uKSBfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykg
X19tYWxsb2MKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+
fn4KPiAgICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOjEyMDo3NDogbm90ZTogaW4gZXhwYW5z
aW9uIG9mIG1hY3JvIOKAmF9fYWxsb2Nfc2l6ZeKAmQo+ICAgICBbLi4uXQo+IAo+IEl0J3MgYnVp
bGRpbmcgZmluZSB3aXRoIGUuZy4gZ2NjLTkgKHdoaWNoIGlzIG15IHVzdWFsIG02OGsgY3Jvc3Mt
Y29tcGlsZXIpLgo+IFJldmVydGluZyB0aGlzIGNvbW1pdCBvbiBuZXh0LTIwMjIwOTI3IGZpeGVz
IHRoZSBpc3N1ZS4KPiAKPiBbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5pZC5hdS9raXNza2Iv
YnVpbGRyZXN1bHQvMTQ4MDM5MDgvCj4gWzJdIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4uaWQuYXUv
a2lzc2tiL2hlYWQvMWJkOGI3NWZlNmFkZWFhODlkMDI5NjhiZGQ4MTFmZmU3MDhjZjgzOS8KCkVl
ayEgVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cuIEknbSBjb25mdXNlZCBhYm91dCB0aGlzIC0t
Cl9fYWxsb2Nfc2l6ZV9fIHdhc24ndCBvcHRpb25hbCBpbiBjb21waWxlcl9hdHRyaWJ1dGVzLmgg
LS0gYnV0IG9idmlvdXNseQpJIGJyb2tlIHNvbWV0aGluZyEgSSdsbCBnbyBmaWd1cmUgdGhpcyBv
dXQuCgotS2VlcwoKLS0gCktlZXMgQ29vawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
