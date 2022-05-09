Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 298EB5204E4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 May 2022 21:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E5A640257;
	Mon,  9 May 2022 19:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4e--RSlC28Wy; Mon,  9 May 2022 19:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DFA440207;
	Mon,  9 May 2022 19:02:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC4A51BF283
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 19:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C73CC60C2C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 19:02:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w9SSDMJCD6wO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 May 2022 19:02:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6EA69605AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 May 2022 19:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652122922; x=1683658922;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M/3pwZDcMrCcluFyIFn44sBq9smO0misOGvPNpAdA14=;
 b=hIS+TRX0uKh92cElSgJ6ME+bcYfuQ0yC3kD0rlT9NOGXDEkj+136zPDO
 v2G5Wkp+QDC1RjGPvpdWtCzbl0kxSxSUK8yJosqP2AA0xGSs4rwJVe1VW
 x1of12mR39Sy+k6rmIOX7DjYZoCNJWjH3m9fOxyH5a+jZiEkzcQlKQQZl
 mqzPahKs+LladR7WMYuRLkMYHwPkPBlsfVujxAci/Vh4dzA6+NE3YuPPV
 B/5kATj+5QdCy5EEp+V9CA+G+MJeZuM65kejkvaJFYt/nr+noI8eScks9
 GrOZDuTlSsFY2zCrcvMP2A0ZvY49QXgIdLt/MmAWD7zt+tFKp/qF4WowI g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="267985471"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="267985471"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 12:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="657270379"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 09 May 2022 12:01:43 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 249J1goK015683; Mon, 9 May 2022 20:01:42 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 May 2022 21:01:18 +0200
Message-Id: <20220509190118.7507-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] ice: ignore protocol field in GTP
 offload
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

Commit 34a897758efe ("ice: Add support for inner etype in switchdev")
added the ability to match on inner ethertype. A side effect of that change
is that it is now impossible to add some filters for protocols which do not
contain inner ethtype field. tc requires the protocol field to be specified
when providing certain other options, e.g. src_ip. This is a problem in
case of GTP - when user wants to specify e.g. src_ip, they also need to
specify protocol in tc command (otherwise tc fails with: Illegal "src_ip").
Because GTP is a tunnel, the protocol field is treated as inner protocol.
GTP does not contain inner ethtype field and the filter cannot be added.

To fix this, ignore the ethertype field in case of GTP filters.

Fixes: 9a225f81f540 ("ice: Support GTP-U and GTP-C offload in switchdev")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 3acd9f921c44..734bfa121e24 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -994,7 +994,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
 		n_proto_key = ntohs(match.key->n_proto);
 		n_proto_mask = ntohs(match.mask->n_proto);
 
-		if (n_proto_key == ETH_P_ALL || n_proto_key == 0) {
+		if (n_proto_key == ETH_P_ALL || n_proto_key == 0 ||
+		    fltr->tunnel_type == TNL_GTPU ||
+		    fltr->tunnel_type == TNL_GTPC) {
 			n_proto_key = 0;
 			n_proto_mask = 0;
 		} else {
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
