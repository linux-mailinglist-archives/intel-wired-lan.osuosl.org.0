Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C6AA14078
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 18:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31B704137A;
	Thu, 16 Jan 2025 17:14:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pyMEKE09oqDo; Thu, 16 Jan 2025 17:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C10D407A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737047687;
	bh=M+aVVWx6SBQQfu+i/IBM23HHkJ3ywZ8Dz6gnz7flbSo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uO1rwgDXI5JdLuJE+YekWGfXRIUvCxKKmPmwVfPRBadGbhwR5FhZqqOKGRBkXuEne
	 pyHvudro0Fxq7uxXM3jK/UaifJgP51q6qIDisUTe7iMi+GTO35c9mewhvSmrp7/kkM
	 7ih156q0+02gfGVCZ0iYvMGVPPRKq51bV1VKW1TwJHHcPoVg5Cc/0iNjwBeXDWbIFy
	 tdwAnwaMK+hz3+GbaMb0rdT46IDzX/vBfyX9Tw59d4uHQv86Zbv2nM8btXs8HA3yTl
	 uDTwd7o2/M4YcgsmZMzeLtv8/ZvySiWvol0RN0GJsblqoMee6tOQAn6fVFhY9yMKHp
	 XASzGtiCRAyfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C10D407A5;
	Thu, 16 Jan 2025 17:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ACCB594B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8CC8D610A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:14:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pHaWLT6R1ZLH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 17:14:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5EF6A6067C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EF6A6067C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5EF6A6067C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 17:14:42 +0000 (UTC)
