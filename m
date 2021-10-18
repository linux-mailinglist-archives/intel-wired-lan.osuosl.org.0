Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A300431FA5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 16:29:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E2234042A;
	Mon, 18 Oct 2021 14:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VFfhGb5lkNJe; Mon, 18 Oct 2021 14:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42D9F40427;
	Mon, 18 Oct 2021 14:29:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AAE71BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 28A0D40285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux.dev
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6gZVFWv1W6Ni for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 14:29:33 +0000 (UTC)
X-Greylist: delayed 00:06:49 by SQLgrey-1.8.0
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 13AFF40280
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1634566959;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+/ksyZMdAji56dPAfDNw4B0mj9DFTtJ003ib9TAoySs=;
 b=L2lCuaq6/voknrtgSX/EK/kAgQjpd+foWH0RJQQjRPO2TAGHupbgu0ImCL88ypja5haNMi
 LQNOtwqAFnC6Ga94gKPyYgYVwnz87vpQRF9J4K4sqI7/deepFBZ8lcKqwNPkU30mYjUGlq
 lVhHeJoaawKC4m+oHdWC6zShcu5Xjwg=
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20211018131713.3478-1-yanjun.zhu@linux.dev>
 <c1903730-9508-1fef-4232-3a5b62f28d7c@molgen.mpg.de>
 <087710e9-2aeb-c070-cebb-82ae9cb5c20e@linux.dev>
 <10c80bab-db74-b567-505c-95d74763248f@molgen.mpg.de>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Yanjun Zhu <yanjun.zhu@linux.dev>
Message-ID: <2b0dbaf8-1033-b1a3-8976-83a785fbe682@linux.dev>
Date: Mon, 18 Oct 2021 22:22:28 +0800
MIME-Version: 1.0
In-Reply-To: <10c80bab-db74-b567-505c-95d74763248f@molgen.mpg.de>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: yanjun.zhu@linux.dev
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: compact the file ice_nvm.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CuWcqCAyMDIxLzEwLzE4IDIyOjA1LCBQYXVsIE1lbnplbCDlhpnpgZM6Cj4gRGVhciBZYW5qdW4s
Cj4KPgo+IEFtIDE4LjEwLjIxIHVtIDE2OjAwIHNjaHJpZWIgWWFuanVuIFpodToKPgo+PiDlnKgg
MjAyMS8xMC8xOCAyMTo0NCwgUGF1bCBNZW56ZWwg5YaZ6YGTOgo+Cj4+PiBBbSAxOC4xMC4yMSB1
bSAxNToxNyBzY2hyaWViIHlhbmp1bi56aHVAbGludXguZGV2Ogo+Pj4+IEZyb206IFpodSBZYW5q
dW4gPHlhbmp1bi56aHVAbGludXguZGV2Pgo+Pj4+Cj4+Pj4gVGhlIGZ1bmN0aW9uIGljZV9hcV9u
dm1fdXBkYXRlX2VtcHIgaXMgbm90IHVzZWQsIHNvIHJlbW92ZSBpdC4KPj4+Cj4+PiBUaGFuayB5
b3UgZm9yIHRoZSBwYXRjaC4gQ291bGQgeW91IHBsZWFzZSBtYWtlIHRoZSBjb21taXQgbWVzc2Fn
ZSAKPj4+IHN1bW1hcnkgbW9yZSBkZXNjcmlwdGl2ZT8gTWF5YmU6Cj4+Pgo+Pj4+IGljZTogUmVt
b3ZlIHVudXNlZCBgaWNlX2FxX252bV91cGRhdGVfZW1wcigpYAo+Pj4KPj4+IElmIHlvdSBmaW5k
IG91dCwgd2hhdCBjb21taXQgcmVtb3ZlZCB0aGUgdXNhZ2UsIHRoYXQgd291bGQgYmUgYWxzbyAK
Pj4+IGdvb2QgdG8gZG9jdW1lbnQsIGJ1dCBpdOKAmXMgbm90IHRoYXQgaW1wb3J0YW50Lgo+Pgo+
PiBUaGFua3MgZm9yIHlvdXIgc3VnZ2VzdGlvbi4KPj4KPj4gSU1PLCByZW1vdmluZyB0aGUgdW51
c2VkIGZ1bmN0aW9uIGlzIG9uZSBtZXRob2Qgb2YgY29tcGFjdCBmaWxlLgo+Pgo+PiBJIGFncmVl
IHdpdGggeW91IHRoYXQgdGhlIGNvbW1pdCBtZXNzYWdlIHN1bW1hcnkgaXMgbm90IGltcG9ydGFu
dC4KPgo+IFNvcnJ5LCB5b3UgbWlzdW5kZXJzdG9vZCBtZS4gVGhlIGNvbW1pdCBtZXNzYWdlIHN1
bW1hcnkgaXMgbXkgb3BpbmlvbiAKPiB2ZXJ5IGltcG9ydGFudCwgYXMgaXTigJlzIHdoYXQgc2hv
d24gaW4gYGdpdCBsb2cgLS1vbmVsaW5lYCwgYW5kIGluIHRoaXMgCj4gY2FzZSBldmVyeWJvZHkg
aGFzIHRvIHJlYWQgdGhlIGZ1bGwgY29tbWl0IG1lc3NhZ2UgdG8ga25vdyB3aGF0IHRoZSAKPiBj
b21taXQgYWN0dWFsbHkgYXMgKmNvbXBhY3QqIGlzIG5vdCBjb252ZXlpbmcgdGhpcyBtZWFuaW5n
IGFuZCBpcyAKPiBhbWJpZ3VvdXMuCj4KPiBOb3QgYXMgaW1wb3J0YW50IGlzIGZpbmRpbmcgdGhl
IGNvbW1pdCByZW1vdmluZyB0aGUgbGFzdCB1c2VyLCBhbmQgCj4gYWRkaW5nIGEgRml4ZXMgdGFn
IHdpdGggaXQuCkdvdCBpdC4KPgo+PiBJZiBzb21lb25lIGZpbmRzIG1vcmUgaW1wb3J0YW50IHBy
b2JsZW0gaW4gdGhpcyBjb21taXQsIEkgd2lsbCByZXNlbmQgCj4+IHRoZQo+Pgo+PiBwYXRjaCBh
bmQgY2hhbmdlIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5IGJhc2VkIG9uIHlvdXIgc3VnZ2Vz
dGlvbi4KPgo+IEl04oCZZCBiZSBncmVhdCwgaWYgeW91IHNlbnQgYW4gaW1wcm92ZWQgdmVyc2lv
bi4KCkkgd2lsbCByZXNlbmQgdGhlIGxhdGVzdCB2ZXJzaW9uLgoKWmh1IFlhbmp1bgoKPgo+Cj4g
S2luZCByZWdhcmRzLAo+Cj4gUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
