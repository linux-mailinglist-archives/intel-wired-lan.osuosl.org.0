Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IeWMtNCn2laZgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 19:43:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B5419C64D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 19:43:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 621C884758;
	Wed, 25 Feb 2026 18:43:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSN67GTVL_mt; Wed, 25 Feb 2026 18:43:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0B4984732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772045008;
	bh=VZC2+i65ZskNGO7bz2Y4pKDZo/3lBAnjICShAJK8TkY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bcH1nkgvs+PYnDIxf6kg80LfKnnhNIfP/xWyaeMqz6w34RBhjPqreI+R36FP00KNZ
	 n0Eb4RBmIE8uLbzAhZgjS4qZLLZncgNPLYMlx/nnNl0M4LWv0E3UdmaLF1JC8MqO7O
	 Asvn41T6ZoxKAltpNeZh8qdhINjDYCP3KLM5ncUaxFovbKsE3MGimmzSNzWuSGiSqP
	 HnNL64xULBqhGesVf7JYnyUEIMxbGkyWKukYk7wdwyn2+cORmQMuN0+DtA29KqBX05
	 q72I+e9FjKAMPtsivTN4feJQjoSmD6JIPjGXicTTNbJXr9QXmTTY45m6EQWqFopboT
	 VIoQvfiP7hopQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0B4984732;
	Wed, 25 Feb 2026 18:43:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6141524E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46CB841F4A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0PPmj2Sukkee for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 18:43:26 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CB1040C19
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CB1040C19
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CB1040C19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 18:43:06 +0000 (UTC)
X-CSE-ConnectionGUID: oDuFa+B1QmWWEMZRvMRFNA==
X-CSE-MsgGUID: oThw9DmFTkirZApomFX32A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90676791"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="90676791"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 10:43:05 -0800
X-CSE-ConnectionGUID: bYShb2H+TrCAGRaXvH+a6w==
X-CSE-MsgGUID: /6+nmV+ESCelJQ+Ua9g+0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="215078564"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 10:43:05 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 10:43:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 10:43:04 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 10:43:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Orarud7qLaedFUDz8hSMwYWLbXSlq47YAHkVm3C7owz8E79+RO6YWzQziUKFDkHpJQssdoul2X5o4biVkMcWZO5gp2GFUWymkGWqAXImI7mlpHY9PFPf0VEu7MNqiEGW7rGlE9cvdrmK5DwFqwD5c4mAKIea8hG/UEPvveO7/gI7PTuPQ567ZR4Loet+h38teF0/CEkdKaB0qZPfOiBataJV6moelkSedFUsCSKWWnqsf7ZfAnERJlVrAb0HAG1pQ/fAmmIIMPfniS0IC31OhrQjrxeNftj8X0aDEk6o8U8Y4eqzJlKrSaaXcm6SbAdqWsLKvt6eEC1t1OvJfVm0ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZC2+i65ZskNGO7bz2Y4pKDZo/3lBAnjICShAJK8TkY=;
 b=ukBtzpKRFzN4rDYG4UjAZnAJiMsIgPMWeZAoiZVq4UMknUu1xnA/n3AOohBq2j35jozk+MY9u0vnR1whFiQ1gIl4fMSBCPV1+zCddSDsMQvHRxhf3KxGQZvk3mDIeK3BPj45g993eE01Naan7CS6DQ5Sa6xcXdP8FsejG7BL6JdQVT+jRjV2h8NomMUobqK0jnRYA1p0e9Z4xLwSr0/YdphnQtR1XknT9joJhcGSy1a8EsJ5pbON++itLDoNCacR6lbYm+yDawLwHHVSGIOd6emuj1spj5J4yrc2+NIiS2YmQN3O+Ot9lbP5TiyWB8SnuWACyb2ZqrgY/WJ88ruzng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SA3PR11MB7654.namprd11.prod.outlook.com (2603:10b6:806:305::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 18:42:56 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 18:42:56 +0000
Message-ID: <de1e751c-d8ef-400d-81fe-12f9b7dd5bee@intel.com>
Date: Wed, 25 Feb 2026 10:42:51 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20260220004027.729384-14-anthony.l.nguyen@intel.com>
 <20260222162835.23954-1-horms@kernel.org>
 <842bb101-d73c-4470-a01e-f49f96847370@intel.com>
 <20260224161125.4dc744eb@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260224161125.4dc744eb@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P222CA0007.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::12) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SA3PR11MB7654:EE_
