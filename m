Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 559A88AA3CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B0904109D;
	Thu, 18 Apr 2024 20:08:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U9EZUdqU1SG6; Thu, 18 Apr 2024 20:08:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96EFB4097A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470908;
	bh=WCQXqLvkHa/83OLyPp6/15CHhUvd7AConybuY1RVJOI=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2OERhNbEbwSQwShcohUga+fHgzbJPNaj2w9ncbahG7eOGHOCB7Sbe0weYykWLcLv3
	 FtOUqILIYH0W1beu0pNE0yprK9HVqSlo8dvqWz9HCX2cTh4kWccEM/UupkE6kySfXq
	 FZYY3p+sbTPicvJt5k4Cp0NGxfPzmEWgqlrLUeQ3y9URZyFgBiK84KVpzLka0tP4IY
	 tWdx2Ac39Z++6bFgOACLLpJjNKpawBJRvPOnYmUQfOyrk6r0S02KuWu1sa3AG7vG3H
	 NYwMEppphx/Xui2lpkuGjDcSdGmJBLqeKRsrc9fNus//Y4t89ObjywaWTZyecXc/b7
	 UB3nT6NludnHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96EFB4097A;
	Thu, 18 Apr 2024 20:08:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D35831BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CB8E4401B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:50:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnRffiEdL6gT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 19:50:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.87;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB0EF4015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB0EF4015A
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2087.outbound.protection.outlook.com [40.107.244.87])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB0EF4015A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:50:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXZQY25yg14j86+Mo2IuMbCtsIT3ykbvBYCmV7nFe+5rlnlyzJ3y50DGD8hZGoDIm/pCfTtrHuw1pITLOGyYF5RzPkMHW5lQJpBOow84KBpjhbzea+5q1VmBAnxwHDusXCzn2JxONJ62rIijR2wa9Pe7loWszXnwseRuSm2/8lgSWb9IT3rufrZb+YPOXjwx7HBd421l9m+fX1QxkrZJZbABhitQb1cOOdgSack79TljacZ6cGVQmdNXzzlgziphfQU02SHEkQVWsofyNaPdIfqWWDU/94DUrMSzOJ2Rm692ToQscRokeRsX5CVXF0kZDZ0fbuWpBQS96xJbYwgBTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCQXqLvkHa/83OLyPp6/15CHhUvd7AConybuY1RVJOI=;
 b=BEGNgaVmq0GRTuheXVavyNfMBMgZuF4NhJxM3LZiwe9zRKeQXVkdxpTlvm1wyZLyWUchTvp+AyEnWz6HMFeaCqw1F+EwfNtaA0MNNVLLBnTUbJL7QSblQWRKXlzT3BTSEy6Sq1CQjzAtHsxoMemqnOMQT0iWsW3bAx7S/H6XbLWgEslog4SMXjM0vP/jNG84214wvc6cJUzgI4v4/eP62/4w4GcPCrxy5pm8x81vmI1MdPl0BcVSV+/VjooeGloknfgLQCYX2Fz1AyVaJeya2cGGLbAGPJHrrU1xIhoXzWGTFzY1/+uPvY1Y+B3tNggzUfhHxfdywe190iD6KOeTQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by DS0PR12MB6559.namprd12.prod.outlook.com (2603:10b6:8:d1::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7472.43; Thu, 18 Apr 2024 19:50:39 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 19:50:39 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-8-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 12:43:00 -0700
In-reply-to: <20240418052500.50678-8-mateusz.polchlopek@intel.com>
Message-ID: <87o7a6e9gx.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::21) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|DS0PR12MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d4dfc8b-0263-467e-91b4-08dc5fe0d268
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9+tQUluzyA3tpgFNYVQU6KRKyXeYQ7G3m0QK64x4TPI2kMo4nekWXVlfqGD/mOFdkFqR4YKM8bYwvddY4Bvhf1tXA7h3wMSBzF9OhnHy6ZkzsWAYKnpbdiXEPaZ3XljU0bNmqF0KmZbBA4v11LZJ11azndwuGh2Pfc+nZi0W6W6xblMiDW0MnoSOTUDWRFaWLWMChJnr49dk3pmUDj2aieulO5M5k7OMzfs0vFHCM6X0WdzLG3tT7atoNnlcI5EKxQsy0UaB50JB2G+UvUQ8T0f5ZnxgaEtADJby2IM74O+fFVQ/PfSl7nu1Kip8Xkixrt8V261eRMqq919IbiOiaXrv2cenf91pIPSI+S5fASuLLMVU4BVVpCWM8PhnYF27jDieUPP9a5fwGXIki+NVv+W2vFMwksdKzxdLKNDDk9/4FNYhcj7/kRT7KJCQ5kmLgGVHcucRsgMt6HtZkpM0IdW2lknlGb0YZce+gjb7nJ45ZNl6gd/FdoF6zYdChfMhIX95IkJu2dKF11xwLka23652FKhxwqcyTnwz8fxb3lsCT8PIWSO0tqHWyWlhAROzEqEC3SakSQleMwBVel0zhfimSEMrVuW9sM99zq0AVI+2QEQDCys+YsWCIaishtViciZVjXC/CW8U869ybZ7/YBke9yaiaaONWxmPvhFSzLo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AYeinWIdXtJgXh9/z2qj4adH/n+HQUS7pAzVNOUQc3XB3+N0Od2RRY6nSlON?=
 =?us-ascii?Q?nalfXjb/t9Tl/b2yWBt+3XlIG+8Ad+m9eY3yyY24IPT29kRlAuIj3KZcbUIv?=
 =?us-ascii?Q?8Jtzz20gIhzNaZkePP2kOA+DIipYroOSOfPuERM3R2cOcWOSvorWExYVO11c?=
 =?us-ascii?Q?BUS0OX5O57PIkK+QeKbADLWwcVVkxgY0E4lGgVOyUlTnXNspjOMZ3eHV+2BL?=
 =?us-ascii?Q?cGj8amvtoclOtbHzfh44EOedpXy2pBMv7iIeXTVKk/G52D84KwdFJuPxv2el?=
 =?us-ascii?Q?gwe46OxeKg2K6cuAHOfBoT2VjpstHjUiRB3Yxm3ouSFHh+iZ/MOCiPBuy4k8?=
 =?us-ascii?Q?V3T+lu4sn2NjjqhvqI1yt7Q/7G6+uXi3XXZezNw8zSyNZKEhQ39CcPZw5L4u?=
 =?us-ascii?Q?kj21H3sWnQvlD3Sg0FPMNDU+A/ZDmhXyK72plEQwROzoTRS9uaZQaSGCtyXF?=
 =?us-ascii?Q?pgL7bc0eQ5BR8WtpljbitV6zEOhFzK6gQgZMUNdlKdrJSHjjeuin8ZAEFods?=
 =?us-ascii?Q?9WW2QBGwZQPKxePw2RhVu/KargsLn0bBK4bOzObfh6TfiQRmFYukMmUQpgDJ?=
 =?us-ascii?Q?5bTfZ6WNaTKmwL9wMQtczZyHGnQmi46+A73vcuBvDeRtZMyQ6YlyiHW5/NV2?=
 =?us-ascii?Q?2My/Zm9jE0ZrGXXt6px8F0ip4IUSbXoD4+U6ALRJwurkzQAVGAhbzXU1CxNV?=
 =?us-ascii?Q?/XTKcRDReXnUJRMWMAUWTXpPoVZePhUbCgdIfugbIrc7XeWlIciA0Cd3WKdX?=
 =?us-ascii?Q?EyiDiuMJYg1yqbwjllE2hYqjCiGKaNavt5gLGulu7mrA4Sf2J3jKj+0RJqXr?=
 =?us-ascii?Q?GfHa6UvR3HRw4yyGcV5HeT6kNGjXO+vc/M/fRCz95tPud16WnECmjErFOdeS?=
 =?us-ascii?Q?D0Bv05I9OzCZ7omVeLiSps7DLuHUgeZMWFmXFFMJ7e9ViIny+K5xYx2fmIvL?=
 =?us-ascii?Q?VuHmaBzpghcYQxVd35p//clOAPni3G6r5RG0LVOf/KZ7QXV3WDGO4kRiL+z5?=
 =?us-ascii?Q?gaw0bpeBprmlsy9UAWDS4LXvXiMGhPUYrvZfpD88pjRhn+hAnZE2f5gBtrJu?=
 =?us-ascii?Q?q/5ZO59GXvc9idnt0kYrx9SY4jW/zNliI5IbeY5D2DPotGtOPmNb8J0C5lSQ?=
 =?us-ascii?Q?iVGn9RwD7JlcXTkBk6R5XFkYbAj35sT/Th96NwzC7vDYcpLQkfp2AU7I2/xi?=
 =?us-ascii?Q?idJhGsB8gfyEySehPz+htkU6Wi4rIWn99OWdSUbbMfUzNahIGd7zyIC84KXL?=
 =?us-ascii?Q?IkGc8VzQJwM+J+Z5JR4Y/p9fRY4kjh7wiCnhQJOQwtLzw6HOdwnrhfkKqO+2?=
 =?us-ascii?Q?T90JCFGJLAa52FTjQeM73akxbvZ3LBfkci064vtvaeD6/0c0AW59iL/6D4ZX?=
 =?us-ascii?Q?S5PcDwtMiMzKxibCpmb3lwjNesIEYGybCZMG87LTxEcmIJPE8oKd2ROsOQNk?=
 =?us-ascii?Q?9n3M3eDiccTvg1gxZ8LGRa7u2bL87EcOZN8my1I4cEuXjn5ZjISTtd6SJc1i?=
 =?us-ascii?Q?5vJev8em/oVy1lLfufg9bNjWcXLBc7Yw+j2pt4afHqARpCk5TutgshPo0pOV?=
 =?us-ascii?Q?CthnevhJ9kjYGXTL2AMrCXWpNfHqgQpib797IKcmuZnot2fmRu5eMWL61/A2?=
 =?us-ascii?Q?4Q=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d4dfc8b-0263-467e-91b4-08dc5fe0d268
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:50:38.8565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AevhZHx1n7XIxm9++70D+50VFPS9wfF3p6OQIjCaBUkHqTAx60wcuzDetfa4zE6lnCA9hnUzM3wynaw7GJNu4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6559
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WCQXqLvkHa/83OLyPp6/15CHhUvd7AConybuY1RVJOI=;
 b=Gi3Hb8z/k7XBQmIx6YqJfCqiq/rRUxl+4wieYPjYmMbZJ22lJuQ4ArALHC/aiDiUgB3ptIIO0EhRfU6pPcL4hR6Oq0iRQ8gX2eHKzCiNDGwVx5GWaIpbgmiFlTQdlhyavKIEn0nWuksC1k9rmuVQ2h7AVd25JpnhROskUb4xC5iX6gS6cphDqvBkZSfFV9qihUpBoVw3iwUrEDM6pSFMtc9dspJyhI5b0QINpmhUFkN8FgeaFM62CXFbSJDAdqq3tWwh9PoMNHTRmz96gJKWj4HqIuORt7nMcDs5CUAi3YI3zABV3Dyr7X5iNqLkXM+uvQjWMIQ0ZJdjpK0XCNNwKw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Gi3Hb8z/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 07/12] iavf: add support
 for indirect access to PHC time
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


