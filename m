Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F977A4B94
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 17:18:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58114614F5;
	Mon, 18 Sep 2023 15:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58114614F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695050334;
	bh=T6n7dO8Pdx+YFmS62FSRWaeEMrGXVpioz2PyCxaczxM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IqkmCG6QJJdoz38srSbnl44g86OmVpLRSREuxYId9gzzeYF/Cl+ZL1MMgbEMvu96U
	 3wXQ2hn9GyugTL+ADizqgUwUOk0o2YQylxd2vhNNVHSwAfQuY8RahgCOo7cl3h9IRa
	 QbSioEsbBoTNgKDJTgCmFV2wnUGSoqbCvYSqkeA/ZLGaafSFp1IaxgeGRnQNEIsYN8
	 J2F96ka+kkZw2oXMzI7eNSfBFU4MdCwvXWxmOq9z9Mf5Sxis165uH/hP5j4NcCDEFr
	 AsSrLlE3emWfU9wxCbIy+QkJblIFjLdWWeAGUFF4lb4pRiWXNI+Q0h8P+woCzbjSXJ
	 Ka+E0LtYQ583A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rT8Kp4BzvFQG; Mon, 18 Sep 2023 15:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40C7F614D9;
	Mon, 18 Sep 2023 15:18:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40C7F614D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1100A1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD78140439
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD78140439
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GD0RaTm27ncj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 13:19:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30DA440042
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 13:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30DA440042
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="446113133"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="446113133"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="811341856"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="811341856"
Received: from nprotaso-mobl1.ccr.corp.intel.com (HELO
 ijarvine-mobl2.ger.corp.intel.com) ([10.252.49.156])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:12:02 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Lukas Wunner <lukas@wunner.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>
Date: Mon, 18 Sep 2023 16:10:54 +0300
Message-Id: <20230918131103.24119-5-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
References: <20230918131103.24119-1-ilpo.jarvinen@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Sep 2023 15:18:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695043176; x=1726579176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ymkN+p4ogpYhyDF99HjDp+8yFzsuK5k5J5zb7K9eDd0=;
 b=XfQP4vcst65DNU2uzLzbYO4Sc/q2CLliU/WowSyBRPP6/PAX52lo4X0X
 GniJC6DQCeByPIcmqDPRXm4hDINg4zgr/FV01Wq76tuThI/v7AlG4o7/S
 2S6U2aS3lIi43RLPdP4oVnFy5c69bFxl5l6zg/Qj4Zcl/jC3uPeFqe3s4
 Ujq18u5IxoVtOx/ZSp5RW8FfrxzoIpjrXP96VBozAcxr17jxILVuuuiqL
 WhEh7rDZaCvoNZ2oaMbddIordEalDxTjq5Z+jA3lZIH4E3SAK0lZnEiy6
 154cTuz9jTqUByaRY/DWww9I2ZDY7M+nG++YKPzGjwbUVZVfkiHB/z3E5
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XfQP4vcs
Subject: [Intel-wired-lan] [PATCH v2 04/13] PCI/ASPM: Move L0S/L1/sub states
 mask calculation into a helper
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

