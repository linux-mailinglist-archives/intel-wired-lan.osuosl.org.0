Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E45770F630
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:22:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDE43611B8;
	Wed, 24 May 2023 12:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDE43611B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684930974;
	bh=a6ZdjrBrrkziN3/3bv8HchuspB4VYfycFo848hrNFOs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RsQhblcurvVpBlfv4cOqUdMq70QbIGsI9pvwqSrYg9grDAHMicZrvxSDn8fFbqKmM
	 CRrO4FizJJ9EcrcpK9r5dmSuPNDDpQHqv2BBWplgy3XnKzGsWxIHvEQL5tDOj56XfE
	 7SDPz2+1+RrBEQnx0kdKyvG+VUjcd0Lmvmo7nBD91ElnFRkEzcyDAK3IQ2kAdz5gZn
	 gpKyxut7itmR8WDJY/VYZCO31EgoDshool3WRxGgqdxX+wShbSPBe5vH92HcQ35tSw
	 +qu8bCNtrmtWQgSoFDpmXIu7UKelmqJPyt9r0hR9n8AB5rupU4zRJucYHJixjaiSUj
	 3HHRKQZ48hmPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hE-4gSgDKdbm; Wed, 24 May 2023 12:22:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E02CD61120;
	Wed, 24 May 2023 12:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E02CD61120
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 047E81BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C3DE400C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C3DE400C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnUbDlQOGfkh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 064A741CDC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 064A741CDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="417005094"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="417005094"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794168557"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794168557"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2023 05:22:35 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E518437403;
 Wed, 24 May 2023 13:22:33 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 May 2023 14:21:11 +0200
Message-Id: <20230524122121.15012-4-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524122121.15012-1-wojciech.drewek@intel.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684930958; x=1716466958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9cz0fnTVQL7tTDam1qaxfWPOr0Wfr28bgsjFr4B31W4=;
 b=liyfvRm+bG7CgEG2c8AT7vD6sg91leTEWtwGeqcqIdhTyMmAt5hvvfi/
 0yCppiZjwxsGYj1ELRUsF9eLZq9p4W9xM0ldRFnUXHH+vm7aDuEWvgCEC
 w71mEHbslWLrzUkjj3GMP3u9tUIyF6tU8B2WC52iD37zxh1NdW48jW8Hi
 de0MV/PsQMsggbsWcCZnN/zEdKrqb3nqTVBLsPqJm57KCL8uy7Dq68lJT
 PQyvagyaq/feKtq4oLRSvc1HmcZtS8Tob3g8sVeKne2nXi7YmKKX3eCuV
 yLuePaLN/s2Hf8+jTZENX6HIIjAvkG0zFq4osNX4nuaAVB2NkDigkuRw7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=liyfvRm+
Subject: [Intel-wired-lan] [PATCH iwl-next v4 03/13] ice: Don't tx before
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
