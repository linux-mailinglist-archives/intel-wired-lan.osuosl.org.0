Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA0852635E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 May 2022 15:59:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D49A408A3;
	Fri, 13 May 2022 13:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w0amREO2SwY5; Fri, 13 May 2022 13:59:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EC934058E;
	Fri, 13 May 2022 13:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 812ED1BF282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 16:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6637283EC3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 16:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-Uj5x01nTsG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 16:22:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2059.outbound.protection.outlook.com [40.107.93.59])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2820483EBB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 16:22:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0Fb7qRu4ioayhfx4XPJXQLl7Pzz08gqyV4ItzJKzbiN6ouEeBw2VqSmWERhtUMyRluq0+dRIMsvhDiWVnWxGy0bd75Q+yIEM63StsiwCxJJb9CCo0oDbbY+XUGyHsTUNalr5+hbRMvY5utFNqLwgOETyP++5Pj9Ph+TIWjnAOWvNsNNMF3O2HZTcrWpk26f1o+oh4v/6N4XolJPRdmKdLNk6/rNPRtS9vaH+SIpTPM8876lJlKKSi8Bi0wLlcfav0NWOBHL/2pGZZ57sG3HmBu6R1Qqa5rVqYUhursxSTNT3aYeUS6/6Vxj9Vs9cDEYokCOiAt8NOdP+/PuFPonxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AXe/f0oHEeb8HobsPk+TQC3/YWtSFLlymmz7AE3bqnE=;
 b=VbD+2F361LUqkvbaKT/ZSmNF4PBFDIRMLp7UwN6tLs/yHMy+KxKQtpXmyTW264dlhmwREzL5XugOR5KtTk3aXdmpQMJW5LIKLZnqvdH5494iByFjN8B0mxzzs6Rwej7DrAFjtnRRne7wnY8p/GYZtq1eGsABGLCtxZJ0pjoSBiWgfvVaEIPIKeGuOo+3Te9UAkQy8pleTONUDccAYhre+RN/8UBLoVNIwuIPHWqsmjk/w27bgFttHVzZRlsA8qTURF5yRg7WPp1zM1geOB6ht39XxeTnNPtxQ6gY6hzFqZ5Qu5Dnw7A4p1zcT8UI9YQOihRwBXYJTXJnFxIUgrsNXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AXe/f0oHEeb8HobsPk+TQC3/YWtSFLlymmz7AE3bqnE=;
 b=RXcNkVdy5SoyP/lCRaq8p4E0ZNz97Ezes8ZvnYCdwaUC+h5HgA55H5BBwVMoMsv/nVjbPYMush/03XEAzzrrYF2jzOv448fpkExSonqFxjvznDadPYbMnMCukd3bisWSQFon+Sk9fUDUrs9eHG8hoBiCG5GNw3t195JuLVJ+cGCRUuOc2t5onKzRWF4HBZHbFwUWB7S/iFT3cSPBxH4YvFwaSOmoL8uGY7tzjH/V+JNIkW66K2y1kL9BSMYSqLX+9AOgHwQfgHOzWHdkAcCQTwIZJaNuKsaradYm0WZQIBpMAobScb0C4IE4HWlZ3wCWS47gbZqh6T/rpuHHylUb6g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ0PR12MB5504.namprd12.prod.outlook.com (2603:10b6:a03:3ad::24)
 by BL1PR12MB5173.namprd12.prod.outlook.com (2603:10b6:208:308::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Thu, 12 May
 2022 16:22:21 +0000
Received: from SJ0PR12MB5504.namprd12.prod.outlook.com
 ([fe80::ede1:a4f9:5bf5:c3a0]) by SJ0PR12MB5504.namprd12.prod.outlook.com
 ([fe80::ede1:a4f9:5bf5:c3a0%4]) with mapi id 15.20.5250.013; Thu, 12 May 2022
 16:22:21 +0000
Message-ID: <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
Date: Thu, 12 May 2022 09:22:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, netdev@vger.kernel.org
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
 <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
From: Roopa Prabhu <roopa@nvidia.com>
In-Reply-To: <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
X-ClientProxiedBy: SJ0P220CA0018.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::28) To SJ0PR12MB5504.namprd12.prod.outlook.com
 (2603:10b6:a03:3ad::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2834164-1bcd-4200-53de-08da34339762
X-MS-TrafficTypeDiagnostic: BL1PR12MB5173:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB5173C62636B7A8E7FC6B4F4ECBCB9@BL1PR12MB5173.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WIDvQ0s1FO40CMsfyWr6/kZiG3Qmd7RNBnzIl7RJg94M0ZKgo93CgxGOxtoWIxoI36d58M7rwuQzV7F1LQDVXlQT5N799+Q19ZzbYz7v7DrGNFUGZqTi0c2oVM7qY23htyjqAIqLhHFq8BbHR0iJCLGcggIcY4OZONIoQPmNEtFchTOdx3ooDL+Ieoji5TRUKlFze9ei1vSefvXp3TedNerVx2AdLMzzdvwkX7l7yQj8eqD7RYhwKu6R8T2tHEuic2CTaUzIw3fD1XCvFmgOlwml231XGxUsJdvIaDW5As7kX+UXdjLDzEWIU7l5YpL8uZqsrseUrb/dBuZvLQvOB7pEDdMtCuE4h/sCXSZ4nA0njhg3WRLE6llwjGNsKjh/ppaKH3F4wkYhyN9ihnsNXYZhEa0GFs9E7VEeutE9wE5rfEZCc8qiDorf/I4axrYXIQxXdzC0g16l0cntojTI883RyY2qL7YYbiiNFPFKiSJiceAj8pv+rXyoyIMtZsHLkK2pxpw3eGRBksFKKCIE4QnlAEz+Mle2a2GTLrkLhdRJcvOssd7cgezuzfFBu3eNJtqLsG3ioRPtzJuxbZ+Q5RaR3zzDQozWRVDXo7euytqDJmDDJcg6JdL+Wdsv0U+BMiEy9YU3KfdOmj4jE/fSBtxSOVvZHrrM4Vw3VQ4hl63tSLtLI81z3KjzBrIsXeQrqRKZc9CDwXsviaM3H5wWlYVeiO6PM/T2676On6/KnXw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR12MB5504.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66946007)(66476007)(4326008)(2616005)(7416002)(66556008)(8676002)(6506007)(186003)(5660300002)(6666004)(38100700002)(6512007)(6486002)(26005)(36756003)(86362001)(83380400001)(31696002)(2906002)(31686004)(8936002)(316002)(53546011)(508600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHJvK2h5Q01XVGxQM1IvV0NGdkxkOWNWNUVGR3Z0ZnFSTkpISUxYWXlxWGRo?=
 =?utf-8?B?NTUyUkJaU2UyWS9tdlRqTlp0M2ZOVEFYYXJSMU15R2d4RytaQWRRLzlPdWcw?=
 =?utf-8?B?YmwwMTJRRlN4aGlJS203VHE3NVZMRE9vc241UkZGUmRyRk5wYk5LS1R5R3lo?=
 =?utf-8?B?SldQN1dsWlhZTDBVQ0ZjRkNrRUQ2aFNLVk5GZ1lRZ0YweEtZeFcvVGtwZVdj?=
 =?utf-8?B?eVAxZ253RVI1QmxPU0ZQeXRWb3NiNTJNVUU3M09HRWJpdjVScTZ0bXVaMkh3?=
 =?utf-8?B?QUFOMTlOK1dCQU5Ea2RWOTB5cFVJejhjUzJpWmhTcHpVcVhhMWpubFlVK1JG?=
 =?utf-8?B?K0VWMExHNFE5eG5zU3VNZ3FyUzg3MUVZVEVKczBWaXZWcVZsK2Q2dGVaWnJn?=
 =?utf-8?B?NEE5S0xyTFczb2M2eHMzQ0lNTDE1RmN5V2hlbkd5Z3gyQTNNbW5PdG9KaVpY?=
 =?utf-8?B?MERBSFpqWjdsMWd3REpyWVNJZkg4MFVKd3RMNityRXpQc0IrSm4wMmI4dkpw?=
 =?utf-8?B?Z2VNcWI3UmhqSHdQWG0vZ1A2QmYyck5TSTBqZWZTQ0F3cVRMMjZQUnJNdWMr?=
 =?utf-8?B?U3dYekNuTEdYR1hyQkNtWFFiUHJvTmliUm1BclVlT0s4cGR1djZBR3F4Mklv?=
 =?utf-8?B?ZUZpQnJQUkJaMXRhL2hLaFlHNE1qM2pGVWo3MjhHQTVBNVhVdmhPcDV3Mloy?=
 =?utf-8?B?RG90OUR4VlQzWU5oaGl5c0JpL1RGU0ZtM2JrUGVNZVJ2ekw2b014Q1FEU3Fk?=
 =?utf-8?B?cTZIQURqZDFVS0RiVEFtYnF5czMyR3pNMkQ1UkkrRmhjSS9tWUo2aE1Cc0Rx?=
 =?utf-8?B?TmU1Nmp0eDJZOU94V1hkQXlyQUNjZFpWYUQ3NVlzWTJoOVpaOUxraGdhWDRO?=
 =?utf-8?B?TUFZVnArazRWTnIxNjVlRlVwS2pnbXZNZnVLS1BWTzdrZ0VlYWVpcHBrQXVa?=
 =?utf-8?B?T3p3SVZNQWNEU0s3Z0VQMlVDY0VvSFRzOEgwS3c2REduYzZUN3NIWlQzVUV3?=
 =?utf-8?B?OXBrV2RQL0VjNXBUcXR5R2xGV3drS0QyYU9yMENhbWNlb1MzeU1FbzREaTVO?=
 =?utf-8?B?NUtGc2ZHQjdzeDR3dWs2NENMS2xERExJL0tscVEzVHZWMGVBbEEybjRmK2E5?=
 =?utf-8?B?L3h0aU5ocWZpRS9XdjBRTjVidjZ1MFJESTE4WU1qYnNCUTdoM1hFY2MvamJX?=
 =?utf-8?B?ZUU4R2lNQXRTWS9pdGtaeHhWOXYwNHBzcHZRZ3ZLL2prc2RUY0U5ZStOek04?=
 =?utf-8?B?YlBJaWFmVy9uWFNCcG5MQk9LaHJLZTV6cFNwVUtXc05OTWkweVpvZjVneUJM?=
 =?utf-8?B?TG85czZNSkNSZTU4a1dZMlRveDZ4RnMya1NQZ29kVGtSMHN1Wklmc3gwdlBp?=
 =?utf-8?B?bWRZUmU4RmpKRVdpTEwxL1U4dWprUjYwSnVqSGxabUZ0c0F5RVkxSFBEZHRV?=
 =?utf-8?B?aTVTc3pGd3pRY3pMTkdwN3hoem5FOThSYjN2cUFBRS9YbnVHd1I4ek9pNzB0?=
 =?utf-8?B?UzNCUy84VVBvUlRuYTVOekExdWZFaUFTWWludU44K25HcXFqYmNaOUs4UmRT?=
 =?utf-8?B?ZG9VeERwdHNCTVUzWUt2bU1sdDBlQ2lTN0JPRmNwaXBwLzZyWDlYWVZKcEk1?=
 =?utf-8?B?d0VJVEkxMnBIQVdGUFRjcnM4S3lBeVBnZVJ4ekhwRWEzbkpRaTBUUUk4cXZB?=
 =?utf-8?B?L1VqZ0hYbXMrZFVpenRWWEM0c0xOUTBlRjZ5NVVGZEJSQWR6SkpJRFFISG56?=
 =?utf-8?B?WEdWRUw2QVdMWWZKTXhJT2J2NW5sVXlqY0FBeGRiWjgvcW5HQzRWMHJUUkdQ?=
 =?utf-8?B?WVpwell0Szc3ZDhTdDFsQ2FCV0VxR2pjYWJmV1RDQm5ubVZ0RmljUlRYb3ZO?=
 =?utf-8?B?cXpFcmdDb2JjTmZwaE5WeHFzcklmYmYwWW0wUXBROHBWVTZlUUVxR2hWZWt4?=
 =?utf-8?B?THZ4ZEI1Q0NrSXFiajJMK2hVQUhBMWtUSmozMUcxckR5Mk9tNGE2clg1azZs?=
 =?utf-8?B?U3R1RVRpUE5ucDUvSUpSNFQzUGdNZ2VjN1NQRHBTQmNsVVJHQlFTUjczbW9w?=
 =?utf-8?B?UUMwaUxVbnRsZjBQT1l4R0M1QVdxaHZidXdxY3RxRmFVNldjQVZBSTJ2dVZ5?=
 =?utf-8?B?dHFTbkYraUg1L0tES2k5c0FQeElnWXNQY0gzYWd3RVBZM056Y2xiamxldzFQ?=
 =?utf-8?B?UWMwZnZMVVFvdkV5enc3MHFWU1JPSHhFNWZLeTY5VkQrY2FIRHd3WlgyTExs?=
 =?utf-8?B?aUJ6QjFwVE5qZklJcUdmeFB1VkRleVNIZzFaZ21SYlI4SzRDTURKUjVSdjN2?=
 =?utf-8?B?dDdSNWRhQTVRYlkzZEFsaCtHUXRhSVVObDVzNzdacmR4cFk4Wk5wUT09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2834164-1bcd-4200-53de-08da34339762
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5504.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 16:22:21.7407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8sMD32UhUeEHhmkYnLjLZpIqcN0angYeHiwmGUQBJTUwGrtXs/4/U/dJc4rzLgrJi/QsvIhsSzM3ZH3yZHh/7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5173
X-Mailman-Approved-At: Fri, 13 May 2022 13:59:44 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/2] net: vxlan: Add
 extack support to vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 vladimir.oltean@nxp.com, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 sbrivio@redhat.com, claudiu.manoil@nxp.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 UNGLinuxDriver@microchip.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 5/12/22 02:55, Alaa Mohamed wrote:
