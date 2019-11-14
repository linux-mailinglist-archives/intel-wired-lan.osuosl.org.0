Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E05B4FCE16
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EB5C204C8;
	Thu, 14 Nov 2019 18:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0a-EvJWYcVDm; Thu, 14 Nov 2019 18:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5889227AD;
	Thu, 14 Nov 2019 18:45:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7142C1BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68E6E20520
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xJlK9FIKVens for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A0BA6204F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:28 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id s10so3036536plp.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AHCtOmZ2GTslOfW4Um0mVrFAtc3tK3f23TYhKGTJCmE=;
 b=Vl9798Ap678R+AQutazdpde2HDDM5L2YwL4kGCKMSBGWGHRI0eoXrWxYgQ1CZ6wxYB
 hfVmR4cxyH+y+fPcFGomu8lp7zViUi+rBAS+XCnqUamo9I3XRDPL3L7hDIoARcCk4EYO
 cjO3NOA0pq6TgYzRDnS4azdKZ9+CT910y1NHUDMOm+9batpVk3oqVEhzMDsN81+GvMu5
 CiZ1isZEA5aqqfIqs9h32DN0qXBmXg8JOFD+vdHeRFShpupiTJoTuzOov7jaMVVcf3Cz
 HJlUzgZxk2jEO1/Ti1WHlqXzJjVjZceqfbQIv7m/OvCa4947w7l3eldm27WjpoqNL4E1
 oJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AHCtOmZ2GTslOfW4Um0mVrFAtc3tK3f23TYhKGTJCmE=;
 b=R2nCHJ9hwblFz8ydYi88ZuYrbn6U7DQxTpEvBGJL6rgHcy4YeQ5xUK/72r5h82rcFo
 0B84i+wBY2mZO3Ymni3xhd8yyLYW4bRP6lWpkjIyUHWow9qZRwFa8KYa/v8aqWXL8Knz
 g8Ozn8zbeVjGX2LJI0jIFuqr1IPbcfYdWhHo1R2r9ooIolC2VZEbx6ZkC3q9Zz0v+R4K
 8hsaDvytqMvx6p8Mc4Ym7wahfah7JsTWQYcnJOXgdDlnyJ6tnGEXtkdWUqksqzAcc9y5
 EyPRT240nQTZN2DQOdOLOkgPfuw3+tjVUVkR40nZ9q0SxDQbdVtk4RXBAXVfS+RUbojx
 HdAw==
X-Gm-Message-State: APjAAAWlPN1HjEpu+M00Pav/Zic3/MELpoEsQfonOJcyNaCy6CXTJxEM
 locN7P1YuMmWyu2QRiBOiVM=
X-Google-Smtp-Source: APXvYqy3ALZfMdDzUs65O3O63qtslh17W7iZe49ML6Rpvfk3n1M3R4zU5I9Yl97hQoXKJEHZuOSt4Q==
X-Received: by 2002:a17:902:b693:: with SMTP id
 c19mr10960511pls.89.1573757128105; 
 Thu, 14 Nov 2019 10:45:28 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:27 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:07 -0800
Message-Id: <20191114184507.18937-14-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 13/13] ptp: Extend the test program to
 check the external time stamp flags.
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Because each driver and hardware has different capabilities, the test
cannot provide a simple pass/fail result, but it can at least show what
combinations of flags are supported.

Signed-off-by: Richard Cochran <richardcochran@gmail.com>
---
 tools/testing/selftests/ptp/testptp.c | 53 ++++++++++++++++++++++++++-
 1 file changed, 51 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/ptp/testptp.c b/tools/testing/selftests/ptp/testptp.c
index bd4a7247b44f..c0dd10257df5 100644
--- a/tools/testing/selftests/ptp/testptp.c
+++ b/tools/testing/selftests/ptp/testptp.c
@@ -44,6 +44,46 @@ static int clock_adjtime(clockid_t id, struct timex *tx)
 }
 #endif
 
+static void show_flag_test(int rq_index, unsigned int flags, int err)
+{
+	printf("PTP_EXTTS_REQUEST%c flags 0x%08x : (%d) %s\n",
+	       rq_index ? '1' + rq_index : ' ',
+	       flags, err, strerror(errno));
+	/* sigh, uClibc ... */
+	errno = 0;
+}
+
+static void do_flag_test(int fd, unsigned int index)
+{
+	struct ptp_extts_request extts_request;
+	unsigned long request[2] = {
+		PTP_EXTTS_REQUEST,
+		PTP_EXTTS_REQUEST2,
+	};
+	unsigned int enable_flags[5] = {
+		PTP_ENABLE_FEATURE,
+		PTP_ENABLE_FEATURE | PTP_RISING_EDGE,
+		PTP_ENABLE_FEATURE | PTP_FALLING_EDGE,
+		PTP_ENABLE_FEATURE | PTP_RISING_EDGE | PTP_FALLING_EDGE,
+		PTP_ENABLE_FEATURE | (PTP_EXTTS_VALID_FLAGS + 1),
+	};
+	int err, i, j;
+
+	memset(&extts_request, 0, sizeof(extts_request));
+	extts_request.index = index;
+
+	for (i = 0; i < 2; i++) {
+		for (j = 0; j < 5; j++) {
+			extts_request.flags = enable_flags[j];
+			err = ioctl(fd, request[i], &extts_request);
+			show_flag_test(i, extts_request.flags, err);
+
+			extts_request.flags = 0;
+			err = ioctl(fd, request[i], &extts_request);
+		}
+	}
+}
+
 static clockid_t get_clockid(int fd)
 {
 #define CLOCKFD 3
@@ -96,7 +136,8 @@ static void usage(char *progname)
 		" -s         set the ptp clock time from the system time\n"
 		" -S         set the system time from the ptp clock time\n"
 		" -t val     shift the ptp clock time by 'val' seconds\n"
-		" -T val     set the ptp clock time to 'val' seconds\n",
+		" -T val     set the ptp clock time to 'val' seconds\n"
+		" -z         test combinations of rising/falling external time stamp flags\n",
 		progname);
 }
 
@@ -122,6 +163,7 @@ int main(int argc, char *argv[])
 	int adjtime = 0;
 	int capabilities = 0;
 	int extts = 0;
+	int flagtest = 0;
 	int gettime = 0;
 	int index = 0;
 	int list_pins = 0;
@@ -138,7 +180,7 @@ int main(int argc, char *argv[])
 
 	progname = strrchr(argv[0], '/');
 	progname = progname ? 1+progname : argv[0];
-	while (EOF != (c = getopt(argc, argv, "cd:e:f:ghi:k:lL:p:P:sSt:T:v"))) {
+	while (EOF != (c = getopt(argc, argv, "cd:e:f:ghi:k:lL:p:P:sSt:T:z"))) {
 		switch (c) {
 		case 'c':
 			capabilities = 1;
@@ -191,6 +233,9 @@ int main(int argc, char *argv[])
 			settime = 3;
 			seconds = atoi(optarg);
 			break;
+		case 'z':
+			flagtest = 1;
+			break;
 		case 'h':
 			usage(progname);
 			return 0;
@@ -322,6 +367,10 @@ int main(int argc, char *argv[])
 		}
 	}
 
+	if (flagtest) {
+		do_flag_test(fd, index);
+	}
+
 	if (list_pins) {
 		int n_pins = 0;
 		if (ioctl(fd, PTP_CLOCK_GETCAPS, &caps)) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
