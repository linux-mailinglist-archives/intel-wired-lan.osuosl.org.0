Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 825EC6D0E9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 21:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18C4B6168F;
	Thu, 30 Mar 2023 19:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18C4B6168F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680204059;
	bh=9HEZDa5BRHDM+IVSdB/WEXxpOHlk7mkmqUI6z+twGMA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9xs1k6GEn128hVFdCMNUPFpdycb54ZVXHhjMS40d9qId/ClMrYlWbuNvaxePObVIo
	 rN2zh93YFFLscAQa2kFUUYtn5iBXnN/cGN3h69Zuy4VkJ1SeH0qjEO9oX0LIFpda3Y
	 tOuWoJYx/+bbkSJJP9iXdK9cU9njI7uhlp8EuMnnoiRoD4/42r/W+iI16VTpvfEGYb
	 8PlI7OWdKOwYSIA8g1ZeW1QYGXSanzOhKk32C/CwA/+xsGjH15daynnbrbQOjlj/9v
	 Z3dLiIB28l1Dg6uCMjbrC1bO1nk4m5r76Fe3HcAOctUyMiEW1SHXMeNTIv3HhrBuuy
	 1LKRvzikp98Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hTcCg-0awafk; Thu, 30 Mar 2023 19:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D005960BC5;
	Thu, 30 Mar 2023 19:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D005960BC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1E4B1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A1FE404A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A1FE404A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1p2j4EcfnUMD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 19:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 693E940298
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 693E940298
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 19:20:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="320919918"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="320919918"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 12:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="717446122"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="717446122"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.102])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 12:20:50 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Mar 2023 12:20:49 -0700
Message-Id: <20230330192049.18549-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680204051; x=1711740051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=F8FkwMM4PhgFHs7WPvOrQaTKdH0xpaKydctCfcqWrL0=;
 b=CpTIXYXRcu8Px4PX1BOO9G6ZVbbGWkE3Xw4VvgpY8SBGB8N/QV/0BAFD
 t1qAj1vljH7nAYRL9zRLR0gkbyu4A4IcSqzqNKOw11Gy3zrChOPnHVJTf
 Bg/8wGQ9LlMeyQnxBBoGzSUFIrOI+I/ufDzHsDj4XE04ufDccTx3rsdh6
 i7wTflKzOg4GdTind3cHKUB9QrYfcby5ykOgXAXssyQ43D42LUJp62bfi
 cpB7g0pJrdZ2up5ySLL/RzibO0zZzzOfAVFVqONzxbght6tjvdcaf1cef
 JK383LGJe3zf6uiLniIzemrVi4bUr/uFRIcR1CEMdRMLH/xStr8CFnEaU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CpTIXYXR
Subject: [Intel-wired-lan] [PATCH net v2] ice: refactor to remove not needed
 packing
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

