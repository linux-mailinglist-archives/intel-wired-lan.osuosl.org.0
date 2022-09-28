Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EB05ED604
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 09:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C82C682538;
	Wed, 28 Sep 2022 07:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C82C682538
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664350009;
	bh=eMXUVJpTAIS36fqkEft0lFVsFRC8MK3W5NTEWRtkm4k=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2hs/azMAalg7j4SEpschegsm/kvlpypHTf3aauMu4TYxZ/E/eGyVGKDhUeS/PuzsE
	 9y8beQ19pe0l+PaEjsFGrHkomS9trCmE25F7kYFVXWjIYOISbgVipaN0M9rkp3Adc/
	 ShAhShe1LoSH+YqCBEGfvRbUP71rZ9SWh/TkCpXljtcsHgILKEbmiVqHk+iMSLNEDJ
	 adNOHs3kQPZxoekWiQQPL/JxD3jeCXWFOkJoY6rlnURtr54LTHw2PHu2qZX/VQpKDh
	 RFxWXsvO4jeK8ytaVXYVpngqNBdut7OHWEXcwCOVHRlw8+BrIW8i1IPNBrLfQcl1pm
	 ow9yCSHJZD0NQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LW04iJJJu9kL; Wed, 28 Sep 2022 07:26:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34B9B823E0;
	Wed, 28 Sep 2022 07:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34B9B823E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1CFE1BF307
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 07:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C87540522
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 07:26:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C87540522
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3iM4FtsPWze for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 07:26:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24AD0404EB
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24AD0404EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 07:26:41 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id j188so14530023oih.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 00:26:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=qLaRR+atoHoSJaoPeYCH+z3TJyk6r6Xbl1EdBW345pA=;
 b=I2iRBlx3vJh7b8u4u5JeDFKiwFOs8K9BoqViooSj4p/L+Nhb+jV+gaF2oaze12SZFJ
 Rs0pFaPFwXLXRKdoyL6MnT0SUHQ7hRpaQ/BdhSkgKswdNO2BdSryTred9vChYEB9D3HR
 kSg+YBB/ma8zl2JA50W+Qna6rbPrWDWSiWHdTQSyYIlxEeGpQgDFXmaMNSfCyYYCmrL1
 nhZFWzp9FCWwkiCmL1967sBqtQTs84Q/zpD+WwFls1bpc4DbxHK5QGayVzhUtqUlr8yY
 lOPtZtn9dSqfOV/TVFUDLXuD4l/JxRnVfBObwBQE5hHcmc/F8gzwY2q6BsfY9T5TjKsg
 mLeg==
X-Gm-Message-State: ACrzQf0tmYk4PSK0OFSUXuu959rEu9p8F2dfHSFjxKA9QMe5ZqSuFP5W
 9QrGF7VmJ0FEPPkNaK39opElgOEwD3xBsg==
X-Google-Smtp-Source: AMsMyM4HBo3Gn5+pGzdle8uXJxQV6WQZQ7cTK7sGgYzvlbFJlBmGkVRtWTB1r0/Am8OMMwXBq2/ABg==
X-Received: by 2002:a05:6808:1b21:b0:34f:cd9b:bee0 with SMTP id
 bx33-20020a0568081b2100b0034fcd9bbee0mr3797949oib.11.1664349998380; 
 Wed, 28 Sep 2022 00:26:38 -0700 (PDT)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com.
 [209.85.210.54]) by smtp.gmail.com with ESMTPSA id
 e14-20020a056870238e00b0011e73536301sm2025954oap.52.2022.09.28.00.26.37
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Sep 2022 00:26:38 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id
 w22-20020a056830061600b006546deda3f9so7699075oti.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 00:26:37 -0700 (PDT)
X-Received: by 2002:a81:758a:0:b0:345:450b:6668 with SMTP id
 q132-20020a81758a000000b00345450b6668mr28433710ywc.316.1664349987412; Wed, 28
 Sep 2022 00:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
