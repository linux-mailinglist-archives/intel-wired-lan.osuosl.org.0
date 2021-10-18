Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF5C431EE0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 16:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9DE3405FC;
	Mon, 18 Oct 2021 14:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6vRI5jPeD3bl; Mon, 18 Oct 2021 14:06:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C64C040495;
	Mon, 18 Oct 2021 14:06:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31CF51BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20BE682D17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oTVY63kgUj_m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 14:05:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 789E282C98
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 14:05:59 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 64AF661E5FE33;
 Mon, 18 Oct 2021 16:05:57 +0200 (CEST)
To: Yanjun Zhu <yanjun.zhu@linux.dev>
References: <20211018131713.3478-1-yanjun.zhu@linux.dev>
 <c1903730-9508-1fef-4232-3a5b62f28d7c@molgen.mpg.de>
 <087710e9-2aeb-c070-cebb-82ae9cb5c20e@linux.dev>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <10c80bab-db74-b567-505c-95d74763248f@molgen.mpg.de>
Date: Mon, 18 Oct 2021 16:05:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <087710e9-2aeb-c070-cebb-82ae9cb5c20e@linux.dev>
Content-Language: en-US
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

RGVhciBZYW5qdW4sCgoKQW0gMTguMTAuMjEgdW0gMTY6MDAgc2NocmllYiBZYW5qdW4gWmh1OgoK
PiDlnKggMjAyMS8xMC8xOCAyMTo0NCwgUGF1bCBNZW56ZWwg5YaZ6YGTOgoKPj4gQW0gMTguMTAu
MjEgdW0gMTU6MTcgc2NocmllYiB5YW5qdW4uemh1QGxpbnV4LmRldjoKPj4+IEZyb206IFpodSBZ
YW5qdW4gPHlhbmp1bi56aHVAbGludXguZGV2Pgo+Pj4KPj4+IFRoZSBmdW5jdGlvbiBpY2VfYXFf
bnZtX3VwZGF0ZV9lbXByIGlzIG5vdCB1c2VkLCBzbyByZW1vdmUgaXQuCj4+Cj4+IFRoYW5rIHlv
dSBmb3IgdGhlIHBhdGNoLiBDb3VsZCB5b3UgcGxlYXNlIG1ha2UgdGhlIGNvbW1pdCBtZXNzYWdl
IAo+PiBzdW1tYXJ5IG1vcmUgZGVzY3JpcHRpdmU/IE1heWJlOgo+Pgo+Pj4gaWNlOiBSZW1vdmUg
dW51c2VkIGBpY2VfYXFfbnZtX3VwZGF0ZV9lbXByKClgCj4+Cj4+IElmIHlvdSBmaW5kIG91dCwg
d2hhdCBjb21taXQgcmVtb3ZlZCB0aGUgdXNhZ2UsIHRoYXQgd291bGQgYmUgYWxzbyAKPj4gZ29v
ZCB0byBkb2N1bWVudCwgYnV0IGl04oCZcyBub3QgdGhhdCBpbXBvcnRhbnQuCj4gCj4gVGhhbmtz
IGZvciB5b3VyIHN1Z2dlc3Rpb24uCj4gCj4gSU1PLCByZW1vdmluZyB0aGUgdW51c2VkIGZ1bmN0
aW9uIGlzIG9uZSBtZXRob2Qgb2YgY29tcGFjdCBmaWxlLgo+IAo+IEkgYWdyZWUgd2l0aCB5b3Ug
dGhhdCB0aGUgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyeSBpcyBub3QgaW1wb3J0YW50LgoKU29ycnks
IHlvdSBtaXN1bmRlcnN0b29kIG1lLiBUaGUgY29tbWl0IG1lc3NhZ2Ugc3VtbWFyeSBpcyBteSBv
cGluaW9uIAp2ZXJ5IGltcG9ydGFudCwgYXMgaXTigJlzIHdoYXQgc2hvd24gaW4gYGdpdCBsb2cg
LS1vbmVsaW5lYCwgYW5kIGluIHRoaXMgCmNhc2UgZXZlcnlib2R5IGhhcyB0byByZWFkIHRoZSBm
dWxsIGNvbW1pdCBtZXNzYWdlIHRvIGtub3cgd2hhdCB0aGUgCmNvbW1pdCBhY3R1YWxseSBhcyAq
Y29tcGFjdCogaXMgbm90IGNvbnZleWluZyB0aGlzIG1lYW5pbmcgYW5kIGlzIGFtYmlndW91cy4K
Ck5vdCBhcyBpbXBvcnRhbnQgaXMgZmluZGluZyB0aGUgY29tbWl0IHJlbW92aW5nIHRoZSBsYXN0
IHVzZXIsIGFuZCAKYWRkaW5nIGEgRml4ZXMgdGFnIHdpdGggaXQuCgo+IElmIHNvbWVvbmUgZmlu
ZHMgbW9yZSBpbXBvcnRhbnQgcHJvYmxlbSBpbiB0aGlzIGNvbW1pdCwgSSB3aWxsIHJlc2VuZCB0
aGUKPiAKPiBwYXRjaCBhbmQgY2hhbmdlIHRoZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5IGJhc2Vk
IG9uIHlvdXIgc3VnZ2VzdGlvbi4KCkl04oCZZCBiZSBncmVhdCwgaWYgeW91IHNlbnQgYW4gaW1w
cm92ZWQgdmVyc2lvbi4KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
