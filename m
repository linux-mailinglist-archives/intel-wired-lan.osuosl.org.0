Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 651F5C4DB61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Nov 2025 13:28:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44C1B81F06;
	Tue, 11 Nov 2025 12:28:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E0WvulwQXQAA; Tue, 11 Nov 2025 12:28:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6C5481EC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762864099;
	bh=lVKzr3r/9giSHGm0iyOBBvE2FatL5hw5+b6xKRNxkwI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=215xTbU+QjxvigFMzmI5OwRJ6kQng5F+XBNGy++55/xzw2NFAbHYp9wRZL/Utb1yF
	 LQXCIyup05dCbuEi5NFvkGloimSfqPUKYG3XcBy9gf1xDmPFL5K4bTYw/V2SrHs708
	 yP6BLE0AYCuuVXwEZ3BeX4KDb8RBDz8q0MkrGKl5wxA8V60XEc4o3HRCGVrufq5/FU
	 8q10u5Pl3TDa+uBWyBSBicuB/NLVJem0VTx6CuepOZzVY18+/wd5VOLS2b0TTmcumW
	 uILZdYjlvS2Ay5tjKQYv0cDORTyr9iIn7EduDovCIemJYFU8Z/oiSKpgaF10D0iUqJ
	 17EyTeFl2fKeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6C5481EC0;
	Tue, 11 Nov 2025 12:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B5F6825D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8277F4085B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UuASScGbPgom for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Nov 2025 12:28:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8C604085D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8C604085D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8C604085D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Nov 2025 12:28:13 +0000 (UTC)
X-CSE-ConnectionGUID: s81T8+PrQF2yp4dBzbFlQg==
X-CSE-MsgGUID: UHKcDsf2SUmuknBRKBmkTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75607215"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="75607215"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:28:13 -0800
X-CSE-ConnectionGUID: tMUh47YlR0iztmLUL7ZOeg==
X-CSE-MsgGUID: n8CanOcvRy2xvoMOm6Z2iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188592937"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa007.fm.intel.com with ESMTP; 11 Nov 2025 04:28:05 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 5E57DAB; Tue, 11 Nov 2025 13:27:38 +0100 (CET)
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
Date: Tue, 11 Nov 2025 13:20:21 +0100
Message-ID: <20251111122735.880607-22-andriy.shevchenko@linux.intel.com>
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
 bh=OtFs4nYXEH1ThWKykhpKfwgYG7osOn2qi/Z49bIrWUw=;
 b=W4JbW7BwWOoE3uz4gpV2Xfh8v8wb1gR9/MMLgonQkGipvKsM093YSJx4
 cBLcsayrtZRHm3y1q/D+u8wQAIxmwwMJ4I5qHdOuyyc4W5c6b+RjJps7a
 nR800e3EVIiA4FRF7QPtLX+L0nrWt/Kpe+tC04czDa3W3zbCBIfbZW4hI
 pdjK0iHJ+ANtChasiQ2zRuYzoY3YiKyPC5aB2HxFKEg6KO119B35p/RJO
 YSED9Cat+ZsoDkZjcIqBraGaQyO7or7ifNkQPWnS8ickHL1TV+evDUg23
 R+b/VwTa+Lj6YsfXzd65G+B0mFrvdocak7rqA0HyCGYPLqEp+28Y+ITKP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W4JbW7Bw
Subject: [Intel-wired-lan] [PATCH v2 21/21] tracing: Switch to use %ptSp
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

Acked-by: Steven Rostedt (Google) <rostedt@goodmis.org>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 kernel/trace/trace_output.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/trace/trace_output.c b/kernel/trace/trace_output.c
index ebbab3e9622b..cc2d3306bb60 100644
--- a/kernel/trace/trace_output.c
+++ b/kernel/trace/trace_output.c
@@ -1490,12 +1490,12 @@ trace_hwlat_print(struct trace_iterator *iter, int flags,
 
 	trace_assign_type(field, entry);
 
-	trace_seq_printf(s, "#%-5u inner/outer(us): %4llu/%-5llu ts:%lld.%09ld count:%d",
+	trace_seq_printf(s, "#%-5u inner/outer(us): %4llu/%-5llu ts:%ptSp count:%d",
 			 field->seqnum,
 			 field->duration,
 			 field->outer_duration,
-			 (long long)field->timestamp.tv_sec,
-			 field->timestamp.tv_nsec, field->count);
+			 &field->timestamp,
+			 field->count);
 
 	if (field->nmi_count) {
 		/*
-- 
2.50.1