QVNQTSBzZXJ2aWNlIGRyaXZlciBkb2VzIHRoZSBzYW1lIEwwUyAvIEwxUyAvIHN1YiBzdGF0ZXMg
YWxsb3dlZApjYWxjdWxhdGlvbiBpbiBfX3BjaV9kaXNhYmxlX2xpbmtfc3RhdGUoKSBhbmQKcGNp
X3NldF9kZWZhdWx0X2xpbmtfc3RhdGUoKS4KCkNyZWF0ZSBhIGhlbHBlciB0byBjYWxjdWxhdGUg
dGhlIG1hc2sgZm9yIHRoZSBhbGxvd2VkIHN0YXRlcy4KClNpZ25lZC1vZmYtYnk6IElscG8gSsOk
cnZpbmVuIDxpbHBvLmphcnZpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL3BjaS9w
Y2llL2FzcG0uYyB8IDMzICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jIGIvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmMKaW5kZXgg
ZWM2ZDdhMDkyYWMxLi45MWRjOTVhY2E5MGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3BjaWUv
YXNwbS5jCisrKyBiL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jCkBAIC0xMDM0LDYgKzEwMzQsMjYg
QEAgc3RhdGljIHN0cnVjdCBwY2llX2xpbmtfc3RhdGUgKnBjaWVfYXNwbV9nZXRfbGluayhzdHJ1
Y3QgcGNpX2RldiAqcGRldikKIAlyZXR1cm4gYnJpZGdlLT5saW5rX3N0YXRlOwogfQogCitzdGF0
aWMgdTggcGNpX2xpbmtfc3RhdGVfbWFzayhpbnQgc3RhdGUpCit7CisJdTggcmVzdWx0ID0gMDsK
KworCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMFMpCisJCXJlc3VsdCB8PSBBU1BNX1NU
QVRFX0wwUzsKKwlpZiAoc3RhdGUgJiBQQ0lFX0xJTktfU1RBVEVfTDEpCisJCXJlc3VsdCB8PSBB
U1BNX1NUQVRFX0wxOworCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8xKQorCQlyZXN1
bHQgfD0gQVNQTV9TVEFURV9MMV8xOworCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8y
KQorCQlyZXN1bHQgfD0gQVNQTV9TVEFURV9MMV8yOworCWlmIChzdGF0ZSAmIFBDSUVfTElOS19T
VEFURV9MMV8xX1BDSVBNKQorCQlyZXN1bHQgfD0gQVNQTV9TVEFURV9MMV8xX1BDSVBNOworCWlm
IChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8yX1BDSVBNKQorCQlyZXN1bHQgfD0gQVNQTV9T
VEFURV9MMV8yX1BDSVBNOworCisJcmV0dXJuIHJlc3VsdDsKK30KKwogc3RhdGljIGludCBfX3Bj
aV9kaXNhYmxlX2xpbmtfc3RhdGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGludCBzdGF0ZSwgYm9v
bCBzZW0pCiB7CiAJc3RydWN0IHBjaWVfbGlua19zdGF0ZSAqbGluayA9IHBjaWVfYXNwbV9nZXRf
bGluayhwZGV2KTsKQEAgLTEwNjMsMTggKzEwODMsNyBAQCBzdGF0aWMgaW50IF9fcGNpX2Rpc2Fi
bGVfbGlua19zdGF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgaW50IHN0YXRlLCBib29sIHNlbSkK
IAlpZiAoc2VtKQogCQlkb3duX3JlYWQoJnBjaV9idXNfc2VtKTsKIAltdXRleF9sb2NrKCZhc3Bt
X2xvY2spOwotCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMFMpCi0JCWxpbmstPmFzcG1f
ZGlzYWJsZSB8PSBBU1BNX1NUQVRFX0wwUzsKLQlpZiAoc3RhdGUgJiBQQ0lFX0xJTktfU1RBVEVf
TDEpCi0JCWxpbmstPmFzcG1fZGlzYWJsZSB8PSBBU1BNX1NUQVRFX0wxOwotCWlmIChzdGF0ZSAm
IFBDSUVfTElOS19TVEFURV9MMV8xKQotCQlsaW5rLT5hc3BtX2Rpc2FibGUgfD0gQVNQTV9TVEFU
RV9MMV8xOwotCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8yKQotCQlsaW5rLT5hc3Bt
X2Rpc2FibGUgfD0gQVNQTV9TVEFURV9MMV8yOwotCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFU
RV9MMV8xX1BDSVBNKQotCQlsaW5rLT5hc3BtX2Rpc2FibGUgfD0gQVNQTV9TVEFURV9MMV8xX1BD
SVBNOwotCWlmIChzdGF0ZSAmIFBDSUVfTElOS19TVEFURV9MMV8yX1BDSVBNKQotCQlsaW5rLT5h
c3BtX2Rpc2FibGUgfD0gQVNQTV9TVEFURV9MMV8yX1BDSVBNOworCWxpbmstPmFzcG1fZGlzYWJs
ZSB8PSBwY2lfbGlua19zdGF0ZV9tYXNrKHN0YXRlKTsKIAlwY2llX2NvbmZpZ19hc3BtX2xpbmso
bGluaywgcG9saWN5X3RvX2FzcG1fc3RhdGUobGluaykpOwogCiAJaWYgKHN0YXRlICYgUENJRV9M
SU5LX1NUQVRFX0NMS1BNKQotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
