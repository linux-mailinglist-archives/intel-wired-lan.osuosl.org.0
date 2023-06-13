Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED3072DEDC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 12:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD44A416DE;
	Tue, 13 Jun 2023 10:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD44A416DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686651301;
	bh=0j1HrBDtVEht2A5VvZlr1T5nJRmXAs7PfOpovG3jQus=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e/OedMEYA8vRbTN51odAt0B/e50keuQhJEYijROIo3ePbIfn5CnSzbY7Pyarf3wC1
	 SDWIaV8tguvUvduinO7868oLBl2+6F/csIkDkL356c49V7X+iz/86/wpwDjT528vMP
	 Jvlfw+tQjpmCoJGC4xD4oK5JCe7TXO2Uk1lo9CsHDtsP60jCueqOLHuilRyE4gptWP
	 CVcypolz9dRGsTQV4gJQgHieKFRZMlTh75ospXfECjuleQdgCAvEuqGRBS89ZQXuJL
	 xcpJj9uAyfWol/1F6KkTXGYMyqbw8AMLfZatjFjHRVjwGr5ZrQelCc0tVFuDqUQx05
	 rUoGpDWY+wz9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVWQZoBG9dzj; Tue, 13 Jun 2023 10:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E40A40492;
	Tue, 13 Jun 2023 10:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E40A40492
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33BD01BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B441D4109F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B441D4109F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvDwrzBt4i6B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 10:14:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7204640F4E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7204640F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="424168062"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="424168062"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="885787124"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="885787124"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2023 03:14:40 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5D00A35434;
 Tue, 13 Jun 2023 11:14:39 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 12:13:21 +0200
Message-Id: <20230613101330.87734-4-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230613101330.87734-1-wojciech.drewek@intel.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686651283; x=1718187283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3RNXBz0b2iMk57rGPLkqp0DFMnsytIe6vyXi1AWbzvc=;
 b=f9feqZHjqPgjdiUcb5utXvI9K8vFL/fsrfnyDqfi2wi5vUduiOmvueI+
 x06EbylLbDqTT5t3T6miyLHusEZN87vh0KL8af4FSXbHWPlmeGFSRhTFR
 rHZuS76uMYKYJJb+0fyjy3YGMVeGMySG1SdW6WYgKiWsRwnr6X0/2Q9Cw
 v5V/4xmEyZBnHhtdA/pKrhfrGLL9XPETLj4WObr26p4udc4fracNEqMwf
 giJn6C60vI0bfdPA0jKODLW2BlITJSe+1AwpViAqy6zuvrMXnUZezQZgx
 tpLLxm6TPihEU0nIbxIhoWTBYY8z3NzWsLq1wC+ZG3WUu4whipiAX4/sG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f9feqZHj
Subject: [Intel-wired-lan] [PATCH iwl-next v5 03/12] ice: Don't tx before
 switchdev is fully configured
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is possibility that ice_eswitch_port_start_xmit might be
called while some resources are still not allocated which might
cause NULL pointer dereference. Fix this by checking if switchdev
configuration was finished.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index be5b22691f7c..15a4c148c28b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -331,6 +331,9 @@ ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 	np = netdev_priv(netdev);
 	vsi = np->vsi;
 
+	if (!vsi || !ice_is_switchdev_running(vsi->back))
+		return NETDEV_TX_BUSY;
+
 	if (ice_is_reset_in_progress(vsi->back->state) ||
 	    test_bit(ICE_VF_DIS, vsi->back->state))
 		return NETDEV_TX_BUSY;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
