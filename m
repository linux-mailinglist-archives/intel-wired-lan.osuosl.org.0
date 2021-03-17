Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50CF33F11D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 14:24:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1647D43013;
	Wed, 17 Mar 2021 13:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qdp8S-peBTtj; Wed, 17 Mar 2021 13:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1371042FFE;
	Wed, 17 Mar 2021 13:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E56FD1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 13:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D395D83F9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 13:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLGn6yFz5MhD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 13:23:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 199BA83FA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 13:23:54 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12HDNqsf145031;
 Wed, 17 Mar 2021 13:23:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=pAEw7QvLasvd2hfHrP3EdBVuMmguStkukdVr0BeDag4=;
 b=EP99FdnKK7nC5tLgIGbRFawG1zgfn8dmiczFhpiuN+8+OEwBjnruaRzH5CBrKmXfX2g4
 6cXW5YYucwfjkPrcCFZMt+aV+PsG7Ip8YFy/C7uk1OJWsPpYECHeOGJvxUpBWL7xqbTI
 2ESYq+amMTI9Z1jE7ye6Hmf49hIZ+z4zJAn6icUK2xcNmnG37XgxkFVW048U5ys8x4ok
 hF38JusKtXG8PI5wDOjJFPZz4iBfnP7vERRR0yRQlU8psWOswa5d1QPJg38CIwpp6JTM
 +OMyLURBIj6ToSeUDiOZ5GPogm0F/UjHVKAJDS9z0MM1EPOLVLovYFi0NMWKTO6ifJsS ow== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 378jwbm43f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Mar 2021 13:23:52 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12HDG4MM007155;
 Wed, 17 Mar 2021 13:23:47 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 3797b1gkhe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Mar 2021 13:23:47 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12HDNkcp004279;
 Wed, 17 Mar 2021 13:23:46 GMT
Received: from mwanda (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Mar 2021 06:23:45 -0700
Date: Wed, 17 Mar 2021 16:23:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: sasha.neftin@intel.com
Message-ID: <YFIC27QOoIaVkDYL@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170099
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9925
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 spamscore=0 mlxscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1011 adultscore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103170100
Subject: [Intel-wired-lan] [bug report] igc: Add NVM support
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

The patch ab4056126813: "igc: Add NVM support" from Oct 11, 2018,
leads to the following static checker warning:

	drivers/net/ethernet/intel/igc/igc_i225.c:235 igc_write_nvm_srwr()
	warn: loop overwrites return value 'ret_val'

drivers/net/ethernet/intel/igc/igc_i225.c
   218  static s32 igc_write_nvm_srwr(struct igc_hw *hw, u16 offset, u16 words,
   219                                u16 *data)
   220  {
   221          struct igc_nvm_info *nvm = &hw->nvm;
   222          s32 ret_val = -IGC_ERR_NVM;
   223          u32 attempts = 100000;
   224          u32 i, k, eewr = 0;
   225  
   226          /* A check for invalid values:  offset too large, too many words,
   227           * too many words for the offset, and not enough words.
   228           */
   229          if (offset >= nvm->word_size || (words > (nvm->word_size - offset)) ||
   230              words == 0) {
   231                  hw_dbg("nvm parameter(s) out of bounds\n");
   232                  goto out;

I really don't care for "goto out;" labels.  They add a level of
misdirection and ambiguity.  This should be "return -EINVAL;" instead
of "return -IGC_ERR_NVM;".  Eventually it gets propogated back to the
user via dev_ethtool() and it becomes -EPERM to the user.

   233          }
   234  
   235          for (i = 0; i < words; i++) {
   236                  eewr = ((offset + i) << IGC_NVM_RW_ADDR_SHIFT) |
   237                          (data[i] << IGC_NVM_RW_REG_DATA) |
   238                          IGC_NVM_RW_REG_START;
   239  
   240                  wr32(IGC_SRWR, eewr);
   241  
   242                  for (k = 0; k < attempts; k++) {
   243                          if (IGC_NVM_RW_REG_DONE &
   244                              rd32(IGC_SRWR)) {
   245                                  ret_val = 0;
   246                                  break;
   247                          }
   248                          udelay(5);
   249                  }
   250  
   251                  if (ret_val) {
   252                          hw_dbg("Shadow RAM write EEWR timed out\n");
   253                          break;
   254                  }

If there is a read error on subsequent iterations through the loop then
this code will return success.

   255          }
   256  
   257  out:
   258          return ret_val;
   259  }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
