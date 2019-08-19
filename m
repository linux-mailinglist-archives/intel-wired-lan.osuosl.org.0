Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAFE922F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2019 14:02:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BE8D7204DC;
	Mon, 19 Aug 2019 12:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gmhwhI8omCNw; Mon, 19 Aug 2019 12:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3D063204F6;
	Mon, 19 Aug 2019 12:02:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1BBB1BF358
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 12:02:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C6060204E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 12:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YRULh2wQil1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2019 12:02:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id BE87E204DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2019 12:02:38 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7JBxPqe004860;
 Mon, 19 Aug 2019 12:02:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=8cn6hZdHa3AqYIQsotWH6MoMMp4n4HsHlra+JK8qZEA=;
 b=K+FlKY+SCTRMn6F3wj01O0K1WSx4GXyrw8A4fA3wrhSpdR/jwn57ODGkIIS6bvoyYIgz
 TkjDRyYDLcudQkCe7j9rK1vWlcKtMgYJpsOssz8vP/gPKrhyfHnDIGXN8sLzWUtmGzm2
 WZCD2dr2qaj4WdweBYE0r74q99pGjTjb4lM7/4y2f3IW9u28t/RhS0wxfUltZA8keqmx
 GhPMxkQl7WTFV1d6awR5rbkP+VjnB0mojNPUZJZxrp5pdOnubySqWR0lfNey30UDYZRZ
 wqVQ2xEOnvNlG8ttFT99pIftxIndChwzR3azgY5G4U+YtTg8oPulHFz8gKOmLHDkVxJh Lw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2ue90t72tx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 12:02:36 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7JBwwwA055426;
 Mon, 19 Aug 2019 12:02:36 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2uejxe33fv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 19 Aug 2019 12:02:35 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7JC2X4R031651;
 Mon, 19 Aug 2019 12:02:35 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 19 Aug 2019 05:02:33 -0700
Date: Mon, 19 Aug 2019 15:02:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: czeslawx.zagorski@intel.com
Message-ID: <20190819120228.GA27099@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9353
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=664
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908190138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9353
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=727 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908190138
Subject: [Intel-wired-lan] [bug report] i40e: Log info when PF is entering
 and leaving Allmulti mode.
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

Hello Czeslaw Zagorski,

The patch b603f9dc20af: "i40e: Log info when PF is entering and
leaving Allmulti mode." from Jul 2, 2019, leads to the following
static checker warning:

	drivers/net/ethernet/intel/i40e/i40e_main.c:2534 i40e_sync_vsi_filters()
	error: we previously assumed 'vsi->netdev' could be null (see line 2286)

drivers/net/ethernet/intel/i40e/i40e_main.c
  2254  int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
  2255  {
  2256          struct hlist_head tmp_add_list, tmp_del_list;
  2257          struct i40e_mac_filter *f;
  2258          struct i40e_new_mac_filter *new, *add_head = NULL;
  2259          struct i40e_hw *hw = &vsi->back->hw;
  2260          bool old_overflow, new_overflow;
  2261          unsigned int failed_filters = 0;
  2262          unsigned int vlan_filters = 0;
  2263          char vsi_name[16] = "PF";
  2264          int filter_list_len = 0;
  2265          i40e_status aq_ret = 0;
  2266          u32 changed_flags = 0;
  2267          struct hlist_node *h;
  2268          struct i40e_pf *pf;
  2269          int num_add = 0;
  2270          int num_del = 0;
  2271          int retval = 0;
  2272          u16 cmd_flags;
  2273          int list_size;
  2274          int bkt;
  2275  
  2276          /* empty array typed pointers, kcalloc later */
  2277          struct i40e_aqc_add_macvlan_element_data *add_list;
  2278          struct i40e_aqc_remove_macvlan_element_data *del_list;
  2279  
  2280          while (test_and_set_bit(__I40E_VSI_SYNCING_FILTERS, vsi->state))
  2281                  usleep_range(1000, 2000);
  2282          pf = vsi->back;
  2283  
  2284          old_overflow = test_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
  2285  
  2286          if (vsi->netdev) {
                    ^^^^^^^^^^^
The existing code assumes that this can be NULL.

  2287                  changed_flags = vsi->current_netdev_flags ^ vsi->netdev->flags;
  2288                  vsi->current_netdev_flags = vsi->netdev->flags;
  2289          }
  2290  

[ snip ]

  2516          /* check for changes in promiscuous modes */
  2517          if (changed_flags & IFF_ALLMULTI) {
  2518                  bool cur_multipromisc;
  2519  
  2520                  cur_multipromisc = !!(vsi->current_netdev_flags & IFF_ALLMULTI);
  2521                  aq_ret = i40e_aq_set_vsi_multicast_promiscuous(&vsi->back->hw,
  2522                                                                 vsi->seid,
  2523                                                                 cur_multipromisc,
  2524                                                                 NULL);
  2525                  if (aq_ret) {
  2526                          retval = i40e_aq_rc_to_posix(aq_ret,
  2527                                                       hw->aq.asq_last_status);
  2528                          dev_info(&pf->pdev->dev,
  2529                                   "set multi promisc failed on %s, err %s aq_err %s\n",
  2530                                   vsi_name,
  2531                                   i40e_stat_str(hw, aq_ret),
  2532                                   i40e_aq_str(hw, hw->aq.asq_last_status));
  2533                  } else {
  2534                          dev_info(&pf->pdev->dev, "%s is %s allmulti mode.\n",
  2535                                   vsi->netdev->name,
                                         ^^^^^^^^^^^^^^^^^
Unchecked dereference.  Do you want to use vsi_name instead?

  2536                                   cur_multipromisc ? "entering" : "leaving");
  2537                  }
  2538          }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
