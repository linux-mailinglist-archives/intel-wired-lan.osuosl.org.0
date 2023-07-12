Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DED750575
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 13:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5635340569;
	Wed, 12 Jul 2023 11:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5635340569
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689159921;
	bh=gYRk8Rd2ny4JKQMyD/wLZ8Zvc/84fieF9uCi6dfPKD0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=x0yYUneEVJfhIkmAaDYoeCHP9ZJ582wlSBSy/UFldEZOFya+7mkIEZcTZAu2SU9L/
	 FlmTQj1wwwFVd6RTt3Z4Q77E9hsZQkW4zXemGmxKvw0uSfKzXGERQKXC+xq3nv3orC
	 fxWVfhPeje7V+PAgdFRAq2AZD7Z/azP25HNsF7/edonvRkb+kYPaWeQyvh0Ku9Jwh8
	 Pr80JA+5TCqyYs3j+5ktzJFn02HgsmOvPEOi+sfRHG8YNfRp4qvr9lufIUKrENr1ji
	 xmKpjxnmaFBpGRKPPnbwwNIaPu10xlaya5EVoORPRLcq3ultWRdM/3MVwKV2fZjgni
	 DMUgWNqKl6MtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g-BEc028MWW8; Wed, 12 Jul 2023 11:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44005400DA;
	Wed, 12 Jul 2023 11:05:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44005400DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7FF21BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 913FE81E23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 913FE81E23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUJZjvUa4mHo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 11:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4A4B81E19
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4A4B81E19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 11:05:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430993767"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="430993767"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 04:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="835093739"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="835093739"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2023 04:04:57 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 496E1369E9;
 Wed, 12 Jul 2023 12:04:56 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 12 Jul 2023 13:03:27 +0200
Message-Id: <20230712110337.8030-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712110337.8030-1-wojciech.drewek@intel.com>
References: <20230712110337.8030-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689159909; x=1720695909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WRhnTvyOSSOtoNKjl0qnCrmrx3xdXMiDEuAYF5qBEDI=;
 b=FUGlupqvRcqws6dHmpXPrfCNppDqAiWccnM0BMNwEDnpgQFzCanQQJde
 SXGEwxtJE+XPMQKugu2/mZGBNG/Xhx7+VPU0MkMNYfiCueuoJoZGoMyol
 zzFazZgqoDkpZuTAfdn0AETqxc6LtixzOfEmmXCkxTsVZ/8rCW2Y/kPtg
 w+aVoxnxDl4Xjkp9BINL5vqCa9SgVPjBry/oZ9YKYJ7auiQVuty6rMwJy
 /p+zNhAm/mTDHBiQ8lNLOtMcVSROkfVEWQwvFMjLH3MtWRfNASsxP7tFu
 O11jsGWRqUJkWskGnuZ33ieQ09OV+qcSzYl/yPAwherIqbEb88zZusZ8R
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FUGlupqv
Subject: [Intel-wired-lan] [PATCH iwl-next v6 02/12] ice: Prohibit rx mode
 change in switchdev mode
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, vladbu@nvidia.com,
 kuba@kernel.org, simon.horman@corigine.com, dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Don't allow to change promisc mode in switchdev mode.
When switchdev is configured, PF netdev is set to be a
default VSI. This is needed for the slow-path to work correctly.
All the unmatched packets will be directed to PF netdev.

It is possible that this setting might be overwritten by
ndo_set_rx_mode. Prevent this by checking if switchdev is
enabled in ice_set_rx_mode.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e3245ee635b2..b45dc9623e63 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5777,7 +5777,7 @@ static void ice_set_rx_mode(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (!vsi)
+	if (!vsi || ice_is_switchdev_running(vsi->back))
 		return;
 
 	/* Set the flags to synchronize filters
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
