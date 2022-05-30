Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D3E5375C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 May 2022 09:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 369BE40868;
	Mon, 30 May 2022 07:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7k0TtheJjq5B; Mon, 30 May 2022 07:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB5BB40761;
	Mon, 30 May 2022 07:47:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5441BF331
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 07:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A09460EDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 07:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUxa4o_0sjhA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 May 2022 07:47:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84ECC6080A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 May 2022 07:47:23 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5aeb6c.dynamic.kabel-deutschland.de
 [95.90.235.108])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1423861EA1923;
 Mon, 30 May 2022 09:47:18 +0200 (CEST)
Message-ID: <ade6c030-b1c5-e359-7321-fa21310a10f3@molgen.mpg.de>
Date: Mon, 30 May 2022 09:47:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Lixue Liang <lianglixuehao@126.com>
References: <d50b23b1-38b5-2522-cbf4-c360c0ed05cd@molgen.mpg.de>
 <20220530031941.44006-1-lianglixuehao@126.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220530031941.44006-1-lianglixuehao@126.com>
Subject: Re: [Intel-wired-lan] [PATCH v3 3/3] igb_main: Assign random MAC
 address instead of fail in case of invalid one
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
Cc: lianglixue@greatwall.com.cn, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaXh1ZSwKCkFtIDMwLjA1LjIyIHVtIDA1OjE5IHNjaHJpZWIgTGl4dWUgTGlhbmc6Cj4g
RnJvbTogTGl4dWUgTGlhbmcgPGxpYW5nbGl4dWVAZ3JlYXR3YWxsLmNvbS5jbj4KPiAKPiBJbiBz
b21lIGNhc2VzLCB3aGVuIHRoZSB1c2VyIHVzZXMgaWdiX3NldF9lZXByb20gdG8gbW9kaWZ5IHRo
ZSBNQUMKPiBhZGRyZXNzIHRvIGJlIGludmFsaWQsIHRoZSBpZ2IgZHJpdmVyIHdpbGwgZmFpbCB0
byBsb2FkLiBJZiB0aGVyZSBpcyBubwo+IG5ldHdvcmsgY2FyZCBkZXZpY2UsIHRoZSB1c2VyIG11
c3QgbW9kaWZ5IGl0IHRvIGEgdmFsaWQgTUFDIGFkZHJlc3MgYnkKPiBvdGhlciBtZWFucy4KPiAK
PiBTaW5jZSB0aGUgTUFDIGFkZHJlc3MgY2FuIGJlIG1vZGlmaWVkLCB0aGVuIGFkZCBhIHJhbmRv
bSB2YWxpZCBNQUMgYWRkcmVzcwo+IHRvIHJlcGxhY2UgdGhlIGludmFsaWQgTUFDIGFkZHJlc3Mg
aW4gdGhlIGRyaXZlciBjYW4gYmUgd29ya2FibGUsIGl0IGNhbgo+IGNvbnRpbnVlIHRvIGZpbmlz
aCB0aGUgbG9hZGluZywgYW5kIG91dHB1dCB0aGUgcmVsZXZhbnQgbG9nIHJlbWluZGVyLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IExpeHVlIExpYW5nIDxsaWFuZ2xpeHVlQGdyZWF0d2FsbC5jb20uY24+
Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyB8IDIg
Ky0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4gaW5kZXggNzQ2MjMz
YmVmYWRlLi40MGY0MzUzNGEzYWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdiL2lnYl9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX21haW4uYwo+IEBAIC0zMzYyLDcgKzMzNjIsNyBAQCBzdGF0aWMgaW50IGlnYl9wcm9i
ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkK
PiAgIAkJZXRoX2h3X2FkZHJfcmFuZG9tKG5ldGRldik7Cj4gICAJCWV0aGVyX2FkZHJfY29weSho
dy0+bWFjLmFkZHIsIG5ldGRldi0+ZGV2X2FkZHIpOwo+ICAgCQlkZXZfZXJyKCZwZGV2LT5kZXYs
Cj4gLQkJCSJJbnZhbGlkIE1BQyBBZGRyZXNzLCBhbHJlYWR5IGFzc2lnbmVkIHJhbmRvbSBNQUMg
QWRkcmVzc1xuIik7Cj4gKwkJCSJJbnZhbGlkIE1BQyBhZGRyZXNzLCBhbHJlYWR5IGFzc2lnbmVk
IHJhbmRvbSBNQUMgYWRkcmVzc1xuIik7Cj4gICAJfQo+ICAgCj4gICAJaWdiX3NldF9kZWZhdWx0
X21hY19maWx0ZXIoYWRhcHRlcik7CgpUaGUgZGlmZiBkb2VzIG5vdCBkbyB3aGF0IGlzIGRlc2Ny
aWJlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuIEkgYWxzbyAKanVzdCBub3RpY2VkLCB0aGF0IGl0
IHdhcyBzcGVsbGVkIOKAnE1BQyBBZGRyZXNz4oCdIGJlZm9yZSwgc28gaXQgd291bGQgYmUgCmZp
bmUgZm9yIG1lIGlmIHlvdSBzZW5kIGluIHRoaXMgY29tbWl0IHNlcGFyYXRlbHkgKGJ1dCB3aXRo
IHRoZSBjb3JyZWN0IApjb21taXQgbWVzc2FnZSkuCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
