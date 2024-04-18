Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3148A9DE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:03:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE00141579;
	Thu, 18 Apr 2024 15:02:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SVTgr-y-m76y; Thu, 18 Apr 2024 15:02:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E99B8409C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713452573;
	bh=Tb2SgoFgiN2WmwwjAMlrN+0O7L+G3ue8avQU2Bvs84o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HjUj0J9w1Q4+4qbLBtrxL/6Tk66Wi7sBZXATln/Ml+wJ68c9VJ9vs4LLGCjMTAguh
	 v7+pEeKb6WmIcTpONi9ZGJGg91dPbdRlrsyaWBNNxSMBNOAVSvgJH3u8fjBlZkYz4v
	 +nJNBnaeHGwzseacYIorSq7bCLzBFZvUm6kLa7sSX56AfMepwlMbmlHjGPLplj9Rfk
	 4UY5lb9C9uLYrXySmtBwoywf6kzqKt+ydNPUz+NFhq9fKsEaETWsYqFfjRnv8kFl3s
	 mEa7Rq4k9ErX0GU9/u0cYm4OwhJ0AQDXF1yPJBmvPes2GdjoIqQKrD/axWH1Oc1JAo
	 rUncynoWkXx0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E99B8409C4;
	Thu, 18 Apr 2024 15:02:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 861D41BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D59681F43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:57:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3Jaf1MwtDtqD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 07:57:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.100.43;
 helo=nam04-bn8-obe.outbound.protection.outlook.com;
 envelope-from=shayd@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6D5FB81F40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D5FB81F40
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2043.outbound.protection.outlook.com [40.107.100.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D5FB81F40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 07:57:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHexc6DO2WN+GzuPUxFcrc3TOz77wRdO+htCfTENE6v3wfe6YtOAOCHrgmkt8wW/OsUe04AK8j/KLI7GP3obedMPExnwofpfWkRUZ27sxEfEJ4yv3UZ14BKNRQr8gpo0PR5KD878vzqL8VbYXbMeYM8vLX/037AYgCFukFbnUjadJJEmP9ihzcgCzJslUK+13RCuCYcK7ztGpQIysJX1ffWCGxQI42/s4iC/NfiOhPBwdRmzvMp0s2KbMhAMCCZwYzlX11Uk6QRFD8DAWXv4bLacwAd7I9grSioYywxw/C8sk7Ao4+Gn2zrWADeu8eScdnNZ9pdWi/T1om2nqXSn5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tb2SgoFgiN2WmwwjAMlrN+0O7L+G3ue8avQU2Bvs84o=;
 b=eB5HG7niAuWusc4u8j3iePTDs/tCced/MLtoM6gAc6BM3u/2RRhsAQBA3P5O2g/k45mJMzrPbIHT3/kQ8hQE3gtLetsFSQHev2/LVrT4gjHlK5DjPI4ni7QygreuXem4587NZDXT5iNvy7tUnTm+9AOE28lN8bN5OGgT/RoHsWK4I3ROo3LDLOIu3/hyzAaopJx9fPaxoy8y3hC401v0ex2llQTDLYFcFKXHglTFSiYfAObWj+MeDQaWzNZmLRDFc6liLI3u+q5rYedjFHlIyboZct1+qxuU51F7sVCVpHQXV14F0e6z7p/ip/H2AxKFpdoF5uNLDqO9NJlbqIOvIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linux.intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from DS7PR03CA0263.namprd03.prod.outlook.com (2603:10b6:5:3b3::28)
 by SN7PR12MB8770.namprd12.prod.outlook.com (2603:10b6:806:34b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 18 Apr
 2024 07:57:40 +0000
Received: from DS1PEPF0001709B.namprd05.prod.outlook.com
 (2603:10b6:5:3b3:cafe::74) by DS7PR03CA0263.outlook.office365.com
 (2603:10b6:5:3b3::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7495.20 via Frontend
 Transport; Thu, 18 Apr 2024 07:57:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS1PEPF0001709B.mail.protection.outlook.com (10.167.18.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.22 via Frontend Transport; Thu, 18 Apr 2024 07:57:39 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 00:57:20 -0700
Received: from [172.27.34.210] (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 18 Apr
 2024 00:57:16 -0700
Message-ID: <88b7e836-657c-4105-80e0-c0c68dffd140@nvidia.com>
Date: Thu, 18 Apr 2024 10:57:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-7-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Shay Drori <shayd@nvidia.com>
In-Reply-To: <20240417142028.2171-7-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF0001709B:EE_|SN7PR12MB8770:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c1171ee-70f8-4e07-fcdb-08dc5f7d3804
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +4olAbmQLjWzw2L6EsgpSLEghm6l/GbkZclqenaXnbcgg1lOjmIHMAwmOIMtPvB7Bz1yUPpGR41NBMJSnDclsfQd9K1waxmzX+qs1SyhQhHaGNfYDfPHmTO7f1auw3041l7FgbZvxjCbSaQgLa2FVARAAIOUhy52ADz3w0jN+57xMiBrnXc4CIRCeXwunvgXmYSDtnXTS4KRpLBB/ykVJi2vVN4O1O2lESJHTAfE8XHTcdVphvnSWo8OvHPymAf9tOB8zRQrtiSbsZb5MW1v8j62oCSDhqra+c7nUzDV62fHjJJzWCa0m+ORmYqc1ReN/7hnNnIdigYCbIE+X7Y7lHYRgsBRZyqEAhPb/YPfiYE6DAJoFYIauLCGHIsA3t8rFGOzyYKSUyj1wZ9xBYZu/DjSgW6J0Stp88ETALll8B+f8Bw3MV1IARv8UZGq7pluECyI1cyQZJU3wRcqdrzdr0W6yIQS8k0W3UwzjyVuVqIYpQM59ntzURvFKFZMcpYgjFQw87eYIEyi2Qp+x/P4PljxnpfzDviQbuTo9Qty57p0uogpCYhAZe642qshxVtgRS3zvMpnfnd36U1UsBxQCXRIYsyorolimeKlGbJ4Z9LPh1PAI/YNF/4f7KLiKfX6RhOLqBfMvjN3IgQrVRAN0AgPnB6PQLg/kewJBzJsa5SZ1NWFFuLsA91/XEJhFD++V2a49MRcMvVfXRd1FXpxP/OS+7NwH86HtL5gVPnnW47siDUxW0dNnAYQ/HF8wNCR
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230031)(1800799015)(36860700004)(82310400014)(376005)(7416005); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 07:57:39.3763 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c1171ee-70f8-4e07-fcdb-08dc5f7d3804
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF0001709B.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8770
X-Mailman-Approved-At: Thu, 18 Apr 2024 15:02:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tb2SgoFgiN2WmwwjAMlrN+0O7L+G3ue8avQU2Bvs84o=;
 b=Mjt01SckT9rcns9SPmu7gxcVHIqpsykQa+8ht0x71vI6z8ylKPPjeYuD/20fga/Ty5aLf+/BCBNfIvLmYi8S7Ui0b/vF6uaMORMwq2rrpCzN+PhRvZOxD5kZjZg31Lynrn8p7EXqFa8MNDL9GNtemFcF8mwDRwZdn8+nbV7Q8/FyX8D+1JFfcya8NFcii7hmVbI3/lx++yzhfCWsrHHC74c9KqW267QbIDc6FRZTnjoYLQ6hNBEGj0Bu6Xw8ASA/rc4f1QyRHukWHcWeBubJnDvTZFYpvH39JLGoXyI+UEl3PCVY3BHBDPDQ4hAXkYd66GZupuEkIV0RsCAEi3vdSw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Mjt01Sck
Subject: Re: [Intel-wired-lan] [iwl-next v4 6/8] ice: base subfunction aux
 driver
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
Cc: maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 17/04/2024 17:20, Michal Swiatkowski wrote:
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>
> Implement subfunction driver. It is probe when subfunction port is
> activated.
>
> VSI is already created. During the probe VSI is being configured.
> MAC unicast and broadcast filter is added to allow traffic to pass.
>
> Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/Makefile     |   1 +
>   drivers/net/ethernet/intel/ice/ice_main.c   |  10 ++
>   drivers/net/ethernet/intel/ice/ice_sf_eth.c | 140 ++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_sf_eth.h |   9 ++
>   4 files changed, 160 insertions(+)
>   create mode 100644 drivers/net/ethernet/intel/ice/ice_sf_eth.c


<...>

> +
> +/**
> + * ice_sf_driver_register - Register new auxiliary subfunction driver
> + *
> + * Return: zero on success or an error code on failure.
> + */
> +int ice_sf_driver_register(void)
> +{
> +	return auxiliary_driver_register(&ice_sf_driver);
> +}
> +
> +/**
> + * ice_sf_driver_unregister - Unregister new auxiliary subfunction driver
> + *
> + * Return: zero on success or an error code on failure.


this function doesn't return anything...

> + */
> +void ice_sf_driver_unregister(void)
> +{
> +	auxiliary_driver_unregister(&ice_sf_driver);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.h b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> index a08f8b2bceef..e972c50f96c9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.h
> @@ -18,4 +18,13 @@ struct ice_sf_priv {
>   	struct devlink_port devlink_port;
>   };
>   
> +static inline struct
> +ice_sf_dev *ice_adev_to_sf_dev(struct auxiliary_device *adev)
> +{
> +	return container_of(adev, struct ice_sf_dev, adev);
> +}
> +
> +int ice_sf_driver_register(void);
> +void ice_sf_driver_unregister(void);
> +
>   #endif /* _ICE_SF_ETH_H_ */
