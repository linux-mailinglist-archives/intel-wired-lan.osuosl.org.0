Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMwZK5Or2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 583563D390D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 809FC60B7D;
	Fri, 10 Apr 2026 07:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TfA96b_WIOGp; Fri, 10 Apr 2026 07:49:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C124E608B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807372;
	bh=B7PniQdktGTH5Xbz6NoC1eHTHqXDZUUFFZdptj4zKrM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zqB4vr8LupVWcf0mW7xlf9oN8hMU8uxPJmLSeRhn2PaqrIZ++SIkw3FsmbTbDI1Zf
	 aAu58T72P2oi+o+DT37VBK2kSxC+fz0BbKu7lt3qDt+puK7WLU71T31tDmroO3W9SH
	 XQ7uGBlKQVCchKGE6h3/MkhpODv+MjQiULcRoz/b2xytVKrpOCIMtTl24pk+4bMYjY
	 pKkve1839o20txMC5llfqY1NFBvNkxzsy8EkQZUy+OeJ++H0TXL2j0Qt960DALeQF6
	 PCLSe+T4lFsBhy0p87f+PhowBwtwXQkQhwRgomr8ERrPWnZlgi6SKlOrYIAbWwK8s3
	 HgYM2V94RfZDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C124E608B6;
	Fri, 10 Apr 2026 07:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 686EB1F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A76481A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R3VVuGsx7RsB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 40E24816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40E24816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 40E24816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:29 +0000 (UTC)
X-CSE-ConnectionGUID: T5eZrwhzTEK5bWWnsUEsmA==
X-CSE-MsgGUID: lc9OStPkSWG7reI+fW84HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007925"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007925"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:29 -0700
X-CSE-ConnectionGUID: WJom4z9jSietYueaIRcQKA==
X-CSE-MsgGUID: n7uYW9p8TIeLoY4+ufg6qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941865"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:28 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri, 10 Apr 2026 09:49:14 +0200
Message-ID: <20260410074921.1254213-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807369; x=1807343369;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NcU0Iz9MD/rDovwL1/g0sA94Rz0+LbfmauAxlyFyR6A=;
 b=hj3nMhFHfR3Jhxk5Q/GXPFeBoiQGh4Jw92mucPltKK8lfVI6avppWoSD
 ReAizf2E6tQ81usGv2xp/yXJyV0a45x2cBNzSaF6FrfGBRxnUP0s8G2pZ
 mxdApXWS5QCvaYivrvrcBZVDoI+h4DxFLkH8NsHQEQGvjt0WkqlxE7+6q
 zEySqQ5uuaEnt6Reg5sIxwrxBgrEn1SpR9318zsk44hY92dGDst5zeeop
 G92VfA5rzRjDU/1VXk9idbtSmPpXQktfgFT3O5asY/GMr70RLC349m5sU
 Xmh1yQaHOqKRA5uxI/+rUYY64zTztnQCuMUNaqOEYAqxJCn3WrXW5euxq
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hj3nMhFH
Subject: [Intel-wired-lan] [PATCH iwl-next 3/10] ice: add PORT_AUI and
 PORT_NONE ethtool port type reporting
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 583563D390D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that ICE_MEDIA_AUI and ICE_MEDIA_NONE enum values exist,
ice_get_link_ksettings() reports PORT_OTHER for both of them because the
switch falls through to the former default handler.

Replace the catch-all default with an explicit ICE_MEDIA_UNKNOWN case for
PORT_OTHER, and add proper ICE_MEDIA_AUI -> PORT_AUI and
ICE_MEDIA_NONE -> PORT_NONE mappings.  The switch now covers every
enum ice_media_type value.

Suggested-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index caec297..6857fcd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1901,9 +1901,18 @@ ice_get_link_ksettings(struct net_device *netdev,
 		ethtool_link_ksettings_add_link_mode(ks, advertising, FIBRE);
 		ks->base.port = PORT_DA;
 		break;
-	default:
+	case ICE_MEDIA_AUI:
+		ethtool_link_ksettings_add_link_mode(ks, supported, AUI);
+		ethtool_link_ksettings_add_link_mode(ks, advertising, AUI);
+		ks->base.port = PORT_AUI;
+		break;
+	case ICE_MEDIA_NONE:
+		ks->base.port = PORT_NONE;
+		break;
+	case ICE_MEDIA_UNKNOWN:
 		ks->base.port = PORT_OTHER;
 		break;
+	/* All ice_media_type enum values are explicitly handled above. */
 	}
 
 	/* flow control is symmetric and always supported */
-- 
2.52.0
