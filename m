Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE7B7A67AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Sep 2023 17:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31D2661238;
	Tue, 19 Sep 2023 15:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31D2661238
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695136315;
	bh=6COXQNTtT/M3rcxI9Mhpe2oLxBecq3pCEFPJxhwKS2U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6q6z6wNpUzSNF7xvpHBS28wcFIhRucdpRWH/oXBQx6dNkhiHe7CjI3PYDgkHiSsOy
	 xpmMr4etlkFW9jGuIcBgwcj3YIhzX4Kx0LMtUJ9smwqUyullHfYtNKCf++r/HqsEaB
	 4rFnaUyhi9lUpirkUr03vge4JWFW6bmuvycmi7uRaZdMWlK3sCeWLyJoKhu0kpHYnh
	 C4E5ns51+raB2FIvRmDDoKTjZDmcj3BJBqM+MZh9PJ04COyIN/1IH9AjtkRkIumcTu
	 8jeqJMF2N1QJ51N1k3ITfvEHvD+2YAiow8m6yU7V9AvfthHDV/ExhPYvU8hVxXZpgN
	 Te6zpP05fqO/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vBi5liVEWvWG; Tue, 19 Sep 2023 15:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B190660FDA;
	Tue, 19 Sep 2023 15:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B190660FDA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 420C51BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 171E583AB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 171E583AB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3A4h_krGDh1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 12:57:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5571F83AAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 12:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5571F83AAF
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359324651"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="359324651"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 05:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746228767"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="746228767"
Received: from vdesserx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.32.31])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 05:57:10 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 19 Sep 2023 15:56:43 +0300
Message-Id: <20230919125648.1920-4-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
References: <20230919125648.1920-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Sep 2023 15:11:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695128236; x=1726664236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQpj7OaTDonluY2E3OGQf5kVh3FqltWnatkxOc0duHk=;
 b=d1kvtYOB5g/QMgVs25a8jJ48QvkZWCKtXPTL0kjhnneF9bDKClvNAugm
 q4Em0DRvOHfn80VXN3PoQ62hG8RmM+u05IIShhgs1huKSK3O924dokRtJ
 wyAP2sU6j7rTfGYOyWtbyvdT1ATdxpO4B3g3l58BrcKsrZuQdrV9V4oCE
 u+kvfFsNuyA8hS1mGKBAfKgwD3vZnQg3w6LRpY0ewM/MwdW3NAQp99GKR
 U2/Ps9zCj11c5x//0mvlGaDQRGp2LOYikRCJOqKsVXYzDomnuZzeGQ2V/
 WhBE1W9Z/EnuQRw+GcUyNYO+9dlcuauLbuCSkmo19pQvOkpGhriCxsTxM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d1kvtYOB
Subject: [Intel-wired-lan] [PATCH v3 3/8] igb: Use FIELD_GET() to extract
 Link Width
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

VXNlIEZJRUxEX0dFVCgpIHRvIGV4dHJhY3QgUENJZSBOZWdvdGlhdGVkIExpbmsgV2lkdGggZmll
bGQgaW5zdGVhZCBvZgpjdXN0b20gbWFza2luZyBhbmQgc2hpZnRpbmcuCgpTaWduZWQtb2ZmLWJ5
OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBKb25hdGhhbiBDYW1lcm9uIDxKb25hdGhhbi5DYW1lcm9uQGh1YXdlaS5jb20+Ci0tLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX21hYy5jIHwgNiArKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX21hYy5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX21hYy5jCmluZGV4IGNhZjkxYzZmNTJiNC4uNWEy
M2I5Y2ZlYzZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvZTEw
MDBfbWFjLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2UxMDAwX21hYy5j
CkBAIC0xLDYgKzEsNyBAQAogLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKIC8q
IENvcHlyaWdodChjKSAyMDA3IC0gMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbi4gKi8KIAorI2luY2x1
ZGUgPGxpbnV4L2JpdGZpZWxkLmg+CiAjaW5jbHVkZSA8bGludXgvaWZfZXRoZXIuaD4KICNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPgogI2luY2x1ZGUgPGxpbnV4L3BjaS5oPgpAQCAtNTAsOSArNTEs
OCBAQCBzMzIgaWdiX2dldF9idXNfaW5mb19wY2llKHN0cnVjdCBlMTAwMF9odyAqaHcpCiAJCQli
cmVhazsKIAkJfQogCi0JCWJ1cy0+d2lkdGggPSAoZW51bSBlMTAwMF9idXNfd2lkdGgpKChwY2ll
X2xpbmtfc3RhdHVzICYKLQkJCQkJCSAgICAgUENJX0VYUF9MTktTVEFfTkxXKSA+PgotCQkJCQkJ
ICAgICBQQ0lfRVhQX0xOS1NUQV9OTFdfU0hJRlQpOworCQlidXMtPndpZHRoID0gKGVudW0gZTEw
MDBfYnVzX3dpZHRoKUZJRUxEX0dFVChQQ0lfRVhQX0xOS1NUQV9OTFcsCisJCQkJCQkJICAgICBw
Y2llX2xpbmtfc3RhdHVzKTsKIAl9CiAKIAlyZWcgPSByZDMyKEUxMDAwX1NUQVRVUyk7Ci0tIAoy
LjMwLjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
