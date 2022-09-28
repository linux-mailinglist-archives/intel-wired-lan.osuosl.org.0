Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC305EE87B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 23:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84FC860F21;
	Wed, 28 Sep 2022 21:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84FC860F21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664401261;
	bh=NLDLFYFiahXAc3ejYfr5nv/TLb+m84caNPeCa0593ro=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5IGytB/Yr7ecZoqD1KMg+pG2/kzg+yxXBBJMKIzi1n4X4BEvGeVYxSbxZECbwkomP
	 f5EJP+vO1O+ATYdNlQ4FnR73j9SBBoT/JTj8in86yPZ0fyp3J+fds+YQPhUyVs8oHr
	 fIzBJml+zYgT2OYlp6+jcxjBslpHW7d3iz8omS7djxS+tAP93RFjEmROReu7i3TXMc
	 s+lH1n4EO20AVhXh6a3irD/VG0uZkyo/n7EHdCDEjp7iqCr6hKEkZxPxsD5TzFqukP
	 AItWLjITDh19pQvcNxEG70xMpMQaPOU0P+3SMT0H09abrJ497TdufbmddqBgiTI67o
	 qdVYtO8H6RyVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ODZQUSk1MdKC; Wed, 28 Sep 2022 21:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1137760EA1;
	Wed, 28 Sep 2022 21:40:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1137760EA1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DCF11BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 21:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57A9583367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 21:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57A9583367
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9ZxAFbddwB6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 21:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 286A183300
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 286A183300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 21:40:53 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 19CC21F45F;
 Wed, 28 Sep 2022 21:40:48 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DA18F13A84;
 Wed, 28 Sep 2022 21:40:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id pwxsNF6/NGNaHwAAMHmgww
 (envelope-from <vbabka@suse.cz>); Wed, 28 Sep 2022 21:40:46 +0000
Message-ID: <d5cb63f4-b1f5-9862-c31c-c8c6c4cb41df@suse.cz>
Date: Wed, 28 Sep 2022 23:39:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
 <202209281011.66DD717D@keescook>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <202209281011.66DD717D@keescook>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1664401248; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C18vkSCkEp0R0j/E8doyhXlqBRc6MmmoczHaFz5Tq/o=;
 b=O8ZKN2zJZST2anqWW6kCZ7PFlJtkR+DhFF/E1xFtpBjfMisY/NEE2VUHIT0ctG6+BRKpcm
 TFzItcWnIOwSwp96McUWnDjo0baCWUX3p/6aNYk16N1G1gVpmFAU0HxXjLM93Ltz5am9pC
 6mcBPOCE9PClr4mk2WyQ3I6f95q7OjY=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1664401248;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C18vkSCkEp0R0j/E8doyhXlqBRc6MmmoczHaFz5Tq/o=;
 b=QuVwGzEY77p785Z+8T99wXOp96mLv9PVymdpRO3H5bysX/SgsIeBkJWmKXpwJqWMN6hRxn
 P80vd3XHeULykLAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=O8ZKN2zJ; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=QuVwGzEY
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

