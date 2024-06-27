Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E813691A496
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 13:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F4FF415A5;
	Thu, 27 Jun 2024 11:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LF0rvjWpTLCr; Thu, 27 Jun 2024 11:07:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBED841588
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719486456;
	bh=1Hy96YxLDbcd4IpLAYDWcM0rxk4rIeD30Wthxfr32IQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4myq6tiClgfDa2D578+PxoozP6lafjVkjK7ASE1uYAm4s8zR25swOXrWcUC7nHK/T
	 Z8mv9P/S8rJ5lPP2YdXAgxZNtpgyF3nRd/nPc3XD4qalmSc5PlkUkhuO8SzVua4WE4
	 Oo/SrYJhTYjRT7Iy0dmW3NRGN323tb27JsskpZX1BPypCljuOuWtoN5Xy/GexqctJK
	 w1Ro5knDAibnr5MtX9QCb7QdqoeKCLr9bLvJv9o8N8bAiOhkRv8mUg4RwAh6v89C0H
	 nbgvXt0VqcuFYWjq6SzjhglUzobzcGwb0dkIF11gq34/Z58bTiokN/bUDqOpjRJ0pP
	 mo4BK4PpEP65Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBED841588;
	Thu, 27 Jun 2024 11:07:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C8AF1BF401
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 11:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33EC984039
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 11:07:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S2IBJ63TLLtB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 11:07:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4A00184038
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A00184038
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A00184038
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 11:07:32 +0000 (UTC)
X-CSE-ConnectionGUID: WClbvOZ3QJybCJRLJHx0oA==
X-CSE-MsgGUID: RgZbJVVwSmaa4By2UXF+/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="12279556"
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="12279556"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 04:07:32 -0700
X-CSE-ConnectionGUID: VMwkzwGJSLSOsSSN+OI3dA==
X-CSE-MsgGUID: 8MSwYGZ9Qcu8qi1anOZsYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="45092234"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 04:07:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 04:07:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 04:07:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 04:07:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NpxSojhPHv7IUj93Jc+v0+XfPXVOsthnE7j7BJEG9VSMtkE7WUQALBh+IBykhTiZYrrXBNpvcPqzO/wz68pm8a36690FavgsFOG0Sy+86rB8hCy2kytcBXcF3cGtP1AimoasSwVR8CdnlsZV+dlRwEw9f0gOjE2OtkjSypVUUeBTAtuRXprvS73uvAVT2bfLsicnXxGrl2/YghPsjioyXGuhlPHRIdZFuLcFt7DC9Y7OGwZYDdJiB6JMRMe87NKEW64cDyB7fBR/QFa6JpvM/VixRncifQ2JPUXfi4aJjeoX6/80kf8n+PQmOmsfYp1mm8whWPIDdQIVxqGoqw/Ycg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Hy96YxLDbcd4IpLAYDWcM0rxk4rIeD30Wthxfr32IQ=;
 b=TD6EkuDR8FglTdGFhc1ed3CE6zgwuE5lCcmRNVbAk7jy4NyxB4/zYw9UbpTv5SlEVu+TR4U4/rUR+8dXDtbE/xJi4JUEDq3+O/7hNyV+BPn/AL4RB1+dcyajCge9S92COMvijNQqNiuOeithFt+3A3tzNGAjMDeVdhTtwiTKEkrdfoUGp4tTzvCGf8paejtRjeSk7pJgBVtuLEDNsJy/EA67cJYSx2gwhgUEFWqGk6Un7ReB6bHL0Wlks1TSRVnajHDgECffGAEmlKLhc0nQS74ru0/hWvNlZ2S1B/w4QYds5furv0cwOyNCRKUNgTmkQ+qFIMZVkq2Q/tKlahBhEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7698.30; Thu, 27 Jun 2024 11:07:29 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 11:07:29 +0000
