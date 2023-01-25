Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8526967A90F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 04:04:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 343B181FC7;
	Wed, 25 Jan 2023 03:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 343B181FC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674615868;
	bh=2w/+Xz9Ki2sRIRT9V9uCv1gFSXoxJmdDVM+qmawPIzA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eB3hFCY7vK5zOjDw6lswoTcWrRGBA39GziPjOVpIvkZ0Rbf6LI43VYi+BDbHR2GzM
	 GZeoNS/3xGseU003Sqg3d17PjnZnIkqcNfyil5//mwhbTpWN+A4C7CuqpXjKRVUIAw
	 b9w/IZjpfM9I/iPAdUkFtkbfPUvrXboqu53mis76zfL2vuUpxQuCu2Zek35GdXC8L3
	 ChEhocDU+7d3cPbDHr6jRAMzXXAgxH1AJPW++h7cM9Ar3v8NwpnI7Imis1FPyBn3TQ
	 4enzOSFBszj0Uvkl8JPtHGd6r3a7RJsSeYQiT3dy8wgv8CmGteY8tyJHnTtSGgTBRH
	 O8h9QiyT5Xq/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKJJT-t61Boh; Wed, 25 Jan 2023 03:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AA6B81B25;
	Wed, 25 Jan 2023 03:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AA6B81B25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39F2C1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 03:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 07E8141711
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 03:04:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07E8141711
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEXMOIr8ohEV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 03:04:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 760F9416E8
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 760F9416E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 03:04:21 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D5AB3B817C1;
 Wed, 25 Jan 2023 03:04:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EF67C433EF;
 Wed, 25 Jan 2023 03:04:15 +0000 (UTC)
Date: Tue, 24 Jan 2023 19:04:14 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20230124190414.2dab95a2@kernel.org>
In-Reply-To: <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
References: <cover.1674606193.git.lorenzo@kernel.org>
 <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674615856;
 bh=igb7WvcKpQrOtnqtJvRzOxWVfsF2h9ytI87BrJP72u0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=edG7OtEkuRhj+tdiK6wNdvOLW1ITIcoRL5lkytM56LUKIvt2S3oji69jHqp33vWlV
 L6pYQvXKmM4Eq9DRLYNP4u/RrAZwPaIUjvKzJxWmSmx2zO2OXXva+RGN8zRh2rP5gd
 3ZIREptSnUm6op6zbx+Bw2E+HlG07MrOl0ejjf2b4mDO50ZctKZeJ7pXH08ij9OfDa
 Fo0w4eToY+yG2X+5zR6h2kZP1axqh5gIGV0havovqqqKLO1Y4mzVL++YZtVSS+JJ9x
 p78+AY1rwemWwAyR8vUyiWc59rWXPulzWHBHB7puwr0OtvJZwCvWMy+XNmHLSO58vp
 JtpyxuAsG2BWg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=edG7OtEk
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 25 Jan 2023 01:33:22 +0100 Lorenzo Bianconi wrote:
> A summary of the flags being set for various drivers is given below.
> Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
> that can be turned off and on at runtime. This means that these flags
> may be set and unset under RTNL lock protection by the driver. Hence,
> READ_ONCE must be used by code loading the flag value.
> 
> Also, these flags are not used for synchronization against the availability
> of XDP resources on a device. It is merely a hint, and hence the read
> may race with the actual teardown of XDP resources on the device. This
> may change in the future, e.g. operations taking a reference on the XDP
> resources of the driver, and in turn inhibiting turning off this flag.
> However, for now, it can only be used as a hint to check whether device
> supports becoming a redirection target.

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
