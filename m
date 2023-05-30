Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4100C7170D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FFF4822FE;
	Tue, 30 May 2023 22:40:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FFF4822FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685486407;
	bh=weyjs+KmbfwUuaPqxz/fcl2C4fgciCqsZsryRmGFmyU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nI/KVIA9m36+gm/6Fbhn5jM4WHi1H66CEVW9yVqa/6LEhoqNtFZT2mD/G3P9k/AqC
	 +wCCDBI/EN1Yix545QTAv1xhkRQapXJyIITEpOYkoHSaIXNss+cNRApIcds/1jWDss
	 zxiyynbi+oqkhU2WavdiDfzx+wCIGXsEqgEimxNz4NrRjDe1wxf4J2Fhw0tDPV0iPw
	 S9hhGs5r8akM4k7EssAeg0OkaYLpHcK7Ak4vdZcfTlSTxzzYH7pAkfKod68OXf0a86
	 +bMIimhW3FGsp92LoAQmN9wrRl3wQMHApzYjpgLu0rQyPK6zwm4h4WqG4bTObW4zB/
	 Hsb/an+z7VLdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpUgJ3T5it2l; Tue, 30 May 2023 22:40:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DEFD822A0;
	Tue, 30 May 2023 22:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DEFD822A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A5E281BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FC8D410EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FC8D410EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-H0QeNX7BCi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 21:25:02 +0000 (UTC)
X-Greylist: delayed 00:33:56 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C0FC410AC
Received: from mx11lb.world4you.com (mx11lb.world4you.com [81.19.149.121])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C0FC410AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:25:02 +0000 (UTC)
Received: from [88.117.62.186] (helo=[10.0.0.160])
 by mx11lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1q46Ia-0002Tp-2o; Tue, 30 May 2023 22:50:32 +0200
Message-ID: <7602e37b-1b83-8697-d9e6-c9cc1e5214e3@engleder-embedded.com>
Date: Tue, 30 May 2023 22:50:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-3-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Gerhard Engleder <gerhard@engleder-embedded.com>
In-Reply-To: <20230530091948.1408477-3-vladimir.oltean@nxp.com>
X-AV-Do-Run: Yes
X-Mailman-Approved-At: Tue, 30 May 2023 22:40:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tmK094y96wxnVZkH2WsdAa3vLGfUTZukvcfeq7bEgWM=; b=g2658kAvRw+cmjUJNfxuCNCd4i
 d9gNNNLErmW8wcGrdqA8ala/MJNOtzhBThzY5NnncEfzZpdlLQTmFuLxJFjskHkF3Xpr1PWicSNvm
 gPuQNG3iSdGkO/fBG5epBXViCUyzsQmE2JCDMbQSjx74JgEsCNQmYDhkvdKAnI1LDczU=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=engleder-embedded.com
 header.i=@engleder-embedded.com header.a=rsa-sha256 header.s=dkim11
 header.b=g2658kAv
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio:
 replace tc_taprio_qopt_offload :: enable with a "cmd" enum
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, UNGLinuxDriver@microchip.com,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Pranavi Somisetty <pranavi.somisetty@amd.com>,
 Jiri Pirko <jiri@resnulli.us>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Roger Quadros <rogerq@kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Michael Sit Wei Hong <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>, linux-kernel@vger.kernel.org,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 30.05.23 11:19, Vladimir Oltean wrote:
> Inspired from struct flow_cls_offload :: cmd, in order for taprio to be
> able to report statistics (which is future work), it seems that we need
> to drill one step further with the ndo_setup_tc(TC_SETUP_QDISC_TAPRIO)
> multiplexing, and pass the command as part of the common portion of the
> muxed structure.
> 
> Since we already have an "enable" variable in tc_taprio_qopt_offload,
> refactor all drivers to check for "cmd" instead of "enable", and reject
> every other command except "replace" and "destroy" - to be future proof.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>   drivers/net/dsa/hirschmann/hellcreek.c             | 14 +++++++++-----
>   drivers/net/dsa/ocelot/felix_vsc9959.c             |  4 +++-
>   drivers/net/dsa/sja1105/sja1105_tas.c              |  7 +++++--
>   drivers/net/ethernet/engleder/tsnep_selftests.c    | 12 ++++++------
>   drivers/net/ethernet/engleder/tsnep_tc.c           |  4 +++-
>   drivers/net/ethernet/freescale/enetc/enetc_qos.c   |  6 +++++-
>   drivers/net/ethernet/intel/igc/igc_main.c          | 13 +++++++++++--
>   .../net/ethernet/microchip/lan966x/lan966x_tc.c    | 10 ++++++++--
>   drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  7 +++++--
>   drivers/net/ethernet/ti/am65-cpsw-qos.c            | 11 ++++++++---
>   include/net/pkt_sched.h                            |  7 ++++++-
>   net/sched/sch_taprio.c                             |  4 ++--
>   12 files changed, 71 insertions(+), 28 deletions(-)

Reviewed-by: Gerhard Engleder <gerhard@engleder-embedded.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
