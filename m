Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D21635E9164
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Sep 2022 09:18:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2197460B8E;
	Sun, 25 Sep 2022 07:18:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2197460B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664090280;
	bh=PNOcwoV4HE7e3fXUjZd4heQgoYQkX5yAQoeMrFVR2Ao=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lKzG9NOLhdbdxx6HZL/eTg3b+RnUT6c9vRFVUGuB+xf3LHE81qDn1HHqWOYKFnOzb
	 p1aRD7u+gZXerLVj41aXMFRE3K95QVWTVu5QzGcHz3v1bHXEDrPpg7iQutZZ95hR0H
	 s7UlKWO0P7+G2gzbouGxsXkTEOfluodTmFp6FcBf3iLtLNmzAFHDpEZLa/GfSEFXEA
	 bBYdIEboSVKyoBYXYGLmGRAzY25Pq5ZrfceGxal3uxA7LNRbuuV7CgV+0W8VpaJnAr
	 R9Mfj70xaRc5V01ha4sZOzvRJ/3w2GsZY/74olEnY7C7csXbaJ4WjFhVRWDqUxW1aB
	 dYzYfu8LrqdwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jq5yRi7aft8I; Sun, 25 Sep 2022 07:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA98460AEB;
	Sun, 25 Sep 2022 07:17:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA98460AEB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9D9B1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Sep 2022 07:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A4D383F16
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Sep 2022 07:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A4D383F16
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mrj9BD5rNWCi for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Sep 2022 07:17:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AFED83F11
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AFED83F11
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Sep 2022 07:17:51 +0000 (UTC)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-301-mnBVV0PwO9WfvQq0WDzGoQ-1; Sun, 25 Sep 2022 03:17:48 -0400
X-MC-Unique: mnBVV0PwO9WfvQq0WDzGoQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 e19-20020ad44433000000b004aaa7d00846so2434921qvt.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Sep 2022 00:17:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date;
 bh=FnuW0+nquE7jeCs1wGd25t/HgD5sAtMc07QK9kih2sQ=;
 b=KAkn8PpH8bzZHuq39pMj7ddJgT0pRYblyunGOGBrp/TOcCYwPqtN5EEaSUDCMlT3eo
 pN5UzYqOdNwDOxRKBu09X2J0La37TdTFFeqSL1L9nfosKWpz1nR9UnxLlZ6rOUQfwlEg
 42apMNrVY5RgQpxIWtO9+HFJnG2ZBP7p1R1mwoUoinCK3Yni0dygo1bLMm8ZWZR3luhT
 fucfRoAyyVKPh87FpZDTieu2dDypVYDdOmaDUEyk7J9pN1sqoOolL8qWj0YJ3Illkozg
 nsTofAGQCDQX1RfYvBB4uq8CV6DntuaeOk1ENem0WvKozPh8a+yDcRj7BL4bV3kALPU/
 GCKw==
X-Gm-Message-State: ACrzQf3oy0WC8lxInQ+buIBM2kBDzUTxOG7l6Eag32QDnmKHfov85Jy+
 5uLdUARsfaUFYIBd/GXOsqlCsgZbGcVz60bdoFbKq5+RbyN4XlklS7HRD93wx+tG+vrBZpvaJ01
 VgTfYSnYVgn3yLwzPDEtwU8zsgd8Wrg==
X-Received: by 2002:a05:620a:c8f:b0:6cb:e329:b5b9 with SMTP id
 q15-20020a05620a0c8f00b006cbe329b5b9mr10667169qki.95.1664090268094; 
 Sun, 25 Sep 2022 00:17:48 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4u6YF4dJIrwAN1QRZGgvTOpwH6qKYsc23O//LxYiiudu83+P6fv+LpA21i63RBBqqlayo//g==
X-Received: by 2002:a05:620a:c8f:b0:6cb:e329:b5b9 with SMTP id
 q15-20020a05620a0c8f00b006cbe329b5b9mr10667159qki.95.1664090267816; 
 Sun, 25 Sep 2022 00:17:47 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-97-96.dyn.eolo.it. [146.241.97.96])
 by smtp.gmail.com with ESMTPSA id
 bp30-20020a05620a459e00b006c479acd82fsm10375465qkb.7.2022.09.25.00.17.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Sep 2022 00:17:47 -0700 (PDT)
Message-ID: <e340d993bce8e1b2742fba52ac6383771cfaddae.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Kees Cook <keescook@chromium.org>, Vlastimil Babka <vbabka@suse.cz>
Date: Sun, 25 Sep 2022 09:17:40 +0200
In-Reply-To: <20220923202822.2667581-5-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-5-keescook@chromium.org>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1664090270;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FnuW0+nquE7jeCs1wGd25t/HgD5sAtMc07QK9kih2sQ=;
 b=SZBL0yllgncMHQJjYqneGvfhQm2AeybNL8PYw1Bfent43/fRlxWvUxkC/D/nmTltqWC4Ni
 22qTmVCLexiT0Ag0Ho1YAYPfMzOY+P42y+y33CKftoPcY/OThEMaUdzmmOltw3hbApVM83
 asdnwLDr1xKa8tvz4sXNyRRhsXEeWiE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SZBL0yll
