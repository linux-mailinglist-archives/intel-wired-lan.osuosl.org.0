Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E997A4BA0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B731614F5;
	Mon, 18 Sep 2023 15:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B731614F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050371;
	bh=LvrcmTNL9X9qIWefZ9DQwwWg9kjXoCAIG8Tfbz+7GYQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mlZqdCQFkQAsneYM1Xn3gXBNt2nXo4SAT2YO2n+JQTw86WWOSULguu2FXq/Dl7ayq
	 XIsbT/fcFgqOYU3+QISdeF8jAhY9kYqdJEQehpi8mz2SFUJODRnuNoA5diWS3gI/Av
	 /w3R/ujYwHxtrsKTU6ymuMLoLMSTkhFnYwJpG1rp/5na75tm4UiACOSbYox8URaeIx
	 i4PbhkDgSUyalgOd++Vn21KV4IgTTWNt+CsQ7kSMnjuKkKpmZVgHv4J2XPTFeu8cm0
	 ndaEjPuEfwRETAOCjVKGibV8RRaER0uwl7uUkQtHQt9Vu26rVKDYyxq2ZziaQF46Bg
	 enzpMZvyDJ5rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KidoUm9n2TZJ; Mon, 18 Sep 2023 15:19:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBA29611D0;
	Mon, 18 Sep 2023 15:19:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBA29611D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F41C1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 44AF581F28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:21:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44AF581F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e4cm2Dh1_xo7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:21:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E71881F2D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E71881F2D
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113642"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113642"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811343218"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811343218"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:54 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 18 Sep 2023 16:11:03 +0300
Message-Id: <20230918131103.24119-14-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043262; x=1726579262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/jlflr+zDO/ybJEIj9ZeNbSBAg1LjrmA0JjnTT6qqL0=;
 b=hhwQTIhoVYV/aRq6j0E+kWfJHBsEE7Uk3dDcTyNF1zARHqAOx83q7bwf
 996+hZvz5JK+UlOJsjUplUztFAgGfDXXEvvfnnyvTZ8cpxyN6TSQYOH2f
 1fj8xMugtrwS/9Y3wvofP+2dbfITJmK4ioljCABzWjUnv8zfvuuUUgShq
 k7hUjR8eEFuGlAOFTHhK4Ta143VIpGoM2h/sCQgQvkO59Ugnyblpp/rog
 ceK65F9fz2EJ3xplnX55/t8l62zoo3kX0XZ+F65LZjJGifG4MmMmgAwaQ
 62P5qTeUELlDERohkvryeCtQv9t0mcgCe3CZFGwpJ4hKLULSyfwFj9beg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hhwQTIho
Subject: [Intel-wired-lan] [PATCH v2 13/13] misc: rtsx: Use
 pci_disable/enable_link_state()
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
Cc: ath12k@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-bluetooth@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-mediatek@lists.infradead.org, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

