Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC08581C8D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 01:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 120A840934;
	Tue, 26 Jul 2022 23:44:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 120A840934
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658879085;
	bh=8FklffUlJ3f9Mr77mfEIz759xJENIKDo1EwXi722Uco=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pLtXxef9SOuXsHfqbSoVm+o+zMv6Kuk90PknfDnOfcGMU27gglMLMehXa5lNtYbFO
	 g88/xal6dlBSCSwrKPXt0RaSlXwq4sWDVQSfv5HTzmENharzvjvt4vE2yznLl9URp9
	 +/5L4pfNwuwufq6EQjvrDqrBLzjrdi2heWXzr9LPQ/KerXRtUCdgPb37aqu2cHx3xf
	 dH9vmkiHiDSIa6nE2pxkWDAKH+eHrFUY1s3CANy1XPuZsj1rwSjb0fCgN4vA58KUj8
	 VM/9j38h0+v02xkMi92iRVTQcZHvbltAJBD0qmpxAyMKvD8gfF7H+V588OHXo6c4X2
	 nAqW+/w1PyvJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DDrAA--DBxlC; Tue, 26 Jul 2022 23:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C991D40347;
	Tue, 26 Jul 2022 23:44:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C991D40347
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 676C71BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21BEF402F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21BEF402F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MG-NFY7FsaQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FFD1402E5
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FFD1402E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="313873679"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="313873679"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="689649888"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 26 Jul 2022 16:43:52 -0700
Message-Id: <20220726234357.50610-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220726234357.50610-1-jacob.e.keller@intel.com>
References: <20220726234357.50610-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658879052; x=1690415052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ey6pxxRz8uv6NX60hlF+g/AHbOzLmI5YGVcvPkgAUOo=;
 b=b2iMnMf20hZTSHrcIYcBdaW15jW0R18V6dnneGNpXUahZ9ghW9jfutQs
 oKor18lLl+ryS8Kcp6Y/F2GHHBwWLgK/vVvBeYBOkl07v62ev1S559XaV
 lNvFIIhzy/J0bkwnIX1usBiS/SrhRxso7lH3l7jwFkWpzjZIRVlbSnFKp
 5MAUDcw0grEJ2cauCD8Zq46Rj/VrCJ/ERDEppPnmCVPyMLUarv255ol4L
 gy1smIJzJ2heI1nvHmWsnLLvsEC3kP5YZqWdLWB82s+EwsT2uRNKD+td+
 FMGjNmJXfbjj5WCKAF4vbSN7NeipyfeOczDIFvtKlBsbzhZDMJ9drNHG4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b2iMnMf2
Subject: [Intel-wired-lan] [net-next 1/6] ice: set tx_tstamps when creating
 new Tx rings via ethtool
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the user changes the number of queues via ethtool, the driver
allocates new rings. This allocation did not initialize tx_tstamps. This
results in the tx_tstamps field being zero (due to kcalloc allocation), and
would result in a NULL pointer dereference when attempting a transmit
timestamp on the new ring.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 238706d94ab2..bea87c5acd26 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2823,6 +2823,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		tx_rings[i].count = new_tx_cnt;
 		tx_rings[i].desc = NULL;
 		tx_rings[i].tx_buf = NULL;
+		tx_rings[i].tx_tstamps = &pf->ptp.port.tx;
 		err = ice_setup_tx_ring(&tx_rings[i]);
 		if (err) {
 			while (i--)
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
