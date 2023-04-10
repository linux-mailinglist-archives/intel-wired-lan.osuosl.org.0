Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8359B6DC82B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Apr 2023 17:04:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14A2E8142C;
	Mon, 10 Apr 2023 15:04:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14A2E8142C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681139062;
	bh=i+9NI7hqG+OlrV53YQMet4zm2FUwuHUxWA+rplDT68w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y6dwYnbWoc0y08c2zWeP4V7e7O00YTdNHAYCNBiski+xCxU74QyzJwbXDHxVmw9Cp
	 G8pGG+Br+6mcHYlaWA2E+XMrAL9Hg0CYwsLHXgSygpKPg7lmVDHOghjjRaY6fntL4k
	 wESrKUg6kyNwP+lTUwp7Q6INA+XgpWyuSjulUWQlrp2CwA4IFVl2Stc6pyZ2c12Yyu
	 CCDYUNgPpG5S8zXTnXqS2fF9fy1kolayp1G2cgjQ4qZMG0T/OdzIPYjcb7Z3jiGzoH
	 m8WtWVDaeEuMzerlHooa2i8Z5MR6tPpDFLBrfmkAhatqm7jUuLOuetc6YBLjo21wVt
	 qPB5qNw0pFH3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bYe2vahL2s3a; Mon, 10 Apr 2023 15:04:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E498B81426;
	Mon, 10 Apr 2023 15:04:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E498B81426
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A2E01BF291
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 15:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4220A4044C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 15:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4220A4044C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GKTn85AXHD5l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Apr 2023 15:04:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F088B400D3
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2106.outbound.protection.outlook.com [40.107.94.106])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F088B400D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Apr 2023 15:04:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/XQK7ETXfCqMpM8Z+FnrCIfHLWdKFnMfrXefP7Jg+7eSnxufU5I3dSZ4sPAlFww+l1Llxu8CVmuL9i24KXaAf6PAMc8X4LDDKPYWVy0LvE1mI9XwpVwqvMtrghkQh41jmP0qcxeBR2l63kbT1Jl7Qe4nlglCnPD/tkNAjc4xGr/mo7xsmEIZWxvLxjUKmM+L3DNOaRVtA+jzkXMjG1ig+rQT8R3h8dkYwZQRfhuevSqeJ3x9OM1KGPhdBF00QM+5FkrVX8ppo4z1RDGVMg3yodinIIAATJ5yJd0/8/KvyxcI3dIfw6bTK4bfIY1TjC2rQBMUd0F8inMCJG2L/sx4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAGIl7nvNPVcGySoLYXf4St2BcnSUJWpQjhtmJqkrQM=;
 b=RQ3I6Hw2Dk/DV3xgHW2Em+AsT65UQgv5MdA0Y+H+fDEmZbJHi/R4pqkDTMfc8hLBuzsBmgv/1NrPHRL0vVJJ7lkpC6MaaecGng0okRKBD1uX5wWdJwdsg1vTMSN76prG8n6VdUPyIrmzAh6Gj87y0JHZPlp6HnlRmiWVWu4IWySkCmdhQ/LWy6zTp+B+wZP6FxmtcXAIllOhvzwXAxRO03xpFieKxDmhHOEZHTcPR88+fy5jHZIz9xeGA4vj5DRXjVtVAS/ZNNnGQNhZA2PaDjBDxx70Xba3VtA1DNIO1Z8wu7gBGaswz5lrjtn3f1wot8OrsQLXugByf24yxd54Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BL0PR13MB4465.namprd13.prod.outlook.com (2603:10b6:208:1ca::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 15:04:11 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6277.038; Mon, 10 Apr 2023
 15:04:11 +0000
Date: Mon, 10 Apr 2023 17:04:02 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <ZDQlYqwmyG4Y73Vb@corigine.com>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
 <168098189148.96582.2939096178283411428.stgit@firesoul>
Content-Disposition: inline
In-Reply-To: <168098189148.96582.2939096178283411428.stgit@firesoul>
X-ClientProxiedBy: AS4P191CA0005.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d5::15) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BL0PR13MB4465:EE_
X-MS-Office365-Filtering-Correlation-Id: de47092a-93f3-40f4-d405-08db39d4d734
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nVtNoev8Bo4d0GkFT5DRw4jjkmYh8VWMGwbL8dGfB3ipaZt6EGRBc01nIjP+g5b4S8hGeXCftDESBz16uHNopWx6qIlOT7p0AxVKTKXrjl8wQv8+cZySYF5d0izuYV3+gVLmS/svnOZLJ75sDVkzlj8MMmL1ZfF+0n2yoEhrjnapqz/Xwsxl5AvbgaoDLGwY6rsJwpL076lBExj78lQhBayDnXsnzdzulq2N/x3b+k3y7ov9VgnH9bGh+pM7oAUuJ7yKYFYw+n8SAHb5djhcXinbmEVAxfwEVG16KSrJlfl7Ed2aENT5efZQUadTAjS2TJRTPFFj1yPzFITv2X5zuKxlg+D2FxaGpZE+VKcUG6IgaxHygT3EIYphcGD6QBYBsdMRLKv/cGPNs/BJBPvUS4d0IGDbSsl3E6pvCqbPlZgPOUwIUiRkwiJsy5BuATGWeygB2cpOIzqKXR5KMMiN0vSA1muJJm/xK6qD+WK/FlSpyGUuJIGPz4QfmP6nI3Y8iTk0rt4pteWRyIARaVSOK91wBxBG7hajxgYTJ2tjEPhjS5Q/jaoNBUvJkt7yebcN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(39830400003)(136003)(366004)(346002)(376002)(451199021)(478600001)(316002)(54906003)(6512007)(6506007)(186003)(6486002)(6666004)(2906002)(44832011)(66556008)(4326008)(66946007)(41300700001)(8936002)(6916009)(7416002)(5660300002)(66476007)(8676002)(38100700002)(86362001)(66574015)(36756003)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OW90ZFlwa0pJNHN3NEtPOGU4dWRIY0tsV2RVMmZpcHpwMXYzYUZya1BacHdR?=
 =?utf-8?B?YU5zVHBYcXE2NnZwb01OTC9qdEpUNngzeXVRRzErc3dtd0U5YS9qdlFkUjV2?=
 =?utf-8?B?M2pOa3hueFpzbnJPeWxTR1Bod2drYndxWExpaDRQYU0vVkM4VzlhaVBSdmhZ?=
 =?utf-8?B?T1JjUDFjaWJBMlJhem00YnZhOU1lWG9tNmJvWUZVZHRhdkxJNzcwRjg2bFRk?=
 =?utf-8?B?NDBKb2xZZVVKc3lVaUxhaXpmdGlmZGRneUFzK0w3cUJHYWVpQ05TZ1MzSnVN?=
 =?utf-8?B?R3l3TTdHQzByQ0dZVmFnRVBrc1VLR3NXemU0ZHZWL1p4NjkyczhXbXpKVE91?=
 =?utf-8?B?Rk1LTEtHWHhLQkdsNEZsK1ZyRFdKZ0I1aUtSMHhQM2w0MHU1SmJ2ajNyTGMz?=
 =?utf-8?B?Qk5jWGtXTHNmQUx5RklCclVsNGV4eitTMWR3SkpQMFZqUlU0SWhWY24rd21G?=
 =?utf-8?B?MFpzRjB5U0dBZ3hKRHRDQ3BwVEYxcHFSRGdWSG5iQm9PbnpJSFJBaHEwV3F3?=
 =?utf-8?B?ZU9sVUxJSjAxSnA5bnE5aEJQUk43NzRwQkFMV2wzZWRzUy9udmR2UzBYSHBr?=
 =?utf-8?B?T0tDUzNPazBLaXoyYy9scm1iV1cxR29FYm81SzJ6dU5uRi9rc3JqT2NGdm5q?=
 =?utf-8?B?MWxyVDM4M2d4Tzkrc2tLNDVFZzFHQ055NVpuSHRVeWV5R2NZVFJBLytDTGY4?=
 =?utf-8?B?NmRFeGtvNHFaS2ptK2FOOVJlRDV0ejJVMFZrbXI5NEJvd1lqTUNoQ1FoVnhZ?=
 =?utf-8?B?eWdIN200VGRERG1rUmR2eUh4MEhtdGNkNE0rYWsrazRoMHVMQzF3U3NRTDRI?=
 =?utf-8?B?V29XL1o1MjFtSEdSdXJHck54NDhodU4zR3UvSFh4RHZBMVJDRGhtczB5MmdD?=
 =?utf-8?B?OGFpU05xZUtQRjNIYWF4V2ZjMzFGb3llUVZIbzkweE53MHNHNjdIWkdqRUk5?=
 =?utf-8?B?SFIwS29PMkpxcHF5L0doUlVsd3NZZ0ZxK210MWFyK3Q1ZWFzOEkzWXBVajBl?=
 =?utf-8?B?OFIvMjdQWlhuMzVFMzgybVFDMElXTHRDUFphRzZUa2UxZG9QT2w2K3hKTjlH?=
 =?utf-8?B?YWhmTzUyNmpQRCtmcFpLUHZBK0NwNk9GTWhLcFJrbTBiTkR1V2lXWkI3VHpl?=
 =?utf-8?B?cTBXMlpoeExLaHg5NFZYSjV0K3ZXa09TZ3QxNmQwcGZ3VGVWOEZ4Q09YMFU4?=
 =?utf-8?B?V2xYS010ZFhQT1ZhTEU4eVpxUlRJRjNzd2ErTkc4NHFobk9OUWpkVXBRNG5R?=
 =?utf-8?B?WjN2Q2lCSmltL2xEbnJSVnNzaGtzQys3RmpWclJwV0VMSFNaemFCQlBLdVhX?=
 =?utf-8?B?ZVBWVkZxSDZDTzRWRDdiRS8rOHZBQ0sxSk5hL2s4eHk2c0NhY28vQklLQXRR?=
 =?utf-8?B?a01LTDVhZTJNRW5KUkxINi94c1FwaEhQbmpVN3kvODl5czVNdnIxUnhyWWVQ?=
 =?utf-8?B?azNqTHFWY2FPYVNQbjU2R1F0dENsY0NYVXlzYW9RajcrMFRyLzgvWnU0WDZu?=
 =?utf-8?B?cGxLU2FTcFRDU1o3YUNYYU9WQm4zL3dTclNDazNET0RSNFR2d3pwMTc4Ujl4?=
 =?utf-8?B?Z2RLNU5NY0ZEM1RPaTVOWWR6R09Rek9SdlV0U1VpQUxwYkhOT3BJb3ZOcEtt?=
 =?utf-8?B?bGd6cWhmMkpyVUtMMHdCSFk0L3RUajN5ODRIUVlhRWUvUVUrallrS3BNZnJh?=
 =?utf-8?B?OUthc05DM0QrK3JscVV6M2lzc0tNeXY0U2xCSWpXNi9DS1cvVENjRDFmWU9H?=
 =?utf-8?B?NHFJdlNBOUN4aXFkNFY0S0dTSm9oeENYdmVic3IzVDUvMVNrMjN1VnhPSWda?=
 =?utf-8?B?UG1CZHU2dFRsM3RGNHRUU0FOanhzdHlaeUY5OTRUQWkzOFBBMUlFWTlhNkg3?=
 =?utf-8?B?SGh3WUZkSWZOUjJoSHNVZGVTVHBWT3RGQXc2ZENMVTNoNGRBLzNMbFhCK3FL?=
 =?utf-8?B?ZUY4eFZkdER3K0RzcUR4Y2xGKzhNcnF3bnVqNGtveTA5L2RKZGM2RWxtNTMy?=
 =?utf-8?B?b1g4QmhFaUhrc1JJa3dvdmpjeXZoaGJCSzM1S2FKVno0V0xEZU5xdjFpUExJ?=
 =?utf-8?B?ajdiOC9ObmVCZXVLVmZXVWcrVWc4dHJWTnIvWkk5TUZJd3RtU3l2Mjhoc3g0?=
 =?utf-8?B?ZG1VMkR1K3p1VGZnSk15d0t0YXVUUzJpL3pDckt6dmVJdG9QZjFxdk52cFJp?=
 =?utf-8?B?b3R2MXkzYy9FRXRVMlNnaWkvRm9kVFhmdjY3T2hXNXl1YlFmVUhzRGNqVDJs?=
 =?utf-8?B?QW1XNUwvbzlHVVdwMXZjVkdrNDhRPT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de47092a-93f3-40f4-d405-08db39d4d734
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 15:04:11.1360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +PmGUtmvQ9wCtYQJ0ahe0YRLC1nli70LY+IASYpY3ZMa0/VwJ0VXC6Fh41UYNHYo6MZIiWwEgF9M2eq3Au1Bdatt5upgManNeyyKZpKmV9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR13MB4465
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAGIl7nvNPVcGySoLYXf4St2BcnSUJWpQjhtmJqkrQM=;
 b=Aw63wT2keQMeMGi1Rv9fR+5W6BkExhJt+s1tuK5sexTtjiM0HT4qEt4byOtpjz49P1ydIbjnJRoIFPE2AlgEE3BU+WeGabinvdRweesxMrDWtoxDHrHW478Jk02Hyd8E9w8w0utpC3e1ff2S+Jei8TC3tvdQ/MiptHpWff42+zA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Aw63wT2k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf V7 3/7] xdp: rss hash types
 representation
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, boon.leong.ong@intel.com, hawk@kernel.org,
 xdp-hints@xdp-project.net, daniel@iogearbox.net, linux-rdma@vger.kernel.org,
 john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org,
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBcHIgMDgsIDIwMjMgYXQgMDk6MjQ6NTFQTSArMDIwMCwgSmVzcGVyIERhbmdhYXJk
IEJyb3VlciB3cm90ZToKPiBUaGUgUlNTIGhhc2ggdHlwZSBzcGVjaWZpZXMgd2hhdCBwb3J0aW9u
IG9mIHBhY2tldCBkYXRhIE5JQyBoYXJkd2FyZSB1c2VkCj4gd2hlbiBjYWxjdWxhdGluZyBSU1Mg
aGFzaCB2YWx1ZS4gVGhlIFJTUyB0eXBlcyBhcmUgZm9jdXNlZCBvbiBJbnRlcm5ldAo+IHRyYWZm
aWMgcHJvdG9jb2xzIGF0IE9TSSBsYXllcnMgTDMgYW5kIEw0LiBMMiAoZS5nLiBBUlApIG9mdGVu
IGdldCBoYXNoCj4gdmFsdWUgemVybyBhbmQgbm8gUlNTIHR5cGUuIEZvciBMMyBmb2N1c2VkIG9u
IElQdjQgdnMuIElQdjYsIGFuZCBMNAo+IHByaW1hcmlseSBUQ1AgdnMgVURQLCBidXQgc29tZSBo
YXJkd2FyZSBzdXBwb3J0cyBTQ1RQLgo+IAo+IEhhcmR3YXJlIFJTUyB0eXBlcyBhcmUgZGlmZmVy
ZW50bHkgZW5jb2RlZCBmb3IgZWFjaCBoYXJkd2FyZSBOSUMuIE1vc3QKPiBoYXJkd2FyZSByZXBy
ZXNlbnQgUlNTIGhhc2ggdHlwZSBhcyBhIG51bWJlci4gRGV0ZXJtaW5pbmcgTDMgdnMgTDQgb2Z0
ZW4KPiByZXF1aXJlcyBhIG1hcHBpbmcgdGFibGUgYXMgdGhlcmUgb2Z0ZW4gaXNuJ3QgYSBwYXR0
ZXJuIG9yIHNvcnRpbmcKPiBhY2NvcmRpbmcgdG8gSVNPIGxheWVyLgo+IAo+IFRoZSBwYXRjaCBp
bnRyb2R1Y2UgYSBYRFAgUlNTIGhhc2ggdHlwZSAoZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSkgdGhh
dAo+IGNvbnRhaW4gY29tYmluYXRpb25zIHRvIGJlIHVzZWQgYnkgZHJpdmVycywgd2hpY2ggZ2V0
cyBidWlsZCB1cCB3aXRoIGJpdHMKPiBmcm9tIGVudW0geGRwX3Jzc190eXBlX2JpdHMuIEJvdGgg
ZW51bSB4ZHBfcnNzX3R5cGVfYml0cyBhbmQKPiB4ZHBfcnNzX2hhc2hfdHlwZSBnZXQgZXhwb3Nl
ZCB0byBCUEYgdmlhIEJURiwgYW5kIGl0IGlzIHVwIHRvIHRoZQo+IEJQRi1wcm9ncmFtbWVyIHRv
IG1hdGNoIHVzaW5nIHRoZXNlIGRlZmluZXMuCj4gCj4gVGhpcyBwcm9wb3NhbCBjaGFuZ2UgdGhl
IGtmdW5jIEFQSSBicGZfeGRwX21ldGFkYXRhX3J4X2hhc2goKSBhZGRpbmcKPiBhIHBvaW50ZXIg
dmFsdWUgYXJndW1lbnQgZm9yIHByb3ZpZGUgdGhlIFJTUyBoYXNoIHR5cGUuCj4gCj4gQ2hhbmdl
IGZ1bmN0aW9uIHNpZ25hdHVyZSBmb3IgYWxsIHhtb19yeF9oYXNoIGNhbGxzIGluIGRyaXZlcnMg
dG8gbWFrZSBpdAo+IGNvbXBpbGUuIFRoZSBSU1MgdHlwZSBpbXBsZW1lbnRhdGlvbnMgZm9yIGVh
Y2ggZHJpdmVyIGNvbWVzIGFzIHNlcGFyYXRlCj4gcGF0Y2hlcy4KPiAKPiBGaXhlczogM2Q3NmE0
ZDNkNGU1ICgiYnBmOiBYRFAgbWV0YWRhdGEgUlgga2Z1bmNzIikKPiBTaWduZWQtb2ZmLWJ5OiBK
ZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIDxicm91ZXJAcmVkaGF0LmNvbT4KPiBBY2tlZC1ieTogVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gQWNrZWQtYnk6IFN0YW5p
c2xhdiBGb21pY2hldiA8c2RmQGdvb2dsZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L21lbGxhbm94L21seDQvZW5fcnguYyAgICAgICB8ICAgIDMgKwo+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvZW4veGRwLmMgfCAgICAzICsKPiAgZHJpdmVycy9u
ZXQvdmV0aC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgMyArCj4gIGluY2x1
ZGUvbGludXgvbmV0ZGV2aWNlLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAgIDMgKwo+ICBp
bmNsdWRlL25ldC94ZHAuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQ1ICsr
KysrKysrKysrKysrKysrKysrKysKPiAgbmV0L2NvcmUveGRwLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAxMCArKysrLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDYyIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxh
bm94L21seDQvZW5fcnguYwo+IGluZGV4IDRiNWU0NTliNmQ0OS4uNzNkMTBhYTRjNTAzIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZW5fcnguYwo+IEBAIC02ODEs
NyArNjgxLDggQEAgaW50IG1seDRfZW5feGRwX3J4X3RpbWVzdGFtcChjb25zdCBzdHJ1Y3QgeGRw
X21kICpjdHgsIHU2NCAqdGltZXN0YW1wKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gLWludCBt
bHg0X2VuX3hkcF9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgdTMyICpoYXNoKQo+
ICtpbnQgbWx4NF9lbl94ZHBfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsIHUzMiAq
aGFzaCwKPiArCQkJZW51bSB4ZHBfcnNzX2hhc2hfdHlwZSAqcnNzX3R5cGUpCj4gIHsKPiAgCXN0
cnVjdCBtbHg0X2VuX3hkcF9idWZmICpfY3R4ID0gKHZvaWQgKiljdHg7Cj4gIAoKSGkgSmVzcGVy
LAoKSSB0aGluayB5b3UgYWxzbyBuZWVkIHRvIHVwZGF0ZSB0aGUgZGVjbGFyYXRpb24gb2YgbWx4
NF9lbl94ZHBfcnhfaGFzaCgpCmluIG1seDRfZW4uaC4KCi4uLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
