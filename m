Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47E269F9B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:15:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BCD041717;
	Wed, 22 Feb 2023 17:15:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BCD041717
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086156;
	bh=rPw42jRDfduRvY05TTmrM9yIOrdMyAGul74IHDhaeDA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FXGj2zepFFq2U/YVwu4wA9PYBXMjq4ea8fZkjoKcTj+arsqfyGC90fWkuIWVrOBpU
	 hYkNTns0m0so6UJYWxhFLmiNlUkBu2EBz1GS8mauru74YNISYrpjTnlQxir3N2mP+k
	 HZja1RdPjsTN3+ryozK4Pcz8esp6yiKFdn/ZjIGIa7yTUzZscERLDzh1Z3XgGbld+A
	 2ogWL1hqCuS0jj2R3olbrC8LZXeb5MeJgVcfTwvIfVzXq46+bq5hS2KSy6DUkwkb+s
	 zJo1jvVZ035XDRhalsKhLjAXvGxq3F+PArwnMj/p8LulMBYJWR2eQksGc4GA46GerV
	 lk1KtOkG3xMEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BkqU_z_bEY14; Wed, 22 Feb 2023 17:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A60541747;
	Wed, 22 Feb 2023 17:15:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A60541747
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EA081BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7DF841738
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7DF841738
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id emmrIU1skvi2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18D2D41737
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18D2D41737
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466643"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466643"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980034"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980034"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:24 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:06 -0800
Message-Id: <20230222170920.1629293-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085787; x=1708621787;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k0Q/K94MjR2AXYBcs9lL6IPV3rCFdM669v0CR8RVfyQ=;
 b=CAhtLbYMbOM9iLrWwIGds6TX6QzIp+em3zdQ1Y6Db4H0qtIdmhSdcg+a
 aiYQzzbQiE03zJE+JCZpyjHvDHE/pRaE+QU9l3h+4tomSEfpTSrr4b1qn
 cllhxSOTEoMbLezTQpQM/tUyeRsq+ijVPiahT/8zfSlcCb+C8I8IIsZgb
 YMdYsSfmVlhYfYGd8DiU2lk9SzU1loYiKD33Cxv5U1e9n9PYpA6j+8ClI
 JQmfW4dvkZ2+rexY8N1rfRBTMo5grHtDBSB4mvPwT6sSIcEQNyK+WFz/T
 5SbjdiElg/k6eXKvdDsAdDL2BdRGnrH+aQiTBu1I1Td0aNKIs1DgKrTI/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAhtLbYM
Subject: [Intel-wired-lan] [intel-next PATCH 00/14] ice: refactor mailbox
 overflow detection
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The primary motivation of this series is to cleanup and refactor the mailbox
overflow detection logic such that it will work with Scalable IOV. In
addition a few other minor cleanups are done while I was working on the
code in the area.

First, the mailbox overflow functions in ice_vf_mbx.c are refactored to
store the data per-VF as an embedded structure in struct ice_vf, rather than
stored separately as a fixed-size array which only works with Single Root
IOV. This reduces the overall memory footprint when only a handful of VFs
are used.

The overflow detection functions are also cleaned up to reduce the need for
multiple separate calls to determine when to report a VF as potentially
malicious.

Finally, the ice_is_malicious_vf function is cleaned up and moved into
ice_virtchnl.c since it is not Single Root IOV specific, and thus does not
belong in ice_sriov.c

I could probably have done this in fewer patches, but I split pieces out to
hopefully aid in reviewing the overall sequence of changes. This does cause
some additional thrash as it results in intermediate versions of the
refactor, but I think its worth it for making each step easier to
understand.

Jacob Keller (14):
  ice: re-order ice_mbx_reset_snapshot function
  ice: convert ice_mbx_clear_malvf to void and use WARN
  ice: track malicious VFs in new ice_mbx_vf_info structure
  ice: move VF overflow message count into struct ice_mbx_vf_info
  ice: remove ice_mbx_deinit_snapshot
  ice: merge ice_mbx_report_malvf with ice_mbx_vf_state_handler
  ice: initialize mailbox snapshot earlier in PF init
  ice: declare ice_vc_process_vf_msg in ice_virtchnl.h
  ice: always report VF overflowing mailbox even without PF VSI
  ice: remove unnecessary &array[0] and just use array
  ice: pass mbxdata to ice_is_malicious_vf()
  ice: print message if ice_mbx_vf_state_handler returns an error
  ice: move ice_is_malicious_vf() to ice_virtchnl.c
  ice: call ice_is_malicious_vf() from ice_vc_process_vf_msg()

 drivers/net/ethernet/intel/ice/ice_main.c     |  12 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  77 +-----
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  14 -
 drivers/net/ethernet/intel/ice/ice_type.h     |  17 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  15 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c   | 251 ++++++------------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h   |  17 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  49 +++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.h |   8 +
 10 files changed, 165 insertions(+), 297 deletions(-)


base-commit: c6ce92e9dcb102b82599f9be908c3a9ad815d6dd
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
