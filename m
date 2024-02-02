Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A768847085
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 13:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF99684D5A;
	Fri,  2 Feb 2024 12:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DF99684D5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706877797;
	bh=TShIs5Ane12ECqcRVKkcZ19ytCPg1TapeO0RzlSBxmw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z+dwirI1BOoiNdPmvguylrnaC3RneTZhkGvuH9g0dHxolMbCevPiiHExgB30vyIbR
	 cF/OpJiICPkV/Ea7iI06l7Lq/FfixCx5U8+FeyEaR/hL1RcrU+yA93AZIj5RvwKXNz
	 R0kJXlbjszC3coLp3OeVu1mpYM3LOoIwMSgeRpYwhU/zjgkPYazRHeOu/F2ZurWPEg
	 Oie0Kjjt2i1aX/CR46mpb6jMXXry+BCPl2bwdMuIqIY8WDkYdWqarFaKmThzGmKd0l
	 mFTt8Yi81eN9CuCqezf3SiYKgjw1Q1eV/Tey616j3CdHM8ZH+PTYAxYEP8f/2aWHcm
	 HyeXDf1jHfMww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dPY1Zfn_vVu3; Fri,  2 Feb 2024 12:43:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0560284D58;
	Fri,  2 Feb 2024 12:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0560284D58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D961F1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:43:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0D74402DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:43:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D74402DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0RCaCryQBIHW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 12:43:11 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 201AD402DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 12:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 201AD402DB
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EB23E62566;
 Fri,  2 Feb 2024 12:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60B85C433C7;
 Fri,  2 Feb 2024 12:43:06 +0000 (UTC)
Date: Fri, 2 Feb 2024 13:43:04 +0100
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240202124304.GQ530335@kernel.org>
References: <20240131131714.23497-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240131131714.23497-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706877789;
 bh=PxfcsiEDIy9Qq5Fj9DyY2bRtJKhBqY6xM3ALRlMwdZ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ijhod+4a9Wm7Ak9rvxRN/3QoDdbZhfsYcuZEvIQQp9DPeaDFVc2+bazmthC1sBrbM
 nQfyFhyaMS/RgoPZULthADl2xhEe1YJ3RxJX4a5YqjKuEPuENcdEAogRCXjwhUKuig
 GxIFB7Wv5vCglxl2TmlUleC8CPFybvvHk4NO8y/kB9tVPTTPY2wWrWEA3QxOglNSZ3
 ea4u26WP5CCBU0MQY/6AwgqnUWGR52FaxnjeTSRqo5ASYMFvSRLeImalC+jWNtw4C2
 ZkCYwcsSqMy57sfl6NLDwjvyPQBdftP0vkYsiIugAl+osmKaF+xd8Q4GFnp4DvPRMf
 ZfMSQ4zS/mTEw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Ijhod+4a
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Do not allow untrusted VF
 to remove administratively set MAC
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>, netdev@vger.kernel.org,
 Mitch Williams <mitch.a.williams@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 31, 2024 at 02:17:14PM +0100, Ivan Vecera wrote:
> Currently when PF administratively sets VF's MAC address and the VF
> is put down (VF tries to delete all MACs) then the MAC is removed
> from MAC filters and primary VF MAC is zeroed.
> 
> Do not allow untrusted VF to remove primary MAC when it was set
> administratively by PF.
> 
> Reproducer:
> 1) Create VF
> 2) Set VF interface up
> 3) Administratively set the VF's MAC
> 4) Put VF interface down
> 
> [root@host ~]# echo 1 > /sys/class/net/enp2s0f0/device/sriov_numvfs
> [root@host ~]# ip link set enp2s0f0v0 up
> [root@host ~]# ip link set enp2s0f0 vf 0 mac fe:6c:b5:da:c7:7d
> [root@host ~]# ip link show enp2s0f0
> 23: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>     link/ether 3c:ec:ef:b7:dd:04 brd ff:ff:ff:ff:ff:ff
>     vf 0     link/ether fe:6c:b5:da:c7:7d brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off
> [root@host ~]# ip link set enp2s0f0v0 down
> [root@host ~]# ip link show enp2s0f0
> 23: enp2s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>     link/ether 3c:ec:ef:b7:dd:04 brd ff:ff:ff:ff:ff:ff
>     vf 0     link/ether 00:00:00:00:00:00 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state auto, trust off
> 
> Fixes: 700bbf6c1f9e ("i40e: allow VF to remove any MAC filter")
> Fixes: ceb29474bbbc ("i40e: Add support for VF to specify its primary MAC address")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Thanks Ivan,

Reviewed-by: Simon Horman <horms@kernel.org>

