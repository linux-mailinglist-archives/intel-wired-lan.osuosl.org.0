Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B7F1882E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 May 2019 12:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B52A087430;
	Thu,  9 May 2019 10:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wwzafaxpkKto; Thu,  9 May 2019 10:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C635F8741D;
	Thu,  9 May 2019 10:11:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C56E1BF82B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2019 10:11:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8796787528
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2019 10:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gmjEpzvqKDIn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2019 10:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC566873B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2019 10:11:00 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49A3vVQ169330;
 Thu, 9 May 2019 10:10:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2018-07-02;
 bh=qupKCE1+9NLgvlLFD55x9x37iyyxp1hRx7TkBzJRv64=;
 b=cur0yw0xXOixscpXpojSdVFeqrb9W3jEx1XMHwlmLc9ySINPEKJs5ZPNZcG9q0jxya0Y
 rObtgn5HRwEY6vtRMn4zgnyFd91EYlbNcM3V+RzKtADa3o+r/OF7lzGJeIgU2Q5Vhrw6
 F3C40aiw/ItXNBnTy1MF8cniUARnGE4Qn9jVgX9VR7+EHl81d1m3LvSXwmz8wXNvA+ed
 mNY9dSPjQcOvhyvgLY7LKH810tEz+lEnxWZWYMl7gdm0P8TFF0UQspCk/15+Oz+SxLeQ
 JaB9q8IkvkfcA6VbVo9PMMSOVAj6DjCqXNuxUJMf0OpMY8xRL+eJc18Y9AUUv7+NBJz5 bQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2s94b11rp4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 10:10:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49A9w4J185529;
 Thu, 9 May 2019 10:10:58 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2sagyv5jsn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 10:10:58 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x49AAvGK015241;
 Thu, 9 May 2019 10:10:57 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 May 2019 03:10:56 -0700
Date: Thu, 9 May 2019 13:10:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <20190509101051.GB7024@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905090062
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090062
Subject: [Intel-wired-lan] [PATCH] i40e/i40evf: cleanup
 i40e_update_nvm_checksum()
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
Cc: kernel-janitors@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Smatch complains that we use 'checksum' when it's uninitialized.

    drivers/net/ethernet/intel/i40e/i40e_nvm.c:581 i40e_update_nvm_checksum()
    error: uninitialized symbol 'checksum'.

This is true, but it harmless because we don't use it again.

Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index c508b75c3c09..a60ab9d48065 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -578,12 +578,11 @@ i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw)
 	__le16 le_sum;
 
 	ret_code = i40e_calc_nvm_checksum(hw, &checksum);
+	if (ret_code)
+		return ret_code;
 	le_sum = cpu_to_le16(checksum);
-	if (!ret_code)
-		ret_code = i40e_write_nvm_aq(hw, 0x00, I40E_SR_SW_CHECKSUM_WORD,
-					     1, &le_sum, true);
-
-	return ret_code;
+	return i40e_write_nvm_aq(hw, 0x00, I40E_SR_SW_CHECKSUM_WORD, 1,
+				 &le_sum, true);
 }
 
 /**
-- 
2.18.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