X-MS-Office365-Filtering-Correlation-Id: dcc79754-48f1-4a9a-5ca4-08de749db0d8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 79S5pNhSp3+HlT1+QP4lHScj8c3v9LxzKPGT8AazrHwhcRnmylebTqmPwSScd2p8hPtDLw2tkiPGp7qoq4VNNmJ/2nKBr7oNcEHrcC3d1XpSGVe9C4vcThwRMbPX9XNXnTXq8TstiW8x9MIBI8D/eXZ6vYiTXMRJQ1165wnzK5OJT2WYFkf0woeoXF4MyKLWC7eM+O6ioCTazGG95EaLfCNWb1odI5ykM3g0UFHyjqNo/ypypyF+PQAWPqOFWmAjO0jp/2s5MmHbQ6AkJFi4jJG/mYRcen1nZtiN5p5lW9CUqrf+9GSbIqvgGEHZLlWGTGOnpGaEggbuQ4BWcZu4N3/h14bGf/5ny7WCI73OvMudnLAjyFhR0ushNdBSND810VXCIiBvRKEqr9jmt+KD9BMmd/WNtGSJsMAUqxvxyEnFgJhCujcOpbjxs0xBTqMTnvaKH0a8E2vhZSixZCnZbK4HrzwLFY4PaU41GXYK7P2DJWprF1CcFD73qF8qMnPzjvFk6AuItGl+pKUeslz3zIf/UzUoJbtOhcGYneHhhcyNxTPElfLq6VHyt1RZqrwdZpVQKBR9Yl5s1xE9+rrGBfUyH/s+VUTbep8O44HlFfVlU8xdC0N6ht24mrbLIMUpzQTtEXuUUzm8OujtdPXSo5s7icQ3dBkXDLqhvJPh7tccnBWdkaw/NezVq2OeEeJT/zgbpPdvrVOUHBOREjBtW88r1hoG6bsZytgNoRT6+M8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjZPcXdiRFpwOFA0ZzV0UGREZnFUaVM5UkFGQkNhclp1OXJpMmZod2g2cWlr?=
 =?utf-8?B?UFRGR0NKM253VStxVTRXZ095ajFhaXJTVnFUUUoyTlgyZHRZRk40UzBuYk9J?=
 =?utf-8?B?aSttU3Q5SnlNcWVJTTVIbEwyMGo0cFlYdjg1dVpSQm5XVEtnMTdES1pSbGY1?=
 =?utf-8?B?VXA5elBTdTJ5WVN3TkNqRWVQYzdMMXBhL1QzVkg1YWhxVEJKaXNkTHlYZUFY?=
 =?utf-8?B?eEZvd01iNmR0eEJ0eE1CY2dEQjJlK3BTSXQ0MlhYU3pzcVlweVIxUGxZbXU4?=
 =?utf-8?B?VUlxZWpxdlJPNGZQSDNadEFJaDJhTlZrRGRYUTR3VjYwVzFhZjZ5TmVweWQz?=
 =?utf-8?B?eUNLZjJGaFRPaHRHUmtLOEJ4anQ2VHFHTlVVTytBU1ppZDZNRTdnU0cvMUt5?=
 =?utf-8?B?bGcrWjQxYlhWZEk3RWV2eG02N2doVlZOOTZIQThkZE1GSndtQ29oT2FQSEMv?=
 =?utf-8?B?aWxMQkdQalB0V25DcmNEZ1NmSXJJa0xMV3hVYlFRQVQyNFNYK05aN0RRRmdV?=
 =?utf-8?B?NngzWUhHUU9YU0hCODQ2T1IzQnArRUxwT3JnRUw0UlZVWWxxVmlacERSM1Bt?=
 =?utf-8?B?K2tPbGhoYWdORWVscW1HWUpmRmFGWDFhR1JoWkxhMG9vOHZqYVBTb25jNWlz?=
 =?utf-8?B?V01lZUdETnF6OW5QTVFSdlVjZ0VZbldrS1R2UlF0VXovUDdHbWE5S1kvZTZB?=
 =?utf-8?B?VDlBaE0zc1JUQVgvbkRUeWVnaGRTZlJqS0QrRkFTZEN5ajNFdXpIQVVsQ2xZ?=
 =?utf-8?B?VVNweldPeWc3QVVKd3ZXbXNpekYvWGthVmNPVThHQ0VjeTNOblBvV2Ric2Mv?=
 =?utf-8?B?dU5aTjRYNUxqNHdLS0ppbXA5b2pyZlMvK1RTY1VVVFE1TFhaa1ZSaFRCZSt3?=
 =?utf-8?B?QXBWRzBJbDRnOGZTL1M3RnFORUNtRFk4T09ueWVrZDBqWFdOYTd2c2c4WlNa?=
 =?utf-8?B?ZjV4OFA3RDJEbXhUbWZpK3R1WHN0aUFrRWJ4SG9aMXdEc1RjZVkvWVgzZTAv?=
 =?utf-8?B?SmNFdzMxamVtVlRvTjd5bU01a0xEaG1nY3lkaDFzaFhyV0RyV0ZvclJBb202?=
 =?utf-8?B?Y3ZnamwwaEc1cjhwMkVnNGJCRnpFazRjZElaRk5ZUEh6QmNFUkdidHg2cm1E?=
 =?utf-8?B?V1lUcFhTU1R5MWMxRnp4VUhjdjBiRzNkUGFMWlJJUGgrRng2V3hhWm1YczBo?=
 =?utf-8?B?bUMzQXNSZW83Q2xJTm1LbHBjM1pXNlo0aVk3cmdTdWd2dzQwaU1EamI3WmF2?=
 =?utf-8?B?dG91ZS8wTy9FSjJPdzI4aFVHZHUrRnBsTzFleGxybHhHWnRNc2Z3OExjTkla?=
 =?utf-8?B?czFUV1o2M2RuWmpVM2RabnZBenQ2V1VMRnhMYTBMaEVPNnJRd1VRSlcxMU1l?=
 =?utf-8?B?b25vU2l3QkN5ZDMxdStIVEc4WGU3YmpSZXNheXFPVlVlY2d6MzB1cDlSTVR6?=
 =?utf-8?B?N3FpYVlBSnd1U2lOUk5zZ2ZEL0ZiUStjRzVhY0dUWkJRbzd3dGpmYm83SG1M?=
 =?utf-8?B?U1JTYU05NEwxSkw4bWZGZEFKeTQrM3NrcWY5aXBKa1k5QStibW9OeHZpMmRX?=
 =?utf-8?B?bWl4QlVCWUEwMHhlbzdrYmVKczBweGErMFh4VDh5aW5TS1FjdFJRYzg3K21i?=
 =?utf-8?B?SElpODRHY1ZPMEliVXBjZDdJWkIvTkxHWGpHckNCRzVUNFhtMDR0eUlHTS90?=
 =?utf-8?B?R2F2cHY3VE9KNGZtc0U4YnRxRC93c0JMcG5FK3FFNldxVU1HbU5JNlZmQkUy?=
 =?utf-8?B?NWdESklGUjJQU3pQVjZXMGFUUUN0MXExSG5Wd0FZR2J4MU9Cd3hnMlloZTYx?=
 =?utf-8?B?TGQ1UE9LZW9haUlsQk1HaU96cTRNREZ2bUZrRmxpZ0FmRHRaUElGVEt4cGZU?=
 =?utf-8?B?TjFaMytsaWgxbG95bVRHS1dLRU9XZTVTeWdTRUlCT3lGRzdOeXlobHRkTElD?=
 =?utf-8?B?cHZpOTBxcWdvR2pxc0dEdDhnK2s1QmJjOEJJRndQc1dzcWlOYjhIR3FsQnM0?=
 =?utf-8?B?MTJvWDBZSzhuK1VVVCthM0pSbTNiaWpaZCtqL0dWUkxXSEVGaFNZZmJCMTB1?=
 =?utf-8?B?akdVZzZab1lmYkYyZ0wyTzJ3M3NrMVhpWHZBblFubm9vdFdmRW1XS09Delhz?=
 =?utf-8?B?UUwraVlxaHJqdHpzam4vUkREUWFwSXlzdy91WjB5Lzl3d0pWKzZkN1dDaldx?=
 =?utf-8?B?d3R1QnRBWFFKc1VCQzZudlJLeldKUGdtS0JMVGxPaTBmdm92c3ErWTllQUFF?=
 =?utf-8?B?dzhnT2ZqdVlobzFkRGVJa1FGZmdZckFvMFNrVHJoMXNxSE9mTStHV1F1STg0?=
 =?utf-8?B?bGVJemg4ZUxTWGNXczJxUUZ1Z3E1WEVXckcvbUF1NHcxeWJxV0VKT1NENDdX?=
 =?utf-8?Q?khB/3jbQGfP8QXhg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc79754-48f1-4a9a-5ca4-08de749db0d8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 18:42:56.1287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jk3RKQjdenjEBrDsYbAoFcaFSfT9I254YOJltWZwxjmEQYNYc4tpGAKH/dyyt4GZknCbAXCnPqq9C/UiBgoeXW17qh79SXa5eqN9BMqkgvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7654
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772045006; x=1803581006;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3luG2oVwMApUp5casm9W2Wm8KORBhvQTDUSLvAI56Ro=;
 b=ezjZdyoPnyCwTb3X7NBowub2yV17OyxWgtUBCtGJ9G0ujjj5fatExhep
 VbkJSkyRaMp8Yth0SyyKuKpvCY5wzEpHf9HAuYaThJNJnwtWvuZg7v9cc
 VJs3I1XwjQIavS2nOKHsdeR0aS9vB1bYhqLbNACKHH5cZrjoXJnIS0Mzu
 pytdJJjAy63UkG7VLZ6fw5IVl2YL3iQke+j8CgS0Ocvz9gV4ijkFPLE8W
 70o0SNL0SHZ1j51Pjy5ELNq9jCkZUYgAx9Q+YQ3tTyf5atlrRnavV1YLr
 Y2KfLuX6d4L+f5vLmi67VYJhvFOJ8BLHVFZzedMlOdfoKk9JXa3miKEST
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ezjZdyoP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net,
 13/13] e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL
 frequency
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
Cc: piotr.kwapulinski@intel.com, brett.creeley@amd.com,
 emil.s.tantilov@intel.com, sx.rinitha@intel.com, brianvv@google.com,
 jedrzej.jagielski@intel.com, edumazet@google.com, boolli@google.com,
 decot@google.com, avigailx.dahan@intel.com, joe@dama.to,
 przemyslaw.kitszel@intel.com, Samuel.salin@intel.com, en-wei.wu@canonical.com,
 aleksandr.loktionov@intel.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 david.m.ertman@intel.com, pabeni@redhat.com, pmenzel@molgen.mpg.de,
 richardcochran@gmail.com, aaron.ma@canonical.com, sreedevi.joshi@intel.com,
 willemb@google.com, netdev@vger.kernel.org, joshua.a.hay@intel.com,
 stable@vger.kernel.org, davem@davemloft.net, andrew+netdev@lunn.ch,
 tglx@kernel.org, Simon Horman <horms@kernel.org>, sridhar.samudrala@intel.com,
 vitaly.lifshits@intel.com, dima.ruinskiy@intel.com, rafal.romanowski@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:piotr.kwapulinski@intel.com,m:brett.creeley@amd.com,m:emil.s.tantilov@intel.com,m:sx.rinitha@intel.com,m:brianvv@google.com,m:jedrzej.jagielski@intel.com,m:edumazet@google.com,m:boolli@google.com,m:decot@google.com,m:avigailx.dahan@intel.com,m:joe@dama.to,m:przemyslaw.kitszel@intel.com,m:Samuel.salin@intel.com,m:en-wei.wu@canonical.com,m:aleksandr.loktionov@intel.com,m:michal.kubiak@intel.com,m:jacob.e.keller@intel.com,m:david.m.ertman@intel.com,m:pabeni@redhat.com,m:pmenzel@molgen.mpg.de,m:richardcochran@gmail.com,m:aaron.ma@canonical.com,m:sreedevi.joshi@intel.com,m:willemb@google.com,m:netdev@vger.kernel.org,m:joshua.a.hay@intel.com,m:stable@vger.kernel.org,m:davem@davemloft.net,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:sridhar.samudrala@intel.com,m:vitaly.lifshits@intel.com,m:dima.ruinskiy@intel.com,m:rafal.romanowski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,amd.com,google.com,dama.to,canonical.com,lists.osuosl.org,redhat.com,molgen.mpg.de,gmail.com,vger.kernel.org,davemloft.net,lunn.ch,kernel.org];
	NEURAL_HAM(-0.00)[-0.932];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: B8B5419C64D
X-Rspamd-Action: no action



On 2/24/2026 4:11 PM, Jakub Kicinski wrote:
> On Tue, 24 Feb 2026 14:59:36 -0800 Tony Nguyen wrote:
>> Yea, looks like we need to do some adjustments here. Also, the AI review
>> I just ran on this is reporting another issue that we'll need to look
>> into. I'm going to drop this one from the series to not hold the others
>> up on this.
> 
> I'd sometimes apply series partially for y'all but FWIW the idpf
> "defensive programming instead of proper rollback" patches really
> don't make me want to interact with this series more than I have to.
> You don't have to rework them. Just expect some delays, I guess.

Hi Jakub,

Yea, when we reviewed them, we tried to come up with a solution to 
suggest that wouldn't need the added checks but couldn't come up with 
anything that wouldn't require large amounts of changes/refactoring. 
I'll send out a new version without this last patch 😐

Thanks,
Tony
