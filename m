Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B734D7CAE1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 17:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3236340201;
	Mon, 16 Oct 2023 15:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3236340201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697471410;
	bh=MIvSkW0N7hKQhikxNH6TMbnluudIzjlmwnQCDxatIQo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X4bjrq/yQdg10bgNstjq7uQmd1mEHVhAcSeACH8174RHo3wpsB/0a4oQgz03cRgxe
	 0Ggfz6jAXcEQSdG10teDb25SHdTXeSbPfd2wbFi6UEwrq2geeQYE8AUnrGNY6gNeO7
	 TgZ2wywLuttoyZlWZOaCowzI1rXkckZVLxMtJIz6AuTak8UcSqchZv75rIUSgs5npZ
	 X4niMS/BJ2roQGu4/gXw3Tx828gmSJogbYfOd5em2U9vdygTWd03mvxfSIjsy+sIiq
	 VhP8urhnblccSR7t9xul+c7QIY/i3RM3V0Q8Gkevqwodh5oxJ0QMVpjibCOJoKma7e
	 7QFt5YRufK1HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46_bCFDGobVj; Mon, 16 Oct 2023 15:50:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCB51401E1;
	Mon, 16 Oct 2023 15:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCB51401E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BADC61BF263
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 921AD40198
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:50:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 921AD40198
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WcMUeudZN3bF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 15:49:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C443040182
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 15:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C443040182
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385400230"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385400230"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:49:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="749323893"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="749323893"
Received: from rolfrich-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.38.44])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 08:49:54 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 16 Oct 2023 09:49:32 -0600
Message-Id: <20231016154937.41224-2-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016154937.41224-1-ahmed.zaki@intel.com>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697471399; x=1729007399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rqu1q+0aNONgXKBp5onSHetHSrpW4eBEdbxBDFrtG74=;
 b=jUNJpRzH5ViGBB17j5EXWLbSmdVtqdUagX83R70PstNgaQ/zVE+txTK3
 tokDqEH3LYDbtQK2lGpcrZYsJmvul2YwtCBz7jG0qxa2YD3ZKUn4Az8cZ
 /76bKvYEGAPcXpnwNLhyN38BdPrt1RK3Nfnyrlx/8Qomzz5Y4Xlhpd2tI
 7dd7b0vB1TQsL12CvtJimwvbp8LyGP7hhx1JloaAvhEkZZYI5efUTNEqN
 8cUx8h6lZnLyvYOiPrqTiEqrBEZpkRRM8dZzuCotlVOvzFAHSsJxRut90
 0cy9nDTm5tLpZFI9JXNzEcD3ZcVGPNYqdgpTQ5DDoFGSPa1CreCovChzU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jUNJpRzH
