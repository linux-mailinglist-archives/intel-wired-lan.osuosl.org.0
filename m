Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 559DE855AF7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 08:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1615482F32;
	Thu, 15 Feb 2024 07:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AZjUbldp7clx; Thu, 15 Feb 2024 07:01:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0380882F39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707980496;
	bh=VoLUIX8u33n0q3TxwS0HmTEIs1TM5oAx2BX97vu864o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Enp2xcDPAlY/pKcbl/MwVrKg/AlrdcDumnMA+AMO5tMVfeDPIgufCV5nodM16g4vA
	 6F0ARxLL8lXccZmrB6v0jREMPYh7O7nNiiYq1V+0yDaVCn7MYi0QMcEvRZWSI4vtmP
	 EuATH/obvsdkKOlSipnXftcuO1AynQXbETc9/LSViZpmswwtpmPk3s4T0Xc7PhZPX+
	 gIZpi8lYuMl2iQVoGjtQYA3EJljCQWk3HqGGtaMJgFn1NPU3QhcOYdcagPMQLDoPxc
	 xlVVI3J4iXyOgpQBDZ8F1a0x9u2mQ4fgU1MdO9sEaqaFufWPxAl1UwIEA7T1Drhcjk
	 vQSXQw5Xz3beg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0380882F39;
	Thu, 15 Feb 2024 07:01:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05A9A1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 07:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D744982F06
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 07:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmTOnDNJAt9X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Feb 2024 07:01:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E3AD82EDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E3AD82EDB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E3AD82EDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Feb 2024 07:01:30 +0000 (UTC)
Received: from [192.168.0.224] (ip5f5aeca7.dynamic.kabel-deutschland.de
 [95.90.236.167])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A176561E5FE01;
 Thu, 15 Feb 2024 08:00:55 +0100 (CET)
Message-ID: <fc1be95d-b34b-4153-ba0b-f124180a33ec@molgen.mpg.de>
Date: Thu, 15 Feb 2024 08:00:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] drivers: net: Convert
 EEE handling to use linkmode bitmaps
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Andrew,


Thank you very much for this patch-set.


Am 15.02.24 um 12:13 AM schrieb Andrew Lunn:
> EEE has until recently been limited to lower speeds due to the use of
> the legacy u32 for link speeds. This restriction has been lifted, with
> the use of linkmode bitmaps. This patchset convert some MAC drivers

Maybe reference the commit introducing them?

One small nit: convert*s*

> still using the old _u32 to link modes, with the aim of soon being
> able to remove the legacy _u32 members in the keee structure.
> 
> A couple of Intel drivers do odd things with EEE, setting the autoneg
> bit. It is unclear why, no other driver does, ethtool does not display
> it, and EEE is always negotiated. One patch in this series deletes
> this code. Comments on why its actually useful and should be kept are
> gratefully received.

Nice find.


Kind regards,

Paul


> Signed-off-by: Andrew Lunn <andrew@lunn.ch>
> ---
> Changes in v2:
> - igb: Fix type 100BaseT to 1000BaseT.
> - Link to v1: https://lore.kernel.org/r/20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch
> 
> ---
> Andrew Lunn (8):
>        net: usb: r8152: Use linkmode helpers for EEE
>        net: usb: ax88179_178a: Use linkmode helpers for EEE
>        net: qlogic: qede: Use linkmode helpers for EEE
>        net: ethernet: ixgbe: Convert EEE to use linkmodes
>        net: intel: i40e/igc: Remove setting Autoneg in EEE capabilities
>        net: intel: e1000e: Use linkmode helpers for EEE
>        net: intel: igb: Use linkmode helpers for EEE
>        net: intel: igc: Use linkmode helpers for EEE
> 
>   drivers/net/ethernet/intel/e1000e/ethtool.c      | 17 +++++--
>   drivers/net/ethernet/intel/i40e/i40e_ethtool.c   |  7 +--
>   drivers/net/ethernet/intel/igb/igb_ethtool.c     | 33 ++++++++-----
>   drivers/net/ethernet/intel/igc/igc_ethtool.c     | 13 ++---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 48 ++++++++++---------
>   drivers/net/ethernet/qlogic/qede/qede_ethtool.c  | 60 +++++++++++++++---------
>   drivers/net/usb/Kconfig                          |  1 +
>   drivers/net/usb/ax88179_178a.c                   |  9 ++--
>   drivers/net/usb/r8152.c                          | 31 ++++++------
>   9 files changed, 123 insertions(+), 96 deletions(-)
> ---
> base-commit: d1d77120bc2867b3e449e07ee656a26b2fb03d1e
> change-id: 20240204-keee-u32-cleanup-b86d68458d80
> 
> Best regards,