Date: Thu, 27 Jun 2024 13:07:22 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zn1H6hmr4Y7ZFvT6@boxer>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-5-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240606112503.1939759-5-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: FR4P281CA0176.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::7) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: b04903e4-fae7-40f9-0219-08dc969955a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gWyS34al2f2e0sNQkVgfztpII7qaRXIKw4vHgjw5NrB/CdUVvOTeG7VbLGu6?=
 =?us-ascii?Q?G386JWF1jvdpzG6S3FCNzWEnAaxN8stxxwAvg0GU86F4YoHr3QViRkFpyUW5?=
 =?us-ascii?Q?RFys77IkktCQ71z/dQeRaP5Y1PiRmLG0gvVEFLjGRQcYGR+1GzIjMt18UdVX?=
 =?us-ascii?Q?fYpMNb+yEZoEI+EEIzE8YIShRcxwyI9tkzKcfrwqEWlAoiK3TS8du04yMEck?=
 =?us-ascii?Q?OfAltR4C9wO+VnL1LXXeJWz3EeorkP2zWp6A6Ibz7MOUN0KI5OOZdgu2u3/g?=
 =?us-ascii?Q?HBGl+r8HL5FiMJQRYuW603ZTIYGbqmUTygUIYtuB3CdG0CvX+tNnn5bJMb7e?=
 =?us-ascii?Q?yxEzXEZwH/TrJyAhsmMn00ibGmd1CsSeGyLzjLA+CsO5cz+bSoIALWDNfc1y?=
 =?us-ascii?Q?gLPTKJSLJjnAmQJS8U/J7sZXDpieyWMY3LQrczGwbWOXXbCXHKNOt2Jn8jIx?=
 =?us-ascii?Q?iwNEd8N8ahpUnU0e/17hITjVgiiNaozEXeAWERnyieaCqd4P8lwTyzV0BEWh?=
 =?us-ascii?Q?0sdA2qwvVK5eYm50Vie0Fw8WxLKJbpp13o7kMhdHvhx7xqtj38yvlXIzT+9N?=
 =?us-ascii?Q?yKOogIpjNqlm1TCz/d05VSbhMTkabf19Kzyuh0noZl1L4h7UJZildz0cL5Ve?=
 =?us-ascii?Q?pmVlwzYIUDrfrr2Kjleo4Mt42fQBxWydd17nnXQtAqivzsd3vuBLmKb8ROyH?=
 =?us-ascii?Q?lxq7lteOhHcQLkpDYaEQxkH+knslv78JGbCC7sD1B4GW0OhnbOxwQ8tf5b21?=
 =?us-ascii?Q?XFAxQAlHCYrDvRlo5a+bnkOsguELUktSzLIuVPLwpjOACljaFDAYs8Kj6aEh?=
 =?us-ascii?Q?ou8772//ggAfIbOatJgkUScFp77waOTUqv1gxGhw6LJSzlCZn2cxq27bRtOt?=
 =?us-ascii?Q?pBf4+QmZdnCI6UJ1zZmF54l41g4K41sokZ7OeTaMh3GlvKxFyg2bmY2P1YxQ?=
 =?us-ascii?Q?VEhZWqyLRlxu3YHHb6AGMAG8npvV6BQOelv1cfUfZhbxT9nh9bmGLwQucCxQ?=
 =?us-ascii?Q?FC8Expa45OU5dSF4mGdtgYvvzkPO2mREUHxAoMS+pNMnFhw//SGacpcpC7b4?=
 =?us-ascii?Q?XXUxAxx4PYOc3hLCYhpYqvLkjaT+DnMoNUWAQHlSH46MzsmcRwWgoibrhH3N?=
 =?us-ascii?Q?RQbvu68sSqATJ2PP3AtMH8e1Eyz2sTjsRqwj1A+Y/Eyy04s4WXLOlWzs2hrw?=
 =?us-ascii?Q?UEchuxlWVfoZjXbMTLymf/DSJ1jdGAR+GjzbBGuIfvtBzalUVANPPzHkFI8w?=
 =?us-ascii?Q?6mT3yR/VaJcbKOwS18YTGuTNHT+iHVxORrhgE1sdPHUcoC/2//kH8fpqFb2F?=
 =?us-ascii?Q?NSdE1fYHyHCf0j6UK6ZGQDrYFTmXs3vaOD12eVkHj+mqpQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1umkJwAKZUtDGhVk2fIjTDDFws+64RlZIgWXa5KanUDiBja0yz0HKPRdhLn7?=
 =?us-ascii?Q?vvL7hFINJYrCpQJG2pIw87XdqPwQRxUvaZhU2/i25QJdu6gin2Qajtxxs1hx?=
 =?us-ascii?Q?9ulnD4CRSGi/SsppuLX+s3QHuIbtQkkj0MeuFo2naYtfg/2LtsBaRz1omHJx?=
 =?us-ascii?Q?4u33XAnUZ6dfLant6td1cC/3KYqAwlSAEMWcW4Sg3XdfJF9RNvEIeCCUEcUP?=
 =?us-ascii?Q?TyMDTwaJ4LcDgnzvPZ0xHQVUCka5lqSLOJgBz7ZEpaqluEUijAnQpox+R1aO?=
 =?us-ascii?Q?LjWOa0nDt400pYUjwO/+ndPd0ek/ElpjulT0prmyc9WwHRyn1TfhWS9tNPqX?=
 =?us-ascii?Q?0fwc3yT+XXODTgIfjldVsxrkUyP/xvKX3SgbdYYXdpClq0+f1DKNia1CjajU?=
 =?us-ascii?Q?OxG92YffGNYx5kg8ngy7G4ZyfkNFgya4sKTuNcQQhe4ESetOp2ME4nxXQ3as?=
 =?us-ascii?Q?/Ba88dS0EFJ0xHLWY5Gkb9stlv23Al2QsjFjvtk6wv1rxzOdSw8ybcTMv0Ru?=
 =?us-ascii?Q?oUSsZLSwiPGsYbJc8FgWzDKo1CQdjiD0vEYPw5om3SgCTwEJs11xIbxqcI+z?=
 =?us-ascii?Q?Dy9fuSMbLS+t4oJyt6AB2VfxVKR4d8/OaQeL9JiQ2HL9fx+TwqP4yE9DFPmT?=
 =?us-ascii?Q?H3hSkDIFmNKYfbqkNDcbsXmkjm93C6P0QuDhWerpETUDEsv0JBzmXGD4Pfns?=
 =?us-ascii?Q?DnBuQoFBWEmimGut7dIiYkZ1yms/Piyq45Q0MMb8uwZGd3j/gprNDqQM9Dqp?=
 =?us-ascii?Q?1q3Nh6R6GInd0FNX2WUaTyPeecwfiCc65OtOOBtB4urPd8utkZ+o0cAIvnCd?=
 =?us-ascii?Q?zw51TJPd3hjJQHfyJVvjNbFimSdGaZilduyqY6Ge+naYLhFLgLFvJwm9VYJU?=
 =?us-ascii?Q?2F49lsXUHi1ligpV9f4awv7ij5WsPpPygv1UMUrVX6r89VFK5pC8RzSbUSZR?=
 =?us-ascii?Q?yNzK/pf9YkLrwLixqXYfa/gmN+UULrBvdVkj6J3Sv3gJ9/S8UunED/ulK/5C?=
 =?us-ascii?Q?z7fqTOPS2EnpPHbBvM3W5MKGg/JPuB6IJX+ZRfN8+y2QbNyY3UxxxM+UMqRa?=
 =?us-ascii?Q?vfnK+OdX1cYkNvHjDHhILiiCgnKAxO9fRCIvglSSnhCORM7eZlGx+BROVkGn?=
 =?us-ascii?Q?Z8Yhq0ARVtBUZTHx+CLjA2qprbofttXfXtmDfxNugYwzIo6EyTonU1uwjweq?=
 =?us-ascii?Q?oyeowutmbUYjBVS+rgqiIbWbw+6kpIVf/SKjYdAnZiMA9nQQS+1FR4G+mDns?=
 =?us-ascii?Q?us9ShNzShdL2UkiVhObQXlcnhZyisI4oDgr5c0qnNHj6KbL/X3Gkb4KfJ7/c?=
 =?us-ascii?Q?lKwojZHLJ76I5c2A7c7CfLuxXSRbcc+9MsnbKG9BfuUydI3lkFD7MAybWhqk?=
 =?us-ascii?Q?ObnZ4UP+I1bLBUs61fIl8YrtlheZcOXQp00VDiKWOIQjJNe639PTD/rRUbyq?=
 =?us-ascii?Q?KIlfiqy0RJds/3n2NmkRmxxjWXLQMM/wYO/7ulAkatGMlaMFzLERDIZ4HOXC?=
 =?us-ascii?Q?7eH5CF1ENocG45qRxdi4/7zyB8JEnahsrAx7+7hj24xsmVWhUfw+dw3GfpXz?=
 =?us-ascii?Q?TR5hnDcAh2ZIK2xCaL956EHcRm4sVpFnWXwUEe1q5XbaZn34rpnHDoIxwp3z?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b04903e4-fae7-40f9-0219-08dc969955a3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 11:07:29.1717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9sy8HEpG7io9u/O668zbNtSd7RLOFKab0Q/MUQT1Cy6kWF+itML8d3rbcFNSdGj2pJZfednWSZcOKhYmLXtUnLPyN/LOEyl0QYS8P9t1v/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719486454; x=1751022454;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gqs6KrFrXfW0UyRZ17+mw8dkFWDPRy6Bx5rLNwFN7a0=;
 b=f3WUEgihmWBYnEhVxBy/gIGbKLkzrcn2OFgkPyYEY7mW8CRZ0p6FsiPe
 aGcyeYR8snjdEaa6k/UBItTYvyBkIKi9tmi+hgZt/C0yYrDKEmW4kBTnk
 T6w0nmtC6mUD7QSRnVDa0FTwvysa8PlqvwOCLGaiPVNsWmIY9gC+1imON
 +Y2HgNZwVUKt+iRiqPBzOuzyWvfKJO4in43X16/whTJ2ENag3YOBfxMFM
 YzOsEaE6vPqCsMEzQMXQWo0ByY7vkNnY+K4Mo1AQ6EnQy0sp8m2/OXKtS
 pPAT0J0XZ5MeV/q3HUKZ93skjm8Gd1CE3sEfADi3BKwyCJCSXa9fOLovd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f3WUEgih
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 04/15] ice: treat subfunction
 VSI the same as PF VSI
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
Cc: shayd@nvidia.com, wojciech.drewek@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 06, 2024 at 01:24:52PM +0200, Michal Swiatkowski wrote:
> When subfunction VSI is open the same code as for PF VSI should be
> executed. Also when up is complete. Reflect that in code by adding
> subfunction VSI to consideration.
> 
> In case of stopping, PF doesn't have additional tasks, so the same
> is with subfunction VSI.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e76e19036593..ddc348371841 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6726,7 +6726,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
>  
>  	if (vsi->port_info &&
>  	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
> -	    vsi->netdev && vsi->type == ICE_VSI_PF) {
> +	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
> +	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {

patch 1 has:

	if (vsi->netdev && (vsi->type == ICE_VSI_PF ||
			    vsi->type == ICE_VSI_SF)) {

so maybe stay consistent and do the same here?

nit: also seems that a really small helper would make the code easier to
read and wrap...something like:

bool ice_is_vsi_pf_sf(struct ice_vsi* vsi)
{
	return (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF);
}

>  		ice_print_link_msg(vsi, true);
>  		netif_tx_start_all_queues(vsi->netdev);
>  		netif_carrier_on(vsi->netdev);
> @@ -7427,7 +7428,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
>  
>  	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
>  
> -	if (vsi->type == ICE_VSI_PF) {
> +	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
>  		/* Notify the stack of the actual queue counts. */
>  		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
>  		if (err)
> -- 
> 2.42.0
> 
