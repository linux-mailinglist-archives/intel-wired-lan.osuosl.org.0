Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BE642D1CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 07:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C57D360A69;
	Thu, 14 Oct 2021 05:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JWC4ty8SHXgr; Thu, 14 Oct 2021 05:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDDF860A35;
	Thu, 14 Oct 2021 05:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADF361BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 05:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C29F4047C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 05:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JpW2Hroduvrg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Oct 2021 05:05:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 46EEA40469
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Oct 2021 05:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=fy6uHjcmFnCcjPVTgw9SQgG/30BidBcTvAaDoM+yDQM=; b=aKm6Kup9pUlt6v6d7gfIO8ZcRi
 NdWp3yQM0xjyUo1ELiYY5pHxOk/P+1sNEjKHNj6whOrFdCj8uy4wNUv2pYjUy2mNbDiNsSUymOz/h
 /KLAEad55GjMIivsk0EQzMzV11udeNtOIMYz2J6WDnJWlU8/Nv8nwdxQ2ZQGtpnFnrtcywcbMcfQd
 L9L/1evmVBqSC/rqQh8/Ki2o5FNTGam2M1Sxi2Yw7bE05D0DOjYiJ/ZFN5VB+DLJv5YyoIQLAe+ll
 NYC4UNvx5sE7P/7kT21PF7GjKuYkgzWP+GHsrpCL+pMBDhNTc9MhVsY8GUVUT+6AB2z2+9Sc58dQH
 hNoW4x0g==;
Received: from [2601:1c0:6280:3f0::aa0b] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1masvd-001azO-KR; Thu, 14 Oct 2021 05:05:17 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: netdev@vger.kernel.org
Date: Wed, 13 Oct 2021 22:05:16 -0700
Message-Id: <20211014050516.6846-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] net: intel: igc_ptp: fix build
 for UML
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Randy Dunlap <rdunlap@infradead.org>, linux-um@lists.infradead.org,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gYSBVTUwgYnVpbGQsIHRoZSBpZ2NfcHRwIGRyaXZlciB1c2VzIENPTkZJR19YODZfVFNDIGZv
ciB0aW1lc3RhbXAKY29udmVyc2lvbi4gVGhlIGZ1bmN0aW9uIHRoYXQgaXMgdXNlZCBpcyBub3Qg
YXZhaWxhYmxlIG9uIFVNTCBidWlsZHMsCnNvIGhhdmUgdGhlIGZ1bmN0aW9uIHVzZSB0aGUgZGVm
YXVsdCBzeXN0ZW1fY291bnRlcnZhbF90IHRpbWVzdGFtcAppbnN0ZWFkIGZvciBVTUwgYnVpbGRz
LgoKUHJldmVudHMgdGhpcyBidWlsZCBlcnJvciBvbiBVTUw6CgouLi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jOiBJbiBmdW5jdGlvbiDigJhpZ2NfZGV2aWNlX3RzdGFt
cF90b19zeXN0ZW3igJk6Ci4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRw
LmM6Nzc3Ojk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhjb252
ZXJ0X2FydF9uc190b190c2PigJkgWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRp
b25dCiAgcmV0dXJuIGNvbnZlcnRfYXJ0X25zX3RvX3RzYyh0c3RhbXApOwouLi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jOjc3Nzo5OiBlcnJvcjogaW5jb21wYXRpYmxl
IHR5cGVzIHdoZW4gcmV0dXJuaW5nIHR5cGUg4oCYaW504oCZIGJ1dCDigJhzdHJ1Y3Qgc3lzdGVt
X2NvdW50ZXJ2YWxfdOKAmSB3YXMgZXhwZWN0ZWQKICByZXR1cm4gY29udmVydF9hcnRfbnNfdG9f
dHNjKHRzdGFtcCk7CgpGaXhlczogNjhmNWQzZjNiNjU0ICgidW06IGFkZCBQQ0kgb3ZlciB2aXJ0
aW8gZW11bGF0aW9uIGRyaXZlciIpClNpZ25lZC1vZmYtYnk6IFJhbmR5IER1bmxhcCA8cmR1bmxh
cEBpbmZyYWRlYWQub3JnPgpDYzogbGludXgtdW1AbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogSmVm
ZiBEaWtlIDxqZGlrZUBhZGR0b2l0LmNvbT4KQ2M6IFJpY2hhcmQgV2VpbmJlcmdlciA8cmljaGFy
ZEBub2QuYXQ+CkNjOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5vdkBjYW1icmlkZ2VncmV5cy5j
b20+CkNjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IEpha3Vi
IEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+CkNjOiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5i
cmFuZGVidXJnQGludGVsLmNvbT4KQ2M6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGlu
dGVsLmNvbT4KQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnCi0tLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19wdHAuYyB8ICAgIDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKLS0tIGxpbnV4LW5leHQtMjAyMTEw
MTMub3JpZy9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jCisrKyBsaW51
eC1uZXh0LTIwMjExMDEzL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMK
QEAgLTc3Myw3ICs3NzMsNyBAQCBzdGF0aWMgYm9vbCBpZ2NfaXNfY3Jvc3N0c3RhbXBfc3VwcG9y
dGVkCiAKIHN0YXRpYyBzdHJ1Y3Qgc3lzdGVtX2NvdW50ZXJ2YWxfdCBpZ2NfZGV2aWNlX3RzdGFt
cF90b19zeXN0ZW0odTY0IHRzdGFtcCkKIHsKLSNpZiBJU19FTkFCTEVEKENPTkZJR19YODZfVFND
KQorI2lmIElTX0VOQUJMRUQoQ09ORklHX1g4Nl9UU0MpICYmICFkZWZpbmVkKENPTkZJR19VTUwp
CiAJcmV0dXJuIGNvbnZlcnRfYXJ0X25zX3RvX3RzYyh0c3RhbXApOwogI2Vsc2UKIAlyZXR1cm4g
KHN0cnVjdCBzeXN0ZW1fY291bnRlcnZhbF90KSB7IH07Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
