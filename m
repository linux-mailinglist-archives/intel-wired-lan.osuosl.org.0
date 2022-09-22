Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 220955E7035
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 01:26:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A49634161E;
	Thu, 22 Sep 2022 23:26:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A49634161E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663889189;
	bh=ozocnLk6q4qeL8D5R9m+nPR87SzMDsbUuOTwuhgLjPs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JEgvRLEfQr0IkMjUjyVdH7qzggTyKFGN6Lb5m6dJ5grauCvcaFPXWoK8aiknsAcOi
	 68bBrXE9u6gGsyiLHhafPe/TT/rEeDoEziI+aSDWdWD1wqksVlW8rDF3FR5RbSUtJk
	 9/9csjubgz0aQBEZ+uhPGNHmfUAeaWOY6DxjhJpLlCRg2mjFpDn/LFn4Pvr2yYGIl9
	 +8Cu9GXp9Oz1Bhp+oeF79kA/7xzQ2rwz/WewuMIYNqueJL+rliQbLiHp5dhrShSlMj
	 b8mDYqsS+XHJDH2ShIuwEGu8yguQP17btQ45JggKJXJp1K6nbtJwYjG+yyr8BfXQgM
	 F6PBO3VL3wK1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xu23AZk0T4yU; Thu, 22 Sep 2022 23:26:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5D1541603;
	Thu, 22 Sep 2022 23:26:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5D1541603
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 492761BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 21:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 21FA360AF6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 21:05:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21FA360AF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b3isToMlngCC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 21:05:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CD2660AE4
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CD2660AE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 21:05:51 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 4788F1F8BD;
 Thu, 22 Sep 2022 21:05:48 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id B86DF1346B;
 Thu, 22 Sep 2022 21:05:47 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id QI4BLCvOLGP2JwAAMHmgww
 (envelope-from <vbabka@suse.cz>); Thu, 22 Sep 2022 21:05:47 +0000
Message-ID: <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
Date: Thu, 22 Sep 2022 23:05:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
 <202209220845.2F7A050@keescook>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <202209220845.2F7A050@keescook>
X-Mailman-Approved-At: Thu, 22 Sep 2022 23:26:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1663880748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XKo+i59z16xYCKZljHHhrwZOK4kULyS2cn+2CLRfUM0=;
 b=yYZqXMGxzMVH0hLKeYU8DtcEW5z+72E8D8wluVkMB38JNQ6mVtvWYW44sf9Qr+ZQm+We5X
 ZxoqRMYTP+O1T/rNawICmYwKgqmViLi4WF8AuUeX1BOp9TwGPEwvLg1O9HhwZMa65TkR9W
 yGHcw9EwWtJmQERB8NRzG2kYdmwST+U=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1663880748;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XKo+i59z16xYCKZljHHhrwZOK4kULyS2cn+2CLRfUM0=;
 b=kaD9JOgsDV+IpQlfyoPslHKu+574Yw//haDJvp79fZBtXqIgPNRCscY2PniCUaAEZMnwWD
 sPWSH1zmuGYRGABQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=yYZqXMGx; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=kaD9JOgs
