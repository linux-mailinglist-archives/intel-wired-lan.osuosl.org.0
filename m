Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E01155173
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 05:11:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDB7E86988;
	Fri,  7 Feb 2020 04:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JVTWC2U0evnD; Fri,  7 Feb 2020 04:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0564867C0;
	Fri,  7 Feb 2020 04:11:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37F441BF5F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 04:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33B0987B94
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 04:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNNmxKuv8Hs6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 04:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3739D87CB2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 04:11:53 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 01744AWp173421;
 Fri, 7 Feb 2020 04:11:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2020-01-29; bh=Uzkw3Dme7vW7Do23tVP5PYKy5jL7rEfCTSz69KsQAfo=;
 b=vOes9tracP3bVQJ89vQaoG54tzEphz8IRfXYLTy3UuH0PQo98O3d9HlpcO1Ht5aAExxN
 nwSDKJeFwunWt5cUgAHV2hrPkamK3Z9u9Mi/h4iacueveGQoV31RERzHfR6Itz7n/47e
 jqE1i1Hb+RS9dEp54ZBIENw/LuIEqD1ml+Y5DVPtK54325riVZeXaHVXCjkwmDmiurx0
 Szhg+hVQp79OslyPEdFbLFPX6phS2LQHj0pHzWJIGHMoF0wzf1N+ua8v03DlWawCBNV6
 Kvl8Ds3AyfXUNZG9r3UesQvhTkndjhZdq5Y8DpodUkfXZ67zcBLLtMyhkzInby4tu0YW 7g== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type : in-reply-to;
 s=corp-2019-08-05; bh=Uzkw3Dme7vW7Do23tVP5PYKy5jL7rEfCTSz69KsQAfo=;
 b=VW7WjaSY90j7fbjERaJfocVgcic9L5fqjjvgzWPqx1DgLBVB+PmdZ3TI2vUEOp5sbTlY
 +8+/yfe9lkVP1XPTaBSvofxEK7o/g3RY4iyFo6qtejtZg6dK9fVSVM4yqHISTGn69TGD
 e3TpSBwCk8VmcApvPT6WisiwNGOV08s7lRHyrapq9ouqRVJ/DmVWRm5OvnCmBYJpiNPI
 hRtGAMLODI7rncwvR1U96S6NbwG9YGWIZvp/uyY9ClAJY1VchTbDNKrIOBXuJ3gaTMei
 wI8TY0KuBJ94KwNHRjFt7RFo51iwA4zmnnyPXygFUt9RlKhuCCizYLc0QT9kqEqggnxd ig== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2xykbpdm9b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Feb 2020 04:11:40 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 01744JrK137490;
 Fri, 7 Feb 2020 04:11:40 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2y0jg0ejcv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Feb 2020 04:11:40 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0174BZCZ019805;
 Fri, 7 Feb 2020 04:11:36 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 06 Feb 2020 20:11:34 -0800
Date: Fri, 7 Feb 2020 07:11:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20200207041123.GO24804@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205081616.18378-1-kai.heng.feng@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9523
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002070025
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9523
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002070025
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] igb: Use device_lock() insead
 of rtnl_lock()
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
Cc: mkubecek@suse.cz, kbuild-all@lists.01.org,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>, davem@davemloft.ne,
 open list <linux-kernel@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Kai-Heng,

url:    https://github.com/0day-ci/linux/commits/Kai-Heng-Feng/igb-Use-device_lock-insead-of-rtnl_lock/20200205-174208
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/net/ethernet/intel/igb/igb_main.c:4036 igb_close() warn: inconsistent returns 'dev->mutex'.

# https://github.com/0day-ci/linux/commit/905877ae7d44efc1d9c5c1ae9f4489f56bcb13a6
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout 905877ae7d44efc1d9c5c1ae9f4489f56bcb13a6
vim +4036 drivers/net/ethernet/intel/igb/igb_main.c

9d5c824399dea8 drivers/net/igb/igb_main.c                Auke Kok       2008-01-24  4026  
46eafa59e18d03 drivers/net/ethernet/intel/igb/igb_main.c Stefan Assmann 2016-02-03  4027  int igb_close(struct net_device *netdev)
749ab2cd127046 drivers/net/ethernet/intel/igb/igb_main.c Yan, Zheng     2012-01-04  4028  {
905877ae7d44ef drivers/net/ethernet/intel/igb/igb_main.c Kai-Heng Feng  2020-02-05  4029  	struct igb_adapter *adapter = netdev_priv(netdev);
905877ae7d44ef drivers/net/ethernet/intel/igb/igb_main.c Kai-Heng Feng  2020-02-05  4030  	struct device *dev = &adapter->pdev->dev;
905877ae7d44ef drivers/net/ethernet/intel/igb/igb_main.c Kai-Heng Feng  2020-02-05  4031  
905877ae7d44ef drivers/net/ethernet/intel/igb/igb_main.c Kai-Heng Feng  2020-02-05  4032  	device_lock(dev);
888f22931478a0 drivers/net/ethernet/intel/igb/igb_main.c Lyude Paul     2017-12-12  4033  	if (netif_device_present(netdev) || netdev->dismantle)
749ab2cd127046 drivers/net/ethernet/intel/igb/igb_main.c Yan, Zheng     2012-01-04  4034  		return __igb_close(netdev, false);
                                                                                                        ^^^^^^
Lock held for this return.

905877ae7d44ef drivers/net/ethernet/intel/igb/igb_main.c Kai-Heng Feng  2020-02-05  4035  	device_unlock(dev);
9474933caf21a4 drivers/net/ethernet/intel/igb/igb_main.c Todd Fujinaka  2016-11-15 @4036  	return 0;
749ab2cd127046 drivers/net/ethernet/intel/igb/igb_main.c Yan, Zheng     2012-01-04  4037  }
749ab2cd127046 drivers/net/ethernet/intel/igb/igb_main.c Yan, Zheng     2012-01-04  4038  

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
