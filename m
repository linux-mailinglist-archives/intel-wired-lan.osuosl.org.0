Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ivOsLbDzlGl1JQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 00:03:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE5A151AC1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Feb 2026 00:03:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76088406E3;
	Tue, 17 Feb 2026 23:03:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CHbeV7kLV_9h; Tue, 17 Feb 2026 23:03:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDA52406EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771369390;
	bh=RybZ0KMeO4p7NLO6E13DWbAbZPecJd/yBQ0NZNQJYr4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J+W3hawzhZuDbuzff8X34kaQ5zJr2C2yFtaegyWGpvvUFcLd4FrYwDQh85c/0dLiy
	 6gSCRSTP3I8gkGoY9PoHGc72N5jik9On3Hx5ZpUvRSG2/J3aRHwxVD1JcZhA83QlQC
	 2Lb7vQAxxy/t1Hfx/AYTWefRMKekkwnc/lmTv/Z0B86upuU3qYcEWceU2328edw2iZ
	 CGli7pTW02ZCxnGATscXCUQ1FG4gjdTCE7MVFd17OMTjM3dYR3bnszNPE9yHFcZZF4
	 7nYJcCf7Q6XWEWKJfGm8KVIpExmqgOEP0PmxC0SFrVU3tlygH7sdXYsh10xFLoybRo
	 AHtb/fwPl/obw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDA52406EB;
	Tue, 17 Feb 2026 23:03:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 733A9270
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 23:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57D8940262
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 23:03:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGdxpmZUgHQI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Feb 2026 23:03:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8E0E340248
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E0E340248
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E0E340248
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Feb 2026 23:03:07 +0000 (UTC)
X-CSE-ConnectionGUID: wBobFoGyRzWXJy26q7ie4w==
X-CSE-MsgGUID: oA8T/BSdT/uRRFZiBbtuSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="72541561"
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="72541561"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 15:03:07 -0800
X-CSE-ConnectionGUID: qR4X/p4tQaWBRVbfjFOlPw==
X-CSE-MsgGUID: /lrV/rykTearZIkt9IlOcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,297,1763452800"; d="scan'208";a="212732208"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa007.fm.intel.com with ESMTP; 17 Feb 2026 15:03:05 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Feb 2026 23:59:56 +0100
Message-Id: <20260217225956.1593920-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771369388; x=1802905388;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ACQhzgqYI4BP9sufN+hWv/pC9E5bB06fTv1NUnF6qdA=;
 b=BhJR1D1ShWwiuhFtHM/uFDLaGNx7i0q9ycSCe7hzG4BJo6EzyQ6Hq8G/
 z6zVD57Ad5zErC8jbZoTtdm/Vck+zhxK2lLWoHTv33IyxxBrmajwcmb++
 OI5bKF3oBIpWzIXiPd3C6ji+YJ+WTiwuOK/ERl+NUJay8FnvXk3Gzc8mK
 P5O+ITXL1x5TLGqnS5FWQjptA+NIwMc8hqAUu+o6qmmeN6YbJNeOVX1Qt
 /MJCleo6YeD2aCVS2O03zJMBEfTBe0Y/U9KsxuxJ0TP54/SrLOz9G398h
 bd6yYTjpOWoXsftimAmsBBkKH+E/UX14jTJqkHrll+dhs/LJx5HCJ11Aa
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BhJR1D1S
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: update PCS latency settings
 for E825 10G/25Gb modes
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
Cc: netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 anthony.l.nguyen@intel.com, Zoltan Fodor <zoltan.fodor@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CFE5A151AC1
X-Rspamd-Action: no action

Update MAC Rx/Tx offset registers settings (PHY_MAC_[RX|TX]_OFFSET
registers) with the data obtained with the latest research. It applies
to PCS latency settings for the following speeds/modes:
* 10Gb NO-FEC
        - TX latency changed from 71.25 ns to 73 ns
        - RX latency changed from -25.6 ns to -28 ns
* 25Gb NO-FEC
	- TX latency changed from 28.17 ns to 33 ns
        - RX latency changed from -12.45 ns to -12 ns
* 25Gb RS-FEC
        - TX latency changed from 64.5 ns to 69 ns
        - RX latency changed from -3.6 ns to -3 ns

The original data came from simulation and pre-production hardware.
The new data measures the actual delays and as such is more accurate.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Co-developed-by: Zoltan Fodor <zoltan.fodor@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Zoltan Fodor <zoltan.fodor@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_consts.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
index 19dddd9b53dd..4d298c27bfb2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_consts.h
@@ -78,14 +78,14 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
 		.blktime = 0x666, /* 3.2 */
 		.tx_offset = {
 			.serdes = 0x234c, /* 17.6484848 */
-			.no_fec = 0x8e80, /* 71.25 */
+			.no_fec = 0x93d9, /* 73 */
 			.fc = 0xb4a4, /* 90.32 */
 			.sfd = 0x4a4, /* 2.32 */
 			.onestep = 0x4ccd /* 38.4 */
 		},
 		.rx_offset = {
 			.serdes = 0xffffeb27, /* -10.42424 */
-			.no_fec = 0xffffcccd, /* -25.6 */
+			.no_fec = 0xffffc7b6, /* -28 */
 			.fc = 0xfffc557b, /* -469.26 */
 			.sfd = 0x4a4, /* 2.32 */
 			.bs_ds = 0x32 /* 0.0969697 */
@@ -118,17 +118,17 @@ struct ice_eth56g_mac_reg_cfg eth56g_mac_cfg[NUM_ICE_ETH56G_LNK_SPD] = {
 		.mktime = 0x147b, /* 10.24, only if RS-FEC enabled */
 		.tx_offset = {
 			.serdes = 0xe1e, /* 7.0593939 */
-			.no_fec = 0x3857, /* 28.17 */
+			.no_fec = 0x4266, /* 33 */
 			.fc = 0x48c3, /* 36.38 */
-			.rs = 0x8100, /* 64.5 */
+			.rs = 0x8a00, /* 69 */
 			.sfd = 0x1dc, /* 0.93 */
 			.onestep = 0x1eb8 /* 15.36 */
 		},
 		.rx_offset = {
 			.serdes = 0xfffff7a9, /* -4.1697 */
-			.no_fec = 0xffffe71a, /* -12.45 */
+			.no_fec = 0xffffe700, /* -12 */
 			.fc = 0xfffe894d, /* -187.35 */
-			.rs = 0xfffff8cd, /* -3.6 */
+			.rs = 0xfffff8cc, /* -3 */
 			.sfd = 0x1dc, /* 0.93 */
 			.bs_ds = 0x14 /* 0.0387879, RS-FEC 0 */
 		}

base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
-- 
2.39.3

