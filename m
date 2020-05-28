Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F47C1E6B5E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 21:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B56325C1B;
	Thu, 28 May 2020 19:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6yTrvtUapt5n; Thu, 28 May 2020 19:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BFF792588A;
	Thu, 28 May 2020 19:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E67B1BF2B5
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B4CE8729F
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pE4WEofRe35w for <intel-wired-lan@osuosl.org>;
 Thu, 28 May 2020 19:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B1D14872B3
 for <intel-wired-lan@osuosl.org>; Thu, 28 May 2020 19:43:43 +0000 (UTC)
IronPort-SDR: R5G0NdmYnGNL0mIfNwFS9IGN8DWD6NMC34czhCy82jd57XsUpxYX3Yc0JFcOwxv5AVXVPYXSTJ
 nF6MdAq8B98g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 12:43:43 -0700
IronPort-SDR: brYVMV4HAghue9UzPrxxGFQ3qL4sr4yMKWy7sTm8k+Zmo30Z+I8FaaivRqZqgs6Iwc1SYIJkUg
 v+Vld5ZjwfOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302585253"
Received: from jkoshman-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.251.154.131])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2020 12:43:43 -0700
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 28 May 2020 12:43:32 -0700
Message-Id: <20200528194342.3495-5-ranjani.sridharan@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
References: <20200528194342.3495-1-ranjani.sridharan@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH 04/14] virtual-bus: add comment for
 virtbus entry
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
Cc: pierre-louis.bossart@linux.intel.com, fred.oh@linux.intel.com,
 shiraz.saleem@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Signed-off-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
---
 scripts/mod/file2alias.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/file2alias.c b/scripts/mod/file2alias.c
index fd3908ed922d..929fc152e404 100644
--- a/scripts/mod/file2alias.c
+++ b/scripts/mod/file2alias.c
@@ -1361,6 +1361,7 @@ static int do_mhi_entry(const char *filename, void *symval, char *alias)
 	return 1;
 }
 
+/* Looks like: virtbus:S */
 static int do_virtbus_entry(const char *filename, void *symval, char *alias)
 {
 	DEF_FIELD_ADDR(symval, virtbus_device_id, name);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
