Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7414031FD33
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 17:37:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34AAA86ADD;
	Fri, 19 Feb 2021 16:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JcCtzWdnepox; Fri, 19 Feb 2021 16:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BDF186CCC;
	Fri, 19 Feb 2021 16:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C41FF1BF287
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACD5E60703
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RM5G-slER5uT for <intel-wired-lan@osuosl.org>;
 Fri, 19 Feb 2021 16:37:03 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C690F606BD; Fri, 19 Feb 2021 16:37:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCC5C6070F
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:36:54 +0000 (UTC)
IronPort-SDR: LVlgJOpE4aPwZShIxRBWdxjsKEFKABGddWclt4DTE0hY6+SRNWQH0HY1IoZapWwRJ3cZMz38VF
 HXM7d8Uu5iiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="183949637"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="183949637"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 08:36:53 -0800
IronPort-SDR: nICqqRD/zTOdBx0GTMHrryXKl/2K+2eaaIjnlNkqWI8b+ILbHonIp/h0XkmlW2RB1ipxt1B6N4
 q0tljKMOZjRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="581737121"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.114])
 by orsmga005.jf.intel.com with ESMTP; 19 Feb 2021 08:36:52 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 20 Feb 2021 00:36:46 +0800
Message-Id: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1 0/2] igc: Fix Pause Frame
 Advertising
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
Cc: muhammad.husaini.zulkifli@intel.com, mallikarjuna.chilakala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpLaW5kbHkgaGVscCB0byByZXZpZXcgYmVsb3cgcGF0Y2hlcy4KClN1bW1hcnkgb2YgZWFj
aCBwYXRjaGVzIGFzIHBlciBiZWxvdzoKUGF0Y2ggMTogVG8gZml4ICJBZHZlcnRpc2VkIHBhdXNl
IGZyYW1lIHVzZSIgYWR2ZXJ0aXNpbmcgd2hlbiB0eCBhbmQgcnggYXJlIGluIG9mZiBzdGF0ZSB3
aXRoIEF1dG9OZWdvdGlhdGUgb2ZmLgpQYXRjaCAyOiBUbyBmaXggIlN1cHBvcnRlZCBwYXVzZSBm
cmFtZSB1c2UiIG91dHB1dCB2aWEgZXRodG9vbCB3aGVyZSB0aGUgYml0IGlzIG5vdCBzZXQuCgpU
ZXN0ZWQgd2l0aCBJbnRlbMKuIEV0aGVybmV0IENvbnRyb2xsZXIgSTIyNShSZXY0KS4KClRoYW5r
cy4KCk11aGFtbWFkIEh1c2FpbmkgWnVsa2lmbGkgKDIpOgogIGlnYzogRml4IFBhdXNlIEZyYW1l
IEFkdmVydGlzaW5nCiAgaWdjOiBGaXggU3VwcG9ydGVkIFBhdXNlIEZyYW1lIExpbmsgU2V0dGlu
ZwoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfZXRodG9vbC5jIHwgNyArKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKLS0K
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
