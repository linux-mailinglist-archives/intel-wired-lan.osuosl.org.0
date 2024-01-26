Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCD383E0E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jan 2024 18:51:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B440960AB7;
	Fri, 26 Jan 2024 17:51:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B440960AB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706291479;
	bh=y/gn9Av1E/VqEldp1KCO4KYwLn2ZVlnq3IVY2kh0GEo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z+YZYuOsygmEVFvy3Bw7QoT7H3QTuAaB9v1X/bEJ+Z56LkkKakKdTtI/yhaub3TV6
	 e5zyPupZxGhaG1EzTJlvjt5y9c6jBT+2kH5czn3cURPvOLgSYiI3fwiRQKwmoiGAzt
	 VVD3uY2IH91CXiC8ZeqCvdkcksEjnaW8s7Mfps3odpwL4C4ijVr5vM69OBbu7/uxCj
	 pqVXNRI/2eb0y/tfHLD7LEqJKbbC6bgcbGMYppd39gfsWTLXj24mp9zKC+fHLqcTQk
	 Zt7bBvMqWcCth19RRywMi3vBh/4n1sams8CGB1BM/itlumeRuhApUuG56MYvhylP4x
	 fljjoCuLONGBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZwh3mi02G3g; Fri, 26 Jan 2024 17:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB03B60807;
	Fri, 26 Jan 2024 17:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB03B60807
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECA271BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 17:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C2D608437E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 17:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2D608437E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pEO4L32Va8rK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jan 2024 17:51:13 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19E718404F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jan 2024 17:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19E718404F
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D607B62554;
 Fri, 26 Jan 2024 17:51:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08330C433C7;
 Fri, 26 Jan 2024 17:51:09 +0000 (UTC)
Date: Fri, 26 Jan 2024 17:51:07 +0000
From: Simon Horman <horms@kernel.org>
To: Lukasz Plachno <lukasz.plachno@intel.com>
Message-ID: <20240126175107.GB401354@kernel.org>
References: <20240124152141.15077-1-lukasz.plachno@intel.com>
 <20240124152141.15077-3-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240124152141.15077-3-lukasz.plachno@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706291471;
 bh=xYlmBsenQr8hdoyjMRz9OkQNyQh55NtukTE75S7Jg3I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cH9oC6SYOD5onM/srS2Szrc1q/27LPbRpKWSA8+tlEIXyGuW/45IYeMinRoDbwSMn
 J+b8sC3hf0xVGajlbB8RPDv58XcrNS1TWmX1W7Qw7kqIangeW5LmM8isrqiyCLpmnv
 ufYzqZoacM6ZlNH/wdbJqsObg64WYVNqEANmhxHEQCzHSFO25Ucevqyj5BEGbDQWSD
 Lxje2meCm3Q3n4k9TdmbDRm+gHP2PAPeYudAB9d0yhKGBcpYG6dRGcro0/jZqrdDOO
 +dWQz2YYALSGf2zgwfcvpfwzq48LXdVl6SRHw43ZUDu4FEz5nCPe5HJV7yoiQeo08j
 wTVKSz19SjNTg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cH9oC6SY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: brett.creeley@amd.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Jakub Buchocki <jakubx.buchocki@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 24, 2024 at 04:21:41PM +0100, Lukasz Plachno wrote:
> From: Jakub Buchocki <jakubx.buchocki@intel.com>
> 
> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Rules not containing masks are processed by the Flow Director,
> and support the following set of input parameters in all combinations:
> src, dst, proto, vlan-etype, vlan, action.
> 
> It is possible to specify address mask in ethtool parameters but only
> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
> The same applies to proto, vlan-etype and vlan masks:
> only 0x0000 and 0xffff masks are valid.
> 
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>

...

> +/**
> + * ice_set_ether_flow_seg

nit: @dev should be documented here.

> + * @seg: flow segment for programming
> + * @eth_spec: mask data from ethtool
> + *
> + * Return: 0 on success and errno in case of error.
> + */
> +static int ice_set_ether_flow_seg(struct device *dev,
> +				  struct ice_flow_seg_info *seg,
> +				  struct ethhdr *eth_spec)

...
