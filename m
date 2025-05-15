Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C08AB8325
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 11:47:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 488E440805;
	Thu, 15 May 2025 09:47:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d5xdHIktyN3a; Thu, 15 May 2025 09:47:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 835FB40BC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747302429;
	bh=dniFtf4pMkJyecP3wMo3SaAEZri4iVZcF6Q4cTqQ68E=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=312Hv8P0S6dC6eiaoaZZv1kGMgaN4Hi0tTjq4wFnB0R651LNtTD0xGPUeHWi0JbRv
	 v2Z8PSpr9kYs94ZTHrdHTN3Cqghsu4Q03kYmBjVHif/vlTvBh+5NW+knhgQCbfMkn1
	 JS8U+0Hf/8UD51ZbmG0AfK9hijfHW5glSyCznhL1FHpxa7mnAQLbrF9VvrJBgwyqhg
	 dV7S86hWikm2ZyhBZCGECF+uaihQDioUzHXxcySmgs2sSxoReYRb/RsELCcfcwnhaj
	 nDgkJwLbJvItq9okJNiLjhtnta1Eg56TioZ1TF5dE/ynzCFHKDjEaL9L5rv1XpE28C
	 KD5moiYV3nZZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 835FB40BC2;
	Thu, 15 May 2025 09:47:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DABF119
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 09:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0366480F85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 09:47:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZiSFvp2H5NoE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 09:47:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E87380E91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E87380E91
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E87380E91
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 09:47:05 +0000 (UTC)
X-CSE-ConnectionGUID: Kd4HVBYUSH2hun6jjovglw==
X-CSE-MsgGUID: Iy4AFIAhR0aS5Ik9cFH/wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="53040785"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="53040785"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 02:47:05 -0700
X-CSE-ConnectionGUID: OP9eTKngQ0qePjVUpg42Hg==
X-CSE-MsgGUID: 9cTrOAPVTouqMv9m14Z64A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="138369640"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 02:47:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 15 May 2025 02:47:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 15 May 2025 02:47:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 15 May 2025 02:47:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tM4XDTiv3+2qORb3oSdhV3TS1CUpuEuy6aRbdH++v0NJ3TgNTo0NUoQoPUB+ml+CtdBgHw3rbpFrzEfdT6u4mnD+zWa9xWpCqQwbwHAbCZSW+niYngQQisVHjHyeRpUnlhVJEJWupPG38bj6SUKl82Snnb3Zyy0JfQ8WLky6DNIzfbUCP967Fj0NGbiiABbQDqvDYR74qByMqW9TYUET7pOh5214yuKG5aaz7Zn+tojs5BrQMxZyLGRcsH73JObmH+VGo6vZkj/rMvUeE3fMMELLphnCjrBqHS+L+PwpMqe/5nYOEyeTv186W3En75f4+9N+ymEQlf+SCRxN54iXJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dniFtf4pMkJyecP3wMo3SaAEZri4iVZcF6Q4cTqQ68E=;
 b=qoTX+rEyNFD47LJvXiserWVRDEgZmeGz1JBwceuvLYYu0dyInkl1IVKRHe7sRDMioJoUsigVhDxT0DVy2M87jvBSbJ740LMI5gzR8rAo7rxuaxWv6cMJB66klS3GkPAkaDPzJff+SH4qM/Ho3zQOW+Dxz/QFV56kYFc5vq5i9xSZFTdN+/MhGTQF0VHjC4wkT9eeiYbEzTGXobCC7CMvKePDvmramE+2oL/uXBPIG2T3NPUP76VzEJrCPUdzpnmncb9LABF9msmOZdAgBKBgxRJTnlqRYJZ8aQw2CObpf73fWH/TZKTx8oOUWorXCL6Jdrzx67LyXeSAbKpbQLMmYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.31; Thu, 15 May
 2025 09:46:58 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Thu, 15 May 2025
 09:46:58 +0000
Date: Thu, 15 May 2025 11:46:52 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <maciej.fijalkowski@intel.com>,
 <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>, <horms@kernel.org>, 
 <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@intel.com>
Message-ID: <aCW4DDk7kUsAqCJr@localhost.localdomain>
References: <20250514123724.250750-1-michal.kubiak@intel.com>
 <c8daed51-5935-4070-8d8b-8994d348f746@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c8daed51-5935-4070-8d8b-8994d348f746@intel.com>
