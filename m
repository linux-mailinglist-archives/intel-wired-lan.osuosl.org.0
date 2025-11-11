Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 485E0C4DB78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 13:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E70F821A3;
	Tue, 11 Nov 2025 12:28:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yzuaTADvZVgv; Tue, 11 Nov 2025 12:28:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CE378217B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762864102;
	bh=YzBsAwgRk1RsiD88u2XaCp31s8T/j0cd8z//FH47aPc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F5alWnKxPg/FtNPiENIxOKluz/7DokoKocUcycfuzdx6UWgd1RC96Lx3laHtSxI6R
	 s7HRj2qW+ua7ygL+SOCb/144jFjzmTOgfC5ZNj/L/YgjcFPv3JZOkD+hnnKu6R55/B
	 38N7QoYgBVIZneEg34Qk1+lbF82+skfWpTNPdqBBwo8Fgu2TcHT20qzvh3hPA/pZy9
	 JuR3Ya6EKbCnzpxhuP9SmQVOSWACA6UrWWTuvti4ipgv65Tlg71Y0wJaCqvWR/JvvZ
	 cmouvOy13mGeEkoK0bplj5bf6QXTckqqXHcY4Lw45DMcdGY9k0HmD7sqKJawVbjMJ5
	 9KAoLydzgVaiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CE378217B;
	Tue, 11 Nov 2025 12:28:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CAC41FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B36BA407C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K01mal3e77mA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 12:28:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0EAAE406F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EAAE406F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EAAE406F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:13 +0000 (UTC)
X-CSE-ConnectionGUID: Ki4GrVUcRwysq8h03HLonA==
X-CSE-MsgGUID: ASaZFvI1QjeM6TEYxf4soQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82553306"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="82553306"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:28:13 -0800
X-CSE-ConnectionGUID: y4Tf/TFLRkqAmpqOMEXvxA==
X-CSE-MsgGUID: qwHa3zDTS9aAI/J+tsN1Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="212343338"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa002.fm.intel.com with ESMTP; 11 Nov 2025 04:28:05 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 57FF3AA; Tue, 11 Nov 2025 13:27:38 +0100 (CET)
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
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
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
Date: Tue, 11 Nov 2025 13:20:20 +0100
Message-ID: <20251111122735.880607-21-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864094; x=1794400094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B1Xtrhk2cx5QcGIp4Q5mjR0I0BttlAUvRoFGFQemARM=;
 b=VQPiCNPEjGUZk9T9Mg9oa3D07VzFe3DgKckolmxIxj0QIq+UwULuyRCL
 B0TH+ZQCFKcfYHi65Uan2l0ua0EkeCs/MciARI0Z2ILI/R0gtnA5MzeJW
 pPnIuZlf4LUz3UpjDm7VTpHDb6hg1diYLgYAl8zTCMKAWrpmxF1gOOXHe
 OXhUlco6/XJL2P3DLRiITWbkHMpF8gzRQELkvceQQIl6LvGSnVEe3Sfhj
 O8gJbJzItdWNkAfRbM6H+LyNQ1x3+3GztJhHQ94RWFOXqTfieJmtucaB6
 v1niG+A5urDtAS41NgbWGJjNxX7hNRDw0iIwbKFtyP6wD2XQQwsWaO8TS
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VQPiCNPE
Subject: [Intel-wired-lan] [PATCH v2 20/21] scsi: snic: Switch to use %ptSp
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

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/scsi/snic/snic_debugfs.c | 10 ++++------
 drivers/scsi/snic/snic_trc.c     |  5 ++---
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/snic/snic_debugfs.c b/drivers/scsi/snic/snic_debugfs.c
index 9dd975b36b5b..edf3e5ef28a6 100644
--- a/drivers/scsi/snic/snic_debugfs.c
+++ b/drivers/scsi/snic/snic_debugfs.c
@@ -282,8 +282,8 @@ snic_stats_show(struct seq_file *sfp, void *data)
 	jiffies_to_timespec64(stats->misc.last_ack_time, &last_ack_tms);
 
 	seq_printf(sfp,
-		   "Last ISR Time               : %llu (%8llu.%09lu)\n"
-		   "Last Ack Time               : %llu (%8llu.%09lu)\n"
+		   "Last ISR Time               : %llu (%ptSp)\n"
+		   "Last Ack Time               : %llu (%ptSp)\n"
 		   "Ack ISRs                    : %llu\n"
 		   "IO Cmpl ISRs                : %llu\n"
 		   "Err Notify ISRs             : %llu\n"
@@ -298,10 +298,8 @@ snic_stats_show(struct seq_file *sfp, void *data)
 		   "Queue Ramp Down             : %lld\n"
 		   "Queue Last Queue Depth      : %lld\n"
 		   "Target Not Ready            : %lld\n",
-		   (u64) stats->misc.last_isr_time,
-		   last_isr_tms.tv_sec, last_isr_tms.tv_nsec,
-		   (u64)stats->misc.last_ack_time,
-		   last_ack_tms.tv_sec, last_ack_tms.tv_nsec,
+		   (u64) stats->misc.last_isr_time, &last_isr_tms,
+		   (u64) stats->misc.last_ack_time, &last_ack_tms,
 		   (u64) atomic64_read(&stats->misc.ack_isr_cnt),
 		   (u64) atomic64_read(&stats->misc.cmpl_isr_cnt),
 		   (u64) atomic64_read(&stats->misc.errnotify_isr_cnt),
diff --git a/drivers/scsi/snic/snic_trc.c b/drivers/scsi/snic/snic_trc.c
index c2e5ab7e976c..6bad1ea9a6a7 100644
--- a/drivers/scsi/snic/snic_trc.c
+++ b/drivers/scsi/snic/snic_trc.c
@@ -56,9 +56,8 @@ snic_fmt_trc_data(struct snic_trc_data *td, char *buf, int buf_sz)
 	jiffies_to_timespec64(td->ts, &tmspec);
 
 	len += snprintf(buf, buf_sz,
-			"%llu.%09lu %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\n",
-			tmspec.tv_sec,
-			tmspec.tv_nsec,
+			"%ptSp %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\n",
+			&tmspec,
 			td->fn,
 			td->hno,
 			td->tag,
-- 
2.50.1

