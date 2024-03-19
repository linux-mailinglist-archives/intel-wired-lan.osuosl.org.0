Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA8687FEE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 14:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D52060747;
	Tue, 19 Mar 2024 13:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOYv7UZcH5Mb; Tue, 19 Mar 2024 13:33:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4345C60A8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710855237;
	bh=EJZwKwx5Qgr94CJ72QMcxqIEx2fDsV3FHNLUiT5jD7s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kg6kqi7vugb1HCHB3XL5rRZU4f9nSPqpbkrurvWcYxejB/6ou8X18eMff41PUhfo6
	 7wlA7+ykYOoK6Mql0oWcLedCILPix51VyV+kXHoJcRYnfaeOMfHU7fLstg07vx4O1C
	 ClinVrYut6ghL4c1iMkA0kQ6YT7JFlbaU7IKylufPmBOCUL+j3DM+cofxiMUVpWpuK
	 tm3oVq0ToZzvLu15w43m622UmU+Z3jZo1OSPLoiynTDMMqdVPRonZnc+gv2d8GhU6l
	 f2fMwkWuMwYna64Gez0zeBxByUNgxSurcMYbHD7bOlkO18/gbPVIbUWR/lOQGbmD3b
	 CZNArzGZrJGtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4345C60A8A;
	Tue, 19 Mar 2024 13:33:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F56F1BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58C6740BC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yX1zCyRUsrRd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 13:33:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.14.139;
 helo=eur01-ve1-obe.outbound.protection.outlook.com;
 envelope-from=e.velu@criteo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0CB6B40BC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CB6B40BC5
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01on2139.outbound.protection.outlook.com [40.107.14.139])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CB6B40BC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:33:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iB+YCV1BUI9iTevbms5qWuOgQh3krukIgozYTrMwLbp8NKTz+cnVHv90AIlmn26+qddPpZUQcEI9Ul3OxrJKsPmcfqoP/2u3NycNRHbRiMMquzdk3HlSolkCTh4r7CrUMBEITFqrNWk4tJcye478nLBokzmLOK/tKJJITcwWZuugaHJOKyOl2yvxTelkdhq9qY1IB0TpeI2NVOY+u39TUZJ2I0MFc8nmxQCAItM89jN3cFi/w1AdpUeRyTWJP3piKiw+FLpgmtjNKCU7hzorIszFA8Z3tFraVPqAZwRU/UAJhn+hNqF5Q9JdUUuS+2MyWgUFfjqb2mFo/iD5PnHLxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EJZwKwx5Qgr94CJ72QMcxqIEx2fDsV3FHNLUiT5jD7s=;
 b=CK9n1WxRkd+XqtfTjGAXMqa4MeVdkKl5z4xpjxiF3lH1A02MBOp8WSC4Z3iAte6o3j2j5Ker2fkojsS7+uo70uAbvSDDidBVI0biusEB2tl8RKToXtLKe6aZEIdlYcIV2ROj/beaTDjAHA3oDmwjeEWzmtubh2gh0zZjBe6v1v9d1yZIkX4fpq+vBDI8lykHPRILe/kke9vmcUG4vbOLkxWBk2ebXYmgmk2fOAEXXZl74tGOtD8OkzVa2QAuem7f70kNzSYyQ40kMAQBQQM+JryI4L5IIGu4P53VUh57p4P60rXP40QYUwXecamv04UGAl3FB0SpBBFwnNaw6VE+sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=criteo.com; dmarc=pass action=none header.from=criteo.com;
 dkim=pass header.d=criteo.com; arc=none
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com (2603:10a6:102:20c::11)
 by PR3PR04MB7244.eurprd04.prod.outlook.com (2603:10a6:102:8e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 13:33:50 +0000
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2]) by PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2%4]) with mapi id 15.20.7386.023; Tue, 19 Mar 2024
 13:33:50 +0000
Message-ID: <4ed9a005-6f16-4fb6-b9a8-f753ad78eac6@criteo.com>
Date: Tue, 19 Mar 2024 14:33:49 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <20240318174503.GE1623@kernel.org>
 <d33b98de-dfc0-445e-bdd7-0ae76d050ed4@criteo.com>
 <20240319122024.GJ185808@kernel.org>
