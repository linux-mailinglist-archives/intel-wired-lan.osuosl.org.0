Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E404879EC31
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Sep 2023 17:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3265A41665;
	Wed, 13 Sep 2023 15:10:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3265A41665
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694617823;
	bh=6COXQNTtT/M3rcxI9Mhpe2oLxBecq3pCEFPJxhwKS2U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uSEetiRhtBiWE8u0Z4umJZXrC6e/F4Uk1J7GrVl+FK5E7HeU/M3x2heuZAaMeBuPP
	 XI9Oo5+Se67Ukk8MXmUmJnjX6JtC7ITjsCijbjWyDLyabmruWB0sok0/LFIS1Bonwb
	 orK3ngxvgj9xcPc1ibK6WsvXRTcRWV9VsKKKGGnTPop8P7W42x/Jpk++nSa9IYU7EE
	 Q4L4fKHQJ2y/atqDiJbiaMCVRHzBY3s1PwXT3bGIs2YfvjViqsgrctDMdHimpIeklq
	 DLrA04EV0sOpWOvp6goyvT0LhmajqhHcesrkUJGL1HtJ+CwmNNmqxe+73s7guZWSjb
	 qvWX5afRzVasQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12EfMcyI4END; Wed, 13 Sep 2023 15:10:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16BD340A16;
	Wed, 13 Sep 2023 15:10:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16BD340A16
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62F2F1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 12:30:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48EB9822AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 12:30:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48EB9822AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxte91mMUiF1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Sep 2023 12:30:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8BAC822A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Sep 2023 12:30:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8BAC822A3
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="368912423"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="368912423"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="693836628"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="693836628"
Received: from pakurapo-mobl3.ger.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.249.45.213])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:28:08 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 13 Sep 2023 15:27:41 +0300
Message-Id: <20230913122748.29530-4-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230913122748.29530-1-ilpo.jarvinen@linux.intel.com>
References: <20230913122748.29530-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 13 Sep 2023 15:10:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694608237; x=1726144237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQpj7OaTDonluY2E3OGQf5kVh3FqltWnatkxOc0duHk=;
 b=WKe5uAxxWW8Vi9vIlVhqdNyHGTlSAipXMVvQeKDSVzrO8fAYGd+CEseJ
 hCgUSam6Ogp8GmKDau9CaHPF8wKBoQyfP94a28ygbi3TMNjpLRXCCQdsG
 7ZoqSP8ZERWpW0J9rnkya/Sy0IeMxN0FPkgHGx165fWwoR+1BGUiIiaUz
 i8zRvLuKjcnHFGCPonSKXbxNeoUqHRVuMPFtgcS38+K3sauwZJQ+phtBR
 R6ab9BCxCJN0nPweD31oeUH+78FiLAUSWwHlODT2hdH312PdgJ0YiCpTl
 4e3rnm0P0pkHEFXC4YF/crBKJ1AKb08HDtW5BMPPrelihsnpv9AL1znTV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WKe5uAxx
Subject: [Intel-wired-lan] [PATCH v2 03/10] igb: Use FIELD_GET() to extract
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
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
