Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE528AA3D0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC13040883;
	Thu, 18 Apr 2024 20:08:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZxRIanhxKCLK; Thu, 18 Apr 2024 20:08:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFB3040144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470911;
	bh=kRahbD2TgACBOB307nZ9jUKPnfYOrxs6S1ag0hiGQj8=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GdMfOq7J4HM2v6TpgoudEZoT1YZ5d1Cq+NOiOr5aHNzQEUiPLs7cg9XUrEAz7sXuR
	 cg+nGys7ZAAIVa2tAIet05D/6bTGEP/jDsWOoq2pzNwXmdUuwzxyuiqi2h+kOoRUCG
	 o9GxzcPKn7CcekGFpghSlXH9xtMw6Al5e7UyC6QpNqQbO+sHI9o2GNgXU0dDc8lxuq
	 9G52aiQkZ+8jrtSoCw7cUOeKA5jKHF5+LzrfcT9VKNMx5RIHvCmmmLpsuPFxoAHGB2
	 dQE/Yvl5o3QJS2j1W7W7nGLQiDrBi1T4pbIvl3ByrAQOQ22epTFCowztQoNSOHiBqv
	 CCO8izKKMtJTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFB3040144;
	Thu, 18 Apr 2024 20:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 377EA1BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FB9260A53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:06:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b0EHZRCr6akX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 20:06:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.70;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40952608F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40952608F8
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2070.outbound.protection.outlook.com [40.107.220.70])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40952608F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:06:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fgZuywfBTVIfrHfReietpZIAFXMpYYqX36IaNAJK9rdcn/ug/OaKywXaNhAUPdF/5bEzUviCskfTRerCgDK5mZBWcGfDGFPOBNNGJE10YZbHjW1mand7G1Gj7cY079162EhO4X0i220C4c9p5xinKtY+ON1moqt1sN8om4JDVXXv555Tk4c7WjpOzvPjr2YEXNF4GKHCVae2TWHjvO0xWu9xmiBk1q7C9SsjSduyRYt/aPaAB7YdwWKWkHF4Wve8U/3HEFO2LdDjaGTB/PpupVzWvgxRM6tIInwss5I2ijoA86qraXpoy+QeN9AkZDgH9b4UTNmZ1FnQdDK0dLtS1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kRahbD2TgACBOB307nZ9jUKPnfYOrxs6S1ag0hiGQj8=;
 b=gFbStmWvDyOUh2c07Xn0JKcN1ds3UTz/uQdRQBp0gSx69pZIavI1C+eC1G4/Pp7LsnMLfDY0DV86yN9+c1RGGVDIBY18jsmJzITZhSkbH5kWRqM7CbXsymYk+e6XcBhuKzIZIrvOvAgfglHfEImB9lQshU563DbQSwBZw3l5TjhswAZdE58nL95aNsD+pwJfyCWodO/0toDmr4wIy++mrtxYLD5vztEHUza9qBUiExdpVvNzdeDvrxlHJrbHBtw9MD/BgpoVPudextScIZNmxhlKx2uf4gpBB6iJjmqP5hEFFd1eOtRy6uEpwezOY1rPxs+quVScWhlgGLDkN/WJow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY8PR12MB8193.namprd12.prod.outlook.com (2603:10b6:930:71::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.42; Thu, 18 Apr
 2024 20:06:34 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 20:06:34 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-10-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 13:00:40 -0700
In-reply-to: <20240418052500.50678-10-mateusz.polchlopek@intel.com>
Message-ID: <87frvie8qf.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::23) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY8PR12MB8193:EE_
X-MS-Office365-Filtering-Correlation-Id: f186e878-51b4-426f-9de0-08dc5fe30bc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HzkDNj8pssRhVYALPNjmW8Wv8tJlGYykVPU1dM/54gwGBlZbAGNRHx7PWk0lCcgKBvClbF0kEGPu4ausnu8oh2UCUNxBDNFV0Aqf1l832xiurLPoQfSgOb9VZ8XSsN+N4Oavbz6MtWhxYxJEqKIm8AIA3b6LNJYbmzgN7qAIqrLweX4yGz94ycoDRHnrP79hDrS1zAsMB6FZbfkBkNJHwT5rJdfLu4efI415Y0WtiRU0iCloryseIKkmda568G/GfBvjTqQ2qnb5TjegRDkk/xDLvnALDQ7sm/n+KUqBKqa0H5Gl9q/8QswgssesJGvwRamJLE99vPSNeknbOssvJoA1R+6ZyJL5XRT6+hKwEzYa2tHTbfc+ZEKAdwU1F4kv9F8e2tAtcfVfMsIa7oaggo5Z6j7ADm2qVyuIF2/2aYgEImNw+aGtPsO4DNW9CjfgtV3+s4wKwJfWHL46tqKHjdBYYyxDXEOoaxxSRDzaVZD6F0UuWRz66/SzWd5jfEd7GG/DwsxOPyWwOibEorGvXSLrAcYDe04VONmTsXByLRsZ21UDZ8yM1i5tAo6TTJ+l6N2xtrxbKwbDieC42W85UETq2fN9sQ1lHOyrven21UeV5kmYMR5y2ptuXQaAHOjP8Gl0SpoAAmhviTzf5xukWLVEHaHON17JsoJ16ARLDvQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RMUFY3lrykh7bh2aYUWsL+uNIk8gkK66qkTsG/4Mfaivx7Opt0qJb+xW87U/?=
 =?us-ascii?Q?JFlQpX8SFWsuhmnb2+8ZMik2yOaIDhVbM5eM/zzNiLQNvIj+LnAcj5f9H7J6?=
 =?us-ascii?Q?797koDcxtMSdQRBaD6jug/Vuzodb84I/0ePJYncrngrnSgGhf78cn5q2Rmz6?=
 =?us-ascii?Q?u5WcbsRiFVaakjslFHwtsxM1bgLqUY+m/37sI3nfjfndWAqdqUVyO6GHYeIn?=
 =?us-ascii?Q?ZkiyhB2lTXtxiMG9lxhXL5IY/0IrfUq4I+uLAqgvbIUsOpTSRirNKBRk2d63?=
 =?us-ascii?Q?/MOWWtKNp+k7SBwvEwJv0QK3jpsIWjB3J13A7a+p7ct45zQOAXz8DlI+XKb8?=
 =?us-ascii?Q?79MNhbSDw9jFh22rpjzVR27l4TUJDu9hoorAoMwPCgxcU6Q23DpA2lAvNAiK?=
 =?us-ascii?Q?2Em0TD2yxz4uYGWjNyA3Bu91obNawIDgEZRzpZPoy9NwRP6C90pCgXwsX96m?=
 =?us-ascii?Q?8k10NXx16ifr2FYVlHD4w0oRWdCpEWT8YIhtcBKQy6+NQZdJDn8gKhKzjWo0?=
 =?us-ascii?Q?iMgkCCs8ngErpf67Hh8/ZVG2fYizU+P4z0RJthUx6qHQ+iuIwR4ubyXnAZ4T?=
 =?us-ascii?Q?7MdwruZj+T7STw3241VrGlPA9uk5hcDucZRlXq41dg5rb9aaMbs7U5SMS1p8?=
 =?us-ascii?Q?RbqJ5e2pbohnMz1KS1LpdS1x61o49gmp6QP504AFa9jq7frGQ06niAmBa5kj?=
 =?us-ascii?Q?Gdr2C5q1j3D2dvX5nKbRCEUixDgKO4XnItvCeuJ5cOT93iprThfVFv9cGij3?=
 =?us-ascii?Q?nSCU2GokRlPRrBz3vWoK0DOT+XptlLSPUF7qcX/YvTV+2SDZL2Vr3ib4zAIk?=
 =?us-ascii?Q?RVHOsvffWFqg6yOf3dHLCLYsFZD4ZVI3MfYkhET/Awi1/SSs3S0jPqZ2bc6O?=
 =?us-ascii?Q?4DhOOJjek2XLioCi+fsm3x1pjvGzTJwGG96ilVEyU3DF5+wdN5lZviMmhS2M?=
 =?us-ascii?Q?1zqg2JMnX8iurWTpx7x49l4VQG1JPXruMCx+tp6wpi4LUGd6zgt1hcfQqvGO?=
 =?us-ascii?Q?LREFQejD8kFcFZpJr0rEh4Qbn+MvBIFr1QHMnq5YUyC5TbQANiY+30q9ELLP?=
 =?us-ascii?Q?RuGX8ibbLcHTkZlpAZ5EnuBq1drWTM0JzOeJODqtzNlPU6WD7WNTrv+pHTtN?=
 =?us-ascii?Q?WFOrWH//YxbjmvZ3raQreI2WwIJqLA9ABYeBnz5OCpYexFuvcVyLkj/o3x3W?=
 =?us-ascii?Q?6u70UHkIrjugmFJivP8/tjwJKsU+bBHknykXSdNClqFkMpcVB7G4LhHvbAUm?=
 =?us-ascii?Q?aSTzl7MqqZr0NLCopi2/EHzi6+if/qq1vyIr+D3uOf5/LvfMO8/uQZeLYorr?=
 =?us-ascii?Q?GbBCJQ8ZtYwZ7DlTfXzBIUitCZhEPPAMChH5HvbHS5i/znPt9Nb2VlmxC2vB?=
 =?us-ascii?Q?3OPZCRPzNH5yZg/6SbS80FZ48YFHTjfDk2b8t7MMpzInWwLiVuRELBTQKH8C?=
 =?us-ascii?Q?j3Rlr+8li0uxK4hDAoyNIETTEQkgJ4s2bMTU8Z3FIl2W2ZOaTuOctZMl03lv?=
 =?us-ascii?Q?dQykNGiGEhLy7NHs1KU7+K/qJcQo+DxarZYTEZcGljLTxC3NnNI28tdF/Kgy?=
 =?us-ascii?Q?KqoMDqVkoijED2KCLgPSheehsMroQqXEH9RS+IyNVeBE0BNjCcq7EgEjmhjF?=
 =?us-ascii?Q?pA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f186e878-51b4-426f-9de0-08dc5fe30bc1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:06:34.0716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GlBhsYLOSgxjym+w3KcsC3SBu86Vjz6pmzksuoXinVzawFPkuMIoLt5M/CNJrUvSCTGk+FgxxPk7taVM2vsPhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8193
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRahbD2TgACBOB307nZ9jUKPnfYOrxs6S1ag0hiGQj8=;
 b=M23THS5eDXZd5nIKq0+hVN0YqtPBAssKrqSeUOPeswGRTAFFbhO+w/BM3HQ0a85Ru4OdZvGh6u7sgvNWGznKxTP2eFfozX+PITV9kFu2AHDPl+Y3hlERZANOC5etu4iLr9l/r1WIGDn4wMvjTtB6D/VUSMlgx55zHxo6cAkbNifbXqNrx7udfdxSD5DZvbKl8BWYF+9iPrETdO6CnF4vcObRNGHzdYLYKAG2YhzyqAv9F2Qla9SDA/fUI9jKuY/W4ZqZIdnQFqZfSqzGh+BFSgkzq6VbuupvoAQYt/JkJYGU4QgMpzL0p9LBxYU5h9LCDl7GcSs44o8ye1IzfpZIUw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=M23THS5e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Thu, 18 Apr, 2024 01:24:57 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the
> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
>
> Also add bit position definitions for the status and error indications
> that are needed.
>
> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
> descriptor, including the size, rx_ptype, and vlan_tag.
> Move the extraction to a separate function that decodes the fields into
> a structure. This will reduce the burden for handling multiple
> descriptor types by keeping the relevant extraction logic in one place.
>
> To support handling an additional descriptor format with minimal code
> duplication, refactor Rx checksum handling so that the general logic
> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
> structure which holds the relevant bits decoded from the Rx descriptor.
> This will enable implementing flexible descriptor handling without
> duplicating the general logic twice.
>
> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
> format instead of the legacy 32 byte format. Based on the negotiated
> RXDID, select the correct function for processing the Rx descriptors.
>
> With this change, the Rx hot path should be functional when using either
> the default legacy 32byte format or when we switch to the flexible NIC
> layout.
>
> Modify the Rx hot path to add support for the flexible descriptor
> format and add request enabling Rx timestamps for all queues.
>
> As in ice, make sure we bump the checksum level if the hardware detected
> a packet type which could have an outer checksum. This is important
> because hardware only verifies the inner checksum.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 354 +++++++++++++-----
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 149 ++++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +
>  4 files changed, 390 insertions(+), 126 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
<snip>
> +/**
> + * iavf_flex_rx_hash - set the hash value in the skb
> + * @ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received and modified
> + * @rx_ptype: Rx packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + **/
> +static void iavf_flex_rx_hash(struct iavf_ring *ring,
> +			      union iavf_rx_desc *rx_desc,
> +			      struct sk_buff *skb, u16 rx_ptype)
> +{
> +	__le16 status0;
> +
> +	if (!(ring->netdev->features & NETIF_F_RXHASH))
> +		return;
> +
> +	status0 = rx_desc->flex_wb.status_error0;

Any reason to not convert rx_desc->flex_wb.status_error0 to
CPU-endianness for the bit check?

> +	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M)) {
> +		u32 hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
> +
> +		skb_set_hash(skb, hash, iavf_ptype_to_htype(rx_ptype));
> +	}
> +}
<snip>
> +/**
> + * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + * @fields: storage for extracted values
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + */
> +static void iavf_extract_flex_rx_fields(struct iavf_ring *rx_ring,
> +					union iavf_rx_desc *rx_desc,
> +					struct iavf_rx_extracted *fields)
> +{
> +	__le16 status0, status1, flexi_flags0;
> +
> +	fields->size = FIELD_GET(IAVF_RX_FLEX_DESC_PKT_LEN_M,
> +				 le16_to_cpu(rx_desc->flex_wb.pkt_len));
> +
> +	flexi_flags0 = rx_desc->flex_wb.ptype_flexi_flags0;
> +
> +	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
> +				     le16_to_cpu(flexi_flags0));
> +
> +	status0 = rx_desc->flex_wb.status_error0;
> +	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M) &&
> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag1);
> +
> +	status1 = rx_desc->flex_wb.status_error1;

Similar comment to previous in this function.

> +	if (status1 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M) &&
> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag2_2nd);
> +
> +	fields->end_of_packet = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT,
> +					  le16_to_cpu(status0));
> +	fields->rxe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT,
> +				le16_to_cpu(status0));
> +}
> +
> +static void iavf_extract_rx_fields(struct iavf_ring *rx_ring,
> +				   union iavf_rx_desc *rx_desc,
> +				   struct iavf_rx_extracted *fields)
> +{
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
> +		iavf_extract_legacy_rx_fields(rx_ring, rx_desc, fields);
> +	else
> +		iavf_extract_flex_rx_fields(rx_ring, rx_desc, fields);
> +}
> +
<snip>

--
Thanks,

Rahul Rameshbabu