cnRzeCBkcml2ZXIgYWRqdXN0cyBBU1BNIHN0YXRlIGl0c2VsZiB3aGljaCBsZWF2ZXMgQVNQTSBz
ZXJ2aWNlCmRyaXZlciBpbiBQQ0kgY29yZSB1bmF3YXJlIG9mIHRoZSBsaW5rIHN0YXRlIGNoYW5n
ZXMgdGhlIGRyaXZlcgppbXBsZW1lbnRlZC4KCkNhbGwgcGNpX2Rpc2FibGVfbGlua19zdGF0ZSgp
IGFuZCBwY2lfZW5hYmxlX2xpbmtfc3RhdGUoKSBpbnN0ZWFkIG9mCmFkanVzdGluZyBBU1BNQyBm
aWVsZCBpbiBMTktDVEwgZGlyZWN0bHkgaW4gdGhlIGRyaXZlciBhbmQgbGV0IFBDSSBjb3JlCmhh
bmRsZSB0aGUgQVNQTSBzdGF0ZSBtYW5hZ2VtZW50LgoKU2lnbmVkLW9mZi1ieTogSWxwbyBKw6Ry
dmluZW4gPGlscG8uamFydmluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbWlzYy9j
YXJkcmVhZGVyL3J0czUyMjguYyAgfCA2ICsrLS0tLQogZHJpdmVycy9taXNjL2NhcmRyZWFkZXIv
cnRzNTI2MS5jICB8IDYgKystLS0tCiBkcml2ZXJzL21pc2MvY2FyZHJlYWRlci9ydHN4X3Bjci5j
IHwgOCArKysrKy0tLQogMyBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDExIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9jYXJkcmVhZGVyL3J0czUyMjguYyBi
L2RyaXZlcnMvbWlzYy9jYXJkcmVhZGVyL3J0czUyMjguYwppbmRleCBmNGFiMDk0MzlkYTcuLjhk
MzIxNmM2NGFkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNjL2NhcmRyZWFkZXIvcnRzNTIyOC5j
CisrKyBiL2RyaXZlcnMvbWlzYy9jYXJkcmVhZGVyL3J0czUyMjguYwpAQCAtNDk3LDggKzQ5Nyw3
IEBAIHN0YXRpYyB2b2lkIHJ0czUyMjhfZW5hYmxlX2FzcG0oc3RydWN0IHJ0c3hfcGNyICpwY3Is
IGJvb2wgZW5hYmxlKQogCXZhbCA9IEZPUkNFX0FTUE1fQ1RMMCB8IEZPUkNFX0FTUE1fQ1RMMTsK
IAl2YWwgfD0gKHBjci0+YXNwbV9lbiAmIDB4MDIpOwogCXJ0c3hfcGNpX3dyaXRlX3JlZ2lzdGVy
KHBjciwgQVNQTV9GT1JDRV9DVEwsIG1hc2ssIHZhbCk7Ci0JcGNpZV9jYXBhYmlsaXR5X2NsZWFy
X2FuZF9zZXRfd29yZChwY3ItPnBjaSwgUENJX0VYUF9MTktDVEwsCi0JCQkJCSAgIFBDSV9FWFBf
TE5LQ1RMX0FTUE1DLCBwY3ItPmFzcG1fZW4pOworCXBjaV9lbmFibGVfbGlua19zdGF0ZShwY3It
PnBjaSwgcGNyLT5hc3BtX2VuKTsKIAlwY3ItPmFzcG1fZW5hYmxlZCA9IGVuYWJsZTsKIH0KIApA
QCAtNTA5LDggKzUwOCw3IEBAIHN0YXRpYyB2b2lkIHJ0czUyMjhfZGlzYWJsZV9hc3BtKHN0cnVj
dCBydHN4X3BjciAqcGNyLCBib29sIGVuYWJsZSkKIAlpZiAocGNyLT5hc3BtX2VuYWJsZWQgPT0g
ZW5hYmxlKQogCQlyZXR1cm47CiAKLQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfYW5kX3NldF93b3Jk
KHBjci0+cGNpLCBQQ0lfRVhQX0xOS0NUTCwKLQkJCQkJICAgUENJX0VYUF9MTktDVExfQVNQTUMs
IDApOworCXBjaV9kaXNhYmxlX2xpbmtfc3RhdGUocGNyLT5wY2ksIFBDSUVfTElOS19TVEFURV9M
MFMgfCBQQ0lFX0xJTktfU1RBVEVfTDEpOwogCW1hc2sgPSBGT1JDRV9BU1BNX1ZBTF9NQVNLIHwg
Rk9SQ0VfQVNQTV9DVEwwIHwgRk9SQ0VfQVNQTV9DVEwxOwogCXZhbCA9IEZPUkNFX0FTUE1fQ1RM
MCB8IEZPUkNFX0FTUE1fQ1RMMTsKIAlydHN4X3BjaV93cml0ZV9yZWdpc3RlcihwY3IsIEFTUE1f
Rk9SQ0VfQ1RMLCBtYXNrLCB2YWwpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNjL2NhcmRyZWFk
ZXIvcnRzNTI2MS5jIGIvZHJpdmVycy9taXNjL2NhcmRyZWFkZXIvcnRzNTI2MS5jCmluZGV4IDk0
YWY2YmY4YTI1YS4uZjFlZjE1NjgzYTJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL21pc2MvY2FyZHJl
YWRlci9ydHM1MjYxLmMKKysrIGIvZHJpdmVycy9taXNjL2NhcmRyZWFkZXIvcnRzNTI2MS5jCkBA
IC01NzgsOCArNTc4LDcgQEAgc3RhdGljIHZvaWQgcnRzNTI2MV9lbmFibGVfYXNwbShzdHJ1Y3Qg
cnRzeF9wY3IgKnBjciwgYm9vbCBlbmFibGUpCiAKIAl2YWwgfD0gKHBjci0+YXNwbV9lbiAmIDB4
MDIpOwogCXJ0c3hfcGNpX3dyaXRlX3JlZ2lzdGVyKHBjciwgQVNQTV9GT1JDRV9DVEwsIG1hc2ss
IHZhbCk7Ci0JcGNpZV9jYXBhYmlsaXR5X2NsZWFyX2FuZF9zZXRfd29yZChwY3ItPnBjaSwgUENJ
X0VYUF9MTktDVEwsCi0JCQkJCSAgIFBDSV9FWFBfTE5LQ1RMX0FTUE1DLCBwY3ItPmFzcG1fZW4p
OworCXBjaV9lbmFibGVfbGlua19zdGF0ZShwY3ItPnBjaSwgcGNyLT5hc3BtX2VuKTsKIAlwY3It
PmFzcG1fZW5hYmxlZCA9IGVuYWJsZTsKIH0KIApAQCAtNTkxLDggKzU5MCw3IEBAIHN0YXRpYyB2
b2lkIHJ0czUyNjFfZGlzYWJsZV9hc3BtKHN0cnVjdCBydHN4X3BjciAqcGNyLCBib29sIGVuYWJs
ZSkKIAlpZiAocGNyLT5hc3BtX2VuYWJsZWQgPT0gZW5hYmxlKQogCQlyZXR1cm47CiAKLQlwY2ll
X2NhcGFiaWxpdHlfY2xlYXJfYW5kX3NldF93b3JkKHBjci0+cGNpLCBQQ0lfRVhQX0xOS0NUTCwK
LQkJCQkJICAgUENJX0VYUF9MTktDVExfQVNQTUMsIDApOworCXBjaV9kaXNhYmxlX2xpbmtfc3Rh
dGUocGNyLT5wY2ksIFBDSUVfTElOS19TVEFURV9MMFMgfCBQQ0lFX0xJTktfU1RBVEVfTDEpOwog
CXJ0c3hfcGNpX3dyaXRlX3JlZ2lzdGVyKHBjciwgQVNQTV9GT1JDRV9DVEwsIG1hc2ssIHZhbCk7
CiAJcnRzeF9wY2lfd3JpdGVfcmVnaXN0ZXIocGNyLCBTRF9DRkcxLCBTRF9BU1lOQ19GSUZPX05P
VF9SU1QsIDApOwogCXVkZWxheSgxMCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21pc2MvY2FyZHJl
YWRlci9ydHN4X3Bjci5jIGIvZHJpdmVycy9taXNjL2NhcmRyZWFkZXIvcnRzeF9wY3IuYwppbmRl
eCBhM2Y0YjUyYmIxNTkuLjZlZmI3OTIxNTJmMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNjL2Nh
cmRyZWFkZXIvcnRzeF9wY3IuYworKysgYi9kcml2ZXJzL21pc2MvY2FyZHJlYWRlci9ydHN4X3Bj
ci5jCkBAIC04Niw5ICs4NiwxMSBAQCBzdGF0aWMgdm9pZCBydHN4X2NvbW1fc2V0X2FzcG0oc3Ry
dWN0IHJ0c3hfcGNyICpwY3IsIGJvb2wgZW5hYmxlKQogCQlyZXR1cm47CiAKIAlpZiAocGNyLT5h
c3BtX21vZGUgPT0gQVNQTV9NT0RFX0NGRykgewotCQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfYW5k
X3NldF93b3JkKHBjci0+cGNpLCBQQ0lfRVhQX0xOS0NUTCwKLQkJCQkJCVBDSV9FWFBfTE5LQ1RM
X0FTUE1DLAotCQkJCQkJZW5hYmxlID8gcGNyLT5hc3BtX2VuIDogMCk7CisJCWlmIChlbmFibGUp
CisJCQlwY2lfZW5hYmxlX2xpbmtfc3RhdGUocGNyLT5wY2ksIHBjci0+YXNwbV9lbik7CisJCWVs
c2UKKwkJCXBjaV9kaXNhYmxlX2xpbmtfc3RhdGUocGNyLT5wY2ksIFBDSUVfTElOS19TVEFURV9M
MFMgfAorCQkJCQkJCSBQQ0lFX0xJTktfU1RBVEVfTDEpOwogCX0gZWxzZSBpZiAocGNyLT5hc3Bt
X21vZGUgPT0gQVNQTV9NT0RFX1JFRykgewogCQlpZiAocGNyLT5hc3BtX2VuICYgMHgwMikKIAkJ
CXJ0c3hfcGNpX3dyaXRlX3JlZ2lzdGVyKHBjciwgQVNQTV9GT1JDRV9DVEwsIEZPUkNFX0FTUE1f
Q1RMMCB8Ci0tIAoyLjMwLjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