QWZ0ZXIgdGhlIGNoYW5nZXMgdG8gdGhlIHN0cnVjdHVyZXMgdG8gbWFrZSB0aGVtIGZsZXggYXJy
YXkgc2FmZSwKcGFja2luZyBpcyBubyBsb25nZXIgbmVjZXNzYXJ5LgoKdG8gcmVwcm9kdWNlOgpt
YWtlIEVYVFJBX0NGTEFHUz0tV3BhY2tlZCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlLmtvCgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb250cm9scS5oOjcsCiAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5cGUuaDoxNCwKICAgICAgICAgICAgICAgICBmcm9tIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaDo1OToKZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmg6NjE4OjE6IHdhcm5pbmc6IHBhY2tlZCBhdHRy
aWJ1dGUgaXMgdW5uZWNlc3NhcnkgZm9yIOKAmGljZV9hcWNfc3dfcnVsZXNfZWxlbV9oZHLigJkg
Wy1XcGFja2VkXQogIDYxOCB8IH0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVvZihfX2xlMTYpKTsK
ICAgICAgfCBeCmRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYWRtaW5xX2NtZC5o
OjcwNToxOiB3YXJuaW5nOiBwYWNrZWQgYXR0cmlidXRlIGlzIHVubmVjZXNzYXJ5IGZvciDigJhp
Y2Vfc3dfcnVsZV9sa3VwX3J4X3R44oCZIFstV3BhY2tlZF0KICA3MDUgfCB9IF9fcGFja2VkIF9f
YWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAgICAgIHwgXgpkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaDo3Njc6MTogd2FybmluZzogcGFja2VkIGF0dHJpYnV0
ZSBpcyB1bm5lY2Vzc2FyeSBmb3Ig4oCYaWNlX3N3X3J1bGVfbGdfYWN04oCZIFstV3BhY2tlZF0K
ICA3NjcgfCB9IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAgICAgIHwgXgpk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaDo3Nzk6MTogd2Fy
bmluZzogcGFja2VkIGF0dHJpYnV0ZSBpcyB1bm5lY2Vzc2FyeSBmb3Ig4oCYaWNlX3N3X3J1bGVf
dnNpX2xpc3TigJkgWy1XcGFja2VkXQogIDc3OSB8IH0gX19wYWNrZWQgX19hbGlnbmVkKHNpemVv
ZihfX2xlMTYpKTsKICAgICAgfCBeCgpGaXhlczogNmUxZmY2MTg3MzdhICgiaWNlOiBmaXggYWNj
ZXNzLWJleW9uZC1lbmQgaW4gdGhlIHN3aXRjaCBjb2RlIikKU2lnbmVkLW9mZi1ieTogSmVzc2Ug
QnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+Ci0tLQp2Mjogc2VuZCB0byBu
ZXQgaW5zdGVhZCBvZiBuZXQtbmV4dAotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfYWRtaW5xX2NtZC5oIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfYWRtaW5xX2NtZC5oCmluZGV4IDgzOGQ5YjI3NGQ2OC4uNzQ2MGRjYWY2NDczIDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQu
aAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2FkbWlucV9jbWQuaApA
QCAtNjE1LDcgKzYxNSw3IEBAIHN0cnVjdCBpY2VfYXFjX3N3X3J1bGVzX2VsZW1faGRyIHsKICNk
ZWZpbmUgSUNFX0FRQ19TV19SVUxFU19UX1BSVU5FX0xJU1RfU0VUCTB4NQogI2RlZmluZSBJQ0Vf
QVFDX1NXX1JVTEVTX1RfUFJVTkVfTElTVF9DTEVBUgkweDYKIAlfX2xlMTYgc3RhdHVzOwotfSBf
X3BhY2tlZCBfX2FsaWduZWQoc2l6ZW9mKF9fbGUxNikpOworfSBfX2FsaWduZWQoc2l6ZW9mKF9f
bGUxNikpOwogCiAvKiBBZGQvVXBkYXRlL0dldC9SZW1vdmUgbG9va3VwIFJ4L1R4IGNvbW1hbmQv
cmVzcG9uc2UgZW50cnkKICAqIFRoaXMgc3RydWN0dXJlcyBkZXNjcmliZXMgdGhlIGxvb2t1cCBy
dWxlcyBhbmQgYXNzb2NpYXRlZCBhY3Rpb25zLiAiaW5kZXgiCkBAIC03MDIsNyArNzAyLDcgQEAg
c3RydWN0IGljZV9zd19ydWxlX2xrdXBfcnhfdHggewogCSAqLwogCV9fbGUxNiBoZHJfbGVuOwog
CXU4IGhkcl9kYXRhW107Ci19IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7Cit9
IF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAKIC8qIEFkZC9VcGRhdGUvUmVtb3ZlIGxhcmdl
IGFjdGlvbiBjb21tYW5kL3Jlc3BvbnNlIGVudHJ5CiAgKiAiaW5kZXgiIGlzIHJldHVybmVkIGFz
IHBhcnQgb2YgYSByZXNwb25zZSB0byBhIHN1Y2Nlc3NmdWwgQWRkIGNvbW1hbmQsIGFuZApAQCAt
NzY0LDcgKzc2NCw3IEBAIHN0cnVjdCBpY2Vfc3dfcnVsZV9sZ19hY3QgewogI2RlZmluZSBJQ0Vf
TEdfQUNUX1NUQVRfQ09VTlRfUwkJMwogI2RlZmluZSBJQ0VfTEdfQUNUX1NUQVRfQ09VTlRfTQkJ
KDB4N0YgPDwgSUNFX0xHX0FDVF9TVEFUX0NPVU5UX1MpCiAJX19sZTMyIGFjdFtdOyAvKiBhcnJh
eSBvZiBzaXplIGZvciBhY3Rpb25zICovCi19IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19s
ZTE2KSk7Cit9IF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7CiAKIC8qIEFkZC9VcGRhdGUvUmVt
b3ZlIFZTSSBsaXN0IGNvbW1hbmQvcmVzcG9uc2UgZW50cnkKICAqICJpbmRleCIgaXMgcmV0dXJu
ZWQgYXMgcGFydCBvZiBhIHJlc3BvbnNlIHRvIGEgc3VjY2Vzc2Z1bCBBZGQgY29tbWFuZCwgYW5k
CkBAIC03NzYsNyArNzc2LDcgQEAgc3RydWN0IGljZV9zd19ydWxlX3ZzaV9saXN0IHsKIAlfX2xl
MTYgaW5kZXg7IC8qIEluZGV4IG9mIFZTSS9QcnVuZSBsaXN0ICovCiAJX19sZTE2IG51bWJlcl92
c2k7CiAJX19sZTE2IHZzaVtdOyAvKiBBcnJheSBvZiBudW1iZXJfdnNpIFZTSSBudW1iZXJzICov
Ci19IF9fcGFja2VkIF9fYWxpZ25lZChzaXplb2YoX19sZTE2KSk7Cit9IF9fYWxpZ25lZChzaXpl
b2YoX19sZTE2KSk7CiAKIC8qIFF1ZXJ5IFBGQyBNb2RlIChkaXJlY3QgMHgwMzAyKQogICogU2V0
IFBGQyBNb2RlIChkaXJlY3QgMHgwMzAzKQotLSAKMi4zOS4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
