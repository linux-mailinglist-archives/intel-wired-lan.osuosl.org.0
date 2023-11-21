Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AFB7F2D41
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 13:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48FC461051;
	Tue, 21 Nov 2023 12:35:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48FC461051
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700570103;
	bh=6COXQNTtT/M3rcxI9Mhpe2oLxBecq3pCEFPJxhwKS2U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iQDkVyp2YEXIWxUhX0yGw5V29dWIO9AHYcIbVAjl+QSJAHC8fipFzsd2R0ITg6u1L
	 Z/666XtUEoW8QZS3Or4TXCUQiMXc0twU5Iffq5WJpu19z5AKGu8o3+xYLQuuOHSPmM
	 Hp3zifxIZr34QArgePbwPa0DoJMRohQGFEJJp/D6aTb8GEcMH6swbqg20zqZRnW89p
	 42KKwvkUp241YS1LTy55RcTNIUDvJzZH6VCDG32puY8v1uPW8Nxhj1MUPYwKmlWL5B
	 QAs/hGigfgINYt6xDx0JZM8ODJqgF7FxG7d3eovPF0XAx/T8U4eAfpkfDF8a0XbD5X
	 dtW0797t6146Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-EAGg_Wp10v; Tue, 21 Nov 2023 12:35:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F57961052;
	Tue, 21 Nov 2023 12:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F57961052
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0E901BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A26840276
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:34:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A26840276
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MM5cGDu6x_iK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 12:34:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DDB04007B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DDB04007B
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="10496060"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="10496060"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:34:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="14496367"
Received: from wpastern-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:34:50 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-kernel@vger.kernel.org
Date: Tue, 21 Nov 2023 14:34:26 +0200
Message-Id: <20231121123428.20907-2-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
References: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700570094; x=1732106094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQpj7OaTDonluY2E3OGQf5kVh3FqltWnatkxOc0duHk=;
 b=foBXaPCgyskUKZVugWfEhtAg6wv9tvOnNXr/q/YjPP41K3AnvgVYq7JF
 aceOQ4ZqHkw08XbBkCrNREgxHODCaczubNY9JVQdQS7udH9yIWTMq26Rf
 I2Nvw5CIuhlwZXeh4DyzOLiXjiX7X5mL7E411mvORE5OAf/Nx5kEHwEM4
 HuydYME0RL0LGkTY5hlilc0wKHjldNY60nAT1nAQvQsWl0nnOrINHuK92
 FICoiqbdmpGRz8cosGDCm2TvgYmATatpsHA76GZTP+u83mDXvwQx0k+AW
 yv0D6rvAww7tCWwdvxXh9tjszdUokKlsCXY9wWTqJNvBpDLrIl/1SN1aO
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=foBXaPCg
Subject: [Intel-wired-lan] [PATCH v4 1/3] igb: Use FIELD_GET() to extract
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
