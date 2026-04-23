Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xpteB8SF6mmP0QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 22:49:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4924575A2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 22:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA37660F06;
	Thu, 23 Apr 2026 20:49:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yn99No1FaFyf; Thu, 23 Apr 2026 20:49:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DA5B60F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776977343;
	bh=AprMxyZiDZfHFHSJdKSs4R6tYVffOJHfW0w6cIVvQjk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=As3CsRXW0L3iNwCOGrI/nCuBesZJKP93qLRVfLg0gKon02aARyQ1O+5AWWGMwh+kI
	 /zhD+i6HLJdnLwIkKTiB9hX30pfftcEYyMoZFBDumiqF6o8b4WTaMxbg9Gsy3V0tpF
	 w5J+7aBHlE2fL3d4I/Pkn0P/OUsvAP28GZYIj8VGhrGf4qukYA6N/0fT4bzP10DCC4
	 nplR206YUVlKqtGLFSH6udMNJ89ZKHm99vHdjz+CqNMLwwKhfB1XZI2XG42uhwXwr0
	 9acbldwDk+KMCCdzmuGNDWSGjIZUYLVTNmG4P5OyDUYq4C2dhLc0Eg2sjAO/lCkQLP
	 kzIsRmQFxGEKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DA5B60F0A;
	Thu, 23 Apr 2026 20:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E3F93206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 20:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9AC583DDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 20:49:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b2cAH7H3wQub for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 20:49:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1066C83DDC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1066C83DDC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1066C83DDC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 20:49:00 +0000 (UTC)
