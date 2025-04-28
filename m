Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6183AA9F134
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 14:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17CD360A9C;
	Mon, 28 Apr 2025 12:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Y9SjBncW5NX; Mon, 28 Apr 2025 12:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80D8F60AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745844270;
	bh=vT4WXuFpHYGOswFNiib6jkeBJ7okfXM3MkZ4Yk+ZYuo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UcBVKnMY/rnyfnskJ6V1fuZQYu13fd7re+BdWfoG4rZ8cHFK0weNkxEyWjjaRaB3x
	 4Ui5nIc5lO0ZBaH4jtuOvrxLhFKEG+OpYCky80afho9hXVJBRBMksGelGP6DrEwiSQ
	 RKkzIaQT+YlIHH3zKNuCkNi0I+Z6zvTlsrI8XL7tVoLlJJ2pjwXUBjJBLY9OE76ikY
	 rMQBvfx96X7IBr7WGswPvbhZUJ0Kc8lrM8XC680t+7YlwwMzabrsBnXbVr19QV19Wn
	 CCpBD6xUY1VEP/D7Xb7m8RqK2iuESspjtulKMmrK69A5+eqYHz4SKUu7bCG4ysoVYD
	 893T3IMhleAtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80D8F60AA6;
	Mon, 28 Apr 2025 12:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 82400194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 12:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73A6B811E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 12:44:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2KHl3MdXYBUc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 12:44:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4F2A811D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4F2A811D5
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4F2A811D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 12:44:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5F9246115B;
 Mon, 28 Apr 2025 12:44:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D485AC4CEE4;
 Mon, 28 Apr 2025 12:44:24 +0000 (UTC)
Date: Mon, 28 Apr 2025 13:44:22 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250428124422.GB3339421@horms.kernel.org>
References: <20250424135012.5138-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424135012.5138-2-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745844266;
 bh=gf4bPSuQPO48PU6kXW3j85ZlD9gokzHqQcTu5mNH+Vs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bEeG0qDTG9MRDU7yK69hacuuSyU+E0pCKPkZvYjTHQICtLa7x5S0HYoa3Rjnzl09i
 rmZTl77t1hit5WvRRSUIz9Th2LVO7R/10vfWIYL5qy8+cozb3N9/TmHvac9YmA7li2
 pKe83ouhpJpg5are7Wl2iQuQ+M4fdoYSQdGNjfb3JvDEgoWiMnv0ITqNPzLFxS4zwJ
 kBA7HsnGeUzQUbvDfAXRWln8YoO7xnjBCaeMclyQyseQSaJITSXW874tedbcW9KgBk
 GsXpMRl79yRgc7lLPqu4gp1q5pUQGZbzn7GIr9/HG4Q6q0k/Njs9XV4OJtF1H8YE7U
 RKLwLKe5pfh1Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bEeG0qDT
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix reset_task for
 early reset event
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

On Thu, Apr 24, 2025 at 03:50:13PM +0200, Marcin Szycik wrote:
> From: Ahmed Zaki <ahmed.zaki@intel.com>
> 
> If a reset event is received from the PF early in the init cycle, the
> state machine hangs for about 25 seconds.
> 
> Reproducer:
>   echo 1 > /sys/class/net/$PF0/device/sriov_numvfs
>   ip link set dev $PF0 vf 0 mac $NEW_MAC
> 
> The log shows:
>   [792.620416] ice 0000:5e:00.0: Enabling 1 VFs
>   [792.738812] iavf 0000:5e:01.0: enabling device (0000 -> 0002)
>   [792.744182] ice 0000:5e:00.0: Enabling 1 VFs with 17 vectors and 16 queues per VF
>   [792.839964] ice 0000:5e:00.0: Setting MAC 52:54:00:00:00:11 on VF 0. VF driver will be reinitialized
>   [813.389684] iavf 0000:5e:01.0: Failed to communicate with PF; waiting before retry
>   [818.635918] iavf 0000:5e:01.0: Hardware came out of reset. Attempting reinit.
>   [818.766273] iavf 0000:5e:01.0: Multiqueue Enabled: Queue pair count = 16
> 
> Fix it by scheduling the reset task and making the reset task capable of
> resetting early in the init cycle.
> 
> Fixes: ef8693eb90ae3 ("i40evf: refactor reset handling")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Tested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> This should be applied after "iavf: get rid of the crit lock"

Reviewed-by: Simon Horman <horms@kernel.org>

