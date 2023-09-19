Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 697C97A67AE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 17:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C59C6162D;
	Tue, 19 Sep 2023 15:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C59C6162D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695136322;
	bh=dElJidpMJ21AMu9ApJY/a27dNREo6z5gc9x2NSzEroE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5CRMDMO/+SrGraS98a2u8cAk8x7tX+6m6NLTNFfyPk2VqDmcUfN7zY+JfiScXAeA8
	 AN/Wo3rdgbS1DRpKfyStWFx6ILfLg3T/RNgeCZP1uRmMiJr/OIKucLq5rb+x1HvzEd
	 q+8xKndMr31bzVX/kigwsxrGRu+8P1kTCr3+bLdzebFh6eiOFUoa9cylheiJoNNJe+
	 ZmG5iu7nVmlGVPhrD8c2EuL+u64siRvnSMROJqDC8Kfvf9TJ4PKsQ6qje76QQLrxQa
	 qG7qAWFCM7G6kZaABIpvfQHuHQ1ZGx+IOeHpj4ZYfOoYF6awdhUx1Z3VkKLGLnwIe1
	 i04QTlbXko7JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T9F1ykDxaPEc; Tue, 19 Sep 2023 15:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9E4D60FA7;
	Tue, 19 Sep 2023 15:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9E4D60FA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 599701BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31AD583927
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31AD583927
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 029ZR69JFHRf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 12:57:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95A0680F73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95A0680F73
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359324752"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="359324752"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 05:57:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746228994"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="746228994"
Received: from vdesserx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.32.31])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 05:57:40 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 19 Sep 2023 15:56:48 +0300
Message-Id: <20230919125648.1920-9-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
References: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Sep 2023 15:11:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695128266; x=1726664266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wybvJEwkKu9h7qtl+C0LlmYtIk8v3lXqyQYeuG0CfZU=;
 b=MHzkjKLYzqXJcklhiogD0oCg2D3DBe7iqQYZXPTuLYF9smjvVYnFFqO6
 5GDtxCtf0Ywi3/04PwEn8Jq9og/8Kr3Q1bxTnIedeVrSPsV8Td8/RsdbG
 Nr5FjnuLyg1nSDJ7B5xbUSxJafLSqCuHDlIhONZ41tKc/bAReReAH1EPr
 ilKZ9/jN+79nN0Xe4L/XemerPv/KvyHgn3jbsD0N8w+0SsLRTSWmFCKJb
 M2+U+/59n9YAWqIlqMD6qWUqjldIb9vnplcsUa/AdXmMCl46ThdYgSJIF
 qFso10t2iAWRRLnmzP2aO3fCPau7Ddoehf9mbAy1K6VKaw3xAGZgXSwff
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MHzkjKLY
Subject: [Intel-wired-lan] [PATCH v3 8/8] e1000e: Use
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
aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2RlZmluZXMuaCB8ICAxIC0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9t
YWMuYyAgICAgfCAxMSArKysrLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvZTEwMDBlL2RlZmluZXMuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9k
ZWZpbmVzLmgKaW5kZXggYTRkMjljOWUwM2E2Li4yM2E1OGNhZGE0M2EgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmgKKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2RlZmluZXMuaApAQCAtNjc4LDcgKzY3OCw2IEBACiAK
IC8qIFBDSS9QQ0ktWC9QQ0ktRVggQ29uZmlnIHNwYWNlICovCiAjZGVmaW5lIFBDSV9IRUFERVJf
VFlQRV9SRUdJU1RFUiAgICAgMHgwRQotI2RlZmluZSBQQ0lFX0xJTktfU1RBVFVTICAgICAgICAg
ICAgIDB4MTIKIAogI2RlZmluZSBQQ0lfSEVBREVSX1RZUEVfTVVMVElGVU5DICAgIDB4ODAKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL21hYy5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL21hYy5jCmluZGV4IDUzNDBjZjczNzc4ZC4u
Njk0YTc3OWU3MThkIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvbWFjLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL21hYy5jCkBA
IC0xNywxNiArMTcsMTMgQEAgczMyIGUxMDAwZV9nZXRfYnVzX2luZm9fcGNpZShzdHJ1Y3QgZTEw
MDBfaHcgKmh3KQogewogCXN0cnVjdCBlMTAwMF9tYWNfaW5mbyAqbWFjID0gJmh3LT5tYWM7CiAJ
c3RydWN0IGUxMDAwX2J1c19pbmZvICpidXMgPSAmaHctPmJ1czsKLQlzdHJ1Y3QgZTEwMDBfYWRh
cHRlciAqYWRhcHRlciA9IGh3LT5hZGFwdGVyOwotCXUxNiBwY2llX2xpbmtfc3RhdHVzLCBjYXBf
b2Zmc2V0OworCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaHctPmFkYXB0ZXItPnBkZXY7CisJdTE2
IHBjaWVfbGlua19zdGF0dXM7CiAKLQljYXBfb2Zmc2V0ID0gYWRhcHRlci0+cGRldi0+cGNpZV9j
YXA7Ci0JaWYgKCFjYXBfb2Zmc2V0KSB7CisJaWYgKCFwY2lfcGNpZV9jYXAocGRldikpIHsKIAkJ
YnVzLT53aWR0aCA9IGUxMDAwX2J1c193aWR0aF91bmtub3duOwogCX0gZWxzZSB7Ci0JCXBjaV9y
ZWFkX2NvbmZpZ193b3JkKGFkYXB0ZXItPnBkZXYsCi0JCQkJICAgICBjYXBfb2Zmc2V0ICsgUENJ
RV9MSU5LX1NUQVRVUywKLQkJCQkgICAgICZwY2llX2xpbmtfc3RhdHVzKTsKKwkJcGNpZV9jYXBh
YmlsaXR5X3JlYWRfd29yZChwZGV2LCBQQ0lfRVhQX0xOS1NUQSwgJnBjaWVfbGlua19zdGF0dXMp
OwogCQlidXMtPndpZHRoID0gKGVudW0gZTEwMDBfYnVzX3dpZHRoKUZJRUxEX0dFVChQQ0lfRVhQ
X0xOS1NUQV9OTFcsCiAJCQkJCQkJICAgICBwY2llX2xpbmtfc3RhdHVzKTsKIAl9Ci0tIAoyLjMw
LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