T24gOS8yOC8yMiAxOToxMywgS2VlcyBDb29rIHdyb3RlOgo+IE9uIFdlZCwgU2VwIDI4LCAyMDIy
IGF0IDA5OjI2OjE1QU0gKzAyMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPj4gSGkgS2Vl
cywKPj4KPj4gT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6MzUgUE0gS2VlcyBDb29rIDxrZWVz
Y29va0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+Pj4gVGhlIF9fbWFsbG9jIGF0dHJpYnV0ZSBzaG91
bGQgbm90IGJlIGFwcGxpZWQgdG8gInJlYWxsb2MiIGZ1bmN0aW9ucywgYXMKPj4+IHRoZSByZXR1
cm5lZCBwb2ludGVyIG1heSBhbGlhcyB0aGUgc3RvcmFnZSBvZiB0aGUgcHJpb3IgcG9pbnRlci4g
SW5zdGVhZAo+Pj4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9jIGZyb20gX19hbGxvY19zaXplLCB3aGlj
aCB3b3VsZCBiZSBhIGh1Z2UgYW1vdW50IG9mCj4+PiBjaHVybiwganVzdCBjcmVhdGUgX19yZWFs
bG9jX3NpemUgZm9yIHRoZSBmZXcgY2FzZXMgd2hlcmUgaXQgaXMgbmVlZGVkLgo+Pj4KPj4+IEFk
ZGl0aW9uYWxseSByZW1vdmVzIHRoZSBjb25kaXRpb25hbCB0ZXN0IGZvciBfX2FsbG9jX3NpemVf
Xywgd2hpY2ggaXMKPj4+IGFsd2F5cyBkZWZpbmVkIG5vdy4KPj4+Cj4+PiBDYzogQ2hyaXN0b3Bo
IExhbWV0ZXIgPGNsQGxpbnV4LmNvbT4KPj4+IENjOiBQZWtrYSBFbmJlcmcgPHBlbmJlcmdAa2Vy
bmVsLm9yZz4KPj4+IENjOiBEYXZpZCBSaWVudGplcyA8cmllbnRqZXNAZ29vZ2xlLmNvbT4KPj4+
IENjOiBKb29uc29vIEtpbSA8aWFtam9vbnNvby5raW1AbGdlLmNvbT4KPj4+IENjOiBBbmRyZXcg
TW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+Pj4gQ2M6IFZsYXN0aW1pbCBCYWJr
YSA8dmJhYmthQHN1c2UuY3o+Cj4+PiBDYzogUm9tYW4gR3VzaGNoaW4gPHJvbWFuLmd1c2hjaGlu
QGxpbnV4LmRldj4KPj4+IENjOiBIeWVvbmdnb24gWW9vIDw0Mi5oeWV5b29AZ21haWwuY29tPgo+
Pj4gQ2M6IE1hcmNvIEVsdmVyIDxlbHZlckBnb29nbGUuY29tPgo+Pj4gQ2M6IGxpbnV4LW1tQGt2
YWNrLm9yZwo+Pj4gU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5v
cmc+Cj4+Cj4+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNvbW1pdCA2M2Nh
YTA0ZWM2MDU4M2IxICgic2xhYjoKPj4gUmVtb3ZlIF9fbWFsbG9jIGF0dHJpYnV0ZSBmcm9tIHJl
YWxsb2MgZnVuY3Rpb25zIikgaW4gbmV4dC0yMDIyMDkyNy4KPj4KPj4gTm9yZXBseUBlbGxlcm1h
bi5pZC5hdSByZXBvcnRlZCBhbGwgZ2NjOC1iYXNlZCBidWlsZHMgdG8gZmFpbAo+PiAoZS5nLiBb
MV0sIG1vcmUgYXQgWzJdKToKPj4KPj4gICAgICBJbiBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1h
bmQtbGluZT46Cj4+ICAgICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDi
gJhfX2FsbG9jX3Jlc2VydmVkX3BlcmNwdeKAmToKPj4gICAgICAuLy4vaW5jbHVkZS9saW51eC9j
b21waWxlcl90eXBlcy5oOjI3OTozMDogZXJyb3I6IGV4cGVjdGVkCj4+IGRlY2xhcmF0aW9uIHNw
ZWNpZmllcnMgYmVmb3JlIOKAmF9fYWxsb2Nfc2l6ZV9f4oCZCj4+ICAgICAgICNkZWZpbmUgX19h
bGxvY19zaXplKHgsIC4uLikgX19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pIF9fbWFs
bG9jCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn4K
Pj4gICAgICAuL2luY2x1ZGUvbGludXgvcGVyY3B1Lmg6MTIwOjc0OiBub3RlOiBpbiBleHBhbnNp
b24gb2YgbWFjcm8g4oCYX19hbGxvY19zaXpl4oCZCj4+ICAgICAgWy4uLl0KPj4KPj4gSXQncyBi
dWlsZGluZyBmaW5lIHdpdGggZS5nLiBnY2MtOSAod2hpY2ggaXMgbXkgdXN1YWwgbTY4ayBjcm9z
cy1jb21waWxlcikuCj4+IFJldmVydGluZyB0aGlzIGNvbW1pdCBvbiBuZXh0LTIwMjIwOTI3IGZp
eGVzIHRoZSBpc3N1ZS4KPj4KPj4gWzFdIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4uaWQuYXUva2lz
c2tiL2J1aWxkcmVzdWx0LzE0ODAzOTA4Lwo+PiBbMl0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5p
ZC5hdS9raXNza2IvaGVhZC8xYmQ4Yjc1ZmU2YWRlYWE4OWQwMjk2OGJkZDgxMWZmZTcwOGNmODM5
Lwo+IAo+IEVlayEgVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cuIEknbSBjb25mdXNlZCBhYm91
dCB0aGlzIC0tCj4gX19hbGxvY19zaXplX18gd2Fzbid0IG9wdGlvbmFsIGluIGNvbXBpbGVyX2F0
dHJpYnV0ZXMuaCAtLSBidXQgb2J2aW91c2x5Cj4gSSBicm9rZSBzb21ldGhpbmchIEknbGwgZ28g
ZmlndXJlIHRoaXMgb3V0LgoKRXZlbiBpbiBsYXRlc3QgbmV4dCBJIGNhbiBzZWUgYXQgdGhlIGVu
ZCBvZiBpbmNsdWRlL2xpbnV4L2NvbXBpbGVyLWdjYy5oCgovKgogICogUHJpb3IgdG8gOS4xLCAt
V25vLWFsbG9jLXNpemUtbGFyZ2VyLXRoYW4gKGFuZCB0aGVyZWZvcmUgdGhlICJhbGxvY19zaXpl
IgogICogYXR0cmlidXRlKSBkbyBub3Qgd29yaywgYW5kIG11c3QgYmUgZGlzYWJsZWQuCiAgKi8K
I2lmIEdDQ19WRVJTSU9OIDwgOTAxMDAKI3VuZGVmIF9fYWxsb2Nfc2l6ZV9fCiNlbmRpZgoKCgo+
IC1LZWVzCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
