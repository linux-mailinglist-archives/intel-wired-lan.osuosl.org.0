Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 977F6C582B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 16:03:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3512060FF0;
	Thu, 13 Nov 2025 15:03:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hRzEfPa0_HcY; Thu, 13 Nov 2025 15:03:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 857C96101C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763046202;
	bh=BSwxvWhvMwrpXR9kO8jPhQc+4MnpGo44XTF8/qGci0s=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ncTgmmJsDpEZhqamJMR+39pRP7G/E8VbhTEnWerRQsOlsLTtYvxXfhz0ZlHGiK2Tr
	 p+j/SSPKVz6X/j7zj3fCQFJ/stWMUDq/hkqyewQJKSMZeAESmGzR9oVckreMhgkNFH
	 ZJ7SdeeCFIKwZ6x330ZtXfwyo8tqXNwf1wf01sGui7by//iBrG7HRpEgiss8MjXFM+
	 reCNWdCCdVwMlro+fAl92nfgcxvF2oBc8uHPVvnIDs487W3qOfqDOoxYf4mOCbC+k7
	 9V0OEQZMAFemP56zRzLU/BW4UEtRGxKrHzQRt8rw8WyzvKV3RRgWCK/7q27lI35mLF
	 /cFpQhhu0QNJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 857C96101C;
	Thu, 13 Nov 2025 15:03:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BCD66158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 15:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AECB783B84
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 15:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 98MJOV3_W6dV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 15:03:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2FCB83B83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2FCB83B83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2FCB83B83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 15:03:19 +0000 (UTC)
X-CSE-ConnectionGUID: dMg/sATcSGeZH7VUv+s+gA==
X-CSE-MsgGUID: caPk1xZiRk+WBy731FW5OA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054683"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65054683"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:03:02 -0800
X-CSE-ConnectionGUID: Lk6390cSTuy1iyCSEXsOKw==
X-CSE-MsgGUID: zFe0AInXSZ2BK9lh5MsEcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220325210"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:52 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 7B381A9; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>,
 Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 13 Nov 2025 15:32:33 +0100
Message-ID: <20251113150217.3030010-20-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046200; x=1794582200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rml3ckj6WdvqCWJSsraCv9TD4b9UeGEJUCuDsF2dQ+c=;
 b=HGgUdQNS58+0tIq8GG+dWHxkpEoW2mN5PW3r10FLfzhZ0/z+I711IsvH
 cEcMGRQPhOD0sXtiyHYpW+JeqztjNeIydzXQShhbavjPZLmNkZyDQAE32
 LXfOscI3AV1CiUEp8jlL4wlSUVjiDcHc0UfumEj5jYPhl3eVnFPX4zbnt
 GI46KCtLoBwbQmY1UcnjHMn8CjqMBj0GwMGE4SGuZL9XRR49a2S9IT8QB
 9dTurwzZa73idar51C7WDYt8gte7BaosbB0HNnJP9tw14WCelNawo/4l7
 lnds3NDegiwZKWZolv5Smnql7JmHimGlcLCCEp4xrwwFhetbcNcGLtHW5
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HGgUdQNS
Subject: [Intel-wired-lan] [PATCH v3 19/21] scsi: fnic: Switch to use %ptSp
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use %ptSp instead of open coded variants to print content of
struct timespec64 in human readable format.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/scsi/fnic/fnic_trace.c | 52 ++++++++++++++--------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

diff --git a/drivers/scsi/fnic/fnic_trace.c b/drivers/scsi/fnic/fnic_trace.c
index cdc6b12b1ec2..0a849a195a8e 100644
--- a/drivers/scsi/fnic/fnic_trace.c
+++ b/drivers/scsi/fnic/fnic_trace.c
@@ -138,9 +138,8 @@ int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
 			 */
 			len += scnprintf(fnic_dbgfs_prt->buffer + len,
 				  (trace_max_pages * PAGE_SIZE * 3) - len,
-				  "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
-				  "%16llx %16llx %16llx\n", (u64)val.tv_sec,
-				  val.tv_nsec, str, tbp->host_no, tbp->tag,
+				  "%ptSp %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\n",
+				  &val, str, tbp->host_no, tbp->tag,
 				  tbp->data[0], tbp->data[1], tbp->data[2],
 				  tbp->data[3], tbp->data[4]);
 			rd_idx++;
@@ -180,9 +179,8 @@ int fnic_get_trace_data(fnic_dbgfs_t *fnic_dbgfs_prt)
 			 */
 			len += scnprintf(fnic_dbgfs_prt->buffer + len,
 				  (trace_max_pages * PAGE_SIZE * 3) - len,
-				  "%16llu.%09lu %-50s %8x %8x %16llx %16llx "
-				  "%16llx %16llx %16llx\n", (u64)val.tv_sec,
-				  val.tv_nsec, str, tbp->host_no, tbp->tag,
+				  "%ptSp %-50s %8x %8x %16llx %16llx %16llx %16llx %16llx\n",
+				  &val, str, tbp->host_no, tbp->tag,
 				  tbp->data[0], tbp->data[1], tbp->data[2],
 				  tbp->data[3], tbp->data[4]);
 			rd_idx++;
