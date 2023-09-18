Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0967A4B8B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA1BD614D9;
	Mon, 18 Sep 2023 15:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA1BD614D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050318;
	bh=tddO6Nm2HWD3q7kVi8aQcA4wvuHEfm9cOYKMxrnpDQY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LdN/IPnCEm2T/nGdq9xI5yijLJKRtBTf83FJk14Gidz2E+JpyUNIvShsb7BVxk0ge
	 7UDhRjXS5kWCABDvIrku+4ETo5A/CUThhY4q3Gur4BYWqhPV/EfBetVwfweXavNITJ
	 3+sM+jnG/iXhbLEG5aj39/PF4mr6SozKLHLCRSgQOuKNP3KE0ohxAJeOcaaewK/foX
	 Nw/0B6wK80YlmN6RHkuTj+ycG04HepCuW+C7yWGRHDt6J+E4ceh9GFkLer1oyFdFHh
	 91BpsIwu/PFpX8sDd6Y9EqOCSq5A6Q6WHDF+CAhJJkt4Zc9JcjPWThMk3ndvOSDvb3
	 Bdan3NAzqehIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hPpvwj3Zxnbd; Mon, 18 Sep 2023 15:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A97FD614D7;
	Mon, 18 Sep 2023 15:18:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A97FD614D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B64CC1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B807414C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B807414C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHWezWtzQA-b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:18:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 96AFC40042
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:18:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96AFC40042
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446112588"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446112588"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811341354"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811341354"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:11:23 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org
Date: Mon, 18 Sep 2023 16:10:50 +0300
Message-Id: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043105; x=1726579105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Um9SQvE/5HeieZqdelS3qtLTo5NsX9iapqTm1J+iScg=;
 b=IhVMJOy0f6Gcuku/C3aN0W3mL7Tqe2SBjH4ryDkG7YenERRNVRkwEqLi
 8moYVHCz+EreLP+iL0m2GnWujC2VnGaSC/kK8QT6e+vqoYIBqDlArQ3CA
 Z2yATzGMzdFr0MYuiX2iJE0EkIg2jtVuXtTqV9D/aZw9UADRLTwTzy8Ku
 Y4UBEINiI+/xVXc4llsOtiQA79aXmdXn816XI2T+GQ9K2bLEPwbs2IGPD
 JazrMEUZCm0nxvkM4B0rJRXZO2tZUM1oRn3iudpLv8ccQ3LuPgSewv0M0
 gN/x5z6a5Rr7fXYKyTD0l6c2hDnzusGBdDiwHAa62SCc1IHLiMUzm3Y9S
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IhVMJOy0
Subject: [Intel-wired-lan] [PATCH v2 00/13] PCI/ASPM: Make ASPM in core
 robust and remove driver workarounds
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
 linux-bluetooth@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-mediatek@lists.infradead.org, ath11k@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UHJldmlvdXNseSwgQVNQTSBzZXJ2aWNlIGRyaXZlciBoYXMgaWdub3JlZCBsaW5rIHN0YXRlIG1h
