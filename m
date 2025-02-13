Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A017EA33D0F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 11:55:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2780940B7A;
	Thu, 13 Feb 2025 10:55:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0bi3LjtsYxXr; Thu, 13 Feb 2025 10:55:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B39CE402B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739444133;
	bh=9rXlFqLcMyZ14IwqOEfyHp+Zj11QNqJ6hUCRbBsPhak=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UvmhzCVuUFliNdgdtGEpBRo6ZbfNN+rGmSv+ARI9uxN0L81Mhkx7+wXV30DpcA6Uy
	 TkVyJZ2YmwFsy72CW8hXZor2L6i8YYaRnts2Sgb+aChqWhle9QGoxUUW7ieBRYXaQA
	 J7a7zMUMJo09bovtCmTgp2h4Wc+SyhnkgKRNIMeLVxFt5d2h/RX66NExHbfwDlV89k
	 RKabmUAmiZZg5vPHS92ZLZnWhTcM6TBnLUf2it37r0spkR5EIV6evqsb4TW0Z0Yh/j
	 /+eHNu2OAuQOq7gBlzwUftbBqHWvdPwkZg1TSDnrQ0jYFJID0xqvTjnmpaS+H+ucqf
	 C83BunaniDexQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B39CE402B3;
	Thu, 13 Feb 2025 10:55:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D6AA2C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 10:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C572361175
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 10:55:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sm8PTm1o0ynA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 10:55:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CBF876115D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBF876115D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBF876115D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 10:55:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1FB2AA41F77;
 Thu, 13 Feb 2025 10:53:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE900C4CEE2;
 Thu, 13 Feb 2025 10:55:27 +0000 (UTC)
Date: Thu, 13 Feb 2025 10:55:25 +0000
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20250213105525.GJ1615191@kernel.org>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739444129;
 bh=6VBoxXaCyubvpY/RxuiFUTB3h2ZWmYG5OjQhekDJns8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=epg7CZ1sf9NcK+DmFPVrXBW9PWIaxkcIaoMPQWOYCVT0XSZuhNLYn3DpWNHmODj5Y
 K6ESEyvf+OFkkKN5/sELTRPcvtIwqKBtWvYRQGDQHVzPbYb0w64s9leEPlfIUgQiwF
 O2/xXtolDLWl3iJjAXak2JYiF/fFzMfqWNNk4wD3tr0YbkIOMrFvrJt4JInGtg9K11
 v3HcWVgIfjhUr0bk7vaSnvM62uFgPk0OQNZeCETvIHKNg5khJgBF7XZ7qIcpex3FRn
 fezGQNrGQUjsJ6jsCDnU4fpyzSkbV7XX70H/mLvShfysAKLwkKN7JkR4w3buk7BZp+
 wXkEYH57j5VMA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=epg7CZ1s
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix deinitializing
 VF in error path
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 11, 2025 at 06:43:21PM +0100, Marcin Szycik wrote:
> If ice_ena_vfs() fails after calling ice_create_vf_entries(), it frees
> all VFs without removing them from snapshot PF-VF mailbox list, leading
> to list corruption.
> 
> Reproducer:
>   devlink dev eswitch set $PF1_PCI mode switchdev
>   ip l s $PF1 up
>   ip l s $PF1 promisc on
>   sleep 1
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs

Should the line above be "echo 0" to remove the VFs before creating VFs
below (I'm looking at sriov_numvfs_store())?

>   sleep 1
>   echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> 
> Trace (minimized):
>   list_add corruption. next->prev should be prev (ffff8882e241c6f0), but was 0000000000000000. (next=ffff888455da1330).
>   kernel BUG at lib/list_debug.c:29!
>   RIP: 0010:__list_add_valid_or_report+0xa6/0x100
>    ice_mbx_init_vf_info+0xa7/0x180 [ice]
>    ice_initialize_vf_entry+0x1fa/0x250 [ice]
>    ice_sriov_configure+0x8d7/0x1520 [ice]
>    ? __percpu_ref_switch_mode+0x1b1/0x5d0
>    ? __pfx_ice_sriov_configure+0x10/0x10 [ice]
> 
> Sometimes a KASAN report can be seen instead with a similar stack trace:
>   BUG: KASAN: use-after-free in __list_add_valid_or_report+0xf1/0x100
> 
> VFs are added to this list in ice_mbx_init_vf_info(), but only removed
> in ice_free_vfs(). Move the removing to ice_free_vf_entries(), which is
> also being called in other places where VFs are being removed (including
> ice_free_vfs() itself).
> 
> Fixes: 8cd8a6b17d27 ("ice: move VF overflow message count into struct ice_mbx_vf_info")
> Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
> Closes: https://lore.kernel.org/intel-wired-lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com
> Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

The comment above notwithstanding, I agree that this addresses the
bug you have described.

Reviewed-by: Simon Horman <horms@kernel.org>

