Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6447AF2CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 20:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CF2860758;
	Tue, 26 Sep 2023 18:27:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF2860758
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695752848;
	bh=LItrCmeQ0oqyqXQdBUgrgbVmFXN6Le27Z8PKnJC6Z3o=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1PvKbF0wXSGQpon5vn+TOFR3f1opCKUZRtSvQnLWGf//Bd8sYmZPMNUqCT6IfGXli
	 F80ru2IFjQCdAX4yQKttHploDT2cTjn5pXp6KZybZQDeUIe81/rKULyuTSaltRlQcs
	 qUtHvRN4QRnNepUuwgQwBeGVse3ytOVhnRCI6b1eELeiVQ+xdGm2zadBuZAL1tJx34
	 peSRNztf/2ZO3JbeA0yVMUVovkZuF30yfd/8jD1UnO4/46xWw+cj9NSj9jEzYn3uea
	 cPjRoypxKUBjs6Rkv94pAbHnNwMkd1JS6+fzFVZHd5Dx6UTnJXOeWin33kH+TJ6cl/
	 82odzWwk53gHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LIt9f42CDiWG; Tue, 26 Sep 2023 18:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7527460E34;
	Tue, 26 Sep 2023 18:27:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7527460E34
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FC861BF279
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5EB1E81293
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EB1E81293
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q86EZJbmBTeU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 18:27:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A27E181291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 18:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A27E181291
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-IeSIh1jHN1u1qPk61oaKDA-1; Tue, 26 Sep 2023 14:27:14 -0400
X-MC-Unique: IeSIh1jHN1u1qPk61oaKDA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F2D41C06532;
 Tue, 26 Sep 2023 18:27:13 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE88E40C6EA8;
 Tue, 26 Sep 2023 18:27:11 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 26 Sep 2023 20:27:01 +0200
Message-ID: <20230926182710.2517901-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695752840;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=OIL/lX3M9ACG53TNjcOTT4lqWkNl4RwNP4dVcowY+VM=;
 b=VAHovofLODDcm3z7GEmBsn8dAhUsPONX1INIH6R20NPjCvGl9roGCIVeC0J9/060l2QtEt
 sktn3MdwBGJF4G7ZvjO+EdRyaRtxR8j4WFKTk+RIVqEST8c1lFscwwnAipJtGvH12bNu7C
 mXzETS4yacVV3dJ7Y4hqLyGp0TMnyTg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VAHovofL
Subject: [Intel-wired-lan] [PATCH net-next 0/9] i40e: House-keeping and
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
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The series makes some house-keeping tasks on i40e driver:

Patch 1: Removes unnecessary back pointer from i40e_hw
Patch 2: Moves I40E_MASK macro to i40e_register.h where is used
Patch 3: Refactors I40E_MDIO_CLAUSE* to use the common macro
Patch 4: Add header dependencies to <linux/avf/virtchnl.h>
Patch 5: Removes circular header deps, fixes and cleans headers
Patch 6: Moves DDP specific macros and structs to i40e_ddp.c
Patch 7: Moves mem alloc structures to i40e_alloc.h
Patch 8: Splits i40e_osdep.h to i40e_debug.h and i40e_io.h
Patch 9: Simplifies memory alloction functions

 drivers/net/ethernet/intel/i40e/i40e.h        | 75 +++++--------------
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  9 +--
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |  3 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  3 +
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 24 +++---
 drivers/net/ethernet/intel/i40e/i40e_client.c |  1 -
 drivers/net/ethernet/intel/i40e/i40e_common.c | 12 ++-
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  5 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    | 24 +++++-
 drivers/net/ethernet/intel/i40e/i40e_debug.h  | 50 +++++++++++++
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |  1 +
 drivers/net/ethernet/intel/i40e/i40e_diag.h   |  5 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  3 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    | 16 ++--
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |  4 +
 drivers/net/ethernet/intel/i40e/i40e_io.h     | 16 ++++
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  9 +--
 .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 57 ++++++++------
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  3 +
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 59 ---------------
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  9 ++-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  3 +-
 .../net/ethernet/intel/i40e/i40e_register.h   |  5 ++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  7 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  1 +
 .../ethernet/intel/i40e/i40e_txrx_common.h    |  2 +
 drivers/net/ethernet/intel/i40e/i40e_type.h   | 59 +++------------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  2 +
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c    |  4 -
 drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  4 +
 include/linux/avf/virtchnl.h                  |  4 +
 35 files changed, 239 insertions(+), 251 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_debug.h
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_io.h
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_osdep.h

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
