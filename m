Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8717E7414A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 17:12:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2117F41B67;
	Wed, 28 Jun 2023 15:12:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2117F41B67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687965170;
	bh=mlTZtfLk5yBd9UPLvLXh0R3ALZRVUNeUqkuZRbYfKgY=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lWamfAY2YYtO77KP2xBTv8K5uBF+si9HMBzGYGThkCbZA0b1qmNdjBiRKpMj3gJCR
	 JD033XERX5xXsaB7NQo4fA8h1rdT0Jfyr79ApGsyHDdeM0okoL+vdzexm/JrsBGA36
	 jBElgQMuO/jL0+9AoPImYsF9z4tP/VkOXZXQBJqpgz4ECeJ0TimkqRsXmox/ixogDS
	 OueD4l1JPinh7krjCkec+g6+rRnG9bs8Ud6xUS9gFQubBMEy6kspbFQGfVi39C56Xz
	 juhaWepGsZIJSWTrs4U66oZbQAeym79IupjHwIrEEbLFDB3HVusGtL7Eq5O6UA5Ftk
	 N00JaZE3ux4wA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xx8S1zqgYu8g; Wed, 28 Jun 2023 15:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B537441933;
	Wed, 28 Jun 2023 15:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B537441933
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC001BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 07:41:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4526681E5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 07:41:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4526681E5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ys9rtIrL1uWA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 07:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2F2781E51
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2F2781E51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 07:41:34 +0000 (UTC)
Received: from dggpemm500005.china.huawei.com (unknown [172.30.72.53])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4QrYNB6tBxzMpWw;
 Wed, 28 Jun 2023 15:38:18 +0800 (CST)
Received: from [10.67.102.37] (10.67.102.37) by dggpemm500005.china.huawei.com
 (7.185.36.74) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 28 Jun
 2023 15:41:29 +0800
To: wuych <yunchuan@nfschina.com>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <olteanv@gmail.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <irusskikh@marvell.com>,
 <yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>,
 <jesse.brandeburg@intel.com>, <anthony.l.nguyen@intel.com>,
 <steve.glendinning@shawell.net>, <iyappan@os.amperecomputing.com>,
 <keyur@os.amperecomputing.com>, <quan@os.amperecomputing.com>,
 <hkallweit1@gmail.com>, <linux@armlinux.org.uk>, <mostrows@earthlink.net>,
 <xeb@mail.ru>, <qiang.zhao@nxp.com>
References: <20230628024121.1439149-1-yunchuan@nfschina.com>
From: Hao Lan <lanhao@huawei.com>
Message-ID: <1f5652f7-7eb2-11f0-4a07-c87f2992e509@huawei.com>
Date: Wed, 28 Jun 2023 15:41:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20230628024121.1439149-1-yunchuan@nfschina.com>
X-Originating-IP: [10.67.102.37]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500005.china.huawei.com (7.185.36.74)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 28 Jun 2023 15:12:43 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Remove unnecessary
 (void*) conversions
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
 linux-kernel@vger.kernel.org, linux@rempel-privat.de,
 intel-wired-lan@lists.osuosl.org, yangyingliang@huawei.com,
 linuxppc-dev@lists.ozlabs.org, ansuelsmth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2023/6/28 10:41, wuych wrote:
> Remove (void*) conversions under "drivers/net" directory.
> According to the suggestion[1] of Jakub Kicinski, send these patches
> in series of 10. 
> 
> wuych (10):
>   net: dsa: ar9331: remove unnecessary (void*) conversions
>   net: dsa: qca8k: remove unnecessary (void*) conversions
>   atlantic:hw_atl2:hw_atl2_utils_fw: Remove unnecessary (void*)
>     conversions
>   ice: Remove unnecessary (void*) conversions
>   ethernet: smsc: remove unnecessary (void*) conversions
>   net: hns: Remove unnecessary (void*) conversions
>   net: hns3: remove unnecessary (void*) conversions
>   net: mdio: Remove unnecessary (void*) conversions
>   net: ppp: remove unnecessary (void*) conversions
>   net: wan: Remove unnecessary (void*) conversions
> 

Hi wuych,
Thank you for your patch.
The following two patches conflict with the net-next branch, and others have modified the related code.
Please compile your series in net and net-next branch and upload your series again.
  net: dsa: ar9331: remove unnecessary (void*) conversions
  net: dsa: qca8k: remove unnecessary (void*) conversions

Yours,
Hao Lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
