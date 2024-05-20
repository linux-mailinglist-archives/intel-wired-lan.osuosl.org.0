Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 060738CA06B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2024 18:02:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9719340537;
	Mon, 20 May 2024 16:02:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 45mDzLcaxLnU; Mon, 20 May 2024 16:02:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCDC5404F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716220962;
	bh=KEhqzk4fvIOIFau4A6F0EYDUw3t1fQwjiMAAJ5/tdLw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JpdTCbd9SbZknJJuWh+y2ArrvFDYOFPqS9VRx1p7mYTgAHF84EMwRZ8xBDVekglgd
	 DP1u6gaF8/XjB7phnM/8JJo9aN0A6Jhu93VMVvgHqf+n5HiiKkKAgK7TXSrkqaut0o
	 Xh2kXIJiDFqL5ifLgVdfxDVKPs9rRArtm5t1mOleR7BKvMvhGsqOqBiAHYIY3dpdkX
	 H/acWg9O1rkVOxL9WEYpuFEP+mNT8pCG6Rc7KoXeTRm6EoDLb8aX0ryj2AYPhk9+Gn
	 vNFAnF7bEk17v6XkJtajikuyCx63ktGb/8di0wS/A/Hv9EItlXozgQ8i/MkiqYSMSm
	 wEuKWnYuKPm2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCDC5404F7;
	Mon, 20 May 2024 16:02:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B18A1C4B74
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 16:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 335C540455
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 16:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SLZxqdinM8Gn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2024 16:02:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.93.66;
 helo=nam10-dm6-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E292E400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E292E400F9
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2066.outbound.protection.outlook.com [40.107.93.66])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E292E400F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2024 16:02:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5a/L/RAIL6mWa9drwMoXjL3qAo8HxeKMVosLSzpvDIBd5vpZcPTneIzaBJ5S1CM68soYcg2OX9o0kJqfkd2ChlR4diTPg3jGDhBIqNKUA5R5o6cgKmDGXdFMGC+GncdOMI/DxybNHnNj8w7kiHg04PDlPz+w6fb2fARCZSCYM0ZIC44j4eNbWCDLNz37y9qI8JKtTr21ehbG+4zYTg0H6hy0bcw6X7N0NEjEe3TUjKptMIxkeePLxY7hhi14+Sgs/t107Udt3Lhao1fsY0aGKbOWQaaaq3s5XfKXLtrBQ8CFACfOJR9XW4HQlBmzvlBuJ7Eq0xJvto48a0UYE/u6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KEhqzk4fvIOIFau4A6F0EYDUw3t1fQwjiMAAJ5/tdLw=;
 b=PSi8j0X9irbL4eRsWTOHQAg7OwshOGLRX2KdUm86vIBO7qHOm2gU1l9iYsYZMer0/Aw+SYzqQ6Cyz7WJudD/Zr+gLhQwRqSSPFJJPQjSuxBqbr8oCQcu1bggUwI/Ljs+Y7cYHf2I7fad3BB2vsUMY+UeRSOlly9ubZ7HhnGoXEaTerPMwKPisXOwP98yzRxHZdFk8fwNKHXsKlaV9Oc1L27gudDr+t9Dl7+M/1RXNCfaqm5RzlBcWvF/rvi8ZgGh0x6mu8Qld6P7pd4xAnjlY57u9leFNNqCRR5TDP1R2fjcg2UsUFa/pWznEoZZzdD6LxK1YABWjEsz3uPC7Vcg6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by MW4PR12MB7311.namprd12.prod.outlook.com (2603:10b6:303:227::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Mon, 20 May
 2024 16:02:34 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bfd5:ffcf:f153:636a%5]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 16:02:34 +0000