> This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
> extack is used to propagate meaningful error msgs to the user of vxlan
> fdb netlink api
>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in V2:
>          - fix spelling vxlan_fdb_delete
>          - add missing braces
>          - edit error message
> ---
> changes in V3:
>          fix errors reported by checkpatch.pl
> ---
> changes in V4:
>          - fix errors reported by checkpatch.pl
>          - edit commit message.
> ---
> changes in V5:
> 	- edit commit message
> ---
> changes in V7:
>          fix checkpatch issue:
> 		CHECK:Alignment should match open parenthesis
> ---
>   drivers/net/vxlan/vxlan_core.c | 38 ++++++++++++++++++++++++----------
>   1 file changed, 27 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
> index c58c48de4cf4..cb955bd79cb1 100644
> --- a/drivers/net/vxlan/vxlan_core.c
> +++ b/drivers/net/vxlan/vxlan_core.c
> @@ -1129,19 +1129,25 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
>
>   static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>   			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
> +			   __be32 *vni, u32 *ifindex, u32 *nhid,
> +			   struct netlink_ext_ack *extack)
>   {
>   	struct net *net = dev_net(vxlan->dev);
>   	int err;
>
>   	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> -	    tb[NDA_PORT]))
> -		return -EINVAL;
> +	    tb[NDA_PORT])) {
> +			NL_SET_ERR_MSG(extack,
> +				       "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> +			return -EINVAL;
> +		}


Alaa, the closing brace should align with the if.

>
>   	if (tb[NDA_DST]) {
>   		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
> -		if (err)
> +		if (err) {
> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>   			return err;
> +		}
>   	} else {
>   		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
>
> @@ -1157,24 +1163,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>   	}
>
>   	if (tb[NDA_PORT]) {
> -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)) {
> +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
>   			return -EINVAL;
> +		}
>   		*port = nla_get_be16(tb[NDA_PORT]);
>   	} else {
>   		*port = vxlan->cfg.dst_port;
>   	}
>
>   	if (tb[NDA_VNI]) {
> -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)) {
> +			NL_SET_ERR_MSG(extack, "Invalid vni");
>   			return -EINVAL;
> +		}
>   		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
>   	} else {
>   		*vni = vxlan->default_dst.remote_vni;
>   	}
>
>   	if (tb[NDA_SRC_VNI]) {
> -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)) {
> +			NL_SET_ERR_MSG(extack, "Invalid src vni");
>   			return -EINVAL;
> +		}
>   		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
>   	} else {
>   		*src_vni = vxlan->default_dst.remote_vni;
> @@ -1183,12 +1195,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>   	if (tb[NDA_IFINDEX]) {
>   		struct net_device *tdev;
>
> -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)) {
> +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
>   			return -EINVAL;
> +		}
>   		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
>   		tdev = __dev_get_by_index(net, *ifindex);
> -		if (!tdev)
> +		if (!tdev) {
> +			NL_SET_ERR_MSG(extack, "Device not found");
>   			return -EADDRNOTAVAIL;
> +		}
>   	} else {
>   		*ifindex = 0;
>   	}
> @@ -1226,7 +1242,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>   		return -EINVAL;
>
>   	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> -			      &nhid);
> +			      &nhid, extack);
>   	if (err)
>   		return err;
>
> @@ -1292,7 +1308,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>   	int err;
>
>   	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
> -			      &nhid);
> +			      &nhid, extack);
>   	if (err)
>   		return err;
>
> --
> 2.36.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
