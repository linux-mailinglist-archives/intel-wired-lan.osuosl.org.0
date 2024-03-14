Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 137BF87C40E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 21:11:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7DFC48213A;
	Thu, 14 Mar 2024 20:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKSL-xqKuHVG; Thu, 14 Mar 2024 20:11:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FD7C82139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710447087;
	bh=8GfkSxjQtCspKgywt4dLTD4cE3UbCh5ybjoGOUC88rw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=APh4TPzXOppsnibSjcS50RQWsY+t56+0J6Ak36G2VhaKQ133cdcb3OZEhdKklJURN
	 cuNPk0pgotdU0RtTQN46buzfFQNaru762E7hL73YmPEmitBUDH/Em8oYAaCzduPhJY
	 wrqiJJuAehtkLkQln5uBACNXmzer8AS+PQv+7kNzBLC/J8aE8PEBwKJ9FYG493psD6
	 OOdYS7VRLcEMY9OFpcrK7mApS8mJI4mBfwy2BSGYFm63EBeD8Z7mzTDVcQkNAI86lr
	 kI9y32vxaf+koS0yowyqtHJVlcs5gjPSIeVYviBI3GI+CSAYRoBe4qWDqt5jYr4Yr5
	 qcLuTgLEjzxng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FD7C82139;
	Thu, 14 Mar 2024 20:11:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDD531BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 17:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6C95402C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 17:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TBFlK_g5TIxZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 17:11:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.249.74;
 helo=eur02-db5-obe.outbound.protection.outlook.com;
 envelope-from=e.velu@criteo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6ABC140129
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6ABC140129
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2074.outbound.protection.outlook.com [40.107.249.74])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6ABC140129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 17:10:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eOu4A4NU/IDz3c/PZn8EAxMnx8V91QOoVT3JtSnWuX8PS4+LHx5J/M3zXVZznA1STmrThovqNjVYMpB87stJ3BQs6HBxR/Q71+mMqqMsjD0t70V8IX3/HcXBSB6HkWUbmBFVqJtIcP3HiY8JqfAXfl1D6gS4iDhbj0JkVkqVmhJmeUduVk5fafRoMfT1XpI6t/GypD4D53dIPEEULN5zsDfxbnu4LFRmTo1rgMUo5n38hRcNrUjnSqWAxM+vCQkYFK+CeHkaVHZOM0KVkRBGHC7+MJ707+etLwOc1Fdh47lqO7I5yHiHjxkjRgSGSR+bn97WnAU6Gr6wlgToCPNtnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8GfkSxjQtCspKgywt4dLTD4cE3UbCh5ybjoGOUC88rw=;
 b=VY/Rs+pru7M+7MQLxbZYDGHc7wL5xPhW2c4CAIjIhKoHoo/UVa9AxH9YbrCbZoWL3poOjwgHoxWkCj9eSuLMZiI9pxBq6xhYF89nPi7Wx6WkYk2PHXNZ2dTGS4JWS5AZLtIo+sbw4Q6zQi6cAb+sZShR7aCWwWiaw5F98tKEkvxUkPlDs0iQB3TBmKi2+OT2rk7bj/K1A+NNEiWPb8YlPvWe9Xc52XIBE3qL6EomCYYUX0TgAoNmHX3bRq9AuQqWr3lKavcwyAJfNjLb692RK2X6tAf9iUkbC5qePPF0ndOSbE6mxUfHuVq5UXnk1tyipoEbsKCfVUiPqPzrPSWGxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=criteo.com; dmarc=pass action=none header.from=criteo.com;
 dkim=pass header.d=criteo.com; arc=none
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com (2603:10a6:102:20c::11)
 by PA1PR04MB10177.eurprd04.prod.outlook.com (2603:10a6:102:465::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 17:10:55 +0000
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2]) by PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2%4]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 17:10:55 +0000
Message-ID: <c0ccaef6-44eb-4851-b336-cdb06647e1d2@criteo.com>
Date: Thu, 14 Mar 2024 18:10:52 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brett Creeley <bcreeley@amd.com>, Erwan Velu <erwanaliasr1@gmail.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <4e203331-62f7-44e7-acd9-f684c30662de@amd.com>
From: Erwan Velu <e.velu@criteo.com>
In-Reply-To: <4e203331-62f7-44e7-acd9-f684c30662de@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0490.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:3dc::9) To PAXPR04MB8989.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8989:EE_|PA1PR04MB10177:EE_
X-MS-Office365-Filtering-Correlation-Id: 48bd102b-5909-41c5-00a1-08dc4449b586
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IljjuwnepYzHvmHCs/2HLGyiLqeR9UXOhBywPVLUtanMcAYqETGHzgN228QzMW0WDcP1d5M5HeBF5aZVTl8C+eod/jczXgFx1ejDqo2A/ZCMgEkw/uYyLCLFiGKIoyO+Acf+RE+4BAsGW0U7woJTvunM7UKZTyTlg6Nxe4rAP4mLWY7arLFR4aPfoolVIi5S5zZuV4jqL5/PZsMWUhSRSOeoEkr+YhqRsaJ0AD/l+ilv6gQT/LHgjlIeRiMDw9uqPPSIHXHrJ09mDPEFNlzW3XCxG5BJOxW05k7XccSpQyoEmt+exTo33y0lMoIVCiE8JQYkBujhiST/GzkWIwVB8tZfvJfXqAd409tPErO4jjSNd8ZZKTRKtbWXPngOVb/qCEVImiMtW1IWvvMeFjM+PmUmMULjPouWtw1Hf1qtYGvZwJSVIiVqwsDXDlnDRdR5hTYXvB+6A+SyCmJXsqBve115IESea/VTaZU4IqegBCfINVb8f9QVEZ7VGnHJbqfAaB4eGh/+HDf5yoDyGKvnQ6XnFTwu40mu+lb5ox77KEpi8LuLv3X9iXPc+Z97S/Q0il1/6x3nj04JR3FjEoVnIcW1djRlBpXRaWLWalRFSRR5g3/OamzktWlahnIaEzYBWmpzUo8FBpScbyrXHnyn3pXXQgL0PDl7dauaOCSZJD8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAXPR04MB8989.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTN6dzg5cmpVZHF3eWM2VTA2UllyQ01CNStMcHZYaDFkaXhZZFFhSzR1Mlkz?=
 =?utf-8?B?RERMTWlnTHJOYmM2V0phV1RqQVVSQWlrcjVJQklFTCs4eFduTWFIdHhFYWJP?=
 =?utf-8?B?UzVtMHdCNDZZV0VZNFl4bHBjSmdPdENlMUNrdGVRU1pZRWU3TVA3N2RCbU1l?=
 =?utf-8?B?eHdvZ3pZRVlQakduQkhqQTZEUnVjek9FYWZraVZOL2ttczVTMGMzSkJNMERu?=
 =?utf-8?B?eklydnZhYWI4UXBVZS9XWUp6WUhuRDJYTURibytreHVIem5SaE1FNmZWN2sw?=
 =?utf-8?B?cTVUc1hpckttZHV1VnJVRFMwTXFjbEdvQmlWV0tJT3ZsNURvQTJXeU5iRmdU?=
 =?utf-8?B?VGZCVWRnMyt6ZnlSSjFqdG5BUU9TOW5Qa09rQno4OE5xQ3dVNW9ZY1ZHVkta?=
 =?utf-8?B?akVIa1V6U0RMR0pwOURoK1lOZkNOTVZSaFEySTh1Y1Y2VGx0Z0MxU1JnYlQ1?=
 =?utf-8?B?akR3cVYzakMyYUkwV0NQTS81RWdhbU5sczRRTWp2S0p3ZWZ6cTZRczBWU3M2?=
 =?utf-8?B?eGZEazQyUFNlL2V3SGJKd1plQ1Avcjd0OHBtemhxUVplcVhBS2srUWlLZ2di?=
 =?utf-8?B?bUNib1QwL3M2UTl0TjNEdXl3OUtEMmFDQmEzY0I4OE5JTDFCV0RlQWNoSHF0?=
 =?utf-8?B?YStCTkhFR0lLMHdta2NTQThrVTN1czBzdWFjbjd3bm9sL04vMTlwaGdyY0E4?=
 =?utf-8?B?aGJVa3kyR0hXemhXcTdBaFhIQnVXRDdTVi9UazE1SklyaGh4cWhxT3ZRV1hP?=
 =?utf-8?B?czZueVlBWXBjbVY4R1hhTHhiS1hlOUgzc2xrc2tIVkMzQlBPbEZIdTNBNmZZ?=
 =?utf-8?B?NVhyWXJXUmVOaEJkMURlalJwVTBOdzcyQVlHMWdIeSs0ck5hay9yRW5FTjZH?=
 =?utf-8?B?Q0FvUDArVkZXWmlLSW5WODVlWWt0amx1Wjkvek9hRFFvUnNpU1FodmlQU0RG?=
 =?utf-8?B?RVNqaERqYUtGdk10V2ZwWlEyU2xNR2RJM1VYRVpuNkxReGJCWUx0WXZ2cEVE?=
 =?utf-8?B?V013QWtnZHNWeThMbHBzdlB1Tm9SR09udGx4WjF1Z0ZRLzBNY0IrVVhSaXRj?=
 =?utf-8?B?MnJERytrek9OMnV1MWJBSjdkb2NzZWtGK2lETC9OTnJxYVZ2bDB4amNpaHpV?=
 =?utf-8?B?N1dUNjdXWEVnR2hMajEyQi9Ya0tJZG11SjRsWWE2NFo1SHFQK3pTeW95eDAx?=
 =?utf-8?B?SGhua3pySE10TDdabU5jd2tSQUtaNndMZXVXM05VMFNTV0RqaU5wNzkrblhJ?=
 =?utf-8?B?SkxqM2VYbDBhSXEzNUNVWVl3cGhITDNoTE5JT2UxbTJtckpnOStpdU12YlNs?=
 =?utf-8?B?NTFaODR1QnY1U09FeDA1bkp5WTdPbndKZHBlUVVocVR5b3JUVk50V3BXRmlq?=
 =?utf-8?B?SkdJQnIwV08vREdDTzdTNHBLMkFaVWNtVFdZb3hCVVJRcTVaNjRJNjZFaHNa?=
 =?utf-8?B?Y1pXOVpjMGtUY2paRFNaUEJEc3pqSWdxaUEySzd0N2NvckFBWGZIUCtNVUFa?=
 =?utf-8?B?VDdBTUJ6SmRVVGtpTnh5dUJxeWFhM09PcEhwdGhXOG1XYnFWaDBjbHo2cXRW?=
 =?utf-8?B?Z0xSaGx3OWxvYWhiVXdXMjdlODh4QVc4UkVCZTY0MnZxa1RUTStpOW1oT3Bk?=
 =?utf-8?B?b1JRSmlkUTVOQW1oNmx0S0MxWHBMZ1VRbkpVU1h6a2hRWkJNQWNRbGFiN1ln?=
 =?utf-8?B?SmRwcm5wTGh6NWJWMEMzcCtERGV6UW83d3BHSXoxMjN4bUc0Y0VpS0VZam5F?=
 =?utf-8?B?MDFkNjlRd091R1FmeDRsRXFGVUFlZERVYjVpR015aHA5NlhmbE1UTTdmK1k4?=
 =?utf-8?B?bWlOblRzc0g2N2hGaEpMalpFMWpCWjJxbUNHMDB2UWYzeHlXbzdwcERLTHdw?=
 =?utf-8?B?NUxYR21vNlQ5ZStCblNRUGFHeStYZnBFVjc1bTM1L0hZaHRmVm5na2ZmNkR4?=
 =?utf-8?B?dllVRlBWUHhjVE5wdGVHMSszSG5zNUU3ODllaXRJc0lUTjczakF6NjBpK0tm?=
 =?utf-8?B?azNTTTVEVlRyazFPYnAwc1hRb1VkVUk0TXRzcGkxZC9FNC9zYUFBVjBMendz?=
 =?utf-8?B?aW1mN3hEQVIrQkZyU2FhclRVRmpqNXc1NUtLcWVaZ05iSWF5RjYrQjRpclNK?=
 =?utf-8?B?NzlFN0dsSXFKRC9EL2JGeHE5ZzMzYWgzOXpIWmVTODJkekdlYk40UnpQUmVO?=
 =?utf-8?Q?sQeEcSKr3qHrkU4xSbKVt2Fq19uDlTMVYGyBlPwsugPf?=
