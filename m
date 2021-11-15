Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB9A45108F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Nov 2021 19:48:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8221E6079D;
	Mon, 15 Nov 2021 18:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rRNYVIQzw7G4; Mon, 15 Nov 2021 18:48:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B8676078A;
	Mon, 15 Nov 2021 18:48:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 948761BF475
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 18:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F4FC6078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 18:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1z9CPP2ACq2g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Nov 2021 18:47:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B75DB60763
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 18:47:56 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 71BA86339E;
 Mon, 15 Nov 2021 18:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637002076;
 bh=odq/y+JYCzdPMIOo+K8Xx9cwJ4a9FATDI5/rCaDVnKQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bd1C7KumCfm7KQvBvD1FXmkKvtczzIfTzTJQ/MDPBnNpL0gTa3A13m4A5q+K6Je07
 TKySTwkYdI2HmCwrxRVy8yqerqxlYFs5qo7Uma8qrSJtu6K6j9G+7TgXEiZtk2BAe9
 LAAllcDngpCELJM6Qva9N3GC0t8kLCL27BdAp8Kg=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 15 Nov 2021 17:58:45 +0100
Message-Id: <20211115165443.371123535@linuxfoundation.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211115165428.722074685@linuxfoundation.org>
References: <20211115165428.722074685@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 5.15 430/917] net: intel: igc_ptp: fix
 build for UML
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jeff Dike <jdike@addtoit.com>,
 Randy Dunlap <rdunlap@infradead.org>, linux-um@lists.infradead.org,
 stable@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Richard Weinberger <richard@nod.at>, intel-wired-lan@lists.osuosl.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+CgpbIFVwc3RyZWFtIGNv
bW1pdCA1MjM5OTRiYTNhZDFiN2I1NWFiZTRhNzJlMTU2ODk3YjVlMmRiODI1IF0KCk9uIGEgVU1M
IGJ1aWxkLCB0aGUgaWdjX3B0cCBkcml2ZXIgdXNlcyBDT05GSUdfWDg2X1RTQyBmb3IgdGltZXN0
YW1wCmNvbnZlcnNpb24uIFRoZSBmdW5jdGlvbiB0aGF0IGlzIHVzZWQgaXMgbm90IGF2YWlsYWJs
ZSBvbiBVTUwgYnVpbGRzLApzbyBoYXZlIHRoZSBmdW5jdGlvbiB1c2UgdGhlIGRlZmF1bHQgc3lz
dGVtX2NvdW50ZXJ2YWxfdCB0aW1lc3RhbXAKaW5zdGVhZCBmb3IgVU1MIGJ1aWxkcy4KClByZXZl
bnRzIHRoaXMgYnVpbGQgZXJyb3Igb24gVU1MOgoKLi4vZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19wdHAuYzogSW4gZnVuY3Rpb24g4oCYaWdjX2RldmljZV90c3RhbXBfdG9fc3lz
dGVt4oCZOgouLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jOjc3Nzo5
OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYY29udmVydF9hcnRf
bnNfdG9fdHNj4oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQogIHJl
dHVybiBjb252ZXJ0X2FydF9uc190b190c2ModHN0YW1wKTsKLi4vZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19wdHAuYzo3Nzc6OTogZXJyb3I6IGluY29tcGF0aWJsZSB0eXBlcyB3
aGVuIHJldHVybmluZyB0eXBlIOKAmGludOKAmSBidXQg4oCYc3RydWN0IHN5c3RlbV9jb3VudGVy
dmFsX3TigJkgd2FzIGV4cGVjdGVkCiAgcmV0dXJuIGNvbnZlcnRfYXJ0X25zX3RvX3RzYyh0c3Rh
bXApOwoKRml4ZXM6IDY4ZjVkM2YzYjY1NCAoInVtOiBhZGQgUENJIG92ZXIgdmlydGlvIGVtdWxh
dGlvbiBkcml2ZXIiKQpTaWduZWQtb2ZmLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFk
ZWFkLm9yZz4KQ2M6IGxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IEplZmYgRGlrZSA8
amRpa2VAYWRkdG9pdC5jb20+CkNjOiBSaWNoYXJkIFdlaW5iZXJnZXIgPHJpY2hhcmRAbm9kLmF0
PgpDYzogQW50b24gSXZhbm92IDxhbnRvbi5pdmFub3ZAY2FtYnJpZGdlZ3JleXMuY29tPgpDYzog
SmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+CkNjOiBUb255IE5n
dXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+CkNjOiBpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZwpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjExMDE0MDUw
NTE2LjY4NDYtMS1yZHVubGFwQGluZnJhZGVhZC5vcmcKU2lnbmVkLW9mZi1ieTogSmFrdWIgS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hh
bEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRw
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYwppbmRleCAwZjAyMTkwOWI0
MzBhLi4zMDU2OGUzNTQ0Y2RhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX3B0cC5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
cHRwLmMKQEAgLTc3Myw3ICs3NzMsNyBAQCBzdGF0aWMgYm9vbCBpZ2NfaXNfY3Jvc3N0c3RhbXBf
c3VwcG9ydGVkKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcikKIAogc3RhdGljIHN0cnVjdCBz
eXN0ZW1fY291bnRlcnZhbF90IGlnY19kZXZpY2VfdHN0YW1wX3RvX3N5c3RlbSh1NjQgdHN0YW1w
KQogewotI2lmIElTX0VOQUJMRUQoQ09ORklHX1g4Nl9UU0MpCisjaWYgSVNfRU5BQkxFRChDT05G
SUdfWDg2X1RTQykgJiYgIWRlZmluZWQoQ09ORklHX1VNTCkKIAlyZXR1cm4gY29udmVydF9hcnRf
bnNfdG9fdHNjKHRzdGFtcCk7CiAjZWxzZQogCXJldHVybiAoc3RydWN0IHN5c3RlbV9jb3VudGVy
dmFsX3QpIHsgfTsKLS0gCjIuMzMuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
