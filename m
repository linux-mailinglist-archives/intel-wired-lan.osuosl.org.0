Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9193ED92F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 16:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56E1680B01;
	Mon, 16 Aug 2021 14:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kK7i1z-OjZg; Mon, 16 Aug 2021 14:49:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D205980B0A;
	Mon, 16 Aug 2021 14:49:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B14D51BF33F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 14:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA6704025E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 14:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwFO9tu92fEP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 14:49:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFA554023B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 14:49:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="212755864"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="212755864"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 07:49:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487437707"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 07:49:14 -0700
Received: from gklab-229-137.igk.intel.com (gklab-229-137.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 17GEnD5H026003; Mon, 16 Aug 2021 15:49:13 +0100
From: Marcin Szycik <marcin.szycik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 16 Aug 2021 16:48:48 +0200
Message-Id: <20210816144848.437-1-marcin.szycik@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix ethtool set channel
 when in switchdev mode
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

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

When running ethtool set channel (-L) command on PF interface,
DCB reconfiguration is triggered which in turn involves TC
re-configuration and ring to vector mapping. It applies to
all VSI instances, regardles of VSI type, so also including
switchdev ctrl VSI when device is running in switchdev mode.

Skip ring to vector mapping for switchdev ctrl VSI, as it
uses non-standard mapping and is already properly configured
when PF VSI is rebuilt.

Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
---
This commit should be squashed with "ice: add port representor ethtool
ops and stats"

 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 26b4d5f579e6..73714685fb68 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -683,6 +683,11 @@ void ice_pf_dcb_recfg(struct ice_pf *pf)
 				vsi->idx);
 			continue;
 		}
+		/* no need to proceed with remaining cfg if it is switchdev
+		 * VSI
+		 */
+		if (vsi->type == ICE_VSI_SWITCHDEV_CTRL)
+			continue;
 
 		ice_vsi_map_rings_to_vectors(vsi);
 		if (vsi->type == ICE_VSI_PF)
-- 
2.30.1

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
