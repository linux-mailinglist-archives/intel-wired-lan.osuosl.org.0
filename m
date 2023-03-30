Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A35966D0443
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 14:03:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D718F402D1;
	Thu, 30 Mar 2023 12:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D718F402D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680177799;
	bh=zmfVG3Q04HQNei8MFjWpVt0XZ0Tbq2gw7PDp3+q9Gy0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pdZu0maUtaW3UX16x7z7xWJ5b+JtVv8oSL4mM2IjVbZz+OYtymkPf9RKgJQHN6JYm
	 6XNYvhUaeBzktx+eNM7jiPjSSxISF8cz0GLyZ3BTZBsLLS/RTbQI7MdkAZv6sXhIGJ
	 87b/MWEcb1rH2BRbAZMhQsbYsZnxnXojN0QnNyEIvr3ttEpn5xgrScyK2HBPWAsQgl
	 U9doL9MIyDX1zTi52zoG1mOwNWsw6rBSb2pu+TfJzBfv35SmtPjIy2aCXTUSo9jZqI
	 KvLTrCL9XVDPLpKuNdGFAc6wl5oiU/ihvCt+suknztNkvB14QVM4y7cwtDt3FwRXVr
	 VHPnyHNoU3dXA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k87coqu9GIG1; Thu, 30 Mar 2023 12:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 538244094A;
	Thu, 30 Mar 2023 12:03:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 538244094A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13C9A1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:03:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2AE140223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2AE140223
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j12yXFYCu-db for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 12:03:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD3604014E
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2087.outbound.protection.outlook.com [40.107.102.87])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD3604014E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 12:03:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dFQWs3O015cBm8VmTANHzbKdg74XLvLih2oKxmssxtI3M/Rbq+aDXnPvFuP5xPWuoNZFfTHsWVnBJfV7dTcZgsHnh7tzo/Gf40srKcKVD6uVXUt3N72QIqFO1JgpoElIwZ4A44f3zjEr8a12wpWEfS+gGkiyvqmfqPBBvvkfPgjpLPYS+cpo0rFMg+JOJrJyxmKkhvWlVm5lBnzLDOPln7JrK18bQEy8JRLQOX7/65b1ONqZuViALESDM30/2F0U3ehXBmnwO43qbPVq59FLd0aXTcrry4zxFkmhWTZQwL4xOLBuDJrGHAK2NHEXxHotli3KENQSvFfT2emitr96Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOvdyLPIOB+ksMee2JuEF+JyenRonbF2wmn7TX0GU+c=;
 b=NS2KOAoOp0X5btS/KDzq8Y0qs6nGuBohvqLar/NKcZEsnxXsLyfSZEd5s9LKXU773BM5V3sxmlyadXB8qG5GN7jwYKAp9MAsiO7ekcrHw5vRdj1iP7NIH6ath0AIwHk46bNKXVCVauWl8YbgLPQMF19A7OIv9NscMhwAB9pQulxuNxJfxPj0d3HEj9ZFCbuWb/VRQ4bKNSkxGowOdntlar1RFIyS4KWfIxOAbXYo+7MZUBnIuakYlnqoZp0Q/K5zQTjk+6stcjl2Ts3ZO5dftaLo2Tu41NoLnH8RwOLCMw47uJbblJYorQFanj7qqBm9bXrcyG6+oUQwSRz9uALqHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.20; Thu, 30 Mar 2023 12:03:11 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::ef6d:fdf6:352f:efd1]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::ef6d:fdf6:352f:efd1%3]) with mapi id 15.20.6178.037; Thu, 30 Mar 2023
 12:03:11 +0000
Date: Thu, 30 Mar 2023 09:03:09 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <ZCV6fZfuX5O8sRtA@nvidia.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
Content-Disposition: inline
In-Reply-To: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
X-ClientProxiedBy: BL0PR0102CA0001.prod.exchangelabs.com
 (2603:10b6:207:18::14) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|DS7PR12MB6288:EE_
