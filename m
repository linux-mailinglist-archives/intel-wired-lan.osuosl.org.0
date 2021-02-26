Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 349F2326988
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 825744F0AB;
	Fri, 26 Feb 2021 21:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0QTer8Wbf8HN; Fri, 26 Feb 2021 21:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64D3F4F0C1;
	Fri, 26 Feb 2021 21:29:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 163331BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD7F24342C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJnOhxAnOcpY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:29:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A9504341A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:59 +0000 (UTC)
IronPort-SDR: DWrrN6xFrED/63R6obm0sLgzRZwN2PLCUfr674oOppU374ZfEScbEPXYZrbokwL7iHrdzmsOOy
 UqKa5Puh6ivw==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="186117852"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="186117852"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:57 -0800
IronPort-SDR: sBaNBB06V2O6wPlN8yDdd1fJ5k3Cu7HfmrX2h3DKiPGybJCP6jh+GPgt2MTmFYC0vWKy0PHLIK
 MxY+Jq9q1I1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913468"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:56 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:29 -0800
Message-Id: <20210226211932.46683-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 10/13] ice: Fix for dereference of
 NULL pointer
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmFjZWsgQnXFgmF0ZWsgPGphY2VreC5idWxhdGVrQGludGVsLmNvbT4KCkFkZCBoYW5k
bGluZyBvZiBhbGxvY2F0aW9uIGZhdWx0IGZvciBpY2VfdnNpX2xpc3RfbWFwX2luZm8uCgpBbHNv
ICpmaSBzaG91bGQgbm90IGJlIE5VTEwgcG9pbnRlciwgaXQgaXMgYSByZWZlcmVuY2UgdG8gcmF3
CmRhdGEgZmllbGQsIHNvIHJlbW92ZSB0aGlzIHZhcmlhYmxlIGFuZCB1c2UgdGhlIHJlZmVyZW5j
ZQpkaXJlY3RseS4KCkZpeGVzOiA5ZGFmODIwOGRkNGQgKCJpY2U6IEFkZCBzdXBwb3J0IGZvciBz
d2l0Y2ggZmlsdGVyIHByb2dyYW1taW5nIikKU2lnbmVkLW9mZi1ieTogSmFjZWsgQnXFgmF0ZWsg
PGphY2VreC5idWxhdGVrQGludGVsLmNvbT4KQ28tZGV2ZWxvcGVkLWJ5OiBIYWl5dWUgV2FuZyA8
aGFpeXVlLndhbmdAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBIYWl5dWUgV2FuZyA8aGFpeXVl
LndhbmdAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9z
d2l0Y2guYyB8IDEyICsrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3N3aXRjaC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9z
d2l0Y2guYwppbmRleCA2N2M5NjVhM2Y1ZDIuLjM4N2QzZjZjZDcxZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYworKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jCkBAIC0xMjM4LDYgKzEyMzgsOSBAQCBp
Y2VfYWRkX3VwZGF0ZV92c2lfbGlzdChzdHJ1Y3QgaWNlX2h3ICpodywKIAkJCWljZV9jcmVhdGVf
dnNpX2xpc3RfbWFwKGh3LCAmdnNpX2hhbmRsZV9hcnJbMF0sIDIsCiAJCQkJCQl2c2lfbGlzdF9p
ZCk7CiAKKwkJaWYgKCFtX2VudHJ5LT52c2lfbGlzdF9pbmZvKQorCQkJcmV0dXJuIElDRV9FUlJf
Tk9fTUVNT1JZOworCiAJCS8qIElmIHRoaXMgZW50cnkgd2FzIGxhcmdlIGFjdGlvbiB0aGVuIHRo
ZSBsYXJnZSBhY3Rpb24gbmVlZHMKIAkJICogdG8gYmUgdXBkYXRlZCB0byBwb2ludCB0byBGV0Qg
dG8gVlNJIGxpc3QKIAkJICovCkBAIC0yMjIwLDYgKzIyMjMsNyBAQCBpY2VfdnNpX3VzZXNfZmx0
cihzdHJ1Y3QgaWNlX2ZsdHJfbWdtdF9saXN0X2VudHJ5ICpmbV9lbnRyeSwgdTE2IHZzaV9oYW5k
bGUpCiAJcmV0dXJuICgoZm1fZW50cnktPmZsdHJfaW5mby5mbHRyX2FjdCA9PSBJQ0VfRldEX1RP
X1ZTSSAmJgogCQkgZm1fZW50cnktPmZsdHJfaW5mby52c2lfaGFuZGxlID09IHZzaV9oYW5kbGUp
IHx8CiAJCShmbV9lbnRyeS0+Zmx0cl9pbmZvLmZsdHJfYWN0ID09IElDRV9GV0RfVE9fVlNJX0xJ
U1QgJiYKKwkJIGZtX2VudHJ5LT52c2lfbGlzdF9pbmZvICYmCiAJCSAodGVzdF9iaXQodnNpX2hh
bmRsZSwgZm1fZW50cnktPnZzaV9saXN0X2luZm8tPnZzaV9tYXApKSkpOwogfQogCkBAIC0yMjky
LDE0ICsyMjk2LDEyIEBAIGljZV9hZGRfdG9fdnNpX2ZsdHJfbGlzdChzdHJ1Y3QgaWNlX2h3ICpo
dywgdTE2IHZzaV9oYW5kbGUsCiAJCXJldHVybiBJQ0VfRVJSX1BBUkFNOwogCiAJbGlzdF9mb3Jf
ZWFjaF9lbnRyeShmbV9lbnRyeSwgbGt1cF9saXN0X2hlYWQsIGxpc3RfZW50cnkpIHsKLQkJc3Ry
dWN0IGljZV9mbHRyX2luZm8gKmZpOwotCi0JCWZpID0gJmZtX2VudHJ5LT5mbHRyX2luZm87Ci0J
CWlmICghZmkgfHwgIWljZV92c2lfdXNlc19mbHRyKGZtX2VudHJ5LCB2c2lfaGFuZGxlKSkKKwkJ
aWYgKCFpY2VfdnNpX3VzZXNfZmx0cihmbV9lbnRyeSwgdnNpX2hhbmRsZSkpCiAJCQljb250aW51
ZTsKIAogCQlzdGF0dXMgPSBpY2VfYWRkX2VudHJ5X3RvX3ZzaV9mbHRyX2xpc3QoaHcsIHZzaV9o
YW5kbGUsCi0JCQkJCQkJdnNpX2xpc3RfaGVhZCwgZmkpOworCQkJCQkJCXZzaV9saXN0X2hlYWQs
CisJCQkJCQkJJmZtX2VudHJ5LT5mbHRyX2luZm8pOwogCQlpZiAoc3RhdHVzKQogCQkJcmV0dXJu
IHN0YXR1czsKIAl9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
