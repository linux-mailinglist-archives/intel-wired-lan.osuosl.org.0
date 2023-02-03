Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E80E4688ED5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Feb 2023 06:10:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54320429B6;
	Fri,  3 Feb 2023 05:10:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54320429B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675401034;
	bh=OhujvE42T9CKjgK4fMkRetWMkeP63ju16ZgadE+S++k=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k8cfb67PRXRYUXdjgkvHzgymTLkG0HDjSLtL5SZ1DMs6Wr/gVnZxXsxnIimSXyErS
	 z2cD/B0liQgJLq8f+oOHHB9X13uFUj/wqC0K2aG93Y30uIqvI/ONf+D3doVIeuLfJt
	 EMw1Cb5W9+snVFZlSXsPnSnY4/oyPI/fotPZ1e3al/kxiXBnYDsIX+WY+G4QmWdILa
	 1FsQliJDiabU7+kpTwgar4l4NRphS/wtJvaYAE0HsaeNW+BNkHhYa3iegZ8CK//BGd
	 Fh2myiiN7GuIUCel4qezrC67KXZ+sptL9R5OLE8uIkeRuQsLOAxP88Y9OsElBVc2fu
	 65S2DSr32XRcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQesw5xEoI1I; Fri,  3 Feb 2023 05:10:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE0A0429B1;
	Fri,  3 Feb 2023 05:10:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE0A0429B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99BD71BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 05:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7CBE5401F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 05:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CBE5401F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3t1RNdUr8_1 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Feb 2023 05:10:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 241C340111
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 241C340111
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Feb 2023 05:10:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D43FEB8296A;
 Fri,  3 Feb 2023 05:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEB3C4339C;
 Fri,  3 Feb 2023 05:10:20 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 5DDD1E270C5; Fri,  3 Feb 2023 05:10:20 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <167540102037.25226.11437925694181253004.git-patchwork-notify@kernel.org>
Date: Fri, 03 Feb 2023 05:10:20 +0000
References: <cover.1675245257.git.lorenzo@kernel.org>
In-Reply-To: <cover.1675245257.git.lorenzo@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675401020;
 bh=8J/r8IZQdoK6kMHtccVyxYsr/VMnGN/M43P+7f3wljo=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=hcg8HWy/6h8/ZF5MdMqY+pykurfS+3ixb13VsQ0N3OXBp9ODXsiftV9BnGvdIGEC7
 iS63ZfCx65AX8c4RPIJVVZugM1lVHIeHdNC6J70FehKeZToPUrPCZHilfuBYdF74Xs
 TL+0kq3Ej0grLceKsZ5xDGLX3Ruu8a0ct3+gHBakB97XJrWPjY7UpunXwVrzTubY0K
 +6y9wH9f34bJjSrY3yVBbQ6rlFT0h6X8hddUjuBFHuw/vFG2oYbAL/+FanZhlT4QLv
 RiQW6cLw9kX6ryXLX2m/IVQNwYomC/RSTeV1TGoH1GHzQ570huX01m+KECTvEVU9IU
 DntWcHRgLIHKA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hcg8HWy/
Subject: Re: [Intel-wired-lan] [PATCH v5 bpf-next 0/8] xdp: introduce
 xdp-feature support
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
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 gerhard@engleder-embedded.com, daniel@iogearbox.net, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
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

Hello:

This series was applied to bpf/bpf-next.git (master)
by Alexei Starovoitov <ast@kernel.org>:

On Wed,  1 Feb 2023 11:24:16 +0100 you wrote:
> Introduce the capability to export the XDP features supported by the NIC.
> Introduce a XDP compliance test tool (xdp_features) to check the features
> exported by the NIC match the real features supported by the driver.
> Allow XDP_REDIRECT of non-linear XDP frames into a devmap.
> Export XDP features for each XDP capable driver.
> Extend libbpf netlink implementation in order to support netlink_generic
> protocol.
> Introduce a simple generic netlink family for netdev data.
> 
> [...]

Here is the summary with links:
  - [v5,bpf-next,1/8] netdev-genl: create a simple family for netdev stuff
    https://git.kernel.org/bpf/bpf-next/c/d3d854fd6a1d
  - [v5,bpf-next,2/8] drivers: net: turn on XDP features
    https://git.kernel.org/bpf/bpf-next/c/66c0e13ad236
  - [v5,bpf-next,3/8] xsk: add usage of XDP features flags
    https://git.kernel.org/bpf/bpf-next/c/0ae0cb2bb22e
  - [v5,bpf-next,4/8] libbpf: add the capability to specify netlink proto in libbpf_netlink_send_recv
    https://git.kernel.org/bpf/bpf-next/c/8f1669319c31
  - [v5,bpf-next,5/8] libbpf: add API to get XDP/XSK supported features
    https://git.kernel.org/bpf/bpf-next/c/04d58f1b26a4
  - [v5,bpf-next,6/8] bpf: devmap: check XDP features in __xdp_enqueue routine
    https://git.kernel.org/bpf/bpf-next/c/b9d460c92455
  - [v5,bpf-next,7/8] selftests/bpf: add test for bpf_xdp_query xdp-features support
    https://git.kernel.org/bpf/bpf-next/c/84050074e51b
  - [v5,bpf-next,8/8] selftests/bpf: introduce XDP compliance test tool
    https://git.kernel.org/bpf/bpf-next/c/4dba3e7852b7

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
