Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB966A606
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:37:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DCA540C23;
	Fri, 13 Jan 2023 22:37:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DCA540C23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649470;
	bh=keb40uJm5gwEgvZ+m1msLh0ri73TyHRTJZtgrOKS0Uo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N91EfFumyfWV+uTzqbzLOwN58xUvQaKgh4LesFJpXBx3XNwTCsT4DvlbSaJmf3GpQ
	 uv8khrfyCr6U1sX8ki0MX0y6KW9UYweg5EIUL8oVoYRTiS9vMyh6jY8XdGwN8HqdnS
	 hMJ8jI4ELTFL/7Apa9YDTWP4uUtLifGyWe0pNGBa5uAAkgqf1Das4VDfHPsGIVQwne
	 LRz5vcX5d5qKV2zWw0IB8qv2z1tnZBqziJ82MpOLKPKTs6O6vi1sg2y90DArElw24S
	 nOcAry1MJs3ISKQzGAmUJU83o3C2wH2Wbef1ehOeaEkTfizEZRZT8P/oSCWAmCHX7s
	 gYbDxqOJMjx0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QAn1v0-IH-Sk; Fri, 13 Jan 2023 22:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE470404F1;
	Fri, 13 Jan 2023 22:37:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE470404F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D851A1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B23EF82207
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B23EF82207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XXNmR0oindI5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F5E0821FE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F5E0821FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354037"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354037"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859750"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859750"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:22 -0800
Message-Id: <20230113223735.2514364-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649463; x=1705185463;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XhjTcNVzsE90xUx6Vj6fStE7RvrF68INjZEMGqnW+cM=;
 b=J/mS03dMTZmdcqVRxyteC0F+TXt1OPxr5ieT9j97G4aqp3laMFKrdF5e
 3J8LX3yzlDq9ggKFHnsndJBK3jUul00XiS3DtchPAJSXJbJcfo8QM9tmF
 lzlIY7K1+FqfdW6P7cqeVoz2ktJXv6CVBdX0r6uYUB/iJJjb8sWSNeXuL
 W4vf1w1QPecrilYuus8VhNC1/8dKxrWuqZQlEDuIAsVjoK0z76zOQktqb
 5I2dQL1tfm+7E8SQpJN1GQY7JCwDvFM+4PNnqracg5GV4fVhieaEtynG0
 NdrbMyvhSWS0ST9zCw0qiK9rE4W2EkZYMaCMSkLv9v/kC3YEMZVQDi9Ao
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J/mS03dM
Subject: [Intel-wired-lan] [PATCH net-next 00/13] ice: various
 virtualization cleanups
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains a variety of refactors and cleanups in the VF code for
the ice driver. Its primary focus is to cleanup a few areas of the driver
before we begin implementing Scalable IOV.

This includes some cleanup and simplification of the VF operations and
addition of a few new operations that will be required by Scalable IOV, as
well as some other refactors needed for the handling of VF subfunctions.

It also contains a patch for changing the way we handle the mapping of the
PCI BAR 0 registers to allow sparse maps. This is done to enable iRDMA to
map the RDMA registers with write combining. Today, the iRDMA driver tries
this, but since the ice driver already mapped them as uncachable, the write
combining does not take effect. This results in additional latency as the
write combining can't be used.

This is fixed by modifying the driver to perform its own iomaps to map the
region before the RDMA space and the region after the space separately. We
can't just reduce the size of the map because Scalable IOV will need the
registers in the region beyond the RDMA area.

Jacob Keller (13):
  ice: fix function comment referring to ice_vsi_alloc
  ice: drop unnecessary VF parameter from several VSI functions
  ice: move vsi_type assignment from ice_vsi_alloc to ice_vsi_cfg
  ice: add helper function for checking VSI VF requirement
  ice: Fix RDMA latency issue by allowing write-combining
  ice: move ice_vf_vsi_release into ice_vf_lib.c
  ice: Pull common tasks into ice_vf_post_vsi_rebuild
  ice: add a function to initialize vf entry
  ice: introduce ice_vf_init_host_cfg function
  ice: convert vf_ops .vsi_rebuild to .create_vsi
  ice: introduce clear_reset_state operation
  ice: introduce .irq_close VF operation
  ice: remove unnecessary virtchnl_ether_addr struct use

 drivers/net/ethernet/intel/ice/ice.h          |   4 +-
 drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  18 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   3 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 111 ++++++-----
 drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 181 ++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_osdep.h    |  48 ++++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 124 ++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 170 +++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +-
 .../ethernet/intel/ice/ice_vf_lib_private.h   |   3 +
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  24 +--
 15 files changed, 517 insertions(+), 190 deletions(-)


base-commit: c20aabd571649b632197cfe392eacf46a24c4c6a
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