X-CSE-ConnectionGUID: ERPB2nuBRSGufnOPuwswnw==
X-CSE-MsgGUID: 7evm7KgcSEWkqhOK1tzmcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41215570"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="41215570"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 09:14:42 -0800
X-CSE-ConnectionGUID: Aoq2/ffVRXa80X2v/ANL6A==
X-CSE-MsgGUID: PzhLvbtGR5yCAKWb0jsGNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="142833193"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 09:14:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 09:14:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 09:14:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 09:14:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=US99NIdQS9E/bSs46QpYlu+7mTyt+JU9UG7R6FXAeomt4WWZuNWdxHQpP9M+q5ayGjAOS2St/WIqnpPAst7S+i8Jx1b6hAEBzfmVuuZP80h8+tEH6CzpCJJAfg+FkqN+DBA8MLhTdF0/gGkQoGzBZSyWLTBoqYxQFLV1Hbo0fkCCcL99/L+9X+irj+2Qy0P84ydQbihFvBVaGVw0JyJmdW/PHzchx6lPexKglycaoEJ8bMlfx2lz2K70kwAARu1AsBBZjQrGrnZ7isUeJj70SoHy+IQIQ781ixO7ZSdAL6wDJQiPDqs/nOkEDBlJ2eb5Cm1ysMds2bumYbuyGuE9UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M+aVVWx6SBQQfu+i/IBM23HHkJ3ywZ8Dz6gnz7flbSo=;
 b=YEUohW851jzFhqOJImpc4Q2lld8rOGMLEXRG2vUztYwDdDZ3ISZTp+8BuCfmUxEUy1UP4x8t2WsqOP41fb8fSLekHNGTxT7bih0PHCieACsmy82tfHelTQoGVfi/1soACylWrR4o3e+d2L2O33hZ0j9ouEeyfLSGgKcEnLzz98VC2HH6JQbPd0wyjQle8whXSs2aiV7ihKNiSGXo59qVFw37gNr+e8z501+kBkhWjf8gFTC762CaXNKXp1rBe6GVp1NB2Jh248XjgZTT9bC3KeSZPw6ePaM36BqU0VgvA3fQXhVYvMzVjdC/75fr3hnuLstrzM8kPlIGBZnqxy9G3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS7PR11MB6101.namprd11.prod.outlook.com (2603:10b6:8:86::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.14; Thu, 16 Jan 2025 17:14:08 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 17:14:07 +0000
Date: Thu, 16 Jan 2025 18:13:55 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Petr Oros <poros@redhat.com>
Message-ID: <Z4k+UzQNu6flrRpO@boxer>
References: <20250116153908.515848-1-maciej.fijalkowski@intel.com>
 <20250116153908.515848-2-maciej.fijalkowski@intel.com>
 <d74ccdf9-a1a4-40b6-8b95-9f3cbe89fb96@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d74ccdf9-a1a4-40b6-8b95-9f3cbe89fb96@redhat.com>
X-ClientProxiedBy: MI0P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS7PR11MB6101:EE_
X-MS-Office365-Filtering-Correlation-Id: 74ece5f9-04f5-435c-eca4-08dd36512fba
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9qVFuO1MQtOp5curuaI6Vn+1joj2/Q6qG9+mhi5uPXD8QvkcT8/muOeJbmEq?=
 =?us-ascii?Q?y5Z9qvFaaTNzBCx4TyJg/znOToNTNMoZpe+2t3Sm8rNoETYXzKGjMf9vtS7k?=
 =?us-ascii?Q?X1G8Lr45TQsaJLI2iR0XmMUT+xqTtaGAG54BBNtcTfeVRytTfmyiGeb5fkac?=
 =?us-ascii?Q?T4HhBp5zFuv+UP7XtFIuKhrH8jLBv3lJpncT3wQOaGF9WxlkHYDdxhbUh9v4?=
 =?us-ascii?Q?lzPHmOHw3D0MNKORDN8KZCTtueBTnsvU+mYTfSEKh3R6afkPaOAsg80uiD50?=
 =?us-ascii?Q?fGaB9IlxoIsDlUMACq1EXtqU2Wev327KMseP/0LjL4nCLYb+dYjc3M4WvXM7?=
 =?us-ascii?Q?bV/MOsXn3bvBdVUVCg/zJ/uXtS1lPQJsVZztyEkv3Yw3cGCE32/usrhCTMLc?=
 =?us-ascii?Q?xsltGbErAKgM1SyHVf8tAs3KAMNMER2AF2+aja3dwJjsA2YgMpZKU8P8UvmM?=
 =?us-ascii?Q?rLtsSxjrYEepwile0hR0cN49KYmZxqj1KLge7VLe9kwbNliaabeOtUxkyfev?=
 =?us-ascii?Q?gBRqEMRYWLsaYRSfwVojpNNcO7WN53b9Z+JkTweRltpbRenoIuYqszHXUJMO?=
 =?us-ascii?Q?PUFFe7AoTs1aIBViEcwben4Z36TKdoizpSDRyGyxKKLxqz4F4gkPSHsb4wtH?=
 =?us-ascii?Q?WgBwn705CRDvHv2P3yfEkFlp7PBl6nRG4QqZawgoAX7ui5Y1Xrk+/2Sb4IQz?=
 =?us-ascii?Q?ctpVDIuAPrXo4V5z2LYYMfgw0WajIeFdMrce6kGEcQqxSLTV18vmsVZybYAi?=
 =?us-ascii?Q?NplSoXBB9VWc7WPBabDvQVzZrorcMawEyAM0RCs8qoRI7WPoYGX+wColVXg0?=
 =?us-ascii?Q?vjrZ/pQKOitefTxMPNXfKOPephedYzp088hfrp46cNXH1t0gtgFTwEnUnunz?=
 =?us-ascii?Q?T09dc5d0RvOJ5TX8kqKSnmrjiWmk+zR+PxKXZO0MuAZjW/H82XVOJ5A9IM+m?=
 =?us-ascii?Q?7c644TZmUT/WeLDM7Q/7KyE2slpnYj7JAJE5z2Ru7U1aIhQfSSmyvbRjfduK?=
 =?us-ascii?Q?2471TtMAGRLlsfxHmfyZDBKCk/vG+iXUjK0I5HqjOYTMezkn+m68/daFxo9Z?=
 =?us-ascii?Q?G1xq+moB5M1NLsCutabUddnq+5CFOR1Pxv+jagH0Rsl2JNvJFtw2VtN8+xe0?=
 =?us-ascii?Q?bWhi61jUu/5qWQWTsoKqDJ/TPPMD0GIQXh/U49tiT6MJtjFRqa0fV4m3muAd?=
 =?us-ascii?Q?zvcGpme73WBBSJK49pO5ybhfBb9SFuMQQ7aynIMG10WLAcUJoNkz4Y6C1aSz?=
 =?us-ascii?Q?kkmTSdnZgX3BQhCTR10VRf2jTB20nViYLTaSE1OP44gFPRwd9q+4+NFT/bjG?=
 =?us-ascii?Q?ZNtFvDmiXsoTJkWTeUKJ1PUJ58IduVM6AvQC7KwRFtbsh6CdvyNePhAOSsj5?=
 =?us-ascii?Q?x7DATy1lBGq7OhUYblq3RCBZpkKz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?10ns2N6NtPgykGozsAKXPvsLqwi2y3WCwyZEoj1UcZ8I5cvD5iSlY6KzpWSV?=
 =?us-ascii?Q?+NwDhR//a9uCjvicHGnohk4c4QEKo3n6HeBnaLaH+gHSfm3Lfoy0QVyaDQdh?=
 =?us-ascii?Q?WTzZinxAnsP0Fz8DZs8vmI920F95UxdtcH82a1wZIo6I751d49xJ1+540+b6?=
 =?us-ascii?Q?iI9WMaeG26evJwHCSbThLbis4wfqi8Y97VEgORN5J1pEOznDlPXY5ylR0RxS?=
 =?us-ascii?Q?3pD54ejCs8Y0UutXlIxZC+5Kj39r0kilKC4/Y78cxmurZYz71l4PzyRWGDd8?=
 =?us-ascii?Q?SOiXmbXvQIISgQxTaPC0cuiQjmonKWfHj3ikjUXzOqg74zyQEod+LTDneNMF?=
 =?us-ascii?Q?loQVuRPGsGOEppOwHzAsMGdaAi3S0jc0jinle2wDowXzkKS33IAFoZAm7z75?=
 =?us-ascii?Q?oFC/3NEIcB4e5pXJO/QAZSv5HZnGfh33DmjDiHyzJVqCJ4dulLMv7P+Trgcz?=
 =?us-ascii?Q?nyHgzUAP+2pIKSiH9qbXJmuCQZp1pfDSA741gSX/ai0D0CTB2gJzzawp+E4T?=
 =?us-ascii?Q?li9w3L1ojKjfLbTrz0FmZoIUsLGS8yYR9oT920nYlRSD9kAd/+ffbZALaBV8?=
 =?us-ascii?Q?rqYMMY152bOhiiXo8LOiRub5GKytnXSng78NGgImvleVGXZNl4y5YPvUdEMv?=
 =?us-ascii?Q?t/043WFh/018FpGayIqm+fp7opKtllo0P5OTIs07gJjaFIth3bSD/C+/iBrg?=
 =?us-ascii?Q?46OwsQ4JC4406MYufoo5X1yVe/dzJvh+G0qECOk903NXppjoRIFyiDcBfayG?=
 =?us-ascii?Q?0nHM5p8PmYoywD3lQo9ZwEIzPglydO6fQACKSvd8dMa7N4hNJFQXQ3IAn/F6?=
 =?us-ascii?Q?sgkHEIi0o4Oqzl/palpQlBpvwhnA1aHCBxv2bWDhTujGv2NAU17wEMzJwhj8?=
 =?us-ascii?Q?Wo9NG8Z/CItbuPCcvSvjMVp6L1DdDRcCeTWKavhxLZJn5LKF0qGLhTFOKjXM?=
 =?us-ascii?Q?viFhKbDORDBsB3X958ILs0GiDROLD/acPvVKID0ZoylHCTFhN9pJOE4mXylT?=
 =?us-ascii?Q?FYDMuHzJCsC/8x2e8yTq9v8OihSqTyVKDg7G7T2XMcqcvVrr5wriNACkf/7M?=
 =?us-ascii?Q?cqZhQnQ6XjO6ONKZRYbFxUMdWn+X3r9kaa3+dUWrlh40xojBaFaiPw/AFvYI?=
 =?us-ascii?Q?3x3XTSsCoiscKl+atEBNQotcTZnYdiStaTh1wacIYd9xWYoYNpCZatyzuFyg?=
 =?us-ascii?Q?ZhMbhL/1OoWcoy4ejxJKuhUvnWGUvt7a3qsWIZqGmArENnrzQPVmisnXOtVS?=
 =?us-ascii?Q?5bjVT2salqYfnyhF46m7y/NYGYqin+zr1xMaixUj8r4bDc4rOaCj1DYW7kM8?=
 =?us-ascii?Q?yJgklsPYCeiS1BrUSvwAlQrm+dZeLs9tAZWalpHPDYVVcIhHDBSipw07kL5q?=
 =?us-ascii?Q?532VT20r5BkOBUCcamrd9JI/YkLZIUaYNWvwhOjrtUe4tGy9MdG/Tl0IYksQ?=
 =?us-ascii?Q?1vBdFBOOBBnVvyEh9hJBhMuofL54X3aeEQu5ivl+JG9chHGD6yhX/HNitPjX?=
 =?us-ascii?Q?TfcjGlDbmhJIoA36fMw3pO/bzM22MmusbH0pnsdQOb5nfXcZmUdb++aW5EBk?=
 =?us-ascii?Q?EdmgzqLU5WjAIC0qg11YJxoEeyzwHyQAGJHtbwfDS+PhRsysvvdIXXH1llpH?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ece5f9-04f5-435c-eca4-08dd36512fba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 17:14:07.9038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xTNof7Tg/kFe8ycUR7YWQA1h8Skgfje6c1qKlbawg9S7YOqAjwXJLTyePHdOzYIDuw/BtVcUL8KkWjkSQ3x61VmBaJWhdA8IWs7sDfDsrkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737047683; x=1768583683;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZFPZnAx6ZOl8WIkZHNVc6KQiu4WOksD9utYD5whW1l0=;
 b=PuavY6RL1XeDJMuubnci+f8NhThNAMeUhUt2zJEYxKm/v3OVFy6ajFQT
 mmSZneVDspK82bHUhUAOlKT3RDewaT+vy/tyWGh3yPIGqIbA40Om4JN7a
 oSyJDKUIMT0viyg5wL7WPzYXoLZDYi5pJkFpQAfME98QI3XpbJXzAY9DA
 hQtbQz9Hp1XyyrNRya92gqKrHKH5NzV1Ro67Bf7LOlfy6NxkoD7E8UXJL
 D7Gsbyl1EEDc4DOSQkZ12X1OGxBfcio9jGRx+/cGAF8vOg8OFe45LEcvr
 ofjfG9SG+0LsZkmQn7mwP2CoNToqIxqg6FDTIL2sET/mrc+V0FFGa86Ai
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PuavY6RL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/3] ice: put Rx buffers
 after being done with current frame
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 16, 2025 at 06:10:38PM +0100, Petr Oros wrote:
> 
> On 16. 01. 25 16:39, Maciej Fijalkowski wrote:
> > Introduce a new helper ice_put_rx_mbuf() that will go through gathered
> > frags from current frame and will call ice_put_rx_buf() on them. Current
> > logic that was supposed to simplify and optimize the driver where we go
> > through a batch of all buffers processed in current NAPI instance turned
> > out to be broken for jumbo frames and very heavy load that was coming
> > from both multi-thread iperf and nginx/wrk pair between server and
> > client. The delay introduced by approach that we are dropping is simply
> > too big and we need to take the decision regarding page
> > recycling/releasing as quick as we can.
> > 
> > While at it, address an error path of ice_add_xdp_frag() - we were
> > missing buffer putting from day 1 there.
> > 
> > As a nice side effect we get rid of annoying and repetetive three-liner:
> > 
> > 	xdp->data = NULL;
> > 	rx_ring->first_desc = ntc;
> > 	rx_ring->nr_frags = 0;
> > 
> > by embedding it within introduced routine.
> > 
> > Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
> > Reported-and-tested-by: Xu Du <xudu@redhat.com>
> > Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_txrx.c | 67 +++++++++++++----------
> >   1 file changed, 38 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > index 5d2d7736fd5f..501df1bc881d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -1103,6 +1103,37 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
> >   	rx_buf->page = NULL;
> >   }
> > +static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> > +			    u32 *xdp_xmit)
> > +{
> > +	u32 nr_frags = rx_ring->nr_frags + 1;
> > +	u32 idx = rx_ring->first_desc;
> > +	u32 cnt = rx_ring->count;
> > +	struct ice_rx_buf *buf;
> > +
> > +	for (int i = 0; i < nr_frags; i++) {
> > +		buf = &rx_ring->rx_buf[idx];
> > +
> > +		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> > +			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > +			*xdp_xmit |= buf->act;
> > +		} else if (buf->act & ICE_XDP_CONSUMED) {
> > +			buf->pagecnt_bias++;
> > +		} else if (buf->act == ICE_XDP_PASS) {
> > +			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > +		}
> > +
> > +		ice_put_rx_buf(rx_ring, buf);
> > +
> > +		if (++idx == cnt)
> > +			idx = 0;
> > +	}
> > +
> > +	xdp->data = NULL;
> > +	rx_ring->first_desc = ntc;
> ntc is not delared in this scope