From: Erwan Velu <e.velu@criteo.com>
In-Reply-To: <20240319122024.GJ185808@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PR0P264CA0197.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1f::17) To PAXPR04MB8989.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8989:EE_|PR3PR04MB7244:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cImAhg8TVeFZYquqYpxmgNwXCFSa2vcWWu+nthxXi5NX7VsY3wIAVXlkUNo0/mVSfak1JE8Vz/Oht2R7KaJSrmmyg8w4VIvc/AvZ9HVyl/SYVE2zNHzLp4ZPnpVKB4ZuK7EnLj5MUvKm2h0UOzCpaFfPGGpewUlzlXneLZkVb7lolOzC2+4iOwSaOAhXmCtkW0kz4X0/CC38k0j/66FZIB33Guc8cARB/Z9SetsZmDkpFAJ17/7laGHQ4qJcW7BKBPhrr/biOysqTrbaEFwhgRMpIAEmtcoAYtB9jsyxNSlH/SmTecquxitY1IKRkz2oNv6RGXpmGwuNecSkEj77Ff0DFAvHPwvVO8OSnKAxbEXpLPHimwN0Dtop24oA7OQpdYtCUqxvML5PdR2/OFumNEoWPkdSsWQs8eMxXMm0cNSKMyvVee5RlBMX1OmEcXPKwqHTLimYIQu/1/jeDvi5jykQNTqaoJekVRBOvMtFfw6KJG/T3DyHmycc5u7uF/e2ZeJQHvLhsw4lLvKspK9A4jTQXRJ3Pw0qBVwllmFCubz28yS46TpeDOVYUugwYhY0Xdn9J4wVIweS5mO87yVuxXrr+ph4xjP5Uvn+CUurV+BtXYzMlMv/kQLzGkSRuuIC1g3mfPcU+pJsFkh/0TuKNpRUpTip5w5B5/MubZ43h+c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAXPR04MB8989.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnRHV2pDWVBrYy9xSjhHT2RUYkx2b3NKSjZaaU1qRGkwMHp0aDdJWmRvVHQ1?=
 =?utf-8?B?K2VGNUQxaThrOHZvN3NWeUxCaERTNzZVQU1IdmFKVFNrclNQYzluWllMUVpG?=
 =?utf-8?B?TEkyMXZLMmRYaC83ZVZKaFBsK2pZS3ZRaCtaUmc3WTg0ZDVMNnI3NnJBRC9a?=
 =?utf-8?B?TXA0UjJBY1VPYUU5MzVTc0lWU292dm9LMlI1aUZtc3pxQVc0NU5DVVpGM3Zx?=
 =?utf-8?B?ZzE1dzRPbFg3ekZuaXVuRHloajZqdTdOU21rQWR2eFM0aS9ZbGN5YTI1RDRt?=
 =?utf-8?B?WmpFcHRubFExKzlzVng0aHBLc2FzbkFIaWVIUklNZzZ2VFYxWGtiTUpRdlpV?=
 =?utf-8?B?eFFMQzFlcnFvUlVSWnhWZ1YxbFp3Yjh0dWIwWWlmUW92WUJ6MUpFUnNJL0Fu?=
 =?utf-8?B?ZmwveUg5TER1ZXh5ZjBQYUNPMnZTUmI3T0Y4dUpyU2VreU9hZlA0U1JEb0Ra?=
 =?utf-8?B?UnJMYkNEVytTem1hVmhCdWx1cDU5OVZmYzBuZHRtRmhiVzlQYUY1bXlLT0xt?=
 =?utf-8?B?d3JubFdSa29LSkI4WUhsRXdwZEdNT3hVd1hRTk9LcSs0UDlwcTAwYldIM1V4?=
 =?utf-8?B?VUN6YTZCSHdzbHFVb0U4QkVOWEMyYlBWeThCQUVrdEkwdzFqanJHSE8wNGtm?=
 =?utf-8?B?NUEyRVlERk02eU9rQVVJbHlBaldhMUxMa1BFOUJXRmJTK29pTjhMdmJIYVIr?=
 =?utf-8?B?RHJhYkF2Nk9ueVY0djk1SzlWZlZSVXFQeHA3dFIyc1dyY3hMWmlMQm5Ycmpa?=
 =?utf-8?B?WU5UUzUwYk1ab2hJSGl3RXhUTnFYS3QxZFlIMTlrMmxWQ1lUYStpaTFwYzlX?=
 =?utf-8?B?b1VCVzYvYkFZVXh1bHBZdytjS1FNQXFzOWdHWXMyT2FRY2NzbFBBSkJhOFVw?=
 =?utf-8?B?aW5STmpVK28xNWNpRzB1OFE2a1psaG1RN2pjV2Z2ek1VYVR4V3REMzJxNDB2?=
 =?utf-8?B?MDd2bG5xOTNiNmRXNkNQcEZtYlFCdk5xNnk4M2svQ2tjZ3c4OXp1TzYxSEdL?=
 =?utf-8?B?U3FwV0NrZTBwZ29oQ3N4bytpa2dMR3E2eW4vWW44V2s0TW5PK2dZY0piNGNq?=
 =?utf-8?B?eWc4Y2J2SE03MXRqaGJrYW5hMjEvMFVqL24wL1V1ZXpHSkN2S0Job2dvdkZK?=
 =?utf-8?B?NG9LOExrb3FnUEFDbFpGeHloNUhJOTY2VWhwcUlUNlVUNUFBeDN4WDRhcFZo?=
 =?utf-8?B?N3pPeDVqTHpqVWVKK2Fsd2VvbUdPaWFUT3h0NWdWNkxNd0hTT09wVzJ0T3g1?=
 =?utf-8?B?QlpkRm9KNFJ2WXo5NG9yMHB3cUtQOUUreFpNVlVHNzV2SHlRRHR3K1did1lr?=
 =?utf-8?B?UXA4RG1hbmhKWDZRWWdFcmZGT0FQQWV6SFQ1a1NqMHg0TFVtaWlZN2gyOXMy?=
 =?utf-8?B?MDZNN0F5SzJZNGtZZEg3b3N1VGFoTHltdzB4a3N2czdSYVBsYWt0K2NZQlpY?=
 =?utf-8?B?Rm1kZzFKR2crY3FwNWR3NGsyaWh5K05OZldEdWZleVNTK0NQUGp1R3pyZDA4?=
 =?utf-8?B?R3paMllRN0tQdkJVWUhoaWtuQ2RpbnJRUWlVZFQ2bFl4RlRhcm9XOS9LeDdu?=
 =?utf-8?B?bGpGaU4wVWZxS0NSSVR0MmFoNU1RZXdaeTltS0ttbmlqM0sxeFQvaTBHeVdh?=
 =?utf-8?B?d2lsMTgzcy9jSzhqellHT1FYRmx3aGlnYnJNM2JjNmdVajR1Q3M3cE9OOGtP?=
 =?utf-8?B?L0p5bWVCeS9zaTd4Y2NYWkEyeFczeXBqMEoycm96ckcrWmY4RDJKMUpJOWtw?=
 =?utf-8?B?R1JTZ1FhZlkyRnAzNnZraU9EMTYxV3hmRjEzTGhWMVFnQTBFSVdIZ0JJVGlP?=
 =?utf-8?B?V1M0M2gyRzc0V0xZWTYralIrdHp0aG42bm5QVzZ6aWpQUHk4Y3hnZlI4NTdP?=
 =?utf-8?B?UmMyMVRxRnJZUUlHY3U0eHBXUlNqNTF1SlV2OEFRY1VHRno1UlA4M2hRUHNB?=
 =?utf-8?B?aW55YmxKSDcwek5ESVJXcjdRd3JEclB6Z2RyUTlwOC82OXBibjdPbmMyNHFv?=
 =?utf-8?B?c0Zad3NhZDZBdzZBQ1ZjWkFpNlZQZmYrL01Uc2duQkU2VkNmbCs0Rk03SHR1?=
 =?utf-8?B?QjYxSWMxdlhkU3pBbXBLMFd3eG5EZkllcTRiTHE2QmdsQ2JiYVF4LzlWd1I5?=
 =?utf-8?B?c3llcTEzSHR2YnhuM0lIZnRqaEpLOGZzRUxOQm1xcGNxUm9nWmRZemJJMTJW?=
 =?utf-8?Q?Nuqg7Zzm4e/8W6zK5Dh3qR5V8DqDXtNfPo2N+F21ALep?=