In-Reply-To: <20220923202822.2667581-2-keescook@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Sep 2022 09:26:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
Message-ID: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgS2VlcywKCk9uIEZyaSwgU2VwIDIzLCAyMDIyIGF0IDEwOjM1IFBNIEtlZXMgQ29vayA8a2Vl
c2Nvb2tAY2hyb21pdW0ub3JnPiB3cm90ZToKPiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNob3Vs
ZCBub3QgYmUgYXBwbGllZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcwo+IHRoZSByZXR1cm5l
ZCBwb2ludGVyIG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0aGUgcHJpb3IgcG9pbnRlci4gSW5z
dGVhZAo+IG9mIHNwbGl0dGluZyBfX21hbGxvYyBmcm9tIF9fYWxsb2Nfc2l6ZSwgd2hpY2ggd291
bGQgYmUgYSBodWdlIGFtb3VudCBvZgo+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3JlYWxsb2Nfc2l6
ZSBmb3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuCj4KPiBBZGRpdGlvbmFsbHkg
cmVtb3ZlcyB0aGUgY29uZGl0aW9uYWwgdGVzdCBmb3IgX19hbGxvY19zaXplX18sIHdoaWNoIGlz
Cj4gYWx3YXlzIGRlZmluZWQgbm93Lgo+Cj4gQ2M6IENocmlzdG9waCBMYW1ldGVyIDxjbEBsaW51
eC5jb20+Cj4gQ2M6IFBla2thIEVuYmVyZyA8cGVuYmVyZ0BrZXJuZWwub3JnPgo+IENjOiBEYXZp
ZCBSaWVudGplcyA8cmllbnRqZXNAZ29vZ2xlLmNvbT4KPiBDYzogSm9vbnNvbyBLaW0gPGlhbWpv
b25zb28ua2ltQGxnZS5jb20+Cj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRh
dGlvbi5vcmc+Cj4gQ2M6IFZsYXN0aW1pbCBCYWJrYSA8dmJhYmthQHN1c2UuY3o+Cj4gQ2M6IFJv
bWFuIEd1c2hjaGluIDxyb21hbi5ndXNoY2hpbkBsaW51eC5kZXY+Cj4gQ2M6IEh5ZW9uZ2dvbiBZ
b28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+Cj4gQ2M6IE1hcmNvIEVsdmVyIDxlbHZlckBnb29nbGUu
Y29tPgo+IENjOiBsaW51eC1tbUBrdmFjay5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sg
PGtlZXNjb29rQGNocm9taXVtLm9yZz4KClRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMg
bm93IGNvbW1pdCA2M2NhYTA0ZWM2MDU4M2IxICgic2xhYjoKUmVtb3ZlIF9fbWFsbG9jIGF0dHJp
YnV0ZSBmcm9tIHJlYWxsb2MgZnVuY3Rpb25zIikgaW4gbmV4dC0yMDIyMDkyNy4KCk5vcmVwbHlA
ZWxsZXJtYW4uaWQuYXUgcmVwb3J0ZWQgYWxsIGdjYzgtYmFzZWQgYnVpbGRzIHRvIGZhaWwKKGUu
Zy4gWzFdLCBtb3JlIGF0IFsyXSk6CgogICAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5k
LWxpbmU+OgogICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDigJhfX2Fs
bG9jX3Jlc2VydmVkX3BlcmNwdeKAmToKICAgIC4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5
cGVzLmg6Mjc5OjMwOiBlcnJvcjogZXhwZWN0ZWQKZGVjbGFyYXRpb24gc3BlY2lmaWVycyBiZWZv
cmUg4oCYX19hbGxvY19zaXplX1/igJkKICAgICAjZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4LCAuLi4p
IF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKSBfX21hbGxvYwogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4KICAgIC4vaW5jbHVkZS9saW51eC9w
ZXJjcHUuaDoxMjA6NzQ6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhfX2FsbG9jX3Np
emXigJkKICAgIFsuLi5dCgpJdCdzIGJ1aWxkaW5nIGZpbmUgd2l0aCBlLmcuIGdjYy05ICh3aGlj
aCBpcyBteSB1c3VhbCBtNjhrIGNyb3NzLWNvbXBpbGVyKS4KUmV2ZXJ0aW5nIHRoaXMgY29tbWl0
IG9uIG5leHQtMjAyMjA5MjcgZml4ZXMgdGhlIGlzc3VlLgoKWzFdIGh0dHA6Ly9raXNza2IuZWxs
ZXJtYW4uaWQuYXUva2lzc2tiL2J1aWxkcmVzdWx0LzE0ODAzOTA4LwpbMl0gaHR0cDovL2tpc3Nr
Yi5lbGxlcm1hbi5pZC5hdS9raXNza2IvaGVhZC8xYmQ4Yjc1ZmU2YWRlYWE4OWQwMjk2OGJkZDgx
MWZmZTcwOGNmODM5LwoKCgo+IC0tLQo+ICBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyX3R5cGVzLmgg
fCAxMyArKysrKy0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvc2xhYi5oICAgICAgICAgICB8IDEy
ICsrKysrKy0tLS0tLQo+ICBtbS9zbGFiX2NvbW1vbi5jICAgICAgICAgICAgICAgfCAgNCArKy0t
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oIGIvaW5jbHVkZS9s
aW51eC9jb21waWxlcl90eXBlcy5oCj4gaW5kZXggNGYyYTgxOWZkNjBhLi5mMTQxYTZmNmI5ZjYg
MTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oCj4gKysrIGIvaW5j
bHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oCj4gQEAgLTI3MSwxNSArMjcxLDEyIEBAIHN0cnVj
dCBmdHJhY2VfbGlrZWx5X2RhdGEgewo+Cj4gIC8qCj4gICAqIEFueSBwbGFjZSB0aGF0IGNvdWxk
IGJlIG1hcmtlZCB3aXRoIHRoZSAiYWxsb2Nfc2l6ZSIgYXR0cmlidXRlIGlzIGFsc28KPiAtICog
YSBwbGFjZSB0byBiZSBtYXJrZWQgd2l0aCB0aGUgIm1hbGxvYyIgYXR0cmlidXRlLiBEbyB0aGlz
IGFzIHBhcnQgb2YgdGhlCj4gLSAqIF9fYWxsb2Nfc2l6ZSBtYWNybyB0byBhdm9pZCByZWR1bmRh
bnQgYXR0cmlidXRlcyBhbmQgdG8gYXZvaWQgbWlzc2luZyBhCj4gLSAqIF9fbWFsbG9jIG1hcmtp
bmcuCj4gKyAqIGEgcGxhY2UgdG8gYmUgbWFya2VkIHdpdGggdGhlICJtYWxsb2MiIGF0dHJpYnV0
ZSwgZXhjZXB0IHRob3NlIHRoYXQgbWF5Cj4gKyAqIGJlIHBlcmZvcm1pbmcgYSBfcmVhbGxvY2F0
aW9uXywgYXMgdGhhdCBtYXkgYWxpYXMgdGhlIGV4aXN0aW5nIHBvaW50ZXIuCj4gKyAqIEZvciB0
aGVzZSwgdXNlIF9fcmVhbGxvY19zaXplKCkuCj4gICAqLwo+IC0jaWZkZWYgX19hbGxvY19zaXpl
X18KPiAtIyBkZWZpbmUgX19hbGxvY19zaXplKHgsIC4uLikgIF9fYWxsb2Nfc2l6ZV9fKHgsICMj
IF9fVkFfQVJHU19fKSBfX21hbGxvYwo+IC0jZWxzZQo+IC0jIGRlZmluZSBfX2FsbG9jX3NpemUo
eCwgLi4uKSAgX19tYWxsb2MKPiAtI2VuZGlmCj4gKyNkZWZpbmUgX19hbGxvY19zaXplKHgsIC4u
LikgICBfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykgX19tYWxsb2MKPiArI2RlZmlu
ZSBfX3JlYWxsb2Nfc2l6ZSh4LCAuLi4pIF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19f
KQo+Cj4gICNpZm5kZWYgYXNtX3ZvbGF0aWxlX2dvdG8KPiAgI2RlZmluZSBhc21fdm9sYXRpbGVf
Z290byh4Li4uKSBhc20gZ290byh4KQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3NsYWIu
aCBiL2luY2x1ZGUvbGludXgvc2xhYi5oCj4gaW5kZXggMGZlZmRmNTI4ZTBkLi40MWJkMDM2ZTc1
NTEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9zbGFiLmgKPiArKysgYi9pbmNsdWRlL2xp
bnV4L3NsYWIuaAo+IEBAIC0xODQsNyArMTg0LDcgQEAgaW50IGttZW1fY2FjaGVfc2hyaW5rKHN0
cnVjdCBrbWVtX2NhY2hlICpzKTsKPiAgLyoKPiAgICogQ29tbW9uIGttYWxsb2MgZnVuY3Rpb25z
IHByb3ZpZGVkIGJ5IGFsbCBhbGxvY2F0b3JzCj4gICAqLwo+IC12b2lkICogX19tdXN0X2NoZWNr
IGtyZWFsbG9jKGNvbnN0IHZvaWQgKm9ianAsIHNpemVfdCBuZXdfc2l6ZSwgZ2ZwX3QgZmxhZ3Mp
IF9fYWxsb2Nfc2l6ZSgyKTsKPiArdm9pZCAqIF9fbXVzdF9jaGVjayBrcmVhbGxvYyhjb25zdCB2
b2lkICpvYmpwLCBzaXplX3QgbmV3X3NpemUsIGdmcF90IGZsYWdzKSBfX3JlYWxsb2Nfc2l6ZSgy
KTsKPiAgdm9pZCBrZnJlZShjb25zdCB2b2lkICpvYmpwKTsKPiAgdm9pZCBrZnJlZV9zZW5zaXRp
dmUoY29uc3Qgdm9pZCAqb2JqcCk7Cj4gIHNpemVfdCBfX2tzaXplKGNvbnN0IHZvaWQgKm9ianAp
Owo+IEBAIC02NDcsMTAgKzY0NywxMCBAQCBzdGF0aWMgaW5saW5lIF9fYWxsb2Nfc2l6ZSgxLCAy
KSB2b2lkICprbWFsbG9jX2FycmF5KHNpemVfdCBuLCBzaXplX3Qgc2l6ZSwgZ2ZwXwo+ICAgKiBA
bmV3X3NpemU6IG5ldyBzaXplIG9mIGEgc2luZ2xlIG1lbWJlciBvZiB0aGUgYXJyYXkKPiAgICog
QGZsYWdzOiB0aGUgdHlwZSBvZiBtZW1vcnkgdG8gYWxsb2NhdGUgKHNlZSBrbWFsbG9jKQo+ICAg
Ki8KPiAtc3RhdGljIGlubGluZSBfX2FsbG9jX3NpemUoMiwgMykgdm9pZCAqIF9fbXVzdF9jaGVj
ayBrcmVhbGxvY19hcnJheSh2b2lkICpwLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZV90IG5ld19uLAo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc2l6ZV90IG5ld19zaXplLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2ZwX3QgZmxhZ3MpCj4gK3N0
YXRpYyBpbmxpbmUgX19yZWFsbG9jX3NpemUoMiwgMykgdm9pZCAqIF9fbXVzdF9jaGVjayBrcmVh
bGxvY19hcnJheSh2b2lkICpwLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplX3QgbmV3X24sCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHNpemVfdCBuZXdfc2l6ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2ZwX3QgZmxhZ3MpCj4gIHsK
PiAgICAgICAgIHNpemVfdCBieXRlczsKPgo+IEBAIC03NzQsNyArNzc0LDcgQEAgc3RhdGljIGlu
bGluZSBfX2FsbG9jX3NpemUoMSwgMikgdm9pZCAqa3ZjYWxsb2Moc2l6ZV90IG4sIHNpemVfdCBz
aXplLCBnZnBfdCBmbGEKPiAgfQo+Cj4gIGV4dGVybiB2b2lkICprdnJlYWxsb2MoY29uc3Qgdm9p
ZCAqcCwgc2l6ZV90IG9sZHNpemUsIHNpemVfdCBuZXdzaXplLCBnZnBfdCBmbGFncykKPiAtICAg
ICAgICAgICAgICAgICAgICAgX19hbGxvY19zaXplKDMpOwo+ICsgICAgICAgICAgICAgICAgICAg
ICBfX3JlYWxsb2Nfc2l6ZSgzKTsKPiAgZXh0ZXJuIHZvaWQga3ZmcmVlKGNvbnN0IHZvaWQgKmFk
ZHIpOwo+ICBleHRlcm4gdm9pZCBrdmZyZWVfc2Vuc2l0aXZlKGNvbnN0IHZvaWQgKmFkZHIsIHNp
emVfdCBsZW4pOwo+Cj4gZGlmZiAtLWdpdCBhL21tL3NsYWJfY29tbW9uLmMgYi9tbS9zbGFiX2Nv
bW1vbi5jCj4gaW5kZXggMTc5OTY2NDljZmUzLi40NTc2NzFhY2U3ZWIgMTAwNjQ0Cj4gLS0tIGEv
bW0vc2xhYl9jb21tb24uYwo+ICsrKyBiL21tL3NsYWJfY29tbW9uLmMKPiBAQCAtMTEzNCw4ICsx
MTM0LDggQEAgbW9kdWxlX2luaXQoc2xhYl9wcm9jX2luaXQpOwo+Cj4gICNlbmRpZiAvKiBDT05G
SUdfU0xBQiB8fCBDT05GSUdfU0xVQl9ERUJVRyAqLwo+Cj4gLXN0YXRpYyBfX2Fsd2F5c19pbmxp
bmUgdm9pZCAqX19kb19rcmVhbGxvYyhjb25zdCB2b2lkICpwLCBzaXplX3QgbmV3X3NpemUsCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdmcF90IGZsYWdzKQo+
ICtzdGF0aWMgX19hbHdheXNfaW5saW5lIF9fcmVhbGxvY19zaXplKDIpIHZvaWQgKgo+ICtfX2Rv
X2tyZWFsbG9jKGNvbnN0IHZvaWQgKnAsIHNpemVfdCBuZXdfc2l6ZSwgZ2ZwX3QgZmxhZ3MpCj4g
IHsKPiAgICAgICAgIHZvaWQgKnJldDsKPiAgICAgICAgIHNpemVfdCBrczsKPiAtLQo+IDIuMzQu
MQo+CgoKLS0KR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVy
dAoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQg
aWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3
aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEkn
bSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0
aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMg
VG9ydmFsZHMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
