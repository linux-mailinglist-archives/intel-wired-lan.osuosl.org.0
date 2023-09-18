Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0394A7A4B96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:19:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97DB3614DB;
	Mon, 18 Sep 2023 15:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97DB3614DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050342;
	bh=3BoHsDQZdhCvwVQrewVMruUBDNs2vdiSmV7nwgKP0i8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2LuNgOSjezYQDq70hl814Ro/+v9pVu/PupqnXLAAtzxGNmh8RP8n75nq0aXJKZKLy
	 Ucj3ulRz2Tq88+LQOlTl+rmAKdYdUJVc55j+nUK/5jeMCkn21tH9DYEYVJkRTpzsEX
	 Wrh0DqLYWIi0Yg9jSGQIDyfSkivgPd4YTp4J9hr27J47DD5axMuMf179GiVB7Hz2lj
	 3FOrkjs8Wq19OrhtTI5dHZfiPUS33NSCLPY9Kyb3acg6BQW2+pCb5MsZnPGp6FM8Iz
	 hNha61XjVu/u7fV/ge3YAxG6LgL5PVkPVltyC/oN5pgQvM35/arl4Crt5kNCEsYDXz
	 xJnILXY1hFlQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbsKG1HI2kAK; Mon, 18 Sep 2023 15:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59D81611D0;
	Mon, 18 Sep 2023 15:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59D81611D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6686A1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FCFC81DD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FCFC81DD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WDltg2unlC58 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:20:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7125C81F0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7125C81F0E
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113439"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113439"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811342282"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811342282"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:38 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Date: Mon, 18 Sep 2023 16:10:56 +0300
Message-Id: <20230918131103.24119-7-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043219; x=1726579219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fG2lEBkT7mIaWcABDtYlaKTuVQodmkE/Rpx2qX2kUFA=;
 b=aK86d0A3YnVdChzVFZOg08jb7R0DQrmixnYJymxjWfTiOUovbeLVZtyj
 vyekFHUzwltYI5uHOAD1g+GgysBGDddnJ3kyAqGEDGbYUKN97rwuJkOgi
 g98S1PvsTFrbaF1MDjRULwLoVgiOfsGfqNdha3idymU5O3rVI3AgQ0Kel
 yUQPOaVcFrNTpop1uv359pjyAfY9yMcJGdO5ZbDdzct9FE2eCZUDinFJN
 q2bZWWzFlcYpCmjXFtnNLhAeq16sJpd1PwRoQv+Qi1Gf94kf9iFgc8Rqa
 xbCB0nke3qoWkZU1wThhJ3QYVHLFERSHeMF6DpHZuVLHbImGa0SK0NcAg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aK86d0A3
Subject: [Intel-wired-lan] [PATCH v2 06/13] Bluetooth: hci_bcm4377: Convert
 aspm disable to quirk
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
Cc: ath12k@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 linux-rdma@vger.kernel.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, ath11k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

