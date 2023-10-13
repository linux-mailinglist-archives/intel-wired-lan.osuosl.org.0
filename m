Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8737C8BF8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 19:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 379F04185D;
	Fri, 13 Oct 2023 17:08:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 379F04185D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697216891;
	bh=xm0+D/mVaFRrHTI1ygpb+e+DT7vG2g9/R+OnoXHuLCY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=l4ZloJrrPWPQNXM1Pci+CmmHVlhjGgCvefLMNpofnM0pAVHErKi3pIQB1IAIjVETj
	 CVtyjrXX9OMA6gd5z4J5D/VZG0cbCEWvlKJqChRTlC1swbZ5FnkpfCfr0Ocw1d+Jpa
	 0Ote0W9BDFEJkJbH8vfI/H6i7G2KJtQCnyW3E2uBvJdj0Z1hpr8CrmF3iq/bw1I3uX
	 PR3B8ce0i1/lN1n/OUqe+h0AVIMB2WT3zrsBNIk4O/1vT5h9FcmrdGqzL+BSEeccBe
	 A0t58w90afk/GANYN8/78kb7/xGUZu+7e8jsaNkxTlm8rYyO7OwqK80MZAOQUIQd4k
	 CjYuEyGcYI5mg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jp7wBPCdHcSo; Fri, 13 Oct 2023 17:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C774C41B33;
	Fri, 13 Oct 2023 17:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C774C41B33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBFDB1BF425
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 17:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CCA28610F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 17:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCA28610F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RsANDCaoAEyK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 17:08:03 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92A7C610B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 17:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92A7C610B8
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-449-p1fc9ffLPHa4J1LrbnZu_A-1; Fri, 13 Oct 2023 13:07:58 -0400
X-MC-Unique: p1fc9ffLPHa4J1LrbnZu_A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24E832800E84;
 Fri, 13 Oct 2023 17:07:58 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.225.161])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 907BA1C060DF;
 Fri, 13 Oct 2023 17:07:56 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 13 Oct 2023 19:07:50 +0200
Message-ID: <20231013170755.2367410-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1697216882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=TksTCekXADksDkw6zz27tOiFc5jOxJuDTlx+GNP+MB4=;
 b=c+U17X3YHzp6ibhVUeXfN1wAHcdb4ovH1Q1Ayyo8iRLW2FjsWEAvJMqyfGuNBXqdGyMsBP
 s+UYszHEhhKOZD7rOf84GJg6cfxMfqaHZrXjP3ADq8eDzvLvITgtyUXEFmZ/SoOIgGOlNc
 FnHlEvjjvpyg03Gctkp76hwhIuKalI4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=c+U17X3Y
Subject: [Intel-wired-lan] [PATCH net-next 0/5] i40e: Add basic devlink
 support
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The series adds initial support for devlink to i40e driver.

Patch-set overview:
Patch 1: Adds initial devlink support (devlink and port registration)
Patch 2: Refactors and split i40e_nvm_version_str()
Patch 3: Adds support for 'devlink dev info'
Patch 4: Refactors existing helper function to read PBA ID
Patch 5: Adds 'board.id' to 'devlink dev info' using PBA ID

Ivan Vecera (5):
  i40e: Add initial devlink support
  i40e: Split and refactor i40e_nvm_version_str()
  i40e: Add handler for devlink .info_get
  i40e: Refactor and rename i40e_read_pba_string()
  i40e: Add PBA as board id info to devlink .info_get

 drivers/net/ethernet/intel/Kconfig            |   1 +
 drivers/net/ethernet/intel/i40e/Makefile      |   3 +-
 drivers/net/ethernet/intel/i40e/i40e.h        | 136 ++++++++---
 drivers/net/ethernet/intel/i40e/i40e_common.c |  58 +++--
 .../net/ethernet/intel/i40e/i40e_devlink.c    | 224 ++++++++++++++++++
 .../net/ethernet/intel/i40e/i40e_devlink.h    |  18 ++
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  40 +++-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   3 +
 10 files changed, 414 insertions(+), 76 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_devlink.c
 create mode 100644 drivers/net/ethernet/intel/i40e/i40e_devlink.h

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
