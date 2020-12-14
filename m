Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB242DA08F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 20:34:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D7938730F;
	Mon, 14 Dec 2020 19:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JjQnaC5CSXEQ; Mon, 14 Dec 2020 19:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E184D8733B;
	Mon, 14 Dec 2020 19:34:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0681BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88212868E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LqnyFptEGFy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 19:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77510865CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 19:34:06 +0000 (UTC)
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEJWbNP014411
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=NR4be8499nTiqofcJ/u7O//eKb7BcXFXWk/GLtS08VM=;
 b=ptDAtV2JL7w8/tILNAvsL1cTN43N8JHaNE1+G6oI3Wzc8ot4+N/QalinGsYf7WzGlRcR
 jGizKKZ7m+lkd9gwV2yucRGk637D+zlC9ArJfc4Awbszr0ADxfHun1wULU1UsNj7eChc
 KupobuCC4ki4oEGeRF168mhto3UY5cLQ3XTtDOFn1OvAoqivDt7RZWIfoCySJD2s109N
 /UvwF8RKfrgri8ti6n4sC1rJMGyQTQArnEgDdo/lT+g0fvCn+5ofblCMEgKVHUhFQp5w
 rYwhlCOS69iFDxKYR6tlrePedJ2TkCOH6vHOIXyv+x6f+4ouLrq+SmY2reb3QZjYEuBr Yw== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 35ctrqxja2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:05 -0500
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 0BEJUJcs002538
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:05 -0500
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 35edpk0mdq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 14:34:04 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,420,1599541200"; d="scan'208";a="1020795053"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 13:29:33 -0600
Message-Id: <20201214192935.895174-3-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214192935.895174-1-mario.limonciello@dell.com>
References: <20201214192935.895174-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-14_10:2020-12-11,
 2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 adultscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140129
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012140129
Subject: [Intel-wired-lan] [PATCH v5 2/4] e1000e: bump up timeout to wait
 when ME un-configures ULP mode
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
Cc: Hans de Goede <hdegoede@redhat.com>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Mario Limonciello <mario.limonciello@dell.com>,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com, Yijun.Shen@dell.com,
 Mark Pearson <markpearson@lenovo.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Per guidance from Intel ethernet architecture team, it may take
up to 1 second for unconfiguring ULP mode.

However in practice this seems to be taking up to 2 seconds on
some Lenovo machines.  Detect scenarios that take more than 1 second
but less than 2.5 seconds and emit a warning on resume for those
scenarios.

Suggested-by: Aaron Ma <aaron.ma@canonical.com>
Suggested-by: Sasha Netfin <sasha.neftin@intel.com>
Suggested-by: Hans de Goede <hdegoede@redhat.com>
CC: Mark Pearson <markpearson@lenovo.com>
Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
BugLink: https://bugs.launchpad.net/bugs/1865570
Link: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200323191639.48826-1-aaron.ma@canonical.com/
Link: https://lkml.org/lkml/2020/12/13/15
Link: https://lkml.org/lkml/2020/12/14/708
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 9aa6fad8ed47..fdf23d20c954 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1240,6 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 		return 0;
 
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
+		struct e1000_adapter *adapter = hw->adapter;
+		bool firmware_bug = false;
+
 		if (force) {
 			/* Request ME un-configure ULP mode in the PHY */
 			mac_reg = er32(H2ME);
@@ -1248,16 +1251,23 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
 			ew32(H2ME, mac_reg);
 		}
 
-		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
+		/* Poll up to 2.5 seconds for ME to clear ULP_CFG_DONE.
+		 * If this takes more than 1 second, show a warning indicating a firmware
+		 * bug */
 		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
-			if (i++ == 30) {
+			if (i++ == 250) {
 				ret_val = -E1000_ERR_PHY;
 				goto out;
 			}
+			if (i > 100 && !firmware_bug)
+				firmware_bug = true;
 
 			usleep_range(10000, 11000);
 		}
-		e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
+		if (firmware_bug)
+			e_warn("ULP_CONFIG_DONE took %dmsec.  This is a firmware bug\n", i * 10);
+		else
+			e_dbg("ULP_CONFIG_DONE cleared after %dmsec\n", i * 10);
 
 		if (force) {
 			mac_reg = er32(H2ME);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