X-ClientProxiedBy: VI1P190CA0041.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::8) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ec3d75d-9eb6-4429-f457-08dd93956f2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?o5DqKlp8IX3x5bc/jSLe5HAe0dmxRpdcu6RAZsqF8Kxx/OD5MEJAnpMKl4Lc?=
 =?us-ascii?Q?C9/hJ1qVceL2jgoNl+ZSgXbQ7OlliLEqH2J4GKUgYX9XKDbAntZ20bf9gcWO?=
 =?us-ascii?Q?Hst2lcZMUxYC6Ldm4EzI6ihEJaooJnao5bFNdM9ZT/CGLpMoDKnhHfpnDuI7?=
 =?us-ascii?Q?mxYfnjrl+/fSLMZIEaiCVRGWdkh/gUz9GigYUXDQbcFumZ4PQVftu8KNLggV?=
 =?us-ascii?Q?fOsiD6Q6ZurzwU9DRjdjoy6nwpYyMob346Av1gznj7XujrrLDNfGHVIOO24M?=
 =?us-ascii?Q?w4XfCy3EfacofI8dOXOPMyHF/dsPNAagI54qpLfy+UMy8lWhzexYH+mYY9WV?=
 =?us-ascii?Q?I9S5Hh9GcjZpQ4Xx5oJGD0oojnVAmRG6NFkI2AHD+vFbwyO0t6bWI3UjX7A7?=
 =?us-ascii?Q?e6SqF0PLOwvtcdJcsQCJsrDSGb5N644nk68N2+FgnEVzOpOuBFuPziv7fJqc?=
 =?us-ascii?Q?Q+7uVGY0L1qIY5rpNkGVoDlKaLwr6hyiunZGoEb7gKOCrLa8Sqd1vK4URuAC?=
 =?us-ascii?Q?0FBu7QeYDFMKo5quYxL8U9adNhyqcHUIC0+GUu2nZwCkm+gFsMoHW1adUfco?=
 =?us-ascii?Q?tOmUWH1ikBa1p7KF14uZNGAnwwoS31bjE+RuDEbuG0c9khrITJvr+s0xrOaL?=
 =?us-ascii?Q?reJeQh9OTCmz1aPEFHfW05nyr6hAGyf+XBzHE7wy7wXqjXwWsnfPC+4U7ZAm?=
 =?us-ascii?Q?90VliIAtROqUianHfbYib0paGgwRC5zRw6Vdl0/u6pRwof6PdOsAppA/wd2V?=
 =?us-ascii?Q?ZXUnAa7HcB3rR4gQyXaHSMPgcuAvaVhrYS33r4BAEmhoAEIhPtB50+Y4jFz2?=
 =?us-ascii?Q?GSsAEUCx2mBB8Mi6KOLo1proKR2O6mrDX/g+MCS9lpH/PMXlkLfxcPeSTe7r?=
 =?us-ascii?Q?MazkfaK/77Uhpdep1tC6yXixw3og/C8mit5dUC8pjp/eRcVXTxYOH5TFGkQA?=
 =?us-ascii?Q?54zvhKP/jLBjqGPseiCCTJ7IGe/8iiGXA8U+Vz1h9ycSw++F5054I2XW0lbx?=
 =?us-ascii?Q?CeA66JdJCQ01dy24d7YNcXetyB0rG/galzTaTWaD0ETF1ruZyJmYr2+c+nDt?=
 =?us-ascii?Q?gV/xw3EJz/1xO0nnHIFCuGWJA4EaD30/7/fE11G9AGdJaae9SnL39Jl2B5ej?=
 =?us-ascii?Q?8eKChYlelklFP+h7erEpJ0bf8kVcqB4STHuKDAVEd5RFDtDKBOoKB2M53w7t?=
 =?us-ascii?Q?WFy/DeG1YA8x3HuU3MGdoL5o6ttddTs1j177RyGIQrWf6SZycmqABuH1ZKug?=
 =?us-ascii?Q?v76IjFSUXF3Sxgs7BZQEIg0fYPwO2MFYBUY1uRaVgAvZLKx/tLAgaWy95MX0?=
 =?us-ascii?Q?DdbBQjK599e7V6dV+Oy7fi7yff0tpnZBQUG2694bbl+ch5rYizO7vzz4fwF3?=
 =?us-ascii?Q?3ZiDJdv7+5ffqpwXQz3YKJQHqBasf/auNTW5UZXlV4dNp7qhWQ5I/YV2A3JN?=
 =?us-ascii?Q?LS8iG6VoyCE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MDBNmM0gO7Q0m66FYssN5mko85LKXaTT/CWpAXXAWnk+wO5tB0SILj2u3xyp?=
 =?us-ascii?Q?rVqGbgnUteYtigbupsObzmFbtOvCIcLF8irnMmYVshYWhj1RuCrJ0bs6VzKI?=
 =?us-ascii?Q?4Z4cZV/IOjZ+kHSCPt1r6oZzY7hah8C8i3JMW0osCzpKjnWWU7uhMomwGOKg?=
 =?us-ascii?Q?fbw9C+JA94NmiQINyflEsjzSmLM83/7uR23OeWiqiMO94Ir+BZsqS2AxbWNA?=
 =?us-ascii?Q?im8s8WUYCMdC7rJavfIVHZM5UuTcS5ZQGG8+Wcs9P9SDaLG6iTkOVqCG9bdc?=
 =?us-ascii?Q?IvRY2u4b3QXVHNH39BGD2tCqcTLdlg1QFcE9qMofWKTP9T9thZcBzy7rqbXN?=
 =?us-ascii?Q?tY1cqbMA7oHP0DxbgOd+nee6l43U0LtdbG3rjOSBMCzKxCgKsM0B5emL7loW?=
 =?us-ascii?Q?SqnZJi71g1gIqw0f5ksfvk+186aFLJDSGSgz05ehLjLXD+aPCEOhbkNZe34y?=
 =?us-ascii?Q?qJkt56aZD9PQN81TADr8WPU9fwleoKxz+S6cSU6Vl07yZOe0sM+N3LBkhTbx?=
 =?us-ascii?Q?6p8xWW1zmxQDANkt2oOaoxJgpH97pWjWo0XioCNMNo7rZmN7HaX0csFsv19y?=
 =?us-ascii?Q?09s0Ms3hJZdXU/LPg1YJA7kNTpNmlcS/23RWfBfTyG7Z/zumptyxuomDuEt7?=
 =?us-ascii?Q?SS5RBD2bzynnqrgWqXFDw/+qbTZzkbLGECt/s3aNLphx/BK8hvaeShjApm3M?=
 =?us-ascii?Q?FOxjYLBPLjvnMZOpyTm+0t4f/MkkKMjm17UNMV10BwYvvBj9H+XVlkrxMi37?=
 =?us-ascii?Q?NZfxp/3x3rnOM9RdAP+mkprMnWsB7ZX03pCnPchgek+GOAYBegumZOn6nm0A?=
 =?us-ascii?Q?0wlLJfQPFSyZsZJoCFz+die4K3KIGD+HcT10TnkdtdmSEdvs8ydhFvTRRytv?=
 =?us-ascii?Q?rW8JP8GV2EMFOje1DOIqIl7nqDLEcjSWQ0vZmaafMAUwkD4fVXh3g4B6StN7?=
 =?us-ascii?Q?nXU1TXbpRQvaATPXWaYLFE77dqX1Tg9OedqHT09CTpcHPon5tkOdnkm/YxQd?=
 =?us-ascii?Q?1FoUWHYot56YKG6v2jkjwhJMvPrXBHjn3f1DMvyfAsYAZej4nkLDVK/G4nEi?=
 =?us-ascii?Q?+PtQVEZOrBA7x+H5ltG7fVZW4aDDkPq9qfSJ0eiRZNBtcpyYguXmHNft3LmY?=
 =?us-ascii?Q?7OdrZChAgRN4cy2HUultM6YpdrhIbazBievA6SQpqcbHxRSa+W5zolhFZekd?=
 =?us-ascii?Q?DoEFtz3SIdAr8gCqUg9mP5fIcHJtqdXAy2RQKsHPyy3YdUJXzazkeFrK+mKW?=
 =?us-ascii?Q?oTc7VIryZI+4oT1i6BqMGunhYAXB7gcIkfU9H+uVArTxZxjAlQ8PiWaRO/Gt?=
 =?us-ascii?Q?lh5UAr8kjlmIpZK9zmENTT7VGmT+Gswob/QpjvA1kLf0mybsrlIEL9rD2ydK?=
 =?us-ascii?Q?VLgLFGoaORY76CGXSijdoWWXJIrEid73LAA0Oxv8yXRwGUFb2JdGAZnRnIXK?=
 =?us-ascii?Q?AxrEk5aSTpDTmjaLg5SpsKOwAhrBouleNFEO3NbpZAgs7lhw798Z4IA0dX4z?=
 =?us-ascii?Q?sXYyrDOI16zRg5KlOafm8i/YAuYqZwVKGJHIcH3q4/14EDfcNMLDC+ZbLexI?=
 =?us-ascii?Q?5jwFGpIYSBgWRordO1zK+ZkapBzJeMAGfyKR5u7pYRSPxL/yYXqqLYndFeEK?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ec3d75d-9eb6-4429-f457-08dd93956f2c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2025 09:46:58.2824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z/HPhEpqlG0xdNWt3TfaXgmp+ElgNlV8dMz2EvKcW93a80clswfswBDr6Qc+nIoqhGb65Eq/+eSSr0TCyIXelg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747302426; x=1778838426;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zWJybk5hhQSNNmKRr2HlsEkXGKujrjxOMHsS9tIZrIA=;
 b=OsFARh0ImuHoS8iwNFzuDhg3cAGiU/b1gfHXnZxLb63v2lcaS6pUqEx8
 AmQJNG5enkKJqR/dyektUJWrU35eDB5YZWHa0NjpMK+d4cDH4gEQbij6R
 8dFvPB/WIuFFHIeOGg2vg130TiPZ/i6uo+MXj8sxwU3ja/A1zhCotx4iD
 Rm4djpBf1KpefQPZK7TCMBP/BuNAxcxaeAWQNRLElQDB71YJrYljU63GW
 xRz7xoNvBYi1wCQRZwBj89JLezva3JQl/jkoT6TfQTBnGjwlCJIh/ZRpx
 rtKQtApmSx6lWx8e68K7u2Tw+zNXPZZQ9DNesFLiPvJFSZ4hmyKdAOESe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OsFARh0I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: add a separate Rx
 handler for flow director commands
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 14, 2025 at 01:50:22PM -0700, Jacob Keller wrote:
> 
> 
> On 5/14/2025 5:37 AM, Michal Kubiak wrote:
> > The "ice" driver implementation uses the control VSI to handle
> > the flow director configuration for PFs and VFs.
> > 
> > Unfortunately, although a separate VSI type was created to handle flow
> > director queues, the Rx queue handler was shared between the flow
> > director and a standard NAPI Rx handler.
> > 
> > Such a design approach was not very flexible. First, it mixed hotpath
> > and slowpath code, blocking their further optimization. It also created
> > a huge overkill for the flow director command processing, which is
> > descriptor-based only, so there is no need to allocate Rx data buffers.
> > 
> > For the above reasons, implement a separate Rx handler for the control
> > VSI. Also, remove from the NAPI handler the code dedicated to
> > configuring the flow director rules on VFs.
> > Do not allocate Rx data buffers to the flow director queues because
> > their processing is descriptor-based only.
> > Finally, allow Rx data queues to be allocated only for VSIs that have
> > netdev assigned to them.
> > 
> > This handler splitting approach is the first step in converting the
> > driver to use the Page Pool (which can only be used for data queues).
> > 
> > Test hints:
> >   1. Create a VF for any PF managed by the ice driver.
> >   2. In a loop, add and delete flow director rules for the VF, e.g.:
> > 
> >        for i in {1..128}; do
> >            q=$(( i % 16 ))
> >            ethtool -N ens802f0v0 flow-type tcp4 dst-port "$i" action "$q"
> >        done
> > 
> >        for i in {0..127}; do
> >            ethtool -N ens802f0v0 delete "$i"
> >        done
> > 
> > Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Suggested-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> > Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> > ---
> 
> I assume you meant for this to be still targeted at iwl-next and the
> iwl-net was a typo?
> 
> I'll queue on the next dev-queue.
> 
> Thanks,
> Jake


You are right. Of course, it was a typo. My apologies for that!
Thank you for your vigilance and double-checking!

Thanks,
Michal