X-MS-Office365-Filtering-Correlation-Id: 12aa8ed6-9ccf-4e7a-5ccd-08db3116bb64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FYGzBSH9ouGj8cKGvG+MfhkMwsxxsocbk7vxIyTL2TyG2cET95BAwJxD+L1u0CXIQWB8Nd8C+edYZH/kO4AoHZ7nySMxUz21FKHL41otfULd54rjaXhR0ukEftn7HaoCGJpF+rlko9eVGPp0Q0mDOSHzmC93x8ioBO7WLZeFLMYbmsbIbKmiEbijQarkb/jDftAWQqj2OgxLPqlGjYroFlE1A0R8g9AizV406qOkdYewT7uH+FL4mm2b5cFeIcUj0laKjlmhyqxvbpPo9/fpS0XJGTZPuFTXJVn5H28LfeoMMamoiLOMtRY9j5oabDNTvoxMeRYB9CCffKZdMa7xlJqghADxtHOf5+Bpg3rIV1XGtDrrQNXQyZny5qARtw5uvafwWEHA9FjFClZCrEd6N0qH2igi1G+uBIZc7i4T8z/BvS8YDMmYZe1Z5C5mAwFLy8aVDsu2/E4DS/HkiNd7y8ihf36OPaijkTX7X42vk+tDMyhTEr7IAktiHE34bTsIukJOKHjPio1nFQ8rnEMYRDzFLbAYznPwZ+0aQEcxWIq85Uk1ZIGRlW39aha3l/GZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(39860400002)(396003)(136003)(376002)(451199021)(4326008)(41300700001)(6916009)(6486002)(8676002)(4744005)(2906002)(5660300002)(8936002)(66556008)(478600001)(6512007)(26005)(6506007)(86362001)(38100700002)(186003)(36756003)(66476007)(316002)(2616005)(66946007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iEkqFKHEtvqcWI8Q4RVqPIGzb+beSqPUdkv/MU6uj4IzIQCKuo6vzoxdmS5K?=
 =?us-ascii?Q?5OBzo+f4ICcmTPPuVNhdGmTjtCU+RLrR5eT/PwnejMZfOtSUWS3Pxkqu/+Mr?=
 =?us-ascii?Q?zq/FcIFKNamAaUbN3Bo/l5x4SDzEunzI/nIaM3HWBtk6Dz4JNqj1fyA3B6Yt?=
 =?us-ascii?Q?bua1KpG8HtH0DyRfe4V41MV2Wt14BTuWAgLW4V8lmHYCWRHUvcIY+CioBKvz?=
 =?us-ascii?Q?NMRFkr9D3N5V/ljtEUBv47eW5UWlnXghS8Jf+zlIEJDpbr7zCejxQfsZs8g+?=
 =?us-ascii?Q?KOanFE5f3dmbQKgYnYoic7Tyhxdb+THZnK9v9ULMtLArFudhTBok9xpR5VQP?=
 =?us-ascii?Q?1mYY1ubOSGcTbAsX9q6/EiEK0ubcMIkPVfnIQAxTx7fnS27LEhXiYs081mRk?=
 =?us-ascii?Q?/h5w9gN0qEe2ssXDf6K+FdMDrmOlEVDqhkxlFmvizqk9vGMrPO6U2/FOuPsy?=
 =?us-ascii?Q?eWP30WBhCCQ6ePxVTVkak88t1cqoLsNbvxFdSRQ1UbbzRkAIGVGIq4U+7MRd?=
 =?us-ascii?Q?2T175O1GWjf0xm9Ks+6XF7LzRJAmX99V2ZIxbGqslNtzdHkekzhY+PJihFC5?=
 =?us-ascii?Q?1/BlbK4XXv9qtRVS45pMmtH78OFI9sQfBClGW/QaFfczkCO11R07d4rRBhhN?=
 =?us-ascii?Q?WaRuPkqtLobmjK7gdZdsXSM2nw7LNvQTuajvUJDxJ5wZT4IC7EwleW0YaakF?=
 =?us-ascii?Q?Ped6Xq8Idb5uU1BWZbSXYSim2EdPqI6hBp/F5wlv+d65k6utz46+RpVCa0VG?=
 =?us-ascii?Q?srbhLfkFyEVOIlZeU2QOfffPUoppv8EHWvpKMNzsBLVtu2g6iYff1PvarToV?=
 =?us-ascii?Q?euaMTtMzbFwQ9FmH6ySD91FPlWIN+nPMEDSXCTii84UX44QbU96XyOT2CeTG?=
 =?us-ascii?Q?/AsUl3YuP9+22qwQGeb5P0IGzcNKnY4qDr6jR7Vh++ZQXQBJgz9DCC01ZQzE?=
 =?us-ascii?Q?zhnpTb20UWeiklGgcZRBQjYEeVciE5v8Y/GP0IuwVH2n7tAowER8qh4Fz7Dz?=
 =?us-ascii?Q?SxDyC+56gkpUXZdaqTPtNPqujuE6q2UpXDonvJXnmsPzHfUL+9ZqeLOvCROw?=
 =?us-ascii?Q?yVGFzswedHbbxXHglmcKTZURu2AqIgDnU8tDaA181PUFRQrMogEkbErqjOFB?=
 =?us-ascii?Q?LpOkCc0HxU6QR+bVUjHaoUXJqjHuQYsJj0xCXuXNG8ey7CeUPVJS0EK3btYT?=
 =?us-ascii?Q?YUHKDJ4qcE737C7kN1XeN2FW1qze7S6QNrmXdfxRAYisOnuHX/2IgZKg+qJn?=
 =?us-ascii?Q?OMQAN9rC8Y+yoqqeQTML1G6BDTPygtZJokxIRBwn8+OqEFJY/jXpyaSkvoie?=
 =?us-ascii?Q?yXGr+bhIiKHUBOYMdlEmOoliMhl2lGQ1TYyOrTi4SnmzxNj3F/9w9LyjLE8q?=
 =?us-ascii?Q?onHa9pSp8zBuJyNbd2edFjOan5OIyFkOQZVrzub1tF9WswM3/B2LqWeYuqmT?=
 =?us-ascii?Q?NouSjuBXPadnyMb79uGgK8GuTyTJknP6lLG98ea3CaeQmLEm8NInlQAbS4o0?=
 =?us-ascii?Q?0/xbuilZMo1w/pP0MgHj4c0KJCqQuxolD1jtD19rCLSChkwBWYWMubOrPLdZ?=
 =?us-ascii?Q?cUBm1upfAIl+3wBmEyJTFPdcomr+dTjMtRA3krs9?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12aa8ed6-9ccf-4e7a-5ccd-08db3116bb64
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 12:03:10.9764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5WB2BJiB0wcajxW6Eqa3PI8401V3GMuEDwPKui8UgZ6JKOkmCX0o38SvFK2+JYzl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB6288
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oOvdyLPIOB+ksMee2JuEF+JyenRonbF2wmn7TX0GU+c=;
 b=lwwG+nsMm4VJfE4A//blIfi29nr4P2+RLeHC4Jm/IRc0A1mP+LKhLDeW5h9QnIfXRS9PEXnmCJQpsPIRM17YF5J6zR76YH7Bb3M4+Y8en3dhCk4uyaMKegzLSEc5sd5rHLhwe7GXC4UVtWQ4UZNy+ouAyQ3s6UtSWRZLzu/wi6rR3Rx1wyZXERiP2/a9Y8w7Gl5KqsU+OSpEV/2+GzHSVhYh0BG4csOn/KkCwrwsa7uOCMX6KVt5nhFaveXP6JRUOWlvtiCddUkD4z4Nj5ik06e6nHpsUXGtegCCtoYaDJ48BMGvdHpeHXF5KjOjsEsR6EVFOohH4Y0UdgsUvpTlGA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=lwwG+nsM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 29, 2023 at 07:03:49AM -0700, Pavan Kumar Linga wrote:
> This patch series introduces the Infrastructure Data Path Function (IDPF)
> driver. It is used for both physical and virtual functions. Except for
> some of the device operations the rest of the functionality is the same
> for both PF and VF. IDPF uses virtchnl version2 opcodes and structures
> defined in the virtchnl2 header file which helps the driver to learn
> the capabilities and register offsets from the device Control Plane (CP)
> instead of assuming the default values.

Isn't IDPF currently being "standardized" at OASIS?

Has a standard been ratified? Isn't it rather premature to merge a
driver for a standard that doesn't exist?

Publicly posting pre-ratification work is often against the IP
policies of standards orgs, are you even legally OK to post this?

Confused,
Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
