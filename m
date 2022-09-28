Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2725EE1D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Sep 2022 18:29:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8B2C832BF;
	Wed, 28 Sep 2022 16:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8B2C832BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664382569;
	bh=/xAv6expuOgPlVJOut+9uG0pg+Lhq/y6APjKgi/lMfo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UmmMcRIxD34OOK/5/59fZGsZfzuI1mTLXlrp/n/HSgk9BIWSWACZBVnXQIO09AoNc
	 B4pUsY2jTfs8QLXlGf1+pAI2BLs6plfPCcI3MSyf9acOQtrmrOCT7YE4wOzmhbwpDw
	 hcRb4veItOeBZfRQwT2KbeMDAQq+ZJLvrymX8XroEo6aDdqfBvna1CA/tbuFQZ6xcI
	 +qX4sTys0cLcDS0Dn3eT9OeH8Ys8reLX96H73k0LmpMGcIG6vbGfVZO5fFfE0OsrOv
	 VNGrKZJ0GeJFS5Y0KwDKalVwip/lOqfMqYzp2gHYpjxW+ACHArN56iUqVLFPsRXBaA
	 9ocmA/Ca2L6mQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cREx-b1qdI-w; Wed, 28 Sep 2022 16:29:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25E9F831A0;
	Wed, 28 Sep 2022 16:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25E9F831A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8FE671BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 16:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76B7B60B79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 16:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76B7B60B79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RUDC0B2pF3H3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Sep 2022 16:29:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0754C60AEE
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0754C60AEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Sep 2022 16:29:20 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id C8FAF21BD0;
 Wed, 28 Sep 2022 16:29:17 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1213713677;
 Wed, 28 Sep 2022 16:29:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id dWVWAF12NGMNKgAAMHmgww
 (envelope-from <vbabka@suse.cz>); Wed, 28 Sep 2022 16:29:17 +0000
Message-ID: <f00866a5-88b2-c705-0a33-8f0b98a0642a@suse.cz>
Date: Wed, 28 Sep 2022 18:27:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Kees Cook <keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1664382557; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EnWbGV237BuzDgTB50BqcLBq1d2zN9a/YOcWsHi9fr4=;
 b=t0+ihg6khVdLY0KsOqEColQEDlRylpDqT1w3q1DzA50zxqc/Vqwf/Zi+169ascbHLgt2bW
 FQkeclL4pKkrvckUy0cyXjOjZQxxzwvYNVbzSbw8k0t1HEJSrsQMny3TCh9HQ5Eog+GWZM
 66qq9zmMiQtEpL5PRSk7pG7/X1wkGwI=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1664382557;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EnWbGV237BuzDgTB50BqcLBq1d2zN9a/YOcWsHi9fr4=;
 b=EorZdnweBb5NkWdw4eR45K3RqBYZ40BM744J5xENipJYNYfffn6v9+l3CJz/AghB3JfX3n
 6rVrw5Fity5E62Dg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=t0+ihg6k; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=EorZdnwe
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

