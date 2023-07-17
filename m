Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B8B756101
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 13:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F7C9812C3;
	Mon, 17 Jul 2023 11:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F7C9812C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689591653;
	bh=+RZj7H0s2mu/crGsS8Rm+3xsirrOcQAvhgTAeMUYezk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=A8T6GApFHT5ZxELvx3lm+5isyHon+wPASxrn5yIE3MtXPxI8pZZvmJVlrzWjLhdpW
	 Pcy7mymFHHIuKZGIY6mgfBcYTkoELDZ8RToIx+ncPPWZJGMEpsBm5+MRH91ADPz5Jb
	 qvbzHkk95NNpPxCU5yBigzTFYw7NC89ypo5siJp1sPIB/kOvdAeF7le4c3/nUcneYw
	 1EHKwARhIdRQNij5w2WMva6N4Xb/cJB7cZmPvw0E4B0VAjcRjzbWb0lNXDhPtJXcXn
	 y+v+6AtHfvTJ+COS79QkXM4e4+lm4g+7rwJhIZBn9l/6idQ7flIohrKtejFQl+mZrA
	 yodsP3gtZ37Rw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LvTZViS-Efei; Mon, 17 Jul 2023 11:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27EBF81290;
	Mon, 17 Jul 2023 11:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 27EBF81290
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 563A11BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 11:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AA0B4092F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 11:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AA0B4092F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ML2VS7E0Ihr9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 11:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63D8640882
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63D8640882
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 11:00:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="452273721"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="452273721"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 04:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="700474867"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="700474867"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by orsmga006.jf.intel.com with ESMTP; 17 Jul 2023 04:00:43 -0700
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jul 2023 13:00:39 +0200
Message-Id: <20230717110039.298259-1-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689591645; x=1721127645;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=98xdvRLdNxWa1QILVAI/MQeF9P0a7o7ZDRYIRiCCH5M=;
 b=b+mVxfy/j+Uea6pq0pvZ6G7UgKAJZuX+Vccj2p5A99iBTvEMYllu695Z
 K23gwcCXRlYYOPOaV0TL5tqlMG7xu6CnVBEWFA3j8924PRTNnaQIXNZlH
 ZyWI3awOO/HfhcipyHmqSPGruo60Sqj9kFnS0/rU8CeVoMDA3LGWNQrKM
 bJ0XJ7c2SAkWBJLwdVuqhcg0xCTaooWhjCeOz38TcJt4YmuwaU6BxLBCU
 LzAaJBo7+dDBCnzb7gdPNPxGKgQ/DIOadCnu/jhGrBmbKU7xkdkkyxyqM
 9DNCKa4Odoc9FhRA2J/a6ci3xjULBErVLIun8xuqtk7NzTtO8zMY/eXs6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b+mVxfy/
Subject: [Intel-wired-lan] [PATCH iwl-net v3 3/3] igc: Change IGC_MIN to
 allow set rx/tx value between 64 and 80
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
Cc: "Zaborska, Olga" <olga.zaborska@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Q2hhbmdlIHRoZSBtaW5pbXVtIHZhbHVlIG9mIFJYL1RYIGRlc2NyaXB0b3JzIHRvIDY0IHRvIGVu
YWJsZSBzZXR0aW5nIHRoZSByeC90eCB2YWx1ZcKgCmJldHdlZW4gNjQgYW5kIDgwLiBBbGwgaWdj
IGRldmljZXMgY2FuIHVzZSBhcyBsb3cgYXMgNjQgZGVzY3JpcHRvcnMuClRoaXMgY2hhbmdlIHdp
bGwgdW5pZnkgaWdjIHdpdGggb3RoZXIgZHJpdmVycy4KQmFzZWQgb24gY29tbWl0IDdiMWJlMTkg
KCJlMTAwMGU6IGxvd2VyIHJpbmcgbWluaW11bSBzaXplIHRvIDY0IikKCkZpeGVzOiAwNTA3ZWY4
ICgiaWdjOiBBZGQgdHJhbnNtaXQgYW5kIHJlY2VpdmUgZmFzdHBhdGggYW5kIGludGVycnVwdCBo
YW5kbGVycyIpClNpZ25lZC1vZmYtYnk6IE9sZ2EgWmFib3Jza2EgPG9sZ2EuemFib3Jza2FAaW50
ZWwuY29tPgotLS0KIHYxLT52MiBmaXhlZCBjb21taXQgdGl0bGUgYW5kIG1lc3NhZ2UKIHYyLT52
MyBmaXhlZCBjb21taXQgdGl0bGUgYW5kIG1lc3NhZ2UsIGFkZGVkIGNoYW5nZXMgZm9yIGlnYiBh
bmQgaWdjCi0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oIHwgNCArKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaCBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaAppbmRleCAzNGFlYmYwMGE1MTIuLjU1ODc2OGNlZTVi
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaApAQCAtMzI2LDExICszMjYsMTEg
QEAgZXh0ZXJuIGNoYXIgaWdjX2RyaXZlcl9uYW1lW107CiAvKiBUWC9SWCBkZXNjcmlwdG9yIGRl
ZmluZXMgKi8KICNkZWZpbmUgSUdDX0RFRkFVTFRfVFhECQkyNTYKICNkZWZpbmUgSUdDX0RFRkFV
TFRfVFhfV09SSwkxMjgKLSNkZWZpbmUgSUdDX01JTl9UWEQJCTgwCisjZGVmaW5lIElHQ19NSU5f
VFhECQk2NAogI2RlZmluZSBJR0NfTUFYX1RYRAkJNDA5NgogCiAjZGVmaW5lIElHQ19ERUZBVUxU
X1JYRAkJMjU2Ci0jZGVmaW5lIElHQ19NSU5fUlhECQk4MAorI2RlZmluZSBJR0NfTUlOX1JYRAkJ
NjQKICNkZWZpbmUgSUdDX01BWF9SWEQJCTQwOTYKIAogLyogU3VwcG9ydGVkIFJ4IEJ1ZmZlciBT
aXplcyAqLwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
