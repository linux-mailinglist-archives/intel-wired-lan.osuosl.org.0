Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C28B1DC83
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 19:35:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2FB44014E;
	Thu,  7 Aug 2025 17:35:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lrdyRojpD_6q; Thu,  7 Aug 2025 17:35:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0236840151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754588141;
	bh=/B2jkNF7T3vLrcn6JhhHUeD3OHZE7W+eVy2Ud87O8Nw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zYo3CFX+QKPhqxPbG3mdHDGrjnyIEyiTkfoBFto+aJYIEqfx9hvoqW71qsCeQA+b6
	 ODgQSY7aLH/206QFqa9/5NUknpLX1t4w4OjmWjdQTMz6QZFMQnUsifb+9GAsZwnZoK
	 kGr70nPU7wOmqApy+bcGCWkVYj7wlvGhny7sKu2RMWxvyNUqsW/AsGBCxqwOOoe4SL
	 y+hFfRVV+YkArrrUwNrV3twVwAFvzcpkzfT/ec6UbGxDk7zsbuiJAwrQM59uYmLFQE
	 XQsZDVTvGlTyl8UiA/DqQp/lvgSDix13rBzOZkuoXEGykGvQrMdJWfO1MHIHgcvDyE
	 OU+Hl98VRHt3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0236840151;
	Thu,  7 Aug 2025 17:35:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4611D31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 435A940027
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bTzESQzffJIi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 17:35:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BA4240022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BA4240022
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BA4240022
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 17:35:38 +0000 (UTC)
X-CSE-ConnectionGUID: /Is/pwESSZmszk2TJACBwQ==
X-CSE-MsgGUID: Q0BhN95fTCOvAHzY4c52nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74511377"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="74511377"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:35:37 -0700
X-CSE-ConnectionGUID: sLBBZA00Tm2TOSWUfQ8vRQ==
X-CSE-MsgGUID: mF4LqTGDQXOuXpJjRyWLaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164787191"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:35:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 07 Aug 2025 10:35:26 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250807-jk-ice-fix-tx-tstamp-race-v1-1-730fe20bec11@intel.com>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=2390;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=NN+rY843FoJMfj1Bd86ftR8Vv14RG+hPN+sQ9HvfH2I=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhowpj1/8WecakXL526pXX1m83Cf1Bknafwh4Y9Y0Idc6Y
 1XAlnlXOkpZGMS4GGTFFFkUHEJWXjeeEKb1xlkOZg4rE8gQBi5OAZhI31mGfxZaJ5iffZaX2SHL
 d9fS7NTDGSo3Phrz2QrP5DINqVM07GD4K/qRic2vaPWvZSZbAvL/2mVsVJliwdNrOOHlKofKxgV
 KfAA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754588139; x=1786124139;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=NN+rY843FoJMfj1Bd86ftR8Vv14RG+hPN+sQ9HvfH2I=;
 b=aQ98KxmHrDQCy6w+I73vRtp9iOhGNeS/Ce3LMsOD8B0Uny1sGUtW26pW
 vr0v53lfaPwhweFOylTL4TMef3zh4+RAeOlBVhEV4MDsHcjQoIC9QVJ0u
 Dp5PswTMxh4oduHNuY1H2v0U7T7mBV1cHt4+cuoOFQFmw5A7AtqpC+WAD
 ljWZeB0mTo++ghLlQkhAWC9OiQVa7YCVXq1vzEyoZAjsyn/FzGdfHgWos
 B7NFxf0GA//2mEy5VG5lt4yndwUinEN1peYNzQbL/T4gdvMcsOZdgkHq5
 rn12SwDu/XpoZebSf2siqQd9KAW3gtDwpHP9sjQdeEvbPrONV3MaLuG2t
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aQ98KxmH
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix NULL access of
 tx->in_use in ice_ptp_ts_irq
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

The E810 device has support for a "low latency" firmware interface to
access and read the Tx timestamps. This interface does not use the standard
Tx timestamp logic, due to the latency overhead of proxying sideband
command requests over the firmware AdminQ.

The logic still makes use of the Tx timestamp tracking structure,
ice_ptp_tx, as it uses the same "ready" bitmap to track which Tx
timestamps.

Unfortunately, the ice_ptp_ts_irq() function does not check if the tracker
is initialized before its first access. This results in NULL dereference or
use-after-free bugs similar to the following:

[245977.278756] BUG: kernel NULL pointer dereference, address: 0000000000000000
[245977.278774] RIP: 0010:_find_first_bit+0x19/0x40
[245977.278796] Call Trace:
[245977.278809]  ? ice_misc_intr+0x364/0x380 [ice]

This can occur if a Tx timestamp interrupt races with the driver reset
logic.

Fix this by only checking the in_use bitmap (and other fields) if the
tracker is marked as initialized. The reset flow will clear the init field
under lock before it tears the tracker down, thus preventing any
use-after-free or NULL access.

Fixes: f9472aaabd1f ("ice: Process TSYN IRQ in a separate function")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e358eb1d719f..fb0f6365a6d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2701,16 +2701,19 @@ irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
 		 */
 		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
 			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
-			u8 idx;
+			u8 idx, last;
 
 			if (!ice_pf_state_is_nominal(pf))
 				return IRQ_HANDLED;
 
 			spin_lock(&tx->lock);
-			idx = find_next_bit_wrap(tx->in_use, tx->len,
-						 tx->last_ll_ts_idx_read + 1);
-			if (idx != tx->len)
-				ice_ptp_req_tx_single_tstamp(tx, idx);
+			if (tx->init) {
+				last = tx->last_ll_ts_idx_read + 1;
+				idx = find_next_bit_wrap(tx->in_use, tx->len,
+							 last);
+				if (idx != tx->len)
+					ice_ptp_req_tx_single_tstamp(tx, idx);
+			}
 			spin_unlock(&tx->lock);
 
 			return IRQ_HANDLED;

-- 
2.50.1

