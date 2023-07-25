Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045F6760CAD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 10:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E97A405CF;
	Tue, 25 Jul 2023 08:11:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E97A405CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690272683;
	bh=5zsJym7CQ+K3m0exUPJr9U4PpHij3Uq7AWmJGZYSsww=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mcqik234WiqL2bsMWjlFBBxku4g0n31nGsQXp0tp+B1siLOGbQDO2RO1eZbVTlced
	 g2knqZe1kgitGxEisOksNVD9a9mfWZ0RD/TScoOfYwAukmayc/eVLMUX63SSewxUJZ
	 A+wDI546QoGzg74q2asdAuZ4keUPLrcl+Irx0OAnQIIxfcakJb9cWg0H6W79r56sW4
	 8babTvIbrzdvMZT7mP/PWPyJTi+5UdMUyHHOTGYFyiWVqY5BTNCX9nZdOb+BnkOFuF
	 iDOUbfJoYwAS9WkOH0su5U2ZKwdcDSnHQ2+B+Y/Bky3G2rIpySiJHAT+SeJgGTZgWI
	 2rlcc8jhUVlFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PfRlS8g5sb3H; Tue, 25 Jul 2023 08:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 631A940260;
	Tue, 25 Jul 2023 08:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 631A940260
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 297701BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DD6541527
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DD6541527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JmFYX_4C-Q0y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 08:11:13 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C744409AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C744409AA
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="367675286"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367675286"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 01:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869378387"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 01:11:13 -0700
From: Olga Zaborska <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Jul 2023 10:10:56 +0200
Message-Id: <20230725081058.92158-2-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230725081058.92158-1-olga.zaborska@intel.com>
References: <20230725081058.92158-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690272673; x=1721808673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xidpVfQN1Bp2Nmiyvgw8Ty2GxuJ1M8j24C0MIJp4+bY=;
 b=Jc6jyaLwS2Hp9Ua1wSmzKHqrlSwsP/qYsEOY8U2Vxyh3lO19gG5xjubA
 SKM+1SBDCEmq3sRSACqcoI4WYKMKO9DcipDAPIW1m8JRnUopN1xWEbTzc
 XBjsQgwzCwsDCvPK4w9E2ibqEgI33ozYTsbrYtvMiVQNmQWfw48zsyDFN
 h5R5MB5CEZKt6c+bBRyKGGMqc3vv4Z+NeS2gQCtuZvK/osqBFikiOO1c+
 w6V33lGuQ+eLSRBacaM75ucGu/u3BO3aPeB2nKG1h6Pft1xmHPoXzVgyl
 RBOlYmYdEIq7bWyBSYESOQW3TmymrpAT/r7PFMTnkqufShCjUprcu2rNg
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jc6jyaLw
Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/3] igc: Change IGC_MIN to
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
Cc: Olga Zaborska <olga.zaborska@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Q2hhbmdlIHRoZSBtaW5pbXVtIHZhbHVlIG9mIFJYL1RYIGRlc2NyaXB0b3JzIHRvIDY0IHRvIGVu
YWJsZSBzZXR0aW5nIHRoZSByeC90eCB2YWx1ZcKgCmJldHdlZW4gNjQgYW5kIDgwLiBBbGwgaWdj
IGRldmljZXMgY2FuIHVzZSBhcyBsb3cgYXMgNjQgZGVzY3JpcHRvcnMuClRoaXMgY2hhbmdlIHdp
bGwgdW5pZnkgaWdjIHdpdGggb3RoZXIgZHJpdmVycy4KQmFzZWQgb24gY29tbWl0IDdiMWJlMTk4
N2MxZSAoImUxMDAwZTogbG93ZXIgcmluZyBtaW5pbXVtIHNpemUgdG8gNjQiKQoKRml4ZXM6IDA1
MDdlZjhhMDM3MiAoImlnYzogQWRkIHRyYW5zbWl0IGFuZCByZWNlaXZlIGZhc3RwYXRoIGFuZCBp
bnRlcnJ1cHQgaGFuZGxlcnMiKQpTaWduZWQtb2ZmLWJ5OiBPbGdhIFphYm9yc2thIDxvbGdhLnph
Ym9yc2thQGludGVsLmNvbT4KIC0tLQp2MS0+djIgZml4ZWQgY29tbWl0IHRpdGxlIGFuZCBtZXNz
YWdlCnYyLT52MyBmaXhlZCBjb21taXQgdGl0bGUgYW5kIG1lc3NhZ2UsIGFkZGVkIGNoYW5nZXMg
Zm9yIGlnYiBhbmQgaWdjCnYzLT52NCBmaXhlZCBjb21taXQgbWVzc2FnZQotLS0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaCB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmggYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2Mv
aWdjLmgKaW5kZXggMzRhZWJmMDBhNTEyLi41NTg3NjhjZWU1YjkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjLmgKQEAgLTMyNiwxMSArMzI2LDExIEBAIGV4dGVybiBjaGFyIGlnY19k
cml2ZXJfbmFtZVtdOwogLyogVFgvUlggZGVzY3JpcHRvciBkZWZpbmVzICovCiAjZGVmaW5lIElH
Q19ERUZBVUxUX1RYRAkJMjU2CiAjZGVmaW5lIElHQ19ERUZBVUxUX1RYX1dPUksJMTI4Ci0jZGVm
aW5lIElHQ19NSU5fVFhECQk4MAorI2RlZmluZSBJR0NfTUlOX1RYRAkJNjQKICNkZWZpbmUgSUdD
X01BWF9UWEQJCTQwOTYKIAogI2RlZmluZSBJR0NfREVGQVVMVF9SWEQJCTI1NgotI2RlZmluZSBJ
R0NfTUlOX1JYRAkJODAKKyNkZWZpbmUgSUdDX01JTl9SWEQJCTY0CiAjZGVmaW5lIElHQ19NQVhf
UlhECQk0MDk2CiAKIC8qIFN1cHBvcnRlZCBSeCBCdWZmZXIgU2l6ZXMgKi8KLS0gCjIuMzEuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2ly
ZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xp
c3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