T24gOS8yOC8yMiAwOToyNiwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IEhpIEtlZXMsCj4g
Cj4gT24gRnJpLCBTZXAgMjMsIDIwMjIgYXQgMTA6MzUgUE0gS2VlcyBDb29rIDxrZWVzY29va0Bj
aHJvbWl1bS5vcmc+IHdyb3RlOgo+PiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNob3VsZCBub3Qg
YmUgYXBwbGllZCB0byAicmVhbGxvYyIgZnVuY3Rpb25zLCBhcwo+PiB0aGUgcmV0dXJuZWQgcG9p
bnRlciBtYXkgYWxpYXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHByaW9yIHBvaW50ZXIuIEluc3RlYWQK
Pj4gb2Ygc3BsaXR0aW5nIF9fbWFsbG9jIGZyb20gX19hbGxvY19zaXplLCB3aGljaCB3b3VsZCBi
ZSBhIGh1Z2UgYW1vdW50IG9mCj4+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3JlYWxsb2Nfc2l6ZSBm
b3IgdGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuCj4+Cj4+IEFkZGl0aW9uYWxseSBy
ZW1vdmVzIHRoZSBjb25kaXRpb25hbCB0ZXN0IGZvciBfX2FsbG9jX3NpemVfXywgd2hpY2ggaXMK
Pj4gYWx3YXlzIGRlZmluZWQgbm93Lgo+Pgo+PiBDYzogQ2hyaXN0b3BoIExhbWV0ZXIgPGNsQGxp
bnV4LmNvbT4KPj4gQ2M6IFBla2thIEVuYmVyZyA8cGVuYmVyZ0BrZXJuZWwub3JnPgo+PiBDYzog
RGF2aWQgUmllbnRqZXMgPHJpZW50amVzQGdvb2dsZS5jb20+Cj4+IENjOiBKb29uc29vIEtpbSA8
aWFtam9vbnNvby5raW1AbGdlLmNvbT4KPj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgt
Zm91bmRhdGlvbi5vcmc+Cj4+IENjOiBWbGFzdGltaWwgQmFia2EgPHZiYWJrYUBzdXNlLmN6Pgo+
PiBDYzogUm9tYW4gR3VzaGNoaW4gPHJvbWFuLmd1c2hjaGluQGxpbnV4LmRldj4KPj4gQ2M6IEh5
ZW9uZ2dvbiBZb28gPDQyLmh5ZXlvb0BnbWFpbC5jb20+Cj4+IENjOiBNYXJjbyBFbHZlciA8ZWx2
ZXJAZ29vZ2xlLmNvbT4KPj4gQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwo+PiBTaWduZWQtb2ZmLWJ5
OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KPiAKPiBUaGFua3MgZm9yIHlvdXIg
cGF0Y2gsIHdoaWNoIGlzIG5vdyBjb21taXQgNjNjYWEwNGVjNjA1ODNiMSAoInNsYWI6Cj4gUmVt
b3ZlIF9fbWFsbG9jIGF0dHJpYnV0ZSBmcm9tIHJlYWxsb2MgZnVuY3Rpb25zIikgaW4gbmV4dC0y
MDIyMDkyNy4KPiAKPiBOb3JlcGx5QGVsbGVybWFuLmlkLmF1IHJlcG9ydGVkIGFsbCBnY2M4LWJh
c2VkIGJ1aWxkcyB0byBmYWlsCj4gKGUuZy4gWzFdLCBtb3JlIGF0IFsyXSk6Cj4gCj4gICAgICBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gPGNvbW1hbmQtbGluZT46Cj4gICAgICAuL2luY2x1ZGUvbGlu
dXgvcGVyY3B1Lmg6IEluIGZ1bmN0aW9uIOKAmF9fYWxsb2NfcmVzZXJ2ZWRfcGVyY3B14oCZOgo+
ICAgICAgLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDoyNzk6MzA6IGVycm9yOiBl
eHBlY3RlZAo+IGRlY2xhcmF0aW9uIHNwZWNpZmllcnMgYmVmb3JlIOKAmF9fYWxsb2Nfc2l6ZV9f
4oCZCj4gICAgICAgI2RlZmluZSBfX2FsbG9jX3NpemUoeCwgLi4uKSBfX2FsbG9jX3NpemVfXyh4
LCAjIyBfX1ZBX0FSR1NfXykgX19tYWxsb2MKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF5+fn5+fn5+fn5+fn5+Cj4gICAgICAuL2luY2x1ZGUvbGludXgvcGVyY3B1Lmg6MTIw
Ojc0OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYX19hbGxvY19zaXpl4oCZCj4gICAg
ICBbLi4uXQo+IAo+IEl0J3MgYnVpbGRpbmcgZmluZSB3aXRoIGUuZy4gZ2NjLTkgKHdoaWNoIGlz
IG15IHVzdWFsIG02OGsgY3Jvc3MtY29tcGlsZXIpLgo+IFJldmVydGluZyB0aGlzIGNvbW1pdCBv
biBuZXh0LTIwMjIwOTI3IGZpeGVzIHRoZSBpc3N1ZS4KClNvIElJVUMgaXQgd2FzIHdyb25nIHRv
IHJlbW92ZSB0aGUgI2lmZGVmcz8KCj4gWzFdIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4uaWQuYXUv
a2lzc2tiL2J1aWxkcmVzdWx0LzE0ODAzOTA4Lwo+IFsyXSBodHRwOi8va2lzc2tiLmVsbGVybWFu
LmlkLmF1L2tpc3NrYi9oZWFkLzFiZDhiNzVmZTZhZGVhYTg5ZDAyOTY4YmRkODExZmZlNzA4Y2Y4
MzkvCj4gCj4gCj4gCj4+IC0tLQo+PiAgIGluY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaCB8
IDEzICsrKysrLS0tLS0tLS0KPj4gICBpbmNsdWRlL2xpbnV4L3NsYWIuaCAgICAgICAgICAgfCAx
MiArKysrKystLS0tLS0KPj4gICBtbS9zbGFiX2NvbW1vbi5jICAgICAgICAgICAgICAgfCAgNCAr
Ky0tCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaCBiL2lu
Y2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaAo+PiBpbmRleCA0ZjJhODE5ZmQ2MGEuLmYxNDFh
NmY2YjlmNiAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oCj4+
ICsrKyBiL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaAo+PiBAQCAtMjcxLDE1ICsyNzEs
MTIgQEAgc3RydWN0IGZ0cmFjZV9saWtlbHlfZGF0YSB7Cj4+Cj4+ICAgLyoKPj4gICAgKiBBbnkg
cGxhY2UgdGhhdCBjb3VsZCBiZSBtYXJrZWQgd2l0aCB0aGUgImFsbG9jX3NpemUiIGF0dHJpYnV0
ZSBpcyBhbHNvCj4+IC0gKiBhIHBsYWNlIHRvIGJlIG1hcmtlZCB3aXRoIHRoZSAibWFsbG9jIiBh
dHRyaWJ1dGUuIERvIHRoaXMgYXMgcGFydCBvZiB0aGUKPj4gLSAqIF9fYWxsb2Nfc2l6ZSBtYWNy
byB0byBhdm9pZCByZWR1bmRhbnQgYXR0cmlidXRlcyBhbmQgdG8gYXZvaWQgbWlzc2luZyBhCj4+
IC0gKiBfX21hbGxvYyBtYXJraW5nLgo+PiArICogYSBwbGFjZSB0byBiZSBtYXJrZWQgd2l0aCB0
aGUgIm1hbGxvYyIgYXR0cmlidXRlLCBleGNlcHQgdGhvc2UgdGhhdCBtYXkKPj4gKyAqIGJlIHBl
cmZvcm1pbmcgYSBfcmVhbGxvY2F0aW9uXywgYXMgdGhhdCBtYXkgYWxpYXMgdGhlIGV4aXN0aW5n
IHBvaW50ZXIuCj4+ICsgKiBGb3IgdGhlc2UsIHVzZSBfX3JlYWxsb2Nfc2l6ZSgpLgo+PiAgICAq
Lwo+PiAtI2lmZGVmIF9fYWxsb2Nfc2l6ZV9fCj4+IC0jIGRlZmluZSBfX2FsbG9jX3NpemUoeCwg
Li4uKSAgX19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pIF9fbWFsbG9jCj4+IC0jZWxz
ZQo+PiAtIyBkZWZpbmUgX19hbGxvY19zaXplKHgsIC4uLikgIF9fbWFsbG9jCj4+IC0jZW5kaWYK
Pj4gKyNkZWZpbmUgX19hbGxvY19zaXplKHgsIC4uLikgICBfX2FsbG9jX3NpemVfXyh4LCAjIyBf
X1ZBX0FSR1NfXykgX19tYWxsb2MKPj4gKyNkZWZpbmUgX19yZWFsbG9jX3NpemUoeCwgLi4uKSBf
X2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykKPj4KPj4gICAjaWZuZGVmIGFzbV92b2xh
dGlsZV9nb3RvCj4+ICAgI2RlZmluZSBhc21fdm9sYXRpbGVfZ290byh4Li4uKSBhc20gZ290byh4
KQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9zbGFiLmggYi9pbmNsdWRlL2xpbnV4L3Ns
YWIuaAo+PiBpbmRleCAwZmVmZGY1MjhlMGQuLjQxYmQwMzZlNzU1MSAxMDA2NDQKPj4gLS0tIGEv
aW5jbHVkZS9saW51eC9zbGFiLmgKPj4gKysrIGIvaW5jbHVkZS9saW51eC9zbGFiLmgKPj4gQEAg
LTE4NCw3ICsxODQsNyBAQCBpbnQga21lbV9jYWNoZV9zaHJpbmsoc3RydWN0IGttZW1fY2FjaGUg
KnMpOwo+PiAgIC8qCj4+ICAgICogQ29tbW9uIGttYWxsb2MgZnVuY3Rpb25zIHByb3ZpZGVkIGJ5
IGFsbCBhbGxvY2F0b3JzCj4+ICAgICovCj4+IC12b2lkICogX19tdXN0X2NoZWNrIGtyZWFsbG9j
KGNvbnN0IHZvaWQgKm9ianAsIHNpemVfdCBuZXdfc2l6ZSwgZ2ZwX3QgZmxhZ3MpIF9fYWxsb2Nf
c2l6ZSgyKTsKPj4gK3ZvaWQgKiBfX211c3RfY2hlY2sga3JlYWxsb2MoY29uc3Qgdm9pZCAqb2Jq
cCwgc2l6ZV90IG5ld19zaXplLCBnZnBfdCBmbGFncykgX19yZWFsbG9jX3NpemUoMik7Cj4+ICAg
dm9pZCBrZnJlZShjb25zdCB2b2lkICpvYmpwKTsKPj4gICB2b2lkIGtmcmVlX3NlbnNpdGl2ZShj
b25zdCB2b2lkICpvYmpwKTsKPj4gICBzaXplX3QgX19rc2l6ZShjb25zdCB2b2lkICpvYmpwKTsK
Pj4gQEAgLTY0NywxMCArNjQ3LDEwIEBAIHN0YXRpYyBpbmxpbmUgX19hbGxvY19zaXplKDEsIDIp
IHZvaWQgKmttYWxsb2NfYXJyYXkoc2l6ZV90IG4sIHNpemVfdCBzaXplLCBnZnBfCj4+ICAgICog
QG5ld19zaXplOiBuZXcgc2l6ZSBvZiBhIHNpbmdsZSBtZW1iZXIgb2YgdGhlIGFycmF5Cj4+ICAg
ICogQGZsYWdzOiB0aGUgdHlwZSBvZiBtZW1vcnkgdG8gYWxsb2NhdGUgKHNlZSBrbWFsbG9jKQo+
PiAgICAqLwo+PiAtc3RhdGljIGlubGluZSBfX2FsbG9jX3NpemUoMiwgMykgdm9pZCAqIF9fbXVz
dF9jaGVjayBrcmVhbGxvY19hcnJheSh2b2lkICpwLAo+PiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBuZXdf
biwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzaXplX3QgbmV3X3NpemUsCj4+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2ZwX3QgZmxh
Z3MpCj4+ICtzdGF0aWMgaW5saW5lIF9fcmVhbGxvY19zaXplKDIsIDMpIHZvaWQgKiBfX211c3Rf
Y2hlY2sga3JlYWxsb2NfYXJyYXkodm9pZCAqcCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBuZXdf
biwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHNpemVfdCBuZXdfc2l6ZSwKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdmcF90
IGZsYWdzKQo+PiAgIHsKPj4gICAgICAgICAgc2l6ZV90IGJ5dGVzOwo+Pgo+PiBAQCAtNzc0LDcg
Kzc3NCw3IEBAIHN0YXRpYyBpbmxpbmUgX19hbGxvY19zaXplKDEsIDIpIHZvaWQgKmt2Y2FsbG9j
KHNpemVfdCBuLCBzaXplX3Qgc2l6ZSwgZ2ZwX3QgZmxhCj4+ICAgfQo+Pgo+PiAgIGV4dGVybiB2
b2lkICprdnJlYWxsb2MoY29uc3Qgdm9pZCAqcCwgc2l6ZV90IG9sZHNpemUsIHNpemVfdCBuZXdz
aXplLCBnZnBfdCBmbGFncykKPj4gLSAgICAgICAgICAgICAgICAgICAgIF9fYWxsb2Nfc2l6ZSgz
KTsKPj4gKyAgICAgICAgICAgICAgICAgICAgIF9fcmVhbGxvY19zaXplKDMpOwo+PiAgIGV4dGVy
biB2b2lkIGt2ZnJlZShjb25zdCB2b2lkICphZGRyKTsKPj4gICBleHRlcm4gdm9pZCBrdmZyZWVf
c2Vuc2l0aXZlKGNvbnN0IHZvaWQgKmFkZHIsIHNpemVfdCBsZW4pOwo+Pgo+PiBkaWZmIC0tZ2l0
IGEvbW0vc2xhYl9jb21tb24uYyBiL21tL3NsYWJfY29tbW9uLmMKPj4gaW5kZXggMTc5OTY2NDlj
ZmUzLi40NTc2NzFhY2U3ZWIgMTAwNjQ0Cj4+IC0tLSBhL21tL3NsYWJfY29tbW9uLmMKPj4gKysr
IGIvbW0vc2xhYl9jb21tb24uYwo+PiBAQCAtMTEzNCw4ICsxMTM0LDggQEAgbW9kdWxlX2luaXQo
c2xhYl9wcm9jX2luaXQpOwo+Pgo+PiAgICNlbmRpZiAvKiBDT05GSUdfU0xBQiB8fCBDT05GSUdf
U0xVQl9ERUJVRyAqLwo+Pgo+PiAtc3RhdGljIF9fYWx3YXlzX2lubGluZSB2b2lkICpfX2RvX2ty
ZWFsbG9jKGNvbnN0IHZvaWQgKnAsIHNpemVfdCBuZXdfc2l6ZSwKPj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdmcF90IGZsYWdzKQo+PiArc3RhdGljIF9fYWx3
YXlzX2lubGluZSBfX3JlYWxsb2Nfc2l6ZSgyKSB2b2lkICoKPj4gK19fZG9fa3JlYWxsb2MoY29u
c3Qgdm9pZCAqcCwgc2l6ZV90IG5ld19zaXplLCBnZnBfdCBmbGFncykKPj4gICB7Cj4+ICAgICAg
ICAgIHZvaWQgKnJldDsKPj4gICAgICAgICAgc2l6ZV90IGtzOwo+PiAtLQo+PiAyLjM0LjEKPj4K
PiAKPiAKPiAtLQo+IEdye29ldGplLGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICBHZWVydAo+IAo+IC0tCj4gR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBv
ZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwo+IAo+IEluIHBlcnNv
bmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEg
aGFja2VyLiBCdXQKPiB3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkg
InByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
