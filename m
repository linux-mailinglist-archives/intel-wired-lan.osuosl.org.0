Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1BA7A4B97
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6614614FA;
	Mon, 18 Sep 2023 15:19:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6614614FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050346;
	bh=daLKGVED5SerWXr8EJZWmRBsCiOWLLY7kjQ7i8kJ4qQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m6Qj2rQjBW/l/GbHy48XW6Zw82aqdRa+lj1niAL6M+/CLdUED6/Gr5i+pIqHwL+2J
	 IM6uY/IkkQaJbNWdxY7anvKrwWK5cKyVX/fTQQuCYIdk1WcmHVWdgkJ15rOpDRieKB
	 6+RboSoO76WZGq2xNAX+JqXqK+gzEMklsqxnFIR8MFarPBMpBcKcKjTKIBfIbXV/8y
	 aMI5yV0ISNY9snL4OPQqzVDL5MVtjGcvbuoytMSmfKsbnx6v8alHoxqIETYjFqFxod
	 8FU72wr2lr6L7gJtCoo2mazdsYpgVrFG1Oj3op3VaMAOKQShhHDQgvhLjtMnZBKEl2
	 ebq/E1EIGYWKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GDr9U2ZekLZX; Mon, 18 Sep 2023 15:19:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72748614D7;
	Mon, 18 Sep 2023 15:19:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72748614D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E96C71BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2CFC81F20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2CFC81F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6xumq4Fe69n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:20:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADA1481DD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADA1481DD8
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113472"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113472"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811342373"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811342373"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:46 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Shayne Chen <shayne.chen@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Kalle Valo <kvalo@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-wireless@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Date: Mon, 18 Sep 2023 16:10:57 +0300
Message-Id: <20230918131103.24119-8-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043222; x=1726579222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cukenIapxUiEiCycbwYwBac+amF+ty4IZL1khZo/lv0=;
 b=cWTK6RVvzRuDfjVy/QeWLkqPbu+7ujzxKAuxQmw1MlIdDVdCZBdSzFMy
 UZ2XNWKSc8GLY++rSThPmywT8d0OvfjL0sau93Djgj7+LWvvwRNX+PRGp
 KjjNz+REnbg4sMLLbg/RrYvFCoEy6Cra2WEURa1x4i5R3Flrr6TcRx65p
 gIkEQO7PmKmQPQhWjbFlH7acAF5j5+szihpWyRhXYXp5KdDsL9zFsfxS4
 iWVB7CS2lFqyOPFTrL6j9EOada0ZkST+3mz5F4WmkOeIHguh78sQhdkf/
 vYcjlgMazk0RIO+F3yvnjHqDvQgo4GV18gDDQkOr1hMQKDQYzaD0/CFrk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cWTK6RVv
Subject: [Intel-wired-lan] [PATCH v2 07/13] mt76: Remove unreliable
 pci_disable_link_state() workaround
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
 ath10k@lists.infradead.org, linux-bluetooth@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 ath11k@lists.infradead.org, linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

cGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIHdhcyBtYWRlIHJlbGlhYmxlIHJlZ2FyZGxlc3Mgb2Yg
QVNQTSBDT05GSUcKYW5kIE9TIGJlaW5nIGRpc2FsbG93ZWQgdG8gY2hhbmdlIEFTUE0gc3RhdGVz
IHRvIGFsbG93IGRyaXZlcnMgdG8gcmVseQpvbiBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKCkgd29y
a2luZy4KClJlbW92ZSBkcml2ZXIgd29ya2luZyBhcm91bmQgdW5yZWxpYWJsZSBwY2lfZGlzYWJs
ZV9saW5rX3N0YXRlKCkgZnJvbQptdDc2IGRyaXZlciBhbmQganVzdCBjYWxsIHBjaV9kaXNhYmxl
X2xpbmtfc3RhdGUoKSBkaXJlY3RseS4KClNpZ25lZC1vZmYtYnk6IElscG8gSsOkcnZpbmVuIDxp
bHBvLmphcnZpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCgpJdCdzIGEgYml0IHVuY2xlYXIgd2hp
Y2ggb2YgdGhlc2UgZGV2aWNlcyByZWFsbHkgbmVlZCBBU1BNIGRpc2FibGVkLgpQcm9iYWJseSBh
bGwgNzZ4eCBnaXZlbiB0aGUgY29tbWl0IG1lc3NhZ2VzIHRoYXQgYWRkZWQgdGhlaXIgZGlzYWJs
aW5nCmJ1dCA3OXh4IHNlZW1zIGEgbG90IG1vcmUgdW5jZXJ0YWluIGFuZCBoYW5kd2F2eS4KCm10
NzkxNSB3YXMgZG9uZSB3aXRob3V0IG9ic2VydmluZyBhbnkgaXNzdWUgaW4gY29tbWl0IDAzYjNk
ZWRjNWRlMQooIm10NzY6IG10NzkxNTogZGlzYWJsZSBBU1BNIikuCgptdDc5MjEgcmUtZW5hYmxl
ZCBhc3BtIGluIGJmMzc0N2FlMmUyNSAoIm10NzY6IG10NzkyMTogZW5hYmxlIGFzcG0gYnkKZGVm
YXVsdCIpLgoKbXQ3OTk2IHdhcyBhZGRlZCB3aXRoIGFzcG0gZGlzYWJsZWQuCgpJIGRpZG4ndCBj
b252ZXJ0IHRoZXNlIHRvIHF1aXJrIGR1ZSB0byBob3cgdW5jbGVhciB0aGUgc2l0dWF0aW9uCmN1
cnJlbnRseSBpcyAoYnV0IGZvciA3Nnh4IHF1aXJrIHdvdWxkIHNlZW0ganVzdGlmaWVkIGFzIHRo
ZXJlIGlzCmFjdHVhbGx5IHNvbWUgZXZpZGVuY2UgdG8gYmFjayBhc3BtIGJlaW5nIGhhcm1mdWwp
LgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvTWFrZWZpbGUgICB8ICAx
IC0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3Ni5oICAgICB8ICAxIC0K
IC4uLi9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2MTUvcGNpLmMgICB8ICAyICstCiAu
Li4vbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NngwL3BjaS5jICAgfCAgMiArLQogLi4u
L25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzZ4Mi9wY2kuYyAgIHwgIDIgKy0KIC4uLi9u
ZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvcGNpLmMgICB8ICAyICstCiAuLi4vbmV0
L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTIxL3BjaS5jICAgfCAgMiArLQogLi4uL25ldC93
aXJlbGVzcy9tZWRpYXRlay9tdDc2L210Nzk5Ni9wY2kuYyAgIHwgIDIgKy0KIGRyaXZlcnMvbmV0
L3dpcmVsZXNzL21lZGlhdGVrL210NzYvcGNpLmMgICAgICB8IDQ3IC0tLS0tLS0tLS0tLS0tLS0t
LS0KIDkgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1NSBkZWxldGlvbnMoLSkKIGRl
bGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L3BjaS5j
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9NYWtlZmls
ZSBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvTWFrZWZpbGUKaW5kZXggODVj
NDc5OWJlOTU0Li5jYjI4Y2VmNzgwYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L21lZGlhdGVrL210NzYvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0
ZWsvbXQ3Ni9NYWtlZmlsZQpAQCAtMTIsNyArMTIsNiBAQCBtdDc2LXkgOj0gXAogCW1taW8ubyB1
dGlsLm8gdHJhY2UubyBkbWEubyBtYWM4MDIxMS5vIGRlYnVnZnMubyBlZXByb20ubyBcCiAJdHgu
byBhZ2ctcngubyBtY3UubwogCi1tdDc2LSQoQ09ORklHX1BDSSkgKz0gcGNpLm8KIG10NzYtJChD
T05GSUdfTkw4MDIxMV9URVNUTU9ERSkgKz0gdGVzdG1vZGUubwogCiBtdDc2LXVzYi15IDo9IHVz
Yi5vIHVzYl90cmFjZS5vCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRl
ay9tdDc2L210NzYuaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3Ni5o
CmluZGV4IGU4NzU3ODY1YTNkMC4uMDg2OWZlMDNlM2QyIDEwMDY0NAotLS0gYS9kcml2ZXJzL25l
dC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYuaAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVz
cy9tZWRpYXRlay9tdDc2L210NzYuaApAQCAtMTAzOCw3ICsxMDM4LDYgQEAgYm9vbCBfX19fbXQ3
Nl9wb2xsX21zZWMoc3RydWN0IG10NzZfZGV2ICpkZXYsIHUzMiBvZmZzZXQsIHUzMiBtYXNrLCB1
MzIgdmFsLAogI2RlZmluZSBtdDc2X3BvbGxfbXNlY190aWNrKGRldiwgLi4uKSBfX19fbXQ3Nl9w
b2xsX21zZWMoJigoZGV2KS0+bXQ3NiksIF9fVkFfQVJHU19fKQogCiB2b2lkIG10NzZfbW1pb19p
bml0KHN0cnVjdCBtdDc2X2RldiAqZGV2LCB2b2lkIF9faW9tZW0gKnJlZ3MpOwotdm9pZCBtdDc2
X3BjaV9kaXNhYmxlX2FzcG0oc3RydWN0IHBjaV9kZXYgKnBkZXYpOwogCiBzdGF0aWMgaW5saW5l
IHUxNiBtdDc2X2NoaXAoc3RydWN0IG10NzZfZGV2ICpkZXYpCiB7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9wY2kuYyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NjE1L3BjaS5jCmluZGV4IDlmNDNlNjczNTE4Yi4u
ZDQzZWZlNGJmOWUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9t
dDc2L210NzYxNS9wY2kuYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2
L210NzYxNS9wY2kuYwpAQCAtNDMsNyArNDMsNyBAQCBzdGF0aWMgaW50IG10NzYxNV9wY2lfcHJv
YmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCiAJaWYgKHJldCkKIAkJZ290byBlcnJvcjsKIAotCW10
NzZfcGNpX2Rpc2FibGVfYXNwbShwZGV2KTsKKwlwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYs
IFBDSUVfTElOS19TVEFURV9MMFMgfCBQQ0lFX0xJTktfU1RBVEVfTDEpOwogCiAJbWFwID0gaWQt
PmRldmljZSA9PSAweDc2NjMgPyBtdDc2NjNlX3JlZ19tYXAgOiBtdDc2MTVlX3JlZ19tYXA7CiAJ
cmV0ID0gbXQ3NjE1X21taW9fcHJvYmUoJnBkZXYtPmRldiwgcGNpbV9pb21hcF90YWJsZShwZGV2
KVswXSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3
NngwL3BjaS5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2eDAvcGNp
LmMKaW5kZXggOTI3N2ZmMzhiN2EyLi40OWM3YTYzY2IxZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NngwL3BjaS5jCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NngwL3BjaS5jCkBAIC0xODEsNyArMTgxLDcgQEAg
bXQ3NngwZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZp
Y2VfaWQgKmlkKQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQltdDc2X3BjaV9kaXNhYmxl
X2FzcG0ocGRldik7CisJcGNpX2Rpc2FibGVfbGlua19zdGF0ZShwZGV2LCBQQ0lFX0xJTktfU1RB
VEVfTDBTIHwgUENJRV9MSU5LX1NUQVRFX0wxKTsKIAogCW1kZXYgPSBtdDc2X2FsbG9jX2Rldmlj
ZSgmcGRldi0+ZGV2LCBzaXplb2YoKmRldiksICZtdDc2eDBlX29wcywKIAkJCQkgJmRydl9vcHMp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2eDIv
cGNpLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzZ4Mi9wY2kuYwpp
bmRleCBkZjg1ZWJjNmUxZGYuLmRlNmViNTkzYWI1OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2eDIvcGNpLmMKKysrIGIvZHJpdmVycy9uZXQvd2ly
ZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2eDIvcGNpLmMKQEAgLTg1LDcgKzg1LDcgQEAgbXQ3Nngy
ZV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQg
KmlkKQogCS8qIFJHX1NTVVNCX0NEUl9CUl9QRTFEID0gMHgzICovCiAJbXQ3Nl9ybXdfZmllbGQo
ZGV2LCAweDE1YzU4LCAweDMgPDwgNiwgMHgzKTsKIAotCW10NzZfcGNpX2Rpc2FibGVfYXNwbShw
ZGV2KTsKKwlwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYsIFBDSUVfTElOS19TVEFURV9MMFMg
fCBQQ0lFX0xJTktfU1RBVEVfTDEpOwogCiAJcmV0dXJuIDA7CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTE1L3BjaS5jIGIvZHJpdmVycy9uZXQv
d2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5MTUvcGNpLmMKaW5kZXggMzkxMzI4OTRlOGVhLi44
Y2Y5YTFhNmQ4NTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210
NzYvbXQ3OTE1L3BjaS5jCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYv
bXQ3OTE1L3BjaS5jCkBAIC0xMjIsNyArMTIyLDcgQEAgc3RhdGljIGludCBtdDc5MTVfcGNpX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlt
dDc2X3BjaV9kaXNhYmxlX2FzcG0ocGRldik7CisJcGNpX2Rpc2FibGVfbGlua19zdGF0ZShwZGV2
LCBQQ0lFX0xJTktfU1RBVEVfTDBTIHwgUENJRV9MSU5LX1NUQVRFX0wxKTsKIAogCWlmIChpZC0+
ZGV2aWNlID09IDB4NzkxNiB8fCBpZC0+ZGV2aWNlID09IDB4NzkwYSkKIAkJcmV0dXJuIG10Nzkx
NV9wY2lfaGlmMl9wcm9iZShwZGV2KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L21lZGlhdGVrL210NzYvbXQ3OTIxL3BjaS5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0
ZWsvbXQ3Ni9tdDc5MjEvcGNpLmMKaW5kZXggM2RkYTg0YTkzNzE3Li40NWE4NjExMjI5MjYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTIxL3BjaS5j
CisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTIxL3BjaS5jCkBA
IC0yOTQsNyArMjk0LDcgQEAgc3RhdGljIGludCBtdDc5MjFfcGNpX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LAogCQlnb3RvIGVycl9mcmVlX3BjaV92ZWM7CiAKIAlpZiAobXQ3OTIxX2Rpc2Fi
bGVfYXNwbSkKLQkJbXQ3Nl9wY2lfZGlzYWJsZV9hc3BtKHBkZXYpOworCQlwY2lfZGlzYWJsZV9s
aW5rX3N0YXRlKHBkZXYsIFBDSUVfTElOS19TVEFURV9MMFMgfCBQQ0lFX0xJTktfU1RBVEVfTDEp
OwogCiAJb3BzID0gbXQ3OTJ4X2dldF9tYWM4MDIxMV9vcHMoJnBkZXYtPmRldiwgJm10NzkyMV9v
cHMsCiAJCQkJICAgICAgKHZvaWQgKilpZC0+ZHJpdmVyX2RhdGEsICZmZWF0dXJlcyk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210Nzk5Ni9wY2kuYyBi
L2RyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTk2L3BjaS5jCmluZGV4IGM1
MzAxMDUwZmY4Yi4uMWU4NGMxZjM3YzM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJlbGVz
cy9tZWRpYXRlay9tdDc2L210Nzk5Ni9wY2kuYworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9t
ZWRpYXRlay9tdDc2L210Nzk5Ni9wY2kuYwpAQCAtMTExLDcgKzExMSw3IEBAIHN0YXRpYyBpbnQg
bXQ3OTk2X3BjaV9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwKIAlpZiAocmV0KQogCQlyZXR1
cm4gcmV0OwogCi0JbXQ3Nl9wY2lfZGlzYWJsZV9hc3BtKHBkZXYpOworCXBjaV9kaXNhYmxlX2xp
bmtfc3RhdGUocGRldiwgUENJRV9MSU5LX1NUQVRFX0wwUyB8IFBDSUVfTElOS19TVEFURV9MMSk7
CiAKIAlpZiAoaWQtPmRldmljZSA9PSAweDc5OTEpCiAJCXJldHVybiBtdDc5OTZfcGNpX2hpZjJf
cHJvYmUocGRldik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9t
dDc2L3BjaS5jIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9wY2kuYwpkZWxl
dGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggNGMxYzE1OWZiYjYyLi4wMDAwMDAwMDAwMDAKLS0t
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9wY2kuYworKysgL2Rldi9udWxs
CkBAIC0xLDQ3ICswLDAgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBJU0MKLS8qCi0g
KiBDb3B5cmlnaHQgKEMpIDIwMTkgTG9yZW56byBCaWFuY29uaSA8bG9yZW56b0BrZXJuZWwub3Jn
PgotICovCi0KLSNpbmNsdWRlICJtdDc2LmgiCi0jaW5jbHVkZSA8bGludXgvcGNpLmg+Ci0KLXZv
aWQgbXQ3Nl9wY2lfZGlzYWJsZV9hc3BtKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQotewotCXN0cnVj
dCBwY2lfZGV2ICpwYXJlbnQgPSBwZGV2LT5idXMtPnNlbGY7Ci0JdTE2IGFzcG1fY29uZiwgcGFy
ZW50X2FzcG1fY29uZiA9IDA7Ci0KLQlwY2llX2NhcGFiaWxpdHlfcmVhZF93b3JkKHBkZXYsIFBD
SV9FWFBfTE5LQ1RMLCAmYXNwbV9jb25mKTsKLQlhc3BtX2NvbmYgJj0gUENJX0VYUF9MTktDVExf
QVNQTUM7Ci0JaWYgKHBhcmVudCkgewotCQlwY2llX2NhcGFiaWxpdHlfcmVhZF93b3JkKHBhcmVu
dCwgUENJX0VYUF9MTktDVEwsCi0JCQkJCSAgJnBhcmVudF9hc3BtX2NvbmYpOwotCQlwYXJlbnRf
YXNwbV9jb25mICY9IFBDSV9FWFBfTE5LQ1RMX0FTUE1DOwotCX0KLQotCWlmICghYXNwbV9jb25m
ICYmICghcGFyZW50IHx8ICFwYXJlbnRfYXNwbV9jb25mKSkgewotCQkvKiBhc3BtIGFscmVhZHkg
ZGlzYWJsZWQgKi8KLQkJcmV0dXJuOwotCX0KLQotCWRldl9pbmZvKCZwZGV2LT5kZXYsICJkaXNh
YmxpbmcgQVNQTSAlcyAlc1xuIiwKLQkJIChhc3BtX2NvbmYgJiBQQ0lfRVhQX0xOS0NUTF9BU1BN
X0wwUykgPyAiTDBzIiA6ICIiLAotCQkgKGFzcG1fY29uZiAmIFBDSV9FWFBfTE5LQ1RMX0FTUE1f
TDEpID8gIkwxIiA6ICIiKTsKLQotCWlmIChJU19FTkFCTEVEKENPTkZJR19QQ0lFQVNQTSkpIHsK
LQkJaW50IGVycjsKLQotCQllcnIgPSBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYsIGFzcG1f
Y29uZik7Ci0JCWlmICghZXJyKQotCQkJcmV0dXJuOwotCX0KLQotCS8qIGJvdGggZGV2aWNlIGFu
ZCBwYXJlbnQgc2hvdWxkIGhhdmUgdGhlIHNhbWUgQVNQTSBzZXR0aW5nLgotCSAqIGRpc2FibGUg
QVNQTSBpbiBkb3duc3RyZWFtIGNvbXBvbmVudCBmaXJzdCBhbmQgdGhlbiB1cHN0cmVhbS4KLQkg
Ki8KLQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfd29yZChwZGV2LCBQQ0lfRVhQX0xOS0NUTCwgYXNw
bV9jb25mKTsKLQlpZiAocGFyZW50KQotCQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfd29yZChwYXJl
bnQsIFBDSV9FWFBfTE5LQ1RMLAotCQkJCQkgICBhc3BtX2NvbmYpOwotfQotRVhQT1JUX1NZTUJP
TF9HUEwobXQ3Nl9wY2lfZGlzYWJsZV9hc3BtKTsKLS0gCjIuMzAuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
