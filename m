Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLfaD9QphWmT9QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 00:37:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 928AAF8603
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 00:37:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB1D28429D;
	Thu,  5 Feb 2026 23:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqCIPQEIwO_a; Thu,  5 Feb 2026 23:37:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B26148429E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770334672;
	bh=uIzP9UY194DJdnhOmOxn990QixGeK0sHWnWtZRJPZuk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8QFvghpZmd4ybUgRhMeDt7zDOuwZ1mk0h7VyTuOseWm9xC8MVTvPuW9EMvlBS5bKs
	 +l38dEvPzPS/ByvqQwbmL83dBbp+xjOm0kdS99IrSTYKWW1NddcwOuqTLgc+fAoAa2
	 bV12r4rxEtgGtD9TYaMDXC6LNNC9ZS2hDvbkOtEQ3byUuQi2/RilkD6lwBqh/9/l07
	 LwF3XWyJixscIZrboUxkSExWvPbUW/6SD2MJt8gE01n/S3gQMaVrXFsM/z2JqSSCDi
	 rqWYCogVeSQs7qlhPx6hxpMUsLJTb+Z/UjlETDkaCxe3wzv2uRcUV7x6VwTpVlc5w0
	 MZOGt3Kfdb7Mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B26148429E;
	Thu,  5 Feb 2026 23:37:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA9FA173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 23:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8FA364083B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 23:37:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oQdRw-gK7LZr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 23:37:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9CD3E40835
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CD3E40835
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CD3E40835
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 23:37:48 +0000 (UTC)
X-CSE-ConnectionGUID: zSz8vQy0TouvVqGpLT9tvQ==
X-CSE-MsgGUID: WeoZ5Eu5RiWHztAdESdH4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71272033"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71272033"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:37:47 -0800
X-CSE-ConnectionGUID: 3ZIKqmWXTWeo3XZEVCHKCw==
X-CSE-MsgGUID: j3tJYun0R4WeKt8dwld6EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="241249116"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:37:47 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 15:37:46 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 15:37:46 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 15:37:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=epzhNxXBkhvXzCxBZ8dJzOg0y6ZR+7U0zgbi5TaI7MDd+X1ZsRYULWcZO2EDUI66o+/yDdH0pDflb+4SXSifcs7XzROhj2c+GJGED3g0zquVlzXzGSXzA1YdwjgI92kN25zNePc2oGMoxCmbVStZvRRHJMAJoQviCcGSLwq29/DI72FimJa8MEz0yAdXV7ryanzyZGHQdh2MGHIArSBB7YOYlVPhfINs8X9io71Ijd3FntiQlbASNFWRGABYz83rKUMUL2qEmVQzDGYQPx+ccqOSf4CqJVeeYclvHpjH465FOcDMUuDec3/xyFr5K9WufmlqWC8F0cYYOSF2s2tpbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uIzP9UY194DJdnhOmOxn990QixGeK0sHWnWtZRJPZuk=;
 b=v+QS1SZABsgBoTtx8PtiwOvInhMPJJZJk0BcXVdzGk2v4FMwo8TjE5nhASnXyEho1Zdiy/YvF5mk9i6mVed4t/xilZW18TNDFPlu6R7IY/fyWqk3xqUfGWDB0M07zUv4fPcCszT92kpcuHul0Nyu4mwBp3qX8446SNlE06pFa/aqQSKpRb+X0pQxaLR+LYbWJeudCQxpqWsr1SOTtNeyisXZEH22mLeIMDTT87NQ2B+jEjiwXtX0L7/GCrHaHnvZEBiPVh3mis3+RxF+tE+Odxn7AhWOzqid1TnSVAVb2VuLn4OG+7koUue22CR1x8yLyVJYaRVzGB1awHUBF27cjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 IA1PR11MB6322.namprd11.prod.outlook.com (2603:10b6:208:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Thu, 5 Feb
 2026 23:37:32 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 23:37:31 +0000
Message-ID: <d60cc9fd-70af-40ea-9023-78bbbf91766f@intel.com>
Date: Thu, 5 Feb 2026 15:37:30 -0800
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jakub Kicinski <kuba@kernel.org>
CC: <ivecera@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
 <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
 <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
 <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
 <79960c2a-26ea-4472-bebb-4657fcca2255@intel.com>
 <0e17cadc-5cab-44f2-8998-67ecde033a06@intel.com>
 <fd06e5b3-c4cb-4725-a04d-dbc4839e88ea@intel.com>
 <07755837-fb92-40ce-bf99-7d941076ee62@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <07755837-fb92-40ce-bf99-7d941076ee62@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0066.namprd04.prod.outlook.com
 (2603:10b6:303:6b::11) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|IA1PR11MB6322:EE_
X-MS-Office365-Filtering-Correlation-Id: 086a059b-ca6d-4759-a80c-08de650f87d2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXVIQ0FzZkFOaWFURUhZbWMwdmRVVlNOMlh1bW5OdkdFVElLWDdBZTRiTHNF?=
 =?utf-8?B?eUc4eDZNRERRSDB0MkZjMnorVlR5b2JqY3JjdWtDaXpCY2p6Q2xNQ0dPbUUz?=
 =?utf-8?B?WmRTbmxJT1FwMmozSzc4bFJVSFNtVWkwcXZQQXB2TENFOXFzTW4yMXlYY1NF?=
 =?utf-8?B?TFltVGp0cWxQWG1Ed0lhL2ZrYTVUK0tRSVlXNVdUMFFSUlgwazl0cnZWK3ps?=
 =?utf-8?B?WVRFK1Z5N1dPVkd0bzdpUkN3eXJUbGxianJ2QUhsUFZYN0UycUNXWCt3K3J5?=
 =?utf-8?B?dFlDSmN0OUdPWktXS29MTlVRY0JucmhycFNwWDBFRjZyS2FrelE1b0dDZE5u?=
 =?utf-8?B?bTRvb2RhZXV2VmNJZG1sbzUzanJybjgrRUEwZXIraGhRb3ZPQ3FFcEF6c0x2?=
 =?utf-8?B?WXlrZGVYRFhldW9IYVJTNnl3K0VJbnhnRllCcE1FaDh5ZEkzUk9QbVJxcC9l?=
 =?utf-8?B?cTlkSm9ZZVZUQmx5WWNVQ3N1S2hqdE90cWlwRWJDbSt3OU9hdWRGOGlOVDVt?=
 =?utf-8?B?WlMybVlyOXlLSkF2WFlub0ZDcmhPemxEUXY0YlNvMWROZklIR3NSdElrMXph?=
 =?utf-8?B?RnIxb0kzS2dpbGVIQW1zTnVCQVBwK2dWMHZTVmFGcUpsNGJRRkNRSktQeEsx?=
 =?utf-8?B?aTJqMVZEdnNUdzNBZFZ5VGQ4ajZSOUpyTUtlS0NnUllsdDVWWmlUVnh4Q1Jm?=
 =?utf-8?B?OWd0c3k3TDQzdkE0MjdvL0VzblV3TXVkZzZlc1luQWVqSDJpWWtkbEpqc2ps?=
 =?utf-8?B?d09XMmRsL3B0Qkhsdlk1QXFUV1k5SitadW0wazAzbjZuZGZUQ3hXc1pNblBz?=
 =?utf-8?B?bXk2SDk0a1k1MUtYNFJLSURSZVl0Z3pic0JLZGJpcjcwb2tHZWhRa2V6cDFB?=
 =?utf-8?B?NkpqTDhGRkptdXlxbFBRRUZCL0ZwaG51UlpFcnRGYmxWMUZnbnlxOTM0bjJs?=
 =?utf-8?B?dzhFeG9xbnN2c0RSL1Qra0dmdnY5dWhDekdWTnZmcVpWOEJNbHp6blVYVmJE?=
 =?utf-8?B?WHVSaVQxRDBUeHpjQ0dKRnozSEN2QzJaRVNCVW5zdFRyeTZVdWs1NVNDZUdh?=
 =?utf-8?B?ZnVOSDlyTFhZb1N0MlpUMFNUSEZyV1J0Q2JpVVBVWjBMeUxURVZSUkpJQnlG?=
 =?utf-8?B?cVI4VXNpSEYyeGZ1L0JHWmtOSVA3cm93TGxEdk51R0VLUHpDWE9Pak5sQ2k1?=
 =?utf-8?B?U1M5cWxRSXVBNGJPVHArWXVZeXc1VXpYM0E0cGtRTmJsdmxIMU9EMytld2xZ?=
 =?utf-8?B?K2xBZkFqRUllejZDd0o3STNEb2F1MnhFYkZhQkRYeUdVV0JHeVZFVjBhS3Ev?=
 =?utf-8?B?NTBPU1pGTURvNkJJZnlMSWZjbUx6ZGx2elVHbnlJNDAyNzFsbkx6U3dRaXQx?=
 =?utf-8?B?RmtCenNlTWJ2cXd3RFYzT2NMY0taVmdwQ0tPRGZOdkdPVitFeTZVcjNVT2pP?=
 =?utf-8?B?SHRyZ1kwSkZ1R2xDc2lPNTFYeWlZN0VvMnN2Uk50MUpoMFFyak5UNHR5R0Vl?=
 =?utf-8?B?Wm53czZJbWtWT09JeDh1MXk3bEZhN1RjeXZ3Y3VKOGRuZGJBN3FONG1mc1lo?=
 =?utf-8?B?bS9YVEFMTklWZzNYYVVwdFpJY3BWOWhnemVqZzFwbnVWOHQ5dk5HbnN2bjNU?=
 =?utf-8?B?NFAvK1puTElLVkMraEZuZ1lFRVMrUWFxWkNDNmJpallFK3FQL3g1TXpiNzlG?=
 =?utf-8?B?TmM3TnJVelAxclZuK3V3alI1biszd0M0clNQUW8vU0hDM0pMMlNOZmJEdGJK?=
 =?utf-8?B?aWJuVEFPYmtzT3duNitjcVNRL0RVWjZmZFo4dHkxRUtZWG5UL3JNZHY1OFVH?=
 =?utf-8?B?Nk5GUVdNTllwcUcySmtQV3dJcytaS1N6MmtjeUtPZTZsS0tXUnkwM2FSU0hD?=
 =?utf-8?B?UWsxVWs1ZWhxbk84Tlh1VGc5NGFOMmxJQUt4R1V2STJGUEEvZWhLYkFJYkh6?=
 =?utf-8?B?R01yMjBESmFCSDQrbUFVRzZiSkRVTTBXRUZmbU5SV1RtM2VXcGtncWFsTnV0?=
 =?utf-8?B?ZW1zSkJmTzNmUkxZd1JhQ0NrS3VZcjUydE5JL1VFNllKdXY3K216aDNHVGJn?=
 =?utf-8?B?REFhSWd2aUdCa0d0R2dPRUUxenA4MTFQU1p2TVlUTTIwK3dielNlSENrYUZR?=
 =?utf-8?Q?Pv+M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEFKMm9Rbm05bjRhQWFST1UyZXBSL2xjVmhsLzBlMDVhMHZ3VUdqUjNqMmls?=
 =?utf-8?B?Mm4zV1RyMEhIblpNazRFc0hWMElUeXpkYXcvZkVLN3FqRURXWDZwUHBpTUUz?=
 =?utf-8?B?TUJNS3hWSCtXaG5kSm0wL3hrRWJPZ3JkbVI1UjhXc1doTlFLNjlRS09HWFk1?=
 =?utf-8?B?VVdPZ01BbHFwbGhtcmNIaUVJbUkwc3Jua0thMHlwRy9WOHVMQVdYN2I2L2lK?=
 =?utf-8?B?bEdzQ1grYzJiK2hsV2phYXo0d004cmNKaXQzRUxpclFBaEI3UDF2dUVvOXV3?=
 =?utf-8?B?emVkNHgyR0hBbzR0QkE5SUxtK1djQk8rVzBhd2NFYVFNOUlmT0FHcCtFRjVU?=
 =?utf-8?B?OEppaVhGYVR2cUdPRHNqOEpaa3JhMm1FRHlGNmgyRUZDbytxVWdaYlZaOGpy?=
 =?utf-8?B?QUduZGNsTHRDSlpyRGZZakQ5OTRHR1ZEQ3pQQ1hWVkwxSGZQcVRhTFNud3Nx?=
 =?utf-8?B?T0NpY25jZ1RqUVJyL1RSVEJMMldadFM5cW1GZzBwbjdOczZzdXQrUFJVdGln?=
 =?utf-8?B?amhzV0pxc0JGNkV3OU1wYityK2wvZ2VkRlJBUFUvRVNESzZkRi8vRmcyYlhj?=
 =?utf-8?B?bXJ5YSsxbFBSU3RQWTVTN09BKzRGNFRKbTQ3VE0vblgvMU9JTkl6VmwrNzhL?=
 =?utf-8?B?TXZQd0dxcXZwcjlVc2VmQjcyS1dYOTFycWxhZHQ1QTErOVJRODUweHY4UXN6?=
 =?utf-8?B?WkN1ekN4b0VnSjBFQnoyVjZiajRqYWl4RlFmTkY4aXRHREpnODV4UlZpVzRZ?=
 =?utf-8?B?Ynh0K0FEamlLWERRemFJUExuLzJWMDVWVU80WE1SaEFMNUpGR0F2elY5LzA4?=
 =?utf-8?B?eURXcC9KZFMvM3pKckVETUgzdnEzT09yZ08xMkhMOGs3NzQ3cDlEcGdNTnE3?=
 =?utf-8?B?Z1M1b0p6KzYzNnoxVlVUcnlwUkxNNjFFSWs1eG1Kb0xkOUN1ZERSanVZWGhz?=
 =?utf-8?B?R0cxbW5rTUlhSDU5R3EwNlFYNU5Ed05kNTdkTFNrZTVma1ZUdi9MN21WYkwy?=
 =?utf-8?B?OXJrV3liZUdReko3Y3g1ZlBaRFp4MjVtb2gzd3JGS1NxWVNlb2tjMXV0a2FI?=
 =?utf-8?B?NlB3ZE1xNnhNNXVLb0YvY2k2WWtJVkF3WkhLcExZUEJHL1JrMitnT0hmS0Mz?=
 =?utf-8?B?WllJbFRveHJiZjArUStBc1hwTlZxaElMejBrVU1SSU1RSUNRaDZrZEJxandK?=
 =?utf-8?B?NXE4aFlaRCtERDhhQ05WV0x0am9HY2IvN0hrekQvV2htWm9hbHRwc0tSL21p?=
 =?utf-8?B?Y25kQVkzakRhV1FnUGk2OU16b0RjVVh1R1YwWURCQnlXRHdJS21HU0QrSUI4?=
 =?utf-8?B?dUREdjl4cVRGejZQTTZXTSt6TTMxVXNPeDczUFlJU1poVktHSUhTOFVLMUxz?=
 =?utf-8?B?dUlZWEljcVM5YlYvUzZiK3dqMlh3ZGx6ekI5eDNqZnk2MXFkTHVOSTcxQ1hF?=
 =?utf-8?B?OG9pK0dSYnIzQnRxc2NEaWlYWVRTazNpQVVSSGFldkJ5RkFoQzhnODRWKzhj?=
 =?utf-8?B?V3BJQVNlazZ6QjR2QzVYdWxQQWtDTzJCOWF0c3JlSmhFNVIvd0J4YkRRazZj?=
 =?utf-8?B?VHU0OG8yMmxWQS9icWdhbVp2aFZSa056andCSzlHaEFrbUVxV09lWFNxZmFM?=
 =?utf-8?B?T1BBaWpzWXd5UFI5OWVhaFVlVitPTUZjZldGNkdJQTlLdG9teUN6OUtEZ1Ez?=
 =?utf-8?B?eVkxTDZXS1BhRXZER2hsSWVGYXlOcEpnSmtKQXU2Z2hYM1cwMDY4bWJ1cDVj?=
 =?utf-8?B?RjREbjFRbHQwbW81aG5KL1RtSTZpRmNLWUdXSStYcDh6d2pQNk1FWkJWRUlI?=
 =?utf-8?B?SWtiNlBtOUtxZk42M1VHK2J0U0RXc2dtdm10WTJMejR4d05qZy9yNngwSzN4?=
 =?utf-8?B?MWxvcEpZam1iRnhNeE56U2hyVmZaNExIM3hKWTA5MHBPVE0yTFhjUjI0ZmY0?=
 =?utf-8?B?UVlENVZnSFB4OWRWZ2Y2WS9Oc2N4R1k5cnNKdEQ1TkRwQWRqL1dXeU9BRFFT?=
 =?utf-8?B?L0tTYlcxOVRKWkdWSkpNc3M3VHE3aWU0aHJLdFVPTGZCSVdQUEpxbkxZZWRk?=
 =?utf-8?B?STYxL0plT3dYNTMwVkUrbEZtcm9nZFoyY3dXdDJsU0VMUlM2M1c4eWZzOFdF?=
 =?utf-8?B?UmsrYjJ1dHdBSXUzaUpDTHpEZk1SRElaUmx4anJlWHlhVDNFc2V3L3FHQnlz?=
 =?utf-8?B?dWw2Uys4QWtwVGpCNEpkR2d5YVRsdWFhcGF4N3F2ZzZzUEdxeWM2NHpiWkRB?=
 =?utf-8?B?b0RJNG5lcXZZQnhOWkZWWTFPb3RFd1ZkYTgxcjQ4WTFKMU5mcU5sVVp0ZXdt?=
 =?utf-8?B?c3puYWhEUXFkVnlMTDNlc0k4SGNkMjY2SkswNDk4Nkp6Q29icGNRUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 086a059b-ca6d-4759-a80c-08de650f87d2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 23:37:31.2642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K+DfNaB1g/gJi/RU0dbfwJvOFQXv/QJS/P32PewYmduBFLm4skhMbnVu7jzxBUuXDQ6HydfJ5nWVuSMEzWEIg/wIJ33BbyjGNs+m6ZBexhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6322
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770334669; x=1801870669;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=usJCn7dKQBVB60BeYpF1y8aFfJA0WOmyrxlmwLVphjk=;
 b=J9WdbFRqejRb/NfBEYCuZR2RHP9qzETkPXdQvUZo+tnl2LLWmB4HrN4A
 a/yePDx4K+XjwLgJSoLlN5U8sLpseC9xLT9erbNJ5zMpc97+EKNus57iT
 YuzlXm3g6UcHW1g9Vm1EuZNGF+Worx7X7vjEbwh6mJqY61RuVClHuk2ci
 KZa9vdQoonRiyHAoMSgQHA8xeCWyA6EZBmL4p26ofVd9Kj3pBfy+VJIA0
 1xLOvXRJdieEeLub8waTAV9FxCOcbTSxGr5gtLbS8+FOs0ock//6+L7rv
 nhYpNfU45TzVfI4QPMb5/ZcM97DuJqvsbMmhWz3s/dmjWBK+xTvH+0AKy
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J9WdbFRq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:przemyslaw.kitszel@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 928AAF8603
X-Rspamd-Action: no action



On 2/5/2026 4:24 AM, Petr Oros wrote:
> 
> On 2/4/26 20:25, Jacob Keller wrote:
>>
>>
>> On 2/3/2026 10:12 PM, Przemek Kitszel wrote:
>>>
>>> [...]
>>>
>>>>> If dropping the lock is a no-go, the only viable path forward is to 
>>>>> split the
>>>>> reset_task so that the waiting portion is decoupled from the 
>>>>> netdev_lock
>>>>> critical section.
>>>>>
>>>> We used to do this back before the netdev shaper ops. We didn't 
>>>> acquire either netdev lock or RTNL during reset.
>>>>
>>>> I thought we had some code in the past that would handle netdev 
>>>> stuff outside of reset.. but I don't really know and git blame is 
>>>> not making it easy to find this information.
>>>
>>> IIRC it was iavf_config_task that is used to complete stuff requested
>>> under RTNL but later
>>>
>>>>
>>>> Perhaps we don't actually need to hold the netdev lock over the 
>>>> reset task.. except Przemek's refactor to remove the critical lock 
>>>> now makes us fully dependent on the netdev lock in this case for 
>>>> reset :(
>>>>
>>>>> The fact remains that MTU configuration and ring parameter changes are
>>>>> currently broken in iavf. Changing the MTU on a Virtual Function is a
>>>>> fundamental configuration not an obscure edge case that can remain 
>>>>> non- functional.
>>>>>
>>>>
>>>> Agreed. This needs a resolution. It is just very tricky to figure 
>>>> out what the solution should be.
>>>>
>>>> We need to hold the netdev lock during reset, and we need to have 
>>>> our handlers wait for reset to complete in order to be certain their 
>>>> task is done... but reset is a separate thread so we can't really 
>>>> communicate to it that we're holding the lock, and attempts to do 
>>>> that would be a huge problem.
>>>>
>>>> We don't want to go back to the critical lock and all of its 
>>>> horrible problems either. The commit that removed it is here: 
>>>> 120f28a6f314 ("iavf: get rid of the crit lock")
>>>>
>>>>> I would appreciate any further guidance on how you would prefer...
>>>>>
>>>>
>>>> I wish I had some better ideas..
>>>>
>>>> Bad ideas I've thought about so far:
>>>>
>>>> 1) this patch with its drop lock and wait, which we discussed as 
>>>> problematic before. It creates a lot of issues since it means the 
>>>> operations are no longer atomic and we could potentially get stuck 
>>>> with some other operation in the event of another thread starting 
>>>> some core netdev task. No good.
>>>>
>>>> 2) not holding netdev_lock in reset, which is now a nogo since we 
>>>> removed the crit_lock, and apparently we held netdev_lock prior to 
>>>> that too anyways...
>>>>
>>>> 3) we could maybe do some sort of ref counting dance where we take 
>>>> some reference in threads that queue a reset, and the reset task 
>>>> would know if that reference was non-zero then another driver thread 
>>>> is holding netdev_lock so its safe to go into reset without 
>>>> locking... but this feels extremely ugly and error prone to me...
>>>>
>>>> 4) convert reset handling to a separate function that depends on the 
>>>> netdev_lock, and call that directly from within the threads that 
>>>> currently "wait for reset" while holding the netdev lock. Thus, we 
>>>> basically move this entire call chain into the thread already 
>>>> holding the lock, and call it from the context of the function like 
>>>> the MTU change, etc. 
>>>
>>> reset_thread() {
>>>      while (!stopped) {
>>>          netdev_lock();
>>>          reset_step();
>>>          netdev_unlock();
>>>      }
>>> }
>>>
>>> looks cool, IIRC I did something similar with the "after crit lock
>>> removal refactor continuation", but I've put it on hold
>>> https://github.com/pkitszel/linux/commits/undeadlock/
>>> The linked code went even further and merged all of our admin-worker 
>>> threads into one and the whole was protected by the netdev_lock :)
>>>
>>
>> That is a lot of patches and doesn't feel like a minimal fix.
>>
>>> This feels like its also a huge issue, and could
>>>> potentially lead to some sort of issue where we need to still block 
>>>> the reset thread from going if we reset at the end of the 
>>>> netdev_lock thread..
>>>
>>> that should queue on the "do later stuff queue", which we don't have
>>> right now (and keep some of such stuff in the state machine), but would
>>> be useful for many other actions too (like virtchnl messages, for which
>>> we have queue-of-1 right now
>>>
>>
>> I think we need to lay out what we need and maybe that will help 
>> figure out a solution.
>>
>>
>> 1) several NDO operations need to perform tasks that require AVF 
>> hardware to reset, and which need to be certain that happens before 
>> they return.
>>
>> 2) reset is handled by a separate workqueue task
>>
>> 3) reset also requires the netdev lock
>>
>>
>> We can't make the ndo operations avoid the netdev lock
>>
>> We pretty much can't make reset not require the netdev lock, 
>> especially since we are now using it as effectively the main driver 
>> lock now.
>>
>> I am not certain we can move all of the reset code to work from the 
>> ndo thread context, as we still also have to wait for hardware 
>> notification that reset happened, which seems like a pretty massive 
>> refactor to get right.
>>
>> We can't drop the waiting in the ndo operation because we need to be 
>> sure that the operation applied properly, otherwise we get errors 
>> elsewhere.
>>
>> So that leaves me without any solution so far, certainly not one that 
>> can be completed quickly... which means we're stuck with a guaranteed 
>> deadlock anytime the MTU is changed?
> 
> I’ve been looking at the code on GitHub, and in my opinion, the fastest 
> and most straightforward solution is to use a slightly modified approach 
> based on patch 8c90ca2 ("iavf: split out body of reset task").
> 
> Since that patch refactors iavf_reset_task into iavf_reset_step and 
> removes all netdev_lock acquisitions from its internal logic, we can 
> resolve the deadlock by calling it directly.
> 
> In places where we currently wait (MTU, channels, ringparam), we should 
> replace the asynchronous scheduling and waiting with a synchronous call. 
> This avoids the deadlock by executing the reset in the thread that 
> already holds the netdev_lock:
> 
>          if (netif_running(netdev)) {
> -               iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
> -               ret = iavf_wait_for_reset(adapter);
> -               if (ret < 0)
> -                       netdev_warn(netdev, "MTU change interrupted 
> waiting for reset");
> -               else if (ret)
> -                       netdev_warn(netdev, "MTU change timed out 
> waiting for reset");
> +               adapter->flags |= IAVF_FLAG_RESET_NEEDED;
> +               iavf_reset_step(adapter);
>          }
> What do you think about this?
> 
I think this works. The netdev lock itself will provide synchronization 
between threads that need to reset, (since we take the netdev lock 
around reset and we hold it here).

This is more or less one of my ideas earlier, but I didn't look closely 
enough to see how easy it is to implement.

We will need to do some double checking to make sure that nothing else 
checks the reset flags without holding the netdev lock, but I think 
since Przemek's cleanups that is true.

Good idea! Hopefully its not too much work to pull out just that part of 
the refactor and get it cleaned up.

I'm currently working on setting my system up to reproduce the deadlock.
