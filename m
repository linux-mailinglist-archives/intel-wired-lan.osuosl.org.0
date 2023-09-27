Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4D57AFE79
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 10:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A96A42095;
	Wed, 27 Sep 2023 08:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A96A42095
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695803511;
	bh=cJAoKvr3vxFTQXTh8j3ClDgThMrgPtS/9ix0aC71hwA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ceuf25sw6Nveu5vpREkrTVMXe8caYqVY85g6CTWeq8j67Mo+AK0o7xuCj5ydJHag6
	 rupyU1bRzU2phLHf0PjpP5OUOhc0WmPvQBgx7iQz+n/JQw7h44YRwalIzeoR+BR3Gq
	 v0luDE4mQDHAsYw+ruSb26GsPbNpiLDhJPBQEb1W+Rba8fjDJOe/1FQzh2hgX5MK3f
	 B3b6c49/uDfaE0YT0qW6Kwkx55bk6S/SR19o/eoPl7zw77Wl+IKD7/Rw7WgD3rRVJ4
	 fWMwPicczJt0CZlCQeKhaC5Bh6CT4eAX5UIzr+INxaDmGguLWtm0JViTQ1cMeyXRLg
	 kdf988+Bzn/1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWEECgfrrnR6; Wed, 27 Sep 2023 08:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B8F841F5C;
	Wed, 27 Sep 2023 08:31:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B8F841F5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4291BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13E5E82B34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13E5E82B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Yl1cZryrKEA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 08:31:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A65082B1E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 08:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A65082B1E
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-94-LhP0U0hdPgKzOIsqtwUPgg-1; Wed, 27 Sep 2023 04:31:38 -0400
X-MC-Unique: LhP0U0hdPgKzOIsqtwUPgg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 599011C0CCC1;
 Wed, 27 Sep 2023 08:31:38 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8C8212156702;
 Wed, 27 Sep 2023 08:31:36 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Wed, 27 Sep 2023 10:31:26 +0200
Message-ID: <20230927083135.3237206-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695803502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=rb3zxIpSULzDXYGrVPMEtJunp5C3RMSrw/MepQSv0j8=;
 b=Dwf9iqwc9pH+3yabRNhSB/EA7M/yMEWZd1dVOEM4fq300J8gPLOBCLODG/i3/v0crLYkT7
 wPCvp4n1t+yCdWeAm3cON03tvMmt0MgXWCYpZ+rBkXBzjG9w1Q++7rHgeV47z/j7b6bRee
 t5Qd+pWovj2NUVha9U8gfDClkUiFP30=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Dwf9iqwc
Subject: [Intel-wired-lan] [PATCH net-next v2 0/9] i40e: House-keeping and
 clean-up
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
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The series makes some house-keeping tasks on i40e driver:

Patch 1: Removes unnecessary back pointer from i40e_hw
Patch 2: Moves I40E_MASK macro to i40e_register.h where is used
Patch 3: Refactors I40E_MDIO_CLAUSE* to use the common macro
Patch 4: Add header dependencies to <linux/avf/virtchnl.h>
Patch 5: Simplifies memory alloction functions
Patch 6: Moves mem alloc structures to i40e_alloc.h
Patch 7: Splits i40e_osdep.h to i40e_debug.h and i40e_io.h
Patch 8: Removes circular header deps, fixes and cleans headers
Patch 9: Moves DDP specific macros and structs to i40e_ddp.c

Changes:
v2 - Fixed kdoc comment for i40e_hw_to_pf()
   - Reordered patches 5 and 7-9 to make them simplier

 drivers/net/ethernet/intel/i40e/i40e.h        | 76 +++++--------------
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  8 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  3 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  2 +
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 24 +++---
 drivers/net/ethernet/intel/i40e/i40e_client.c |  1 -
 drivers/net/ethernet/intel/i40e/i40e_common.c | 11 ++-
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    | 24 +++++-
 drivers/net/ethernet/intel/i40e/i40e_debug.h  | 47 ++++++++++++
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.h   |  5 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    | 16 ++--
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  4 +
 drivers/net/ethernet/intel/i40e/i40e_io.h     | 16 ++++
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  9 +--
 .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 57 ++++++++------
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 59 --------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  9 ++-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  3 +-
 .../net/ethernet/intel/i40e/i40e_register.h   |  5 ++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  7 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 +
 .../ethernet/intel/i40e/i40e_txrx_common.h    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 59 +++-----------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  2 +
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |  4 -
 drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  4 +
 include/linux/avf/virtchnl.h                  |  4 +
 34 files changed, 231 insertions(+), 251 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_debug.h
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_io.h
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_osdep.h

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
