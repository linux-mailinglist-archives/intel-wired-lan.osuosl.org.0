Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C269831D113
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 20:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B1758720D;
	Tue, 16 Feb 2021 19:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uU4US6fOrZUu; Tue, 16 Feb 2021 19:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D689871C7;
	Tue, 16 Feb 2021 19:43:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5ADF81BF983
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 19:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56A5F8476C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 19:43:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCWRVPHjLS-3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Feb 2021 19:43:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 350E084775
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 19:43:02 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11GJTmIO135565;
 Tue, 16 Feb 2021 19:42:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=qliTX49NNysy1Z4rv4b9wioSaC5k9nPPzl89Rr56v8Q=;
 b=sQmWPFOAf5IMuXDZ4xQzII5RMG3OdNAIDBAxzyr0uEWousTvwIoAo7tTCrK2pb8Bpfn3
 JVm+YYiHWHBmN2Wq4zXfHbcXdIo+oeuv3vE2Mcpxburn28RvaCK8a7tBr2lh6TTJxXDD
 VGgYbBKijMBAF6/qqgyj4neZEB5i+3bDqYvBi6ShVVYuuSI7tfAzyv/kkW86srTs1IqT
 fUxLSI0ojHUQ+soxTvOXgI2CQtdG1D86CSZKjedOrwx1hI0wOnqH9sea3kIS1olw/ymP
 0Pdn+OxYkHjtZ3HeFBUx8nWAj6aSrnDh7QwuP+uzjvPp4vN+bGAqys2RNrme0MJEIehf Og== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 36pd9a7jvs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Feb 2021 19:42:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11GJUNap119459;
 Tue, 16 Feb 2021 19:42:56 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36prbnm42h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Feb 2021 19:42:56 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11GJgsNf007609;
 Tue, 16 Feb 2021 19:42:55 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Feb 2021 11:42:54 -0800
Date: Tue, 16 Feb 2021 22:42:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: arkadiusz.kubalewski@intel.com
Message-ID: <YCwgM5yvXRAZix/Q@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9897
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102160162
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9897
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 impostorscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102160162
Subject: [Intel-wired-lan] [bug report] i40e: Add hardware configuration for
 software based DCB
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Arkadiusz Kubalewski,

The patch 90bc8e003be2: "i40e: Add hardware configuration for
software based DCB" from Oct 19, 2020, leads to the following static
checker warning:

	drivers/net/ethernet/intel/i40e/i40e_dcb.c:1645 i40e_dcb_hw_calculate_pool_sizes()
	error: uninitialized symbol 'mfs_max'.

drivers/net/ethernet/intel/i40e/i40e_dcb.c
  1628  void i40e_dcb_hw_calculate_pool_sizes(struct i40e_hw *hw,
  1629                                        u8 num_ports, bool eee_enabled,
  1630                                        u8 pfc_en, u32 *mfs_tc,
  1631                                        struct i40e_rx_pb_config *pb_cfg)
  1632  {
  1633          u32 pool_size[I40E_MAX_TRAFFIC_CLASS];
  1634          u32 high_wm[I40E_MAX_TRAFFIC_CLASS];
  1635          u32 low_wm[I40E_MAX_TRAFFIC_CLASS];
  1636          u32 total_pool_size = 0;
  1637          int shared_pool_size; /* Need signed variable */
  1638          u32 port_pb_size;
  1639          u32 mfs_max;
  1640          u32 pcirtt;
  1641          u8 i;
  1642  
  1643          /* Get the MFS(max) for the port */
  1644          for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  1645                  if (mfs_tc[i] > mfs_max)
                                        ^^^^^^^
Uninitialized.

  1646                          mfs_max = mfs_tc[i];
  1647          }
  1648  

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
