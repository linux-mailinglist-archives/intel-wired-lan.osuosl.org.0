Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 380997A4B9D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:19:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8C536150A;
	Mon, 18 Sep 2023 15:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8C536150A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050366;
	bh=GruiVYM5ft1gm5Ve2i4/KQ+1EWqZhhOUjuTcupQYZ4I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YvbLocq4eybAjKU5px+EE6zoKBkpy8taEhAFoXLgiYJrMAfZmNNdiPvxpSfJ8u+/3
	 9BUEUGNmPf8q/gwbpF6IgImeotdng2hulm/S+Z9RUBnPl2pT+sZSv8xowdVxkrSWs3
	 PxVOIt5iSP/5mu3C1WaPDi45imY2ZmdqvY/wMqh/wapFhuUhv6680eKlmJbbM+7VpM
	 hqwwCQ+odYP/p3+8OJQz1tvuKPuj6+ubLNmChJfOfGWlYHD/pvZUMoPyNJi2WnGi49
	 9td7rsIxl824UXJ7aNA0+i3UtkyXYGyzczdjWRmH57ZFhTmIKi9bCIL5mAatNVYV/D
	 c3BJ2zKCJXJSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iaWZhhysJLQT; Mon, 18 Sep 2023 15:19:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC770611D0;
	Mon, 18 Sep 2023 15:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC770611D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B5451BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 64E1B81F20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64E1B81F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CtDqydXFWnTJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:21:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8D8EA81F28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:21:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D8EA81F28
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113630"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113630"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811343130"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811343130"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:13:47 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org
Date: Mon, 18 Sep 2023 16:11:02 +0300
Message-Id: <20230918131103.24119-13-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043261; x=1726579261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kDT+yWJAUHrBQ8ex5Uxk7tCrxharMirq80UQzoJeAvk=;
 b=PH3uJn5KxRlNptTK67GmUtd8pVFpltH1rbyt0syGB5WIdZ9ZppJgcasR
 PFynEQJ8htVKprMS9xtwiSnOpfioK08C/MfmgEz5I4Vb0ML5pRMMYbCee
 sP15awkNLeF+g2pIkQeXILtdzt3RoHPz7kagAbxtLWs3wkhYx0vz7jD80
 XbTuxrvaXOmQjtWrgOAH/wDE6OfSE4WtkcpT/bI0MOaqb6Ktd8XzhZ282
 9dL4Gc+461nzo8zV4KhqJM98Q1oBHn/bECyyyavYh9nkmrSzty3V5TIFm
 aQQvV8DjPi62mw0fBuVVd02ucor/RyjssZpd69SF62YfO47AkpdOZWeNa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PH3uJn5K
