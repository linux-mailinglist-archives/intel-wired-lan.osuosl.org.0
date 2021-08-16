Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3393EDAA9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 18:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45783834F4;
	Mon, 16 Aug 2021 16:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JCtYmE2dioqV; Mon, 16 Aug 2021 16:17:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4C04834DB;
	Mon, 16 Aug 2021 16:17:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 097D81BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC13B60625
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HH7AXDHeo8jc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 16:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6227360785
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 16:17:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="214041194"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="214041194"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 09:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; d="scan'208";a="487523947"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 09:17:39 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org
Date: Mon, 16 Aug 2021 18:07:12 +0200
Message-Id: <20210816160717.31285-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC net-next 2/7] selftests/ptp: Add usage of
 PTP_DPLL_GETSTATE ioctl in testptp
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
Cc: cong.wang@bytedance.com, arnd@arndb.de, gustavoars@kernel.org,
 richardcochran@gmail.com, nikolay@nvidia.com, colin.king@canonical.com,
 kuba@kernel.org, shuah@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow get Digital Phase Locked Loop state of ptp enabled device
through ptp related ioctl PTP_DPLL_GETSTATE.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 tools/testing/selftests/ptp/testptp.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/ptp/testptp.c b/tools/testing/selftests/ptp/testptp.c
index f7911aaeb007..67de96cf0962 100644
--- a/tools/testing/selftests/ptp/testptp.c
+++ b/tools/testing/selftests/ptp/testptp.c
@@ -141,6 +141,7 @@ static void usage(char *progname)
 		" -S         set the system time from the ptp clock time\n"
 		" -t val     shift the ptp clock time by 'val' seconds\n"
 		" -T val     set the ptp clock time to 'val' seconds\n"
+		" -u         get list of available DPLLs and their state values"
 		" -z         test combinations of rising/falling external time stamp flags\n",
 		progname);
 }
@@ -156,6 +157,7 @@ int main(int argc, char *argv[])
 	struct timex tx;
 	struct ptp_clock_time *pct;
 	struct ptp_sys_offset *sysoff;
+	struct ptp_dpll_state *ds;
 
 	char *progname;
 	unsigned int i;
@@ -177,6 +179,7 @@ int main(int argc, char *argv[])
 	int pps = -1;
 	int seconds = 0;
 	int settime = 0;
+	int dpll_state = 0;
 
 	int64_t t1, t2, tp;
 	int64_t interval, offset;
@@ -186,7 +189,7 @@ int main(int argc, char *argv[])
 
 	progname = strrchr(argv[0], '/');
 	progname = progname ? 1+progname : argv[0];
-	while (EOF != (c = getopt(argc, argv, "cd:e:f:ghH:i:k:lL:p:P:sSt:T:w:z"))) {
+	while (EOF != (c = getopt(argc, argv, "cd:e:f:ghH:i:k:lL:p:P:sSt:T:uw:z"))) {
 		switch (c) {
 		case 'c':
 			capabilities = 1;
@@ -242,6 +245,9 @@ int main(int argc, char *argv[])
 			settime = 3;
 			seconds = atoi(optarg);
 			break;
+		case 'u':
+			dpll_state = 1;
+			break;
 		case 'w':
 			pulsewidth = atoi(optarg);
 			break;
@@ -506,6 +512,25 @@ int main(int argc, char *argv[])
 		free(sysoff);
 	}
 
+	if (dpll_state) {
+		ds = calloc(1, sizeof(*ds));
+		if (!ds) {
+			perror("calloc");
+			return -1;
+		}
+
+		if (ioctl(fd, PTP_DPLL_GETSTATE, ds))
+			perror("PTP_DPLL_GETSTATE");
+		else
+			puts("get dpll state request okay");
+
+		printf("dpll state:\n");
+		for (i = 0; i < ds->dpll_num; i++)
+			printf("dpll id:%i state:%u\n", i, ds->state[i]);
+
+		free(ds);
+	}
+
 	close(fd);
 	return 0;
 }
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
