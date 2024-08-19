Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B9C9567F4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 12:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 699CD404BF;
	Mon, 19 Aug 2024 10:14:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pvNkPj7ZRmvJ; Mon, 19 Aug 2024 10:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6A4C404C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724062485;
	bh=lgttjxF2C9//2sgJtSX/fu1Ju2bk604KYMYslTyEl2k=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jQlS90fbE8qW918Gbn+k40B8qN6l97uFw9J5ymadFxT68kd2/mzxe5CcpY5vVKBgP
	 4NEgOaMvVDIpl9jWz88o31r/4ifaaShJWx75c2rCRZEzFXU9kauM3rEZeTFM0D1cKq
	 g9WHdcz8mlPHn1BOv8egi70isbFCt+rVcyKFYIpmiUzbzeOWwzvryrrmSdw+pI2dyj
	 MNAvTUmJuQA5ucAJ/pxnQSjt6DulOAteeYa0InrRfZBbawRvMa55Q3+nG60+TGbCY3
	 KfcIB3PGQMjWZaKgCdJ8tfU05QfHc6/ycYg+iLaV6XnQxNgISKq2jbtOlJK0hTenHW
	 betUNnDheNGng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6A4C404C0;
	Mon, 19 Aug 2024 10:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50AAF1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7A8A80581
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vYTNt0E8XT_A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 10:14:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0798980847
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0798980847
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0798980847
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:41 +0000 (UTC)
X-CSE-ConnectionGUID: 8Z/pLdfhQWmSIqoFa26pZA==
X-CSE-MsgGUID: TxYy1InpQLKti1L0H8SzsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="13090170"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="13090170"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 03:14:41 -0700
X-CSE-ConnectionGUID: IiwUjazURwi9aNFKqE/3NA==
X-CSE-MsgGUID: HaRkVdDNR+ahstqUeXg/oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="91097101"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 19 Aug 2024 03:14:37 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BD74028195;
 Mon, 19 Aug 2024 11:14:35 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 19 Aug 2024 12:05:41 +0200
Message-ID: <20240819100606.15383-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240819100606.15383-1-larysa.zaremba@intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724062482; x=1755598482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ggv0Vvud4p7WVAXKSxI0QumP+Iqv96sBq059E0KCF44=;
 b=YfwsuuT2DHbygUA2CuSNBcZm4Yqmt8AS3tazHttibvNq1QhhNWnDnUhQ
 H8TCDSBONacrpPsLpQPy7ncCjmjfhkSZX1vHz3Dde3Z/jZ0eZBncKQBMJ
 EHzzuY4KFd1dLnbrZVhxLijo8MCHMfdcADgzrZMK6YHV/p+sDTRMuMeR1
 015KkDAEL/Gv2gwkbcZG8BAhKXNqE+nN0uOem8WpHyzjaPQkGRUSL6j7K
 b0jleb7uKlYIzFrI6JU9bKwrW1Q1VTZBy7aAbcPorjVVNP1pEoCBLRUMZ
 pOL7BxP6tagGZtmkrhxjEzZkcU9kVBZO/0h9+cCIGzeWsuHW6tYQX62Gk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YfwsuuT2
Subject: [Intel-wired-lan] [PATCH iwl-net v3 4/6] ice: check ICE_VSI_DOWN
 under rtnl_lock when preparing for reset
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Consider the following scenario:

.ndo_bpf()		| ice_prepare_for_reset()		|
________________________|_______________________________________|
rtnl_lock()		|					|
ice_down()		|					|
			| test_bit(ICE_VSI_DOWN) - true		|
			| ice_dis_vsi() returns			|
ice_up()		|					|
			| proceeds to rebuild a running VSI	|

.ndo_bpf() is not the only rtnl-locked callback that toggles the interface
to apply new configuration. Another example is .set_channels().

To avoid the race condition above, act only after reading ICE_VSI_DOWN
under rtnl_lock.

Fixes: 0f9d5027a749 ("ice: Refactor VSI allocation, deletion and rebuild flow")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index b72338974a60..94029e446b99 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2665,8 +2665,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
  */
 void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 {
-	if (test_bit(ICE_VSI_DOWN, vsi->state))
-		return;
+	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
 
 	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
 
@@ -2674,15 +2673,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
 		if (netif_running(vsi->netdev)) {
 			if (!locked)
 				rtnl_lock();
-
-			ice_vsi_close(vsi);
+			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
+			if (!already_down)
+				ice_vsi_close(vsi);
 
 			if (!locked)
 				rtnl_unlock();
-		} else {
+		} else if (!already_down) {
 			ice_vsi_close(vsi);
 		}
-	} else if (vsi->type == ICE_VSI_CTRL) {
+	} else if (vsi->type == ICE_VSI_CTRL && !already_down) {
 		ice_vsi_close(vsi);
 	}
 }
-- 
2.43.0

