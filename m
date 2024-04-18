Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3648AA3CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B479D40096;
	Thu, 18 Apr 2024 20:08:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L6e5yW-BDudx; Thu, 18 Apr 2024 20:08:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04F3A40143
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470905;
	bh=GNKb57odsL32BeGDfsWNFynKNhIrVwSKr7l4BzxRlDE=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6xW+4/Zg3Nit95kBwcKKyEOvEWxDyiHa4DREMhmVdRQEBuNOTXobE4KmkGH82xJhm
	 XEXeF0K2GfIg6XHeIzgn2X04iOKIbh2n4bzMi3wLG7hX1/tzW+LmSau1gUpaXheyMO
	 M4IMyX6d4JwZokpHnWYg9G9b0HMTBAJphXciitbwkMI3lzETUsOxkEcK8Hmyolt/zo
	 Hs+b6gQTG+xawB7vfw0tO7QmLK2ng96uTK6fGY127zIU8gqImEZzQExspfCXvFumo1
	 TH+qHOEgj7LMPpHQkn94BqJqJY7BurUYnaRf46DxSieqsXfMb+U83A3leH8au+GIJJ
	 GyZF5tNZpeEQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04F3A40143;
	Thu, 18 Apr 2024 20:08:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E1111BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED5FA40391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:16:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gI6UwOzjIZNa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 19:16:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.92.74;
 helo=nam10-bn7-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ECC7A4031F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECC7A4031F
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2074.outbound.protection.outlook.com [40.107.92.74])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECC7A4031F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:15:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OueQdZ8pMxJaL4wYKJYmkDXTh60oySHGDYv5430WxFHRVy5LB28BMSv8WxZdTVNjE4YPhsW9PL5SJR12r4h4o9wfKc0FuAa8EtzkA4EMa56fjgrsdo14GHDDXOJw14mRlBFX9GKKOYo3r+gSkIxSSJEVhSDSHmX7aUhFvTQFZcghTnLLNJr1XzZN9SasydqB/kQ73Ja3Nug7915sF5lYOmm8pqOvwhm+6BT3/PfBLLtnFm2wFd9b3BnzW/pOujkSdyhgMMT8LENwqntzld+fMT9w9wSFRZXyefqzRRoT7v+SVRp1+5QXv0hGOJKM7Zyw62xIzlnjSmpSS3y5tObPvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNKb57odsL32BeGDfsWNFynKNhIrVwSKr7l4BzxRlDE=;
 b=Uq4sxSv6qE4cWROgY/TwWBygDfdyNsI/r3PlmOMv4CNUH7AlTUVm4vWKGe9V/+xGn9MltMRz8RfNvApEMU/MbNppVafiETe7XUBzInOHXXZEJK1ILeyLGYCmAuw5+ycf3G4BFWJ1WjGjDPrKZxhK9fnaadkeVkjb2R6hQoF1CMCBLukICAfzqwD6ot/1W64qPo9jSX8BHyvS1icn3T5jEjymLuqUUfy99Pi5dLBlGRjwYQe140CW1KSd9EkHmbuoOpDZfmtXNAvExV1X59b0Z6D1pO+OsOQ7T7uwwk0ieolg4Ikd0RX+fiFOnWyus6+HQPE3S6VNw3cfhI5XnqjJ8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by MW3PR12MB4443.namprd12.prod.outlook.com (2603:10b6:303:2d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Thu, 18 Apr
 2024 19:15:56 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 19:15:56 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-5-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 12:11:01 -0700
In-reply-to: <20240418052500.50678-5-mateusz.polchlopek@intel.com>
Message-ID: <871q72fpn8.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR16CA0013.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::26) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|MW3PR12MB4443:EE_
X-MS-Office365-Filtering-Correlation-Id: b509e8fb-c066-4297-a50b-08dc5fdbf95f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FXzsXoIxvGQVeBUEjBXT3+/p6syC4lIW0ukFfJ2bKXHKhn4FdMNk7A90MuHMQEbYBWrZ7NlOcFEsFtREWRkTpLzqKzxAG/3wNVmUP0YPiTja2Z13Yg9Okhalh2cp5NxFtF9zkd7ORliycmqhpYvNPICwpKanSLKNJmmUdl2g0i5Arv25QHAP3C9HQBsIAugV9ytUpUqzSmIzk5IjpwYCcsTloGrWtJ7IA0+ol7lIeH8br7ZB0SObBB26Tkx61abxSEnqw/gRFgGvkukIXLNYEOTHIfX0RHzM7G1OLbevJ2Iu+ooynWpZpArZYYRUsayFyBxjRnGpKoWe/srka1LDzh0wy8aj+P2s+EZxb29QUaTv7lzrH6px8DsLgmv+k9NXB912z7ThYBDD5BkTgatuS1FITuS8o25Z3mymEZ8JOuL5HT3bFB9YhBOgLNeNKooNTJPsbFEUvi1gW7IHk9VZEopZruZqpGYwFCIjWxpW8KLzECpmGRsg6gULty4XP6GJol0F5QZT3B+zBv1EnUx5MNmgvK28hBL7DLcb9KSZ4ehG8PJdM+zc2vnI6EzhGB26dckrbLNhnhDndiZG9nSjq345Vv7U4juv+Iui1uvV/4JjNi7+VpRmIgYWVaHmKfaWw3MnfC/3MzmheoLKsK3Rju5rUFU2XXd8PLm76qhlecg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vpGQ/AZc4PzqVFy8NEl2yL9IxdLbXIr8vhN2p0dB5RBjOaycEwNCaNtu+zvz?=
 =?us-ascii?Q?8zMxPOCxbukIisu6kNgMpYVLmRHa+BqYZGqoi83nfDyHqGs62dEjvVwjSqWV?=
 =?us-ascii?Q?gSEbVST3z8j1mdwQ0cphZpaKq64+kV3DB2cSXHC3jCjpXlHzJtwAadMXo/Vv?=
 =?us-ascii?Q?actCTJQlL8zUjFaSfWtap642puy6dfbkFxJRGi8YtyygslD7plyVKitDwVP5?=
 =?us-ascii?Q?0TaAcQr/UeOFVJd9MFstNEC0uOv6iFqvU2uJ5I0O8s3W7xu2XHcTEn4oH63y?=
 =?us-ascii?Q?H4iTnkawjf1G9fceY3Y0UKS7t6/PhmMEvYNKnpW2ACLpFaZGLUk21uaqC59e?=
 =?us-ascii?Q?S0/j805lYv912+cPZ67Tte/p8SwbEBk/gKHNv0vHtn2UZFKdm+hPEc1LmE9i?=
 =?us-ascii?Q?QykU0ayp3rA7Fhgb2Vpc80tsvCMv9ulbSzVuBo19Wat4r4PROBUBEiAqRXC1?=
 =?us-ascii?Q?4BlAZC3F2rgLg6x7cNDEQFOFeuB98eOOB8tt/qY/owIL4XB8z7YtVSSUE3KN?=
 =?us-ascii?Q?u1L+oW8lig/Kcjefp37jZLjgKsdvObkMyrHwPhlfcR7n3hERRPXAKoKUraNM?=
 =?us-ascii?Q?+1EPgWrziX0TzwcjKAi/5MrymCNTJmfptcmtBs/icg62Z8Ipi7HZ5HFYMZOj?=
 =?us-ascii?Q?escibfw2SY520XlyChfH+6UZXyuTk2PmNJX4zrWNS5iI/QUEOJr72k1MTsEx?=
 =?us-ascii?Q?7kyBREZOFX86yh2GHLPLS3crQUP/lz1SkEaX+UH1Q5UyX0NU0nZRC2LWtHGo?=
 =?us-ascii?Q?PQyZ4GlizmZ5Iy0BszWuG8dBOVib22BqZMmPu4WaG8uTY9CJXt3Ch+OdhZ3w?=
 =?us-ascii?Q?qcprmBb+b19kC/UiA1hM0QDqMDJOp5klev3sXp1Cn0OczCF5RxZY0Z1N3Nq7?=
 =?us-ascii?Q?KZZXLwXfpC3x8TIIW2RLdmbYa347IBcLlB+z28JmIHo9iP7kDiYGYhg2P1GQ?=
 =?us-ascii?Q?FQb3LliKgRhGA7E0sU8Z0vs3YL/RgCgRzymd+4ZUJrV0lEiKKH37YYQP27oj?=
 =?us-ascii?Q?4j4GYn6R7bzT2J/6aLf672njzUKyEjNTaH53lIPqiJD3ZSjLss2+WRTrMCef?=
 =?us-ascii?Q?beeyEYmtVKAOk7JJ1MCnTLjHZzRuiA5EkG8/WplWLOQj9RcoMxH/tPz3Bru/?=
 =?us-ascii?Q?kyuNJSHf7tVk26INCYtufabiV7iV0C6Yum5waG1OWJ7C/a2JQ2RsTFbEpxUq?=
 =?us-ascii?Q?pzbrttyR+qptw68ukQTf+9uirl0iY69M0/jvHdrgarcJZi4BVH+icur4SRgv?=
 =?us-ascii?Q?WsthPElH9XSf6lK2EsxfLKFgZ5SErDnzvGw7+0q1g8OJnyEnQHPxTfod8LZ2?=
 =?us-ascii?Q?Eu6pl+ciFeI66DxZaVBFaj1KeI8MRlW6NIrJNO96EYGJ2/beyLDIjW2za2Pc?=
 =?us-ascii?Q?UVwkI9tEgfd8M8OoYWeYbBHCaIGxxLr1EJs8El7Sujg7DbhcY5PFx9URldwq?=
 =?us-ascii?Q?d5YZa+sNfm99c5EdPLRON/k/aZoSZcJFpP1vAMYNbylhEMnKBeZwhvBkEaxq?=
 =?us-ascii?Q?bj8LhwVExAJRk34XOb826cawwMK9OUo63Ei+tFn/SV6jWbi1TZcAb0DDgYdx?=
 =?us-ascii?Q?sjWapXIWCHpIISjyVsXAsbtD+hCEEcq54p2vO/fOXox6ToQv8FFnmYwpm69/?=
 =?us-ascii?Q?IQ=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b509e8fb-c066-4297-a50b-08dc5fdbf95f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:15:56.7428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 15DWaxNncrQX3HGQ62qNB3Tipe504HU6qjyzKUU/BCB82ZC84431+qj1VTN6vFBT/2y3mORyv1XIdHt/TcgexA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4443
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNKb57odsL32BeGDfsWNFynKNhIrVwSKr7l4BzxRlDE=;
 b=ThSVyCTmByTCSrVEEaGXKa6sEfKpLqSXZn2qSWvFdK4/WqyCFNTwcAt56b53xqLoaX2UL4dthJrko52gK/Ih0EEu6tPaYJ6qXHOQ/cyneRsQNipagVMtZNw6F/XVdeD8P4oIr3z+4cuH99CDEO+f19ogph1PU4STOnZ51N4fxd70WG5cpwxB/OuG6ec/jB9WJ6YVA0SigCpPVYaCbI6/NeJEmNWuQytP/uaI0a8ZFcFn1ZN1atu8KfOtbh/MpZGzoSBHj5RJMBcjJtYFfWWNWOCL159j1V1zslmrCDKfzBebDNfOA/gCg+SBHU/6MVbWGPRwlqO0mP3SSmnBwudW5A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=ThSVyCTm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 04/12] iavf: add support
 for negotiating flexible RXDID format
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


