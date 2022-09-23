Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA615E7C39
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 15:48:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0853A40A9B;
	Fri, 23 Sep 2022 13:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0853A40A9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663940931;
	bh=O4ZEBLBDuHKAHGolNAwx6wdXYY7X2qM+4njV+vmIauo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bsdZVAHzHzfiDXt+9h7cYMKEuboaSuoNoPxZnGtdEEmzfnpgJw+XfKB+s+k4aGCI+
	 jfFLjMCCW3G4THQZPoJk2IF1L2PRniT0HnXeH98aWQGwWEe6UMHy/ifEIsngcp8LLG
	 1Dl1jCzdx0DghT8RUgMjiQ8MzK+DW8IyfgmNGU1hMBviccFOpOl1hC8ScV32v88pV7
	 MvL71YJR26UJXo79m7bH0P7IaVfFZgXyLnatRRoyBgweYEx7J9AxPGS7LwpnVU67fD
	 UxBUVRc50p6xP+bUhmNADPWChYqjs2fI8zI6G0SdMzNz9cD/LC9RoGtIddXlrK0oRX
	 WH1rzhkWGcmQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uC9YQjXeMCD; Fri, 23 Sep 2022 13:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D098C40992;
	Fri, 23 Sep 2022 13:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D098C40992
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1061BF47E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 09:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9CBF403B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 09:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9CBF403B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oaHFDxRO7M9t for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 09:08:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F5F140022
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F5F140022
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 09:08:04 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id A0F1B219BA;
 Fri, 23 Sep 2022 09:08:00 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 19F9B13AA5;
 Fri, 23 Sep 2022 09:08:00 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id e5i3BXB3LWM6HAAAMHmgww
 (envelope-from <vbabka@suse.cz>); Fri, 23 Sep 2022 09:08:00 +0000
Message-ID: <6e6a5f86-3080-54ed-82ea-80e57e184fd0@suse.cz>
Date: Fri, 23 Sep 2022 11:07:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Kees Cook <keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <673e425d-1692-ef47-052b-0ff2de0d9c1d@amd.com>
 <202209220845.2F7A050@keescook>
 <cb38655c-2107-bda6-2fa8-f5e1e97eab14@suse.cz>
 <202209221446.5E90AEED@keescook>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <202209221446.5E90AEED@keescook>
