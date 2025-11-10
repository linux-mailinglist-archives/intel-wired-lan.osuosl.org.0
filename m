Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7611DC48C4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF07880C42;
	Mon, 10 Nov 2025 18:54:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1wDVMZ0gySjW; Mon, 10 Nov 2025 18:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3478080C76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762800897;
	bh=BmhmneHN1JPoXedmJW7NDfLTP9E1AX6jddhXfmE1LuI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1I4DVEApgytWQkJM+kLiImIRuQmN9o4n+jIXXAAs40wAOyjpTeu/ESzmt6L9YiVLZ
	 aO1dF+uQkiTAOiyb37u89mcRkEvp/DI6Cn2sj8TnDeVJbbkGvwbIWC2EJbNM4CBFkx
	 gYwO2JAKdjlqEZ8fL7is5xuFlclzHvnMWpxz7XemHAC168wzekVQadVPAquCzmZwxm
	 UYUn7Hjyz0ii8cK2VOGuOWgbQeSgLGFv7tV8fPJ3YL85oGaMNmaEweFp2t5xYpOT7U
	 aMezEnFB2DWrbxI8+xV/JWbfWc6wRQDvH4L0Gj4Aj2eBfM4biBcOl3bTQK86vHVMa7
	 hKtRAHFnuiGKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3478080C76;
	Mon, 10 Nov 2025 18:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF55AFA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:54:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE74C40680
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:54:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L13oPw8qkJiI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:54:54 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 10 Nov 2025 18:54:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 077884067A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 077884067A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 077884067A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:54:53 +0000 (UTC)
X-CSE-ConnectionGUID: 6gaLNZfUTsS8mAWtxLHpng==
X-CSE-MsgGUID: 4jYuWQ0XQYOdazDM6RemRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64769612"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64769612"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:47:48 -0800
X-CSE-ConnectionGUID: vLwpzXxWTlqMkVe0jU7QSA==
X-CSE-MsgGUID: vqdaBx3wRd2oCOgUpZsMtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189190196"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa009.fm.intel.com with ESMTP; 10 Nov 2025 10:47:39 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 0116B97; Mon, 10 Nov 2025 19:47:28 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>, Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Max Kellermann <max.kellermann@ionos.com>, Takashi Iwai <tiwai@suse.de>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-sound@vger.kernel.org
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
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>,
 Stefan Haberland <sth@linux.ibm.com>,
 Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>,
 Sesidhar Baddela <sebaddel@cisco.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Date: Mon, 10 Nov 2025 19:40:21 +0100
Message-ID: <20251110184727.666591-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762800894; x=1794336894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fCt0uZJtXQzZViSDNcneyMtrnn/y5yDZ8tsLO9qgG3A=;
 b=i3xZASAMmkFNMbcirsxck1v9GAS0v+x2YFKZEq5XV3QYMg7cpD6JSJYd
 9sqBJ/maP951rK/JxWlo+4XJt+5omJTtlRZjnNgG+x/C3Vncw+7HdeNz4
 5CRU66wd7R2rwuXapZzAwKFv2atAnDxnn1vguB2GvHy1wQkp6oeBX525a
 iQFoQZeYu7KiFZ9hDyYIG6lubEdKi1kDvN79/YRVAUwmcJ65Uae41P5OF
 T/gTVO5z1NFrDBcqdzfwLP3ShyQsMtnYU7iXWOPuHks2OJw9xQwY6d9jA
 uw0kU9PrqgxArUTaHyooM24QP+GAV587z+yxFIIm3IFmlDIOx7wxPNYYZ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i3xZASAM
Subject: [Intel-wired-lan] [PATCH v1 02/23] ALSA: seq: Switch to use %ptSp
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
 sound/core/seq/seq_queue.c | 2 +-
 sound/core/seq/seq_timer.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/sound/core/seq/seq_queue.c b/sound/core/seq/seq_queue.c
index f5c0e401c8ae..f6e86cbf38bc 100644
--- a/sound/core/seq/seq_queue.c
+++ b/sound/core/seq/seq_queue.c
@@ -699,7 +699,7 @@ void snd_seq_info_queues_read(struct snd_info_entry *entry,
 		snd_iprintf(buffer, "current tempo      : %d\n", tmr->tempo);
 		snd_iprintf(buffer, "tempo base         : %d ns\n", tmr->tempo_base);
 		snd_iprintf(buffer, "current BPM        : %d\n", bpm);
-		snd_iprintf(buffer, "current time       : %d.%09d s\n", tmr->cur_time.tv_sec, tmr->cur_time.tv_nsec);
+		snd_iprintf(buffer, "current time       : %ptSp s\n", &tmr->cur_time);
 		snd_iprintf(buffer, "current tick       : %d\n", tmr->tick.cur_tick);
 		snd_iprintf(buffer, "\n");
 	}
diff --git a/sound/core/seq/seq_timer.c b/sound/core/seq/seq_timer.c
index 29b018a212fc..06074d822bae 100644
--- a/sound/core/seq/seq_timer.c
+++ b/sound/core/seq/seq_timer.c
@@ -442,7 +442,7 @@ void snd_seq_info_timer_read(struct snd_info_entry *entry,
 	int idx;
 	struct snd_seq_timer *tmr;
 	struct snd_timer_instance *ti;
-	unsigned long resolution;
+	struct timespec64 resolution;
 	
 	for (idx = 0; idx < SNDRV_SEQ_MAX_QUEUES; idx++) {
 		struct snd_seq_queue *q __free(snd_seq_queue) = queueptr(idx);
@@ -457,8 +457,8 @@ void snd_seq_info_timer_read(struct snd_info_entry *entry,
 			if (!ti)
 				break;
 			snd_iprintf(buffer, "Timer for queue %i : %s\n", q->queue, ti->timer->name);
-			resolution = snd_timer_resolution(ti) * tmr->ticks;
-			snd_iprintf(buffer, "  Period time : %lu.%09lu\n", resolution / 1000000000, resolution % 1000000000);
+			resolution = ns_to_timespec64(snd_timer_resolution(ti) * tmr->ticks);
+			snd_iprintf(buffer, "  Period time : %ptSp\n", &resolution);
 			snd_iprintf(buffer, "  Skew : %u / %u\n", tmr->skew, tmr->skew_base);
 		}
  	}
-- 
2.50.1

