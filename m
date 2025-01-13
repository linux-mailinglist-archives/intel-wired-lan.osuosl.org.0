Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0638A0C362
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jan 2025 22:15:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AEFA8100C;
	Mon, 13 Jan 2025 21:15:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o48CdiFRxfb4; Mon, 13 Jan 2025 21:15:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7844A8101A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736802914;
	bh=3kQEYktto12aD2wYIJVcQms7WUgYUK4ZV6uVZ3oeHKU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pmg8jPvkkD0y41375aKCBryArN75RxsIL/cWCybIrQhBbE8Ixl4cZONUztVMzpvJU
	 wXe/ct2BtkYRZlEVKveBAsvFt511UwHQPoBsVNNN5hA8T4Wm9pQJRaObkZqgUjtvJa
	 u1QHzLNY+20zwk8V3JTmJksLNqKP4Z7Mu4qZHgWZjFs/+OIWNDvUWHfApCX/D9tMSR
	 ihRXEt+X0RH8cRt/cTwwFP+EwtaYXLqtTi947fX5UdVOSfUeVZVaEphu+YjhbFhqiG
	 PA/RhSe0HfcvsudMkhvldpD5upm6AXgRtWqdooWUFZjCYmWYssQzQYRh3adRpl/JdV
	 H4D46F0gYg8cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7844A8101A;
	Mon, 13 Jan 2025 21:15:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 890C2940
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 21:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 676B3401D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 21:15:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Y4bC5MbHWdV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jan 2025 21:15:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4C4D1400BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C4D1400BD
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C4D1400BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jan 2025 21:15:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 41A5E5C56C1;
 Mon, 13 Jan 2025 21:14:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E2A0C4CED6;
 Mon, 13 Jan 2025 21:15:09 +0000 (UTC)
Date: Mon, 13 Jan 2025 13:15:08 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Daniel Sedlak <daniel@sedlak.dev>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20250113131508.79c8511a@kernel.org>
In-Reply-To: <ca5056ef-0a1a-477c-ac99-d266dea2ff5b@sedlak.dev>
References: <ca5056ef-0a1a-477c-ac99-d266dea2ff5b@sedlak.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736802909;
 bh=d/vrrZJ1Rj5cvhFMT7x8wSnldOnMUjnIQVlF0v9aVmY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PCXqmAp/GgADfQuDRU2PZU2Vam9624HBwmuXVwnBo/6sTmVW2DkYSIL1a+2qxSXpF
 osnBebS2bnCgyXGCYqJEz4R9KU92MaIwzqjUWkJ7R92rHec1yMW1hAYueY69kwksq6
 wOLCqHxwRmJa+N9uFeEmVZiFffSMkBwQ1q9xGDs1HIW3tQsIWc0hSCP4qnEAFBYwlS
 ZRpstr8zeIlJgaAkaySplVA8sRwkIEjW/nmiXgJFznQ1+c+MwJPJDYUx/Cjbym9+U5
 Opif4f5K+9siWjqtfZhzNNCL2k559YXE7ijyfmB7A93qWiZWyIN2PXVIm8t0zOlG+k
 0suTvB9l25idQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PCXqmAp/
Subject: Re: [Intel-wired-lan] [Question] Generic way to retrieve IRQ number
 of Tx/Rx queue
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

On Fri, 10 Jan 2025 10:07:18 +0100 Daniel Sedlak wrote:
> Hello,
> I am writing an affinity scheduler in the userspace for network cards's 
> Tx/Rx queues. Is there a generic way to retrieve all IRQ numbers for 
> those queues for each interface?
> 
> My goal is to get all Tx/Rx queues for a given interface, get the IRQ 
> number of the individual queues, and set an affinity hint for each 
> queue. I have tried to loop over /proc/interrupts to retrieve all queues 
> for an interface in a hope that the last column would contain the 
> interface name however this does not work since the naming is not 
> unified across drivers. My second attempt was to retrieve all registered 
> interrupts by network interface from 
> /sys/class/net/{interface_name}/device/msi_irqs/, but this attempt was 
> also without luck because some drivers request more IRQs than the number 
> of queues (for example i40e driver).

We do have an API for that
https://docs.kernel.org/next/networking/netlink_spec/netdev.html#napi
but unfortunately the driver needs to support it, and i40e currently
doesn't:

$ git grep --files-with-matches  netif_napi_set_irq 
drivers/net/ethernet/amazon/ena/ena_netdev.c
drivers/net/ethernet/broadcom/bnxt/bnxt.c
drivers/net/ethernet/broadcom/tg3.c
drivers/net/ethernet/google/gve/gve_utils.c
drivers/net/ethernet/intel/e1000/e1000_main.c
drivers/net/ethernet/intel/e1000e/netdev.c
drivers/net/ethernet/intel/ice/ice_lib.c
drivers/net/ethernet/intel/igc/igc_main.c
drivers/net/ethernet/mellanox/mlx4/en_cq.c
drivers/net/ethernet/mellanox/mlx5/core/en_main.c
drivers/net/ethernet/meta/fbnic/fbnic_txrx.c

Should be easy to add. Let me CC the Intel list in case they already
have a relevant change queued for i40e..
