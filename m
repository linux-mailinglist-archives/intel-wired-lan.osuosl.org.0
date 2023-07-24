Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CACF75F2D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 12:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66D9760F4B;
	Mon, 24 Jul 2023 10:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66D9760F4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690194031;
	bh=5zsJym7CQ+K3m0exUPJr9U4PpHij3Uq7AWmJGZYSsww=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yWK8VZP89A2YZChsKA7RV9PTo7EUbuQJl4mnW9WncXxXtI7CAm38pb5NlfGGLJSfy
	 DxMig26BZly+sN6dpnaO7g7fUELNEsbX/FB+q0pImY6WHEB6y3qiqt9eXC41y70LKK
	 J//8kh7zBCO8TbwcNNj/VJjQgH4tJ2LZlTls6M+z5gs48zLoHG+1r96//NxrN1zz18
	 OFoMSk2k0URF5Rq7aEXW+lKwnyov60piCYWqUAPnLqr9K2HSl3Cbrnqix3dAe9jIOZ
	 4X6zx1jbo9nl6A8Ta6cBGwWGNtt/vV7YPJCy7NpiPUAxws9utsTKsjrYUkx/o4ngd4
	 dBjtyCsSMSFUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkwQXUCnHkL6; Mon, 24 Jul 2023 10:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50F7860F31;
	Mon, 24 Jul 2023 10:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50F7860F31
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66AB61BF45A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4068660EAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4068660EAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gwsAIgu__QXx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 10:20:24 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A4A660F3F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A4A660F3F
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="367428254"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="367428254"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:13:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="972206805"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="972206805"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2023 03:13:17 -0700
From: Olga Zaborska <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jul 2023 12:06:21 +0200
Message-Id: <20230724100623.79886-2-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230724100623.79886-1-olga.zaborska@intel.com>
References: <20230724100623.79886-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690194024; x=1721730024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xidpVfQN1Bp2Nmiyvgw8Ty2GxuJ1M8j24C0MIJp4+bY=;
 b=Id+2r032uIFymGXGN1fxS1wEGQ3+mSxpxoH33K0zWLQF2/RIPETWYikG
 knUwCZqi3GcPQC4/NxQi00v4nD5UYhX5yOq4iQJyI4A3GZXgino3kTL/M
 bOkLn9GRrsbYve/vQDtAyrhQEDLzXbiZrhaZyg2Kwm5bU1LjNvyPZgbtt
 NZ02oM5jg5T+FZk9/NyM27QmyN+0fskAOIfSAT0r2zXAVsgkdRV8CvncJ
 KETcoqXRVNGv+US6UZgG8RGde62bFTqdsd5UUtRL/x4NUecqMtSTwwB9y
 wwnxPOh9H5QqeK+dtY2hdttH966ji0qRYF0sQ/FS47rVHX09iU0nhwEcl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Id+2r032
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