On Thu, 18 Apr, 2024 01:24:55 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Implement support for reading the PHC time indirectly via the
> VIRTCHNL_OP_1588_PTP_GET_TIME operation.
>
> Based on some simple tests with ftrace, the latency of the indirect
> clock access appears to be about ~110 microseconds. This is due to the
> cost of preparing a message to send over the virtchnl queue.
>
> This is expected, due to the increased jitter caused by sending messages
> over virtchnl. It is not easy to control the precise time that the
> message is sent by the VF, or the time that the message is responded to
> by the PF, or the time that the message sent from the PF is received by
> the VF.
>
> For sending the request, note that many PTP related operations will
> require sending of VIRTCHNL messages. Instead of adding a separate AQ
> flag and storage for each operation, setup a simple queue mechanism for
> queuing up virtchnl messages.
>
> Each message will be converted to a iavf_ptp_aq_cmd structure which ends
> with a flexible array member. A single AQ flag is added for processing
> messages from this queue. In principle this could be extended to handle
> arbitrary virtchnl messages. For now it is kept to PTP-specific as the
> need is primarily for handling PTP-related commands.
>
> Use this to implement .gettimex64 using the indirect method via the
> virtchnl command. The response from the PF is processed and stored into
> the cached_phc_time. A wait queue is used to allow the PTP clock gettime
> request to sleep until the message is sent from the PF.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
