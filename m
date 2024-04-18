Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A52398AA3F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38A4240546;
	Thu, 18 Apr 2024 20:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id etvNB-Fa-th7; Thu, 18 Apr 2024 20:19:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46E174052F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713471546;
	bh=BKVSPQD1XBQlx7eaXFUoSTRvb6tqfJvoMidQHu/ikTs=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pw0cILBHueP6+lLpIjYhnZKYGOKw6tnhTbA1C72aqNce7EIDYi107Y+TFAIwGeGEX
	 eCssFwcBJsoyf5o4d48f+tflay0nJSBwtJ7EQa/ZMFJQ4rLhHnWUPqqz9AqwQGkgtD
	 8VtOEIM6BrEuDVvqGY522aNVRlBUleC0bO0HQdUVWTPqZ0Eurz4RHjNSL+VgHBDrLe
	 EwfFwdFSrs2Cy00Ax6W7/bvw1Jy8jQtPdavdelDfWMIrnCC13MjiE/CiDGitNC24MK
	 Zrp50ojLJ7mJ5Ke+EJEcKqyxVFrzv2md3Hpl+ec/sAUODz0MYPMP9lQTKG+h9AyWNz
	 AG6+Rh7ysD/+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46E174052F;
	Thu, 18 Apr 2024 20:19:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61ACE1BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4430760820
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rPXrb2Qlb_FF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 20:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.47;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ECC5F60657
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECC5F60657
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2047.outbound.protection.outlook.com [40.107.243.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECC5F60657
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 20:19:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XxVr8vbSJPftPzIeXRDYc8yiCzjzz/kv1/h2MRhSAmUzuVkTJlf4xjqX0N3KDc1T7f4pBL5v+kovqllBO6UutuHk98L8YKrQBW0KQSdVtFWnK9LM7+zjKdoO+IuMbHyVEyZAEY50V9kEKpDJfbouJg+yn9XYsj0934jE36fnrY83i86Kh1iTgBYazOs9C9+3+YyWgvOcSbANg9bE5utYU31PJNuthBR5E82EydatP4+iSrC4RwRvgzBZUgTfxJJEjzv0SsyUq8tDDb7dqmy9aB+vpZ7hZjrpEik49KyQmIVl2mlfeWn123IxclEZCJjRCca384vJFRp01oqlntGNqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKVSPQD1XBQlx7eaXFUoSTRvb6tqfJvoMidQHu/ikTs=;
 b=LregO/1MUjHCDKyspC0LQ5Yvwfj55a4QMbGsd2d/aexNNajkXOHUb0iA1s0La0S0dbXhxsPbOUuvmBQ4AY9SV4VJwjFTfnHggL8BqlSY/zgNz2JBKv6bXLITnc6O5fDwHjXoXMZQy33S7aCTDcLzc4Y0YbeZGivQuFmKU7nYNQ5ASw6qjl6+OBYK9K3/iTlyS3RyVKvDM4H3Em5bEF1qvRMAlqh7LeSorlKqoBYd6jnl5x/uzlKkRw1on3oSr9ot9UYqr8rpZgLDVI3LNpU8dZiKuga+t+mVKLYVqDkoLGWtfisEre4g46GjN8aWaWQQSVvH/capi8eq8MOIyDMv5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by CY8PR12MB7585.namprd12.prod.outlook.com (2603:10b6:930:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.40; Thu, 18 Apr
 2024 20:18:58 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 20:18:58 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-13-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 13:12:59 -0700
In-reply-to: <20240418052500.50678-13-mateusz.polchlopek@intel.com>
Message-ID: <87zftqctla.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0055.namprd11.prod.outlook.com
 (2603:10b6:a03:80::32) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|CY8PR12MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: 27a8e407-bddb-4d4c-ff8a-08dc5fe4c7af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GpC7wBuRm1om7yZf3Ma0A5j3JnIYdKAf8SthStlC6kfrQy0VXsxyA1XsbzGQvsOZIDMXOyAbNSwBW2wA+wyfpWqTgmbEfrdHvx1uF8ZHXISg7UlEImzShiSRkcAflJzD37eaDHC/2HIXIqAyh/oGgqGaOiCg9DmXStG/SqQzNQCuChZu7YhKNW4zzyr/4oJxGix3rXraGR2pYCqrPcHOqc7ENgpHqS1n/6s4gJ/zVc5AvmyEE/b0R67XVMUPTuoKrTJqctwlE7JJUmA8bbSGc5vqApMyTeY8ynUbZjln6mVdeBqYWlQX23dScXh2KuA0wC3daQmjyKWG/WNok1wpl2ynPpgAsaeNyagAtcxaBbEAneiAaN3gVf/Fko1sc1KEJsAXJbeXiBKmcYZRt6PCRd4MyGhIXZRvomHhBUtVPlL+fEhjmvesdvc9uok43pKMdKTKG13S2rvirEAJU/dRpXUVyjEmXNV+0+XIe9xC/XqLxHog0cdEbpHr21ykvJ3PTXpYTUwxQE2VjvrR6LA2yFTuaVV+V+FM7ZE3VtcOIJtcdeLQJYVxqRzuJ9RVf1wG9miOOniTeDW3Bzzy3ZE5cKhFiT0Qpqj7bSPyUy5K2k8/YxGg6SI09Grk94ZzGmPWJLPzoQfoYKN27cRSnyGxNt+lw6OEuuYvXS51oSOEF6A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QJXYEd0kIz7rC3IcMrvtiiCzoqGxNTcnAQK7Unc+Pt69E6Rv/kOTGn9kudER?=
 =?us-ascii?Q?6M0HzenKhqAumWgFB8UEZmJiEXw+0I+3ztu6cBJGnGOdJ8elnCOLrZBtsL/+?=
 =?us-ascii?Q?tNnKPXMb1dcrxpKiGd3JHSPN7lEVNgWePeA4moSnkBWSMHKTfqTYIYnSHcos?=
 =?us-ascii?Q?DXtbF1xEualRK+ZAvQ4dfr9ro00DCCPY2hGZCdwbyRKVOyX+sZVEB27/QF4A?=
 =?us-ascii?Q?VlsCrqUCOMP66UYNPgLd9SCuA7jp28+w1BK2lbW9iR3FHS87HY1ghkDNC7Y4?=
 =?us-ascii?Q?qyNbSmc4HFBQIn7Vf4NafolIfxbTWCVtm5de6XxPMPtOqtMjDmkkNUnKCBac?=
 =?us-ascii?Q?7pDdtHwckdKonKO6eqQmxEDG23EkoABNBkzs+1dDpPU8WwRKwQWIIYpfk9Hg?=
 =?us-ascii?Q?1eEuUadbMlqqXZHOib2T65XpuZYLsaBD7VahkA2RQkit15PAqdfMIxxDoHkB?=
 =?us-ascii?Q?PVmdpIf+VegDJC5Dd/RLxCa/ttCOJjc8xy+JWX1IWKVmF8KBg9+UiulNSTHZ?=
 =?us-ascii?Q?FuKbiOkiYB/sgiUsC2DxU6hqw69zCUO24LDCis4A29yY76ZrEGpKQqzKTWjA?=
 =?us-ascii?Q?dTKQkQxdMVT9XRFL/9+qgfoXr5O/F0vUw3ot6YIidOJVTf2O+DtYgpbOtqWp?=
 =?us-ascii?Q?BbNLtQf4EtdkXYG/Buo8IA2uJQl3eqkY5dvTuiOUmv3aaB3Q+/g+RDSioVOH?=
 =?us-ascii?Q?zqHMbNgmR0iW9G81PMxpZsPUevGS0AvG0M1P9bSM5LZVeIceeoaOI5PvM2iD?=
 =?us-ascii?Q?yDRkp8ZdFVrLFZbP2Zyk39JUR/mqW2RlQjBEmfdZKvXzv37W2Uv5z6w9lo8S?=
 =?us-ascii?Q?WPZnAdUCNqZaVqyhP6JbYYZkAlTaId1UqeIeEWSPJYUDv0DfmnEpq4eJh8M6?=
 =?us-ascii?Q?U/+FN7twQjPpQjJP29MQAnWvBWRzUSiGnmV43I4C5jq4qthIm4E6/9jLjkfy?=
 =?us-ascii?Q?yzsLxeb0J16XzuopE5xbIKwWElR1Z1hUsMTy1Uts+ubkOSnKmpk9oX7sAgzn?=
 =?us-ascii?Q?+Gs2gIkX79qzFSDCQMJ0WcL/YUYv6fU0ZWD2GMIM4ZL62o0h9Q1SF5S83eNk?=
 =?us-ascii?Q?8e5QN/vx5tZgtRczXzE6uMQde+QGZvZCPro9eQPmcFMyb9ExlSwy72vrwQ83?=
 =?us-ascii?Q?kSkZ+gOauUZhusK+ngImvvT7D11VGT3imdLfH5R2aK+y1gALOCMu8a7pkrdM?=
 =?us-ascii?Q?NkvT/Uz/Li7fBesDeK9YqE058L5qLQ44pD3ME1X3+yoaTYYQXWzLULgS3pro?=
 =?us-ascii?Q?h9S+1E2RMK0GC1tJeCxRTwYWYrLFygza23uJvdfQLLanSMC1z8XWmBZn8j6L?=
 =?us-ascii?Q?mIltA0K6iYnN9dSGmIAgtwggqD75ZSjzWembsB3mUmQwtSW4gvqsm4PX6dLG?=
 =?us-ascii?Q?l/RIMifwewucwgTmo7JRqRyPb2US+X+iFogXAx3TPbO1AfLkgy/zInarflPT?=
 =?us-ascii?Q?ybkRAFCMQNdGRwGgZOpFLlE2TpyTUmXEOBgVRkQLWbyBM3lv30wtOwMFP5if?=
 =?us-ascii?Q?wqszKx/DVXnrK7+y+kJEd01XzangxtXDW3NorSJ5U0qjbpHK7J7kkOQmMPZT?=
 =?us-ascii?Q?SM8AAC54/Btud4+FXDjHmDcDAOe3N9EYJjmqLTWzFpl9mwwIfRNyEJSpPvaa?=
 =?us-ascii?Q?Eg=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27a8e407-bddb-4d4c-ff8a-08dc5fe4c7af
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 20:18:58.8247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H/DA4ieJW/aE2ywvdrPe4aKRRPMTi+rTd0FGRMZr/JK7mLXV/gFoUMnKSsuQxsDwMydPn85ay8OgLFbLLSUMtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7585
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BKVSPQD1XBQlx7eaXFUoSTRvb6tqfJvoMidQHu/ikTs=;
 b=TfFL8v/FBtQHXh+qel5BNQjlX7Oa1TWXNbHWyT+Ir46EiW23b+XCzdVqru3dmTCf7syQ1pe59fObp0tRiuS7mKqLti9D9F9djX3GebJNvctLPp4KIQrEmVLdyDlC3KbFm2o3kBuBn2jTjtDQAyjalLPlwSuUt2rm3YcNQEphmybtVSESDme1FufbHUh4z/n7/sQhMg/eam/IouOMk21X8/13dao5Ua8fFABZ8eJcawuyPzVYzRwqYwEwXM1uc7/nOX+ulk5g6jd+GoFtOT6oUY4hFvkOl/wgZI3ftiKxJROSgisBzfQp/K2PGVTFF++TGYMOuewATq0e4XwwXe315g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=TfFL8v/F
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/12] iavf: add support
 for Rx timestamps to hotpath
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


On Thu, 18 Apr, 2024 01:25:00 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> Add support for receive timestamps to the Rx hotpath. This support only
> works when using the flexible descriptor format, so make sure that we
> request this format by default if we have receive timestamp support
> available in the PTP capabilities.
>
> In order to report the timestamps to userspace, we need to perform
> timestamp extension. The Rx descriptor does actually contain the "40
> bit" timestamp. However, upper 32 bits which contain nanoseconds are
> conveniently stored separately in the descriptor. We could extract the
> 32bits and lower 8 bits, then perform a bitwise OR to calculate the
> 40bit value. This makes no sense, because the timestamp extension
> algorithm would simply discard the lower 8 bits anyways.
>
> Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(),
> and extract and forward only the 32bits of nominal nanoseconds.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---

Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
