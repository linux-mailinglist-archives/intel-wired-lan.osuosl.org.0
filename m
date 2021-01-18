Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 201DD2FA47D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4EFF8672C;
	Mon, 18 Jan 2021 15:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZtsoAD4CXGu9; Mon, 18 Jan 2021 15:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AF0886735;
	Mon, 18 Jan 2021 15:23:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BCE11BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4860385B73
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oSo7EzNITwve for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBABC85B0C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:09 +0000 (UTC)
IronPort-SDR: PULe5GOlUoVzSIyAtY+93tehAOW/R9WknXNyHQlAoJGzRDdkwJb/q5CZL09H0LflLjVIdCH8tz
 BsOOBWamD7Bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358036"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358036"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:23:09 -0800
IronPort-SDR: Ia6Ihj9or7sidCKiG6tg7M2o7yrzuvbc58f8Xtvfp+12CwWNYl4xCIO+eqT8TacTkQHrsPbyWS
 FIejOUD/Gueg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676363"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:23:07 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:14 +0100
Message-Id: <20210118151318.12324-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 07/11] ice: skip NULL check
 against XDP prog in ZC path
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

V2hvbGUgemVyby1jb3B5IHZhcmlhbnQgb2YgY2xlYW4gUnggaXJxIGlzIGV4ZWN1dGVkIHdoZW4g
eHNrX3Bvb2wgaXMKYXR0YWNoZWQgdG8gcnhfcmluZyBhbmQgaXQgY2FuIGhhcHBlbiBvbmx5IHdo
ZW4gWERQIHByb2dyYW0gaXMgcHJlc2VudApvbiBpbnRlcmZhY2UuIFRoZXJlZm9yZSBpdCBpcyBz
YWZlIHRvIGFzc3VtZSB0aGF0IHByb2dyYW0gaXMgYWx3YXlzCiFOVUxMIGFuZCB0aGVyZSBpcyBu
byBuZWVkIGZvciBjaGVja2luZyBpdCBpbiBpY2VfcnVuX3hkcF96Yy4KClJldmlld2VkLWJ5OiBC
asO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hY2ll
aiBGaWphbGtvd3NraSA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jIHwgNyArKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3hzay5jCmluZGV4IDE3ODIxNDZkYjY0NC4uYjkyNmNhOWM0ZjRmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMKQEAgLTUxNywxMSArNTE3
LDEwIEBAIGljZV9ydW5feGRwX3pjKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IHhk
cF9idWZmICp4ZHApCiAJdTMyIGFjdDsKIAogCXJjdV9yZWFkX2xvY2soKTsKKwkvKiBaQyBwYXRj
aCBpcyBlbmFibGVkIG9ubHkgd2hlbiBYRFAgcHJvZ3JhbSBpcyBzZXQsCisJICogc28gaGVyZSBp
dCBjYW4gbm90IGJlIE5VTEwKKwkgKi8KIAl4ZHBfcHJvZyA9IFJFQURfT05DRShyeF9yaW5nLT54
ZHBfcHJvZyk7Ci0JaWYgKCF4ZHBfcHJvZykgewotCQlyY3VfcmVhZF91bmxvY2soKTsKLQkJcmV0
dXJuIElDRV9YRFBfUEFTUzsKLQl9CiAKIAlhY3QgPSBicGZfcHJvZ19ydW5feGRwKHhkcF9wcm9n
LCB4ZHApOwogCXN3aXRjaCAoYWN0KSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
