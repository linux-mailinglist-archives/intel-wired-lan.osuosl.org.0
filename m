Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2726A488B33
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jan 2022 18:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDBB260BB7;
	Sun,  9 Jan 2022 17:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYPgJ_LmOjQs; Sun,  9 Jan 2022 17:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEA7F60BB5;
	Sun,  9 Jan 2022 17:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB3421BF475
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 17:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5C1D60BB5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 17:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OXZ9sxGTySw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jan 2022 17:30:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp04.smtpout.orange.fr
 [80.12.242.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99641605A1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 17:30:58 +0000 (UTC)
Received: from [192.168.1.18] ([90.11.185.88]) by smtp.orange.fr with ESMTPA
 id 6c1vnvbuksoWh6c1wnvy3b; Sun, 09 Jan 2022 18:30:56 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 09 Jan 2022 18:30:56 +0100
X-ME-IP: 90.11.185.88
Message-ID: <29f3c7d1-f3ca-4a13-a9fb-7425e0941c37@wanadoo.fr>
Date: Sun, 9 Jan 2022 18:30:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: fr
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <5549ec8837b3a6fab83e92c5206cc100ffd23d85.1641748468.git.christophe.jaillet@wanadoo.fr>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <5549ec8837b3a6fab83e92c5206cc100ffd23d85.1641748468.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Remove useless DMA-32 fallback
 configuration
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TGUgMDkvMDEvMjAyMiDDoCAxODoxNCwgQ2hyaXN0b3BoZSBKQUlMTEVUIGEgw6ljcml0wqA6Cj4g
QXMgc3RhdGVkIGluIFsxXSwgZG1hX3NldF9tYXNrKCkgd2l0aCBhIDY0LWJpdCBtYXNrIG5ldmVy
IGZhaWxzIGlmCj4gZGV2LT5kbWFfbWFzayBpcyBub24tTlVMTC4KPiBTbywgaWYgaXQgZmFpbHMs
IHRoZSAzMiBiaXRzIGNhc2Ugd2lsbCBhbHNvIGZhaWwgZm9yIHRoZSBzYW1lIHJlYXNvbi4KPiAK
PiBTbywgaWYgZG1hX3NldF9tYXNrX2FuZF9jb2hlcmVudCgpIHN1Y2NlZWRzLCAncGNpX3VzaW5n
X2RhYycgaXMga25vd24gdG8gYmUKPiAxLgo+IAo+IFNpbXBsaWZ5IGNvZGUgYW5kIHJlbW92ZSBz
b21lIGRlYWQgY29kZSBhY2NvcmRpbmdseS4KPiAKPiBbMV06IGh0dHBzOi8vbGttbC5vcmcvbGtt
bC8yMDIxLzYvNy8zOTgKPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNo
cmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+IFJldmlld2VkLWJ5OiBDaHJpc3RvcGggSGVs
bHdpZyA8aGNoQGxzdC5kZT4KPiBSZXZpZXdlZC1ieTogQWxleGFuZGVyIExvYmFraW4gPGFsZXhh
bmRyLmxvYmFraW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL25ldGRldi5jIHwgMjIgKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpOQUssIHdyb25nIHN1
YmplY3QKCkNKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
