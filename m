Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C05887C40F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 21:11:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF26D80C3E;
	Thu, 14 Mar 2024 20:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7hQ1-zm7UgR3; Thu, 14 Mar 2024 20:11:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E4DC82172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710447088;
	bh=spRLlQgRVyV2BMsAxSfRIspEWUQSNw6hmzfnSDAnKRU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2gJrAKXbtszQ0iG2EH9Yvi1rilfgDB5m2wGgzxWDrlDRSZKeJmB4A6L4CL/cJOa2n
	 Q7KmzMkBaG2faodqQ+1vM5uOSrtVuL5G29hkTwnYa/fFmY7snNku7yz3pL0z04aIuY
	 IM1iMjDUDrGJzpt53vWsvyBQph7vTvTsj3YgTCuLGIRWPwdQ6dEfAWq6oJe7Nqcz2X
	 INoBeV+LKkbgZl8CqB7/DGyg8d5Eo+iwlhi7feyFeD0V/Y7ZbcFSaljpX0kYlORfvo
	 213sXUNTVx/GASe4QPqJjOGLAVE6zP4TjqTPxQ7Rdo9zzXJWLW1qwKuW+p3jqYyxUw
	 Zj4KqZ9ngdu9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E4DC82172;
	Thu, 14 Mar 2024 20:11:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AE9F1BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 18:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 233F382147
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 18:04:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCjGo5SLivWt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 18:04:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.22.48;
 helo=eur05-am6-obe.outbound.protection.outlook.com;
 envelope-from=e.velu@criteo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F049882144
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F049882144
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2048.outbound.protection.outlook.com [40.107.22.48])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F049882144
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 18:04:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PF8z94l7aHGERMs9O/H9VL+9uyQNnLmSN1OBtXFpLMkaB56he8gTQ9o/0PimoG4JFHGwhihsIzXMr8lBj+gfyNC9Af6Jxck7llNw2mB/7lAES/bEpqe4Y4uKQL0DjFItJ98jPIGBMvTq4/N0Wbttyt+50lSuUtqG06ckZhRQ0qy0ac+NhMi+SV5LyMa1VRPf+BFZNWVimV+E3XNx3ahgLHoJuaVu0R6Och+Gfg0XbVNt+m278ykJzDHV23vAmzddHiVYlQdUe5Wy4AX+Q+ZglJsDPPiJM3+aewZMz4cWR9QyvOOwu36pl12bxtcmhfJiNeI+ZDjWRqRCw/2JrMtg4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spRLlQgRVyV2BMsAxSfRIspEWUQSNw6hmzfnSDAnKRU=;
 b=myFy/tJFU8QL0/3PaKo2+r602roL4oOGgxIiaA/oM61W046jjEJ+kfBJSFEb7XrFUfex6hNTg4rVZgbwJluKrTsCJiCJZBsUsZm/qsNOLBr2jrES6Lm+cXjR+aWxk/DQHTn1mYfE0szql4QoKjlqRfuFOAGjXSLnk8dIpnh1eVwgInUilZTgPEJASKN5fqEZFTC5zkXXtWLfoEKIoUTc810CEr04WDXNbYBaiDdTEySevPdscSkPxUuCXHFKs3HC6Bfe2dY3dp46J3rK6K7xlvwf9rR7TtrPlAfa71wu3ZKh/Z/fCW6OJzLEHyBbk2iSh0hw6mCJpId/tn5XJnuNpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=criteo.com; dmarc=pass action=none header.from=criteo.com;
 dkim=pass header.d=criteo.com; arc=none
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com (2603:10a6:102:20c::11)
 by AS8PR04MB8691.eurprd04.prod.outlook.com (2603:10a6:20b:42a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 18:04:19 +0000
Received: from PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2]) by PAXPR04MB8989.eurprd04.prod.outlook.com
 ([fe80::c508:de0c:3808:6f2%4]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 18:04:18 +0000
Message-ID: <7b612db6-cec6-4873-8a38-fb4c97192aa2@criteo.com>
Date: Thu, 14 Mar 2024 19:04:17 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Brett Creeley <bcreeley@amd.com>, Erwan Velu <erwanaliasr1@gmail.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <4e203331-62f7-44e7-acd9-f684c30662de@amd.com>
 <c0ccaef6-44eb-4851-b336-cdb06647e1d2@criteo.com>
 <d16ff01c-4a01-4871-93de-a5c26a352301@amd.com>
From: Erwan Velu <e.velu@criteo.com>
In-Reply-To: <d16ff01c-4a01-4871-93de-a5c26a352301@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PA7P264CA0136.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:377::11) To PAXPR04MB8989.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8989:EE_|AS8PR04MB8691:EE_
X-MS-Office365-Filtering-Correlation-Id: b5fdcd62-6f44-40a5-bf29-08dc44512b0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 511utUVBFjqbdZ5wlwpYrkEzGk5RuRiTH4Q9aJvcDshgJxCYK6G7flCsZgysBnYZRVthUUSrmHzvbY0YBSOYdGOMn0vH9FKsgj+PUX93zDt4TOPNr2hcJODWfRKByh2NQ+yzvou5wEEYikwpN8Gwv8vS0q/rbyQ+i3RzpVZlKtQwqYlS0tVKMP0dHK89K83ew7gry0NyKwrCFdQeUd6phcglUmpb5zt7omViGynSS522DyZTGPcaQ4QsrLrmqJdg781bnnupCRDnEpM/xuxQHmpuH2TiHpdrKnWwtWJ/LJ8a7bQ2cg2i/IgeUtADJuXqtLQt9tO6VsDia9dCW2RpLMkRFnNFbN9lnnzIP5Ong8sa1me+pLSHoBQNLgmvW+T/f34FPhVIeZa0a/Rwr1BTSdla7eJ66QIZs3AcIFMcBNfUExqd4L/iQPrk8mrMy2vGLAp8uZgPDjFEK4ICgYwA3pOIINsyv08RZluCB7P1GEY6i5lnQrzxH2pVjzdk7eD/e02Q7l55vaabzfnRlzX4VjokY3hKo9dzB23Ky5yEBZQfWTm3RZqrtM3/SjGhu8YTN/+Ye3xyMIcnADtAPfnS8tBuUufP3cfskatwIaXLYocxZ9S2kdd3R7kUVqwzrZfKJ7Wo9NE4Wq85XnCCctkhE/BoZla5KcOyE7bWWUGfzF0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAXPR04MB8989.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHMzbW8ybWZ5TndnVFNhbzNETFpyN2ZaemR5MWJua2xCVzRORjI3S0xxckxs?=
 =?utf-8?B?RFordHBtQW9xV3k1aXhZaEJpcmszdTNEUE0zSThuVTB4OWdaOGVKZm5MZm9i?=
 =?utf-8?B?U1FLdTNBYjhGeDFWUGlkRVB0WFlQWlM1ZWJqTFRxU0tSQXkrNExkamsxbDZn?=
 =?utf-8?B?QjJiNjR1LzdLYzU0YVpUVnNRYm0wL0tPY05OZ0ZCM0I2WG5tcWxmRVJWSVZZ?=
 =?utf-8?B?Y2NHQzVTa1ZrOUUreWJBck1senpibzlBRUpuY3JEa2FpZTlhL1htYjl1OTB1?=
 =?utf-8?B?Ry84WjRRekZ2eDdGSG5rS3NRZm9KYThWK1FhV0M5Q3hLV0lVaHVDbEFsZWtI?=
 =?utf-8?B?Qk9pUXpSQVcvM3NldE9wZ2wwSDFqSms5RVI0bkp3VGQ3N2FSMEZOMzhGSkM1?=
 =?utf-8?B?SGFNR1NJVHVpMHI1VGFSMndjZ0FHSGFKVGRBZEtZN3ZHUlluWlFPdXYydHRp?=
 =?utf-8?B?UE5QZDVKcnhQUU02TG1uMzJKcnA2ZitlN1g2eGFlVXJQZkRaWUlRWm9JcUpx?=
 =?utf-8?B?VWsvcnF1Wk1LM09vd2p6L0IrOWZ4eWovZjRWU09rdFZldnprV1BJRHhaSTlL?=
 =?utf-8?B?WUw1SlY5UFl4U3VoeGcwNEJMSTE1Ull2c0kyb1p4cmUzeCtQaDV2TkRITVRs?=
 =?utf-8?B?cWxwb0hnZnM2MkpZbVg1UkdyNGVXRHAyOXBxb3NTYUZUbEJ4MUN3YWhGRzJh?=
 =?utf-8?B?N3VWVjl3eVNROXNKcUdLSEF0VW5IUDQ2Mm1RckNvVUZjbDFVeWRydTFwWWVr?=
 =?utf-8?B?elByTDh4c1hvV21OQ2IvaWJsT00zTmRwRzFCaXcyUXdlLzdvVE9QVitjYmFp?=
 =?utf-8?B?Z2piU3EyWUZYWnpGcUZLTGVQbTdjTHR1TDBWZCt3YjlBZUgvSXZWZUJNdURa?=
 =?utf-8?B?VWFkZDdIaVZoWkh5cWpXaXhkajJWQ0RHRFJqVExYb3l0Qi9SNXdMVGgzSWNu?=
 =?utf-8?B?anh5bEJYc214dDZVOVFvdURXV3dtcjg3RGUwNjFNV0VOOGIzUllDQm1FWUZS?=
 =?utf-8?B?cXdJcHExWU1lZ2FUVlFhUmZBRFRURmlYaDc5RkYwaDJST1hXYlYrSk8ycGxT?=
 =?utf-8?B?VjRDdyttZFZDUmFteU5HZ25qUlNPZ0I0Q1RTN0hPZ0hodXQ5cnUxUVpJVGVY?=
 =?utf-8?B?d3IzbTYxY1R0a2hhdzU2VDBlcG9JTEszd1huNERtdzF5VnVvOThtek9zT2Jq?=
 =?utf-8?B?TGZpWGx6RDhNVEV2OWR5OWp3S01ZSkxFbWNUSnNCZWxKUkFPMmFMY2dTeS90?=
 =?utf-8?B?aW5OYW5tY2FJZ2p5SEJyNm1Gc1RwUlZla3dzQklYdVA5ME56RUp3bzJ2eXBO?=
 =?utf-8?B?VFJzVFc5cVZQbWJjY3d1d0pTL3lNdklJVDVUZEhxSVF5dEpaYTBxdXBRUmVG?=
 =?utf-8?B?SnY0STR2ZVZWSkFZK2lPWm5oRndjclJXWjhEdmwyTDNFTGZNSXRZR3hJbW9S?=
 =?utf-8?B?ZVpXU1hJck9ZUmJZbVdzaFNJanpVNmViODZVWGVPd0FpRWprL1g3M2hVRGNo?=
 =?utf-8?B?eDV3eGJZZy8wVDFMV3JkTndxcFJUdVRvSHRYM2Z4M3Y3TFdBTGRIMVBmaG85?=
 =?utf-8?B?NEFCdmxXZzY4VkNsOXg1eGU2NlhZRFV5M2MvRXF4azlQZjZCeDAwQ2xEZitM?=
 =?utf-8?B?Zk8zZDYvOVYzWHlKZzNrRm1NY3dXRVV4bFVaQ04yZEJHNmd1cDhYN1JrOVJY?=
 =?utf-8?B?eTA1Tjk4czFHT2dqM3VpdTlvZ3NVM0VVUzhsc0trQmNEaG5SRkxrTVFFSU4r?=
 =?utf-8?B?NFBNYXVTS3JISFZ3ajRXUXlnVjIzbXd2SkdPWWxFbzlucitxN1BoTDh6TkIx?=
 =?utf-8?B?SDcyVjRxeEgzVUE4aUVxbVFBc1Q2czNDOE8wSC9CeGw4c0pVcUxyUEVvbno0?=
 =?utf-8?B?ZWtnSzFkWS85S2dTL2V0UnNVSStXRXkwUExPaGNCUEE4VFJudkJVSjM4VXhD?=
 =?utf-8?B?d05jc3dOeEJGQlRLVlJYUlR6THRPWVUrSjZ3SkZ0N3RKUjFvNXZqajg1dVRQ?=
 =?utf-8?B?WFp2dUVMb2MvSUhiR2pnR0RKbGZ4dGtSNTNLK3E5dEpBa1MvSHEwNER3NTRh?=
 =?utf-8?B?b05hNHdPYjNEZVk5dXBOU0RNSTUvVkh2eGszME56b1ZodXN1Q0cxd0pnbnhH?=
 =?utf-8?B?T3FuaUhUc0E0aGwyTFBUcW9qVzc5ZXZMRzJuZ2MwL1lhRDZjZUNNaTd0U3Fl?=
 =?utf-8?Q?b92th+kZzWdnHjottPO7ZxFXsLVSWyv2RdlxW8E3HfPZ?=
