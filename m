Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC7587CBDA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 12:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E1C3415FF;
	Fri, 15 Mar 2024 11:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7gQ6v7azkqp; Fri, 15 Mar 2024 11:04:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87331415EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710500641;
	bh=fOXM9NCushZKVFN8ORyprERB7Dtzo/jt+PAY2hYk38U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wQUj56hXWO516nB7HYQZnmcwoo70KTpm6NHwVW1WFABVLasWYvspT95Q3MBw9G4V5
	 4YjAyY67GTrOGqiJJXPOevsqB7sNZ1p5j2Pl/G9lWhHJhAqUC3+qLu4quYYKQbzhBt
	 ctmTs98RzpX1ZEADE4oaEuZ/7pOg70nL21KN5hfcIVkw5F0x6SGRiMdKxGCP5e/gjI
	 7msAK5eTuxWnuqp1BhRG66hET4Pd1RAuzVKjcc9kq21eP53YEOuIM2ejpTyGQg618b
	 b6WH7PznAB+FrOGit/orYVQ9YxlnavnulqlWipLex465ofaSriNxUdInJgFtbB3pgy
	 pxgU2ReWkKYTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87331415EC;
	Fri, 15 Mar 2024 11:04:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 950F71BF976
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 11:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DCE060E6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 11:03:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYgLLW6GuGxQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 11:03:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BA61360E5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA61360E5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA61360E5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 11:03:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5549445"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; 
   d="scan'208";a="5549445"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 04:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="35761201"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa002.fm.intel.com with ESMTP; 15 Mar 2024 04:03:54 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Mar 2024 12:08:21 +0100
Message-ID: <20240315110821.511321-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240315110821.511321-1-michal.swiatkowski@linux.intel.com>
References: <20240315110821.511321-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710500636; x=1742036636;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f1y5+s38KG4eul9EBArMIcDOgPDGpTwExT1UYJ9aTiM=;
 b=JxzKeDRqj6+xo7dvnYzzKLYdLHliQkfSz/koKgcRYQQ9JDZr6wkRM8re
 lPleCHEfMXohvun7H5k+MwxudicRJg3g0ZZ5sA7QiFAVPi9vOeMgwrJyj
 iKL49u/bKjG2R+tstdVV/SqfiiJfYW33dRhNQJbFsDfnVwba/qEGd9di6
 b/Ztr5EHEWlUaXuFfEtNkSrAvl8zF0aMksKaqUTeY0RJGeeVZv/Yi8FXb
 ltqWWQs/9ZN8z5qCa08+jHKnkc+I51S8EhSiFztmjcZ1c5VX21NFo71vk
 ST7sgoKdyXGPVFEqywTSy1KGrK7mZbVeGaqs/ykZ8gkQyi4hfyTFo244v
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JxzKeDRq
Subject: [Intel-wired-lan] [iwl-net v1 2/2] ice: tc: allow zero flags in
 parsing tc flower
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
Cc: netdev@vger.kernel.org, Wojciech Drewek <wojciech.drewek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The check for flags is done to not pass empty lookups to adding switch
rule functions. Since metadata is always added to lookups there is no
need to check against the flag.

It is also fixing the problem with such rule:
$ tc filter add dev gtp_dev ingress protocol ip prio 0 flower \
	enc_dst_port 2123 action drop
Switch block in case of GTP can't parse the destination port, because it
should always be set to GTP specific value. The same with ethertype. The
result is that there is no other matching criteria than GTP tunnel. In
this case flags is 0, rule can't be added only because of defensive
check against flags.

Fixes: 9a225f81f540 ("ice: Support GTP-U and GTP-C offload in switchdev")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index a8c686ecd1a0..f8df93e1a9de 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -779,7 +779,7 @@ ice_eswitch_add_tc_fltr(struct ice_vsi *vsi, struct ice_tc_flower_fltr *fltr)
 	int ret;
 	int i;
 
-	if (!flags || (flags & ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT)) {
+	if (flags & ICE_TC_FLWR_FIELD_ENC_SRC_L4_PORT) {
 		NL_SET_ERR_MSG_MOD(fltr->extack, "Unsupported encap field(s)");
 		return -EOPNOTSUPP;
 	}
-- 
2.42.0

