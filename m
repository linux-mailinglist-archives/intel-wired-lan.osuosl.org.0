Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D4E6DCD4B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Apr 2023 00:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B7C8415B4;
	Mon, 10 Apr 2023 22:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B7C8415B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681164784;
	bh=dUDEq+MZ30JCe9273YBQZJdiMQuK7tVxvyvdMKXjNgs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BUwQRW0YTqZ/K50ek4sT0Hd/adY/b7ax6p1LC+9FgB8JWDu+pGZPj/wjsl8oq7jlb
	 v2j5p5rVBVEItU1f50ELZuGv66ZUQ4FYqDD0TYUx7ZcZ8iYX1oLkmE+zVqb6HcniDo
	 e5X60fDobuUUlrkx6JBAjD/MGsPlz5eAfUG339AtXJLR/Qyu6ns9RPcN5LMJyxJMwq
	 IJfbaE6nKYYotkdb1eRz90uX0lZ56NmOpj85Dimo+A8msKdUNp2ZQ9goXWl855WCWb
	 eS5fsR5+RJraJ0B7WqOZe+ylMKYiUOa8cpwDbIuKqLkukn2mFvOWm8KxYTuT3RD599
	 T5y94c5r+TFVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqSg-R7eMmYr; Mon, 10 Apr 2023 22:13:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 68E4340993;
	Mon, 10 Apr 2023 22:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68E4340993
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9898D1C3B90
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 22:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51D5881DEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 22:12:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51D5881DEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Khg2Vg2K98au for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 22:12:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C2EC81DE9
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2040.outbound.protection.outlook.com [40.107.236.40])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1C2EC81DE9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 22:12:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1iGKTVb4MF/FopolyZAk4pXGHcLgYBaoserhavNDrMqFohcw7xUKq4i01CKfsWPbDz5tVp66i3zSJI1ynb5FibAZVz64gHpsx5U/vHjiy5RAFZBUZR9WUBo8Q40d3Y5hRdCu2N0KARTw2p0BWTtrNoYg9TM4w9R0kK3noR8A34p0ivavvXj13pma65fARSbd18OoXr3SOIcHxf8+FOL6qRWjbFPFBUBpVVssxiOACi0kzAOAwnJQJfF/X8FwYKyh863kyuu97u2yQ1YX54bKzSU4EClFFYzmsuYzjmuVRayug4Yp9MzyKr+cnKMGYHENpVb0gR06BmVXl0fmpzwBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qskSCK/vbzU5Q3v8wzkkk36CY4wLaT+sAVL4H2pRyp8=;
 b=axlNyCe8Opxa5qfBbZhjSFYJ3jQd3UfBP6oZt9zg3iX2FZ+REQup/KqjMRpcVCy4uTc19Fbj7o/bJb82v/DX6veI3Ym1fRHGOCAznTvui+ubH3Pj2XdL2zDTIzQhbvxPdW2Xly4E309TdOOU3JToKlhm1xYFFI6Hw/H1z5eMh3VSMVgdmR3MVV3GhIy0U5Gvv7+8ytfjkcRh59sejoiuRBKMHGtzdGE77gFSqzyGrGsBazJ0LGgwR5EsGsxUCJyCiF9VZ0aaH8idXWA+1Wf/pUVrH4qXMv6Sted6bwYN4NjOduo3toZO0A1QQBtskiGkdtG/1KzKCHe7T8TE288Y1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 PH0PR12MB5630.namprd12.prod.outlook.com (2603:10b6:510:146::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 22:12:50 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86%6]) with mapi id 15.20.6277.034; Mon, 10 Apr 2023
 22:12:50 +0000
