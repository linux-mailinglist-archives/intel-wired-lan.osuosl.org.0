Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6840F8502BF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 07:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D8D64274D;
	Sat, 10 Feb 2024 06:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7Eq94azu6WM; Sat, 10 Feb 2024 06:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C701342854
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707546469;
	bh=awcl9nTBbGyoozcIIg4CPpVcrgYzlNS1lnXh/qHGk5c=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TSwd9Pb73oHmTHyu4hbYweS4x1RBrRKaSAFYt6d1X96APGwHTm+wDTmDf7o3t4Ztr
	 36wdiEiGix+7UqWXX6korX13Ueuvz/kkFqNEHR5WwjiEI/lrKfHQXCD7EIh9/SssGe
	 8KsUE/yPaMznXOWYTMzsj82GbCrw+pb1rrxR7Nd9Dx/4l8XyaH2uDbhnue07Br4xmE
	 ntoSoG+JY35yFC/PRaNIiLwtfg8OadllIQYzkP0nZwCFP+qx0wHr+0iO/92qbAyxrd
	 7sqCDRDiaXEqcLUHK+hQcA53tJ4KfU974toSut1joM/uqluOia3cbzri6+Sycn6tXH
	 8jYVolF3x7WDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C701342854;
	Sat, 10 Feb 2024 06:27:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 406F01BF345
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 06:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1623F42717
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 06:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elahfTvHgS2t for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 06:27:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2A02D426B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A02D426B6
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A02D426B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 06:27:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 916DBCE217C;
 Sat, 10 Feb 2024 06:27:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59DA3C433C7;
 Sat, 10 Feb 2024 06:27:39 +0000 (UTC)
Date: Fri, 9 Feb 2024 22:27:38 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Saeed Mahameed <saeed@kernel.org>
Message-ID: <20240209222738.4cf9f25b@kernel.org>
In-Reply-To: <20240208035352.387423-16-saeed@kernel.org>
References: <20240208035352.387423-1-saeed@kernel.org>
 <20240208035352.387423-16-saeed@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707546459;
 bh=//ztP7QnwQKI0oQKGlfRNG3+CmCQaT6clwljA0nWTII=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aSJjWUwBY7hU+n5p69HJF+MsQroKgZuYSpIZEVY32+JsQzVTjK7zHGDHVqKtnChAA
 BDhy9S0KS+6u1ZrHXcAOgrd/jtGXa4zIkuti60kMkKRUCA18rTraHmr9yxWxvguVKh
 NvCnFsOkq/FL5qdFus5s7nUdJFrWgKP3c6yst9CvDz7rfsSzTXVqft72WhBXHyI6XU
 uUAttgTlywZyBX4uh5ttXiiY78bjLM6aPLqy8dXHIgIlK1MPIIHjFka271vRjpo7LA
 9OhnssJ+vBeuo0I0WEEXn8r+P4blpIwYmXkfsKsZreUf2zdcdlX14GUmXf1aQFsJre
 x/+iMZO0lwZHA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=aSJjWUwB
Subject: Re: [Intel-wired-lan] [net-next V2 15/15] Documentation: net/mlx5:
 Add description for Socket-Direct netdev combining
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
Cc: netdev@vger.kernel.org, Gal Pressman <gal@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Andy Gospodarek <andy@greyhouse.net>,
 Michael Chan <michael.chan@broadcom.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>,
 Leon Romanovsky <leonro@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  7 Feb 2024 19:53:52 -0800 Saeed Mahameed wrote:
> From: Tariq Toukan <tariqt@nvidia.com>
> 
> Add documentation for the feature and some details on some design decisions.

Thanks.

> diff --git a/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/sd.rst b/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/sd.rst

SD which is not same SD which Jiri and William are talking about?
Please spell out the name.

Please make this a general networking/ documentation file.

If other vendors could take a look and make sure this behavior makes
sense for their plans / future devices that'd be great.

> new file mode 100644
> index 000000000000..c8b4d8025a81
> --- /dev/null
> +++ b/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/sd.rst
> @@ -0,0 +1,134 @@
> +.. SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
> +.. include:: <isonum.txt>
> +
> +==============================
> +Socket-Direct Netdev Combining
> +==============================
> +
> +:Copyright: |copy| 2024, NVIDIA CORPORATION & AFFILIATES. All rights reserved.
> +
> +Contents
> +========
> +
> +- `Background`_
> +- `Overview`_
> +- `Channels distribution`_
> +- `Steering`_
> +- `Mutually exclusive features`_
> +
> +Background
> +==========
> +
> +NVIDIA Mellanox Socket Direct technology enables several CPUs within a multi-socket server to