X-Mailman-Approved-At: Fri, 23 Sep 2022 13:48:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1663924080; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3NmV8dBleohq19FUTGjShv3qNCUcjTHlt1m0s7sWLVk=;
 b=V6wEuumqUBqjySkow4NVfoPBdDcct+QY2sSnA92ZeyPwH38i0NPhxZ2JBFN/nzoZI0qJDc
 KkeFL/D96aoTs49QcLygaGlMNADNI8AXG8StgjNUceGaiafR2+x2Vnsi6pDhmZ07qrK3n8
 Inta8iq5GzYLsx9ExrSXKnUXYR9y3Io=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1663924080;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3NmV8dBleohq19FUTGjShv3qNCUcjTHlt1m0s7sWLVk=;
 b=U7EHAzZMP7bk2R61PfblSG7IYbc4Ddv8PLRV2h2xeqC20gD9ZFpGn6nKi00zf3zaGPeOWS
 aSCwMvZR9gmTbODQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=V6wEuumq; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=U7EHAzZM
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOS8yMi8yMiAyMzo0OSwgS2VlcyBDb29rIHdyb3RlOgo+IE9uIFRodSwgU2VwIDIyLCAyMDIy
IGF0IDExOjA1OjQ3UE0gKzAyMDAsIFZsYXN0aW1pbCBCYWJrYSB3cm90ZToKPj4gT24gOS8yMi8y
MiAxNzo1NSwgS2VlcyBDb29rIHdyb3RlOgo+PiA+IE9uIFRodSwgU2VwIDIyLCAyMDIyIGF0IDA5
OjEwOjU2QU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+ID4gWy4uLl0KPj4gPiA+
IFNvIHdoZW4gdGhpcyBwYXRjaCBzZXQgaXMgYWJvdXQgdG8gY2xlYW4gdXAgdGhpcyB1c2UgY2Fz
ZSBpdCBzaG91bGQgcHJvYmFibHkKPj4gPiA+IGFsc28gdGFrZSBjYXJlIHRvIHJlbW92ZSBrc2l6
ZSgpIG9yIGF0IGxlYXN0IGxpbWl0IGl0IHNvIHRoYXQgaXQgd29uJ3QgYmUKPj4gPiA+IHVzZWQg
Zm9yIHRoaXMgdXNlIGNhc2UgaW4gdGhlIGZ1dHVyZS4KPj4gPiAKPj4gPiBZZWFoLCBteSBnb2Fs
IHdvdWxkIGJlIHRvIGVsaW1pbmF0ZSBrc2l6ZSgpLCBhbmQgaXQgc2VlbXMgcG9zc2libGUgaWYK
Pj4gPiBvdGhlciBjYXNlcyBhcmUgc2F0aXNmaWVkIHdpdGggdHJhY2tpbmcgdGhlaXIgYWxsb2Nh
dGlvbiBzaXplcyBkaXJlY3RseS4KPj4gCj4+IEkgdGhpbmsgd2UgY291bGQgbGVhdmUga3NpemUo
KSB0byBkZXRlcm1pbmUgdGhlIHNpemUgd2l0aG91dCBhIG5lZWQgZm9yCj4+IGV4dGVybmFsIHRy
YWNraW5nLCBidXQgZnJvbSBub3cgb24gZm9yYmlkIGNhbGxlcnMgZnJvbSB1c2luZyB0aGF0IGhp
bnQgdG8KPj4gb3ZlcmZsb3cgdGhlIGFsbG9jYXRpb24gc2l6ZSB0aGV5IGFjdHVhbGx5IHJlcXVl
c3RlZD8gT25jZSB3ZSByZW1vdmUgdGhlCj4+IGthc2FuL2tmZW5jZSBob29rcyBpbiBrc2l6ZSgp
IHRoYXQgbWFrZSB0aGUgY3VycmVudCBraW5kcyBvZiB1c2FnZSBwb3NzaWJsZSwKPj4gd2Ugc2hv
dWxkIGJlIGFibGUgdG8gY2F0Y2ggYW55IG9mZmVuZGVycyBvZiB0aGUgbmV3IHNlbWFudGljcyB0
aGF0IHdvdWxkIGFwcGVhcj8KPiAKPiBUaGF0J3MgY29ycmVjdC4gSSBzcGVudCB0aGUgbW9ybmlu
ZyB3b3JraW5nIG15IHdheSB0aHJvdWdoIHRoZSByZXN0IG9mCj4gdGhlIGtzaXplKCkgdXNlcnMg
SSBkaWRuJ3QgY2xlYW4gdXAgeWVzdGVyZGF5LCBhbmQgaW4gc2V2ZXJhbCBwbGFjZXMgSQo+IGp1
c3Qgc3dhcHBlZCBpbiBfX2tzaXplKCkuIEJ1dCB0aGF0IHdvdWxkbid0IGV2ZW4gYmUgbmVlZGVk
IGlmIHdlIGp1c3QKPiByZW1vdmVkIHRoZSBrYXNhbiB1bnBvaXNvbmluZyBmcm9tIGtzaXplKCks
IGV0Yy4KPiAKPiBJIGFtIHRlbXB0ZWQgdG8gbGVhdmUgaXQgX19rc2l6ZSgpLCB0aG91Z2gsIGp1
c3QgdG8gcmVpbmZvcmNlIHRoYXQgaXQncwo+IG5vdCBzdXBwb3NlZCB0byBiZSB1c2VkICJub3Jt
YWxseSIuIFdoYXQgZG8geW91IHRoaW5rPwoKU291bmRzIGdvb2QuIE5vdGUgaW4gbGludXgtbmV4
dCB0aGVyZSdzIG5vdyBhIHNlcmllcyBpbiBzbGFiLmdpdCBwbGFubmVkIGZvcgo2LjEgdGhhdCBt
b3ZlcyBfX2tzaXplKCkgZGVjbGFyYXRpb24gdG8gbW0vc2xhYi5oIHRvIG1ha2UgaXQgbW9yZSBw
cml2YXRlLgpCdXQgd2UgZG9uJ3Qgd2FudCByYW5kb20gdXNlcnMgb3V0c2lkZSBtbSBhbmQgcmVs
YXRlZCBrYXNhbi9rZmVuY2UKc3Vic3lzdGVtcyB0byBpbmNsdWRlIG1tL3NsYWIuaCwgc28gd2Un
bGwgaGF2ZSB0byBleHBvc2UgaXQgYWdhaW4gaW5zdGVhZCBvZgprc2l6ZSgpLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