X-OriginatorOrg: criteo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5fdcd62-6f44-40a5-bf29-08dc44512b0e
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8989.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 18:04:18.8658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2a35d8fd-574d-48e3-927c-8c398e225a01
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cwb+Xws/MF3bCtNsK2L297GLIybtz15bGOgM2mAjJ2Rt4QewvEGeW0RlNVAnXof93ILg4GG6WoX9Mq9osvugoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8691
X-Mailman-Approved-At: Thu, 14 Mar 2024 20:11:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=criteo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=spRLlQgRVyV2BMsAxSfRIspEWUQSNw6hmzfnSDAnKRU=;
 b=cdkrXKI4OVlhOepE8/SenYHLFCNe1rx0Rkz9Mqjay10lpZKV1S0eqa6xiAoHbLuLdhu5zg7e4Hvp1BiU0e8dS8YwzSbJCdGdbwLWpLJfyMopRzt9Q96vK6Yi8hOZaLfpwHjyvHMLC6A/vT1S5HMuJpjfSERZLpBCO/t3MIroqgdoGjKcjH8oBfexlG4SpHIbcDwDLRS0YKuRQiS3fZoJUMCVIT9lFQReHVqt1NyBEPAnvu1BbGVOjK5LWRTlmMwDa1b6p/SuehzeP5HYURBNVWjMj30AqP53nP0FfPdTfD5eNBhHw169Kl6tgHhdh2twqskVygUimRuJMd5HPT5I3w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=criteo.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=criteo.com header.i=@criteo.com header.a=rsa-sha256
 header.s=selector2 header.b=cdkrXKI4
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


Le 14/03/2024 à 18:55, Brett Creeley a écrit :
> [...]
> AFAIK there is no API for a user to change the max_mtu, so the only way
> the device's MFS would need to change is if it's done during
> initialization time, which should be done before netdev registration 
> anyway.

Sorry Brett, I was probably unclear and please note that I'm not a 
network developer, just a user that faced a bug.

My initial though was to check the mfs size in i40e_change_mtu() and if 
mfs is too small, then let's increase it.

Maybe just resetting it at init time to the largest value (which seems 
to be the default fw behavior) is a best approach.

I'd love to ear from Intel dev that knows this driver/cards/fw better on 
what's the best approach here.

Erwan,

