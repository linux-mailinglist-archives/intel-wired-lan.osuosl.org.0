Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FF173660A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 10:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 920676128F;
	Tue, 20 Jun 2023 08:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 920676128F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687249510;
	bh=lIJMDR9ZUeb8AEPRgA4e+MwEoSyUXLSsm/OAePaBYY8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kAsstVyfOLuy8zfxdeq3TOOdhxfJ3VjysObvXVHzHJc1ksfJQcD190VTSAW8D0paX
	 +WhTXsdclAkv+MgkxFmQI+F8c6ShHOw8UeJX9vSyMkNaNKF51dMkO0BfReFYgkW/B8
	 v/hy8PZ4dSie4kz9k7kwdUv08mW9DuS9egCCSK8xGSH6raSVr+/EUXIl7H4GaTobzu
	 lde2OmTllW7cMA4dQrnFlfdPhBwxwUPRE5tHtuNfPDw7juSNxN36QB8625xNkxIAK+
	 GEpfcwdVQbuG2L7Oeofdyme6Fvy59Y7nVYuuU+AqzEqSF2ekTLsew9sAI6AMBEYGvV
	 jqINsgG1VuGJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8ud7jgL3WVw; Tue, 20 Jun 2023 08:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D96360D59;
	Tue, 20 Jun 2023 08:25:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D96360D59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB99D1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 08:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 902F760E6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 08:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 902F760E6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCQpPvGWkpJJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 08:25:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D289160D59
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D289160D59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 08:25:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="357287944"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="357287944"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 01:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="691346033"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="691346033"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga006.jf.intel.com with ESMTP; 20 Jun 2023 01:25:00 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Jun 2023 10:24:54 +0200
Message-Id: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687249502; x=1718785502;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iAVElBJATHHVS8jixdg/1VEQURYFyFA0PaU7QYlOOmg=;
 b=mejPJxdPKLNdFSfQI/3rOCF5TcjASyZjKfzm3Meirjdi6gcblEn9x9FR
 CyHrXHhMZme6TaGEcp1jZiO5B2exjOtqKOfP+8AhVN1VafzA2WczRYvfb
 9I93aJZGTmJiube2cVYlh8cNnp+yDfUTtZPvSKu6wzQABt9hghxy83i40
 IBRia/Vq6XloNORrJgk3aGo53ZIzzf4Wk7DM5DKwOd3Bp04jBuL0rl+GA
 7SNcpLwJ9lkC6l8CkpoqQ2ccahSNlW1eGqZXqd+0cAk0EuhQeQW2gF5lI
 K7D7T84dPHNiH0lboDTzAZpfxyDyucVgGDTzYHzccH+S+4N5V4gle2/by
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mejPJxdP
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: add missing napi deletion
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, michal.swiatkowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Error path from ice_probe() is missing ice_napi_del() calls, add it to
ice_deinit_eth() as ice_init_eth() was the one to add napi instances. It
is also a good habit to delete napis when removing driver and this also
addresses that. FWIW ice_napi_del() had no callsites.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cd562856f23a..f6b041490154 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4485,6 +4485,7 @@ static void ice_deinit_eth(struct ice_pf *pf)
 	if (!vsi)
 		return;
 
+	ice_napi_del(vsi);
 	ice_vsi_close(vsi);
 	ice_unregister_netdev(vsi);
 	ice_devlink_destroy_pf_port(pf);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
