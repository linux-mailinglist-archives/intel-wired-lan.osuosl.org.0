Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7746B49104A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jan 2022 19:29:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0ADA60C04;
	Mon, 17 Jan 2022 18:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SikU5GR8OzN6; Mon, 17 Jan 2022 18:29:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 006F660B49;
	Mon, 17 Jan 2022 18:29:37 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 265E11BF2F3
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 18:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 151DC40150
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 18:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 42fmhSj2rQlx for <intel-wired-lan@osuosl.org>;
 Mon, 17 Jan 2022 18:29:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7ABAF4014D
 for <intel-wired-lan@osuosl.org>; Mon, 17 Jan 2022 18:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1642444165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=NPndoflHHf996F3//9m2DIDeIMaF7kUsjRmWBf9enqQ=;
 b=YEN0uZifHTE5PoaXci2/PV56odekeD85WrFu9ysiIJmr7azvbHTEPfCWZ6w4epUXUJkzot
 iqX/KuLFMZ98t0gvxa/eaPOkXRpXw58yEyySZZWnUXGnl2rvzcN/5cbL34LNRqDOn3qp3m
 CHpVpzFI8ZKrI/XuRWYp01QAi0Y1ZiQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-EBfNgvoXNBGNuaDwLRfXfA-1; Mon, 17 Jan 2022 13:29:20 -0500
X-MC-Unique: EBfNgvoXNBGNuaDwLRfXfA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0A7B1019988;
 Mon, 17 Jan 2022 18:29:18 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-3.rdu2.redhat.com [10.10.112.3])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0647C7ED8F;
 Mon, 17 Jan 2022 18:29:17 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 70FA9A807A3; Mon, 17 Jan 2022 19:29:15 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Mon, 17 Jan 2022 19:29:12 +0100
Message-Id: <20220117182915.1283151-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-wired-lan] [PATCH 0/3 net-next v5] igb/igc: fix XDP
 registration
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

Fix the kernel warning "Missing unregister, handled but fix driver"
when running, e.g.,

  $ ethtool -G eth0 rx 1024

on igc.  Remove memset hack from igb and align igb code to igc. 

v3: use dev_err rather than netdev_err, just as in error case.
v4: fix a return copy/pasted from original igc code into the correct
    `goto err', improve commit message.
v5: add missing dma_free_coherent calls in error case.

Corinna Vinschen (2):
  igc: avoid kernel warning when changing RX ring parameters
  igb: refactor XDP registration
  igb/igc: RX queues: fix DMA leak in error case

 drivers/net/ethernet/intel/igb/igb_ethtool.c |  4 ----
 drivers/net/ethernet/intel/igb/igb_main.c    | 13 +++++++++---
 drivers/net/ethernet/intel/igc/igc_main.c    | 21 +++++++++++---------
 3 files changed, 22 insertions(+), 16 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
