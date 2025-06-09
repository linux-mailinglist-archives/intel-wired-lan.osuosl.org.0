Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 619EFAD2A85
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 01:28:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FD7080ECD;
	Mon,  9 Jun 2025 23:28:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dc2qpEeoD9cH; Mon,  9 Jun 2025 23:28:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C87D80EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749511696;
	bh=jdP9LV0Y4YGUsxaQK0urOfXyLBkFjCH6AA53Ff3PwtA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H9lAXTK9Cyqn1QQwdkcdQrrVMDvZ9e9P1PmJCwE2c1N6T62CQWVEgA6E1wibU434Z
	 urL8ZwyA6HwhnSQ9+ClHRQO3w9zb/eUHaXqZT+jUtFjIWNH0Nra4yRemSm/30/ydm2
	 IJ80K1JqbSfD3gYblxYAIsN9qqluZV5n6twI8c8myzvdrz2Oe6Wvlen7o2kbSlGYAQ
	 Fie7ST3rrvhI53emqoTpJTqY5OJzxyy+nhq13j91h9HKEkmOkclF7xmm+hoi4GLNCD
	 hxgI5i87sySb48qxo9Mm2uatPyFBScD/e3zz1Dhff7qOky/GWHaVx0nYsc4p751QXt
	 5tp9qXNTMp/Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C87D80EC6;
	Mon,  9 Jun 2025 23:28:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 430CB1A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 298CE41ECB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a32kKgInwrJZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 23:28:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C1644009A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C1644009A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C1644009A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:28:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id BE5B944A65;
 Mon,  9 Jun 2025 23:28:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93BB6C4CEEB;
 Mon,  9 Jun 2025 23:28:12 +0000 (UTC)
Date: Mon, 9 Jun 2025 16:28:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <stfomichev@gmail.com>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, mheib@redhat.com,
 ruanjinjie@huawei.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Message-ID: <20250609162811.020322be@kernel.org>
In-Reply-To: <aEdsBhZ4C--0ohYj@mini-arch>
References: <20250609162541.1230022-1-stfomichev@gmail.com>
 <20250609153817.14d7e762@kernel.org> <aEdsBhZ4C--0ohYj@mini-arch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749511693;
 bh=s81oEcid/OEGvazYHy8C4bU29ApBKyS/u//Zxdr+YSI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=snNA452vJDcTsUcu6tEaoLgPVCt5nY/vTJEtQEddO3eHDykMbeJw2wQvLi84lceNF
 LeyMPxzhW8qOwCBhYaKI9qdpZswIS0yTdwPro/JldTQV/cif9J7s7jqmfnNo5oYXAW
 GyH36l/5SQl28xlVrVUQXuLfNldnP2JZb5hwMckmHSqC/p9IYgRc7b1qFReOrOs+/8
 4EP2xZu0gtto4+wRinGw+mgt+c4CzX6XvjmMCsVuKIN9aXrlpc+tB0OM3tmtsqA0Z6
 8Imiiv4wJ7xsMvgh1bfErer6kopdZAv29VUuiowYmio8vdGm8AfbOSxYLzYhCdQ2YX
 rhqAXX1auWhFw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=snNA452v
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/4] udp_tunnel: remove
 rtnl_lock dependency
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

On Mon, 9 Jun 2025 16:19:34 -0700 Stanislav Fomichev wrote:
> On 06/09, Jakub Kicinski wrote:
> > On Mon,  9 Jun 2025 09:25:37 -0700 Stanislav Fomichev wrote:  
> > > Recently bnxt had to grow back a bunch of rtnl dependencies because
> > > of udp_tunnel's infra. Add separate (global) mutext to protect
> > > udp_tunnel state.  
> > 
> > Appears to break the selftest, unfortunately:
> > https://netdev.bots.linux.dev/contest.html?test=udp-tunnel-nic-sh&branch=net-next-2025-06-09--21-00  
> 
> Argh, should have run it locally first :-(
> Looks like there is a test that sets up pretty high sleep time (1 sec)
> and expects entry to not appear during next 'ethtool --show-tunnels' run.
> 
> Gonna double check and remove the case if my understanding is correct.
> Don't think there is much value in keeping the debugfs knob just for the
> sake of this test? LMK if you disagree; otherwise gonna repost tomorrow.

Hm, I see you partially deleted the sleep support in patch 3.
Maybe it's easier to keep it since we now always sleep?
No strong preference, tho.
