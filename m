Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCD17F2D48
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 13:35:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1FCD61051;
	Tue, 21 Nov 2023 12:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1FCD61051
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700570125;
	bh=WG71fHor28Z6Zuq5a+Eia6plaeofE6G8Kat91BpEpZ8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xyxluH4P8vL9SBdu82nkMDX5C3AJP62wHiYtz0Kh9myWZdE/wIY75dA+gokfcdgfX
	 yq6Y8ASAa9RUObMagPlOTkonbeoLkeKsPQiEbC2nbVEEq+qlsz63nqkx2tAMUdp7wq
	 DXllf+q5HAKeWwJ5CMCN6tAs63y/zMnP/wkMUT48nu4EW4J5MIB+vWHv4cuAU2X803
	 swz9Yb7Zbyjgufmwh7ejZLzvpDTBHZ+BW5+ZJm7gibZyAbpTZB6qoEjmuGvbg7gD+N
	 FP1szie7SRXhZzT06Bb4AENLIXCYyhOWK9NAsWiUltjCRoPRa39NopKQXMDIrwzOTB
	 OYRq2LQgOn6Tg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VpRyOo0KvJ9t; Tue, 21 Nov 2023 12:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C94AA6104C;
	Tue, 21 Nov 2023 12:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C94AA6104C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE4641BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FA3540A82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:35:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8FA3540A82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMkKpnezvte6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 12:35:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8CA9E40468
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CA9E40468
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458327798"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458327798"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:35:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="837044350"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="837044350"
Received: from wpastern-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.17])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:35:13 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-kernel@vger.kernel.org
Date: Tue, 21 Nov 2023 14:34:28 +0200
Message-Id: <20231121123428.20907-4-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
References: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700570118; x=1732106118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nivaZQ+9P0ZV/opmlAd8c2iOR56SU+o3ql7tnZt2R+U=;
 b=D1D9DF/l34RN+o4MhIIZvE1SAi13aICV6oWBa48iBCMBGm23hWQrmP6s
 uEhOGywmxtlqe+LnBE8YkifDTUI3ebqZh1r2Mr7go4q+r01oe7DLCEc5E
 08uZl947mLlAIwL1+ItJzh4uRu1vemyWtfdYjZfOou80tDO4gR02isduV
 23h8BCW6LayfdJNYYVs+dJI02YqxiJJNeFd8PHkVLbI1VNM4KuecguNCF
 w02XkpRkKwck2wNTi1gOH4KawTSZyvwwOKNxzZ+xK0sLMp7FG8RPrrJAQ
 mhfkMRAq1KktgtV2ya3+U7Z4xEoA0CfSYFkDbZkX6z7mh+3igwnmuq+tG
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D1D9DF/l
Subject: [Intel-wired-lan] [PATCH v4 3/3] e1000e: Use
 pcie_capability_read_word() for reading LNKSTA
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

VXNlIHBjaWVfY2FwYWJpbGl0eV9yZWFkX3dvcmQoKSBmb3IgcmVhZGluZyBMTktTVEEgYW5kIHJl
bW92ZSB0aGUKY3VzdG9tIGRlZmluZSB0aGF0IG1hdGNoZXMgdG8gUENJX0VYUF9MTktTVEEuCgpB
cyBvbmx5IHNpbmdsZSB1c2VyIGZvciBjYXBfb2Zmc2V0IHJlbWFpbnMsIHJlcGxhY2UgaXQgd2l0
aCBhIGNhbGwgdG8KcGNpX3BjaWVfY2FwKCkuIEluc3RlYWQgb2YgZTEwMDBfYWRhcHRlciwgbWFr
ZSBsb2NhbCB2YXJpYWJsZSBvdXQgb2YKcGNpX2RldiBiZWNhdXNlIGJvdGggdXNlcnMgYXJlIGlu
dGVyZXN0ZWQgaW4gaXQuCgpTaWduZWQtb2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2
aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb25hdGhhbiBDYW1lcm9uIDxKb25h
dGhhbi5DYW1lcm9uQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
ZTEwMDBlL2RlZmluZXMuaCB8ICAxIC0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9tYWMuYyAgICAgfCAxMSArKysrLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvZTEwMDBlL2RlZmluZXMuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAw
ZS9kZWZpbmVzLmgKaW5kZXggYTRkMjljOWUwM2E2Li4yM2E1OGNhZGE0M2EgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaApAQCAtNjc4LDcgKzY3OCw2IEBA
CiAKIC8qIFBDSS9QQ0ktWC9QQ0ktRVggQ29uZmlnIHNwYWNlICovCiAjZGVmaW5lIFBDSV9IRUFE
RVJfVFlQRV9SRUdJU1RFUiAgICAgMHgwRQotI2RlZmluZSBQQ0lFX0xJTktfU1RBVFVTICAgICAg
ICAgICAgIDB4MTIKIAogI2RlZmluZSBQQ0lfSEVBREVSX1RZUEVfTVVMVElGVU5DICAgIDB4ODAK
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL21hYy5jIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL21hYy5jCmluZGV4IDUzNDBjZjczNzc4
ZC4uNjk0YTc3OWU3MThkIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9l
MTAwMGUvbWFjLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL21hYy5j
CkBAIC0xNywxNiArMTcsMTMgQEAgczMyIGUxMDAwZV9nZXRfYnVzX2luZm9fcGNpZShzdHJ1Y3Qg
ZTEwMDBfaHcgKmh3KQogewogCXN0cnVjdCBlMTAwMF9tYWNfaW5mbyAqbWFjID0gJmh3LT5tYWM7
CiAJc3RydWN0IGUxMDAwX2J1c19pbmZvICpidXMgPSAmaHctPmJ1czsKLQlzdHJ1Y3QgZTEwMDBf
YWRhcHRlciAqYWRhcHRlciA9IGh3LT5hZGFwdGVyOwotCXUxNiBwY2llX2xpbmtfc3RhdHVzLCBj
YXBfb2Zmc2V0OworCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaHctPmFkYXB0ZXItPnBkZXY7CisJ
dTE2IHBjaWVfbGlua19zdGF0dXM7CiAKLQljYXBfb2Zmc2V0ID0gYWRhcHRlci0+cGRldi0+cGNp
ZV9jYXA7Ci0JaWYgKCFjYXBfb2Zmc2V0KSB7CisJaWYgKCFwY2lfcGNpZV9jYXAocGRldikpIHsK
IAkJYnVzLT53aWR0aCA9IGUxMDAwX2J1c193aWR0aF91bmtub3duOwogCX0gZWxzZSB7Ci0JCXBj
aV9yZWFkX2NvbmZpZ193b3JkKGFkYXB0ZXItPnBkZXYsCi0JCQkJICAgICBjYXBfb2Zmc2V0ICsg
UENJRV9MSU5LX1NUQVRVUywKLQkJCQkgICAgICZwY2llX2xpbmtfc3RhdHVzKTsKKwkJcGNpZV9j
YXBhYmlsaXR5X3JlYWRfd29yZChwZGV2LCBQQ0lfRVhQX0xOS1NUQSwgJnBjaWVfbGlua19zdGF0
dXMpOwogCQlidXMtPndpZHRoID0gKGVudW0gZTEwMDBfYnVzX3dpZHRoKUZJRUxEX0dFVChQQ0lf
RVhQX0xOS1NUQV9OTFcsCiAJCQkJCQkJICAgICBwY2llX2xpbmtfc3RhdHVzKTsKIAl9Ci0tIAoy
LjMwLjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