Subject: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
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
KysrKysrCiBpbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oICAgICAgICAgfCAyMSArKysrKysr
KysrKysrLS0tLS0tLS0KIG5ldC9ldGh0b29sL2lvY3RsLmMgICAgICAgICAgICAgICAgICB8IDEx
ICsrKysrKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0
IGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0CmluZGV4IDkyYzlmYjQ2ZDZh
Mi4uNjRmM2Q3NTY2NDA3IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL25ldHdvcmtpbmcvc2Nh
bGluZy5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nL3NjYWxpbmcucnN0CkBAIC00
NCw2ICs0NCwxMiBAQCBieSBtYXNraW5nIG91dCB0aGUgbG93IG9yZGVyIHNldmVuIGJpdHMgb2Yg
dGhlIGNvbXB1dGVkIGhhc2ggZm9yIHRoZQogcGFja2V0ICh1c3VhbGx5IGEgVG9lcGxpdHogaGFz
aCksIHRha2luZyB0aGlzIG51bWJlciBhcyBhIGtleSBpbnRvIHRoZQogaW5kaXJlY3Rpb24gdGFi
bGUgYW5kIHJlYWRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgdmFsdWUuCiAKK1NvbWUgTklDcyBzdXBw
b3J0IHN5bW1ldHJpYyBSU1MgaGFzaGluZyB3aGVyZSwgaWYgdGhlIElQIChzb3VyY2UgYWRkcmVz
cywKK2Rlc3RpbmF0aW9uIGFkZHJlc3MpIGFuZCBUQ1AvVURQIChzb3VyY2UgcG9ydCwgZGVzdGlu
YXRpb24gcG9ydCkgdHVwbGVzCithcmUgc3dhcHBlZCwgdGhlIGNvbXB1dGVkIGhhc2ggaXMgdGhl
IHNhbWUuIFRoaXMgaXMgYmVuZWZpY2lhbCBpbiBzb21lCithcHBsaWNhdGlvbnMgdGhhdCBtb25p
dG9yIFRDUC9JUCBmbG93cyAoSURTLCBmaXJld2FsbHMsIC4uLmV0YykgYW5kIG5lZWQKK2JvdGgg
ZGlyZWN0aW9ucyBvZiB0aGUgZmxvdyB0byBsYW5kIG9uIHRoZSBzYW1lIFJ4IHF1ZXVlIChhbmQg
Q1BVKS4KKwogU29tZSBhZHZhbmNlZCBOSUNzIGFsbG93IHN0ZWVyaW5nIHBhY2tldHMgdG8gcXVl
dWVzIGJhc2VkIG9uCiBwcm9ncmFtbWFibGUgZmlsdGVycy4gRm9yIGV4YW1wbGUsIHdlYnNlcnZl
ciBib3VuZCBUQ1AgcG9ydCA4MCBwYWNrZXRzCiBjYW4gYmUgZGlyZWN0ZWQgdG8gdGhlaXIgb3du
IHJlY2VpdmUgcXVldWUuIFN1Y2gg4oCcbi10dXBsZeKAnSBmaWx0ZXJzIGNhbgpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0
b29sLmgKaW5kZXggZjdmYmEwZGM4N2U1Li40ZThkMzhmYjU1Y2UgMTAwNjQ0Ci0tLSBhL2luY2x1
ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wu
aApAQCAtMjAxOCwxNCArMjAxOCwxOSBAQCBzdGF0aWMgaW5saW5lIGludCBldGh0b29sX3ZhbGlk
YXRlX2R1cGxleChfX3U4IGR1cGxleCkKICNkZWZpbmUJRkxPV19SU1MJMHgyMDAwMDAwMAogCiAv
KiBMMy1MNCBuZXR3b3JrIHRyYWZmaWMgZmxvdyBoYXNoIG9wdGlvbnMgKi8KLSNkZWZpbmUJUlhI
X0wyREEJKDEgPDwgMSkKLSNkZWZpbmUJUlhIX1ZMQU4JKDEgPDwgMikKLSNkZWZpbmUJUlhIX0wz
X1BST1RPCSgxIDw8IDMpCi0jZGVmaW5lCVJYSF9JUF9TUkMJKDEgPDwgNCkKLSNkZWZpbmUJUlhI
X0lQX0RTVAkoMSA8PCA1KQotI2RlZmluZQlSWEhfTDRfQl8wXzEJKDEgPDwgNikgLyogc3JjIHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KLSNkZWZpbmUJUlhIX0w0X0JfMl8zCSgxIDw8
IDcpIC8qIGRzdCBwb3J0IGluIGNhc2Ugb2YgVENQL1VEUC9TQ1RQICovCi0jZGVmaW5lCVJYSF9E
SVNDQVJECSgxIDw8IDMxKQorI2RlZmluZQlSWEhfTDJEQQkJKDEgPDwgMSkKKyNkZWZpbmUJUlhI
X1ZMQU4JCSgxIDw8IDIpCisjZGVmaW5lCVJYSF9MM19QUk9UTwkJKDEgPDwgMykKKyNkZWZpbmUJ
UlhIX0lQX1NSQwkJKDEgPDwgNCkKKyNkZWZpbmUJUlhIX0lQX0RTVAkJKDEgPDwgNSkKKyNkZWZp
bmUJUlhIX0w0X0JfMF8xCQkoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAv
U0NUUCAqLworI2RlZmluZQlSWEhfTDRfQl8yXzMJCSgxIDw8IDcpIC8qIGRzdCBwb3J0IGluIGNh
c2Ugb2YgVENQL1VEUC9TQ1RQICovCisvKiBYT1IgdGhlIGNvcnJlc3BvbmRpbmcgc291cmNlIGFu
ZCBkZXN0aW5hdGlvbiBmaWVsZHMgb2YgZWFjaCBzcGVjaWZpZWQKKyAqIHByb3RvY29sLiBCb3Ro
IGNvcGllcyBvZiB0aGUgWE9SJ2VkIGZpZWxkcyBhcmUgZmVkIGludG8gdGhlIFJTUyBhbmQgUlhI
QVNICisgKiBjYWxjdWxhdGlvbi4KKyAqLworI2RlZmluZQlSWEhfU1lNTUVUUklDX1hPUgkoMSA8
PCAzMCkKKyNkZWZpbmUJUlhIX0RJU0NBUkQJCSgxIDw8IDMxKQogCiAjZGVmaW5lCVJYX0NMU19G
TE9XX0RJU0MJMHhmZmZmZmZmZmZmZmZmZmZmVUxMCiAjZGVmaW5lIFJYX0NMU19GTE9XX1dBS0UJ
MHhmZmZmZmZmZmZmZmZmZmZlVUxMCmRpZmYgLS1naXQgYS9uZXQvZXRodG9vbC9pb2N0bC5jIGIv
bmV0L2V0aHRvb2wvaW9jdGwuYwppbmRleCAwYjBjZTRmODFjMDEuLmIxYmQwZDRiNDhlOCAxMDA2
NDQKLS0tIGEvbmV0L2V0aHRvb2wvaW9jdGwuYworKysgYi9uZXQvZXRodG9vbC9pb2N0bC5jCkBA
IC05ODAsNiArOTgwLDE3IEBAIHN0YXRpYyBub2lubGluZV9mb3Jfc3RhY2sgaW50IGV0aHRvb2xf
c2V0X3J4bmZjKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCiAJaWYgKHJjKQogCQlyZXR1cm4gcmM7
CiAKKwkvKiBJZiBhIHN5bW1ldHJpYyBoYXNoIGlzIHJlcXVlc3RlZCwgdGhlbjoKKwkgKiAxIC0g
bm8gb3RoZXIgZmllbGRzIGJlc2lkZXMgSVAgc3JjL2RzdCBhbmQvb3IgTDQgc3JjL2RzdAorCSAq
IDIgLSBJZiBzcmMgaXMgc2V0LCBkc3QgbXVzdCBhbHNvIGJlIHNldAorCSAqLworCWlmICgoaW5m
by5kYXRhICYgUlhIX1NZTU1FVFJJQ19YT1IpICYmCisJICAgICgoaW5mby5kYXRhICYgfihSWEhf
U1lNTUVUUklDX1hPUiB8IFJYSF9JUF9TUkMgfCBSWEhfSVBfRFNUIHwKKwkgICAgICBSWEhfTDRf
Ql8wXzEgfCBSWEhfTDRfQl8yXzMpKSB8fAorCSAgICAgKCEhKGluZm8uZGF0YSAmIFJYSF9JUF9T
UkMpIF4gISEoaW5mby5kYXRhICYgUlhIX0lQX0RTVCkpIHx8CisJICAgICAoISEoaW5mby5kYXRh
ICYgUlhIX0w0X0JfMF8xKSBeICEhKGluZm8uZGF0YSAmIFJYSF9MNF9CXzJfMykpKSkKKwkJcmV0
dXJuIC1FSU5WQUw7CisKIAlyYyA9IGRldi0+ZXRodG9vbF9vcHMtPnNldF9yeG5mYyhkZXYsICZp
bmZvKTsKIAlpZiAocmMpCiAJCXJldHVybiByYzsKLS0gCjIuMzQuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
