Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FCFC48A18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:47:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF334404D1;
	Mon, 10 Nov 2025 18:47:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YhoVdSlmi7dX; Mon, 10 Nov 2025 18:47:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B209404F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762800463;
	bh=3zOvIfKnKvUP8qi8Z/y9jterh7JNN1WDHTSs0hx1am8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=beRlN8quzol4s+i18aWYzp03LynFd4IJARwqWSGWNKgfDGtqJus+fDAwKWLJ/7skn
	 h0ChQ8zWMWQFEF0C9SFhmpSh+G5Z/nAru9ks/VnLZhgzgKrmLVo54p26Jo/Bx45q3C
	 4pYRWi/ncgnFvtaJWRjQ3yCaNwl+I9E720I4NJ+0jK+EwT1xMtFj+0d7NR/ud63TkY
	 oBCEgUZ29EnfXiNz+4RreJPRKPftJ/29JW6dd6rjdTG1y6JG6B0BviblCtyy2a0Nup
	 Ke54sRwN0jXC8SsI9sR1segil7w74wTnz+rxY0bXjclml8nOyU5EJWa3urzdCNcWBI
	 /X05J7lRtF5Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B209404F5;
	Mon, 10 Nov 2025 18:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 495981CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C4E58174D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:47:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TWzpYpziZf3P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:47:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6575881750
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6575881750
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6575881750
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:47:40 +0000 (UTC)
X-CSE-ConnectionGUID: +OnfV5k4TdSeTATWVEZVKw==
X-CSE-MsgGUID: 1R9B2qa/SXerM6B5J4TuDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75543277"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="75543277"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:47:38 -0800
X-CSE-ConnectionGUID: tjBTfSXPSK+R85GBxnBx7Q==
X-CSE-MsgGUID: icFeQ/OWQnuNNObR45nQtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193749559"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa004.fm.intel.com with ESMTP; 10 Nov 2025 10:47:29 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id EEA2B96; Mon, 10 Nov 2025 19:47:28 +0100 (CET)
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
Date: Mon, 10 Nov 2025 19:40:20 +0100
Message-ID: <20251110184727.666591-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
References: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762800461; x=1794336461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kew62E3E6IXuZlcG7gu+P9XzNY1zD9FK9bnTsI2boF4=;
 b=jua9IKKaKMlHqRPROGDdcBME0ORSZOgOe7zwo50qb7xKEUW0h9cfsv/b
 KmPkm2Rf92MuaEKg+W8xm99qbAdbUAY3IXY8O/slTa1f/JI92UG6ShIAV
 9a2KMXw2lzliQo6lBL9eP8w1E7m+vnggca/XxDEHAswYolM3faQ3zr6q8
 wAXPkcmozaSRbaDZuQHsTIBee2QG2IUYEPOA3kO1NvF107rxDX4HLY9/Q
 58lriwyXHPV517rgaVAFYqCxI2hLiXcWtSYLAFXUhQIoRKSH+3bfZxj6B
 tCCOG99LufmLlztRo501RNfnQSQJCmFsQIl+e262oaw3ewApNvqHZffOg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jua9IKKa
Subject: [Intel-wired-lan] [PATCH v1 01/23] lib/vsprintf: Add specifier for
 printing struct timespec64
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

A handful drivers want to print a content of the struct timespec64
in a format of %lld:%09ld. In order to make their lives easier, add
the respecting specifier directly to the printf() implementation.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 Documentation/core-api/printk-formats.rst | 11 ++++++++--
 lib/tests/printf_kunit.c                  |  4 ++++
 lib/vsprintf.c                            | 25 +++++++++++++++++++++++
 3 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
index 7f2f11b48286..6fdb417f5140 100644
--- a/Documentation/core-api/printk-formats.rst
+++ b/Documentation/core-api/printk-formats.rst
@@ -547,11 +547,13 @@ Time and date
 	%pt[RT]s		YYYY-mm-dd HH:MM:SS
 	%pt[RT]d		YYYY-mm-dd
 	%pt[RT]t		HH:MM:SS