Message-ID: <8e1b9ae3-b533-4a13-aff7-9d62bd1f8f98@amd.com>
Date: Mon, 20 May 2024 09:02:31 -0700
User-Agent: Mozilla Thunderbird
To: Karthik Sundaravel <ksundara@redhat.com>, jesse.brandeburg@intel.com,
 wojciech.drewek@intel.com, sumang@marvell.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, horms@kernel.org
References: <20240520102040.54745-1-ksundara@redhat.com>
 <20240520102040.54745-2-ksundara@redhat.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240520102040.54745-2-ksundara@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR10CA0025.namprd10.prod.outlook.com
 (2603:10b6:a03:255::30) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|MW4PR12MB7311:EE_
X-MS-Office365-Filtering-Correlation-Id: dc1051c0-a4b8-4e7f-72c1-08dc78e642dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230031|376005|1800799015|7416005|366007|921011; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eDQrUTFUd1FPWG80dk9IVHZxdWlscVJ3OUVnZDBMQkhMWkVZdGVkd25ZblpR?=
 =?utf-8?B?ZEk2RkdJekI1WkNrV3RhdlFBeGpXSEI5YTJvd0pURjIwZDliajl2UjVodUtL?=
 =?utf-8?B?Nnl4TGQ0S2E3UG9iakNtTEV2MHZacVcxV1BmYVA2a2ZicGdZaXQrWFQxcmkv?=
 =?utf-8?B?bzRlVWpkRFBQODNvbTlyUUZsaVhJejFuUVl6WkhlczRJY2lnbGpob0NGb3dM?=
 =?utf-8?B?emV6czFXMXo4dFkyaDhPdFdjSVZqR1lsQ21nMU0rWjFSbWY5ejBDZ09ubnVp?=
 =?utf-8?B?S1FNdHhQNnpZcGh1Y083OVJrTC9ldll0NUliWWxwZDZrZHgzdzROSTB6ZlIw?=
 =?utf-8?B?UzJpSiszSnFsTU9YbWR6WlFxUCt6Ry9FOVFMTE9EbmFVcVBoSXIvaFI4UEVp?=
 =?utf-8?B?aVV4YjFIdHVrWkFwa3pEYklCTHVVNmVHc1dlS0VvMEswWGdjcGVqcFBmMTRM?=
 =?utf-8?B?NmZVVTlvU0dEdnd5ZDVvT0U5aFo3YXlwbS9LamgzbEJsaGNtVUljOTZ3eFc2?=
 =?utf-8?B?SlpXdnRKdjR4TXVtRU5ha2pEM1dFVzJCcHB1RjEwczhyL2FpaVpoL1NSblk3?=
 =?utf-8?B?cDIrYnlYNFVYVlV5VDJhQmQxbklUSStsQ2JJK3BLamR5TEhmWU1YdC8yKzBa?=
 =?utf-8?B?NC9RSHFTZXVvelZjN0pxZithTjEzeUxmQ2dQamNLbFRCV0JweHBtYm1xMHh3?=
 =?utf-8?B?Q1VRUURweUw0U3RXRmVVTTBtNXVlbHlzSU1OL1B6aWdwamI2RmtYRm41Q05L?=
 =?utf-8?B?Ui9EYitGVzIvVjYxY25UQktXaXp6Ly9sTnJSa0dYaGZublAxNUI0OHdsM2Zz?=
 =?utf-8?B?M2RHbXduWlNReEkvc1ZxYlNHMVJvQS93L0VHalhVWVhGdDZBclJ5RlJLQ2VX?=
 =?utf-8?B?Um1Rcnl2US9oQTRqdVh2M1N3VGpRT0J0QU5DK1Q1a0xTbGZsVFFRTHJ4NklD?=
 =?utf-8?B?bjAwSU1wMWgxdzR0dTlQQW42Nzh5TG0xVzJsbGFZUTcvSEY2UkFuS0xzQlNv?=
 =?utf-8?B?ZTVpL25JMyt0QnFaR29DUkIzQWtzZ2Y0cmtmU3BQaTBBQlp3QVQyVC9JOElK?=
 =?utf-8?B?UnlFeGZicTVIYWVUaWVVd0Q2K2FlKzk4SmlZcEd1NnFZbURMNDJpVGp3b3dx?=
 =?utf-8?B?VG9la3VGMUdLQmJ6QnZ0dlM4YVkvRDFJTVE0S3NKbVJ2dERPTkdndUdzMkJa?=
 =?utf-8?B?R1JvRWZoK3RCTFBGdjlPSXVyYjZ3NXZQV1I5Ulc2N0JlZk9obHM2Si9KODFF?=
 =?utf-8?B?WFl5VGNtdGg1U0EzY3JnZVFuUTdzUUFVcFNWTXRSa3BLbXVCckp2ZFdIR1Q3?=
 =?utf-8?B?S2hFc01pTU1MV2FJZlF3YW03NGhJeEpIZmpVdzN4K3RtbnYvV3pMOWNheGlL?=
 =?utf-8?B?ejlKRVZNS1l4QlJOK1hhelA4bE5qNlpmYVBLK2x4aGNhaFVITytFQTBVaTBn?=
 =?utf-8?B?aGpHRUNYK2JTSWd0Tm5YRnprRlpkT0JxTmErWXQwS2ZiVURobnpucVRFNUN0?=
 =?utf-8?B?OGpZYmpXRXh0ejdBclNQdDErL3FtdUQrSWVhSWI5dlFtZmlKOUlDTnBBVXlo?=
 =?utf-8?B?Ym4zaXJxeFdyUGF0TjV4TUtYVGlud0h6U2FvdEx4SmhRd3k3cG9XLzYwdXZo?=
 =?utf-8?B?MXo0bUd4MzhnK3ptMTNpR1dieVVyQ09FS1IwbnQ2bGdLUUZHY09DQ2JlMXdN?=
 =?utf-8?B?T09iNXc4UkdqcWhlV2duQzFPMmpENEYvb0dDTXpsTnI0MjR3a3k0T0ZuY3l6?=
 =?utf-8?Q?UDadkEl6ZBRf1W8TcY1O1Qh28BcYxC3kd/wOvZc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(7416005)(366007)(921011); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFVGamxNWWxtRFFxOWF4N1N0YlRPY1ZxZ0dpQU4xWTFwQ1Z1QXg0UlNiT2VV?=
 =?utf-8?B?aStxNUVHekZvaWd2Q1Fzd0NuekZFSnIyQkhlYVRaVVZJSXFnYnVHQVRxOTA2?=
 =?utf-8?B?RXE2RVJDRU4yVG5FUzhXd015Um50NEtnOFd1L2VjMDRpekdqMzExNi9jMGxR?=
 =?utf-8?B?NDJ1Y0hRay9iNGlWYmg2R3QwWXFmdjZQNXgzeFB3Ti9aMkZPSzdiUnJFNEd2?=
 =?utf-8?B?YlkxOHBTaTErdFhOQkFVL1BpYU9LaUhFaGJGT00wbkNYN0kvRVdrVlBOZnZV?=
 =?utf-8?B?UysyZWd5V0JOYzJxeFN6L0FGVEx2QVU3cjVkcDRWbkJSK1RRZDdSSTVNcFU1?=
 =?utf-8?B?K0N5ZG5jMXlpaGRvYXBYenZYbEhaekZZTklmS3BrNS85SEFqRVMzU0NvazhT?=
 =?utf-8?B?OEIyL2tveE5rUTB2NkdveDZFbXRkQnNYRjY2QTZVZWVaSTFBWlR1dldmVCtz?=
 =?utf-8?B?MW9yaXRoajNFc3RkbTJjN2Q2NFg4WU9rWmJ1NllKblRWeGF1UlcxaTZ1d1VK?=
 =?utf-8?B?SmJva0RlY0NWci91aENCOXVjbzY0UXROZjBUY0cxN0cwaWtwbTVndTdHQkdQ?=
 =?utf-8?B?NUtFbVlGZWFuZERMR3VpVE1nUVBkeDJkajJwS3lVZUEzYWVpTGsydEVUcXVL?=
 =?utf-8?B?Z1VxZjhYa0tVYVJDY2txVnVlRUR3NUMwVUcxSUc0blJzcFpnOTBOaUhBUGRa?=
 =?utf-8?B?dlJWVksyb3lySDI0UHZCN3dpR1QwWDVQSzEzbmY0bVMyRzFleG16YnlvQjY0?=
 =?utf-8?B?SFd2T0VIclRqcFZGUTJIQ0kwbkQvaEtMdGVXYnJOZ3UzcENXQVVTUEF5Z25n?=
 =?utf-8?B?bDZSaTZvc3NPb0NITXVFdFptMEl4YmRtMUovaWhTV0hZcWkxZFhIZjlVTVR0?=
 =?utf-8?B?WmNESGdKVnlIMFRvV1l5ZDdYeVlYcm5pWGVPd0ZNdFFBYUNrUjZyMEdPRnZ3?=
 =?utf-8?B?TFZHSUJtUWtwbU5ONUVsMkNQazhpOUJLbFhjSjJicHl3bDZvaEVSUy9uWjRO?=
 =?utf-8?B?aWZDYTlkWUJ2OVRMMjh6d3pvMTRXZlFHNHJIZzkyK2xNSXlYMm5pYlJoN2RD?=
 =?utf-8?B?V1pESWdrbXh3RGxvYUt5d0xSVGVyaklrakwxL3BHUjlJZURCaVJSZEVHVmJH?=
 =?utf-8?B?QkJ5eTBNOXlkVU9WQVRJd0JudlptQlFuNG40TEZCTXMweUgzblcyUjVBRlVV?=
 =?utf-8?B?c0VGNy9IdVhCbjYrdWNIc3ZqSmpyUTFDRzE4NGZ6OXFwUVdKRDQwMG9NYmIr?=
 =?utf-8?B?QU1ZanRabCtYOGRYQmt5bWtRcGcrWFprUmxVOXRXZ2pnR2kyaFRoU0dvTHZF?=
 =?utf-8?B?cDBOOWJRWWxkYXUvRXJSbVFQdFVPZGRuZTMzamJJMmpVb1QzOTRNT0xCRC9x?=
 =?utf-8?B?YUtwUGMrOC83NGFSRnozMk5teXA5Y3hyNzVTcTQxYktMbWxVK1ZaNXRHVHdL?=
 =?utf-8?B?ZzZqcy8xS2lxTHVLaHVOcjU4NE00NTNKSEpRL0VLRWVTV1NUWWJVNHFTWVFJ?=
 =?utf-8?B?WHFXK05mdzJ6eG01MndaQStBVld6QXIzRjRiWVRhcGw3QXBFNnVsTWkwRGtC?=
 =?utf-8?B?aFROdllJQkpZMG0wZUIva3hZMHVndXFCTUtLZ3dzdEx0eDRML3FldE9kNlhZ?=
 =?utf-8?B?UGpFMFppb1UvR2pEeWJuNXpVYmwvSXZXUzhVSG5oN0pCK1QwVHA2N0xSRlhr?=
 =?utf-8?B?SWs4TXRzT1ByZUFWTXNsOUUxU0hyaW5oSmR2ZW1MK2FjNnhTMithNWRwazJ3?=
 =?utf-8?B?b3pFbFhid3hUSGQ2Ym1DZCtSeGtBSi9rV2dnOHFsQldxTTY1WHNSRVRmN0JH?=
 =?utf-8?B?dVczenEvMC85QUtxWHpVYUE0ODFPK0RRV2VHQTVIaVVFNHI2cytzaVpPekh2?=
 =?utf-8?B?YWxlSElEYWNiRnVIR2R6WWt1VlNGeDJOSTh1a3hhcW41L3N6SXdRdjNJMmVo?=
 =?utf-8?B?OVlEOTRkRDlvblY3dE1uUUV1S0lVbGhOQ0ticWlrcncySWJnZXFqeGFNbGZG?=
 =?utf-8?B?YURrNnRiOUwydzVSNllaMjRsYnlzR0pUSG1RQUtmQWdMai9UOFYrYnRPSENF?=
 =?utf-8?B?R3F2d1U0YThFalcyZmt0cnRyV3Znajc3aWdRd2kvUDFjdHBVNkRzRCs5dFhW?=
 =?utf-8?Q?dkau6tTLeuajsTgsN3KD0x8Yk?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1051c0-a4b8-4e7f-72c1-08dc78e642dc
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2024 16:02:34.0988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k+P+Roz9rhccvcaVk8hvtweW0HzSIuoUyT6IemKhNvAEtnrCTOysPREdR8ZK7Csx2J+cAQf0qj7gRpTqMOWupg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7311
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KEhqzk4fvIOIFau4A6F0EYDUw3t1fQwjiMAAJ5/tdLw=;
 b=jx/zhco1QSVD31C1D66EihqiuwzYKmYTMmzjnswRw8FDTVaKLAIc17o8TZy8JDKff0lQAmgUxaHzLHUQY13HRtf40GPOFGa7YPyBU0c2CM+xEVQBuVi+Kmeb6EzEmh/YrHpu67tPhixs+ldzvQVhW8DoVZd1GFDiDb0prcWrfD8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=jx/zhco1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11] ice: Add get/set hw
 address for VFs using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, vchundur@redhat.com, michal.swiatkowski@linux.intel.com,
 rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/20/2024 3:20 AM, Karthik Sundaravel wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Changing the MAC address of the VFs is currently unsupported via devlink.