On Thu, 18 Apr, 2024 01:24:52 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
> driver the ability to determine what Rx descriptor formats are
> available. This requires sending an additional message during
> initialization and reset, the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This
> operation requests the supported Rx descriptor IDs available from the
> PF.
>
> This is treated the same way that VLAN V2 capabilities are handled. Add
> a new set of extended capability flags, used to process send and receipt
> of the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.
>
> This ensures we finish negotiating for the supported descriptor formats
> prior to beginning configuration of receive queues.
>
> This change stores the supported format bitmap into the iavf_adapter
> structure. Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled
> by the PF, we need to make sure that the Rx queue configuration
> specifies the format.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
<snip>
> @@ -2586,6 +2623,67 @@ static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
>  	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
>  
> +/**
> + * iavf_init_send_supported_rxdids - part of querying for supported RXDID
> + * formats
> + * @adapter: board private structure
> + *
> + * Function processes send of the request for supported RXDIDs to the PF.
> + * Must clear IAVF_EXTENDED_CAP_RECV_RXDID if the message is not sent, e.g.
> + * due to the PF not negotiating VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.
> + */
> +static void iavf_init_send_supported_rxdids(struct iavf_adapter *adapter)
> +{
> +	int ret;
> +
> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_RXDID));
> +
> +	ret = iavf_send_vf_supported_rxdids_msg(adapter);
> +	if (ret && ret == -EOPNOTSUPP) {

Isn't this redundant? The condition can just be "ret == -EOPNOTSUPP"?

> +		/* PF does not support VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC. In this
> +		 * case, we did not send the capability exchange message and
> +		 * do not expect a response.
> +		 */
> +		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_RXDID;
> +	}
> +
> +	/* We sent the message, so move on to the next step */
> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_RXDID;
> +}
> +
<snip>

--
Thanks,

Rahul Rameshbabu
