Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E25A69FA4F9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Dec 2024 10:24:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BB0F811BF;
	Sun, 22 Dec 2024 09:24:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HQ5HoJ2-n86I; Sun, 22 Dec 2024 09:24:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4082811C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734859452;
	bh=OE8iGFY6+W6DsTrKDmbDdEggSFPQ9XwVoMWv2Wtzm4M=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=225I7eT0Pw+ELzJqfdkFhihkCzCLYRJkBfaR36QU2gzWytibL6luW9rhL5fYlDaCS
	 JyqwaUbr+Vwbl+kl7lGpY+aROWguGfQgzco6hhlDl9t4OMNnThPy4Fum5qpikcZe8z
	 5FMjOG1jSbZlMTVgOY9S6V/P5VncjWqMNrLZRrsyNvSBhKH1kBalUDdNByHwyceL32
	 ccLfiCVLmYzPSlxMePiF08mm+a2wWZVBQpauQ5TMBfxoAnfD//aMop2Du6pmeqsdFb
	 9ErDAGBhucFr/t/Z6glPhO186r0rNWgpIj5K2+Z0batBb6gUSZhaRzcDTxynZn6TAH
	 f+LHiO0QjeIZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4082811C0;
	Sun, 22 Dec 2024 09:24:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BEBBD3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 09:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A26A40E37
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 09:24:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZUt1s57sQVDK for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Dec 2024 09:24:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.82;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=shayd@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D605740B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D605740B38
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2082.outbound.protection.outlook.com [40.107.243.82])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D605740B38
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Dec 2024 09:24:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u3ubq6P1wbJv8BjXS/c0sHwSlhcuItnNd0cZgSAihykShAj2aBnjH74SKSOz1u+nUReCF5PXLtC4C6vdS63c8FwOiSPapp42j82M9yVw4vR18nRz2grgYs8G4UkJTEM1ZGl4n//WpVSkqnSOesf/vPGcfrHwu1mH77MvarmxOhT4oxpcxuCt3m+bHd/1gf15Twy4VP8nqANUv0sIgJCJLOlJNYtk62+eo4mHE/MHkZPbVE/sKQTGvuw0k1g2v8XFx+Vc8kNLm1cezkYbOv5TOQXAGhOMrYZs6EcBdoL1eLw+Z1/B9im7YXt4OYWE1zFsIjeWTqyTHMbNTs5a87Dxhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OE8iGFY6+W6DsTrKDmbDdEggSFPQ9XwVoMWv2Wtzm4M=;
 b=NxzavcwJe1dW7G0cF2PHwxqlmtDMf8qWsBWMPYRSP/ZgSuJeB8XGJMkxPrH638Qq5MKy+kYBcewSUMFCSHbzLJ8ayJymjp7D822gAVyOOV+6uTz4ROBDG13CNHVAT2CG4OAIgXN1pbnvxI0Df11Da1bRCITL5CiI/18eCL2jaVC/398bqO7w4O0OolyP/nDxgrRdonZK27wFjKKf7W2Cie0LwYa6Iorgs7l8cpkbwkqn3MCcSlI5NlbBwwSaVpqp7EZ++XVE4q06iYmCoo2sj/n+jYZqnI2LaIPapFgvEZJloL3ysgxNNFqRYE8C4Cguqu08Gv1SPGrl3IRxyjE2pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from PH7P220CA0128.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:327::15)
 by CH2PR12MB4117.namprd12.prod.outlook.com (2603:10b6:610:ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Sun, 22 Dec
 2024 09:23:56 +0000
Received: from CY4PEPF0000EE37.namprd05.prod.outlook.com
 (2603:10b6:510:327:cafe::d4) by PH7P220CA0128.outlook.office365.com
 (2603:10b6:510:327::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8272.17 via Frontend Transport; Sun,
 22 Dec 2024 09:23:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CY4PEPF0000EE37.mail.protection.outlook.com (10.167.242.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8293.12 via Frontend Transport; Sun, 22 Dec 2024 09:23:55 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Sun, 22 Dec
 2024 01:23:45 -0800
Received: from [172.27.61.65] (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Sun, 22 Dec
 2024 01:23:40 -0800
Message-ID: <58e58bb6-730f-4167-9f86-92ea8ec17019@nvidia.com>
Date: Sun, 22 Dec 2024 11:23:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Shay Drori <shayd@nvidia.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>, <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <andrew+netdev@lunn.ch>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <akpm@linux-foundation.org>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
Content-Language: en-US
In-Reply-To: <20241218165843.744647-1-ahmed.zaki@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EE37:EE_|CH2PR12MB4117:EE_
X-MS-Office365-Filtering-Correlation-Id: 99f841df-d98e-444d-cb9e-08dd226a5bda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|376014|1800799024|7416014|36860700013|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGIvcXh0a0ZyM25uK1oxRnQyVmpsRlZ6OUsySkJDVCtzeVdLbDEyWDRXY2FG?=
 =?utf-8?B?WEtTSjdGQWxucTRCWnNxdkg1QUdsR1JqOFcraWJ3QlMxeWQxK3p0aVBmUHNy?=
 =?utf-8?B?NFAvNElsSGZnWUJoUUJSZ0gxQjNvQXZzUXNzWUdwazBra2ZaaFhCSS94QnFU?=
 =?utf-8?B?aWNvdEVtSG9OVjRycUdacTJaREN0YUxEMVJoazRJYjZKYmkxQllSNk5qcDhV?=
 =?utf-8?B?ZDNidkRRNWJaL3IyOHlxOHdCL0ZaQXliOTVqM04vb3Ftc0cva1hrSUZMMGpp?=
 =?utf-8?B?cy9Ick1CS3pCa2k3RFF3ZEp6TEpkOS9aQVBXYnRLVk9ONnNPQkFPeWtraCtv?=
 =?utf-8?B?MmpHc29EODBsMnZKVFhjc1V1aUpGMGw4UXJadEZGRGV5NTdNc2hqRW9xd1ZC?=
 =?utf-8?B?U3dDTTI4ZkZxTFFkTjliYVdlRE14Z21EZTFQdHk1NVBIdkUzZkFwWElWeEFK?=
 =?utf-8?B?MTFSVkVwNE5CbUpjSzRQL0ZUTlNvVzdudzhkakhhdkloMWNPOTNIM0NvNSt2?=
 =?utf-8?B?b1lZbkp0M0RGbS9ETDJERXU5U2wzVVpsVDFKdnlFZkZiczlFWGI3cHNqRjV2?=
 =?utf-8?B?WWsxVzRqdzhDak9ndTJxdUJlQTZjTFpTblIzUkpBa0psMnlWTTNVTWtRaTFC?=
 =?utf-8?B?VHY5SUYxS3hKWmdydWY0YW9VVkYyM0paTi9UamVHaXBOU3QvZU1YS29qejB3?=
 =?utf-8?B?ZGFjR0I4VEkrWmJxNDd3djJpTmM1cFduZEVYbXczL2F0bHN3MS9jcDgzdzlp?=
 =?utf-8?B?dUNEWDA3VmZhVHFBVWhNelI4dmdLOU5ZV1cwYTg3TDIxZWhDSVBNSzc0Z0h5?=
 =?utf-8?B?aHo2QzdhZGVQckxWK1RBaWdvRDFLYjRWM1hlMC9iVHBsLzgraU5wdTFmenFu?=
 =?utf-8?B?Y3JlZ01Lam5WaDIwbzVZNTE3NEtMM2pQc1cvM2RsRjFiNFhhcWJrY0tycW94?=
 =?utf-8?B?Ry84K1lCZkhzREphVTluRGx6UUgrRmVGQzJnOUFJMUJiUnRBUkdDWkZyOXl6?=
 =?utf-8?B?M1AxelZCbisrY0ZIS05xMlNkWERkQ3BMK0xHekJ0TlV2S29vYWxtK1dKUVc5?=
 =?utf-8?B?QnFlR0U3N0Zrc2tnb2ZMZHN0blRLM0pqRzd0d2loVGhsSkFOcThHazhmL2xz?=
 =?utf-8?B?bmdqL0wxZ1JOaCsrZlR1Q2N4WDRYajVVZG1MYVd1bmoxYTNmMG5SOS9SSzBp?=
 =?utf-8?B?dXJtK3o0Z0pFZlhFUDNMMjlJS3AydURvVkdCdkNaQ3hsTCtDU1YwOXFZYTZ6?=
 =?utf-8?B?MEpENFI5cHdTS1dTakJkVmJ0Nk1IVUZvNUIzcTY2TDEzdHlFcFNlQmpIUCto?=
 =?utf-8?B?WkRDa2VYVEdvTUJJTEZkNmRUMUw0RFUyeWMwenE2NHRJWGpZWU9mK2p4b1NC?=
 =?utf-8?B?S3NpMjQzK21tak1XZTJ5SXV1VGswR1FOTUZ6VnUveXljVnJpcGVGbFZCVXpx?=
 =?utf-8?B?SGlXQWkxY0hVa1MrRTZiejY2SDBoYmN6NGtKZkdRQ0phdjA3VTdhb3VGYVhC?=
 =?utf-8?B?WEJCSzhnT25pMWxLM2YvbGluTjdSKzFRWDYzMGFZcUFYVW9WQzN3SE8rVmI5?=
 =?utf-8?B?ZzhuVk5UNTJmZURKQjZkYUtibEdLNmxGa2x0bDkxRlRRemhUVFdsWWQxMFhR?=
 =?utf-8?B?R2kvZXlTSldpS0liN3FISUJxMzJ4UTM2eHJDR21nejZEeGx4d21FSEVVM2E2?=
 =?utf-8?B?QlhnYnRCbFNGNk93bGVZTWo1bU1ER0RXaHZYK3Y2OWJnbk5BQ0paRFNBWkg5?=
 =?utf-8?B?OVZSZ01PclJXN0EyWGdZU3V1MzRXcSszd3dSd3ltM0JCTGt6WmZkVHZTaUly?=
 =?utf-8?B?Wm52b1BUcnhXWm1KV3ZLK2tsd2htUGFNcGM4cjJwV05zUVFBaUdOdlZLb1Yz?=
 =?utf-8?B?KzB6K3N2UkhYQW1mTlhZT1lVa1h1SEJXdTdNTGE0ck9iQTJXMVR4ejV1UUxC?=
 =?utf-8?B?M085NlRwcGVTVXpiMGM2NXJwNDhMODgweGg3L2czWVBabGNJS3FrbUhsNTd2?=
 =?utf-8?Q?sILe9Qxb4YVIgsV2FDLNcktfulox6A=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(82310400026)(376014)(1800799024)(7416014)(36860700013)(7053199007);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2024 09:23:55.8015 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f841df-d98e-444d-cb9e-08dd226a5bda
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CY4PEPF0000EE37.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4117
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OE8iGFY6+W6DsTrKDmbDdEggSFPQ9XwVoMWv2Wtzm4M=;
 b=ak42AiVsmfEsFOuhlAzWa7OvEiaTMB4hMjb08Rql2GRV/fl5W138ZFiB2XfZ5hsoBdjdPvK05RN9ZZMtPXAq9aVllMDKuxtEXLWFbTmGr3UHiyDjmU2uTZrPshUsatJxW/e1WPQzlPJTQH8YawyGhtkP/EoEU5o9GP2RXll3rsbucHdmLMUQzH9FnHFj/TTRp0+cpeQQLsFNjE93JbRTsv2fYSyygZj/UcWdBByPZ28CfdvDeSiSrELDVHcCaRmoeKkNkvu6CBTkyb8W2TknBkRLAlh3YCrpy48P8OIKxCJOAyHroe+qacANqlqf/TKmy3rmsisov1Q1GhV1Xc67sA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=ak42AiVs
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] net: napi: add CPU
 affinity to napi->config
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



On 18/12/2024 18:58, Ahmed Zaki wrote:
> External email: Use caution opening links or attachments
> 
> 
> Move the IRQ affinity management to the napi struct. All drivers that are
> already using netif_napi_set_irq() are modified to the new API. Except
> mlx5 because it is implementing IRQ pools and moving to the new API does
> not seem trivial.
> 
> Tested on bnxt, ice and idpf.
> ---
> Opens: is cpu_online_mask the best default mask? drivers do this differently

cpu_online_mask is not the best default mask for IRQ affinity management.
Here are two reasons:
- Performance Gains from Driver-Specific CPU Assignment: Many drivers
   assign different CPUs to each IRQ to optimize performance. This plays
a crucial role in CPU utilization.
- Impact of NUMA Node Distance on Traffic Performance: NUMA topology
   plays a crucial role in IRQ performance. Assigning IRQs to CPUs on
   the same NUMA node as the associated device minimizes latency caused
   by remote memory access.[1]

[1]
for more details on NUMA preference, you can look at commit 
2acda57736de1e486036b90a648e67a3599080a1


> 
> v2:
>      - Also move the ARFS IRQ affinity management from drivers to core. Via
>        netif_napi_set_irq(), drivers can ask the core to add the IRQ to the
>        ARFS rmap (already allocated by the driver).
> 
> RFC -> v1:
>      - https://lore.kernel.org/netdev/20241210002626.366878-1-ahmed.zaki@intel.com/
>      - move static inline affinity functions to net/dev/core.c
>      - add the new napi->irq_flags (patch 1)
>      - add code changes to bnxt, mlx4 and ice.
> 
> Ahmed Zaki (8):
>    net: napi: add irq_flags to napi struct
>    net: allow ARFS rmap management in core
>    lib: cpu_rmap: allow passing a notifier callback
>    net: napi: add CPU affinity to napi->config
>    bnxt: use napi's irq affinity
>    ice: use napi's irq affinity
>    idpf: use napi's irq affinity
>    mlx4: use napi's irq affinity
> 
>   drivers/net/ethernet/amazon/ena/ena_netdev.c  | 21 ++---
>   drivers/net/ethernet/broadcom/bnxt/bnxt.c     | 51 +++--------
>   drivers/net/ethernet/broadcom/bnxt/bnxt.h     |  2 -
>   drivers/net/ethernet/broadcom/tg3.c           |  2 +-
>   drivers/net/ethernet/cisco/enic/enic_main.c   |  3 +-
>   drivers/net/ethernet/google/gve/gve_utils.c   |  2 +-
>   .../net/ethernet/hisilicon/hns3/hns3_enet.c   |  2 +-
>   drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
>   drivers/net/ethernet/intel/e1000e/netdev.c    |  2 +-
>   drivers/net/ethernet/intel/ice/ice.h          |  3 -
>   drivers/net/ethernet/intel/ice/ice_arfs.c     | 10 +--
>   drivers/net/ethernet/intel/ice/ice_base.c     |  7 +-
>   drivers/net/ethernet/intel/ice/ice_lib.c      | 14 +--
>   drivers/net/ethernet/intel/ice/ice_main.c     | 44 ----------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 19 ++--
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  6 +-
>   drivers/net/ethernet/mellanox/mlx4/en_cq.c    |  8 +-
>   .../net/ethernet/mellanox/mlx4/en_netdev.c    | 33 +------
>   drivers/net/ethernet/mellanox/mlx4/eq.c       | 24 +----
>   drivers/net/ethernet/mellanox/mlx4/main.c     | 42 +--------
>   drivers/net/ethernet/mellanox/mlx4/mlx4.h     |  1 -
>   drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  1 -
>   .../net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
>   .../net/ethernet/mellanox/mlx5/core/pci_irq.c |  2 +-
>   drivers/net/ethernet/meta/fbnic/fbnic_txrx.c  |  3 +-
>   drivers/net/ethernet/qlogic/qede/qede_main.c  | 28 +++---
>   drivers/net/ethernet/sfc/falcon/efx.c         |  9 ++
>   drivers/net/ethernet/sfc/falcon/nic.c         | 10 ---
>   drivers/net/ethernet/sfc/nic.c                |  2 +-
>   drivers/net/ethernet/sfc/siena/efx_channels.c |  9 ++
>   drivers/net/ethernet/sfc/siena/nic.c          | 10 ---
>   include/linux/cpu_rmap.h                      | 13 ++-
>   include/linux/netdevice.h                     | 23 ++++-
>   lib/cpu_rmap.c                                | 20 ++---
>   net/core/dev.c                                | 87 ++++++++++++++++++-
>   35 files changed, 215 insertions(+), 302 deletions(-)
> 
> --
> 2.43.0
> 
