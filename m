Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D950C14E809
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2020 05:57:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BCA9871C0;
	Fri, 31 Jan 2020 04:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ig-YnS3DyBRk; Fri, 31 Jan 2020 04:57:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B71438674D;
	Fri, 31 Jan 2020 04:57:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 982921BF869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 04:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8AE1F2035B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 04:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YNoCbUwInWmA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2020 04:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B91D2034D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2020 04:57:17 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00V4t9S2169776;
 Fri, 31 Jan 2020 04:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=vhZBZHYwVQzRkRLs8F0bVp2acAD00tQ4dSXfaT080og=;
 b=qDrw86Zex1TwokPNvN+0PXezdzAZPyaWWLNKVuV+PRjFRyVEQYqwBnZgJ76oyV1TKxSK
 m4KmMs+1nhgiXbuOp3yAlkHnVAkZ3Z8b6WRMSs7POX4L4+5LPCwTd8ON360Zde6jHoVj
 zkB2erApNm2mKH6PNSaDTzuOT3/+BExbBJ35RhxorPpi5kzPFkN2A41XwtmRD+Q+aCTM
 2AyHX3EdGNBIW+lvkjYdSdQ2Fa/Pq1eOdYYn81JlGJdPZPBnJmnDsh0YwnstoAnF0ety
 Jq4f3L2DZJYBg4XVNAoHAaod48FAmYEk3vGACbjtIAX2CNA2CmfOZpqy7wkTE0GrCqId Tg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xrearqyj3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Jan 2020 04:57:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00V4sPgm071523;
 Fri, 31 Jan 2020 04:57:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2xva6pnhee-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 Jan 2020 04:57:09 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00V4v8VD009079;
 Fri, 31 Jan 2020 04:57:08 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Jan 2020 20:57:07 -0800
Date: Fri, 31 Jan 2020 07:56:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20200131045658.ahliv7jvubpwoeru@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001310042
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001310042
Subject: [Intel-wired-lan] [PATCH net] ice: Fix a couple off by one bugs
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The hw->blk[blk]->es.ref_count[] array has hw->blk[blk].es.count
elements.  It gets allocated in ice_init_hw_tbls().  So the > should be
>= to prevent accessing one element beyond the end of the array.

Fixes: 2c61054c5fda ("ice: Optimize table usage")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 99208946224c..38a7041fe774 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1950,7 +1950,7 @@ ice_free_prof_id(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 static enum ice_status
 ice_prof_inc_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
-	if (prof_id > hw->blk[blk].es.count)
+	if (prof_id >= hw->blk[blk].es.count)
 		return ICE_ERR_PARAM;
 
 	hw->blk[blk].es.ref_count[prof_id]++;
@@ -1991,7 +1991,7 @@ ice_write_es(struct ice_hw *hw, enum ice_block blk, u8 prof_id,
 static enum ice_status
 ice_prof_dec_ref(struct ice_hw *hw, enum ice_block blk, u8 prof_id)
 {
-	if (prof_id > hw->blk[blk].es.count)
+	if (prof_id >= hw->blk[blk].es.count)
 		return ICE_ERR_PARAM;
 
 	if (hw->blk[blk].es.ref_count[prof_id] > 0) {
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
