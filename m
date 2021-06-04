Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 630A939BE0E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:06:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA109843DF;
	Fri,  4 Jun 2021 17:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ehu6IuaEv2Cz; Fri,  4 Jun 2021 17:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C99CC843E0;
	Fri,  4 Jun 2021 17:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 26E051BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6D2640222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djlel7SI84vE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1323A41D9B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: 0HYnaknodR/WLB8G7qycj/aCgWSMDWrC9HBCP/+AwK4zb6niI9BNj84bsk7cpGxGCCE4w+KcIA
 RZZS10SneO+A==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666479"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666479"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:03 -0700
IronPort-SDR: VLR565XhH8nBaC0cX+hyzeF0L7jYykx5cqpehvQ01XROc6yfKLOIu4nGe1gg/8ek8Cf2t79ZVB
 urwzMe6lgPTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086390"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:30 -0700
Message-Id: <20210604165335.33329-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 10/15] iavf: Add change MTU
 message
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUGF0cnlrIE1hxYJlayA8cGF0cnlrLm1hbGVrQGludGVsLmNvbT4KCkFkZCBhIG5ldGRl
dl9pbmZvIGxvZyBlbnRyeSBpbiBjYXNlIG9mIGEgY2hhbmdlIG9mIE1UVSBzbyB0aGF0IHVzZXIg
aXMKbm90aWZpZWQgYWJvdXQgdGhpcyBjaGFuZ2UgaW4gdGhlIHNhbWUgbWFubmVyIGFzIGluIGNh
c2Ugb2YgcGYgZHJpdmVyLgoKU2lnbmVkLW9mZi1ieTogUGF0cnlrIE1hxYJlayA8cGF0cnlrLm1h
bGVrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5
ZW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9t
YWluLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMKaW5kZXggMmM2MzljN2ViZDFiLi5l
N2I5YzY0ZGIzYjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYv
aWF2Zl9tYWluLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21h
aW4uYwpAQCAtMzM2NCw2ICszMzY0LDggQEAgc3RhdGljIGludCBpYXZmX2NoYW5nZV9tdHUoc3Ry
dWN0IG5ldF9kZXZpY2UgKm5ldGRldiwgaW50IG5ld19tdHUpCiB7CiAJc3RydWN0IGlhdmZfYWRh
cHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2KG5ldGRldik7CiAKKwluZXRkZXZfaW5mbyhuZXRk
ZXYsICJjaGFuZ2luZyBNVFUgZnJvbSAlZCB0byAlZFxuIiwKKwkJICAgIG5ldGRldi0+bXR1LCBu
ZXdfbXR1KTsKIAluZXRkZXYtPm10dSA9IG5ld19tdHU7CiAJaWYgKENMSUVOVF9FTkFCTEVEKGFk
YXB0ZXIpKSB7CiAJCWlhdmZfbm90aWZ5X2NsaWVudF9sMl9wYXJhbXMoJmFkYXB0ZXItPnZzaSk7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
