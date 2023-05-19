Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C53E8709AC1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 17:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54A3842584;
	Fri, 19 May 2023 15:00:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54A3842584
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684508450;
	bh=jyghOc2Ghlw2ONzbMgLme3Xpf8y7GCgIplwWK/lx+Mc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0kKUjRM2+MSvN0WuqrXcKaijx6/0GjNzf2TqTmABDbKrWlBYAGQXYhNyyc3TA66Dp
	 3Reik2LhOwCaB+0YlwqKtq1sMIYCheLaTQcxCq7A1d7tIuImmsZAwBB+jXmD66hu5n
	 W3Gfbj4s6KogyAbjvjFUhv65Rkl9aSM70PoeoHW+7o4ZWR388fyaSlQJ5LONHgPA5X
	 mhmTJU2vHcbkCuHYjVqm5dp0dsR6ddmbxsaw/c+jIhrBfK/yB/FAjER9E/0fCJcHft
	 OFG1mNUCjFxhU/ezs82gidkV3TMdyTYK5cTal18xpMSuruPpKqq+e/tc/F7dDrCO07
	 lNX2K9IIZWx+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SZl1OqGYuz_3; Fri, 19 May 2023 15:00:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE1F64257C;
	Fri, 19 May 2023 15:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE1F64257C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA3D61BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 15:00:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AE89611DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 15:00:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AE89611DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o1aAQjsXXeI0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 15:00:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8AE660BEE
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8AE660BEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 15:00:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="418087111"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="418087111"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:00:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="792397358"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="792397358"
Received: from pgardocx-hp-z6-g4-workstation.igk.intel.com (HELO
 pgardocx-mobl1.igk.intel.com) ([10.237.95.41])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 08:00:38 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 May 2023 17:00:27 +0200
Message-Id: <20230519150029.370332-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684508442; x=1716044442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8nz5xQ5Y9g6bTKd/gtB3fyMuzeVAPvRkzU9B3wqk5tg=;
 b=TfXO48vLeBpola2e6/L8bBW43OVCnVgNITmN9V2B0ULSUCU4VazQ/P3Q
 xSg/CaEd9nrEJxFphVjoZiY6NutCIbQ1NxjB5JirfhK2p5PSV2ITLDG0F
 6p9h30Q6UfzXBEtwGzwOLNbFzE+asJWAyXoQa8a+JX9Dw8erq9rNWLagv
 j015vt2a1/57onREtkGEWnIrswI7rBhIRAhLjhIOv03gPtjIELN5rXlNj
 ZrGZKp1T8xndEI0SaY8AKBG/zQ3mn8WCnCIzxaYu2m0rv5Qa8aFIDgEfa
 hdFklXgZT1qaanu8ubl+B3xHH/jCvG/fSWeXq7n0FdaeAjZ8oGO0uDbxV
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TfXO48vL
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/2] iavf: clean up procedure
 for changing interface's MAC address
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
Cc: przemyslaw.kitszel@intel.com, pmenzel@molgen.mpg.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patchset cleans .ndo_set_mac_address callback up in iavf.

The second patch addresses potential issue with iavf_add_filter function
failing to add a new MAC filter to the list. However, it does make
an assumption that the new MAC address is different than the current one.
The first patch protects from this issue by skipping the entire procedure
if the MAC address doesn't actually change.

Without these two patches iavf is sending two AdminQ commands to PF driver:
VIRTCHNL_OP_ADD_ETH_ADDR to add new MAC filter and VIRTCHNL_OP_DEL_ETH_ADDR
to remove the old one. Even though it does not seem to cause issues, it is
very error prone. Skipping these callbacks is more reliable.

v2: added missing Signed-off-by and comma in second patch
v3: fixed malformed second patch
v4: fixes misspelling "cleanup" -> "clean up"

Piotr Gardocki (1):
  iavf: add check for current MAC address in set_mac callback

Przemek Kitszel (1):
  iavf: fix err handling for MAC replace

 drivers/net/ethernet/intel/iavf/iavf_main.c | 48 +++++++++++----------
 1 file changed, 25 insertions(+), 23 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
