Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E11472452D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 16:02:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7765A61241;
	Tue,  6 Jun 2023 14:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7765A61241
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686060164;
	bh=WwW9QiQiHF+VH+LQf7p4qACS4Nmpv0vzjEw4+V4N1Dw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ty+MLpzm1Ez0LicUfIHUM2iLxEJ1QPh/wYO0HdqAbbtRFabQmaPcnGM/EHVF2wXQz
	 hcLhB47xlZ8qCg796JjRS/DYdo2cml+7wRU2/AIlGJoCinpMqgg0H9A2lwFy+Ey2NE
	 7Dlh7TeeF0BobAUGjpj1glfyNgYxA7UBinVAD6yfCRLSiBQ0lOmNcxgeAioDCMHQ4p
	 flogKpwxAEJu/tMspDgxyxKBmuT5cjGiZL1ci6TwhHwOE5swN7nqb6YRj7J9Til/Qj
	 UYbp1KQP20pCLm8Dz0KaRs/W9qYWUf7rQzyEWwy8/Bqw6oVwztIzWIp6OOE+A7gF7f
	 xJOR/oHdIDWbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rc73RiWR9qPI; Tue,  6 Jun 2023 14:02:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4314F6120E;
	Tue,  6 Jun 2023 14:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4314F6120E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34C241BF414
 for <intel-wired-lan@osuosl.org>; Tue,  6 Jun 2023 14:02:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03CDE81F8F
 for <intel-wired-lan@osuosl.org>; Tue,  6 Jun 2023 14:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03CDE81F8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3xWv9LJi1qe for <intel-wired-lan@osuosl.org>;
 Tue,  6 Jun 2023 14:02:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B56881F8B
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03on2062.outbound.protection.outlook.com [40.107.105.62])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B56881F8B
 for <intel-wired-lan@osuosl.org>; Tue,  6 Jun 2023 14:02:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IC6UVNIR6sHfBVQJP5Zz8Ee3aq6XdYe+HcyMKkDglJtS57HbAk4418LBRQ58krmAlr+NU21Hsn7m++POkWLnEqPONST9ultW18FbvgmJSvX35IIvfRG7qYzCamCjEYpxx9G2rMEpl9A9+mLvLmMpBy9AF+Fds194Vc3Ny8nS55Y0x7aDF/xKiGoqmPmH8ZDx5D3aycXixIA42q+VUC5xyJmuQW1qVx9Et1cgcoSJqDKUXMJo41p0UVGVb6jlglz6JcHFDUf/XkJIGr+WMS8Q6KGSyqsDDj9hXQnzNF+XLnwm9Nc3KMLwK8n8jE6f3WIbrE4sCAdK4M5EPjALfrefWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=byKuT+0Ghuwi9aNEb3flUE+r7P9sHE7bruOHr96902c=;
 b=LUt3DgfFYi1ygwZxZY+DiSqjwuB01eys6H5cjcoMzLaq7W1JlkPaEEVX+7XV6NcTmJUOuLuT+qkzmxMYqW+MtWyC0YoMxzL+UBBHH1PSXgn7GDAEI7ZUQIzOhPuMoq7GoxMgdadjUz2AIxLQPk5D1jCBUxhmIkqcvbw8VvpvU7LySEY/W6JUYubFYnZaRoRwkrMxnnSWwEeGXvEmAS/ty2fMarUbK+jh2P01WC5TcyPDjX2EEqwMjkUrrbXzVW7zPPEenOmDkyOLxhopOs0SBUqr8ur+07qKuqWg6GuM/YV9YmK3+NABN+6pCwoWEEGAZHncO9/3pVdA5bMazzt/8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com (2603:10a6:10:103::19)
 by DU2PR04MB8824.eurprd04.prod.outlook.com (2603:10a6:10:2e3::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 14:02:33 +0000
Received: from DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::5ca3:2022:337:7c40]) by DB8PR04MB6459.eurprd04.prod.outlook.com
 ([fe80::5ca3:2022:337:7c40%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 14:02:33 +0000
Date: Tue, 6 Jun 2023 17:02:30 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230606140230.dyglrbenr3geu3ha@skbuf>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
Content-Disposition: inline
In-Reply-To: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: FR2P281CA0076.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::18) To DB8PR04MB6459.eurprd04.prod.outlook.com
 (2603:10a6:10:103::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8PR04MB6459:EE_|DU2PR04MB8824:EE_
X-MS-Office365-Filtering-Correlation-Id: f98cc090-307d-4fed-9e61-08db6696acb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F3N3mftNuGil8f3+mIgXc/S3TKCmTb28+mZpwcFWnF8RSjfuORRjPM7OdIiWMxyzF/NevhcrkbvkgdLL8fjmVcPJtCWIxgbij2yd2GOG6QqR2/wLLpV8zaJ7I7j/SQc6wcHhXq18Vna2slB1WNYFz3Oi0w32q9Q9CT+9A5XE0Q7NuaOXfANugrUwOANRm37bhaW6dyWngoFx6ZawDTrb3kdPYvf5ik1XbweGKUod0aoHqVtcUDYGfqHSxt8onWnKcsekaXNhFzzwoHMMdK+ihWjSEB1zhskGF2gIxedCYYJ7AKfMoxDOVXhs3op56j8LZ2b47JaCysBDEA430bRjhE+5umm5gyz0OANNGskk2/p33azTU6t9JUcBKcbwHYh/aFra4IHHGg5mswsrVVcqK7NPjtXUsd5kmLham826T/9E/EueUKKww7HQTeL9s9B8T4MER3jec6JrhXCTu5fS5VzPKqiFTUzXNVFbjpH0wIo4v+SN7HTdLfS82Lik/UvEOzUWZlhEtxzRKB9xH4upcsOGFjC2XTAnpOFa43bYWesBJ19dOneTTgnqcilHuNqb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6459.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199021)(26005)(9686003)(1076003)(6512007)(6506007)(83380400001)(38100700002)(41300700001)(6486002)(186003)(478600001)(2906002)(66556008)(66476007)(6916009)(316002)(66946007)(4326008)(8936002)(5660300002)(8676002)(44832011)(86362001)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Axah9lsqA/OGo3wezjEqr/7mfflnTkGn096DYu+dqM0voyne84bE5BmHJ/9E?=
 =?us-ascii?Q?vv7LZzVqwDe15aR7okdbLqXgHj3hmSPznT6kRtmaCrWDx/2FGDhSqgvvnj5v?=
 =?us-ascii?Q?zzMlyObK+d/BvIwGF4Y1zifCsQ5ldrG9Gzr7zlS9RAwQ9RX+BIgTEI57wDjn?=
 =?us-ascii?Q?mb5BY8/LOchQ9or24LfX9wLZw7in6wB7/TNufcLIM0rWdpBea6Me3YvfuQ4j?=
 =?us-ascii?Q?IvQVMMVoSWRczCTwUy5rQrH+JCDNK9DX31AE8JFMLoMmuNeCFr2moTuang+F?=
 =?us-ascii?Q?GNyRYKsAF55EgFOd1Lw/GsfJPTuclcjL/MHW2Rf4ZBfdsFLrFkg9ew1MtGgj?=
 =?us-ascii?Q?JnjeEyjItHAEC0e2tJ0gnQ5jYSx/AmyQRM25yKidF7KjnUrrwfC+tg2dckI1?=
 =?us-ascii?Q?eLft0/uAHsOiJq4zRZ7UnzIH9G94kSU8iGqO8BrInYwwPOSNCl1Sj3qaVSFi?=
 =?us-ascii?Q?Q2LZGRcxHjZMa42lzD+4osw54NFt+f63bry7pHZq+HCvjanvJFIQVkcTGSG0?=
 =?us-ascii?Q?ZLyrYiSGR+8Szw3OTQetR9ZX8gQOqAPLBrf7fHyglESSq4fWbG0EDxzRMV87?=
 =?us-ascii?Q?ccGciy3oBH/dZ9AdT1vEpAIp1pcAk4v9xG6MQFksfrHYEj/ICyXu8Fn95qQu?=
 =?us-ascii?Q?YEnR/zmONR8yBLA4dEh9HnNadeaqdfm8M0D9rbW7MJrh2LWI/PKHmpesDYq2?=
 =?us-ascii?Q?eY+tGMKq4PEmwm6/qk6YbWWDPG8hnpAYVRgH6/5BWw7JqoKmfihxb6/vE4XC?=
 =?us-ascii?Q?A4SLQRjAoXCpuGh05lL3HMwzw0FIh1nuiYlUsG/NltJHkJJKD+3G1KPuztEJ?=
 =?us-ascii?Q?3KU6Dw1/RkiOpzkqxwHa6KNXarmz2lr87sBuviqD2pIf7ryghAfQevalDKHU?=
 =?us-ascii?Q?XX5aeH8yrC58i4LgFqqWz+SSGPhk3XBfyTdBJYhHPEVP7CECrQiW5P3QjEB7?=
 =?us-ascii?Q?uq63haQVC2X9k7VGqO2ivblciOY0MZyKO7qjBR0V8QWDNHgU0ChfJ37na/e2?=
 =?us-ascii?Q?QWx0mqOjqC+/lMNY9FEbBOOi6oGZcDfTSfGz00gRRdiY7q9fjc8biKGMTQgC?=
 =?us-ascii?Q?x/eHpEBqAVuYC6A1vaXS5C81ZO2hvj3J83w06TstFMKJ53/Bxbd8T4s9EZO0?=
 =?us-ascii?Q?LGgb8TYkiNER8GTaDfeUjCkiOtS4mVwa3Ost4zv3NwCLXfUohquoCi4w7H/g?=
 =?us-ascii?Q?wR1cWpOmOfvN2eG2g5En/t64n+VdnhxGrpLdquyaoekQfb3Opbu1VK/Js1Se?=
 =?us-ascii?Q?kgHVdAPI9yIHjBi2OnPXytGzo/aXuAOWw+yZv4KhY+t/zfs2Z34YlMZXwT/9?=
 =?us-ascii?Q?UE2q/FfTIxrdWYJrxjrk+AYwrX8BmZF9i5+Lypo+bOlNAmXtdunEEbpWn82z?=
 =?us-ascii?Q?RfmNHO8Wr1oFOyfhyfprgD121qamEePrwVkW5qlWnEPzi27AdgNWkG9t6Sib?=
 =?us-ascii?Q?ezoYHuq7L09YD5vymvBTml5clarSh1n2J4BwZjn3KxNnMAfIY4jJ31Hra1Bk?=
 =?us-ascii?Q?/c1g3tJXGS4Y1Z2Jzy6e6/YE+sgen2kvD/cWQcUdsSCY/50dSI6pfkuwQOlc?=
 =?us-ascii?Q?DQ/S7eCEqhZfnmIRuEZkYsTbmT2FUkOomptItjGs1tO/oNqR5dternCFbTTc?=
 =?us-ascii?Q?8g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f98cc090-307d-4fed-9e61-08db6696acb0
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 14:02:33.3229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SI7gtYLUlG9E29RZRq5m90U/rJ9wUEkSA07QbGHHW+z3GRHGXtqHSJ9eiKBdtVHZ8RUqCfVhlOELo44RBmWHtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8824
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=byKuT+0Ghuwi9aNEb3flUE+r7P9sHE7bruOHr96902c=;
 b=k16Wy259pH1ILfmXPmMPxMBNu+PbO0lc2MSpubGAKh1p6pyDPKGlqjsFJOSSIYHeUXVUNpISqTHi7Z405eRFPzn2PLAIfafxDp6AYGa0ryRSB+YVV5zzCfhsp5efiU1WnQmBA0YWxdP9f5k1leOFvSWT80644a8RuZURHNZ7ZAs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=k16Wy259
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
 TransmissionOverrun counter
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
Cc: tee.min.tan@linux.intel.com, intel-wired-lan@osuosl.org,
 anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Husaini,

On Thu, Jun 01, 2023 at 08:59:25AM +0800, Muhammad Husaini Zulkifli wrote:
> Add TransmissionOverrun as per defined by IEEE 802.1Q Bridges.
> TransmissionOverrun counter shall be incremented if the implementation
> detects that a frame from a given queue is still being transmitted by
> the MAC when that gate-close event for that queue occurs.
> 
> This counter is utilised by the Certification conformance test to
> inform the user application whether any packets are currently being
> transmitted on a particular queue during a gate-close event.
> 
> Intel Discrete I225/I226 have a mechanism to not transmit a packets if
> the gate open time is insufficient for the packet transmission by setting
> the Strict_End bit. Thus, it is expected for this counter to be always
> zero at this moment.
> 
> Inspired from enetc_taprio_stats() and enetc_taprio_tc_stats(), now
> driver also report the tx_overruns counter per traffic class.
> 
> User can get this counter by using below command:
> 1) ethtool -S <interface> | grep Transmit_overruns

