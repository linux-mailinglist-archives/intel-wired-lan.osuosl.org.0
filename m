Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC678E0B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 00:31:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B370203EA;
	Wed, 14 Aug 2019 22:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-7FV-u1Z+QO; Wed, 14 Aug 2019 22:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 550202044C;
	Wed, 14 Aug 2019 22:31:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 430CD1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 02:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 374F685FC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 02:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z0KId1y9ip61 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 02:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D70BA85FC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 02:22:52 +0000 (UTC)
Received: from DGGEMM404-HUB.china.huawei.com (unknown [172.30.72.56])
 by Forcepoint Email with ESMTP id 222BE811914A9E81D457
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 10:22:50 +0800 (CST)
Received: from dggeme758-chm.china.huawei.com (10.3.19.104) by
 DGGEMM404-HUB.china.huawei.com (10.3.20.212) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 14 Aug 2019 10:22:49 +0800
Received: from [127.0.0.1] (10.40.49.11) by dggeme758-chm.china.huawei.com
 (10.3.19.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1591.10; Wed, 14
 Aug 2019 10:22:49 +0800
To: <jeffrey.t.kirsher@intel.com>, <intel-wired-lan@lists.osuosl.org>
From: Jay Fang <f.fangjian@huawei.com>
Message-ID: <d90328f7-68b7-6536-d9ca-93323c706602@huawei.com>
Date: Wed, 14 Aug 2019 10:23:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.40.49.11]
X-ClientProxiedBy: dggeme705-chm.china.huawei.com (10.1.199.101) To
 dggeme758-chm.china.huawei.com (10.3.19.104)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 14 Aug 2019 22:31:03 +0000
Subject: [Intel-wired-lan] [ixgbe] Is this a bug? When i do "echo 0 >
 srivo_numvfs" and then the driver print "failed to kill vid 0081/0 for
 device eth15"
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

Hi,
When i do "echo 0 > srivo_numvfs" and then the driver print "failed to
kill vid 0081/0 for device eth10". Does Anyone know about this?

The log is as below:
root:/sys/devices/pci0000:80/0000:80:04.0/0000:82:00.0$ uname -a
Linux (none) 4.19.36-g4ce0944 #1 SMP PREEMPT Mon Aug 12 16:52:59 HKT 2019 aarch64 GNU/Linux
root:/sys/devices/pci0000:80/0000:80:04.0/0000:82:00.0$ ifconfig eth10 192.168.1.79
[  691.077904] ixgbevf 0000:82:10.0: NIC Link is Up 10 Gbps
[  691.079534] IPv6: ADDRCONF(NETDEV_UP): eth10: link is not ready
[  691.089090] 8021q: adding VLAN 0 to HW filter on device eth10
[  691.095377] IPv6: ADDRCONF(NETDEV_CHANGE): eth10: link becomes ready
root:/sys/devices/pci0000:80/0000:80:04.0/0000:82:00.0$ echo 0 > sriov_numvfs
[  702.758155] failed to kill vid 0081/0 for device eth10
[  702.848257] iommu: Removing device 0000:82:10.0 from group 44
[  703.980171] ixgbe 0000:82:00.0: removed PHC on eth6
[  704.049475] ixgbe 0000:81:00.0 eth4: NIC Link is Down
[  704.051497] ixgbe 0000:82:00.0: Multiqueue Enabled: Rx Queue count = 63, Tx Queue count = 63 XDP Queue count = 0
[  704.382823] ixgbe 0000:82:00.0: registered PHC device on eth6



Best Regards,
Jay

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
