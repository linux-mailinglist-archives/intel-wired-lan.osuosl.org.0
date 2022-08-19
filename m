Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B0B599D1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 15:50:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C56761222;
	Fri, 19 Aug 2022 13:50:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C56761222
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660917014;
	bh=Cf73wCaMX/e4ox1c7EAvlgJi5HzmkZdrpNuOAAtsLVk=;
	h=To:From:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=48j3UfLYdzb6Z51tITJz3KkgTpinZSUIvT/clG+3FCuTKOkfijM2URjU1zafgn94X
	 oLpslCocFZ8/V9QmLw1AVMFwqrzQt0uReq8JUYlzvNZarzQYTe+fANdOZa7LYj3LZs
	 cA4DjkOhUf9rTPQblsKQQDrU/E6M7jLsIo2VyY6Rs9XyG2xqLRjQBSgDMQnLuiLtZb
	 +uFuMlotInVUcPje9NmgfzY+yD4Ijqj1ZRdsld6HNRBN+LhmqmLAjvq2cGP7e8X/V5
	 IFKrzA6o3tV8IOqTbq4bYGOS+rJyFCTCg6PJx92fswXxMiNPXY1fCempXBQ+QPunvQ
	 hg7UJY2vGLJHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31ntejBjPycH; Fri, 19 Aug 2022 13:50:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48C4560AD8;
	Fri, 19 Aug 2022 13:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48C4560AD8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 868EC1BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E82941CC6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:22:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E82941CC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Go6ICCgjTsb0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 10:21:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A3AE41CC2
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A3AE41CC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 10:21:54 +0000 (UTC)
Received: from canpemm500009.china.huawei.com (unknown [172.30.72.53])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4M8HlQ2BYBzkWMp;
 Fri, 19 Aug 2022 18:18:26 +0800 (CST)
Received: from [10.67.102.169] (10.67.102.169) by
 canpemm500009.china.huawei.com (7.192.105.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 19 Aug 2022 18:21:49 +0800
To: <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>
From: Yicong Yang <yangyicong@huawei.com>
Message-ID: <9f37e68c-e960-5188-f52a-4761866c37ad@huawei.com>
Date: Fri, 19 Aug 2022 18:21:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
X-Originating-IP: [10.67.102.169]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 canpemm500009.china.huawei.com (7.192.105.203)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 19 Aug 2022 13:50:02 +0000
Subject: [Intel-wired-lan] [ISSUE] Cannot enable VF after remove/rescan
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
Cc: netdev@vger.kernel.org, Linuxarm <linuxarm@huawei.com>,
 zhoulei154@h-partners.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, yangyicong@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Ixgbe maintainers,

We met an issue that the VF of 82599 cannot be enabled after remove and rescan the PF device.
The PCI hierarchy on our platform is like:
[...]
 +-[0000:80]-+-00.0-[81]--
 |           +-04.0-[82]--
 |           +-08.0-[83]--+-00.0  Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection
 |           |            \-00.1  Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connection
 |           \-10.0-[84]--
[...]

We operated like below:

[root@localhost ~]# cat /sys/class/net/enp131s0f0/device/sriov_numvfs
0
[root@localhost ~]# echo 1 > /sys/class/net/enp131s0f0/device/sriov_numvfs   # enable 1 VF
[root@localhost ~]# echo 1 > /sys/bus/pci/devices/0000:83:00.0/remove        # remove the PF
[root@localhost ~]# echo 1 > /sys/bus/pci/rescan                             # rescan the PF
[root@localhost ~]# cat /sys/class/net/enp131s0f0/device/sriov_numvfs
0
[root@localhost ~]# echo 1 > /sys/class/net/enp131s0f0/device/sriov_numvfs   # attemp to enable the VF
[  433.568996] ixgbe 0000:83:00.0 enp131s0f0: SR-IOV enabled with 1 VFs
[  433.639027] ixgbe 0000:83:00.0: Multiqueue Enabled: Rx Queue count = 4, Tx Queue count = 4 XDP Queue count = 0
[  433.652932] ixgbe 0000:83:00.0: can't enable 1 VFs (bus 84 out of range of [bus 83])
[  433.661228] ixgbe 0000:83:00.0: Failed to enable PCI sriov: -12
-bash: echo: write error: Cannot allocate memory


A further investigation shows that the SRIOV offset changed after the rescan, so we cannot find
an available PCI bus (it's already occupied) for the VF device:

Before the remove:
[root@localhost ~]# lspci -vvs 83:00.0
        Capabilities: [160 v1] Single Root I/O Virtualization (SR-IOV)
                IOVCap: Migration- 10BitTagReq- Interrupt Message Number: 000
                IOVCtl: Enable- Migration- Interrupt- MSE- ARIHierarchy+ 10BitTagReq-
                IOVSta: Migration-
                Initial VFs: 64, Total VFs: 64, Number of VFs: 0, Function Dependency Link: 00
                VF offset: 128, stride: 2, Device ID: 10ed
                Supported Page Size: 00000553, System Page Size: 00000001
                Region 0: Memory at 0000280000804000 (64-bit, prefetchable)
                Region 3: Memory at 0000280000904000 (64-bit, prefetchable)
                VF Migration: offset: 00000000, BIR: 0

After the rescan:
[root@localhost ~]# lspci -vvs 83:00.0
        Capabilities: [160 v1] Single Root I/O Virtualization (SR-IOV)
                IOVCap: Migration- 10BitTagReq- Interrupt Message Number: 000
                IOVCtl: Enable- Migration- Interrupt- MSE- ARIHierarchy- 10BitTagReq-
                IOVSta: Migration-
                Initial VFs: 64, Total VFs: 64, Number of VFs: 0, Function Dependency Link: 00
                VF offset: 384, stride: 2, Device ID: 10ed
                ^^^^^^^^^^^^^^
                           offset has changed
                Supported Page Size: 00000553, System Page Size: 00000001
                Region 0: Memory at 0000280000804000 (64-bit, prefetchable)
                Region 3: Memory at 0000280000904000 (64-bit, prefetchable)


We don't know why the SRIOV offset and stride changed and is there anything wrong. Any help on how
to illustrate or fix this is highly appreciated! Please let us know if more information is needed.

Thanks,
Yicong

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
