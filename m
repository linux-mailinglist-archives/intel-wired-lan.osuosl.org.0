Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E19B87F2D45
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 13:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEA216104F;
	Tue, 21 Nov 2023 12:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEA216104F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700570114;
	bh=C8gqGlIL7sD4LvgQUPQpo7AqQKrAqrQG6alTKjaCKVk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fj4Df7JgnLTN6MF3Zs4yRoCqz6yGQoBN358QA13bfRpg1GZdyeeYfamSHugUs17BM
	 DvVHyOJuKM00/4fqC+Dw/K1eZjeSNlGzvpujJXphPzhIu7SI/5rlBQxUt4MOTurfXM
	 ok3tfrOPWaQJ6j/xDJR4tYtAhLPcue7wnG2rtzRzCN1vIV82H7tQB0ZAM02G6xG+or
	 n7QvqXpEzR43H0QcIvM6fA+my8QQSkkQyCfT6Zq2FzCojSFx+kx2T+NYQH9oIDeBRp
	 sqaQi4n41QNGzE6WDcyy1wSVSyQiN7BnEkDmf7QxXAUFtyPiGeGgMbOAsUrAlsZCbm
	 HD2+5oqKDzZwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DE6sSRIpLu7; Tue, 21 Nov 2023 12:35:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8755E61054;
	Tue, 21 Nov 2023 12:35:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8755E61054
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 01C3A1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:35:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CEAE36104F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEAE36104F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwdvT4tJD8gS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 12:35:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 434B96105A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 434B96105A
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="10496100"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="10496100"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:35:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="14496390"
Received: from wpastern-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:35:01 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-kernel@vger.kernel.org
Date: Tue, 21 Nov 2023 14:34:27 +0200
Message-Id: <20231121123428.20907-3-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
References: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700570106; x=1732106106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HMH5KEeZn7aezfXFMh9Smzjm5lwAV6MHWZcT0k35UEI=;
 b=NDMrL6u0A19a4BQN7FwVKiBagSxC6K90L+TAke/huAwlnLWOq+6FG/eb
 ElWMdOcuJNJRvoXHIfXPMk7hSpvP1XricaqS4EYY6Elz1yBkKNLPzgADw
 4yI5rKoSGRjlxyKN/ygbau90HVAaprERO1nitMigObYz/5SZYqsq/g4jB
 KSRP4GveBPYV3Y+ytO4ceCzv1qNVzOMTZPsDt1Kt8rPo3IRLy8oEUDvfP
 IS1PwaPiJ0TJR2LV+1UEy8tiC78u/O5KdnOFv50jQ0Mn5eTQzBwNKBgdZ
 V91dYypSOXimqahZ1dmC9hQgNc8podD20zEXc2ScLcGGxbRonHBtaZ/I/
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NDMrL6u0
Subject: [Intel-wired-lan] [PATCH v4 2/3] e1000e: Use PCI_EXP_LNKSTA_NLW &
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