Subject: Re: [Intel-wired-lan] [PATCH 00/12] slab: Introduce
 kmalloc_size_roundup()
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
Cc: Feng Tang <feng.tang@intel.com>, linux-wireless@vger.kernel.org,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8yMi8yMiAxNzo1NSwgS2VlcyBDb29rIHdyb3RlOgo+IE9uIFRodSwgU2VwIDIyLCAyMDIy
IGF0IDA5OjEwOjU2QU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFtIDIyLjA5
LjIyIHVtIDA1OjEwIHNjaHJpZWIgS2VlcyBDb29rOgo+PiA+IEhpLAo+PiA+IAo+PiA+IFRoaXMg
c2VyaWVzIGZpeGVzIHVwIHRoZSBjYXNlcyB3aGVyZSBjYWxsZXJzIG9mIGtzaXplKCkgdXNlIGl0
IHRvCj4+ID4gb3Bwb3J0dW5pc3RpY2FsbHkgZ3JvdyB0aGVpciBidWZmZXIgc2l6ZXMsIHdoaWNo
IGNhbiBydW4gYWZvdWwgb2YgdGhlCj4+ID4gX19hbGxvY19zaXplIGhpbnRpbmcgdGhhdCBDT05G
SUdfVUJTQU5fQk9VTkRTIGFuZCBDT05GSUdfRk9SVElGWV9TT1VSQ0UKPj4gPiB1c2UgdG8gcGVy
Zm9ybSBkeW5hbWljIGJ1ZmZlciBib3VuZHMgY2hlY2tpbmcuCj4+IAo+PiBHb29kIGNsZWFudXAs
IGJ1dCBvbmUgcXVlc3Rpb246IFdoYXQgb3RoZXIgdXNlIGNhc2VzIHdlIGhhdmUgZm9yIGtzaXpl
KCkKPj4gZXhjZXB0IHRoZSBvcHBvcnR1bmlzdGljYWxseSBncm93dGggb2YgYnVmZmVycz8KPiAK
PiBUaGUgcmVtYWluaW5nIGNhc2VzIGFsbCBzZWVtIHRvIGJlIHVzaW5nIGl0IGFzIGEgImRvIHdl
IG5lZWQgdG8gcmVzaXplCj4geWV0PyIgY2hlY2ssIHdoZXJlIHRoZXkgZG9uJ3QgYWN0dWFsbHkg
dHJhY2sgdGhlIGFsbG9jYXRpb24gc2l6ZQo+IHRoZW1zZWx2ZXMgYW5kIHdhbnQgdG8ganVzdCBk
ZXBlbmQgb24gdGhlIHNsYWIgY2FjaGUgdG8gYW5zd2VyIGl0LiBUaGlzCj4gaXMgbW9zdCBjbGVh
cmx5IHNlZW4gaW4gdGhlIGlncCBjb2RlOgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jP2g9djYuMC1yYzYjbjEyMDQKPiAKPiBNeSAic29s
dXRpb24iIHRoZXJlIGtpbmQgb2Ygc2lkZS1zdGVwcyBpdCwgYW5kIGxlYXZlcyBrc2l6ZSgpIGFz
LWlzOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWhhcmRlbmluZy8yMDIyMDkyMjAz
MTAxMy4yMTUwNjgyLTgta2Vlc2Nvb2tAY2hyb21pdW0ub3JnLwo+IAo+IFRoZSBtb3JlIGNvcnJl
Y3Qgc29sdXRpb24gd291bGQgYmUgdG8gYWRkIHBlci12X2lkeCBzaXplIHRyYWNraW5nLAo+IHNp
bWlsYXIgdG8gdGhlIG90aGVyIGNoYW5nZXMgSSBzZW50Ogo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LWhhcmRlbmluZy8yMDIyMDkyMjAzMTAxMy4yMTUwNjgyLTExLWtlZXNjb29rQGNo
cm9taXVtLm9yZy8KPiAKPiBJIHdvbmRlciBpZiBwZXJoYXBzIEkgc2hvdWxkIGp1c3QgbWlncmF0
ZSBzb21lIG9mIHRoaXMgY29kZSB0byB1c2luZwo+IHNvbWV0aGluZyBsaWtlIHN0cnVjdCBtZW1i
dWYuCj4gCj4+IE9mZiBoYW5kIEkgY2FuJ3Qgc2VlIGFueS4KPj4gCj4+IFNvIHdoZW4gdGhpcyBw
YXRjaCBzZXQgaXMgYWJvdXQgdG8gY2xlYW4gdXAgdGhpcyB1c2UgY2FzZSBpdCBzaG91bGQgcHJv
YmFibHkKPj4gYWxzbyB0YWtlIGNhcmUgdG8gcmVtb3ZlIGtzaXplKCkgb3IgYXQgbGVhc3QgbGlt
aXQgaXQgc28gdGhhdCBpdCB3b24ndCBiZQo+PiB1c2VkIGZvciB0aGlzIHVzZSBjYXNlIGluIHRo
ZSBmdXR1cmUuCj4gCj4gWWVhaCwgbXkgZ29hbCB3b3VsZCBiZSB0byBlbGltaW5hdGUga3NpemUo
KSwgYW5kIGl0IHNlZW1zIHBvc3NpYmxlIGlmCj4gb3RoZXIgY2FzZXMgYXJlIHNhdGlzZmllZCB3
aXRoIHRyYWNraW5nIHRoZWlyIGFsbG9jYXRpb24gc2l6ZXMgZGlyZWN0bHkuCgpJIHRoaW5rIHdl
IGNvdWxkIGxlYXZlIGtzaXplKCkgdG8gZGV0ZXJtaW5lIHRoZSBzaXplIHdpdGhvdXQgYSBuZWVk
IGZvcgpleHRlcm5hbCB0cmFja2luZywgYnV0IGZyb20gbm93IG9uIGZvcmJpZCBjYWxsZXJzIGZy
b20gdXNpbmcgdGhhdCBoaW50IHRvCm92ZXJmbG93IHRoZSBhbGxvY2F0aW9uIHNpemUgdGhleSBh
Y3R1YWxseSByZXF1ZXN0ZWQ/IE9uY2Ugd2UgcmVtb3ZlIHRoZQprYXNhbi9rZmVuY2UgaG9va3Mg
aW4ga3NpemUoKSB0aGF0IG1ha2UgdGhlIGN1cnJlbnQga2luZHMgb2YgdXNhZ2UgcG9zc2libGUs
CndlIHNob3VsZCBiZSBhYmxlIHRvIGNhdGNoIGFueSBvZmZlbmRlcnMgb2YgdGhlIG5ldyBzZW1h
bnRpY3MgdGhhdCB3b3VsZCBhcHBlYXI/Cgo+IC1LZWVzCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
