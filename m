Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CFC9E15AD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 09:28:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E9EC60748;
	Tue,  3 Dec 2024 08:28:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qUO6HmQZi3P; Tue,  3 Dec 2024 08:28:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86AB56069B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733214490;
	bh=D5+q219Kf+lG8cIJ8ZD35MGdKF+dzE4QfM3K17667Vg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IBu/YIE9E+MHLu90Xal9Vl7uJo9h/jP/OglTjkwsUeKu8bWhEkSkG4g1/oFglRLzE
	 4uR7BW4S6jksQ61VhFNPS4a2dZVzxuvxZ+zqlwN5zg0xTT1U+SiXfcyECZzjaR4Ltu
	 YIOtrUr/5chOT65fPYFZES38rZpSEUX4A++YCdx82NSROKgI7H9iPIGIfmJZaKoc0B
	 ndcPHrkvb3XMPxN8z7RddxXIaKOcy7XLBXXNdyiyZypLjCEdfDYXMcbI1Nwcd28itF
	 kJYXGXnJ3Pfn5gsRiXdB0pdRi9m42LWIkjNgRbZWWFyzQzLe2vi/GZKJlu0sBExB7Q
	 YLQPpeh4i9Y9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86AB56069B;
	Tue,  3 Dec 2024 08:28:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 778B560
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 08:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58E52606C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 08:28:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XaP9dYCLwr0k for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 08:28:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 54ABD6069B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54ABD6069B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54ABD6069B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 08:28:05 +0000 (UTC)
X-CSE-ConnectionGUID: IyYKhb/jQA2oisFFLFuIHA==
X-CSE-MsgGUID: wG3c/CgLSA6RTEr1yCq61w==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44081449"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44081449"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:28:05 -0800
X-CSE-ConnectionGUID: hAoOTeqKR8Kh+8bWRhxIuw==
X-CSE-MsgGUID: TgTOXg0SSZ24Wwm0Y74H8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93820710"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 03 Dec 2024 00:28:03 -0800
Received: from pkitszel-desk.tendawifi.com (unknown [10.245.246.131])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 141552876E;
 Tue,  3 Dec 2024 08:28:01 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
Date: Tue,  3 Dec 2024 09:25:33 +0100
Message-ID: <20241203082753.4831-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733214486; x=1764750486;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=II6l3Ydybgfvkv2hN8JeiJTpharRPOZoUX5XEw8lMwc=;
 b=JXUHrhhL0f6bpV2JECEuMMPE6Him7bvqunkbHATR2x0kzjjx7dzAgCur
 O2kIqBuNWAeh//bzNeGBT+/NyKZMGnMti3oWFlCLZUz6QaLFF3yLIW7iN
 eYn4GeEHUJW3H8Qxk+qVa4uf2uTE2UZsX2OTZwzh836MCzKqmEh9/JrFT
 2s1l4GvK1gEc3pW/MPCvBB4poU5B1DyIN9llWnnJ6a4OS29AUWyszjSko
 yqVRHRPn0CnDRflSeFP3LeuZ1NDAQYtOHVPoQRH/JueRpjjqKTROTzSci
 sx42/H5X35BARKni5D8a5SbPvprZGrtsKV7uQ06kfmR8jQf+kBP25tYQf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JXUHrhhL
Subject: [Intel-wired-lan] [PATCH iwl-next] fixup! ice: dump ethtool stats
 and skb by Tx hang devlink health reporter
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dan has reported [1] than @event variable is dereferenced before the check
against NULL, fix that.
[1]: https://lore.kernel.org/intel-wired-lan/b1453276-9043-49c4-a603-9b6bb41306c7@stanley.mountain

Tony please squash this into my devlink-health series (no need to amend
commit message) that is in your dev-queue.
The last version of the whole series was send here:
https://lore.kernel.org/netdev/20240930133724.610512-1-przemyslaw.kitszel@intel.com

CC: Dan Carpenter <dan.carpenter@linaro.org>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/health.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index c7a8b8c9e1ca..d9b852ccf99e 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -163,11 +163,10 @@ static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
 	struct ice_tx_hang_event *event = priv_ctx;
 	struct sk_buff *skb;
 
-	skb = event->tx_ring->tx_buf->skb;
-
 	if (!event)
 		return 0;
 
+	skb = event->tx_ring->tx_buf->skb;
 	devlink_fmsg_obj_nest_start(fmsg);
 	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
 	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);

base-commit: 9e11d56a825f5e927039c285df38c22c20dcb757
-- 
2.46.0

