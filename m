Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A77ADB95D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A20F60899;
	Mon, 16 Jun 2025 19:12:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ha8quvIR0Wy1; Mon, 16 Jun 2025 19:12:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4CC9608A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750101167;
	bh=RC534cL5RgGEKNjy5qib9pPr662cErAWV1wmSNEsbKE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EIC2qzMfxdM7BLbP6hpLl4DyUGjDHj9JivwgL2Ql/GzwPfikDNWDJcD5UW3xMpDUr
	 6ji4bpAbiDY8S5lGysnKzD3PAwF15CidrB2NPQnJ0BnWh2mKoLZcOZrVFWhrA8XyWc
	 O2hdhNMIvJ+gwOxQJnlyJHJBl7n+XhkVf8sKR/YEZowztKJffcfuQvaQnuGxHeeqfD
	 OpPXwSVEh3KWC0movfYeo61JKUVTqShQxJcATC6KveXNogok7Ypvh4ObFb7RjZdeyD
	 HUwEALOy3QzYvNiPPlB1xSnN75heE6BWX3sdkvWy93f66q2KKHF0zwtbH6QPsa0kxA
	 5fzIlQYA3rWXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4CC9608A1;
	Mon, 16 Jun 2025 19:12:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EDC19D79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF4AD605A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:12:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1gcC-jM2ZavJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:12:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3FA1860809
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3FA1860809
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FA1860809
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:12:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7D8DA5C6226;
 Mon, 16 Jun 2025 19:10:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A741C4CEEA;
 Mon, 16 Jun 2025 19:12:43 +0000 (UTC)
Date: Mon, 16 Jun 2025 20:12:41 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250616191241.GA5000@horms.kernel.org>
References: <20250616133636.1304288-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616133636.1304288-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750101164;
 bh=qVJC0Jq5poFM3IBhFjuHL+kZQBVPM3oCduYAggCip+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pp5MIYzyAJc1jvP6rGC+ozGOdEWsK81CRpRE0pvrgMo4gtsYAUdkWBFisrAQdxVDk
 ebHtq+OHl/DZ8tAUHG1K7hjSQg9sCNR5mnPxjQNyRbF8oAx/829qzWOoetCNMzmlsZ
 EIygLJbSrCbgv/SlaNEqCIToUPKrfzEwHO9FtbTdpEdUp1a4oLXK/E/s77SNTFC+8u
 nAukyDgxIQT82XvB/2jUIWl/6VmfU7vK4q5XhXY9zTFJO8YWuVCHocBhOPRbDN1Lwj
 amLNlvNbna4LgUEoufL4n5FSYZW4u0nd09rmHmEEpZsJYcSUSa4ILPUvlP2wI59/X/
 mD1bBm+hvX4zQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Pp5MIYzy
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: initialize aci.lock
 before it's used
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

On Mon, Jun 16, 2025 at 03:36:36PM +0200, Jedrzej Jagielski wrote:
> Currently aci.lock is initialized too late. A bunch of ACI callbacks
> using the lock are called prior it's initialized.
> 
> Commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path")
> highlights that issue what results in call trace.
> 
> [    4.092899] DEBUG_LOCKS_WARN_ON(lock->magic != lock)
> [    4.092910] WARNING: CPU: 0 PID: 578 at kernel/locking/mutex.c:154 mutex_lock+0x6d/0x80
> [    4.098757] Call Trace:
> [    4.098847]  <TASK>
> [    4.098922]  ixgbe_aci_send_cmd+0x8c/0x1e0 [ixgbe]
> [    4.099108]  ? hrtimer_try_to_cancel+0x18/0x110
> [    4.099277]  ixgbe_aci_get_fw_ver+0x52/0xa0 [ixgbe]
> [    4.099460]  ixgbe_check_fw_error+0x1fc/0x2f0 [ixgbe]
> [    4.099650]  ? usleep_range_state+0x69/0xd0
> [    4.099811]  ? usleep_range_state+0x8c/0xd0
> [    4.099964]  ixgbe_probe+0x3b0/0x12d0 [ixgbe]
> [    4.100132]  local_pci_probe+0x43/0xa0
> [    4.100267]  work_for_cpu_fn+0x13/0x20
> [    4.101647]  </TASK>
> 
> Move aci.lock mutex initialization to ixgbe_sw_init() before any ACI
> command is sent. Along with that move also related SWFW semaphore in
> order to reduce size of ixgbe_probe() and that way all locks are
> initialized in ixgbe_sw_init().
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