Yikes! That happens when you change things right before submission. Thanks
for being faster than build bots.

I'll wait 24h and send a v2.

> > +	rx_ring->nr_frags = 0;
> > +}
> > +
> >   /**
> >    * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
> >    * @rx_ring: Rx descriptor ring to transact packets on
> > @@ -1120,7 +1151,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >   	unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
> >   	unsigned int offset = rx_ring->rx_offset;
> >   	struct xdp_buff *xdp = &rx_ring->xdp;
> > -	u32 cached_ntc = rx_ring->first_desc;
> >   	struct ice_tx_ring *xdp_ring = NULL;
> >   	struct bpf_prog *xdp_prog = NULL;
> >   	u32 ntc = rx_ring->next_to_clean;
> > @@ -1128,7 +1158,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >   	u32 xdp_xmit = 0;
> >   	u32 cached_ntu;
> >   	bool failure;
> > -	u32 first;
> >   	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
> >   	if (xdp_prog) {
> > @@ -1190,6 +1219,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >   			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
> >   			xdp_buff_clear_frags_flag(xdp);
> >   		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
> > +			ice_put_rx_mbuf(rx_ring, xdp, NULL);
> >   			break;
> >   		}
> >   		if (++ntc == cnt)
> > @@ -1205,9 +1235,8 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >   		total_rx_bytes += xdp_get_buff_len(xdp);
> >   		total_rx_pkts++;
> > -		xdp->data = NULL;
> > -		rx_ring->first_desc = ntc;
> > -		rx_ring->nr_frags = 0;
> > +		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit);
> > +
> >   		continue;
> >   construct_skb:
> >   		if (likely(ice_ring_uses_build_skb(rx_ring)))
> > @@ -1221,14 +1250,11 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >   			if (unlikely(xdp_buff_has_frags(xdp)))
> >   				ice_set_rx_bufs_act(xdp, rx_ring,
> >   						    ICE_XDP_CONSUMED);
> > -			xdp->data = NULL;
> > -			rx_ring->first_desc = ntc;
> > -			rx_ring->nr_frags = 0;
> > -			break;
> >   		}
> > -		xdp->data = NULL;
> > -		rx_ring->first_desc = ntc;
> > -		rx_ring->nr_frags = 0;
> > +		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit);
> > +
> > +		if (!skb)
> > +			break;
> >   		stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
> >   		if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
> > @@ -1257,23 +1283,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >   		total_rx_pkts++;
> >   	}
> > -	first = rx_ring->first_desc;
> > -	while (cached_ntc != first) {
> > -		struct ice_rx_buf *buf = &rx_ring->rx_buf[cached_ntc];
> > -
> > -		if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> > -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > -			xdp_xmit |= buf->act;
> > -		} else if (buf->act & ICE_XDP_CONSUMED) {
> > -			buf->pagecnt_bias++;
> > -		} else if (buf->act == ICE_XDP_PASS) {
> > -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> > -		}
> > -
> > -		ice_put_rx_buf(rx_ring, buf);
> > -		if (++cached_ntc >= cnt)
> > -			cached_ntc = 0;
> > -	}
> >   	rx_ring->next_to_clean = ntc;
> >   	/* return up to cleaned_count buffers to hardware */
> >   	failure = ice_alloc_rx_bufs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
> 
