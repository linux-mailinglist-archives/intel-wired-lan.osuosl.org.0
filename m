Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E7FB501B2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Sep 2025 17:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48F5C4132C;
	Tue,  9 Sep 2025 15:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LwqR_kEXuVjl; Tue,  9 Sep 2025 15:43:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5EFA413C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757432610;
	bh=XVplyzM6BOwI9Tq6Au35JwRk0BAgwQZwEu51YbpWdn8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mXZ1IQTEPXqqo1ptxfXnZ42//wpelm8lEK8PKMtUjJ+Rq/GVGpZvTcl2+OI6CC6sJ
	 Xdd56XZHIKnAzDpfl3jEOi9rmD7Di6ch3UpsBTmauW32wkWz5ozUcHAHgWIIhplGAp
	 fDUV2Y/CJo5JMAYdTzeOHKjTZDgfQr6mXwFGuL+wW3TpT3wFcjLWkX7GX94HQg/WOu
	 N8wtzMfzyHzi7POjA6zZ5GpnrDgiFEgdoUBX2oa/Un0SkDMONUFvtQi9coYIE81k6j
	 F8wmx79xp2qQEpYqCQoST7ZiAmjUYjbL9q/1/Ab2Ph49ID7xfN1YkiR/ZRroG5bgck
	 SPBZRb/91wblw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5EFA413C3;
	Tue,  9 Sep 2025 15:43:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 200F9186
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 15:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11F5E401B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 15:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gtz7GJF0e057 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Sep 2025 15:43:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5931740028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5931740028
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5931740028
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Sep 2025 15:43:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D4785601AC;
 Tue,  9 Sep 2025 15:43:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E31C4CEF4;
 Tue,  9 Sep 2025 15:43:25 +0000 (UTC)
Date: Tue, 9 Sep 2025 16:43:23 +0100
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <20250909154323.GB20205@horms.kernel.org>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
 <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757432606;
 bh=fXPPeMKvaera8ovcQMSzAU21wcQMEHgyCpGtqBdp7ns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCOGLnGEHJlkyBkZ6wrIP/V/7aKmBgZNTwOW6FSeonuymDyU6eVPAbYXN9I7Qd6TS
 t55LhinALYD98T095qog81yGVNg7hWBsr8Sra+29AmZ6QFXIrxX+zukmhFE37wKASl
 UW7p927qyEgOfQ/uCrXSzZQ0cnVsu533wGCiVorxYq4tspLWZnCNbxVPcNG5GV2Rsy
 q+wrz+maRoFoiJ4RFzFG16C7dw721XpagreDsJwy+HwMh6DY3gyt+KtS/HOrXht3op
 K0CogCuvPkWUogRs8bKG4xMBilSEmfsXOGbrun4OCTEpdbO0yPyAWpZYnTLx+Gb61L
 wiAQj/CRNHV0w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jCOGLnGE
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy
 aci.lock later within ixgbe_remove path
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

On Mon, Sep 08, 2025 at 01:26:29PM +0200, Jedrzej Jagielski wrote:
> There's another issue with aci.lock and previous patch uncovers it.
> aci.lock is being destroyed during removing ixgbe while some of the
> ixgbe closing routines are still ongoing. These routines use Admin
> Command Interface which require taking aci.lock which has been already
> destroyed what leads to call trace.
> 
> [  +0.000004] DEBUG_LOCKS_WARN_ON(lock->magic != lock)
> [  +0.000007] WARNING: CPU: 12 PID: 10277 at kernel/locking/mutex.c:155 mutex_lock+0x5f/0x70
> [  +0.000002] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000006]  ixgbe_aci_send_cmd+0xc8/0x220 [ixgbe]
> [  +0.000049]  ? try_to_wake_up+0x29d/0x5d0
> [  +0.000009]  ixgbe_disable_rx_e610+0xc4/0x110 [ixgbe]
> [  +0.000032]  ixgbe_disable_rx+0x3d/0x200 [ixgbe]
> [  +0.000027]  ixgbe_down+0x102/0x3b0 [ixgbe]
> [  +0.000031]  ixgbe_close_suspend+0x28/0x90 [ixgbe]
> [  +0.000028]  ixgbe_close+0xfb/0x100 [ixgbe]
> [  +0.000025]  __dev_close_many+0xae/0x220
> [  +0.000005]  dev_close_many+0xc2/0x1a0
> [  +0.000004]  ? kernfs_should_drain_open_files+0x2a/0x40
> [  +0.000005]  unregister_netdevice_many_notify+0x204/0xb00
> [  +0.000006]  ? __kernfs_remove.part.0+0x109/0x210
> [  +0.000006]  ? kobj_kset_leave+0x4b/0x70
> [  +0.000008]  unregister_netdevice_queue+0xf6/0x130
> [  +0.000006]  unregister_netdev+0x1c/0x40
> [  +0.000005]  ixgbe_remove+0x216/0x290 [ixgbe]
> [  +0.000021]  pci_device_remove+0x42/0xb0
> [  +0.000007]  device_release_driver_internal+0x19c/0x200
> [  +0.000008]  driver_detach+0x48/0x90
> [  +0.000003]  bus_remove_driver+0x6d/0xf0
> [  +0.000006]  pci_unregister_driver+0x2e/0xb0
> [  +0.000005]  ixgbe_exit_module+0x1c/0xc80 [ixgbe]
> 
> Same as for the previous commit, the issue has been highlighted by the
> commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path").
> 
> Move destroying aci.lock to the end of ixgbe_remove(), as this
> simply fixes the issue.
> 
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

