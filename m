Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C9E6A4DCC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Feb 2023 23:15:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35FBD81F7E;
	Mon, 27 Feb 2023 22:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35FBD81F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677536116;
	bh=O92ctvC85TkMQeQn1xvnpkN+9FXkM6FTEqjtHtUZr8o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WCpxq7civ+dF6aTxDhlQ/1OABLP/G/i2jTavFEqROTAOErFaiLWT3jzvMqUGNarKr
	 5wy0kP81pTJZdAws0tun4feKzgcu/eHSKVHrfXKI8rDgURhM3FnhrbtsAFQWwZMF+q
	 dSphekolPvfnwJVixKnA0QrCAs/cQed1jhe19JT7sW+AziKOgY6UNyIneA+ZqIc1I2
	 UKP2CI/fA6jeWEu41dnKyIIqXGXuvFnX5NNyW6Vh1ULNy3TEhrLNxWArCHyb5acJaz
	 QAYHNwDCG8AfWXKr2Xyfz0NEnnITCx0zsHnbOIfWWUtdZTywHQ2xagyq0CCR94B6EB
	 Zw2WHW6Wg6vSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOvQbky2d2bB; Mon, 27 Feb 2023 22:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3968C81F71;
	Mon, 27 Feb 2023 22:15:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3968C81F71
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7F6F1BF28C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 22:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 91CB34055D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 22:15:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91CB34055D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id em-Td5rZLfW9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Feb 2023 22:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00B534014E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00B534014E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Feb 2023 22:15:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331456381"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="331456381"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 14:15:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="762908060"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="762908060"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 14:15:07 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 27 Feb 2023 14:15:00 -0800
Message-Id: <20230227221500.3692237-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677536109; x=1709072109;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=twr3YGiUZm3V0e8BUX34eM2Eck86FWnQ6t+6VGP6BK4=;
 b=VSdpQxPi3jYx3HvJnp+DkY/hjTIzjfZe+zYzKz107rYkkax2X/ZW+c8Q
 nSrbJrBmIL5yWa2FWRO3w7g6pSTLqMpRi3Hh0ojiqnRy9XMFMo4oQILpv
 APlzhDktsOYmrxoPx+NuLPXiJk12GvD2aXKk/LCBSEGo/Z2kwtrZqYj8i
 c7HVXIHohuLMxSLlR443SX/d31OD3SmAZmJKKfDqgNcH2UFQeyyOiFHur
 Hh2792j+5I2XDrRPrUnsfAgDpsPCEbeKP1LZ2QwqRQFsZvq7OWqiWYoIP
 kKg8iRy/lT2NZDD7vScQ5RWVEvtB3N5jwkzN9BLGAuY6FYcvh26EAot6x
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VSdpQxPi
Subject: [Intel-wired-lan] [net-next] ice: remove comment about not
 supporting driver reinit
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit 31c8db2c4fa7 ("ice: implement devlink reinit action"), the ice
driver does support driver re-initialization via devlink reload. Remove the
stale comment indicating that the driver lacks this support from the
ice_devlink_ops structure.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 05f216af8c81..bc44cc220818 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1254,7 +1254,6 @@ static const struct devlink_ops ice_devlink_ops = {
 	.supported_flash_update_params = DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK,
 	.reload_actions = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT) |
 			  BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE),
-	/* The ice driver currently does not support driver reinit */
 	.reload_down = ice_devlink_reload_down,
 	.reload_up = ice_devlink_reload_up,
 	.port_split = ice_devlink_port_split,

base-commit: f75ed9add58c1bca6a615609a0f7f148c257e3c7
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
