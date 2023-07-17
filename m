Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9084E7560F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 12:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 267658124A;
	Mon, 17 Jul 2023 10:58:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 267658124A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689591519;
	bh=4irgfhYQUR9ZoFfB340R6zWFyFIB0EbnntOGM4ZmxC0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PhU9lAhEiQsm6RnsGMCpiqf/wMcozvOvL8ztJLkzIPEpxDZw2DkNNaMI5Rtzu3U5V
	 Hh2W6WN4IrzOiPwdTBe/6u9PtiX66bGD/qISpqgOBu1whaC3MLHVbWVCwiu3TgioZU
	 cZwlkd+bmjkDs4wuo8PcWCK16Zq61RIaUlT/+dvVptOLIMSzGklZayg4DRAWFeYisk
	 ukqI1nkZIIQQ8waYkUJf4mHkBOEYiDLkdhdtu6+LeP1CnQTsOPu9zoeRSJ6Hlb8zXe
	 9LZGwK8k+rS+1Eq2TtvFDN6jJ+PA5UDIYUigrTNhq3DhuSKFDBuTeZ3jmj2VIIskpi
	 t+vB3rlWyFY1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fqS3-1mMYZ2A; Mon, 17 Jul 2023 10:58:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1468280B32;
	Mon, 17 Jul 2023 10:58:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1468280B32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 401A91BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 173D0605D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 173D0605D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id usRo9GGd94yR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 10:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54904605D8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54904605D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 10:58:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="452273424"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="452273424"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="700474623"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="700474623"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by orsmga006.jf.intel.com with ESMTP; 17 Jul 2023 03:58:30 -0700
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jul 2023 12:58:09 +0200
Message-Id: <20230717105812.298188-1-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689591512; x=1721127512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HY7CzYSY1awu+DEoUiVdR+SsOmprnmz9Sj2omB6CdEM=;
 b=c1HYFjjon1Fc/FnXOapCkCfs90t6ewM1TqSOVnRc6+cCYEVt9RxQ9fmq
 z2eF/GlQmJ00N2x5/iG0Wl2RFBfJ2ObugoOysOv4WZzMs2U4p6cSyoERy
 FMtzh+3/OA/70+KInrRlKbroMty2B3+FBaSTn5Wuelr1xuc5dBJvvJN0E
 gwYvwqs0Tw9UuPeTdNi40SlJtLSqKtyrbHkiXwxtudmzt20kt7IH8Q3sb
 4uLzJLkzY8c2TG5QGy2MV/xdKNn0aAPQdwKJKsZWfcxgg5T2Jnv4dft8n
 CaRQpXtL0lRCH8P/15EpX/LIcYIZN+zDcW9iVF8HNcnFai34mtq7v0nD1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c1HYFjjo
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/3] Change MIN_TXD and MIN_RXD
 to allow set rx/tx value between 64 and 80
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
Cc: "Zaborska, Olga" <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change the minimum value of RX/TX descriptors to 64 to enabl'e setting the rx/tx value
between 64 and 80. All igb, igbf and igc devices can use as low as 64 descriptors.

Olga Zaborska (1):
  igbvf: Change IGBVF_MIN to allow set rx/tx value between 64 and 80

Zaborska, Olga (2):
  igb: Change IGB_MIN to allow set rx/tx value between 64 and 80 Change
    the minimum value of RX/TX descriptors to 64 to enable setting the
    rx/tx value between 64 and 80. All igb devices can use as low as 64
    descriptors. This change will unify igb with other drivers. Based on
    commit 7b1be19 ("e1000e: lower ring minimum size to 64")
  igc: Change IGC_MIN to allow set rx/tx value between 64 and 80

 drivers/net/ethernet/intel/igb/igb.h     | 4 ++--
 drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
 drivers/net/ethernet/intel/igc/igc.h     | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