> Add the function handlers to set and get the HW address for the VFs.
> 
> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> ---
>   .../ethernet/intel/ice/devlink/devlink_port.c | 59 ++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_sriov.c    | 32 +++++++---
>   drivers/net/ethernet/intel/ice/ice_sriov.h    |  8 +++
>   3 files changed, 89 insertions(+), 10 deletions(-)

LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> index c9fbeebf7fb9..00fed5a61d62 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
> @@ -372,6 +372,62 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>          devl_port_unregister(&pf->devlink_port);
>   }
> 
> +/**
> + * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_get operation
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
> +                                         u8 *hw_addr, int *hw_addr_len,
> +                                         struct netlink_ext_ack *extack)
> +{
> +       struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);
> +
> +       ether_addr_copy(hw_addr, vf->dev_lan_addr);
> +       *hw_addr_len = ETH_ALEN;
> +
> +       return 0;
> +}
> +
> +/**
> + * ice_devlink_port_set_vf_fn_mac - .port_fn_hw_addr_set devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_set operation
> + * Return: zero on success or an error code on failure.
> + */
> +static int ice_devlink_port_set_vf_fn_mac(struct devlink_port *port,
> +                                         const u8 *hw_addr,
> +                                         int hw_addr_len,
> +                                         struct netlink_ext_ack *extack)
> +
> +{
> +       struct devlink_port_attrs *attrs = &port->attrs;
> +       struct devlink_port_pci_vf_attrs *pci_vf;
> +       struct devlink *devlink = port->devlink;
> +       struct ice_pf *pf;
> +       u16 vf_id;
> +
> +       pf = devlink_priv(devlink);
> +       pci_vf = &attrs->pci_vf;
> +       vf_id = pci_vf->vf;
> +
> +       return __ice_set_vf_mac(pf, vf_id, hw_addr);
> +}
> +
> +static const struct devlink_port_ops ice_devlink_vf_port_ops = {
> +       .port_fn_hw_addr_get = ice_devlink_port_get_vf_fn_mac,
> +       .port_fn_hw_addr_set = ice_devlink_port_set_vf_fn_mac,
> +};
> +
>   /**
>    * ice_devlink_create_vf_port - Create a devlink port for this VF
>    * @vf: the VF to create a port for
> @@ -407,7 +463,8 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
>          devlink_port_attrs_set(devlink_port, &attrs);
>          devlink = priv_to_devlink(pf);
> 
> -       err = devl_port_register(devlink, devlink_port, vsi->idx);
> +       err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
> +                                         &ice_devlink_vf_port_ops);
>          if (err) {
>                  dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
>                          vf->vf_id, err);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 067712f4923f..dd1583b0fd90 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1416,21 +1416,22 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi)
>   }
> 
>   /**
> - * ice_set_vf_mac
> - * @netdev: network interface device structure
> + * __ice_set_vf_mac
> + * @pf: PF to be configure
>    * @vf_id: VF identifier
>    * @mac: MAC address
>    *
>    * program VF MAC address
>    */
> -int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
> +int __ice_set_vf_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac)
>   {
> -       struct ice_pf *pf = ice_netdev_to_pf(netdev);
> +       struct device *dev;
>          struct ice_vf *vf;
>          int ret;
> 
> +       dev = ice_pf_to_dev(pf);
>          if (is_multicast_ether_addr(mac)) {
> -               netdev_err(netdev, "%pM not a valid unicast address\n", mac);
> +               dev_err(dev, "%pM not a valid unicast address\n", mac);
>                  return -EINVAL;
>          }
> 
> @@ -1459,13 +1460,13 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>          if (is_zero_ether_addr(mac)) {
>                  /* VF will send VIRTCHNL_OP_ADD_ETH_ADDR message with its MAC */
>                  vf->pf_set_mac = false;
> -               netdev_info(netdev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
> -                           vf->vf_id);
> +               dev_info(dev, "Removing MAC on VF %d. VF driver will be reinitialized\n",
> +                        vf->vf_id);
>          } else {
>                  /* PF will add MAC rule for the VF */
>                  vf->pf_set_mac = true;
> -               netdev_info(netdev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
> -                           mac, vf_id);
> +               dev_info(dev, "Setting MAC %pM on VF %d. VF driver will be reinitialized\n",
> +                        mac, vf_id);
>          }
> 
>          ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> @@ -1476,6 +1477,19 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
>          return ret;
>   }
> 
> +/**
> + * ice_set_vf_mac
> + * @netdev: network interface device structure
> + * @vf_id: VF identifier
> + * @mac: MAC address
> + *
> + * program VF MAC address
> + */
> +int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
> +{
> +       return __ice_set_vf_mac(ice_netdev_to_pf(netdev), vf_id, mac);
> +}
> +
>   /**
>    * ice_set_vf_trust
>    * @netdev: network interface device structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 8f22313474d6..96549ca5c52c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -28,6 +28,7 @@
>   #ifdef CONFIG_PCI_IOV
>   void ice_process_vflr_event(struct ice_pf *pf);
>   int ice_sriov_configure(struct pci_dev *pdev, int num_vfs);
> +int __ice_set_vf_mac(struct ice_pf *pf, u16 vf_id, const u8 *mac);
>   int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac);
>   int
>   ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
> @@ -80,6 +81,13 @@ ice_sriov_configure(struct pci_dev __always_unused *pdev,
>          return -EOPNOTSUPP;
>   }
> 
> +static inline int
> +__ice_set_vf_mac(struct ice_pf __always_unused *pf,
> +                u16 __always_unused vf_id, const u8 __always_unused *mac)
> +{
> +       return -EOPNOTSUPP;
> +}
> +
>   static inline int
>   ice_set_vf_mac(struct net_device __always_unused *netdev,
>                 int __always_unused vf_id, u8 __always_unused *mac)
> --
> 2.39.3 (Apple Git-146)
> 
