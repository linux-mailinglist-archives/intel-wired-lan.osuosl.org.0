Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8F1771D62
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 11:48:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA3EE40B39;
	Mon,  7 Aug 2023 09:48:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA3EE40B39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691401734;
	bh=7z5P+G07y3qlALoXMt5pMERtviJ701xciJkh/NfuhfE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Xbb4Jb0Y9bQEWcWrMMREqYyfpxlQMljbEAcUZs57D0npqfdEpTueZ1C1hYxe1SMaM
	 7M9MwFSyvBzUJKzIu64c8SgT642tTNzy3Ednkcj5DhF8zUjQtSNHNwuqHk29mlBtUX
	 T/QeqAHGYQXM0K3j5WHujfomqyhQhfMBHv+2jrYckvgEH1MbU18tt8fFg2z2BRlsGC
	 /y//tVG1ALXzvsEc/cH5H97Wu6Z+qc6JNm17Oa50IFIoa3NKozgqG43uArVe1/A3DP
	 nT/iuhdkphU/wS0epxbVNt/H1s4LgkIaOxCa0FcUouMtkPMAhlvR2zxt7An19s6HZR
	 iKkniF6Bjfing==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s3bCGaKGCiuZ; Mon,  7 Aug 2023 09:48:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E350C40323;
	Mon,  7 Aug 2023 09:48:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E350C40323
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14FFF1BF329
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A235D608B7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A235D608B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z62YCu8JiAAq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 09:48:40 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B43FF607D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 09:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B43FF607D0
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-288-tPRH4S_9O9qMixjTX2NOpg-1; Mon, 07 Aug 2023 05:48:35 -0400
X-MC-Unique: tPRH4S_9O9qMixjTX2NOpg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BBFA3C13922;
 Mon,  7 Aug 2023 09:48:34 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.226.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EC1381121314;
 Mon,  7 Aug 2023 09:48:31 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Mon,  7 Aug 2023 11:48:29 +0200
Message-ID: <20230807094831.696626-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691401719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=mCbJj/vVAJbYyM13q10h5V9OXKZQO+l4vJHMyz5zA34=;
 b=is6KgjE432Y5BFFCiOrDzbLbBG57ivkli9Jhaup/2rcIJ7YDo1mOozNhouhXLO/8lVvs67
 9bT8EgBYXe598I0hRdaz6ITPxJx/DowFbqc43vRZa5neu1MlN1i92VMOHO8rLmjFJ2w5wB
 Wx4hBLOC6vZKba9zIuEIBXgXlCCEGck=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=is6KgjE4
Subject: [Intel-wired-lan] [PATCH net 0/2] Fix VF to VM attach detach
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
Cc: slawomirx.laba@intel.com, przemyslawx.patynowski@intel.com,
 kamil.maziarz@intel.com, jesse.brandeburg@intel.com,
 norbertx.zulinski@intel.com, dawidx.wesierski@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Petr Oros (2):
  Revert "ice: Fix ice VF reset during iavf initialization"
  ice: Fix NULL pointer deref during VF reset

 drivers/net/ethernet/intel/ice/ice_sriov.c    |  8 ++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 34 +++++--------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 -
 4 files changed, 12 insertions(+), 32 deletions(-)

-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
