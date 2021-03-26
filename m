Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66093349E18
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3091404A5;
	Fri, 26 Mar 2021 00:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lzhr26blJfGs; Fri, 26 Mar 2021 00:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC7F340454;
	Fri, 26 Mar 2021 00:39:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB4CA1C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 829AF60B96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mYBqnm_iylUq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E183560B9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: NavjwD1XEPbcrP+JcVOqsboAdvlyVr6Ob2ajJ+UGpONn6uOLHZzRNZmFVYEnUyp4540NyMAHs2
 Rj83Mscv/Sqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762082"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762082"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: zBa1giuvOKjX7gfGUHnrF48F3RoBR2/9TugiJQeCBOAZGp0ZEenYBgwf2qrxuypTdTUCI8LPep
 E85g0K9QJv+A==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276260"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:30 -0700
Message-Id: <20210326003834.3886241-8-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 07/11] igb: override two
 checker warnings
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

The igb PTP code was using htons() on a constant to try to
byte swap the value before writing it to a register. This byte
swap has the consequence of triggering sparse conflicts between
the register write which expect cpu ordered input, and the code
which generated a big endian constant. Just override the cast
to make sure code doesn't change but silence the warning.

Can't do a __swab16 in this case because big endian systems
would then write the wrong value.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning Detail
  CHECK   .../igb/igb_ptp.c
.../igb/igb_ptp.c:1137:17: warning: incorrect type in argument 1 (different base types)
.../igb/igb_ptp.c:1137:17:    expected unsigned int val
.../igb/igb_ptp.c:1137:17:    got restricted __be16 [usertype]
.../igb/igb_ptp.c:1142:25: warning: incorrect type in argument 1 (different base types)
.../igb/igb_ptp.c:1142:25:    expected unsigned int val
.../igb/igb_ptp.c:1142:25:    got restricted __be16 [usertype]
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index ba61fe9bfaf4..de08ae8db4d5 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1134,12 +1134,12 @@ static int igb_ptp_set_timestamp_mode(struct igb_adapter *adapter,
 			| E1000_FTQF_MASK); /* mask all inputs */
 		ftqf &= ~E1000_FTQF_MASK_PROTO_BP; /* enable protocol check */
 
-		wr32(E1000_IMIR(3), htons(PTP_EV_PORT));
+		wr32(E1000_IMIR(3), (__force unsigned int)htons(PTP_EV_PORT));
 		wr32(E1000_IMIREXT(3),
 		     (E1000_IMIREXT_SIZE_BP | E1000_IMIREXT_CTRL_BP));
 		if (hw->mac.type == e1000_82576) {
 			/* enable source port check */
-			wr32(E1000_SPQF(3), htons(PTP_EV_PORT));
+			wr32(E1000_SPQF(3), (__force unsigned int)htons(PTP_EV_PORT));
 			ftqf &= ~E1000_FTQF_MASK_SOURCE_PORT_BP;
 		}
 		wr32(E1000_FTQF(3), ftqf);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
