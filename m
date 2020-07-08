Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A9021865E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 13:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF8CB89465;
	Wed,  8 Jul 2020 11:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ooqI4bjDsUth; Wed,  8 Jul 2020 11:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 979048966A;
	Wed,  8 Jul 2020 11:48:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B3FB1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 11:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19A1D8713F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 11:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtYEb8AmV17d for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 11:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77DF58712B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 11:48:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 068Bl6It185155;
 Wed, 8 Jul 2020 11:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=+kDEyislLhCqIA68oxespNKC/m5sjk+wSlm1h8LhHMg=;
 b=sQ6HOJk/HWCAI4jGH6SJbPZ9sbon8FtgdSY+YHEWfzUBODyxR8zBjw9Jc5/xSPx7iwse
 9xB7IE3ROZ6OB3ef/gW9KISlFG5P4hX4KWu6tD5kFjn9Sjd5mv8WhV8R8R0W6btfUonO
 zRL5HlveT22q6NKUf2F5Ykjc/X6Ns8SXG35b0fD0yV6Kh9gQJYmAo/XPne/EQ5lShy5d
 uZTCiiTb5vmRJBEdSO951qGedHvJSEODwTV0cTNvSPDP7/FpsLul0bVRrJsf1IHqLdv/
 nS464ek5FgcLq1cOcXJxUEGuyu7yLEFshh7ly+Y7ZYcCfaxwjRyG8oCYQjsuHML5StVz 9w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 322kv6j1m6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 08 Jul 2020 11:47:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 068BiH5W108214;
 Wed, 8 Jul 2020 11:47:58 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 3233pyt7tu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jul 2020 11:47:58 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 068BluSe021346;
 Wed, 8 Jul 2020 11:47:57 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 08 Jul 2020 04:47:56 -0700
Date: Wed, 8 Jul 2020 14:47:51 +0300
From: <dan.carpenter@oracle.com>
To: sasha.neftin@intel.com
Message-ID: <20200708114751.GA11509@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9675
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 adultscore=0 spamscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007080085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9675
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 bulkscore=0
 malwarescore=0 suspectscore=3 mlxlogscore=999 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxscore=0 adultscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007080086
Subject: [Intel-wired-lan] [bug report] igc: Add initial LTR support
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

Hello Sasha Neftin,

The patch 707abf069548: "igc: Add initial LTR support" from Jun 2,
2020, leads to the following static checker warning:

	drivers/net/ethernet/intel/igc/igc_mac.c:424 igc_check_for_copper_link()
	error: uninitialized symbol 'link'.

drivers/net/ethernet/intel/igc/igc_mac.c
   363  s32 igc_check_for_copper_link(struct igc_hw *hw)
   364  {
   365          struct igc_mac_info *mac = &hw->mac;
   366          s32 ret_val;
   367          bool link;
                ^^^^^^^^^

   368  
   369          /* We only want to go out to the PHY registers to see if Auto-Neg
   370           * has completed and/or if our link status has changed.  The
   371           * get_link_status flag is set upon receiving a Link Status
   372           * Change or Rx Sequence Error interrupt.
   373           */
   374          if (!mac->get_link_status) {
   375                  ret_val = 0;
   376                  goto out;
                        ^^^^^^^^

   377          }
   378  
   379          /* First we want to see if the MII Status Register reports
   380           * link.  If so, then we want to get the current speed/duplex
   381           * of the PHY.
   382           */
   383          ret_val = igc_phy_has_link(hw, 1, 0, &link);
   384          if (ret_val)
   385                  goto out;
   386  
   387          if (!link)
   388                  goto out; /* No link detected */
   389  
   390          mac->get_link_status = false;
   391  
   392          /* Check if there was DownShift, must be checked
   393           * immediately after link-up
   394           */
   395          igc_check_downshift(hw);
   396  
   397          /* If we are forcing speed/duplex, then we simply return since
   398           * we have already determined whether we have link or not.
   399           */
   400          if (!mac->autoneg) {
   401                  ret_val = -IGC_ERR_CONFIG;
   402                  goto out;
   403          }
   404  
   405          /* Auto-Neg is enabled.  Auto Speed Detection takes care
   406           * of MAC speed/duplex configuration.  So we only need to
   407           * configure Collision Distance in the MAC.
   408           */
   409          igc_config_collision_dist(hw);
   410  
   411          /* Configure Flow Control now that Auto-Neg has completed.
   412           * First, we need to restore the desired flow control
   413           * settings because we may have had to re-autoneg with a
   414           * different link partner.
   415           */
   416          ret_val = igc_config_fc_after_link_up(hw);
   417          if (ret_val)
   418                  hw_dbg("Error configuring flow control\n");
   419  
   420  out:
   421          /* Now that we are aware of our link settings, we can set the LTR
   422           * thresholds.
   423           */
   424          ret_val = igc_set_ltr_i225(hw, link);
                                               ^^^^
Uninitialized.

   425  
   426          return ret_val;
   427  }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