bmFnZW1lbnQKcmVxdWVzdHMgd2hlbiBPUyBpcyBub3QgYXV0aG9yaXplZCB0byB0b3VjaCBMTktD
VEwgKG9yIEFTUE0gaXMgbm90CmNvbmZpZ3VyZWQgYXQgYWxsKS4gQmVjYXVzZSB0aGUgY29yZSBp
bnRlcmZhY2UgaGFzIG5vdCBiZWVuIHJlbGlhYmxlLApkcml2ZXJzIGhhdmUgY3JlYXRlIHdvcmth
cm91bmRzIHRvIGZvcmNlIEFTUE0gc3RhdGUgYnkgZGlyZWN0bHkKd3JpdGluZyBpbnRvIExOS0NU
TCB0aGVtc2VsdmVzLgoKQSBzZWNvbmQgcHJvYmxlbSBpcyBsYWNrIG9mIHN5bW1ldHJpYyBwYWly
IGZvcgpwY2lfZGlzYWJsZV9saW5rX3N0YXRlKCkuIEFueSBsaW5rIHN0YXRlIGRpc2FibGUgaXMg
cGVybWFuZW50IChOT1RFOgpwY2lfZW5hYmxlX2xpbmtfc3RhdGUoKSBkZXNwaXRlIGl0cyBuYW1l
IGlzIG5vdCBhIHN5bW1ldHJpYyBwYWlyIGZvcgpwY2lfZGlzYWJsZV9saW5rX3N0YXRlKCkpLiBU
aGUgbGFjayBvZiB3YXkgdG8gcmUtZW5hYmxlIEFTUE0gcHJldmVudHMKZHJpdmVycyBmcm9tIHVz
aW5nIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSB0byBkaXNhYmxpbmcgQVNQTSBmb3IKY2VydGFp
biBwaGFzZXMgb2YgZHJpdmVyIG9wZXJhdGlvbiBhbmQgcmUtZW5hYmxpbmcgaXQgbGF0ZXIuCgpC
b3RoIGNhc2VzIGFyZSBwcm9ibGVtYXRpYyBiZWNhdXNlIHdoZW4gQVNQTSBpcyB3b3JraW5nIG5v
cm1hbGx5CnRocm91Z2ggdGhlIHNlcnZpY2UgZHJpdmVyLCBpdCBpcyBub3QgYXdhcmUgb2YgdGhl
IGV4dHJhIGxpbmsgc3RhdGUKY2hhbmdlcyBkcml2ZXJzIHBlcmZvcm0gZGlyZWN0bHkgY2F1c2lu
ZyB0aGUgc2VydmljZSBkcml2ZXIgdG8gaGF2ZQppbmNvcnJlY3QgdmlldyBhYm91dCB0aGUgQVNQ
TSBzdGF0ZS4KCkFkZHJlc3MgdGhlc2UgcHJvYmxlbXMgYnkgbWFraW5nIHBjaV9kaXNhYmxlX2xp
bmtfc3RhdGUoKSByZWxpYWJsZSBhbmQKYnkgcHJvdmlkaW5nIHByb3BlciBwY2lfZW5hYmxlX2xp
bmtfc3RhdGUoKSBwYWlyIGZvciBpdCAodGhlIGZ1bmN0aW9uCmN1cnJlbnRseSBvbiB0aGUgd2F5
IGlzIHJlbmFtZWQgZmlyc3QgdG8gYSBtb3JlIGRlc2NyaXB0aXZlIG5hbWUpLgpBZnRlciBjb3Jl
IGltcHJvdmVtZW50cywgY29udmVydCBkcml2ZXJzIHRvIHVzZSB0aGUgbmV3IGludGVyZmFjZSBh
bmQKZHJvcCB0aGUgd29ya2Fyb3VuZHMuCgp2MjoKLSBSZWJhc2VkIHRoZSBzZXJpZXMKLSBSZW9y
ZGVyIHBhdGNoZXMgKHJlbmFtZSBwYXRjaCBmaXJzdCkKCklscG8gSsOkcnZpbmVuICgxMyk6CiAg
UENJL0FTUE06IFJlbmFtZSBwY2lfZW5hYmxlX2xpbmtfc3RhdGUoKSB0bwogICAgcGNpX3NldF9k
ZWZhdWx0X2xpbmtfc3RhdGUoKQogIFBDSS9BU1BNOiBJbXByb3ZlIHBjaV9zZXRfZGVmYXVsdF9s
aW5rX3N0YXRlKCkga2VybmVsZG9jCiAgUENJL0FTUE06IERpc2FibGUgQVNQTSB3aGVuIGRyaXZl
ciByZXF1ZXN0cyBpdAogIFBDSS9BU1BNOiBNb3ZlIEwwUy9MMS9zdWIgc3RhdGVzIG1hc2sgY2Fs
Y3VsYXRpb24gaW50byBhIGhlbHBlcgogIFBDSS9BU1BNOiBBZGQgcGNpX2VuYWJsZV9saW5rX3N0
YXRlKCkKICBCbHVldG9vdGg6IGhjaV9iY200Mzc3OiBDb252ZXJ0IGFzcG0gZGlzYWJsZSB0byBx
dWlyawogIG10NzY6IFJlbW92ZSB1bnJlbGlhYmxlIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSB3
b3JrYXJvdW5kCiAgZTEwMDBlOiBSZW1vdmUgdW5yZWxpYWJsZSBwY2lfZGlzYWJsZV9saW5rX3N0
YXRleyxfbG9ja2VkfSgpCiAgICB3b3JrYXJvdW5kCiAgd2lmaTogYXRoMTBrOiBVc2UgcGNpX2Rp
c2FibGUvZW5hYmxlX2xpbmtfc3RhdGUoKQogIHdpZmk6IGF0aDExazogVXNlIHBjaV9kaXNhYmxl
L2VuYWJsZV9saW5rX3N0YXRlKCkKICB3aWZpOiBhdGgxMms6IFVzZSBwY2lfZGlzYWJsZS9lbmFi
bGVfbGlua19zdGF0ZSgpCiAgUkRNQS9oZmkxOiBVc2UgcGNpX2Rpc2FibGUvZW5hYmxlX2xpbmtf
c3RhdGUoKQogIG1pc2M6IHJ0c3g6IFVzZSBwY2lfZGlzYWJsZS9lbmFibGVfbGlua19zdGF0ZSgp
CgogZHJpdmVycy9ibHVldG9vdGgvaGNpX2JjbTQzNzcuYyAgICAgICAgICAgICAgIHwgIDIwIC0t
LQogZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvYXNwbS5jICAgICAgICAgICAgIHwgIDM4ICst
LS0tLQogZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvcGNpZS5jICAgICAgICAgICAgIHwgICAy
ICstCiBkcml2ZXJzL21pc2MvY2FyZHJlYWRlci9ydHM1MjI4LmMgICAgICAgICAgICAgfCAgIDYg
Ky0KIGRyaXZlcnMvbWlzYy9jYXJkcmVhZGVyL3J0czUyNjEuYyAgICAgICAgICAgICB8ICAgNiAr
LQogZHJpdmVycy9taXNjL2NhcmRyZWFkZXIvcnRzeF9wY3IuYyAgICAgICAgICAgIHwgICA4ICst
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMgICAgfCAgNzcgKy0t
LS0tLS0tLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvcGNpLmMgICAgICAgICB8
ICAgOCArLQogZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDExay9wY2kuYyAgICAgICAgIHwg
IDEwICstCiBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTJrL3BjaS5jICAgICAgICAgfCAg
MTAgKy0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvTWFrZWZpbGUgICB8ICAg
MSAtCiBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYuaCAgICAgfCAgIDEg
LQogLi4uL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYxNS9wY2kuYyAgIHwgICAyICst
CiAuLi4vbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3NngwL3BjaS5jICAgfCAgIDIgKy0K
IC4uLi9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc2eDIvcGNpLmMgICB8ICAgMiArLQog
Li4uL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzkxNS9wY2kuYyAgIHwgICAyICstCiAu
Li4vbmV0L3dpcmVsZXNzL21lZGlhdGVrL210NzYvbXQ3OTIxL3BjaS5jICAgfCAgIDIgKy0KIC4u
Li9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9tdDc5OTYvcGNpLmMgICB8ICAgMiArLQogZHJp
dmVycy9uZXQvd2lyZWxlc3MvbWVkaWF0ZWsvbXQ3Ni9wY2kuYyAgICAgIHwgIDQ3IC0tLS0tLS0K
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvdm1kLmMgICAgICAgICAgICAgICAgICB8ICAgMiArLQog
ZHJpdmVycy9wY2kvcGNpZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKIGRy
aXZlcnMvcGNpL3BjaWUvYXNwbS5jICAgICAgICAgICAgICAgICAgICAgICB8IDEyNiArKysrKysr
KysrKysrLS0tLS0KIGRyaXZlcnMvcGNpL3BjaWUvYXNwbV9taW5pbWFsLmMgICAgICAgICAgICAg
ICB8ICA2NiArKysrKysrKysKIGRyaXZlcnMvcGNpL3F1aXJrcy5jICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAgMyArCiBpbmNsdWRlL2xpbnV4L3BjaS5oICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTAgKy0KIDI1IGZpbGVzIGNoYW5nZWQsIDE5OSBpbnNlcnRpb25zKCspLCAyNTUg
ZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3MvbWVk
aWF0ZWsvbXQ3Ni9wY2kuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL3BjaWUvYXNw
bV9taW5pbWFsLmMKCi0tIAoyLjMwLjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