Is the unstructured ethtool -S still a viable reporting mechanism if a
standardized place for reporting the counter exists?

> 2) tc -s qdisc show dev <interface> root
> 3) tc -s class show dev <interface>
> 
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V2 -> V3: Included new infra xstats to report back the counter to qdisc
> V1 -> V2: Change per-queue stats. Driver still remains adding the
> 	  statistic independently.
> ---
> ---
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 6b299b83e7ef2..342530d11aae9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -136,6 +136,16 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
>  		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
>  			IGC_TXQCTL_STRICT_END;
>  
> +		/* If it notices that a frame from a particular queue is still
> +		 * being transmitted by MAC, tx_overruns shall be increased.
> +		 * But currently driver setting Strict_End bit which indicate
> +		 * that packet from the queue can be transmitted only if they
> +		 * are expected to be completed before the windows of the
> +		 * queue is ended. Thus, this counter will always be zero when
> +		 * Strict_End is set.
> +		 */
> +		ring->tx_stats.tx_overruns  = 0;

What is the purpose of keeping a constant (0) in a variable replicated
per TX queue? It is a waste of space.

Also, if IGC_TXQCTL_STRICT_END wasn't set, how would the window overruns be counted?

> +
>  		if (ring->launchtime_enable)
>  			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
>  
> -- 
> 2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
