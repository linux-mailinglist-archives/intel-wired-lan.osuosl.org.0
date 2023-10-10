Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B3F7C40AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3515613CD;
	Tue, 10 Oct 2023 20:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3515613CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696968331;
	bh=EZaqI6FB7GHGbeV6quzkrsQiDNIvaaTzXrxGixwKfRQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9D8PEcj2Sw5B5X6G53SPKZY3VAjmZ2dzieA++GC78R4DniCeph9El+wkF0xBGAfuv
	 QUB0BrzStM80im0FGdQvS+cjZnodtltjmSzDXvQlgk2UPON+Aqsi8xtlIU1Gp/7C7g
	 uNqjgxXv/de+GgatNzB3SFBk/Au/Fm504mwMyA7a6j+u75qWFHdHGzlg7beuJQqk8f
	 zvSVP1gYiCU9hvGKrl1UqWDGhHHGVjcjDb3YWHYMcjRhABf5VWPC1/6kAtl/RWroMP
	 +VZuLWa/getK6FkmECcoG8ou3A4TADdm6flt0LrSsmKoWcYNFtueCZ8FFTfI3m9XHF
	 svOJ5I88PhXeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QlXVU6pnb9N; Tue, 10 Oct 2023 20:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEC2360F98;
	Tue, 10 Oct 2023 20:05:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEC2360F98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8009F1BF389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 595A981ADE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 595A981ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqteukMO8CBF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 20:05:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FB8B817C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 20:05:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FB8B817C3
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374840021"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374840021"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000819900"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000819900"
Received: from rhaeussl-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.42.107])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:04:54 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 10 Oct 2023 14:04:32 -0600
Message-Id: <20231010200437.9794-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010200437.9794-1-ahmed.zaki@intel.com>
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696968318; x=1728504318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2pfiZ1iiQtm2Zf4jLMIwrRDukxJh6A084sAa/FTq25E=;
 b=Xv0fYiajnBDai4t7CjWz8g8E0x75vXeflzXoq0flcMb6J54Qc0JaKnyI
 4j5fgqH/KfPqqQKPtu/qNnL4AAeo+16ZjpbJsGXRNi254psgGLaAjQN01
 9UMuRUMPcrjXgY+JiJXx4jpNrd+EgFKJJ/vT9L4Vjd/xMXfGAtwNla0sX
 fC9BB6tpBE/WWpPpZudVELcKoKefQCEUKLYyapRojnHOCEADgV4KwfFuU
 Kf4vU9DOICuWlSCWWfYrYIqm3B0PyYdd1W+41cYltws+UgjBG+4CZ5WPl
 dKMFCE3Ci7IvInkr4wI4Oa0jg6OoLl4AAoTimrVUYZQHyRut4ddsON/TZ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xv0fYiaj
Subject: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 vladimir.oltean@nxp.com, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