@@ -215,30 +213,26 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 {
 	int len = 0;
 	int buf_size = debug->buf_size;
-	struct timespec64 val1, val2;
+	struct timespec64 val, val1, val2;
 	int i = 0;
 
-	ktime_get_real_ts64(&val1);
+	ktime_get_real_ts64(&val);
 	len = scnprintf(debug->debug_buffer + len, buf_size - len,
 		"------------------------------------------\n"
 		 "\t\tTime\n"
 		"------------------------------------------\n");
 
+	val1 = timespec64_sub(val, stats->stats_timestamps.last_reset_time);
+	val2 = timespec64_sub(val, stats->stats_timestamps.last_read_time);
 	len += scnprintf(debug->debug_buffer + len, buf_size - len,
-		"Current time :          [%lld:%ld]\n"
-		"Last stats reset time:  [%lld:%09ld]\n"
-		"Last stats read time:   [%lld:%ld]\n"
-		"delta since last reset: [%lld:%ld]\n"
-		"delta since last read:  [%lld:%ld]\n",
-	(s64)val1.tv_sec, val1.tv_nsec,
-	(s64)stats->stats_timestamps.last_reset_time.tv_sec,
-	stats->stats_timestamps.last_reset_time.tv_nsec,
-	(s64)stats->stats_timestamps.last_read_time.tv_sec,
-	stats->stats_timestamps.last_read_time.tv_nsec,
-	(s64)timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_sec,
-	timespec64_sub(val1, stats->stats_timestamps.last_reset_time).tv_nsec,
-	(s64)timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_sec,
-	timespec64_sub(val1, stats->stats_timestamps.last_read_time).tv_nsec);
+			 "Current time :          [%ptSp]\n"
+			 "Last stats reset time:  [%ptSp]\n"
+			 "Last stats read time:   [%ptSp]\n"
+			 "delta since last reset: [%ptSp]\n"
+			 "delta since last read:  [%ptSp]\n",
+			 &val,
+			 &stats->stats_timestamps.last_reset_time, &val1,
+			 &stats->stats_timestamps.last_read_time, &val2);
 
 	stats->stats_timestamps.last_read_time = val1;
 
@@ -416,8 +410,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 	jiffies_to_timespec64(stats->misc_stats.last_ack_time, &val2);
 
 	len += scnprintf(debug->debug_buffer + len, buf_size - len,
-		  "Last ISR time: %llu (%8llu.%09lu)\n"
-		  "Last ACK time: %llu (%8llu.%09lu)\n"
+		  "Last ISR time: %llu (%ptSp)\n"
+		  "Last ACK time: %llu (%ptSp)\n"
 		  "Max ISR jiffies: %llu\n"
 		  "Max ISR time (ms) (0 denotes < 1 ms): %llu\n"
 		  "Corr. work done: %llu\n"
@@ -437,10 +431,8 @@ int fnic_get_stats_data(struct stats_debug_info *debug,
 		  "Number of rport not ready: %lld\n"
 		 "Number of receive frame errors: %lld\n"
 		 "Port speed (in Mbps): %lld\n",
-		  (u64)stats->misc_stats.last_isr_time,
-		  (s64)val1.tv_sec, val1.tv_nsec,
-		  (u64)stats->misc_stats.last_ack_time,
-		  (s64)val2.tv_sec, val2.tv_nsec,
+		  (u64)stats->misc_stats.last_isr_time, &val1,
+		  (u64)stats->misc_stats.last_ack_time, &val2,
 		  (u64)atomic64_read(&stats->misc_stats.max_isr_jiffies),
 		  (u64)atomic64_read(&stats->misc_stats.max_isr_time_ms),
 		  (u64)atomic64_read(&stats->misc_stats.corr_work_done),
@@ -857,8 +849,8 @@ void copy_and_format_trace_data(struct fc_trace_hdr *tdata,
 	len = *orig_len;
 
 	len += scnprintf(fnic_dbgfs_prt->buffer + len, max_size - len,
-			 "%ptTs.%09lu ns%8x       %c%8x\t",
-			 &tdata->time_stamp.tv_sec, tdata->time_stamp.tv_nsec,
+			 "%ptSs ns%8x       %c%8x\t",
+			 &tdata->time_stamp,
 			 tdata->host_no, tdata->frame_type, tdata->frame_len);
 
 	fc_trace = (char *)FC_TRACE_ADDRESS(tdata);
-- 
2.50.1