Subject: [Intel-wired-lan] [PATCH v2 12/13] RDMA/hfi1: Use
 pci_disable/enable_link_state()
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
Cc: Dean Luick <dean.luick@cornelisnetworks.com>, ath12k@lists.infradead.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, linux-bluetooth@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-mediatek@lists.infradead.org, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SUIvaGZpMSBkcml2ZXIgYWRqdXN0cyBBU1BNIHN0YXRlIGl0c2VsZiB3aGljaCBsZWF2ZXMgQVNQ
TSBzZXJ2aWNlCmRyaXZlciBpbiBQQ0kgY29yZSB1bmF3YXJlIG9mIHRoZSBsaW5rIHN0YXRlIGNo
YW5nZXMgdGhlIGRyaXZlcgppbXBsZW1lbnRlZC4KCkNhbGwgcGNpX2Rpc2FibGVfbGlua19zdGF0
ZSgpIGFuZCBwY2lfZW5hYmxlX2xpbmtfc3RhdGUoKSBpbnN0ZWFkIG9mCmFkanVzdGluZyBBU1BN
QyBmaWVsZCBpbiBMTktDVEwgZGlyZWN0bHkgaW4gdGhlIGRyaXZlciBhbmQgbGV0IFBDSSBjb3Jl
CmhhbmRsZSB0aGUgQVNQTSBzdGF0ZSBtYW5hZ2VtZW50LiBSZW1vdmUgdGhlIGZ1bmN0aW9ucyB0
aGF0IGhhbmRsZWQgdGhlCkFTUE0gY2hhbmdlcyB0aGF0IGFyZSBub3cgdW5uZWNlc3NhcnkuCgpT
aWduZWQtb2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBEZWFuIEx1aWNrIDxkZWFuLmx1aWNrQGNvcm5lbGlzbmV0d29ya3Mu
Y29tPgotLS0KIGRyaXZlcnMvaW5maW5pYmFuZC9ody9oZmkxL2FzcG0uYyB8IDM4ICsrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvaW5maW5pYmFuZC9ody9oZmkxL3BjaWUu
YyB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMzYgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvYXNwbS5jIGIvZHJp
dmVycy9pbmZpbmliYW5kL2h3L2hmaTEvYXNwbS5jCmluZGV4IGEzYzUzYmU0MDcyYy4uOGUzZmMx
ZDRjOWM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvaHcvaGZpMS9hc3BtLmMKKysr
IGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvYXNwbS5jCkBAIC01NCw0NSArNTQsMTMgQEAg
c3RhdGljIHZvaWQgYXNwbV9od19zZXRfbDFfZW50X2xhdGVuY3koc3RydWN0IGhmaTFfZGV2ZGF0
YSAqZGQpCiAJcGNpX3dyaXRlX2NvbmZpZ19kd29yZChkZC0+cGNpZGV2LCBQQ0lFX0NGR19SRUdf
UEwzLCByZWczMik7CiB9CiAKLXN0YXRpYyB2b2lkIGFzcG1faHdfZW5hYmxlX2wxKHN0cnVjdCBo
ZmkxX2RldmRhdGEgKmRkKQotewotCXN0cnVjdCBwY2lfZGV2ICpwYXJlbnQgPSBkZC0+cGNpZGV2
LT5idXMtPnNlbGY7Ci0KLQkvKgotCSAqIElmIHRoZSBkcml2ZXIgZG9lcyBub3QgaGF2ZSBhY2Nl
c3MgdG8gdGhlIHVwc3RyZWFtIGNvbXBvbmVudCwKLQkgKiBpdCBjYW5ub3Qgc3VwcG9ydCBBU1BN
IEwxIGF0IGFsbC4KLQkgKi8KLQlpZiAoIXBhcmVudCkKLQkJcmV0dXJuOwotCi0JLyogRW5hYmxl
IEFTUE0gTDEgZmlyc3QgaW4gdXBzdHJlYW0gY29tcG9uZW50IGFuZCB0aGVuIGRvd25zdHJlYW0g
Ki8KLQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfYW5kX3NldF93b3JkKHBhcmVudCwgUENJX0VYUF9M
TktDVEwsCi0JCQkJCSAgIFBDSV9FWFBfTE5LQ1RMX0FTUE1DLAotCQkJCQkgICBQQ0lfRVhQX0xO
S0NUTF9BU1BNX0wxKTsKLQlwY2llX2NhcGFiaWxpdHlfY2xlYXJfYW5kX3NldF93b3JkKGRkLT5w
Y2lkZXYsIFBDSV9FWFBfTE5LQ1RMLAotCQkJCQkgICBQQ0lfRVhQX0xOS0NUTF9BU1BNQywKLQkJ
CQkJICAgUENJX0VYUF9MTktDVExfQVNQTV9MMSk7Ci19Ci0KLXZvaWQgYXNwbV9od19kaXNhYmxl
X2wxKHN0cnVjdCBoZmkxX2RldmRhdGEgKmRkKQotewotCXN0cnVjdCBwY2lfZGV2ICpwYXJlbnQg
PSBkZC0+cGNpZGV2LT5idXMtPnNlbGY7Ci0KLQkvKiBEaXNhYmxlIEFTUE0gTDEgZmlyc3QgaW4g
ZG93bnN0cmVhbSBjb21wb25lbnQgYW5kIHRoZW4gdXBzdHJlYW0gKi8KLQlwY2llX2NhcGFiaWxp
dHlfY2xlYXJfYW5kX3NldF93b3JkKGRkLT5wY2lkZXYsIFBDSV9FWFBfTE5LQ1RMLAotCQkJCQkg
ICBQQ0lfRVhQX0xOS0NUTF9BU1BNQywgMHgwKTsKLQlpZiAocGFyZW50KQotCQlwY2llX2NhcGFi
aWxpdHlfY2xlYXJfYW5kX3NldF93b3JkKHBhcmVudCwgUENJX0VYUF9MTktDVEwsCi0JCQkJCQkg
ICBQQ0lfRVhQX0xOS0NUTF9BU1BNQywgMHgwKTsKLX0KLQogc3RhdGljICB2b2lkIGFzcG1fZW5h
YmxlKHN0cnVjdCBoZmkxX2RldmRhdGEgKmRkKQogewogCWlmIChkZC0+YXNwbV9lbmFibGVkIHx8
IGFzcG1fbW9kZSA9PSBBU1BNX01PREVfRElTQUJMRUQgfHwKIAkgICAgIWRkLT5hc3BtX3N1cHBv
cnRlZCkKIAkJcmV0dXJuOwogCi0JYXNwbV9od19lbmFibGVfbDEoZGQpOworCXBjaV9lbmFibGVf
bGlua19zdGF0ZShkZC0+cGNpZGV2LCBQQ0lfRVhQX0xOS0NUTF9BU1BNX0wxKTsKIAlkZC0+YXNw
bV9lbmFibGVkID0gdHJ1ZTsKIH0KIApAQCAtMTAxLDcgKzY5LDcgQEAgc3RhdGljICB2b2lkIGFz
cG1fZGlzYWJsZShzdHJ1Y3QgaGZpMV9kZXZkYXRhICpkZCkKIAlpZiAoIWRkLT5hc3BtX2VuYWJs
ZWQgfHwgYXNwbV9tb2RlID09IEFTUE1fTU9ERV9FTkFCTEVEKQogCQlyZXR1cm47CiAKLQlhc3Bt
X2h3X2Rpc2FibGVfbDEoZGQpOworCXBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoZGQtPnBjaWRldiwg
UENJRV9MSU5LX1NUQVRFX0wwUyB8IFBDSUVfTElOS19TVEFURV9MMSk7CiAJZGQtPmFzcG1fZW5h
YmxlZCA9IGZhbHNlOwogfQogCkBAIC0yNTQsNyArMjIyLDcgQEAgdm9pZCBhc3BtX2luaXQoc3Ry
dWN0IGhmaTFfZGV2ZGF0YSAqZGQpCiAJLyogU3RhcnQgd2l0aCBBU1BNIGRpc2FibGVkICovCiAJ
YXNwbV9od19zZXRfbDFfZW50X2xhdGVuY3koZGQpOwogCWRkLT5hc3BtX2VuYWJsZWQgPSBmYWxz
ZTsKLQlhc3BtX2h3X2Rpc2FibGVfbDEoZGQpOworCXBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoZGQt
PnBjaWRldiwgUENJRV9MSU5LX1NUQVRFX0wwUyB8IFBDSUVfTElOS19TVEFURV9MMSk7CiAKIAkv
KiBOb3cgdHVybiBvbiBBU1BNIGlmIGNvbmZpZ3VyZWQgKi8KIAlhc3BtX2VuYWJsZV9hbGwoZGQp
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvcGNpZS5jIGIvZHJpdmVy
cy9pbmZpbmliYW5kL2h3L2hmaTEvcGNpZS5jCmluZGV4IDA4NzMyZTFhYzk2Ni4uNzY3ZjZjYjc3
MGI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvaHcvaGZpMS9wY2llLmMKKysrIGIv
ZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvcGNpZS5jCkBAIC0xMTgyLDcgKzExODIsNyBAQCBp
bnQgZG9fcGNpZV9nZW4zX3RyYW5zaXRpb24oc3RydWN0IGhmaTFfZGV2ZGF0YSAqZGQpCiAJICog
d2lsbCBiZSBlbmFibGVkIGlmIHJlcXVpcmVkIGxhdGVyCiAJICovCiAJZGRfZGV2X2luZm8oZGQs
ICIlczogY2xlYXJpbmcgQVNQTVxuIiwgX19mdW5jX18pOwotCWFzcG1faHdfZGlzYWJsZV9sMShk
ZCk7CisJcGNpX2Rpc2FibGVfbGlua19zdGF0ZShkZC0+cGNpZGV2LCBQQ0lFX0xJTktfU1RBVEVf
TDBTIHwgUENJRV9MSU5LX1NUQVRFX0wxKTsKIAogCS8qCiAJICogc3RlcCA1ZjogY2xlYXIgRGly
ZWN0U3BlZWRDaGFuZ2UKLS0gCjIuMzAuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
