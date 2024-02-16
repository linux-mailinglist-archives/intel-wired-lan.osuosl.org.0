Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85239858857
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 23:06:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D83B421AA;
	Fri, 16 Feb 2024 22:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ArhPBrw4hxXE; Fri, 16 Feb 2024 22:06:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 295D242182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708121211;
	bh=GjEH5YI84Tj2wQAblElkebbq4TKBR8cTJ/BHVamvT5o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=s0TduJAAANwvaPR3UvdXt+EUNd/8yAuRtqXpirUTTpmL7M1QmrL0hBgwvutU+NNi0
	 nCJP790oSmaIIGPJ+iVrxjm0CMtTxxoEqMUA7OPZtVpzSbqoMlko7GVW2WXsGr/IAO
	 WEaycXxQylEeJOXZ/iMoxvYgNthixP6v7w0sse6GcFDpZ1tw+GgA6xpMK5t4W0ZuP0
	 ZYWmLiLsnNodv4RXV61iZF8ZvSCDo9ToR8o1wYG6go+VZNFNCnfQgx6FkH2UNiI7I/
	 aNHJxKIjcKJCf2/tUbYWt6YYQywjbi37vvmKusdSLoaD2gdBD/wuGLomMBxvV09kb3
	 0fKlbnPEHVxJg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 295D242182;
	Fri, 16 Feb 2024 22:06:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7C21BF25F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9537B840B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMMetaZRHqFy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 22:06:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD363840B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD363840B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD363840B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:06:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="2134197"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="2134197"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="3983842"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 14:06:43 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 16 Feb 2024 14:06:34 -0800
Message-ID: <20240216220638.2558451-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708121205; x=1739657205;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rGxSLKXDWJMef0A8slN8T3duaK5roZKDzrjoC90jvPY=;
 b=TGhVvw+nhlD9fbaON6JV1dNcodmKAEST81wXBRSWdYqDQlqtjJiN+mWT
 wnDPJ19o1id6tcv0wuyoAaCARPkL61Kej0On7jJMtuoPJivUXewcHvcw1
 sG5jUQaoRZJrWPQzuIr77NNcAuf90Pw9Vpdi2+OQ3L/ESsXVAbNaTkaAD
 2cyYXQERC7n2cBr5DvdCgk4GHau9vGU1C0GSViCP+8HSEgXq5qyPuwYFx
 /P+MxSSlcv8b77JEgXK2VcLE9nx2BZbHIKcfiOFq8702LX7hP1UeuOSu+
 Fm8MhmMg4/XfJ4PvMLxgxXJ6J7fBQZ9i5AI6quzxm6r61v3uqIPQ0sVS3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TGhVvw+n
Subject: [Intel-wired-lan] [PATCH iwl-next 0/4] ice: use relative VSI index
 for VFs VSIs
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice driver currently communicates firmware VSI numbers to its virtual
functions over virtchnl. For E800 series hardware, the VF driver has no
direct use of the VSI number.

Some older legacy hardware could use the actual VSI number when
communicating directly to firmware via the AdminQ. The E800 hardware does
not allow this, and all communication happens over mailbox to the PF. The
VFs do not have a direct access to the firmware. Additionally, none of the
registers exposed to the VF depend on the VSI number.

Further, the PF is able to lookup the VSI for the VF without using the
number provided by the VF over virtchnl. Thus, there is no reason that the
number provided to the VF must actually be a real VSI number, nor does it
need to be distinct across multiple VFs.

This series modifies the ice driver to send a relative VSI number to the VF
instead of sending the firmware values. This simplifies the interface with
the VF, as the PF can simply validate this relative number. Currently, only
a single VSI is provided to each VF. Thus, a simple static value of 1 is
used. We can easily extend this to use a proper relative index if we enable
multiple VSIs for a VF in the future.

First, a couple of patches cleanup a few places in the code which still use
the VF VSI IDs. Then, the VSI ID logic over virtchnl is changed to use the
static values. Finally, the vf->lan_vsi_num field is no longer used and only
set, so we can simplify the driver further by removing this entirely.

This eliminates a path for leaking information about the PF state to the VF,
and simplifies the PF driver logic. Several of the removed code flows
required an iterated scan over the VSI list to locate the VSI with the
reported VSI number.

Finally, this has significant value for a future series implementing VF live
migration. Now that the PF always passes relative VSI indexes, migration
will no longer need to worry about migrating the absolute VSI numbers sent
previously, which will simplify both the migration process as well as
continued handling of a migrated VF after a migration event completes.

Jacob Keller (4):
  ice: pass VSI pointer into ice_vc_isvalid_q_id
  ice: remove unnecessary duplicate checks for VF VSI ID
  ice: use relative VSI index for VFs instead of PF VSI number
  ice: remove vf->lan_vsi_num field

 drivers/net/ethernet/intel/ice/ice_sriov.c    |  1 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 10 +-----
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  5 ---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 31 +++++++------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |  9 ++++++
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  3 --
 6 files changed, 22 insertions(+), 37 deletions(-)


base-commit: 6cffde791c4f1c276fdfcf068554c3c77de35f40
-- 
2.41.0

