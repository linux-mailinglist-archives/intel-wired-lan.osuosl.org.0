Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC7832EC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 15:39:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12A5D87E4D;
	Tue,  6 Aug 2019 13:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tfa-Tq+IRwXN; Tue,  6 Aug 2019 13:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4F5187E3D;
	Tue,  6 Aug 2019 13:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8C30F1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 13:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 862372154B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 13:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xueNCK-zgnO8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2019 13:39:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by silver.osuosl.org (Postfix) with ESMTPS id CB704214E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 13:39:23 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x76Dd8Es092349
 for <intel-wired-lan@lists.osuosl.org>; Tue, 6 Aug 2019 09:39:23 -0400
Received: from e12.ny.us.ibm.com (e12.ny.us.ibm.com [129.33.205.202])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2u7888pbmb-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Aug 2019 09:39:18 -0400
Received: from localhost
 by e12.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <intel-wired-lan@lists.osuosl.org> from <maurosr@linux.vnet.ibm.com>;
 Tue, 6 Aug 2019 14:38:34 +0100
Received: from b01cxnp23032.gho.pok.ibm.com (9.57.198.27)
 by e12.ny.us.ibm.com (146.89.104.199) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 6 Aug 2019 14:38:33 +0100
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com
 [9.57.199.110])
 by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x76DcWpS21233956
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 6 Aug 2019 13:38:32 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 12926AE063;
 Tue,  6 Aug 2019 13:38:32 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D9243AE05C;
 Tue,  6 Aug 2019 13:38:31 +0000 (GMT)
Received: from localhost (unknown [9.18.239.191])
 by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTP;
 Tue,  6 Aug 2019 13:38:31 +0000 (GMT)
From: "Mauro S. M. Rodrigues" <maurosr@linux.vnet.ibm.com>
To: intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Tue,  6 Aug 2019 10:38:26 -0300
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19080613-0060-0000-0000-000003698896
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011559; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01242914; UDB=6.00655626; IPR=6.01024379; 
 MB=3.00028065; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-06 13:38:33
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19080613-0061-0000-0000-00004A72EF1D
Message-Id: <20190806133826.18480-1-maurosr@linux.vnet.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-06_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908060138
Subject: [Intel-wired-lan] [PATCH] i40e: Remove EMPR traces from debugfs
 facility
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit
'5098850c9b9b ("i40e/i40evf: i40e_register.h updates")'
it is no longer possible to trigger an EMP Reset from debugfs, but it's
possible to request it either way, to end up with a bad reset request:

echo empr > /sys/kernel/debug/i40e/0002\:01\:00.1/command
i40e 0002:01:00.1: debugfs: forcing EMPR
i40e 0002:01:00.1: bad reset request 0x00010000

So let's remove this piece of code and show the available valid commands
as it is when any invalid command is issued.

Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 1 -
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 4 ----
 2 files changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 84bd06901014..6ec0e1bc05e6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -131,7 +131,6 @@ enum i40e_state_t {
 	__I40E_PF_RESET_REQUESTED,
 	__I40E_CORE_RESET_REQUESTED,
 	__I40E_GLOBAL_RESET_REQUESTED,
-	__I40E_EMP_RESET_REQUESTED,
 	__I40E_EMP_RESET_INTR_RECEIVED,
 	__I40E_SUSPENDED,
 	__I40E_PTP_TX_IN_PROGRESS,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 55d20acfcf70..48fdf16c6019 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1125,10 +1125,6 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 		dev_info(&pf->pdev->dev, "debugfs: forcing GlobR\n");
 		i40e_do_reset_safe(pf, BIT(__I40E_GLOBAL_RESET_REQUESTED));
 
-	} else if (strncmp(cmd_buf, "empr", 4) == 0) {
-		dev_info(&pf->pdev->dev, "debugfs: forcing EMPR\n");
-		i40e_do_reset_safe(pf, BIT(__I40E_EMP_RESET_REQUESTED));
-
 	} else if (strncmp(cmd_buf, "read", 4) == 0) {
 		u32 address;
 		u32 value;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