Subject: Re: [Intel-wired-lan] [PATCH v2 04/16] skbuff: Phase out ksize()
 fallback for frag_size
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
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAyMDIyLTA5LTIzIGF0IDEzOjI4IC0wNzAwLCBLZWVzIENvb2sgd3JvdGU6Cj4gQWxs
IGNhbGxlcnMgb2YgQVBJcyB0aGF0IGFsbG93ZWQgYSAwLXNpemVkIGZyYWdfc2l6ZSBhcHBlYXIg
dG8gYmUKPiBwYXNzaW5nIGFjdHVhbCBzaXplIGluZm9ybWF0aW9uIGFscmVhZHkKCkFGQUlDUywg
bm90IHlldDoKCmRyaXZlcnMvbmV0L2V0aGVybmV0L3Fsb2dpYy9xZWQvcWVkX2xsMi5jOgoJc2ti
ID0gYnVpbGRfc2tiKGJ1ZmZlci0+ZGF0YSwgMCk7IC8vIC0+IF9fYnVpbGRfc2tiKC4uLiwgMCnC
oAoJCS8vIC0+ICBfX2J1aWxkX3NrYl9hcm91bmQoKQoKZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJv
YWRjb20vYm54Mi5jOgoJc2tiID0gYnVpbGRfc2tiKGRhdGEsIDApOwoKSSBndWVzcyBzb21lIG1v
cmUgZHJpdmVycyBoYXZlIGNhbGxzIGxlYWRpbmcgdG/CoAoKCV9fYnVpbGRfc2tiX2Fyb3VuZCgu
Li4sICAwKQoKdGhlcmUgYXJlIHNldmVyYWwgY2FsbCBwYXRoIHRvIGNoZWNrcy4uLgoKCj4gLCBz
byB0aGlzIHVzZSBvZiBrc2l6ZSgpIGNhbgo+IGJlIHJlbW92ZWQuIEhvd2V2ZXIsIGp1c3QgaW4g
Y2FzZSB0aGVyZSBpcyBzb21ldGhpbmcgc3RpbGwgZGVwZW5kaW5nCj4gb24gdGhpcyBiZWhhdmlv
ciwgaXNzdWUgYSBXQVJOIGFuZCBmYWxsIGJhY2sgdG8gYXMgYmVmb3JlIHRvIGtzaXplKCkKPiB3
aGljaCBtZWFucyB3ZSdsbCBhbHNvIHBvdGVudGlhbGx5IGdldCBLQVNBTiB3YXJuaW5ncy4KPiAK
PiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+Cj4gQ2M6IEVyaWMg
RHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT4KPiBDYzogSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz4KPiBDYzogUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPgo+IENjOiBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29v
a0BjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gIG5ldC9jb3JlL3NrYnVmZi5jIHwgMTggKysrKysrKysr
Ky0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9uZXQvY29yZS9za2J1ZmYuYyBiL25ldC9jb3JlL3NrYnVm
Zi5jCj4gaW5kZXggMGIzMGZiZGJkMGQwLi44NGNhODljNzgxY2QgMTAwNjQ0Cj4gLS0tIGEvbmV0
L2NvcmUvc2tidWZmLmMKPiArKysgYi9uZXQvY29yZS9za2J1ZmYuYwo+IEBAIC0xOTUsNyArMTk1
LDExIEBAIHN0YXRpYyB2b2lkIF9fYnVpbGRfc2tiX2Fyb3VuZChzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LCB2b2lkICpkYXRhLAo+ICAJCQkgICAgICAgdW5zaWduZWQgaW50IGZyYWdfc2l6ZSkKPiAgewo+
ICAJc3RydWN0IHNrYl9zaGFyZWRfaW5mbyAqc2hpbmZvOwo+IC0JdW5zaWduZWQgaW50IHNpemUg
PSBmcmFnX3NpemUgPyA6IGtzaXplKGRhdGEpOwo+ICsJdW5zaWduZWQgaW50IHNpemUgPSBmcmFn
X3NpemU7Cj4gKwo+ICsJLyogQWxsIGNhbGxlcnMgc2hvdWxkIGJlIHNldHRpbmcgZnJhZyBzaXpl
IG5vdz8gKi8KPiArCWlmIChXQVJOX09OX09OQ0Uoc2l6ZSA9PSAwKSkKPiArCQlzaXplID0ga3Np
emUoZGF0YSk7CgpBdCBzb21lIHBvaW50IGluIHRoZSBmdXR1cmUsIEkgZ3Vlc3Mgd2UgY291bGQg
ZXZlbiBkcm9wIHRoaXMgY2hlY2ssCnJpZ2h0PwoKVGhhbmtzIQoKUGFvbG8KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
