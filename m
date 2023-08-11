Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A584C77925C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 17:04:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4586783F24;
	Fri, 11 Aug 2023 15:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4586783F24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691766294;
	bh=cOmrDCJogH6oGZDnZkCnSmPryh35+venHdk5T2Zosd0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IELSiTt/KCKe8oODlUOpGrofVbt60aJUG8Z9UJhdt1oQPgPkncAvzV9lZHg+2r7YI
	 8kpaGZl7fn4ND8SGgt/41/V+8bcOQ9pqG6C9waIy/eFoAka7umrX4L6M69EtSv3WUm
	 ZXLUeIDQKQqXyBhFfeftKL9VKwgCP1uIGvgau7iQieqXjW6RNKkQDN8A57e1wVCN4O
	 pxvcnq3LJJISjkDiFUy7cqbnkcFZ+vTQm/uKqnqTto6nbHmQ1V9wu0kfaLDVtgDZMW
	 Kplmg6M9mYQnPgM2vLF0vXq1vBdSJf9LZ6KgAnlnCu4DipjU/5m7GCvNRMCq3wqCqL
	 QTUqeSB1idumw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rZ6RQaNOFND; Fri, 11 Aug 2023 15:04:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2048483B96;
	Fri, 11 Aug 2023 15:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2048483B96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99C8B1BF473
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 705328402B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:11:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 705328402B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnguxpAirkp2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 13:11:13 +0000 (UTC)
X-Greylist: delayed 4100 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 11 Aug 2023 13:11:13 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7898884024
Received: from mx0b-00154904.pphosted.com (mx0b-00154904.pphosted.com
 [148.163.137.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7898884024
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 13:11:13 +0000 (UTC)
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37B5nQle005355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:02:52 -0400
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com (PPS) with ESMTPS id 3sd900anjm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:02:52 -0400
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37BBGRfH015357
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:02:50 -0400
Received: from esaploutpc104.us.dell.com (smtp-outbound-pc1.dell.com
 [143.166.24.15])
 by mx0a-00154901.pphosted.com (PPS) with ESMTPS id 3sd8ym135j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 08:02:50 -0400
X-LoopCount0: from 10.95.135.182
X-PREM-Routing: D-Outbound
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="192727359"
Received: from unknown (HELO marshall-virtual-machine.localdomain)
 ([10.95.135.182])
 by esaploutpc104.us.dell.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 07:02:44 -0500
From: marshall.shao@dell.com
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <simon.horman@corigine.com>,
 Akihiko Odaki <akihiko.odaki@daynix.com>,
 Kees Cook <keescook@chromium.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Lin Ma <linma@zju.edu.cn>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Fri, 11 Aug 2023 20:02:25 +0800
Message-Id: <20230811120225.4133-1-marshall.shao@dell.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-11_03,2023-08-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 malwarescore=0 clxscore=1011 phishscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308110110
X-Proofpoint-ORIG-GUID: bzcBrMAoWCG9Omsgl-y9RC6HntGXPNGQ
X-Proofpoint-GUID: bzcBrMAoWCG9Omsgl-y9RC6HntGXPNGQ
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxlogscore=999
 impostorscore=0 adultscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2308110110
X-Mailman-Approved-At: Fri, 11 Aug 2023 15:04:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dell.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=smtpout1; bh=p6jahmSM5j9URq+MhJY2E9TDTS+pJyj4/GHeF5aXaek=;
 b=RB4fK6xKe2YHyF2C0WCLV8rjYq+xHIH7BIitew4MdsJ3/9Ja0GfgG3iCg2k6FlvRrtOW
 H68tPSdFQeeishV4vlvvP2rp/LSMRBk8ceRffaKE/0zmE5/pdrh0xYr0uJq/RGR92Vd4
 JJDRiOkly1tZzlUL9QnrdoblRQwzbHew9w15UDjA3gSJ0SrQMXaSnzQaBS4gTcYkZ0CM
 43pW7heb/eUuqmyaI6cEbyxYtaHEdLJrvg6j3pxwRQbsJrs2H42YJUK/xp0iNjrRTm/F
 UW9EyYm4k2ckL4ihSeyp71ixwNg3irneNybu2Kjr6Xp+xVwUUTY5+Kab24u2stY4zx/I oA== 
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=dell.com header.i=@dell.com
 header.a=rsa-sha256 header.s=smtpout1 header.b=RB4fK6xK
Subject: [Intel-wired-lan] [PATCH] Fix kernel panic issue after removing igb
 driver
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
Cc: Marshall Shao <Marshall.Shao@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marshall Shao <Marshall.Shao@dell.com>

This patch fixes a kernel panic issue after removing the igb driver 
from the usermode.

A delayed work will be schedule in igb_ptp_init(),

	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
		INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
				  igb_ptp_overflow_check);

If CONFIG_PTP_1588_CLOCK is not enabled, the delayed work cannot be
cancelled when igb_ptp_suspend is called.

Signed-off-by: Marshall Shao <Marshall.Shao@dell.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 405886ee5261..b21822ea1c7d 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1435,12 +1435,12 @@ void igb_ptp_sdp_init(struct igb_adapter *adapter)
  */
 void igb_ptp_suspend(struct igb_adapter *adapter)
 {
-	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
-		return;
-
 	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
 		cancel_delayed_work_sync(&adapter->ptp_overflow_work);
 
+	if (!(adapter->ptp_flags & IGB_PTP_ENABLED))
+		return;
+
 	cancel_work_sync(&adapter->ptp_tx_work);
 	if (adapter->ptp_tx_skb) {
 		dev_kfree_skb_any(adapter->ptp_tx_skb);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