X-OriginatorOrg: criteo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48bd102b-5909-41c5-00a1-08dc4449b586
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8989.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 17:10:54.9657 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2a35d8fd-574d-48e3-927c-8c398e225a01
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OehxWiFxaBNFccW1Ag22wVGbM9C+twf9Ytj7ITxQ5AbPek++9o3kTaaa1PN2He26cr75DYhDpjI6OyfpvevzDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10177
X-Mailman-Approved-At: Thu, 14 Mar 2024 20:11:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=criteo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8GfkSxjQtCspKgywt4dLTD4cE3UbCh5ybjoGOUC88rw=;
 b=akUxFeHJtav2EIeTK7l3cbxnlWQOzLwGwHu1+8r4Vrtl7CfaTlU115EIcpzbN7iwANFZB+Q22bNBoG9TKo2Ngh0TgW4FOBAhWXdw3TedcMsm1Tx8a1ZdBE9Myt9I/6oqTAZ3ZDghLbL8Ni+75nu5EVxvRJd9/x7nwPDSlpw7pCFnee3xRdpIyIrmDSTyxTkWXvDhBArK/EM8YS3/mdpPGaI3ALvX4YNJ68aCEdDuBdsl5SfyqeeSjdZwUI8ekAWdm2gVAYyEZhE7SGQ2yuiLda1NeQZCvW8WGvr2AghigETZ3cMWG95qfg5fZ3Gd4HZMGGAiC6rVoGI3h+IjrtJ2iw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=criteo.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=criteo.com header.i=@criteo.com header.a=rsa-sha256
 header.s=selector2 header.b=akUxFeHJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=criteo.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Le 14/03/2024 à 17:10, Brett Creeley a écrit :
[...]
> If this is how the max_mtu is determined, does it make sense to set this
> before registering the netdev, i.e. netdev->max_mtu in 
> i40e_config_netdev()? 


The absolute max is properly set but I think that's only true if we 
ensure the value of the MFS.

So if with another patch to set the MFS to the right value when asking a 
bigger MTU, having this value makes sense this is the absolute max for 
this device.


Erwan,

