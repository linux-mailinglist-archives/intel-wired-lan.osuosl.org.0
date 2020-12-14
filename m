Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 501B72D9ACA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFF9B87265;
	Mon, 14 Dec 2020 15:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uPCKU-HZBlW6; Mon, 14 Dec 2020 15:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4787687206;
	Mon, 14 Dec 2020 15:22:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4D811BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D023E8744F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JU3X4XNOOARv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:22:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 50542870D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:22:55 +0000 (UTC)
IronPort-SDR: Kirp8/Es7HRrO2pdBa50NoIvot6XBJ7lCMAjtlbcH8aiJD0D6/WMrTAcTQhTCRN10xG/kno32E
 oDgayXFd58Aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="236308469"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="236308469"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:22:54 -0800
IronPort-SDR: yVbryF9/CAvcv7DJmj1AZLTlKAQhEdobTU3q4WXmpE2WX3SNbuj7FdtU8kvK324ZI62neN8iaJ
 jkIRoslXcbwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411285637"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2020 07:22:52 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 16:13:00 +0100
Message-Id: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 0/8] i40e/ice cleanups
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpUaGlzIHNlcmllcyBpcyBtb3N0bHkgYWJvdXQgdGhlIGNsZWFudXBzIG9uIFJ4IChaQy9u
b3JtYWwpIHBhdGhzIGJvdGggaW4KaWNlIGFuZCBpNDBlIGRyaXZlcnMuIFRoaW5ncyB0aGF0IHN0
YW5kIG91dCBhcmUgdGhlIHNpbXBsaWZhY3Rpb25zIG9mCmljZV9jaGFuZ2VfbXR1IGFuZCBpNDBl
X3hkcF9zZXR1cC4KClRoYW5rcyEKCnYyOiBmaXgga2RvYyBpbiBwYXRjaCA1IChKYWt1YikKCkJq
w7ZybiBUw7ZwZWwgKDEpOgogIGk0MGUsIHhzazogU2ltcGxpZnkgdGhlIGRvLXdoaWxlIGFsbG9j
YXRpb24gbG9vcAoKTWFjaWVqIEZpamFsa293c2tpICg3KToKICBpNDBlOiBkcm9wIHJlZHVuZGFu
dCBjaGVjayB3aGVuIHNldHRpbmcgeGRwIHByb2cKICBpNDBlOiBkcm9wIG1pc2xlYWRpbmcgZnVu
Y3Rpb24gY29tbWVudHMKICBpNDBlOiBhZGp1c3QgaTQwZV9pc19ub25fZW9wCiAgaWNlOiBzaW1w
bGlmeSBpY2VfcnVuX3hkcAogIGljZTogbW92ZSBza2IgcG9pbnRlciBmcm9tIHJ4X2J1ZiB0byBy
eF9yaW5nCiAgaWNlOiByZW1vdmUgcmVkdW5kYW50IGNoZWNrcyBpbiBpY2VfY2hhbmdlX210dQog
IGljZTogc2tpcCBOVUxMIGNoZWNrIGFnYWluc3QgWERQIHByb2cgaW4gWkMgcGF0aAoKIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCAgMyAtLQogZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyB8IDU2ICsrKysrLS0tLS0tLS0tLS0t
LS0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jICB8ICA0ICst
CiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyAgIHwgIDkgLS0tLQog
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMgICB8IDQ0ICsrKysrKyst
LS0tLS0tLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5oICAgfCAg
MiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYyAgICB8ICA3ICsr
LQogNyBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA5MSBkZWxldGlvbnMoLSkKCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
