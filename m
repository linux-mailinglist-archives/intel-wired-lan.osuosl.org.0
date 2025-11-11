Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E3EC4DB49
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 13:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 206C160A7C;
	Tue, 11 Nov 2025 12:28:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YTUV8RXnhgNT; Tue, 11 Nov 2025 12:28:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CE7E60BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762864098;
	bh=ibdDRswrgU7gTmNNUXMTJe+L1TaVz4CeMhOvoKC6jfc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7+bTg6y02MAfEIGxji9urKvTOsIkluAekzM0J81MSMwt7DO0Xt23TPGBC6mUxLy+d
	 QxI5GjTxRreZPdqgvEHWR2HBD5ixHsuFAy1PdtmzoAPJhaT1uR06OuUN2VkVa7c1pL
	 6UyiGzl7vNYzkdJ2EJ2XoTEsF3FnXHsXdz0ZMo7WwGuGTMuUwS8XPWoT24k18D/I7/
	 Z6GMXTFkIn2fLo7bSn611DtFVCIa79eM2CNXUjrXduDzCRx4iks+BvFYsIw80PYvVb
	 4elRJrtj75G2hOdrVF7g2Ear4i4X+VYo43kWke9FKbtdIinsGAamzdWOUcY5czybyc
	 ZHyfBtRMVRfmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CE7E60BB2;
	Tue, 11 Nov 2025 12:28:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 49A85FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9A53407C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4v0p218viMay for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 12:28:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A7C5C407C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7C5C407C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7C5C407C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:06 +0000 (UTC)
X-CSE-ConnectionGUID: F2kn8pmeTJWIzKxp1viGPA==
X-CSE-MsgGUID: shRbMvI4RXShANWVQmWT1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82553129"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="82553129"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:28:05 -0800
X-CSE-ConnectionGUID: 5HPrSPquTkWxhLAPOYOnLg==
X-CSE-MsgGUID: /AbwGWmbRHOIvg8v9CpXQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="212343320"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa002.fm.intel.com with ESMTP; 11 Nov 2025 04:27:57 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 2A97AA3; Tue, 11 Nov 2025 13:27:38 +0100 (CET)
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
Date: Tue, 11 Nov 2025 13:20:13 +0100
Message-ID: <20251111122735.880607-14-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864086; x=1794400086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VVg62TqQIJ7Evijsdq8qdbXdEeiYTcr6am16uCHXNkE=;
 b=Tp91VJcHF/068pOeNYa7BJrrGPy2Fv5OOfBSDSzH2pKbhHcaPf8iO/nw
 Yji/lvOfp6TNImEORCGXb/Y6yIM/01AXI4aXP4jeCLv8QozPSndxOrEBU
 tx5IMkYCIh8zSzuZXtcNh0MPkvDoPLREH7aS9ASnDKypwptJJGJlP51HM
 sPGzUfE2E11NsnY3C/TqTMGSPB17DlTz+C6zqUp4GMzPmNN3gg3BeXqHs
 V6cz2UVKGg76kHpJCCl0Rn4cACJ1L7Fp08dPATVDq4kUaGcC5anBE+OFI
 0y4Veb7vp9U2pIIpi1xKXNMJNxQyXCMY5A0CKzE5BPm+9SxhWzLowAIHk
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tp91VJcH
Subject: [Intel-wired-lan] [PATCH v2 13/21] mmc: mmc_test: Switch to use
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
 drivers/mmc/core/mmc_test.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/mmc/core/mmc_test.c b/drivers/mmc/core/mmc_test.c
index a74089df4547..01d1e62c2ce7 100644
--- a/drivers/mmc/core/mmc_test.c
+++ b/drivers/mmc/core/mmc_test.c
@@ -586,14 +586,11 @@ static void mmc_test_print_avg_rate(struct mmc_test_card *test, uint64_t bytes,
 	rate = mmc_test_rate(tot, &ts);
 	iops = mmc_test_rate(count * 100, &ts); /* I/O ops per sec x 100 */
 
-	pr_info("%s: Transfer of %u x %u sectors (%u x %u%s KiB) took "
-			 "%llu.%09u seconds (%u kB/s, %u KiB/s, "
-			 "%u.%02u IOPS, sg_len %d)\n",
-			 mmc_hostname(test->card->host), count, sectors, count,
-			 sectors >> 1, (sectors & 1 ? ".5" : ""),
-			 (u64)ts.tv_sec, (u32)ts.tv_nsec,
-			 rate / 1000, rate / 1024, iops / 100, iops % 100,
-			 test->area.sg_len);
+	pr_info("%s: Transfer of %u x %u sectors (%u x %u%s KiB) took %ptSp seconds (%u kB/s, %u KiB/s, %u.%02u IOPS, sg_len %d)\n",
+		mmc_hostname(test->card->host), count, sectors, count,
+		sectors >> 1, (sectors & 1 ? ".5" : ""), &ts,
+		rate / 1000, rate / 1024, iops / 100, iops % 100,
+		test->area.sg_len);
 
 	mmc_test_save_transfer_result(test, count, sectors, ts, rate, iops);
 }
@@ -3074,10 +3071,9 @@ static int mtf_test_show(struct seq_file *sf, void *data)
 		seq_printf(sf, "Test %d: %d\n", gr->testcase + 1, gr->result);
 
 		list_for_each_entry(tr, &gr->tr_lst, link) {
-			seq_printf(sf, "%u %d %llu.%09u %u %u.%02u\n",
-				tr->count, tr->sectors,
-				(u64)tr->ts.tv_sec, (u32)tr->ts.tv_nsec,
-				tr->rate, tr->iops / 100, tr->iops % 100);
+			seq_printf(sf, "%u %d %ptSp %u %u.%02u\n",
+				   tr->count, tr->sectors, &tr->ts, tr->rate,
+				   tr->iops / 100, tr->iops % 100);
 		}
 	}
 
-- 
2.50.1

