Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C26AD9971
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 03:30:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EA9384383;
	Sat, 14 Jun 2025 01:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mk347xDutXu7; Sat, 14 Jun 2025 01:30:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 778D284388
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749864621;
	bh=l6in9vSiJziUCoNCgpsKu2iqEIWPOn/GKOevJIjhTcM=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=76OEt6DRR6IBdCVqun1/P/gUczr72EAzlZUMDaKNx4l91bxYwDgX0O7ZNrZaMwMFA
	 u1gOMYvN8Z6jFOdbhgcEWgkLPcvgVXBtDWzDyc4tIKNIOeuldHFabnZQuL0dbtnGd/
	 gm1hoWRFXiAkee8lg4vkwRppnQiRO5v8FQoeChqvXOCeBOaLPKw/S8r4kaXJt+XLHj
	 b8UnwjJvz/GmMcGVkKyKU/0LlDrp1SS0FB8sj9UGcthkzI2JZn1FhrcgERl7v0OWAC
	 5VHooiEIrqIoOF5bdZEK5Q4OrzYZzg6pawt7kK4fwfabkhyK9z7Of8Ig3holaZCxlz
	 s6FOh97NS3P8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 778D284388;
	Sat, 14 Jun 2025 01:30:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 41CD5151
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 01:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F6F040187
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 01:30:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ixbaiYz2xUsV for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 01:30:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=patchwork-bot+netdevbpf@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B60E40122
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B60E40122
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B60E40122
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 01:30:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D417A448FA;
 Sat, 14 Jun 2025 01:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1359C4CEE3;
 Sat, 14 Jun 2025 01:30:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70CBA380AAD0; Sat, 14 Jun 2025 01:30:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <174986464799.950968.5025787246516730195.git-patchwork-notify@kernel.org>
Date: Sat, 14 Jun 2025 01:30:47 +0000
References: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
To: Kubalewski@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org,
 Arkadiusz <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749864618;
 bh=BOUQQm7YC/kdLqzLOm9kVlopGQIxbesBZW/qKm13bNM=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EL1piyIMN0gmQW8PIlwyk8n47hfqlQdRkpWECjz2k5I0WjcOs3LRaEPxI3aqFngBD
 lT6LAJ+4oxSCCGT2lxwT+MfAWw9rk5W3NYR7f/lDoGxQ3+oaAmreiVA3v9UKol23ZC
 wzgF7Mx2ee4ddsI7ciQ0O3SU1Orgf5ef2P22Mvix2FpIAIOl+/ZmAE9qGMi3ff3KCO
 ezsXUs4nRb7Ngl4WDhv1miP2uql/j6zHciR5zh+jKpMILCJH7kn3Q3FPa1z6sv7Iqe
 psia8ChZoOAxbgkPPo6kDgu0OS0v/SKc7EDT7S0rNWOGpljON0z5/CFXo5hVP8rCPv
 iE6xppgOxMN2g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=EL1piyIM
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/3] dpll: add all inputs
 phase offset monitor
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu, 12 Jun 2025 17:28:32 +0200 you wrote:
> Add dpll device level feature: phase offset monitor.
> 
> Phase offset measurement is typically performed against the current active
> source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
> the capability to monitor phase offsets across all available inputs.
> The attribute and current feature state shall be included in the response
> message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL devices.
> In such cases, users can also control the feature using the
> ``DPLL_CMD_DEVICE_SET`` command by setting the ``enum dpll_feature_state``
> values for the attribute.
> Once enabled the phase offset measurements for the input shall be returned
> in the ``DPLL_A_PIN_PHASE_OFFSET`` attribute.
> 
> [...]

Here is the summary with links:
  - [net-next,v6,1/3] dpll: add phase-offset-monitor feature to netlink spec
    https://git.kernel.org/netdev/net-next/c/c035e7360380
  - [net-next,v6,2/3] dpll: add phase_offset_monitor_get/set callback ops
    https://git.kernel.org/netdev/net-next/c/2952daf44a84
  - [net-next,v6,3/3] ice: add phase offset monitor for all PPS dpll inputs
    https://git.kernel.org/netdev/net-next/c/863c7e505936

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


