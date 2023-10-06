Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD86B7BB6DA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:44:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5056A6141D;
	Fri,  6 Oct 2023 11:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5056A6141D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696592660;
	bh=Z8xev54yocih9tBWAjlZAU+cwis4FEEMiXrrOr6SikE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lQNaFswDb2dRJCJO7XYrojSO203EDPU1fbUCcswvbQxKniQ4i5AbmDXBB8vSwzzVI
	 KorWHdfvhw5RVGAceACE+/lwhmKzxLsY3mlTfRx0UUN/cT7L3zTzrNqJJ7gDqWmSJE
	 Ec2lB9kJy+BKkuQGotd618OwtXKkCma48LyJssAYRVGEyLGrzDm9Z1knISnt7jdOAy
	 Es/SZQyDY7w/HeU4aLVT+crzoSiKdD81hVSQSet2IpM5HcQHidBw0EPA/zyxLI3NJh
	 kt/aRNY52XHygUGBMDKpL5pugzADkazS/bb3Hg2PCBXxS/KhL/jGd34Vza6hUj8wD6
	 iQ3FY1FlFgo+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhF52dObShC8; Fri,  6 Oct 2023 11:44:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2E1860EF2;
	Fri,  6 Oct 2023 11:44:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2E1860EF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FDAD1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5642383B6F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5642383B6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZvGQRWy_XSI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:44:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2995883B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:44:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2995883B5E
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="470003284"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470003284"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="925942728"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="925942728"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2023 04:43:59 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 13:41:01 +0200
Message-Id: <20231006114101.1608796-6-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696592643; x=1728128643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T7B4f7810U0FdBKSEAXDN5xAeXxcWlTekOw+2N8jEHU=;
 b=ezo48cd7qgJ9ubG1HyLzy+WVZcxE8LdvHYZU2Uf5nN+acNxb5l6uUK6f
 TlerphNxrThgeWZUiK91kubrqPrAaMSO6L8m5TixtUadYLanU29srPwrb
 tuNSpzdBL0C94vW2TGkMNSECKsKDk2YZgKZ7O3/15dO1zClaNMx4doBjE
 +13cDiMBfozpuw6x4pbjgtKwBP5XQuGFb6wxrSqurNZgIhawb5J8SamBL
 PTc5hiY4SrGBROALJ491/4amLQ80bGOeTmD8wiMI+gdrms/wBbWZkjJG1
 CKdRlrAO+DrL0OG5FOjWXXAa+VxI03xbb9rF5D/kzbRHyYnuXiQBBes58
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ezo48cd7
Subject: [Intel-wired-lan] [PATCH net-next v3 5/5] dpll: netlink/core:
 change pin frequency set behavior
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Align the aproach of pin frequency set behavior with the approach
introduced with pin phase adjust set.
Fail the request if any of devices did not registered the callback ops.
If callback op on any pin's registered device fails, return error and
rollback the value to previous one.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/dpll/dpll_netlink.c | 50 +++++++++++++++++++++++++++++--------
 1 file changed, 40 insertions(+), 10 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 97319a9e4667..8e5fea74aec1 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -615,30 +615,60 @@ static int
 dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
 		  struct netlink_ext_ack *extack)
 {
-	u64 freq = nla_get_u64(a);
-	struct dpll_pin_ref *ref;
+	u64 freq = nla_get_u64(a), old_freq;
+	struct dpll_pin_ref *ref, *failed;
+	const struct dpll_pin_ops *ops;
+	struct dpll_device *dpll;
 	unsigned long i;
 	int ret;
 
 	if (!dpll_pin_is_freq_supported(pin, freq)) {
-		NL_SET_ERR_MSG_ATTR(extack, a, "frequency is not supported by the device");
+		NL_SET_ERR_MSG_ATTR(extack, a,
+				    "frequency is not supported by the device");
 		return -EINVAL;
 	}
-
 	xa_for_each(&pin->dpll_refs, i, ref) {
-		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
-		struct dpll_device *dpll = ref->dpll;
-
-		if (!ops->frequency_set)
+		ops = dpll_pin_ops(ref);
+		if (!ops->frequency_set || !ops->frequency_get)
 			return -EOPNOTSUPP;
+	}
+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
+	ops = dpll_pin_ops(ref);
+	dpll = ref->dpll;
+	ret = ops->frequency_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+				 dpll_priv(dpll), &old_freq, extack);
+	if (ret) {
+		NL_SET_ERR_MSG(extack, "unable to get old frequency value");
+		return ret;
+	}
+	if (freq == old_freq)
+		return 0;
+
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
 		ret = ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
 					 dpll, dpll_priv(dpll), freq, extack);
-		if (ret)
-			return ret;
+		if (ret) {
+			failed = ref;
+			goto rollback;
+		}
 	}
 	__dpll_pin_change_ntf(pin);
 
 	return 0;
+
+rollback:
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		if (ref == failed)
+			break;
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		if (ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				       dpll, dpll_priv(dpll), old_freq, extack))
+			NL_SET_ERR_MSG(extack, "set frequency rollback failed");
+	}
+	return ret;
 }
 
 static int
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
