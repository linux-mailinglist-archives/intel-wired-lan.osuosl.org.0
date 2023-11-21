Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9850A7F2D3E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 13:34:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F34C76104F;
	Tue, 21 Nov 2023 12:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F34C76104F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700570092;
	bh=HMfOwsF+wEtXXKlsxaCzVRh43Ng4yjMNf09T2t+CwTc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xRgGGGUfHO/iZ+EDwYgvnb4J+LNgSH8I2HhY8Vo3SgwpfOmX8kEeB+J2YEkIy12g0
	 72NmbJQ7N3htC5drgw+LQVUG0/HZEg/6dl439iiCgQIigIehSxP0Jg5jDq55CoVE+F
	 O7I1wW+ZBfHkAPQmhnT0DCpbR/GnRrNwTe4+gQdOVkWX3AWoFIU5lHdw0fNUbD+/2U
	 x+gTg1fSeu0rnHqa3ae3UyIlg5K7BeCMZHAEbIodECnERO1gUt0NeHl/Vb/SirbW8k
	 /svEwtJK71uCYNM1Myu3/stJ5KnDoKps4etmtwUQ0ID0n/3sZyIIeiVWRDjLQiJG0y
	 jMqh/Pv96ICpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYk16p7Yl2qF; Tue, 21 Nov 2023 12:34:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 056FF6104C;
	Tue, 21 Nov 2023 12:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 056FF6104C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65EE01BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D41681E62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D41681E62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NEUz2bLBxnuI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 12:34:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4ABE181E6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 12:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ABE181E6B
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="371165814"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="371165814"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:34:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760095975"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760095975"
Received: from wpastern-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 04:34:36 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue, 21 Nov 2023 14:34:25 +0200
Message-Id: <20231121123428.20907-1-ilpo.jarvinen@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700570083; x=1732106083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JOor8boF+dUQadwIIvn/dAw0I268VWJyO3494Evc3UY=;
 b=GUBkIc0hcYjunH+T7NVh6GgwpFb6nOu0t64d/YmhM5pmf3nTemJLvvqI
 P3HNY+hdalu50Mys/fqNAwcLAzxO+3FUfjETAded0ykkIIMyUr4UAsdkL
 DnR7fS4JllbLNlxLK/jD3MvOUWW7DYp67S9Eya0cRPlD5pnQ02lJy7pi2
 0sTYx82H5XiXStRoJMErJc4qL09s7Ep/laFmmG1Uor8JovrGmcou1R9WD
 VlvTVZTB4fteHJLbO5+evyLGPEBs01B080idrKwBRisKfbpND/KUxiYIe
 UyjhZUtZewAD1VFXy7JAT4Ggnnf0FOM/KoG+Tp2GTfGxkFbUy/4Jfz9Y+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GUBkIc0h
Subject: [Intel-wired-lan] [PATCH v4 0/3] net/ethernet/intel: PCI cleanups
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
Cc: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UmVzZW5kaW5nIHRoZXNlIFBDSSByZWxhdGVkIGNsZWFudXBzIGZvciBJbnRlbCBFdGhlcm5ldCBk
cml2ZXJzLiBObwpvdGhlciBjaGFuZ2VzIGV4Y2VwdCByZW1vdmluZyB0aGUgYWNjZXB0ZWQgcGF0
Y2hlcyBpbiB2NC4KClRoZXNlIGNhbiBnbyB0aHJvdWdoIHRoZSB1c3VhbCBkcml2ZXIgdHJlZSBh
cyB0aGVyZSBhcmUgbm8gUENJIHRyZWUKcmVsYXRlZCBkZXBlbmRlbmNpZXMuCgp2NDoKLSBSZW1v
dmVkIGFjY2VwdGVkIHBhdGNoZXMKCklscG8gSsOkcnZpbmVuICgzKToKICBpZ2I6IFVzZSBGSUVM
RF9HRVQoKSB0byBleHRyYWN0IExpbmsgV2lkdGgKICBlMTAwMGU6IFVzZSBQQ0lfRVhQX0xOS1NU
QV9OTFcgJiBGSUVMRF9HRVQoKSBpbnN0ZWFkIG9mIGN1c3RvbQogICAgZGVmaW5lcy9jb2RlCiAg
ZTEwMDBlOiBVc2UgcGNpZV9jYXBhYmlsaXR5X3JlYWRfd29yZCgpIGZvciByZWFkaW5nIExOS1NU
QQoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9kZWZpbmVzLmggfCAgMyAtLS0K
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9tYWMuYyAgICAgfCAxOCArKysrKysr
Ky0tLS0tLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9lMTAwMF9tYWMuYyAg
fCAgNiArKystLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRp
b25zKC0pCgotLSAKMi4zMC4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
