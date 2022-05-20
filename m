Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E5252EAA0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 13:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7593160AB9;
	Fri, 20 May 2022 11:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LhqHbyTfzVt; Fri, 20 May 2022 11:19:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8835F6135F;
	Fri, 20 May 2022 11:19:44 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17E0E1BF31D
 for <intel-wired-lan@osuosl.org>; Fri, 20 May 2022 11:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01A6042550
 for <intel-wired-lan@osuosl.org>; Fri, 20 May 2022 11:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8LgVqM0PfOn for <intel-wired-lan@osuosl.org>;
 Fri, 20 May 2022 11:19:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 299E9424C3
 for <intel-wired-lan@osuosl.org>; Fri, 20 May 2022 11:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653045579; x=1684581579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GHyzsjTD2UboMhILC9JNhppOmpMea+rwmHH2cYFhseU=;
 b=LGHltFD/tqMJqtIUgTZfokb/rl/lb37CBY/3QUN24wRPKcM+WYZAEWvC
 AdaQqI2zXXKCWWAU/n0IvH8IFAao9OY2670mLixumXlx3c1mm2YT9EfdY
 U/UhaqELbYDyzPKwiF4/MNYLHi8tIv9jAlTatIf7oNZq4pe2jbPgQqrXp
 zIMl1qEP7kVdJlIMpjVWBtSOHrHQ1kH2hxppB8gAjIRPfgO9BepIN9l+6
 KeVcEl1D4Cx1SJlCONFTIeLi/fOm/kLNf2W2smB5OOqqcq8xITf+2PTH4
 0vzFlZUabwiKlYYx+qAheQvFyVt/pdzPWA3Y7GKu/OoN+v79VFMROVkDE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="272704371"
X-IronPort-AV: E=Sophos;i="5.91,239,1647327600"; d="scan'208";a="272704371"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 04:19:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,239,1647327600"; d="scan'208";a="599174393"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 04:19:34 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Fri, 20 May 2022 13:19:27 +0200
Message-Id: <20220520111927.52384-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix issue with MAC address
 of VF shown as zero
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After reinitialization of iavf, ice driver gets VIRTCHNL_OP_ADD_ETH_ADDR
message with incorrectly set type of mac address. Hardware address should
have is_primary flag set as true. This way ice driver knows what it has
to set as a mac address.

Check if the address is primary in iavf_add_filter function and set flag
accordingly.

To test set all-zero mac on a VF. This triggers iavf re-initialization
and VIRTCHNL_OP_ADD_ETH_ADDR message gets sent to PF.
For example:

ip link set dev ens785 vf 0 mac 00:00:00:00:00:00

This triggers re-initialization of iavf. New mac should be assigned.
Now check if mac is non-zero:

ip link show dev ens785

Fixes: a3e839d539e0 ("iavf: Add usage of new virtchnl format to set default MAC")
Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 7dfcf78b57fb..f3ecb3bca33d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -984,7 +984,7 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 		list_add_tail(&f->list, &adapter->mac_filter_list);
 		f->add = true;
 		f->is_new_mac = true;
-		f->is_primary = false;
+		f->is_primary = ether_addr_equal(macaddr, adapter->hw.mac.addr);
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
 	} else {
 		f->remove = false;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