X-OriginatorOrg: criteo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf270319-5f99-48d2-b5c1-08dc4819362c
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8989.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 13:33:50.1835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2a35d8fd-574d-48e3-927c-8c398e225a01
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JfejCPBod5FLPfpuez5xcR9sNml28vuIMkEZtu6GstmZN0Va0dhMZO0QRmEapr+YUU73ejoBq7V9RIdG1Dai8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7244
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=criteo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EJZwKwx5Qgr94CJ72QMcxqIEx2fDsV3FHNLUiT5jD7s=;
 b=GC52OMZ86ihqq25TImQ+dwVR712tshQPAhRJTFQS0cc4SqJukBfpaIE/fQ3mZCoMpu+RLZ55tMtRIRy2HwCf/hk+kj7TmrAPlbBDeLp434YncRP8cV2SxvVeEsJECyT90dADHyuwCzJJsC9IZdYl3tbjLZN2S/r5C5l2j1mpe+jPsDKpm/lxsxYpaW3EXWMvxlBFhjsWCh84e79MBZ8bYIuJY2hw9BfJb6EpPxw8mSeXF6RRxcgd3g4ZrRCD6RzOYJfkDhCWkMxFf+fFm6XJd/rP9Cpnt5K0S8+L7YPkg3uEIQJpKfOzqSgRRRy9PJEC9BcZugf9bad+DS1zs1B9yA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=criteo.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=criteo.com header.i=@criteo.com header.a=rsa-sha256
 header.s=selector2 header.b=GC52OMZ8
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
Cc: Erwan Velu <erwanaliasr1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Le 19/03/2024 à 13:20, Simon Horman a écrit :
[...]
> FWIIW, I think handling these questions in follow-up patches is fine.

I wonder if the previous patch must be merged first, so I can reference 
it in the commit message, or if I should shoot it now.

Erwan,