-	%pt[RT][dt][r][s]
+	%ptSp			<seconds>.<nanoseconds>
+	%pt[RST][dt][r][s]
 
 For printing date and time as represented by::
 
-	R  struct rtc_time structure
+	R  content of struct rtc_time
+	S  content of struct timespec64
 	T  time64_t type
 
 in human readable format.
@@ -563,6 +565,11 @@ The %pt[RT]s (space) will override ISO 8601 separator by using ' ' (space)
 instead of 'T' (Capital T) between date and time. It won't have any effect
 when date or time is omitted.
 
+The %ptSp is equivalent to %lld.%09ld for the content of the struct timespec64.
+When the other specifiers given, it becomes the respective equivalent of
+%ptT[dt][r][s].%09ld. In other words, the seconds are being printed in the
+human readable format followed by dot and nanoseconds.
+
 Passed by reference.
 
 struct clk
diff --git a/lib/tests/printf_kunit.c b/lib/tests/printf_kunit.c
index bc54cca2d7a6..7617e5b8b02c 100644
--- a/lib/tests/printf_kunit.c
+++ b/lib/tests/printf_kunit.c
@@ -504,6 +504,7 @@ time_and_date(struct kunit *kunittest)
 	};
 	/* 2019-01-04T15:32:23 */
 	time64_t t = 1546615943;
+	struct timespec64 ts = { .tv_sec = t, .tv_nsec = 11235813 };
 
 	test("(%pt?)", "%pt", &tm);
 	test("2018-11-26T05:35:43", "%ptR", &tm);
@@ -522,6 +523,9 @@ time_and_date(struct kunit *kunittest)
 	test("0119-00-04 15:32:23", "%ptTsr", &t);
 	test("15:32:23|2019-01-04", "%ptTts|%ptTds", &t, &t);
 	test("15:32:23|0119-00-04", "%ptTtrs|%ptTdrs", &t, &t);
+
+	test("2019-01-04T15:32:23.011235813", "%ptS", &ts);
+	test("1546615943.011235813", "%ptSp", &ts);
 }
 
 static void
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 3f99834fd788..f29eb6368891 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -1989,6 +1989,28 @@ char *time64_str(char *buf, char *end, const time64_t time,
 	return rtc_str(buf, end, &rtc_time, spec, fmt);
 }
 
+static noinline_for_stack
+char *timespec64_str(char *buf, char *end, const struct timespec64 *ts,
+                     struct printf_spec spec, const char *fmt)
+{
+	static const struct printf_spec default_dec09_spec = {
+		.base = 10,
+		.field_width = 9,
+		.precision = -1,
+		.flags = ZEROPAD,
+	};
+
+	if (fmt[2] == 'p')
+		buf = number(buf, end, ts->tv_sec, default_dec_spec);
+	else
+		buf = time64_str(buf, end, ts->tv_sec, spec, fmt);
+	if (buf < end)
+		*buf = '.';
+	buf++;
+
+	return number(buf, end, ts->tv_nsec, default_dec09_spec);
+}
+
 static noinline_for_stack
 char *time_and_date(char *buf, char *end, void *ptr, struct printf_spec spec,
 		    const char *fmt)
@@ -1999,6 +2021,8 @@ char *time_and_date(char *buf, char *end, void *ptr, struct printf_spec spec,
 	switch (fmt[1]) {
 	case 'R':
 		return rtc_str(buf, end, (const struct rtc_time *)ptr, spec, fmt);
+	case 'S':
+		return timespec64_str(buf, end, (const struct timespec64 *)ptr, spec, fmt);
 	case 'T':
 		return time64_str(buf, end, *(const time64_t *)ptr, spec, fmt);
 	default:
@@ -2464,6 +2488,7 @@ early_param("no_hash_pointers", no_hash_pointers_enable);
  * - 'g' For block_device name (gendisk + partition number)
  * - 't[RT][dt][r][s]' For time and date as represented by:
  *      R    struct rtc_time
+ *      S    struct timespec64
  *      T    time64_t
  * - 'C' For a clock, it prints the name (Common Clock Framework) or address
  *       (legacy clock framework) of the clock
-- 
2.50.1

