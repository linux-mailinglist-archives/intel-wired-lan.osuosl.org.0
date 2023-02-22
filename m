Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36E469F9C0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5396E41787;
	Wed, 22 Feb 2023 17:16:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5396E41787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086184;
	bh=fZ46K1H2xzi/XM+73Za1BH8hmi6lPqu1bKL2a7SJQfI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PYBG2qMtwWKfv56zpzS7z5zcT9grhILq44ZaBKpvMIMUeUwO9kwezwmjK0JUiovAE
	 BAs8AAINiU32naxyOaH7V0gzxlVBNC44m2EKIJVVVXnbZCwM6iDPKGGK9Ah82+NZOP
	 43m0iQH9eSNNuIXhU5pUTpt/7XNafcRrPI9NJDh29cqSrZovkzvBPvosoW1fzdHIzT
	 MauIYhNFKqx6AwqzrXuky2u0Oz/otnQhCM9TMruFQyQuopOQj9tEj3LJMwg4Lj4+My
	 DRcF9y2eTeTfjG6Fjlfk34gBvmk8d/0N8AMEEgVLmE50UdpizfGr0mnOgraAeqwyVI
	 ROODkFvudiebw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Og3H4cS38SRC; Wed, 22 Feb 2023 17:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3914C41717;
	Wed, 22 Feb 2023 17:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3914C41717
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 515CB1BF97A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3623960B4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3623960B4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qifxBbEPJIq6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89A9160B12
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89A9160B12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466657"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466657"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980063"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980063"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:15 -0800
Message-Id: <20230222170920.1629293-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X9RV0KLcG359zULA6xpQ/mV8kdwxu1wRuJIOuMwYmVg=;
 b=MBuv2mTqsqcCrOlmwy3hCG1JESdXe380unqqS+qA/G4LMAXSyYxfCytp
 NXIhwAsYsVpgh712tH2JkO1uZ8TF+dleFtgRHcnTsmy3Wd1z6q6AoNixh
 J+1AtSSVs1Lui4UPkO8U2MW1dndGgWECTfhYRhrmyOxPWdsKa4dgwX174
 6Pcj1cOkNEFGBQ05/vVquU8+z0PCfHmdZtbDONxDnQt6rZa6oMZL/jVJn
 jymKa0Wr1SzBZgAdvdywpB4oQ14lGXDz3qExVX8zA7JxchX9nFhudt0dj
 6Gx7JoRWeH/Iu8jwfKBle89TdGtwFsG1tHhQhmSs840aoLB5n0kjc9JdN
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MBuv2mTq
Subject: [Intel-wired-lan] [intel-next PATCH 09/14] ice: always report VF
 overflowing mailbox even without PF VSI
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

In ice_is_malicious_vf we report a message warning the system administrator
when a VF is potentially spamming the PF with asynchronous messages that
could overflow the PF mailbox.

The specific message was requested by our customer support team to include
the VF and PF MAC address. In some cases we may not be able to locate the
PF VSI to obtain the MAC address for the PF. The current implementation
discards the message entirely in this case. Fix this to instead print a
zero address in that case so that we always print something here. Note that
dev_warn will also include the PCI device information allowing another
mechanism for determining on which PF the potentially malicious VF belongs.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 6764e677a345..185673afb781 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1817,11 +1817,11 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 
 	if (report_malvf) {
 		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
+		u8 zero_addr[ETH_ALEN] = {};
 
-		if (pf_vsi)
-			dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
-					&vf->dev_lan_addr[0],
-					pf_vsi->netdev->dev_addr);
+		dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
+			 &vf->dev_lan_addr[0],
+			 pf_vsi ? pf_vsi->netdev->dev_addr : zero_addr);
 	}
 
 out_put_vf:
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
