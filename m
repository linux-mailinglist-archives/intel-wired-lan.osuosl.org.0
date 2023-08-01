Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A3B76A643
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 03:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F5AA60E0B;
	Tue,  1 Aug 2023 01:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F5AA60E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690853059;
	bh=DTFvvA5PRQRCIfApuCe45V0s+AuVRunpN6AHPTDveoY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7i6IAm0BK53the3B0d/no5mE5dEgreZpQWHqRDI+T4GqwVm3MY+7YHfg5Qbe1udul
	 CKEVHINhZvnHaYv4q0z8fj2RSsog0T55AWKbpM75yCIFqWNiqJqXwojO27X5X8Lp55
	 xRjPnEHgtVfrZBbIP53/4DyY77tY1MmqMfn7/pRhSOlZj4XQtNzRCeyE0UddHNYuFe
	 8Hlk2P0Qx5Zl3Lhk9PW2lDt/8QKF14A21kzPvjPWWj7Vor6/jDE4Ipp3YWgB/8QO0i
	 g6e6Yakp+EtrKRoL1/LH54cjgZQ7r6CD9RgJkgtYiRtKwk/T5TqB8R3bz3SGmZNCzD
	 abVTlFqjrkZiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pi-HqpDfe20T; Tue,  1 Aug 2023 01:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA9DF60739;
	Tue,  1 Aug 2023 01:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA9DF60739
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D2741BF97F
 for <intel-wired-lan@osuosl.org>; Tue,  1 Aug 2023 01:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCE4480DB4
 for <intel-wired-lan@osuosl.org>; Tue,  1 Aug 2023 01:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCE4480DB4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJc6ThPUGjOE for <intel-wired-lan@osuosl.org>;
 Tue,  1 Aug 2023 01:23:56 +0000 (UTC)
X-Greylist: delayed 430 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 01 Aug 2023 01:23:55 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB1DF80582
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB1DF80582
 for <intel-wired-lan@osuosl.org>; Tue,  1 Aug 2023 01:23:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="372792714"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="372792714"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 18:16:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="798458541"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="798458541"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 31 Jul 2023 18:16:39 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue,  1 Aug 2023 09:15:16 +0800
Message-Id: <20230801011518.25370-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690853035; x=1722389035;
 h=from:to:cc:subject:date:message-id;
 bh=hqTEmQmQZivnh9yOJRa23OoxT8qHeWUmBfKq7QvbqQY=;
 b=VMxJo8UsSQEp5rE1UibMxuHXk61/2ttDadfa3pnwGl2WbOy1e9/jJPqh
 9HNuzpBU3TN0+ubskG4BXj7BYpYReHCADh9IdW90LaeqruJD7LAGVK2bT
 FQ0NJy93SeqC3ygB9vphwAjy+wPYJzb4Q8sFTKNHAON97mdtA+30ntNhg
 vD2u7kuKtNdN8Mykm02HLdcTwM7CE+HVdEfI83OK2JtKnH/59mmoV7u/6
 P48hsMzEUR0ZntCJhNDHsUMAUoGEjRvZcIpoQfv1vVYjG04F2DbQma0DO
 h/KpJcldZKtegbbBMYThuw5/h+a5tRUm6vE+vssrsL2/cmKPB/suPPg4t
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VMxJo8Us
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/2] Enhance the tx-usecs
 coalesce setting implementation
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current tx-usecs coalesce setting implementation in the driver code is
improved by this patch series. The implementation of the current driver
code may have previously been a copy of the legacy code i210.

Patch 1:
Allow the user to see the tx-usecs colease setting's current value when
using the ethtool command. The previous value was 0.

Patch 2:
Give the user the ability to modify the tx-usecs colease setting's value.
Previously, it was restricted to rx-usecs.

V2 -> V3:
- Refactor the code, as Simon suggested, to make it more readable.

V1 -> V2:
- Split the patch file into two, like Anthony suggested.

Muhammad Husaini Zulkifli (2):
  igc: Expose tx-usecs coalesce setting to user
  igc: Modify the tx-usecs coalesce setting

 drivers/net/ethernet/intel/igc/igc_ethtool.c | 46 +++++++++++++++-----
 1 file changed, 34 insertions(+), 12 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
