Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EA869F9C7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7409B417BD;
	Wed, 22 Feb 2023 17:16:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7409B417BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086200;
	bh=QgqJckQnb5J8EgmkQ8vor1R685koi8M1H+nw9EAal9k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=APCSCuhTzddTRK5V9qQi0jDE3579Ph5BncYb9zNUKsoTpq74Zd4+FqtliBe+wgLRn
	 LMI6pSRCD09IluTkdBFGyBx0tphM2bUM82fvZM1AHFMlGkwnrQSb7/Ta7ePAhRkUt/
	 gaF5Bl0XgG9WSOVGjvlFxkf67FIm5B2XbDIWADAExiz5ALKDQH2Vc+DkKv0QCXAFIS
	 9/G++cv3kpLeocLe0aEPI/YdKjv8L2CH9zucyljcnSk1IlJOyTdhhHZK2eq/OUKaRA
	 fvZCCP75kiwnWoOYFWtdiamUuT1wlrdE9SrkGQp4qoYlM1JjCjqlY1ut1XGJXPREuj
	 YUB9hIPB8XRQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGjNtHLc4VkK; Wed, 22 Feb 2023 17:16:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CA0740CAF;
	Wed, 22 Feb 2023 17:16:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CA0740CAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BD431BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A0614173C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A0614173C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z5npMCINoIKg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 496B241734
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 496B241734
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466659"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466659"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980066"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980066"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:16 -0800
Message-Id: <20230222170920.1629293-11-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lZ8QJrKIhovD3ID8DnRS4HGMt2DtjXvyjfiIPIW01Ps=;
 b=kLKVrwsg8TktOOapCwm67fD6SXeVTGVr1fclTB2z6wh5FHPTc88pFc+y
 BwGfEB+rNCJs4wuHzsNOFl2+sC2X45/EXT0L0q7qePvJRfMJ8nxya/T86
 APeBevfJdd5XhN9OuS2V9g8nXpDCWB+7MY6irkB72w/98ifo1n9MSIq08
 uFCIFg5gLewQkTBXE6YsXd6b/36m8IeIqgUgq8wyaPTZOQdeXabNEoVJZ
 /U8pEVzTspRGEkNUO8VtXSbm4PwtIxGvZcQAKupfpsIFzsdNHHDLm/UTI
 /RpaN1CP8ofeoOByTQxdMBZhV779WwOeBJ+COCdgcANgptG5r4qbP4bdS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kLKVrwsg
Subject: [Intel-wired-lan] [intel-next PATCH 10/14] ice: remove unnecessary
 &array[0] and just use array
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_is_malicious_vf we print the VF MAC address using %pM by passing the
address of the first element of vf->dev_lan_addr. This is equivalent to
just passing vf->dev_lan_addr, so do that.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 185673afb781..938be486721e 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1820,7 +1820,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 		u8 zero_addr[ETH_ALEN] = {};
 
 		dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
-			 &vf->dev_lan_addr[0],
+			 vf->dev_lan_addr,
 			 pf_vsi ? pf_vsi->netdev->dev_addr : zero_addr);
 	}
 
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