Please make it sound a little less like a marketing leaflet.
Isn't multi-PF netdev not a better name for the construct?
We don't call aRFS "queue direct", also socket has BSD socket meaning.

> +connect directly to the network, each through its own dedicated PCIe interface. Through either a
> +connection harness that splits the PCIe lanes between two cards or by bifurcating a PCIe slot for a
> +single card. This results in eliminating the network traffic traversing over the internal bus
> +between the sockets, significantly reducing overhead and latency, in addition to reducing CPU
> +utilization and increasing network throughput.
> +
> +Overview
> +========
> +
> +This feature adds support for combining multiple devices (PFs) of the same port in a Socket Direct
> +environment under one netdev instance. Passing traffic through different devices belonging to
> +different NUMA sockets saves cross-numa traffic and allows apps running on the same netdev from
> +different numas to still feel a sense of proximity to the device and acheive improved performance.
> +
> +We acheive this by grouping PFs together, and creating the netdev only once all group members are
> +probed. Symmetrically, we destroy the netdev once any of the PFs is removed.

s/once/whenever/

> +The channels are distributed between all devices, a proper configuration would utilize the correct
> +close numa when working on a certain app/cpu.
> +
> +We pick one device to be a primary (leader), and it fills a special role. The other devices

"device" is probably best avoided, users may think device == card,
IIUC there's only one NIC ASIC here?

> +(secondaries) are disconnected from the network in the chip level (set to silent mode). All RX/TX

s/in/at/

> +traffic is steered through the primary to/from the secondaries.

I don't understand the "silent" part. I mean - you do pass traffic thru
them, what's the silence referring to?

> +Currently, we limit the support to PFs only, and up to two devices (sockets).
> +
> +Channels distribution
> +=====================
> +
> +Distribute the channels between the different SD-devices to acheive local numa node performance on

Something's missing in this sentence, subject "we"? 

> +multiple numas.

NUMA nodes

> +Each channel works against one specific mdev, creating all datapath queues against it. We distribute

The mix of channel and queue does not compute in this sentence for me.

Also mdev -> PF?

> +channels to mdevs in a round-robin policy.
> +
> +Example for 2 PFs and 6 channels:
> ++-------+-------+
> +| ch ix | PF ix |

ix? id or idx or index.

> ++-------+-------+
> +|   0   |   0   |
> +|   1   |   1   |
> +|   2   |   0   |
> +|   3   |   1   |
> +|   4   |   0   |
> +|   5   |   1   |
> ++-------+-------+
> +
> +This round-robin distribution policy is preferred over another suggested intuitive distribution, in
> +which we first distribute one half of the channels to PF0 and then the second half to PF1.

Preferred.. by whom? Just say that's the most broadly useful and therefore default config.

> +The reason we prefer round-robin is, it is less influenced by changes in the number of channels. The
> +mapping between a channel index and a PF is fixed, no matter how many channels the user configures.
> +As the channel stats are persistent to channels closure, changing the mapping every single time

to -> across
channels -> channel or channel's or channel closures

> +would turn the accumulative stats less representing of the channel's history.
> +
> +This is acheived by using the correct core device instance (mdev) in each channel, instead of them
> +all using the same instance under "priv->mdev".
> +
> +Steering
> +========
> +Secondary PFs are set to "silent" mode, meaning they are disconnected from the network.
> +
> +In RX, the steering tables belong to the primary PF only, and it is its role to distribute incoming
> +traffic to other PFs, via advanced HW cross-vhca steering capabilities.

s/advanced HW//

You should cover how RSS looks - single table which functions exactly as
it would for a 1-PF device? Two-tier setup?

> +In TX, the primary PF creates a new TX flow table, which is aliased by the secondaries, so they can
> +go out to the network through it.
> +
> +In addition, we set default XPS configuration that, based on the cpu, selects an SQ belonging to the
> +PF on the same node as the cpu.
> +
> +XPS default config example:
> +
> +NUMA node(s):          2
> +NUMA node0 CPU(s):     0-11
> +NUMA node1 CPU(s):     12-23
> +
> +PF0 on node0, PF1 on node1.

You didn't cover how users are supposed to discover the topology. 
netdev is linked to a single device in sysfs, which is how we get
netdev <> NUMA node mapping today. What's the expected way to get
the NUMA nodes here?

And obviously this can't get merged until mlx5 exposes queue <> NAPI <>
IRQ mapping via the netdev genl.

<snip>

> +Mutually exclusive features
> +===========================
> +
> +The nature of socket direct, where different channels work with different PFs, conflicts with
> +stateful features where the state is maintained in one of the PFs.
> +For exmaple, in the TLS device-offload feature, special context objects are created per connection
> +and maintained in the PF.  Transitioning between different RQs/SQs would break the feature. Hence,
> +we disable this combination for now.