U3ltbWV0cmljIFJTUyBoYXNoIGZ1bmN0aW9ucyBhcmUgYmVuZWZpY2lhbCBpbiBhcHBsaWNhdGlv
bnMgdGhhdCBtb25pdG9yCmJvdGggVHggYW5kIFJ4IHBhY2tldHMgb2YgdGhlIHNhbWUgZmxvdyAo
SURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4KR2V0dGluZyBhbGwgdHJhZmZpYyBvZiB0
aGUgc2FtZSBmbG93IG9uIHRoZSBzYW1lIFJYIHF1ZXVlIHJlc3VsdHMgaW4KaGlnaGVyIENQVSBj
YWNoZSBlZmZpY2llbmN5LgoKQSBOSUMgdGhhdCBzdXBwb3J0cyAic3ltbWV0cmljLXhvciIgY2Fu
IGFjaGlldmUgdGhpcyBSU1MgaGFzaCBzeW1tZXRyeQpieSBYT1JpbmcgdGhlIHNvdXJjZSBhbmQg
ZGVzdGluYXRpb24gZmllbGRzIGFuZCBwYXNzIHRoZSB2YWx1ZXMgdG8gdGhlClJTUyBoYXNoIGFs
Z29yaXRobS4KCk9ubHkgZmllbGRzIHRoYXQgaGFzIGNvdW50ZXJwYXJ0cyBpbiB0aGUgb3RoZXIg
ZGlyZWN0aW9uIGNhbiBiZQphY2NlcHRlZDsgSVAgc3JjL2RzdCBhbmQgTDQgc3JjL2RzdCBwb3J0
cy4KClRoZSB1c2VyIG1heSByZXF1ZXN0IFJTUyBoYXNoIHN5bW1ldHJ5IGZvciBhIHNwZWNpZmlj
IGZsb3cgdHlwZSwgdmlhOgoKICAgICMgZXRodG9vbCAtTnwtVSBldGgwIHJ4LWZsb3ctaGFzaCA8
Zmxvd190eXBlPiBzfGR8ZnxuIHN5bW1ldHJpYy14b3IKCm9yIHR1cm4gc3ltbWV0cnkgb2ZmIChh
c3ltbWV0cmljKSBieToKCiAgICAjIGV0aHRvb2wgLU58LVUgZXRoMCByeC1mbG93LWhhc2ggPGZs
b3dfdHlwZT4gc3xkfGZ8bgoKUmV2aWV3ZWQtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2gu
ZHJld2VrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBp
bnRlbC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0IHwgIDYg
KysrKysrCiBpbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oICAgICAgICAgfCAxNyArKysrKysr
KystLS0tLS0tLQogbmV0L2V0aHRvb2wvaW9jdGwuYyAgICAgICAgICAgICAgICAgIHwgMTEgKysr
KysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QgYi9E
b2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QKaW5kZXggOTJjOWZiNDZkNmEyLi42
NGYzZDc1NjY0MDcgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5n
LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2NhbGluZy5yc3QKQEAgLTQ0LDYg
KzQ0LDEyIEBAIGJ5IG1hc2tpbmcgb3V0IHRoZSBsb3cgb3JkZXIgc2V2ZW4gYml0cyBvZiB0aGUg
Y29tcHV0ZWQgaGFzaCBmb3IgdGhlCiBwYWNrZXQgKHVzdWFsbHkgYSBUb2VwbGl0eiBoYXNoKSwg
dGFraW5nIHRoaXMgbnVtYmVyIGFzIGEga2V5IGludG8gdGhlCiBpbmRpcmVjdGlvbiB0YWJsZSBh
bmQgcmVhZGluZyB0aGUgY29ycmVzcG9uZGluZyB2YWx1ZS4KIAorU29tZSBOSUNzIHN1cHBvcnQg
c3ltbWV0cmljIFJTUyBoYXNoaW5nIHdoZXJlLCBpZiB0aGUgSVAgKHNvdXJjZSBhZGRyZXNzLAor
ZGVzdGluYXRpb24gYWRkcmVzcykgYW5kIFRDUC9VRFAgKHNvdXJjZSBwb3J0LCBkZXN0aW5hdGlv
biBwb3J0KSB0dXBsZXMKK2FyZSBzd2FwcGVkLCB0aGUgY29tcHV0ZWQgaGFzaCBpcyB0aGUgc2Ft
ZS4gVGhpcyBpcyBiZW5lZmljaWFsIGluIHNvbWUKK2FwcGxpY2F0aW9ucyB0aGF0IG1vbml0b3Ig
VENQL0lQIGZsb3dzIChJRFMsIGZpcmV3YWxscywgLi4uZXRjKSBhbmQgbmVlZAorYm90aCBkaXJl
Y3Rpb25zIG9mIHRoZSBmbG93IHRvIGxhbmQgb24gdGhlIHNhbWUgUnggcXVldWUgKGFuZCBDUFUp
LgorCiBTb21lIGFkdmFuY2VkIE5JQ3MgYWxsb3cgc3RlZXJpbmcgcGFja2V0cyB0byBxdWV1ZXMg
YmFzZWQgb24KIHByb2dyYW1tYWJsZSBmaWx0ZXJzLiBGb3IgZXhhbXBsZSwgd2Vic2VydmVyIGJv
dW5kIFRDUCBwb3J0IDgwIHBhY2tldHMKIGNhbiBiZSBkaXJlY3RlZCB0byB0aGVpciBvd24gcmVj
ZWl2ZSBxdWV1ZS4gU3VjaCDigJxuLXR1cGxl4oCdIGZpbHRlcnMgY2FuCmRpZmYgLS1naXQgYS9p
bmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wu
aAppbmRleCBmN2ZiYTBkYzg3ZTUuLmI5ZWU2NjdhZDdlNSAxMDA2NDQKLS0tIGEvaW5jbHVkZS91
YXBpL2xpbnV4L2V0aHRvb2wuaAorKysgYi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oCkBA
IC0yMDE4LDE0ICsyMDE4LDE1IEBAIHN0YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVf
ZHVwbGV4KF9fdTggZHVwbGV4KQogI2RlZmluZQlGTE9XX1JTUwkweDIwMDAwMDAwCiAKIC8qIEwz
LUw0IG5ldHdvcmsgdHJhZmZpYyBmbG93IGhhc2ggb3B0aW9ucyAqLwotI2RlZmluZQlSWEhfTDJE
QQkoMSA8PCAxKQotI2RlZmluZQlSWEhfVkxBTgkoMSA8PCAyKQotI2RlZmluZQlSWEhfTDNfUFJP
VE8JKDEgPDwgMykKLSNkZWZpbmUJUlhIX0lQX1NSQwkoMSA8PCA0KQotI2RlZmluZQlSWEhfSVBf
RFNUCSgxIDw8IDUpCi0jZGVmaW5lCVJYSF9MNF9CXzBfMQkoMSA8PCA2KSAvKiBzcmMgcG9ydCBp
biBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwotI2RlZmluZQlSWEhfTDRfQl8yXzMJKDEgPDwgNykg
LyogZHN0IHBvcnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KLSNkZWZpbmUJUlhIX0RJU0NB
UkQJKDEgPDwgMzEpCisjZGVmaW5lCVJYSF9MMkRBCQkoMSA8PCAxKQorI2RlZmluZQlSWEhfVkxB
TgkJKDEgPDwgMikKKyNkZWZpbmUJUlhIX0wzX1BST1RPCQkoMSA8PCAzKQorI2RlZmluZQlSWEhf
SVBfU1JDCQkoMSA8PCA0KQorI2RlZmluZQlSWEhfSVBfRFNUCQkoMSA8PCA1KQorI2RlZmluZQlS
WEhfTDRfQl8wXzEJCSgxIDw8IDYpIC8qIHNyYyBwb3J0IGluIGNhc2Ugb2YgVENQL1VEUC9TQ1RQ
ICovCisjZGVmaW5lCVJYSF9MNF9CXzJfMwkJKDEgPDwgNykgLyogZHN0IHBvcnQgaW4gY2FzZSBv
ZiBUQ1AvVURQL1NDVFAgKi8KKyNkZWZpbmUJUlhIX1NZTU1FVFJJQ19YT1IJKDEgPDwgMzApCisj
ZGVmaW5lCVJYSF9ESVNDQVJECQkoMSA8PCAzMSkKIAogI2RlZmluZQlSWF9DTFNfRkxPV19ESVND
CTB4ZmZmZmZmZmZmZmZmZmZmZlVMTAogI2RlZmluZSBSWF9DTFNfRkxPV19XQUtFCTB4ZmZmZmZm
ZmZmZmZmZmZmZVVMTApkaWZmIC0tZ2l0IGEvbmV0L2V0aHRvb2wvaW9jdGwuYyBiL25ldC9ldGh0
b29sL2lvY3RsLmMKaW5kZXggMGIwY2U0ZjgxYzAxLi5iMWJkMGQ0YjQ4ZTggMTAwNjQ0Ci0tLSBh
L25ldC9ldGh0b29sL2lvY3RsLmMKKysrIGIvbmV0L2V0aHRvb2wvaW9jdGwuYwpAQCAtOTgwLDYg
Kzk4MCwxNyBAQCBzdGF0aWMgbm9pbmxpbmVfZm9yX3N0YWNrIGludCBldGh0b29sX3NldF9yeG5m
YyhzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAogCWlmIChyYykKIAkJcmV0dXJuIHJjOwogCisJLyog
SWYgYSBzeW1tZXRyaWMgaGFzaCBpcyByZXF1ZXN0ZWQsIHRoZW46CisJICogMSAtIG5vIG90aGVy
IGZpZWxkcyBiZXNpZGVzIElQIHNyYy9kc3QgYW5kL29yIEw0IHNyYy9kc3QKKwkgKiAyIC0gSWYg
c3JjIGlzIHNldCwgZHN0IG11c3QgYWxzbyBiZSBzZXQKKwkgKi8KKwlpZiAoKGluZm8uZGF0YSAm
IFJYSF9TWU1NRVRSSUNfWE9SKSAmJgorCSAgICAoKGluZm8uZGF0YSAmIH4oUlhIX1NZTU1FVFJJ
Q19YT1IgfCBSWEhfSVBfU1JDIHwgUlhIX0lQX0RTVCB8CisJICAgICAgUlhIX0w0X0JfMF8xIHwg
UlhIX0w0X0JfMl8zKSkgfHwKKwkgICAgICghIShpbmZvLmRhdGEgJiBSWEhfSVBfU1JDKSBeICEh
KGluZm8uZGF0YSAmIFJYSF9JUF9EU1QpKSB8fAorCSAgICAgKCEhKGluZm8uZGF0YSAmIFJYSF9M
NF9CXzBfMSkgXiAhIShpbmZvLmRhdGEgJiBSWEhfTDRfQl8yXzMpKSkpCisJCXJldHVybiAtRUlO
VkFMOworCiAJcmMgPSBkZXYtPmV0aHRvb2xfb3BzLT5zZXRfcnhuZmMoZGV2LCAmaW5mbyk7CiAJ
aWYgKHJjKQogCQlyZXR1cm4gcmM7Ci0tIAoyLjM0LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
