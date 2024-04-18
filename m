Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F28F8AA3CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB8A7400BE;
	Thu, 18 Apr 2024 20:08:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jbek1gcJEQVX; Thu, 18 Apr 2024 20:08:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED2374156C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470904;
	bh=ynmooIUB1sSB2JfyJt/1uJOs29Nhjdq16eUpXz/L6KI=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4SfG5trtKzXzFbnaF1pm250Qb8phmUR3QfP4veIH4CfhgWVNHtDhCBodQJQnHmpIi
	 +j136KawlhKDnDTIaYLEvA5r9/cWSl3U1/GAmFu+8ybXZFLpTKIjr0WCuqXLd3EK5f
	 i1MdMU50Zv3FrvZ+i+W3PdI93jin4JBX430TriOAOm3Lw28sP2dTvgLV4axWFSyEoS
	 oTrqzo/MqpNDViBEiInWjXjbUiaBJ4csnayZJX7U3aLB1J0sA2Z+6QQL1QXV7tRGgZ
	 bS7aBQ9MDNfkp6/126gEH6+o+VZII/pGz/VdJluYT0I4/0gXm1Ean7fmxW902KMpwF
	 QMfafcrZ610+g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED2374156C;
	Thu, 18 Apr 2024 20:08:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 814461BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 797FA60BDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:07:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1W_22dUGup_5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 19:07:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.236.43;
 helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7831F60BC2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7831F60BC2
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2043.outbound.protection.outlook.com [40.107.236.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7831F60BC2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:07:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihlizmMgp0agQlvI++4KB8pQbNtDPBZDmjIBkRZxJmoteb8EToJ9KvILeQkTlec/6XtXexRzgDLw+TSP7ARc23ULjPUErb7WjNItqGpbcZZHZ5HJ/ehLTyzzZuNW2O0YxlHBqN+jA0giOvGO7nWR89wcbFtuzfXSBMZYSHsaGll6sVm3LFMlzVfwRU6I/Y8RQg7aZQmlruSS2QJ1IOQtcAn53YdAatIdMcmyJoYRuNv0KfF8ApFx+rMs8U4O4sxTjSRUlh60JtpMSEuH/RBBcIsVZUaMAprj4esxCDKqBRXM4HbY6491baBghYJODsmRTmOe6HpdMvu2lgzzW/CzXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ynmooIUB1sSB2JfyJt/1uJOs29Nhjdq16eUpXz/L6KI=;
 b=RSuRb/E7gu0XXG4PGQBecMKv9vfe4Y+EsXLTgWTUR/a+n3beE9kmGvM91TeRwtEbo6U5QghOi+fM/roeorunOMlaiUhvVvFl2eHqKJn0lKsmhzF6Of1cEufI3+27KCLVagCSuZkuH6DL87ILB2QKhDOWmXuGV8LtDSE5ncp+2fFhaYj13Y1xRyB21jidGO2WtypAUBwOZgUqon/XMSxt1oX0vzudNqAZVXMLNJ6B//BQGCZIAW1vW1xnPhBpD20Q1qIVktR4tVJDAnFzlOKhl2/HnVRLUK1zbelOEo+LRXdZYPZ+W22gx5fnKto5JOHl5wMn7ndC0zjECMMZ2aCjNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY5PR12MB6527.namprd12.prod.outlook.com (2603:10b6:930:30::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Thu, 18 Apr
 2024 19:07:34 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 19:07:31 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-4-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 12:05:13 -0700
In-reply-to: <20240418052500.50678-4-mateusz.polchlopek@intel.com>
Message-ID: <875xwefq1a.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR20CA0025.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::38) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY5PR12MB6527:EE_
X-MS-Office365-Filtering-Correlation-Id: d47b1ac9-0488-41b3-13f8-08dc5fdacc14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 83hPZeUdLI1IRPSg273wM7Wljd8IiaIyWEL0kPgzxxGsUtw7wJpcNUFO6zPoVHPEK1Xs+EFGWcKalYiE7bwmTpneq9eI7tqdCZnU9ffWZLfGsvQJxkksz4uhbXeYdn82EiKj0wag2OPskG0gILsDo4LoNPqajOYiangv6tuZfw5/jaaMVE0YXlsq2X8dU8gseF3h5Q2oB1gSeid7ZRGejZFjCGX73UCBHHQnxfUDW9H7E6pn5qeGq1L2hJCUtxGfmlWlnLPv9LQJHv89lrb5ZLN1xC7jzZYorqH/G9spimKJZ/QW5EvCKvKURu6Su3iXLy+6QBvNUso8NDsjg9wQ11CeMmvGcjDgYX8bqgnDyS025sX6SLDc2TaT32E1JiOWEUazC8KIcG4+dIePY2IXbnu0EH0NicnpFLAl22eMPlFCjL+itLa9SGriFhDwqms8tYLy843EQSOrYv+GABulygHLb22UmtidjaglPdHfNc6XcfcR6BEF+zeGb1nnRHrr4fI8z4Li5ufcx1b9SwWUl3C0jxKKXvh2uuxDhzvFsTtAbVKn1Hcbw6T8XEC1aDttt8+NmBxFaSXYLeyjxQLO8vRUnOnVqnN594OmIv7PuzuiiGY+luZ1ZL3MPRK3Zl9TJPXeKvrshAtbww84qrZS2sOb5nw3KiF7EHQuw1VW0H8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vAQVPfrUdtPQiTWbUAUSj/PRGd0r7wgMWI8SYTJeqRza/wiBVz0rTnuqvWFr?=
 =?us-ascii?Q?FvSMrW2f7l4ZdE2MReuAvbCZ37V6baLPKnqT14v4qomQujo/nUBK3k/iqrR+?=
 =?us-ascii?Q?edKyftjrKdOB+gRMg/4CaVTDLKUME7W35BT402o7eY+vAVDx8Q2SJ2VUg1jc?=
 =?us-ascii?Q?3j7VCGbygB9BC1oOqYQJ+hg+qoalto+qqvsWZtlBY5NkoWr8ISv0UJ9G8cE8?=
 =?us-ascii?Q?orbFi+cWlJyTbny0CJjocLp0FkkX1OIngUQANZmJ0cNnYQLqHNoURJzOMzlW?=
 =?us-ascii?Q?gK3anWKAHW8G97zlou1GLMmO5odpa0uyK8hlmYAJI9gXDTTtZY4wPrDbS1tZ?=
 =?us-ascii?Q?kQopydBYJw4+/pMFuLpd9ipkzGJaPzDpxD3PEvx5GSDXP97RKS73bLrXJx0/?=
 =?us-ascii?Q?cDVZGHC0Loo3QPoE1ctXRkVuH7w9pGML8Ibsgi1JQeTcCYLHf9sBG1CpvO9j?=
 =?us-ascii?Q?MW6z2JPOWuwDO5mC6CuqByoghU2/QiYROFx68QJPXjTmm7OFCd45o1flqI/d?=
 =?us-ascii?Q?jqiNMD+j5fI/i9dKJMK4uewjT+vbO7iWjjVpVvJPvzEBfnj5ZNYsROPfO3PG?=
 =?us-ascii?Q?xoDWFxm/50rhhRmkyXYjcI0cvrhw9C00116rgzBXAZcRI/m/ul6KT0sgTg2B?=
 =?us-ascii?Q?H4Ew5LkNR9H4P2i7cXWD0bpPJIHGim7VwUh5/E6EndVo7ne968IYPihcKavP?=
 =?us-ascii?Q?pSxPN5qpb8HjmuZk04YICZ9FSoJCjTLMRg6dUY1VMIGR6mUq0ql1C0dVfH9N?=
 =?us-ascii?Q?hxWLrrVNAldMXwZDyVUNxdr8dvtWDyR+YeaPIQEF4FoqlclVa2O3iO9BhOXN?=
 =?us-ascii?Q?RMIpgkakapIHngNr1K6lgHgUvN5v+uW8qfcsdJpyuuP7CaEbWjS+I9/k1TcE?=
 =?us-ascii?Q?B5NuFaumZ3cM60Tm+krZb5vErA3xJnW8W9LMfnYsRxu4cIgDUHAZsEeCo0XO?=
 =?us-ascii?Q?IKoLxiJ4EnN1xjrLKjbLUSKraf8TNF/hWtN57IGxU640qge8rben5bTGoDsb?=
 =?us-ascii?Q?JShNpU41S98ZyRv1HleBvNNL5DyufHNXwhE1Gi3yMVfw43LDlrpE8+UAvBcA?=
 =?us-ascii?Q?V7gmidDE0HTbKOgGfMBEfV8vFIzNlWaUXQb6j8E1BFmCIHd3caA/9qSQGPtr?=
 =?us-ascii?Q?sN83ba3NJm5ooIGUTAqKdR0TBibcQFfIiyTu601hbotouiVrJD8zZKKSHOS6?=
 =?us-ascii?Q?1qJXuvAyzD6nSUjqW/5Ju2RYQL9Rc8rndVQdooD1+wafYt9tDA93YPGc8fQ2?=
 =?us-ascii?Q?Dtot419PxknBHYJ2fcpJ1VzH75hM968B6DCTLmKHPgdjEcHvB9YRzgxN8MRI?=
 =?us-ascii?Q?VXcPl/YP83cyFAD+XLKk8GAdX+BlwE1pUbzAXYU5Qkq5kVmJZ9TqkTaVw0JV?=
 =?us-ascii?Q?lkG8NJu0MDnH8tZkJ8unLDRdCM3r8mtkgMIuH30wKfqHXdOKSZuby+2j6IKS?=
 =?us-ascii?Q?ifyWfXBadGG0lnGYFv4CughXljpagZGFT8jhIe9OyRR3QKtK11m66U/pPkuE?=
 =?us-ascii?Q?FSqTpwWSWLx+j4X+lEeO6/hX6wtkDnGim27rzeWC7d2WEWcFbIfLHYlY2S6G?=
 =?us-ascii?Q?JaO6kHOeCRket4wXQx788wFX8KfjwG712m3tk5Vkq6N2iSUsRYwj42kchRWS?=
 =?us-ascii?Q?lA=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d47b1ac9-0488-41b3-13f8-08dc5fdacc14
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:07:31.2082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3fIayrTDshpXd1FmmuB+TG9vGNzsql3FeejYE0ll+kjXHMX8lHu514MoQtAi/FDnhctefTksZVNitS/jDo7Qpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6527
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ynmooIUB1sSB2JfyJt/1uJOs29Nhjdq16eUpXz/L6KI=;
 b=QS5XliN+fbLO0/JCLFKzq08qd44hEzs5iV2FO/JRJ1iRFip8TjnWIpRaALj1yeLyLODzkr0kcFJuz2YzAQQmPblvkFTET5MKjJeWmA5xRtZ3dsgIyL/0p+z/rdqa1m1wdRBW49F+AQpLf7yz7F/xZAESS2ueW7DC0b/d3x8tCX2hiLN/mI/Cy60BGzXWs19At3VuAi7G3n4AlIrnhyu+IxIFjSq8Qf/kYc0Z1rIEK8svdb07Vb5jxRoqRM/HVs8PM7tIz5vzHu3i6J4xXfzeS395qkIdT9LTM1frCe2Jtk3vPEk/w7dYQVOgVfbw03fVA7vtl7LKryo7vX9EnkKTSQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=QS5XliN+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/12] virtchnl: add
 enumeration for the rxdid format
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


On Thu, 18 Apr, 2024 01:24:51 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Support for allowing VF to negotiate the descriptor format requires that
> the VF specify which descriptor format to use when requesting Rx queues.
> The VF is supposed to request the set of supported formats via the new
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS, and then set one of the supported
> formats in the rxdid field of the virtchnl_rxq_info structure.
>
> The virtchnl.h header does not provide an enumeration of the format
> values. The existing implementations in the PF directly use the values
> from the DDP package.
>
> Make the formats explicit by defining an enumeration of the RXDIDs.
> Provide an enumeration for the values as well as the bit positions as
> returned by the supported_rxdids data from the
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
