Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71143C4DB04
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 13:28:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 193EC60B9F;
	Tue, 11 Nov 2025 12:28:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4XFnM4wWhiGP; Tue, 11 Nov 2025 12:28:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BDDC60BA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762864089;
	bh=fB3vSFUuDz+Q3AKsurTBqbREB7p9/3PjSYMX28sunTY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ePkYIvh1LkiFN+MrlEQDy7N4pcywW2fXgp35a2Hhy5In2Jegdq8VIiNb1ps3Fh6XC
	 +1oyF5fAfxFKgrbNCJQSDdMNOROysE9ctg0LZnHMpSZFGVk682ko+3h6dC98JKefka
	 lHQ4FKcjT80bERpiN57IvyDiJLmVPDyd/sEZMVuua+J+2gSCcl7isSMRK8UIUDil5R
	 8a3+MfnlD6ev75j2UOokd8XGj3CoXz1fpqSd7p8Jjwwx03vLQOl6RplPJzcoDcc60N
	 dkD3Fmn3IoVOU99cPz3LJL9bxHy4Tbm9m806Oq6SVMzZrfTg/n3o5homiu+v4dgcDk
	 DGJAi9DCStsDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BDDC60BA1;
	Tue, 11 Nov 2025 12:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AE7B25D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A92CA4084C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIoN5CdOU4tQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 12:28:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9A4B040813
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A4B040813
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A4B040813
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:06 +0000 (UTC)
X-CSE-ConnectionGUID: 3C12BNJ5TJC6F39bl42xPA==
X-CSE-MsgGUID: KyaFcvl5QIuDCwJt7VncxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75607049"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="75607049"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:28:06 -0800
X-CSE-ConnectionGUID: YHDSoTq9Rr+aZdtO+8m67w==
X-CSE-MsgGUID: KCI6LE1SS0+Hf144PvkzVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188592922"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa007.fm.intel.com with ESMTP; 11 Nov 2025 04:27:58 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 30E48A4; Tue, 11 Nov 2025 13:27:38 +0100 (CET)
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
Date: Tue, 11 Nov 2025 13:20:14 +0100
Message-ID: <20251111122735.880607-15-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864087; x=1794400087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e8WeGxOtZtcbZrMvs9n+wJZzGptxfxh9oxsAvrP2sMQ=;
 b=HGtBRhl50OYnMLsFdXrt0Am4r5ZMvIlPxXRLG29ydoGcB01doNI8XlzG
 rKTttwAWL+r9bgmfPsKvvzqKqLiqyt9ysEOq8f/bGzwH1JCOyOtSw8d3C
 dsMxOgDScSsxGJdol+tjzLd2kNzv5u+mm4xjinMJEq9aUN17xpv+DCqMK
 A4YlR7/aAyvMBU6Rrq0qyRbhKEzuggPlhN7ap1vk9GxFAaEt1+CjEeaqQ
 v7UvAzmkD0HRUOrJu3FJFMsALU/yEMkz0IFSdtD2JlCE8bvqzktwmPo0S
 dZdhvKEVICxOfG6S+DB4haurGvJq/typyZuWV4chViyzUClUD712mlAFc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HGtBRhl5
Subject: [Intel-wired-lan] [PATCH v2 14/21] net: dsa: sja1105: Switch to use
 %ptSp
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
 drivers/net/dsa/sja1105/sja1105_tas.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/dsa/sja1105/sja1105_tas.c b/drivers/net/dsa/sja1105/sja1105_tas.c
index d7818710bc02..d5949d2c3e71 100644
--- a/drivers/net/dsa/sja1105/sja1105_tas.c
+++ b/drivers/net/dsa/sja1105/sja1105_tas.c
@@ -775,9 +775,8 @@ static void sja1105_tas_state_machine(struct work_struct *work)
 		base_time_ts = ns_to_timespec64(base_time);
 		now_ts = ns_to_timespec64(now);
 
-		dev_dbg(ds->dev, "OPER base time %lld.%09ld (now %lld.%09ld)\n",
-			base_time_ts.tv_sec, base_time_ts.tv_nsec,
-			now_ts.tv_sec, now_ts.tv_nsec);
+		dev_dbg(ds->dev, "OPER base time %ptSp (now %ptSp)\n",
+			&base_time_ts, &now_ts);
 
 		break;
 
@@ -798,8 +797,7 @@ static void sja1105_tas_state_machine(struct work_struct *work)
 		if (now < tas_data->oper_base_time) {
 			/* TAS has not started yet */
 			diff = ns_to_timespec64(tas_data->oper_base_time - now);
-			dev_dbg(ds->dev, "time to start: [%lld.%09ld]",
-				diff.tv_sec, diff.tv_nsec);
+			dev_dbg(ds->dev, "time to start: [%ptSp]", &diff);
 			break;
 		}
 
-- 
2.50.1

