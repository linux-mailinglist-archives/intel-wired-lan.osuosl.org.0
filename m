Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F87C768FED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 10:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AB1961045;
	Mon, 31 Jul 2023 08:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AB1961045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690791633;
	bh=XmRgx6u2dL+OovhSyaXnXEi4cvRr0PXhoE4Gx18FPtU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EI82OgZr837pho22Z36aqEYYEf5kpLaZiXdbniOCtkBXkYiNocZ647oGpLzbfQuCP
	 C8TcmRh4g48Isz2XlRwcDjussMzs0d8MAc6w+xteTEyeR4cXtUqxef1+VToUMRPcaZ
	 BOUNr4QqSEjIuTt71GxdKYrYuqafjBzG+Ph43bcMA+Ta1SeROwR/2f1nflX6l6kdZ1
	 1lAFvnhZoUEdnLt27PRJbgY8thgZ7IziRxlKVdelakBTGW1GyZh2vV4WcO8pdLL4hc
	 I1RURmWp7JHyE9OyFnaxMnXRij3fDvpjQVE86TTxM4agg8S1IL9aYgzJI5trWxbIMW
	 4WBYXMDlBLeEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80vsWBsWuE0a; Mon, 31 Jul 2023 08:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FE786104B;
	Mon, 31 Jul 2023 08:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FE786104B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94F411BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 08:20:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CB7E400A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 08:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CB7E400A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTCEh1aAstra for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 08:20:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A84A40017
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 08:20:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A84A40017
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9D75160F89;
 Mon, 31 Jul 2023 08:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C561C433A9;
 Mon, 31 Jul 2023 08:20:23 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 1B4A1E96AC0; Mon, 31 Jul 2023 08:20:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <169079162310.10005.11385616493848955483.git-patchwork-notify@kernel.org>
Date: Mon, 31 Jul 2023 08:20:23 +0000
References: <20230728232215.2071351-1-rkannoth@marvell.com>
In-Reply-To: <20230728232215.2071351-1-rkannoth@marvell.com>
To: Ratheesh Kannoth <rkannoth@marvell.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690791623;
 bh=iFw1eTT0uqbhzj8JDGSr0fgbWXoLNoGg8HGa6Krj/BE=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=pdzuiheNxcAIUt7dl4VvftR6KVgfb4WfHYzXw7S4BW3HMeL0KMuaUJegDV4ye1i2q
 xt+IXuw4p4K/OydDVMCVezK9Voc5opQc2n1uQHW+pCcF2S8wyiKFcuPa64UxEPUtvQ
 G1Iwdhc79AaODYjflPpqOtbjQJnp2U4Fo+ECkhcQA/WYz7nibFltasYOX6TfOGyiQm
 DkftOEw0qo8qS7YQ1KRXR6FKZrHxTFzDS6vQd6ySIF1lkhclBxDg0VactJ9YcERA3Q
 lruw6F4hQjhGdeD4QZ4puijNgB6y1lT949oNG2pypUD5bnAAqPINZFgkA0SmN19lHN
 qOipMmAtNgTCQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pdzuiheN
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] net: flow_dissector: Use
 64bits for used_keys
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
Cc: taras.chornyi@plvision.eu, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 linux-stm32@st-md-mailman.stormreply.com, vladimir.oltean@nxp.com,
 jdamato@fastly.com, kurt@linutronix.de, alexandre.torgue@foss.st.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, ioana.ciornei@nxp.com,
 gerhard@engleder-embedded.com, UNGLinuxDriver@microchip.com,
 horatiu.vultur@microchip.com, lanhao@huawei.com, louis.peens@corigine.com,
 f.fainelli@gmail.com, leon@kernel.org, linux-net-drivers@amd.com,
 Steen.Hegelund@microchip.com, jesse.brandeburg@intel.com, kadlec@netfilter.org,
 huangguangbin2@huawei.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 simon.horman@corigine.com, kuba@kernel.org, d-tatianin@yandex-team.ru,
 pabeni@redhat.com, yisen.zhuang@huawei.com, pablo@netfilter.org,
 linux-rdma@vger.kernel.org, grygorii.strashko@ti.com, aelior@marvell.com,
 daniel.machon@microchip.com, idosch@nvidia.com, wenjuan.geng@corigine.com,
 claudiu.manoil@nxp.com, coreteam@netfilter.org, habetsm.xilinx@gmail.com,
 hui.zhou@corigine.com, peppe.cavallaro@st.com, michael.chan@broadcom.com,
 linux-omap@vger.kernel.org, lars.povlsen@microchip.com, petrm@nvidia.com,
 zdoychev@maxlinear.com, salil.mehta@huawei.com, wentao.jia@corigine.com,
 manishc@marvell.com, netdev@vger.kernel.org, oss-drivers@corigine.com,
 fw@strlen.de, linux-kernel@vger.kernel.org, shenjian15@huawei.com,
 ecree.xilinx@gmail.com, netfilter-devel@vger.kernel.org,
 shmulik.ladkani@gmail.com, mcoquelin.stm32@gmail.com, rajur@chelsio.com,
 olteanv@gmail.com, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello:

This patch was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Sat, 29 Jul 2023 04:52:15 +0530 you wrote:
> As 32bits of dissector->used_keys are exhausted,
> increase the size to 64bits.
> 
> This is base change for ESP/AH flow dissector patch.
> Please find patch and discussions at
> https://lore.kernel.org/netdev/ZMDNjD46BvZ5zp5I@corigine.com/T/#t
> 
> [...]

Here is the summary with links:
  - [v3,net-next] net: flow_dissector: Use 64bits for used_keys
    https://git.kernel.org/netdev/net-next/c/2b3082c6ef3b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
