Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2C8A95C3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 11:13:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8D084159A;
	Thu, 18 Apr 2024 09:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aIlqgevpL8Ip; Thu, 18 Apr 2024 09:13:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C6B4159C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713431629;
	bh=K/KzzeU25/s0xz/auM3Oi5MCh7TSjDVlwvMCr/DgP48=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k5/oDea1AYUnb/+ujc81im6heNsbeguXGD33n9m8yvfSAMX0xMxqSMmde5tP+4nIC
	 KR9R86zzJEsr2qjbddeV3W7qjFeUDwLg+nx5eyw2pD/TzgFfEMmzHN56M0MdTOkq2O
	 Q31PymazTvAtEmFbhJFgxAwTrIw1C+CCNHlJr/WtzH32q7JjShZ+HR5nRn1hyztgao
	 IyTS8b0vNDBGEPvthohattSqgHwALaB8B4u9yUvKPe9gZDCyTpFw/LyPjxz9GhaIu7
	 a4BAJGry9g0tmFK1R6MEmjumF7lnMbucrosX4w7+uKs7qA/GlN5Us3XquDQqq165Wd
	 OXVgguot8jm1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7C6B4159C;
	Thu, 18 Apr 2024 09:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0D01BF32E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 09:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7967040126
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 09:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t6kl7TzRSfV6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 09:13:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=naamax.meir@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18B874011E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18B874011E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18B874011E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 09:13:45 +0000 (UTC)
X-CSE-ConnectionGUID: 8ii03wsDR++ZYauGyWAj0Q==
X-CSE-MsgGUID: PMfrgsE6QZutwyx+VuPlCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="31446461"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="31446461"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 02:13:41 -0700
X-CSE-ConnectionGUID: Q80yaZIkSROABstXCsNY9g==
X-CSE-MsgGUID: q9OQ6LECSp20L9+ZHhLUXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="53852345"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.245.136.172])
 ([10.245.136.172])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 02:13:37 -0700
Message-ID: <ebb704a3-eb09-4433-8858-990e17a87721@linux.intel.com>
Date: Thu, 18 Apr 2024 12:13:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713431626; x=1744967626;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rQGVQURqecrBOAPb1l2hVI6jUgQPxnMOVRcXI3wTpIM=;
 b=DnUXUTKQ/SJjWfRvGTyIzM0pnyG3pLYXncfLylWFSvRPdBj4SJRtuAK+
 EKCeXAN/phe0SLzEh8tDagjV/h/K5NNfGDgq+2y58WUxUTJuk3DIBmBEf
 eEzC/GLoEVOvCRcbhz6dpBBlHmJHJaSPtP+uT/7yUIipt85WurPN6Qa/P
 eoZ/kIL8MgsFTQt0cpEd5H41uTnWTdWdtSVEzoEDASLqhJvJhsad8qteu
 8hrE8x+KOhTF5ZwZPaghpeQBvuV2TDdkU6TsJjMIBNnuKZUKYlfwiQNiI
 xwfTj2VBM42H3HWnxIaHEpvxy7hamOhCUcEmXYhViS88ZnlT6Wo44xIAk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DnUXUTKQ
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix LED-related deadlock on
 driver unbind
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 Roman Lozko <lozko.roma@gmail.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/15/2024 16:48, Lukas Wunner wrote:
> Roman reports a deadlock on unplug of a Thunderbolt docking station
> containing an Intel I225 Ethernet adapter.
> 
> The root cause is that led_classdev's for LEDs on the adapter are
> registered such that they're device-managed by the netdev.  That
> results in recursive acquisition of the rtnl_lock() mutex on unplug:
> 
> When the driver calls unregister_netdev(), it acquires rtnl_lock(),
> then frees the device-managed resources.  Upon unregistering the LEDs,
> netdev_trig_deactivate() invokes unregister_netdevice_notifier(),
> which tries to acquire rtnl_lock() again.
> 
> Avoid by using non-device-managed LED registration.
> 
> Stack trace for posterity:
> 
>    schedule+0x6e/0xf0
>    schedule_preempt_disabled+0x15/0x20
>    __mutex_lock+0x2a0/0x750
>    unregister_netdevice_notifier+0x40/0x150
>    netdev_trig_deactivate+0x1f/0x60 [ledtrig_netdev]
>    led_trigger_set+0x102/0x330
>    led_classdev_unregister+0x4b/0x110
>    release_nodes+0x3d/0xb0
>    devres_release_all+0x8b/0xc0
>    device_del+0x34f/0x3c0
>    unregister_netdevice_many_notify+0x80b/0xaf0
>    unregister_netdev+0x7c/0xd0
>    igc_remove+0xd8/0x1e0 [igc]
>    pci_device_remove+0x3f/0xb0
> 
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Reported-by: Roman Lozko <lozko.roma@gmail.com>
> Closes: https://lore.kernel.org/r/CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com/
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  2 ++
>   drivers/net/ethernet/intel/igc/igc_leds.c | 38 ++++++++++++++++++++++++-------
>   drivers/net/ethernet/intel/igc/igc_main.c |  3 +++
>   3 files changed, 35 insertions(+), 8 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
