Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF997A8B33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 20:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A236F83BA8;
	Wed, 20 Sep 2023 18:09:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A236F83BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695233359;
	bh=Y3LFqcWn9j5cRuIpAnMb7N9bnq+E9NBklZq5+67rZjg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XEbBp6wrvTnrkbG/HSWQTm93/wfzED4PNAgwgOgW7PTOBmq98KKduan/Hr8KEyIag
	 /keT52KN8N59bln/HVjrk/ZYWDDrvAr0xEwwTl5OFzesTbqlnQ1Wx97O97omr4ocjP
	 1HD1PlccDGep8rDEKBhaTRSOseHugXtJ0tIVMejI8EcGbFcJmeU6jLhSsAVjUmo8i1
	 ywZn8YfFdjqMoFyrQyi/66TfcQHSUBwICrfWut0f7qRVuXVtxdEBx/BVx9AJAxjpR7
	 Wxf8lqN/Pzv3KSfzTU2annEFzv12FwMHHQcUIr06f3VzxFyy1viPinvRrNWTAJxBth
	 oYBRg/OH9gkpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 56WS5kYszy2c; Wed, 20 Sep 2023 18:09:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A07F83B94;
	Wed, 20 Sep 2023 18:09:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A07F83B94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8A21BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E8B583B98
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E8B583B98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r8DmCG9rMnpx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 18:09:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8C8B983B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C8B983B82
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359685137"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359685137"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 11:09:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870469679"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870469679"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga004.jf.intel.com with ESMTP; 20 Sep 2023 11:09:06 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 20 Sep 2023 20:07:42 +0200
Message-ID: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695233350; x=1726769350;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=elYWzz2UFhp1lnM2zveFDnfbZqlMLy9beu05ox7gCOA=;
 b=Izm0hPzjsG5/JtzSa/VLUKJDO9v4IylfGiVVGfNZc+GSCQpUt9kXmNxd
 nxNl2NVNkS+65zPrZBi/fna70uXrOxM/gtw9ib/MFSZwJQH0OdFsn9MQW
 mrh+R46bP0Ua4/oMisSJiq4Do0f4C+WbN4DUfbpO/6TBUbiEa+Y/stmI8
 5NpVdO7wYvsb5U1h7elqbbN2tN6uHsVrx14I6ig1tVWS7nrFjj+arQy0j
 dwNqdZxdAXOCpghbWkm0959DNxyh0RZGcU+5oJavmHx1IunoGZwawYSUg
 zVD2tmtLkGYnvxjQ6ER2vkhfSk0lES+cKoEt1LBQZ8uAq0eLkJuPjid64
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Izm0hPzj
Subject: [Intel-wired-lan] [PATCH net-next 0/3] net/intel: fix link-time
 undefined reference errors
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Recently, several link-time issues were spotted in the ethernet/intel/
folder thanks to Kbuild bots and linux-next.
The fixes are pretty straightforward, just some stubs and CONFIG_*
guards, so resolve all of them in one shot and unbreak randconfig
builds.

Alexander Lobakin (3):
  ice: fix undefined references to ice_is_*() when
    !CONFIG_PTP_1588_CLOCK
  ice: fix undefined references from DPLL code when
    !CONFIG_PTP_1588_CLOCK
  idpf: fix undefined reference to tcp_gro_complete() when !CONFIG_INET

 drivers/net/ethernet/intel/ice/Makefile     |  5 ++---
 drivers/net/ethernet/intel/ice/ice_main.c   |  8 ++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 25 ++++++++++++++++++++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c |  3 +++
 4 files changed, 34 insertions(+), 7 deletions(-)

---
Directly to netdev/net-next, build bots are not happy and the next
linux-next is approaching :s
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