X-CSE-ConnectionGUID: 5tZzKDAuSA+z8CkaZA2bAg==
X-CSE-MsgGUID: g/ZDw3C1SO+kHWgB/6t5EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="89421973"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="89421973"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 13:49:00 -0700
X-CSE-ConnectionGUID: 9lCBbJoASuqtLbFqcqchzw==
X-CSE-MsgGUID: BmMbJPx6TPOKzB3pHo1Kaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="237823727"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 13:49:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 13:48:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 13:48:59 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 13:48:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pq68uHENlfNxwnQNrAIVnQDoBOMiDhkPkYTr3O5LZO3/TjaW8uv/Mk75iD6595JgoFQk+KsOaNyJ4KL2l6+Fnuf6xisnHEviYlJd6pZCcTqNc6pD5etM6JVqxYb8UvkhqXcekuN8dTKvwuoi8PIOV3nMRU1pFK1qKXymyDaHiay8KSUMUlqiiGhXBCOZs4Cpnnsk+17ee6cUD4mhv7ij5xh0c/ljYJ51FsB/krju1zt6ZpVXgVwhRqsbC0Wnx/c2ZWWWpgNOEF9cf5BWdpgeExDRu0KWoLS3a7mNdtyalZCeo6botN14Cm995MfzATplmWPPhkPVOsNfIM8+bSKh4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AprMxyZiDZfHFHSJdKSs4R6tYVffOJHfW0w6cIVvQjk=;
 b=Wzf3A6bPeYzlT2l/Pqhci0YK/Y2Rd/f7jGlfWTYtLhI0lMG/hwiNmmEvHEYrQD8ZjKJNyCgqYCqLqOaz0JQgfNVlg4Zt+McahEvCr30juOsWjNCrlq62dens7ai21PPZz/msGkCX3pzMmKyitKaizQdyF+9UUD9hiTqGKAK1GtGlLv3VgFFDfAf8XvVXVA4cI0ewcEvHwokIQq1tpA1P4uO/cmEWx25ouZrNXH/h6pCIwKAL4GBnmTn4+DDbB2WyzMtDcRIY7o3faXCZ6n/ElYDBUcT9voTJf2FcO5YmMDuCxib0sAl6PPIMofgtXe4IBIfTO6gf+SymOdWu4WFnWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 CH8PR11MB9459.namprd11.prod.outlook.com (2603:10b6:610:2bb::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Thu, 23 Apr
 2026 20:48:52 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9846.019; Thu, 23 Apr 2026
 20:48:52 +0000
Message-ID: <b2d56951-4776-4d99-bb4a-69ef7da0a502@intel.com>
Date: Thu, 23 Apr 2026 13:48:49 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Petr Oros <poros@redhat.com>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, "Mitch
 Williams" <mitch.a.williams@intel.com>, Aaron Brown
 <aaron.f.brown@intel.com>, Przemyslaw Patynowski
 <przemyslawx.patynowski@intel.com>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>
References: <cover.1776426683.git.poros@redhat.com>
 <20260421090254.GW280379@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260421090254.GW280379@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0300.namprd03.prod.outlook.com
 (2603:10b6:303:b5::35) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|CH8PR11MB9459:EE_
X-MS-Office365-Filtering-Correlation-Id: fd26cee1-9777-4bd7-fade-08dea179ba85
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: ncpMkN08HmNoIgLcA6EMwhBUlFeBp70DCI1w3XfnCA2XM1JhghqCM+rqq+9nvvUfO7wtRaiPzSypfT0lVIvRP7ZoWvtL2OUG7ol3h8VIgYdxBJ+DIJUralKSLTqk1rFdfrrqa9+FtlIEJUeKKBP4ZREU/knMjAC0dpcuwvQVGHAEY2ZEwCQtbY4IbDhAo1d5LMPNo/1OM4XPm1vV1s+M0y8pMF72n8v8x6yEf75p75+Io99m8SBkuwG0CVK4b6V7oUIDHgLkjibYaaVs5Lzr3YufCwBDwg+S2czoCin6nkSL3ahin+WaH3QN+dECA0CeCOSl2UJsv9eWRGlhYSF4phlVOTTe1r56OVXjvUJmUrfhfDiniuWPVMdSPZ4lqPIyxuOeAl1BM7K8zCn8WcDy5ZDfbnYtPkO2B+95EYNOUT/HfQJtOxL+R/nj6qJH1YKQ4+ITrtaGsTUTX9IB0pvo4wxj6L3Hg3jrJ2/snyN0t8ELcTHawdrTvPZ9DWGPzBdOxZdJI+HLWtM7ffNMbGwhPx+JXuDPLH36ETqKyv2ypgNZty6CKFxtCHrT2F02IHW1XMVuk5zLKR8cxPcoMneuxQXx4R864YXfUGw146PCFVBz88XbgF/HzaDroptnFXnqlxi6CD0T5KUauLi+8Yhte/ed4YV7wqmXchpgzDqHR6EQLz+0oTdzVzPWShjjhkWQfkVA9aTBWwKnGuahpbtfZXqFAFQRVLUR31zjDLAkNk8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWRmNytDeUpDSjJ3Yy9TZWRhV0Z3bEpqWkg5TG1uMThTRE9vOUVkQjlxYy83?=
 =?utf-8?B?U2pNZyt0RDllOUJSbWJkUnV3TXZKSHF5bUZHNDVLM1ByOUhkNVdUbmh5TVVu?=
 =?utf-8?B?UHM4cFZtaWRwcGVna0Y0Y1FWdEI5b01BaHlZWlVjZjg2S2hWeUtBWSt6QlR2?=
 =?utf-8?B?aTZ1eklZM2FPMVpCTEh5YlV0QTVCOGZMV0ZwTXNjQUZQeUsvNFA1cExLTDVM?=
 =?utf-8?B?MlVkMC9sT2tKZStGL3ZLWlNZb1h3VXhYejg1SnlZcmxvU29yR1NRanhnMmxR?=
 =?utf-8?B?NFFXT3VOaW5ueUx5TFloUndUWWp4UUplOEZja1A3QjlXcHROUVZCNktSZHRC?=
 =?utf-8?B?blRVeVorNzZ3ZHJZZlNYLysraEluMzdZMjd0dXlzZTZLT3o4MXNwSW8wdnF1?=
 =?utf-8?B?Y3A0OU1xdStLMWpoZVZaL1Y4R0RGejFOZlpBenc5UWVMaGhYUkRmODhiU00r?=
 =?utf-8?B?cDFYUngwbXJINXlkS1lSRW1TcENaS1J4Wm5Hd3BFNXFlK0dJdlBRcU90OWFM?=
 =?utf-8?B?SXphd3JYUzVhVVNTbDNnd1YxYlZ6ME81NDF2dXhxRjl6RTJuL01ZNEY0S0tC?=
 =?utf-8?B?b01RTDhHRm1zenR3WmV1Sk9FN3RNR05RWW1UZ0JRbkFnVTlsU2lBQnFQRnZG?=
 =?utf-8?B?eHRtYmdhQ2VXNVBlZ2xadm1jSmNjeldBSUNWSURtWXdPWDkwaGRDeW1uRlVD?=
 =?utf-8?B?NUEvMllUL0ZPWmxIN3JIc1Z5V1hpR3ZodEl3czMyT0UxbHNoMDR5SkZPK1FD?=
 =?utf-8?B?eHFDNXhpbnJDN0ZDZ2Z2QXdrUzRUVXQ3cEMxdmVDNGRCTm9maU11OUptbys0?=
 =?utf-8?B?UGxMT05KdVZLZDhYN0h5aURiK2lJa0RxZEF5WFoyS0hSVnpMODFWYTZ0di9Z?=
 =?utf-8?B?OTlSVHRiVGxIWFFvclZTeEYyRUdvRndmclRWVFB0WDBzdnI0TThua0U1Ly9j?=
 =?utf-8?B?dzArYUlnd0FhdVE5UFFLOHh3Q1BHdWZlV1pla1JsdEc1WmtlYUVFOUNMUVV4?=
 =?utf-8?B?MFRscmVMWGNXRDcwcythNll6cWMyaEh6R2t4aEppY01rTVNWNVBhVSsrUUFs?=
 =?utf-8?B?K0Rya3l5aERhcERjMzl3aUV1MzRZeU5aL0ZGUDVFVi9ITXhNY0lPcVIvOC8r?=
 =?utf-8?B?SEtBNU56ZDdTN3VKZ1hrMVF0c0Q2cDZJM00zOGZaQzM2WDFCR29JTlZWOW41?=
 =?utf-8?B?cjhRNlZVdDYrdkk3QlVXQnpQR3RBWFBGaWY3MHlmeEk1Tnh2dldPN0RCS01i?=
 =?utf-8?B?MUZLZU9Kam5rN3Jkbi9WUDNjT1VyZkRsM2g0VGJLYWZyMDUySlBNaWxQSjFt?=
 =?utf-8?B?bjRwOXVGcktUWThLaXBOUG1IOHlGN24wbFBsaDZYWXRRdElYWUtwUkxwTkgw?=
 =?utf-8?B?alpaOVBTdHNkc3JGeE9wY04vTGJuRlovVU03ekJyWFhEcGVsbVZEZWVoTjNQ?=
 =?utf-8?B?eHQ2cTJZNWNzWDhUTGduRituRG5QNnFoM2RZOXg4NGJwSmpqNTBEZWRMRmlu?=
 =?utf-8?B?MkNjdURyOTVDU3FTM1NLUUpBUjFtN0J6U3ROVzllY3YyMFU4MFJCL2tpVUl3?=
 =?utf-8?B?dlNmeVNXM2FBbkxGay9Va0pDNGFDVHJEOWhmSHRtZDJCZ203eDlXckxBa3o2?=
 =?utf-8?B?aG9YcTliUm9YbXFLYXRNNVBISklZNFJ1NHJRemVlRG5KNWw2SXJUS1RUSlBs?=
 =?utf-8?B?WjRYQ0kwNzdxRXBnelM3RENLeGdCQzRISUxGZ1V1R0haQ3cwSzNjbkMzRGFY?=
 =?utf-8?B?QUdQK0JGU3hzeUtqZlY3U0ZOMTFMclVKampCRmxoVE5JNGJjd09ZazZ6UEdR?=
 =?utf-8?B?cTlUY05FOHZvaWVaZnhlUnJLSkVQS2Ztbmdjb0g4S0kxVmwxTzBEY2dtVmhG?=
 =?utf-8?B?Z0lRVm9wcDdKQndtSG4yWU5kZldUOUdTbU94TWIwOEdpb3BYb0VLcXRwVmRh?=
 =?utf-8?B?Nld1NUg5RFdhTUVrdFIwMGxIZ0xIMHNEaWsvblBiQU1kQmQ4aXBtWlJzWGJR?=
 =?utf-8?B?bTlNT2hNaVFvU2UwVXFWLzF3UTQzMEdGc0o4OG1UVjNzOTZ6RlBBTlAvc3Uv?=
 =?utf-8?B?WjZYa3ZBMllENVVMdnRZeG1ORTd0NUliYjFwWnFmRFIyMExVVFpqOFM1NFo4?=
 =?utf-8?B?czVlMzhibjZzVWJjWGJrV1dZczNyc21kTmhLNForaU5BRnowYVpzUkt3VW1x?=
 =?utf-8?B?SWFZMXBUeU1SNEMxV0YzdGlyYzllRk11VDRYaWl4U2c3RDhZSDV5TW05Yjdw?=
 =?utf-8?B?S044OWJXYkVBdmRUUGc5V29HSVpDSlJOaEdJLzdzcTJJaWtsaTV4aUpPYmdS?=
 =?utf-8?B?aWxRMUpHd3lhOE9Mdk12SWlZMUNheHZ6UnN5T1VVTmhFT0xwbkdGcklOSnlW?=
 =?utf-8?Q?bjAbUSHx6t97ivA4=3D?=
X-Exchange-RoutingPolicyChecked: QLZ2lp4r9EJR/3kcXh4u4n4bPsdmIzWpwNWnbRQxKpk+VPeA4aGfoatOivO6BnrEbXfyjYNA6VMhchKN1U4SLRNuToUY+ofoY1Zr4jdeP5Blmrgh+tWLzIIcPVunai52DHGKafEMosh6gigx9oNvtRWg0rdjIENn9cCQznXp+dc3CZ10donucIWZEmg6aeBUEEnsvOg4crXGBa+4eyoVv1hHPMLuFdeqBXoITzByK+2rNGN+5xRpJ5F9QnOeWBaN/X/N007xzJwmqT9uvfltn9iEtsziHOez/JmX49aIY/bAO3RDgRVJ0Dc5fC+8y+cuwDjyv9L/WwOB0m7uk8nEtQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: fd26cee1-9777-4bd7-fade-08dea179ba85
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 20:48:52.7285 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qALhXjsIcwWmVZR+be7QNtDcUQZgbx++w5qQcWqhDTjHL1RBhzv/QcY9LeTujP81AEWK63eBZkrifKDKQciVYc2dmzScCQuqTB48btT6b50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9459
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776977341; x=1808513341;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DLsWyPntVW3JL5Rf3h8ESCVWA8sGO+QO/yVbh82u51U=;
 b=TIzDrJ9CFEzeRSr5wQPDzeqDZ9rl60AX6FY3l6+iDIjMGUmq0OIS9A0d
 3tFSMEmQZgyo1s+KYYvlux3yTsR34b5Dy0xUG3r1qwMImE3nsSogn+LXG
 tTT6aAq94bKGHpuZJUEm4teD72FzaZQqD12wwKJ5/l2oD1aYYQ5fXgdAG
 AeNaGDYNs9rcCcfRSUQWRL4tfQBbBFlKmuIR0133COR4Pm7lswVfj1Qpd
 72jkN5EE6ojg59qZjKAn7oxHCF8Rso1o0LPEmF13yWBNYH+tbkw1a9Ygp
 mKtFCpO/b0q8McIvz7RZMcW3GiRU+odIE3ymp0vVmrUIDM3c+fZA7+UYn
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TIzDrJ9C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 0/4] iavf: fix VLAN filter
 state machine races
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jesse.brandeburg@intel.com,m:mitch.a.williams@intel.com,m:aaron.f.brown@intel.com,m:przemyslawx.patynowski@intel.com,m:jedrzej.jagielski@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: CF4924575A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/21/2026 2:02 AM, Simon Horman wrote:
> On Fri, Apr 17, 2026 at 04:29:41PM +0200, Petr Oros wrote:
>> The iavf VLAN filter state machine has several design issues that lead
>> to race conditions between userspace add/del calls and the watchdog
>> task's virtchnl processing.  Filters can get lost or leak HW resources,
>> especially during interface down/up cycles and namespace moves.
> 
> ...
> 
> Hi Petr,
> 
> Sashiko has a bit to say about this patch.
> I'd appreciate it if you could look over that.
> 
> In particular, the feedback on patches 2 and 3 may warrant
> some updates to this patchset, while I think 4 is more
> in the realm of possible future work.

@Petr,

Could you please review the Sashiko reports and clarify whether a new
version will be needed?

The original series posted as a net-next was Tested-by, and it would be
good to get this moving, but I don't want to queue it up for sending
until certain it won't simply get rejected due to these unresolved comments.

Thanks,
Jake
