Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4C16B1C88
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 08:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B175E418B7;
	Thu,  9 Mar 2023 07:40:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B175E418B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678347638;
	bh=dPiasY9p1aq265p9bLXV9cjVrPOGiLWphdrjK7n/WNI=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AyZca0URb8AjTl5gxjE6BiI4gloGcJa1NoCzW4zSWz+IxlxmHkPVmqnR2IqmnkOZt
	 wB8l+gDzmtOxk0d31uR9g00iHnteLj5my3ztMEvJV2AOw1RB+vXBU4KIL5O6Lwzsgs
	 pcmsPWctyc8DBZgAAFiwAyKo7e2Iwpbbmg5Os1wxd2beQpICEn9UURzMEa525KzUkQ
	 PYSt2ov+rMg541FFExC15LF9KYoSc+OEEPNrDdOYjRUIlqQMdIQjm3sQxGJFVadoGy
	 guL5yk2tvNld5He/yBpyEuVcQryWesa/HT2x0XpOwJrY0caxNWQN2MP8FxXuG5g+GT
	 iXO1jdDH5aqMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aFUbk4Ssl5Qw; Thu,  9 Mar 2023 07:40:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7F20418B5;
	Thu,  9 Mar 2023 07:40:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7F20418B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89F131BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 07:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DCC0418B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 07:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DCC0418B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASQSyR1G_X5L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 07:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1869418B3
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1869418B3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 07:40:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 65C25CE1FF1;
 Thu,  9 Mar 2023 07:40:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79A9C433D2;
 Thu,  9 Mar 2023 07:40:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 A1B08E61B6E; Thu,  9 Mar 2023 07:40:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167834762365.29033.5915436899896564508.git-patchwork-notify@kernel.org>
Date: Thu, 09 Mar 2023 07:40:23 +0000
References: <20230307181940.868828-1-helgaas@kernel.org>
In-Reply-To: <20230307181940.868828-1-helgaas@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1678347623;
 bh=HHYt8aLbuz6IkOfI+LhZEtJr3IrwCVJJ/+VHPDerd9I=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=WWPk3rpjhXS8Pe/26VtnKCNwxZ0rHPPuWD/ExvR4vsiNIfCyq47kGQt/HgS9jZQql
 objQ1HyVarLMAKrdj2L4TnugQwbme5vwr+waQUIRqmYUHIN4kdj8M8WPMi+8VWlQzB
 2JCbyRJxw5+kuhCdB2Sy1tp2H9JnZXe8szA2YAyIWLQ6WgILO9tPNX0TE4GVeGOsWR
 GEJQR+5zjik4LlZD5+HCLAV73OmHS1DoUkYkklgUCX4P/w1iwXDGdlHmnmlqExrm0a
 aySBuZ5tueldk46sz1zykxQoUxKa70kcnK8zIhhV4DI/w/7SHbwrqr/qajPU1qODk+
 jwCMhFaICRHqg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WWPk3rpj
Subject: Re: [Intel-wired-lan] [PATCH 00/28] PCI/AER: Remove redundant
 Device Control Error Reporting Enable
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
Cc: ajit.khaparde@broadcom.com, chris.snook@gmail.com,
 GR-Linux-NIC-Dev@marvell.com, somnath.kotur@broadcom.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, manishc@marvell.com, rahulv@marvell.com,
 jesse.brandeburg@intel.com, yisen.zhuang@huawei.com,
 intel-wired-lan@lists.osuosl.org, vburru@marvell.com, habetsm.xilinx@gmail.com,
 pabeni@redhat.com, aayarekar@marvell.com, shshaikh@marvell.com,
 aelior@marvell.com, jiawenwu@trustnetic.com, kuba@kernel.org,
 bhelgaas@google.com, michael.chan@broadcom.com, salil.mehta@huawei.com,
 mengyuanlou@net-swift.com, sriharsha.basavapatna@broadcom.com,
 rmody@marvell.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 skalluru@marvell.com, ecree.xilinx@gmail.com, rajur@chelsio.com,
 dmichail@fungible.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Tue,  7 Mar 2023 12:19:11 -0600 you wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is native"),
> which appeared in v6.0, the PCI core has enabled PCIe error reporting for
> all devices during enumeration.
> 
> Remove driver code to do this and remove unnecessary includes of
> <linux/aer.h> from several other drivers.
> 
> [...]

Here is the summary with links:
  - [01/28] alx: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/1de2a84dd060
  - [02/28] be2net: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/b4e24578b484
  - [03/28] bnx2: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/5f00358b5e90
  - [04/28] bnx2x: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/2fba753cc9b5
  - [05/28] bnxt: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/5f29b73d4eba
  - [06/28] cxgb4: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/ca7f175fc24e
  - [07/28] net/fungible: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/49f79ac22f89
  - [08/28] net: hns3: remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/c183033f631a
  - [09/28] netxen_nic: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/2d0e0372069d
  - [10/28] octeon_ep: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/fe3f4c292da1
  - [11/28] qed: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/1263c7b78315
  - [12/28] net: qede: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/5f1fbdc168f4
  - [13/28] qlcnic: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/95e35f599407
  - [14/28] qlcnic: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/e07ce5567194
  - [15/28] sfc: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/bdedf705688c
  - [16/28] sfc: falcon: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/4ac9272691a4
  - [17/28] sfc/siena: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/ecded61ceb89
  - [18/28] sfc_ef100: Drop redundant pci_disable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/c39abdd396bc
  - [19/28] net: ngbe: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/a7edf8e5142f
  - [20/28] net: txgbe: Drop redundant pci_enable_pcie_error_reporting()
    https://git.kernel.org/netdev/net-next/c/1fccc781bf7e
  - [21/28] e1000e: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/ab76f2bff0f3
  - [22/28] fm10k: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/8be901a6715f
  - [23/28] i40e: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/acd2bb015fae
  - [24/28] iavf: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/495b72c79302
  - [25/28] ice: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/ddd652ef30e3
  - [26/28] igb: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/648a2020fdac
  - [27/28] igc: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/1530522f101f
  - [28/28] ixgbe: Remove unnecessary aer.h include
    https://git.kernel.org/netdev/net-next/c/f3468e394439

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
