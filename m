Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACA22CF54B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 21:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2DB387DCE;
	Fri,  4 Dec 2020 20:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5MbUXwXEE1aa; Fri,  4 Dec 2020 20:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2048E87DC8;
	Fri,  4 Dec 2020 20:09:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F082C1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E4EA387DCB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UXWHTAK8NThi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 20:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00154904.pphosted.com (mx0a-00154904.pphosted.com
 [148.163.133.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 210F587DC2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 20:09:29 +0000 (UTC)
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4JsQDl032347
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=smtpout1;
 bh=Bmk7Zjvi9X+Swpw2hnAWUI3bYSwnfmYTchixWgSaeE4=;
 b=Woll7bcJ45erKQUyWavA3A/tGb1fsShuUvv0zr6K8mEahfP7ywjinrSxgo+0caXnf0+Z
 WLr2JQi90faWhLzoxWA26xl2jakOR5m5CUbcNApnvxZU3YUlpDNkFvscDDUjolvJ4IuL
 FpaiZrDHP0GuM4j6sQMnOpcgknUKkc/xYqcxJudUih9p0HZ1jfOuy5z7WoH2bt8hMHoi
 qKnktdsN93uxgiYTfAjK5ld8aASp7SHVTreuCDVojRj7FHXTrcSviEcHzAMwogfMmRPM
 2R/5m4qQ+6ZQVAxSL+P6EreuXyGTXy+W7hHxovaNjsTUzgPq4/jAlmztwMK5YZlrlm3S bg== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 353jkhv6e8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:28 -0500
Received: from pps.filterd (m0133268.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0B4Jr8ee069002
 for <intel-wired-lan@lists.osuosl.org>; Fri, 4 Dec 2020 15:09:28 -0500
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0a-00154901.pphosted.com with ESMTP id 3571ucr9m7-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 15:09:27 -0500
X-LoopCount0: from 10.173.37.130
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.78,393,1599541200"; d="scan'208";a="573039888"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Dec 2020 14:09:14 -0600
Message-Id: <20201204200920.133780-2-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201204200920.133780-1-mario.limonciello@dell.com>
References: <20201204200920.133780-1-mario.limonciello@dell.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312, 18.0.737
 definitions=2020-12-04_09:2020-12-04,
 2020-12-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 mlxlogscore=860
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012040114
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=976
 spamscore=0
 phishscore=0 adultscore=0 suspectscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012040114
Subject: [Intel-wired-lan] [PATCH v3 1/7] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, linux-kernel@vger.kernel.org, anthony.wong@canonical.com,
 Yijun.Shen@dell.com, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vitaly Lifshits <vitaly.lifshits@intel.com>

Changed a configuration in the flows to align with
architecture requirements to achieve S0i3.2 substate.

Also fixed a typo in the previous commit 632fbd5eb5b0
("e1000e: fix S0ix flows for cable connected case").

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b30f00891c03..128ab6898070 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6475,13 +6475,13 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 
 	/* Ungate PGCB clock */
 	mac_data = er32(FEXTNVM9);
-	mac_data |= BIT(28);
+	mac_data &= ~BIT(28);
 	ew32(FEXTNVM9, mac_data);
 
 	/* Enable K1 off to enable mPHY Power Gating */
 	mac_data = er32(FEXTNVM6);
 	mac_data |= BIT(31);
-	ew32(FEXTNVM12, mac_data);
+	ew32(FEXTNVM6, mac_data);
 
 	/* Enable mPHY power gating for any link and speed */
 	mac_data = er32(FEXTNVM8);
@@ -6525,11 +6525,11 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	/* Disable K1 off */
 	mac_data = er32(FEXTNVM6);
 	mac_data &= ~BIT(31);
-	ew32(FEXTNVM12, mac_data);
+	ew32(FEXTNVM6, mac_data);
 
 	/* Disable Ungate PGCB clock */
 	mac_data = er32(FEXTNVM9);
-	mac_data &= ~BIT(28);
+	mac_data |= BIT(28);
 	ew32(FEXTNVM9, mac_data);
 
 	/* Cancel not waking from dynamic
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
