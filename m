Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AAA7A67AC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 17:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E33D66161E;
	Tue, 19 Sep 2023 15:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E33D66161E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695136317;
	bh=C8gqGlIL7sD4LvgQUPQpo7AqQKrAqrQG6alTKjaCKVk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AwF8lLeHXYrARih8QzaFkYX6CtBvSkd0PFATSAYNj3dIx4kmWGfOV7D0uXOcognVS
	 dJvwcAeZiBMq+qhrmneTdpDTZW5j4FFeSJyLnWsbtmrRn+eNYT7/kEiT2ThYurTh73
	 MmG/WfnA+2TtTWHDeTlCQPsWESwil6NCLT95SefgwuyAaTc1df6Lb6CXVissZBrCJ2
	 mDEGmOl3S12L0Ob/TwfylD5umjzlFMreIgfNAS/5uhN/97UpttnIsL6RmPkUyr/7wJ
	 3OFDScVzrPh06niT08pxGvXT79cGFrilb5ATxDXqB/4FsPaAQ4pbMKWweFle2IkdBH
	 1iiFq9wTa4i3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwc9n5yIjPKM; Tue, 19 Sep 2023 15:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF22560FDA;
	Tue, 19 Sep 2023 15:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF22560FDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 013791BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCABF41DAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CCABF41DAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8X1qFaGuMpRb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 12:57:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EF4D841D7C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF4D841D7C
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359324720"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="359324720"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 05:57:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746228913"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="746228913"
Received: from vdesserx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.32.31])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 05:57:34 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 19 Sep 2023 15:56:47 +0300
Message-Id: <20230919125648.1920-8-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
References: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Sep 2023 15:11:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695128260; x=1726664260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HMH5KEeZn7aezfXFMh9Smzjm5lwAV6MHWZcT0k35UEI=;
 b=WigJFsz4QAg/CP6kkGPHTfjjQK0BfItwLsWYO/TyPk3TtRVwDYusQ9og
 I98NQk3oRFyDlduwiDok9QJgaypPl7X1TmSeAQatTedfHVUybb/JbP/mD
 zAVwJGcwHr55sD3TFakMcz3jWP4stqxYzCcrFqolwUNQicZhm92qgxCqd
 FQuA7jiBvxjc/3URNsBA5RMuwVRMYN5/9DNUkFcIVTseaYpNqN22+EaPZ
 G6DTALq9FhxLDVLPrW94sjHWapof+EfSA0j+GRE/XRrAmV8kqDJKOBdDx
 KCJ8bfiu2pbWi3GS5RR7JK99Q0o7/NXAFK8IZcLVrULyBKkN4cliJ+p8x
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WigJFsz4
Subject: [Intel-wired-lan] [PATCH v3 7/8] e1000e: Use PCI_EXP_LNKSTA_NLW &
 FIELD_GET() instead of custom defines/code
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ZTEwMDBlIGhhcyBvd24gY29weSBvZiBQQ0kgTmVnb3RpYXRlZCBMaW5rIFdpZHRoIGZpZWxkIGRl
ZmluZXMuIFVzZSB0aGUKb25lcyBmcm9tIGluY2x1ZGUvdWFwaS9saW51eC9wY2lfcmVncy5oIGlu
c3RlYWQgb2YgdGhlIGN1c3RvbSBvbmVzIGFuZApyZW1vdmUgdGhlIGN1c3RvbSBvbmVzIGFuZCBj
b252ZXJ0IHRvIEZJRUxEX0dFVCgpLgoKU3VnZ2VzdGVkLWJ5OiBKb25hdGhhbiBDYW1lcm9uIDxK
b25hdGhhbi5DYW1lcm9uQGh1YXdlaS5jb20+ClNpZ25lZC1vZmYtYnk6IElscG8gSsOkcnZpbmVu
IDxpbHBvLmphcnZpbmVuQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvbmF0aGFuIENh
bWVyb24gPEpvbmF0aGFuLkNhbWVyb25AaHVhd2VpLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9lMTAwMGUvZGVmaW5lcy5oIHwgMiAtLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL21hYy5jICAgICB8IDcgKysrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9kZWZpbmVzLmgKaW5kZXggNjNjM2M3OTM4MGExLi5hNGQyOWM5ZTAzYTYgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgKKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaApAQCAtNjgxLDggKzY4
MSw2IEBACiAjZGVmaW5lIFBDSUVfTElOS19TVEFUVVMgICAgICAgICAgICAgMHgxMgogCiAjZGVm
aW5lIFBDSV9IRUFERVJfVFlQRV9NVUxUSUZVTkMgICAgMHg4MAotI2RlZmluZSBQQ0lFX0xJTktf
V0lEVEhfTUFTSyAgICAgICAgIDB4M0YwCi0jZGVmaW5lIFBDSUVfTElOS19XSURUSF9TSElGVCAg
ICAgICAgNAogCiAjZGVmaW5lIFBIWV9SRVZJU0lPTl9NQVNLICAgICAgMHhGRkZGRkZGMAogI2Rl
ZmluZSBNQVhfUEhZX1JFR19BRERSRVNTICAgIDB4MUYgIC8qIDUgYml0IGFkZHJlc3MgYnVzICgw
LTB4MUYpICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUv
bWFjLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbWFjLmMKaW5kZXggNWRm
N2FkOTNmM2Q3Li41MzQwY2Y3Mzc3OGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2UxMDAwZS9tYWMuYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvbWFjLmMKQEAgLTEsNiArMSw4IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMAogLyogQ29weXJpZ2h0KGMpIDE5OTkgLSAyMDE4IEludGVsIENvcnBvcmF0aW9uLiAqLwog
CisjaW5jbHVkZSA8bGludXgvYml0ZmllbGQuaD4KKwogI2luY2x1ZGUgImUxMDAwLmgiCiAKIC8q
KgpAQCAtMjUsOSArMjcsOCBAQCBzMzIgZTEwMDBlX2dldF9idXNfaW5mb19wY2llKHN0cnVjdCBl
MTAwMF9odyAqaHcpCiAJCXBjaV9yZWFkX2NvbmZpZ193b3JkKGFkYXB0ZXItPnBkZXYsCiAJCQkJ
ICAgICBjYXBfb2Zmc2V0ICsgUENJRV9MSU5LX1NUQVRVUywKIAkJCQkgICAgICZwY2llX2xpbmtf
c3RhdHVzKTsKLQkJYnVzLT53aWR0aCA9IChlbnVtIGUxMDAwX2J1c193aWR0aCkoKHBjaWVfbGlu
a19zdGF0dXMgJgotCQkJCQkJICAgICBQQ0lFX0xJTktfV0lEVEhfTUFTSykgPj4KLQkJCQkJCSAg
ICBQQ0lFX0xJTktfV0lEVEhfU0hJRlQpOworCQlidXMtPndpZHRoID0gKGVudW0gZTEwMDBfYnVz
X3dpZHRoKUZJRUxEX0dFVChQQ0lfRVhQX0xOS1NUQV9OTFcsCisJCQkJCQkJICAgICBwY2llX2xp
bmtfc3RhdHVzKTsKIAl9CiAKIAltYWMtPm9wcy5zZXRfbGFuX2lkKGh3KTsKLS0gCjIuMzAuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