Message-ID: <f7c7c691-d173-73ab-c24a-79c22e6ef3b0@amd.com>
Date: Mon, 10 Apr 2023 15:12:47 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Content-Language: en-US
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <a5b7f1e4-8f14-d5fb-8f88-458d7070825d@intel.com>
From: Shannon Nelson <shannon.nelson@amd.com>
In-Reply-To: <a5b7f1e4-8f14-d5fb-8f88-458d7070825d@intel.com>
X-ClientProxiedBy: SJ0PR03CA0377.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::22) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|PH0PR12MB5630:EE_
X-MS-Office365-Filtering-Correlation-Id: 427b4690-90e2-4e09-6562-08db3a10b93f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xj5A6MLf+D4g8dnFMNGkAH8zlpL2Wj+3nhNJ7jVOyr2DgOE4SQaNJ0WdbaJqrXPI23Jqlt1J39x6MxENGrMVue9suGNEaQaLGIdDB09O82vZdiUCgSI4VJNUCg/+YcTAyc34W0ULJBbK4LFxcWpXFUr2pLR+5vaPPjSoXNPyDwoJl7EbsE6GJAtxODckdbE9McyM1FP89/labUtBOylyBAU8Tu9V7VZsZ8PKdqAVkUTzhUVXqP5nzx3H0RKQxC0SDXNUahofODoOWHGOmt9YrHkOIRSLSwNF149UPbPUxEHLwtSM1AMTrEThSY2hlvSVAnye6KAaa3kK5gmTPIve51DQoW0MzN2XcYqwGhRZy0c+tBLfSEdtzZws41SVmWcGQzTNnofb5BfXa94qRgi83YXoPv8gzDEeEBNncqK4I5UgWy4A8xuh279CSBEmL2EesUZooYH84n9Xj8apfd27f0I9M+XUdnu+OJLwMsTN+MOVUNcU0VEJgVWddiXjCzEHhxOGZGbD6k8bpzNn7rlDF2pru97BTbNSnY+41BPlC18/EYoAAg75oHgMyDFKK4GQuOsKSSNoqGFS7tj3fD5toHes32zASo2CdZrRWPdfye3f3xbeV7MwePgT+uxuwvR1bKRnadNo/E9kCdjHoQRgew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199021)(31686004)(6486002)(478600001)(54906003)(66476007)(66556008)(8676002)(4326008)(66946007)(41300700001)(316002)(86362001)(31696002)(36756003)(83380400001)(2616005)(6512007)(6506007)(26005)(6666004)(53546011)(8936002)(7416002)(44832011)(2906002)(5660300002)(38100700002)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzRUbHVBUDQrRVBzZUhDSVhMaVl5anlqSk9ZZEFmRjRiMkEwWE5mVG51Q3ow?=
 =?utf-8?B?S2g3akhjaHhDdkVXaGsvUFZqT0FBUUxlUzRVc0F5SUpGbHcwN2l1K2RZTG5Z?=
 =?utf-8?B?dUtMaXl3WVk2eHdpZDBPMlNuWU5jNThDa1pBaStuNjlMS2xQU0lhZ25MbE9p?=
 =?utf-8?B?L3QwWWJDS3o0MmpiN0RlU0k0akw4VytLUUdZTGY2cURPbzBVL2o3WCt6QjI3?=
 =?utf-8?B?bW9LaWRiaFRIeGJ4NTRNVzZueEFRSnY5WmJONEVJMFJTTVhxT052K2RoczdP?=
 =?utf-8?B?SmpmUkRDMGVmUWlEeXpkK2VwaVFZK0svL0RJcEt2aUJHOEtUbWNiN3pBSEFo?=
 =?utf-8?B?eStGWmFCSFlRWkxBenZjZXdOWU9lT0lva2JSUUg5SE8xZk9HWk1kcmVNUUpH?=
 =?utf-8?B?Z2Q5cTFycW9Ndmd1VHpZYkViVjhLYUgvT29GYUpPNXJlOVBMRTRHejZFT0Y3?=
 =?utf-8?B?SW5BNGwxQXc3SG85Y3RndUU2T0c1L2F4ODc3ZmtEcDdBOE13d0FQSUdEc2xa?=
 =?utf-8?B?L2MyeGhqVGpiTnBuc0dnaWQrNkFvWDlUb2V1Rkp3RFVwRTR0MmticXJPNGI4?=
 =?utf-8?B?UVFiVTVGbGdxbHQ3UnI0bDZUMHFCNUpGcDA5WVJtM0pieFRST0FtcG92VnVp?=
 =?utf-8?B?U1diYStrUWpEaTA0cTY0SnpYTVJhc0FZREhZVURpNDlGdWZCbWhoUWxsRlp6?=
 =?utf-8?B?bzlGM1IxTmMzOXYwdm42dmJPaTQ1SDRZWm9xcGtFZm9OclBUczB2c25jK1gz?=
 =?utf-8?B?OG9PODhTcEpURmhmNEQyM3dYd2E4Zm1NOTFENFF5MUgwaWxFSGZySXY2NHRT?=
 =?utf-8?B?U3V2TWo3d3N3RFNXRU9UTm9lVStHTHpsWXJKVkRnRXVSK2xRb0ZyWEtnYzlH?=
 =?utf-8?B?UUZ1NHRPaXZSWUZyWW5GK0Fka1hVejhrNmFnRlNIMHFCN2U4c3QwQ2NjTmRO?=
 =?utf-8?B?NFQyWG9jc01YV2sxY2VPT1k5aU9pR01oQVh5SjF4blNYT2NTLzRzdGZPeTMw?=
 =?utf-8?B?dkkvL2p0YW9nMTczUDhWMlpTejFWbEkxSGVZNEwxY0V3MndpeElUODAzRmtl?=
 =?utf-8?B?dXdOKzZhUkM4SEFmelBiNmZOMTFtOFFWc3dBOHBCRkJ3MEtveGhsOFo0U04r?=
 =?utf-8?B?WllQVVhHRTF1QWJhc3k4MUhXczQvL3hVdGpyOVp1Ym0xcWJFWG85dnpXTW1O?=
 =?utf-8?B?SlJJdmdPaGs5L0JMK3hRWWR6QkdRVGZhQTJPVTdHNDg4UFBwWTRYRDUrMzln?=
 =?utf-8?B?aDRKS3BSV3RMMnB1enViVzVscEhRaktLbUxJTDdtdW5yMWZtbjdyaWNSYzhy?=
 =?utf-8?B?enBib0p0RVJQeXdoRWpQNURMcjVZdENkWU1TYVF3d2RiYTlEL3dtWUFjVU5n?=
 =?utf-8?B?T0wrWVFlQ2NZK2w2Y0tLanlBL21mR1pPbzB3dmZFNm5GYUVpYzdwV1U4ZW1w?=
 =?utf-8?B?OUlQajU4bmplOHRic0xYTEVWc0U5MiswVTdjazFYVXZ3Umpsb21VWFI4QVN4?=
 =?utf-8?B?UFhVVzlRMUNjbmVZcWw1UElQMHdaN1NWZ0RWTGhWYmVkNm9ibkwwSFdla1ht?=
 =?utf-8?B?N3RKdlRBWTZPY1htOG9zZENkTm52Vy8zUllkc3ZEYmtHcGsrd0lUcDdmaVlR?=
 =?utf-8?B?STljT3RFeWU5U2VRekJKVnh2VkU1QmxPVFRwd1QxZU96Y1dmdlBkYlNvS29n?=
 =?utf-8?B?bUNuQmdLZm4xbXdlY1E3UHJoY1pveGhsKzNud2J0OXd1NnZzZDRxMzVSV2wz?=
 =?utf-8?B?VDVmUEVMSE5oVFBuSVM2eXVuTmZYSG9FcnVvWkVETHdpTUM2WjN2VHRnS0Vs?=
 =?utf-8?B?bnljODZrbWRtMFlyUmZ1bjc1SFZXRklySzR1ZzFQczZFVFBKUDljMFhJWk1n?=
 =?utf-8?B?c1pIZ3RrOVVLTGUvbkpjeTAyZy9hQWlNcHJzTmRwVXRzMk54RkcvMFFid3gr?=
 =?utf-8?B?UXNaZGJrUHA5Myt4akNNMjBiRExja013Njc1VlpsYUNuTG5BWnlLS1VNQnBM?=
 =?utf-8?B?QU5GNURXQUR1MjNXTU94bFUyWXQwT1hIZlU1aDFqRVR1TjRpLzBmKzVaN3R6?=
 =?utf-8?B?L2Y0WGw4OHdkckJqZWJSRTBZUWJhbVNkTzdScUJFN2dyTCtVaXhqc1ZGVjZy?=
 =?utf-8?Q?Q23tDOauUpUhtH0EKV8m/Hzsq?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 427b4690-90e2-4e09-6562-08db3a10b93f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 22:12:50.6456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuJZilaAuvQeLzg3txj7zefmye8/IObc3C8PeTkBetCuWP65LgmTMfUWFzH32jhcp98CMcoG5OIwhz/NF9YU+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5630
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qskSCK/vbzU5Q3v8wzkkk36CY4wLaT+sAVL4H2pRyp8=;
 b=rg6knvuRYXHOv8xZWxQVwNv8tbUv7IvM9/beTzYem2AKncWyMKTI4qAwskRirIbAZRK13gErrLUAU8Wi0RirNhFRBl43/CIt7ApEb/NSnc2LYidK8q3id0B2WO3QGDqjB+710LYMqlqe8WxUm3tvvTs5NSfcbdSIpW5rQ/7/tNw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=rg6knvuR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8xMC8yMyAxOjI3IFBNLCBMaW5nYSwgUGF2YW4gS3VtYXIgd3JvdGU6Cj4gCj4gT24gNC80
LzIwMjMgMzozMSBBTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+IE9uIDMvMjkvMjMgNzowMyBB
TSwgUGF2YW4gS3VtYXIgTGluZ2Egd3JvdGU6Cj4+Pgo+Pj4gVmlydGNobmwgdmVyc2lvbiAxIGlz
IGFuIGludGVyZmFjZSB1c2VkIGJ5IHRoZSBjdXJyZW50IGdlbmVyYXRpb24gb2YKPj4+IGZvdW5k
YXRpb25hbCBOSUNzIHRvIG5lZ290aWF0ZSB0aGUgY2FwYWJpbGl0aWVzIGFuZCBjb25maWd1cmUg
dGhlCj4+PiBIVyByZXNvdXJjZXMgc3VjaCBhcyBxdWV1ZXMsIHZlY3RvcnMsIFJTUyBMVVQsIGV0
YyBiZXR3ZWVuIHRoZSBQRgo+Pj4gYW5kIFZGIGRyaXZlcnMuIEl0IGlzIG5vdCBleHRlbnNpYmxl
IHRvIGVuYWJsZSBuZXcgZmVhdHVyZXMgc3VwcG9ydGVkCj4+PiBpbiB0aGUgbmV4dCBnZW5lcmF0
aW9uIG9mIE5JQ3MvSVBVcyBhbmQgdG8gbmVnb3RpYXRlIGRlc2NyaXB0b3IgdHlwZXMsCj4+PiBw
YWNrZXQgdHlwZXMgYW5kIHJlZ2lzdGVyIG9mZnNldHMuCj4+PgoKWy4uLl0KCj4+PiArCj4+PiAr
I2luY2x1ZGUgInZpcnRjaG5sMl9sYW5fZGVzYy5oIgo+Pj4gKwo+Pj4gKy8qIFZJUlRDSE5MMl9F
UlJPUl9DT0RFUyAqLwo+Pj4gKy8qIFN1Y2Nlc3MgKi8KPj4+ICsjZGVmaW5lIFZJUlRDSE5MMl9T
VEFUVVNfU1VDQ0VTU8KgwqDCoMKgwqDCoCAwCj4+Cj4+IFNob3VsZG4ndCB0aGVzZSBiZSBlbnVt
IGFuZCBub3QgI2RlZmluZT8KPj4KPiAKPiBUaGlzIGhlYWRlciBmaWxlIGlzIGRlc2NyaWJpbmcg
Y29tbXVuaWNhdGlvbiBwcm90b2NvbCB3aXRoIG9wY29kZXMsCj4gZXJyb3IgY29kZXMsIGNhcGFi
aWxpdGllcyBldGMuIHRoYXQgYXJlIGV4Y2hhbmdlZCBiZXR3ZWVuIElEUEYgYW5kCj4gZGV2aWNl
IENvbnRyb2wgUGxhbmUuIENvbXBpbGVyIGNob29zZXMgdGhlIHNpemUgb2YgdGhlIGVudW0gYmFz
ZWQgb24gdGhlCj4gZW51bWVyYXRpb24gY29uc3RhbnRzIHRoYXQgYXJlIHByZXNlbnQgd2hpY2gg
aXMgbm90IGEgY29uc3RhbnQgc2l6ZS4gQnV0Cj4gZm9yIHZpcnRjaG5sIHByb3RvY29sLCB3ZSB3
YW50IHRvIGhhdmUgZml4ZWQgc2l6ZSBubyBtYXR0ZXIgd2hhdC4gVG8KPiBhdm9pZCBzdWNoIGNh
c2VzLCB3ZSBhcmUgdXNpbmcgZGVmaW5lcyB3aGVyZWV2ZXIgbmVjZXNzYXJ5LgoKVGhlIGZpZWxk
IHNpemUgbGltaXRhdGlvbnMgaW4gYW4gQVBJIGFyZSBvbmUgdGhpbmcsIGFuZCB0aGF0IGNhbiBi
ZSAKbWFuYWdlZCBieSB1c2luZyBhIHU4L3UxNi91MzIgb3Igd2hhdGV2ZXIgYXMgbmVjZXNzYXJ5
LiAgQnV0IHRoYXQgCmRvZXNuJ3QgbWVhbiB0aGF0IHlvdSBjYW4ndCBkZWZpbmUgdmFsdWVzIHRv
IGJlIGFzc2lnbmVkIGluIHRob3NlIGZpZWxkcyAKYXMgZW51bXMsIHdoaWNoIGFyZSBwcmVmZXJy
ZWQgd2hlbiBkZWZpbmluZyBzZXZlcmFsIHJlbGF0ZWQgY29uc3RhbnRzLgoKClsuLi5dCgo+IAo+
Pj4gKwo+Pj4gKy8qIFZJUlRDSE5MMl9PUF9HRVRfRURUX0NBUFMKPj4+ICsgKiBHZXQgRURUIGdy
YW51bGFyaXR5IGFuZCB0aW1lIGhvcml6b24KPj4+ICsgKi8KPj4+ICtzdHJ1Y3QgdmlydGNobmwy
X2VkdF9jYXBzIHsKPj4+ICvCoMKgwqDCoMKgwqAgLyogVGltZXN0YW1wIGdyYW51bGFyaXR5IGlu
IG5hbm9zZWNvbmRzICovCj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0c3RhbXBfZ3JhbnVsYXJp
dHlfbnM7Cj4+PiArwqDCoMKgwqDCoMKgIC8qIFRvdGFsIHRpbWUgd2luZG93IGluIG5hbm9zZWNv
bmRzICovCj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0aW1lX2hvcml6b25fbnM7Cj4+PiArfTsK
Pj4+ICsKPj4+ICtWSVJUQ0hOTDJfQ0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmwyX2VkdF9j
YXBzKTsKPj4KPj4gRG9uJ3QgcHV0IGEgc3BhY2UgYmV0d2VlbiB0aGUgc3RydWN0IGFuZCB0aGUg
Y2hlY2suCj4+Cj4gCj4gQ2hlY2twYXRjaCByZXBvcnRzIGEgd2FybmluZyAoYWN0dWFsbHkgYSAn
Q2hlY2snKSB3aGVuIHRoZSBuZXdsaW5lIGlzCj4gcmVtb3ZlZC4gRm9sbG93aW5nIGlzIHRoZSBj
aGVja3BhdGNoIG91dHB1dCB3aGVuIHRoZSBuZXdsaW5lIGlzIHJlbW92ZWQ6Cj4gCj4gIkNIRUNL
OiBQbGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9zdHJ1Y3QvdW5pb24vZW51
bQo+IGRlY2xhcmF0aW9ucyIKClNpbmNlIGl0IGhhcyB0byBkbyBkaXJlY3RseSB3aXRoIHRoZSBm
aW5pc2hlZCBkZWZpbml0aW9uLCBvbmUgd291bGQgCnRoaW5rIGl0IGNvdWxkIGZvbGxvdyB0aGUg
c2FtZSBydWxlIGFzIEVYUE9SVC4uLiBkb2VzLiAgSXQgbWlnaHQgbm90IGJlIAphIGJhZCBpZGVh
IGF0IHNvbWUgcG9pbnQgZm9yIHN0YXRpY19hc3NlcnQoKSB0byBiZSBhZGRlZCB0byB0aGF0IGFs
bG93ZWQgCmxpc3QuICBGb3Igbm93LCB0aG91Z2gsIHNpbmNlIGl0IGlzIG9ubHkgYSBDSEVDSyBh
bmQgbm90IFdBUk4gb3IgRVJST1IsIAp5b3UgbWlnaHQgYmUgYWJsZSB0byBpZ25vcmUgaXQuICBJ
dCBtaWdodCBiZSBlYXNpZXIgdG8gaWdub3JlIGlmIHlvdSAKanVzdCB1c2VkIHRoZSBleGlzdGlu
ZyBzdGF0aWNfYXNzZXJ0KCkgcmF0aGVyIHRoYW4gZGVmaW5pZ2luIHlvdXIgb3duIApzeW5vbnlt
LgoKClsuLi5dCgo+Pj4gKy8qIFF1ZXVlIHRvIHZlY3RvciBtYXBwaW5nICovCj4+PiArc3RydWN0
IHZpcnRjaG5sMl9xdWV1ZV92ZWN0b3Igewo+Pj4gK8KgwqDCoMKgwqDCoCBfX2xlMzIgcXVldWVf
aWQ7Cj4+PiArwqDCoMKgwqDCoMKgIF9fbGUxNiB2ZWN0b3JfaWQ7Cj4+PiArwqDCoMKgwqDCoMKg
IHU4IHBhZFsyXTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqAgLyogU2VlIFZJUlRDSE5MMl9JVFJf
SURYIGRlZmluaXRpb25zICovCj4+PiArwqDCoMKgwqDCoMKgIF9fbGUzMiBpdHJfaWR4Owo+Pj4g
Kwo+Pj4gK8KgwqDCoMKgwqDCoCAvKiBTZWUgVklSVENITkwyX1FVRVVFX1RZUEUgZGVmaW5pdGlv
bnMgKi8KPj4+ICvCoMKgwqDCoMKgwqAgX19sZTMyIHF1ZXVlX3R5cGU7Cj4+PiArwqDCoMKgwqDC
oMKgIHU4IHBhZDFbOF07Cj4+PiArfTsKPj4KPj4gV2h5IHRoZSBlbmQgcGFkZGluZz/CoCBXaGF0
J3Mgd3Jvbmcgd2l0aCB0aGUgMTYtYnl0ZSBzaXplPwo+Pgo+IAo+IFRoZSBlbmQgcGFkZGluZyBp
cyBhZGRlZCBmb3IgYW55IHBvc3NpYmxlIGZ1dHVyZSBhZGRpdGlvbnMgb2YgdGhlIGZpZWxkcwo+
IHRvIHRoaXMgc3RydWN0dXJlLiBEaWRuJ3QgZ2V0IHRoZSBhc2sgZm9yIDE2LWJ5dGUgc2l6ZSwg
Y2FuIHlvdSBwbGVhc2UKPiBlbGFib3JhdGU/CgpXaXRob3V0IHRoZSBwYWQxWzhdLCB0aGlzIHN0
cnVjdCBpcyBhbiBldmVuIDE2IGJ5dGVzLCBzZWVtcyBsaWtlIGEgCmxvZ2ljYWwgcGxhY2UgdG8g
c3RvcC4gIDI0IGJ5dGVzIHNlZW1zIG9kZCwgaWYgeW91J3JlIGdvaW5nIHRvIHBhZCBmb3IgCnRo
ZSBmdXR1cmUgaXQgbWFrZXMgc29tZSBzZW5zZSB0byBkbyBpdCB0byBhbiBldmVuIDMyIGJ5dGVz
IAoocG93ZXItb2YtMikuICBBbmQgcGxlYXNlIGFkZCBhIGNvbW1lbnQgZm9yIHRoaXMgZnV0dXJl
IHRoaW5raW5nLgoKc2xuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
