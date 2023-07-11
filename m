Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C695E74E984
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 10:54:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D72074092D;
	Tue, 11 Jul 2023 08:54:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D72074092D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689065687;
	bh=Xbc2KnQ77ifEhra5yNHtXSwIoO0orhtpOv9P+T47MQU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=th+xsnonF9zwLxfNv41LfzESESTMuVv0qePme7rQjbQbH7T29nF5ZKoH0GI4tRL9J
	 mM3RMJuC7WPGyGI8sLnh9qVxtq3jQkewmglk88OtIFf22iGln8a24ahdiiT9w7dcuB
	 qLwYiIFFYy1Y7jkS/OrvUcHqCU3nxKDCsf6HLyOXN+xdx0VG+ll4Cann3OFljR3TfN
	 Z3JhhOZqQFuPQ/zgG49r0o3OiMpNGzktaq8hP7Ub/7B/idGkdFPcu2FypGdM7yQ5pV
	 6k6Za/2hb4h9lH57lkD95RCg5GOl4RLUpKgywd6QwGuQ7mmo0Yk2YwpQPjtAjvcqIL
	 4aVLElyEk48AQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQSiSqC5gPBW; Tue, 11 Jul 2023 08:54:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FD3B407D7;
	Tue, 11 Jul 2023 08:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FD3B407D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4661BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 08:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4562640919
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 08:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4562640919
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1KR4rPPPnsc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 08:54:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16DCB4090A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16DCB4090A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 08:54:38 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8F44361E5FE01;
 Tue, 11 Jul 2023 10:53:08 +0200 (CEST)
Message-ID: <f1f9002c-ccc3-a2de-e4f5-d8fa1f8734e3@molgen.mpg.de>
Date: Tue, 11 Jul 2023 10:53:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Su Hui <suhui@nfschina.com>
References: <20230710063828.172593-1-suhui@nfschina.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230710063828.172593-1-suhui@nfschina.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] Remove unnecessary
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
Cc: andrew@lunn.ch, irusskikh@marvell.com, kernel-janitors@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com,
 iyappan@os.amperecomputing.com, anthony.l.nguyen@intel.com,
 quan@os.amperecomputing.com, qiang.zhao@nxp.com, linux@armlinux.org.uk,
 xeb@mail.ru, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, yisen.zhuang@huawei.com, wg@grandegger.com,
 steve.glendinning@shawell.net, keyur@os.amperecomputing.com,
 linux-can@vger.kernel.org, mostrows@earthlink.net, mkl@pengutronix.de,
 salil.mehta@huawei.com, GR-Linux-NIC-Dev@marvell.com,
 uttenthaler@ems-wuensche.com, rmody@marvell.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, yunchuan@nfschina.com,
 linuxppc-dev@lists.ozlabs.org, skalluru@marvell.com, hkallweit1@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Su,


Thank you for your patch.

Am 10.07.23 um 08:38 schrieb Su Hui:
> From: wuych <yunchuan@nfschina.com>

Can you please write the full name correctly? Maybe Yun Chuan?

     git config --global user.name "Yun Chuan"
     git commit --amend --author="Yun Chuan <yunchuan@nfschina.com>"

I only got the cover letter by the way.


Kind regards,

Paul


> Changes in v2:
> 	move declarations to be reverse xmas tree.
> 	compile it in net and net-next branch.
> 	remove some error patches in v1.
> 
> PATCH v1 link:
> https://lore.kernel.org/all/20230628024121.1439149-1-yunchuan@nfschina.com/
> 
> wuych (10):
>    net: wan: Remove unnecessary (void*) conversions
>    net: atlantic: Remove unnecessary (void*) conversions
>    net: ppp: Remove unnecessary (void*) conversions
>    net: hns3: remove unnecessary (void*) conversions
>    net: hns: Remove unnecessary (void*) conversions
>    ice: remove unnecessary (void*) conversions
>    ethernet: smsc: remove unnecessary (void*) conversions
>    net: mdio: Remove unnecessary (void*) conversions
>    can: ems_pci: Remove unnecessary (void*) conversions
>    net: bna: Remove unnecessary (void*) conversions
> 
>   drivers/net/can/sja1000/ems_pci.c             |  6 +++---
>   .../aquantia/atlantic/hw_atl2/hw_atl2.c       | 12 ++++++------
>   .../atlantic/hw_atl2/hw_atl2_utils_fw.c       |  2 +-
>   drivers/net/ethernet/brocade/bna/bnad.c       | 19 +++++++++----------
>   .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  2 +-
>   drivers/net/ethernet/hisilicon/hns_mdio.c     | 10 +++++-----
>   drivers/net/ethernet/intel/ice/ice_main.c     |  4 ++--
>   drivers/net/ethernet/smsc/smsc911x.c          |  4 ++--
>   drivers/net/ethernet/smsc/smsc9420.c          |  4 ++--
>   drivers/net/mdio/mdio-xgene.c                 |  4 ++--
>   drivers/net/ppp/pppoe.c                       |  4 ++--
>   drivers/net/ppp/pptp.c                        |  4 ++--
>   drivers/net/wan/fsl_ucc_hdlc.c                |  6 +++---
>   13 files changed, 40 insertions(+), 41 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