cGNpX2Rpc2FibGVfbGlua19zdGF0ZSgpIHdhcyBtYWRlIHJlbGlhYmxlIHJlZ2FyZGxlc3Mgb2Yg
QVNQTSBDT05GSUcKYW5kIE9TIGJlaW5nIGRpc2FsbG93ZWQgdG8gY2hhbmdlIEFTUE0gc3RhdGVz
IHRvIGFsbG93IGRyaXZlcnMgdG8gcmVseQpvbiBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKCkgd29y
a2luZy4KClJlbW92ZSBkcml2ZXIgd29ya2luZyBhcm91bmQgdW5yZWxpYWJsZSBwY2lfZGlzYWJs
ZV9saW5rX3N0YXRlKCkgZnJvbQpoY2lfYmNtNDM3NyBkcml2ZXIgYW5kIGFkZCBhIFBDSSBxdWly
ayB0byBkaXNhYmxlIEFTUE0uCgpTaWduZWQtb2ZmLWJ5OiBJbHBvIErDpHJ2aW5lbiA8aWxwby5q
YXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ibHVldG9vdGgvaGNpX2JjbTQz
NzcuYyB8IDIwIC0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3BjaS9xdWlya3MuYyAgICAg
ICAgICAgIHwgIDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMjAgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvaGNpX2JjbTQzNzcuYyBi
L2RyaXZlcnMvYmx1ZXRvb3RoL2hjaV9iY200Mzc3LmMKaW5kZXggMTlhZDBlNzg4NjQ2Li4yMzQ4
ZWUyMzgwZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYmx1ZXRvb3RoL2hjaV9iY200Mzc3LmMKKysr
IGIvZHJpdmVycy9ibHVldG9vdGgvaGNpX2JjbTQzNzcuYwpAQCAtNDkwLDcgKzQ5MCw2IEBAIHN0
cnVjdCBiY200Mzc3X2RhdGE7CiAgKiBjbGVhcl9wY2llY2ZnX3N1YnN5c3RlbV9jdHJsX2JpdDE5
OiBTZXQgdG8gdHJ1ZSBpZiBiaXQgMTkgaW4gdGhlCiAgKiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB2ZW5kb3Itc3BlY2lmaWMgc3Vic3lzdGVtIGNvbnRyb2wKICAqICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ2lzdGVyIGhhcyB0byBiZSBjbGVhcmVk
Ci0gKiBkaXNhYmxlX2FzcG06IFNldCB0byB0cnVlIGlmIEFTUE0gbXVzdCBiZSBkaXNhYmxlZCBk
dWUgdG8gaGFyZHdhcmUgZXJyYXRhCiAgKiBicm9rZW5fZXh0X3NjYW46IFNldCB0byB0cnVlIGlm
IHRoZSBjaGlwIGVycm9uZW91c2x5IGNsYWltcyB0byBzdXBwb3J0CiAgKiAgICAgICAgICAgICAg
ICAgIGV4dGVuZGVkIHNjYW5uaW5nCiAgKiBicm9rZW5fbXdzX3RyYW5zcG9ydF9jb25maWc6IFNl
dCB0byB0cnVlIGlmIHRoZSBjaGlwIGVycm9uZW91c2x5IGNsYWltcyB0bwpAQCAtNTA5LDcgKzUw
OCw2IEBAIHN0cnVjdCBiY200Mzc3X2h3IHsKIAogCXVuc2lnbmVkIGxvbmcgaGFzX2JhcjBfY29y
ZTJfd2luZG93MiA6IDE7CiAJdW5zaWduZWQgbG9uZyBjbGVhcl9wY2llY2ZnX3N1YnN5c3RlbV9j
dHJsX2JpdDE5IDogMTsKLQl1bnNpZ25lZCBsb25nIGRpc2FibGVfYXNwbSA6IDE7CiAJdW5zaWdu
ZWQgbG9uZyBicm9rZW5fZXh0X3NjYW4gOiAxOwogCXVuc2lnbmVkIGxvbmcgYnJva2VuX213c190
cmFuc3BvcnRfY29uZmlnIDogMTsKIApAQCAtMjIyMiwyMCArMjIyMCw2IEBAIHN0YXRpYyBpbnQg
YmNtNDM3N19wcm9iZV9vZihzdHJ1Y3QgYmNtNDM3N19kYXRhICpiY200Mzc3KQogCXJldHVybiAw
OwogfQogCi1zdGF0aWMgdm9pZCBiY200Mzc3X2Rpc2FibGVfYXNwbShzdHJ1Y3QgYmNtNDM3N19k
YXRhICpiY200Mzc3KQotewotCXBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoYmNtNDM3Ny0+cGRldiwK
LQkJCSAgICAgICBQQ0lFX0xJTktfU1RBVEVfTDBTIHwgUENJRV9MSU5LX1NUQVRFX0wxKTsKLQot
CS8qCi0JICogcGNpX2Rpc2FibGVfbGlua19zdGF0ZSBjYW4gZmFpbCBpZiBlaXRoZXIgQ09ORklH
X1BDSUVBU1BNIGlzIGRpc2FibGVkCi0JICogb3IgaWYgdGhlIEJJT1MgaGFzbid0IGhhbmRlZCBv
dmVyIGNvbnRyb2wgdG8gdXMuIFdlIG11c3QgKmFsd2F5cyoKLQkgKiBkaXNhYmxlIEFTUE0gZm9y
IHRoaXMgZGV2aWNlIGR1ZSB0byBoYXJkd2FyZSBlcnJhdGEgdGhvdWdoLgotCSAqLwotCXBjaWVf
Y2FwYWJpbGl0eV9jbGVhcl93b3JkKGJjbTQzNzctPnBkZXYsIFBDSV9FWFBfTE5LQ1RMLAotCQkJ
CSAgIFBDSV9FWFBfTE5LQ1RMX0FTUE1DKTsKLX0KLQogc3RhdGljIHZvaWQgYmNtNDM3N19wY2lf
ZnJlZV9pcnFfdmVjdG9ycyh2b2lkICpkYXRhKQogewogCXBjaV9mcmVlX2lycV92ZWN0b3JzKGRh
dGEpOwpAQCAtMjI4OCw5ICsyMjcyLDYgQEAgc3RhdGljIGludCBiY200Mzc3X3Byb2JlKHN0cnVj
dCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqaWQpCiAJCXJldHVy
biAtRU5PREVWOwogCX0KIAotCWlmIChiY200Mzc3LT5ody0+ZGlzYWJsZV9hc3BtKQotCQliY200
Mzc3X2Rpc2FibGVfYXNwbShiY200Mzc3KTsKLQogCXJldCA9IHBjaV9yZXNldF9mdW5jdGlvbl9s
b2NrZWQocGRldik7CiAJaWYgKHJldCkKIAkJZGV2X3dhcm4oCkBAIC0yNDQ4LDcgKzI0MjksNiBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGJjbTQzNzdfaHcgYmNtNDM3N19od192YXJpYW50c1tdID0g
ewogCQkub3RwX29mZnNldCA9IDB4NDEyMCwKIAkJLmJhcjBfd2luZG93MSA9IDB4MTgwMGIwMDAs
CiAJCS5iYXIwX3dpbmRvdzIgPSAweDE4MTBjMDAwLAotCQkuZGlzYWJsZV9hc3BtID0gdHJ1ZSwK
IAkJLmJyb2tlbl9leHRfc2NhbiA9IHRydWUsCiAJCS5zZW5kX3B0YiA9IGJjbTQzNzdfc2VuZF9w
dGIsCiAJfSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3F1aXJrcy5jIGIvZHJpdmVycy9wY2kv
cXVpcmtzLmMKaW5kZXggZWVlYzFkNmY5MDIzLi5kNmFiMGU5ODAxM2YgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvcGNpL3F1aXJrcy5jCisrKyBiL2RyaXZlcnMvcGNpL3F1aXJrcy5jCkBAIC0yNTAyLDYg
KzI1MDIsOSBAQCBzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX2FzcG1fbDBzX2wxKHN0cnVjdCBw
Y2lfZGV2ICpkZXYpCiAgKi8KIERFQ0xBUkVfUENJX0ZJWFVQX0ZJTkFMKFBDSV9WRU5ET1JfSURf
QVNNRURJQSwgMHgxMDgwLCBxdWlya19kaXNhYmxlX2FzcG1fbDBzX2wxKTsKIAorLyogQkNNNDM3
NyBtdXN0IGFsd2F5cyBkaXNhYmxlIEFTUE0gZHVlIHRvIGhhcmR3YXJlIGVycmF0YS4gKi8KK0RF
Q0xBUkVfUENJX0ZJWFVQX0ZJTkFMKFBDSV9WRU5ET1JfSURfQlJPQURDT00sIDB4NWZhMCwgcXVp
cmtfZGlzYWJsZV9hc3BtX2wwc19sMSk7CisKIC8qCiAgKiBTb21lIFBlcmljb20gUENJZS10by1Q
Q0kgYnJpZGdlcyBpbiByZXZlcnNlIG1vZGUgbmVlZCB0aGUgUENJZSBSZXRyYWluCiAgKiBMaW5r
IGJpdCBjbGVhcmVkIGFmdGVyIHN0YXJ0aW5nIHRoZSBsaW5rIHJldHJhaW4gcHJvY2VzcyB0byBh
bGxvdyB0aGlzCi0tIAoyLjMwLjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
