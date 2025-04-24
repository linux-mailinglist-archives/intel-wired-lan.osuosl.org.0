Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A23BFA9B28D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 17:37:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C5E84150F;
	Thu, 24 Apr 2025 15:37:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DCcHtB-Vqm0I; Thu, 24 Apr 2025 15:37:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEC4641240
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745509075;
	bh=8AL7S4kiChTUrnw6iGDtKugRY9ZkFxU40SL0Hy3iMLY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A9CQgDkMbXMo9r+WemSxS+djbhB2Rc5JRxQDuJAy8+Cs9Ilp2ZVAuuCzHgmO3pbSt
	 Subwwtwdhd0AZ/fGMyQCyefquvLgTx7inL/3SJr9zBBKHzDpQsH8ooSCTwv9UdIQhg
	 Kq+8y8fY8YctpIBiO00+qPh2i5SfGjtK7V3emHwjZ/T3ENNmI7XoQWdBiO2oav3b4H
	 +FDA1jbgMc9Giyomw5VlrrzAZJ8rSy3/aqKVltIcz3TBtO3S/4KjkFFlml+sy7ULgD
	 lQjWnncxbTapawKoOFcPCdfqIz7qNAChWGf5jiVpLfC2Az12GC6B9JFplKJ9a19QLu
	 d/SNDbqNPBN4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEC4641240;
	Thu, 24 Apr 2025 15:37:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10C0428C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01AB240E17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5JH9cWt8oUWh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 15:37:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 577E540DA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 577E540DA9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 577E540DA9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:37:53 +0000 (UTC)
X-CSE-ConnectionGUID: tc/KqbFqTdq7JBG0mswYKg==
X-CSE-MsgGUID: RffcwnxORoypue4G2lfVsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="47327885"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="47327885"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 08:37:53 -0700
X-CSE-ConnectionGUID: LXEZ5UIAQ1O9XjBSCOq+UA==
X-CSE-MsgGUID: gLCjO4FoQUukKD6BaJahcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="137506897"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 08:37:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 08:37:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 08:37:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 08:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CK1wWbuez4TlPvduS+kKBWIUNRjr9uWHONExAp8MhEo6dp5xvYRyxhstM+Dw+mjjeu4lNvPK7pHHdNLnvmFp8VbLRzrjp9OTtharCWnzLSprxh3UCRgps1t8ASXkd1zfZiuRv1MoeYTBRqJQ+OI19QdGPmLYYSjecmhGsMOfsafhIkFOfRFbncwqxDXslzoJsVdAHagLkqCS1CMYGmKoRTkor6Gcr8vk12wawfq3kZqczV1sHPX+DpdsketAjGFY3be8Z36DyAxKVlbQG4fArrQvNUvc5P71SZXUcagNyjsyzZaBAiAMdozACyivEiW7dCERB+2NriISVRki5zFGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8AL7S4kiChTUrnw6iGDtKugRY9ZkFxU40SL0Hy3iMLY=;
 b=r6MzvRUxuqxTg4qiWoiHxieHIBWUhprHqVNxv4oghuIc85ZahBx9/+fbVCMtPnY/b7yxR6BQJLCck1QWgumziIE43PPXVn/He0QDUetUh+/ExIm0NNPyUdRmK1GhNqyUoVQOVHI9SyHbzs5gAmDqbyPz5ZtOQhbwVc6Ohv85bHGUv1f4b3FU530JVQwDd6lTusfh1PMCetSAqB95iAB6jBLNFqyErKx5xgbskMyv2zKeALJw6EUPv3gwZjcPHM/6uvnPPjOwieuJ08M4LTzRWtxmtgA5oTIQ26umx6k9m/kCqt6IyrDK2605FJvmLQnY4yhTLCekav9Idrg+i/TJRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by DM3PPFE8B1F622C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f58)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.24; Thu, 24 Apr
 2025 15:37:47 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189%3]) with mapi id 15.20.8655.025; Thu, 24 Apr 2025
 15:37:47 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "David S. Miller"
 <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Nikolova,
 Tatyana E" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Olech, Milena"
 <milena.olech@intel.com>, "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
Thread-Index: AQHbtQy24l+p8jh5AECkqJqHW9HxirOy8gWAgAABBJA=
Date: Thu, 24 Apr 2025 15:37:47 +0000
Message-ID: <PH0PR11MB5095225FBBBFCDA3D66A1846D6852@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-9-larysa.zaremba@intel.com>
 <744538a0-a1f5-48a5-b454-f1a2530268b7@molgen.mpg.de>
In-Reply-To: <744538a0-a1f5-48a5-b454-f1a2530268b7@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|DM3PPFE8B1F622C:EE_
x-ms-office365-filtering-correlation-id: 14a7b790-f4b3-4234-3b4a-08dd8345f6de
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bWNVZk4vZUt4bTQ5aWhQcUswUjFYd3oyQWxqUk9pMCtpQTg3TTc4QlBFSTV5?=
 =?utf-8?B?TVJWejJmaXIxa29FSG9VbEsxYTgySHNDQTlJYWNpOE9neFRqQkxJRkZRSC90?=
 =?utf-8?B?aFB3bkp0cFFPNUg3akRkbGxyS3h2YUg0K2xnM1dQK1dvS092eUQyd01PczJG?=
 =?utf-8?B?QzZZV1NUdURMVVJ2bEdsV2RYY3htMGptSU01SjBIVTY1OVh2ZDZKdjNlNlZR?=
 =?utf-8?B?dGxmRGJrNXdFNUJXVDdTRTk2YUJyTmgxVlBHbFpLQm9TSXBYNXZxdHpvdmJp?=
 =?utf-8?B?QitjcW1sOUNXS2RuWUhxeVNkUThadVg4dmlHNmVIWHAyaEJMOU9odlBGK3o4?=
 =?utf-8?B?cG5UQXo1cVZKQll2RW5UOWdNTWNZbXRyb1NoK2hKcEtwK0VqeWFhaWc0Qndt?=
 =?utf-8?B?T3FKd2hVdjFONnUzc2pZYlZwNzgzb01NR3hZNytFUitMYnlTZWpIOHFqZnBC?=
 =?utf-8?B?ZUF3dlZVQUNNWG9DK2U2L1pPTHowNXAyOXZJZ3pzOVVVMUNEOTFzKzk2UzQw?=
 =?utf-8?B?S29LT2FsMmZKK3BGL1AvUWpCcSsxU2dzNHBjRm5qZ2U5TDhYeUR2WnJFNzdk?=
 =?utf-8?B?aCt1Ni9udy9KOUdKQVdhMXdnZkZMQ2c5QTBVaDdMLzZsVUFLWk5laFcvUHFP?=
 =?utf-8?B?OWFwRVRhOXFrbWtYdndMNFJqeE5MM2x3c051cnFuWEUvbWNSTHFaNHViWlhR?=
 =?utf-8?B?Yi9qMEozbERIR01iVXRSZzNjMXlod1djR3F5eDc5SGw3U3pzNEJINThwcmNj?=
 =?utf-8?B?VEF3MmNPVitJT0tGcG1DNkhiUWlzRCtJdG01TCt4eUhOajlTcy9Da3JZRnQ4?=
 =?utf-8?B?TFpwTlpMbVA0TWhoYjQ5Z0NwQ2llRlJCSEpUL0ZVK0JzQU53QTRxTm11REhq?=
 =?utf-8?B?RXljTE01bUZmelROZDN1UnBjMHc3NmtXSzdzbmIvVXRHTS9Jb2V2K2E5YmJx?=
 =?utf-8?B?dFZnQ2FGazMrOHZBUjBTdTdJMUJXN2tZeEsrQUpQd2lKVDRrS0lpVGpQa0U1?=
 =?utf-8?B?NitYS1dLcHBBa3EyTUtnV25KaVlKUXg1U2RWdjlJUW1TenNTajBBdnVYMnBO?=
 =?utf-8?B?eEZRQ2tWZ1VJZ0x5WFdabVBJNDdFVUVGZTBYQTViZXdobVpiYlBxdFcvdkMz?=
 =?utf-8?B?eHBZZjZEeWcyZTc3RHVEbnU2RU0wUW9yUlF5SkZxK3pYbXdDbmZwNFZxdU45?=
 =?utf-8?B?ekxhUC82VkwvQS84RE80WUZSVmQwQlVrVlRpT1RnWnZaNEk3YnI5VytQUUFX?=
 =?utf-8?B?RlhsZFdOM1RTbWRYRGovY1B5VkVpV284MGdWMHhqaDFYeDJaMFJrTk9PK21i?=
 =?utf-8?B?T2IxeHRVbmdaZGJxZEREWS9SY2dFVFFxUFM5c3cyMEdmRWxjbDFmWTJRNHU1?=
 =?utf-8?B?SGZoZEt1VmRBenBwYUJRVFhLZkFNNkQrcVgrM2RDT1A4bFBLSU5tYmxzY2NH?=
 =?utf-8?B?Umc2VVFxcFNkZjFTWGR6RDJkRWFvZzdNT3Q3SGNZYUJXVGlhT0Y2WG5FUE12?=
 =?utf-8?B?d2tBUW9HQ2Ixbnh4Y0dxNFJKNE9mN3NVaC83Q1RtbU82aW9WbU5xUzU5TXVP?=
 =?utf-8?B?YmJnUnBYTDdIeWxvczk5b0txQWpKMHJqMGxPQUx0UDNmR0N5ZmVmZDNPWS9O?=
 =?utf-8?B?aFd1N3dNemd6V05tOFQ5MHlkRUdmeklBdTZ2bFhYRWw4Y3FPMGxtWStqZFNR?=
 =?utf-8?B?Qk1sTjc1NVNLNVhVcU9jTFF1WW5pdVNaU1pNbXdhSHJNSktxU1M2MkpDc1lF?=
 =?utf-8?B?d0R5cXhVeXU3U3BFZ0VxdWlWaTRjOWpha1E5UUdUZExtb0dYM3FHUHVMaFlS?=
 =?utf-8?B?ZFFzOU93S3pnNjRBWVdhdTN5OXZNK3VjZVJnTjdzVmVxZys4b0cxV3REZWJF?=
 =?utf-8?B?UmwrK3dkNnlmRUNhOUpHdHhnWHI2alBDK3N6djVMR2gwOS9VM1pFemxZektJ?=
 =?utf-8?B?ejVzRS84aTFQRGI4bmo0NVBQSmpyVllrbXk3TjNvcEt4VmMwNHN6bkxFQmJD?=
 =?utf-8?Q?aDEIF3ZtO7YYcKaCcT+UswBHkhMt2M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2UyMWorbmFycjRFNllkb2s3ZVlrYk1ZRGdSbGtGVWJQSkxTN1lleFZrRkFy?=
 =?utf-8?B?TDR6Nk94RVE0RDA2cnYvUk9Xb0tYNTYxc0ptZGZUOWwzempRV2lUQkJUbCt5?=
 =?utf-8?B?eWpqN1pWVXlNdTRxTk1HTVR2bFBHNmRaelFRKzFxNXF0cXh5Tlo0b2Zia2NP?=
 =?utf-8?B?ZjBoejR2c0M3VVZyS215RkNTUFJYZlFDb0FLVjdUM0lSN3k3MHM0aGt3RCtZ?=
 =?utf-8?B?dXJQTG9IQTU3bkpIQ2M4VzNSWVVHTGd3Rm9lL3ZOT3d0ai9ReGhoZCt4VHBG?=
 =?utf-8?B?L1J3Q000MXlacTF2MWZrYnRieng2aDdSWi9INng5QWliNVJoZVVvQXlxOHVt?=
 =?utf-8?B?TUtydHdGcnQ4Um53bm1KL0NPdnFKTExEYTIrU21ocEp0Q3RzdjcwQk1xVk5V?=
 =?utf-8?B?a1UrK3pKOFV0YVJGa1V0QUYvTG9FVnh4c21ieDVKaEJITGhhSGhEOWl3K2Jr?=
 =?utf-8?B?MitJN0s4UU00bTNQcUo5UnRCeDBpV2FNTTdhMytSL3dENzYvNGZOdWZuTHQx?=
 =?utf-8?B?V3FodDhyY3VyUjRqMmcwemZ0cWtVMWFVM3RBQm5IV3Z2R3U4VmlWYVZBaDBH?=
 =?utf-8?B?dDNoMW9EanhZbzVKM1BhZmszNTBZMFZjaGdmOWcrUmgwOWlDL0xhWUJiRkRD?=
 =?utf-8?B?NTFkWE83bWtPVHBwNTA3RXRtWGthbTJLWWJnYTA5NWlYVW1aMkVDbkhQcjdI?=
 =?utf-8?B?dG0yT3Y1d1kxSTBvOStjTnlxZnpzUE9CT3p2dm1CMkxLWlVwZ1N2Wjc1TVhD?=
 =?utf-8?B?aFRqV1lESDRwYzN0UUd4ZVJWOXBvQmRPRmd3LzFjcGE1T1lRdFF6cVlsY0pS?=
 =?utf-8?B?K0RzQXVuUlgyQUJSbTRxb0lhdTNVaitGbHpqRUFnRG9kUG4zUFVTMkFUWDlh?=
 =?utf-8?B?NCs2WlU0LzZ5Rm9Ra1dIMzZvZTFUVEZkUVprOTViVFROUnk0V0FOb0IrdWNN?=
 =?utf-8?B?SlA4ZUhpZnAzR3hmeldxa3kzd0ZPT3JCZlhHcTI0dlYwa2M2WTk4c2gvU3A1?=
 =?utf-8?B?Yy8wb2FiS1k3RU1VeWVvWUtRWWhvNUtFQ2JmMmlYeXpUc1lCZzlvTVN4aURY?=
 =?utf-8?B?bVgySVVsWnJHMENGMTFzZEZPTmNTbzZpeURxS1Q2cStFU056TU94WWtWN2VK?=
 =?utf-8?B?c2M4UTlhdmc1dW5BczdoOURZTTUrbkY5Y1FBZlo1dWRJNyt5UnlLaTFNTFlp?=
 =?utf-8?B?S3I5UXZJcTNVSkd3L2ZrSXF4cGhCVEl2aXdQdGRkSVU2ZUw4RXBiVm93VUUz?=
 =?utf-8?B?RjRXZit0eVBsNFNZVVl2MTZ6N0FlbFUvUjdGYTQ0NGFETjJoWDRLUVUwaW1k?=
 =?utf-8?B?U0pTYkFGQndHNFVTWUFwU0JGVGdOSU8yNzBZNXNVKzU2Z2YyK1FVdVFsUkpC?=
 =?utf-8?B?L0YxU3QyV2U2UldrOGJkWCt6R1RGNHNjeVR4SjB5V3luOTR3REE1UGZZTkRV?=
 =?utf-8?B?ZnVtTzlsaEVLSVVWMU9wT0U5OGoxbFRWb1ExZkRhb25rNzFPLzZ0N1NDZjFx?=
 =?utf-8?B?K01wd0FoRm1lc3o5KzdWVHlvQkJnTFpNSFc0c2dqMkpjZ3Rpdk9mcUl0Zi82?=
 =?utf-8?B?Y1FWczJVU2I5Vm9qYjd3aWJZVnN0WnIxYjA2WG1SN21GNDdSNWhzbDNoYlUx?=
 =?utf-8?B?Y3BmbkkyK3F6a3hTZjROai8xcEs5YXNCaFFsejhJSGVGdVJLVkVhVjZUMldV?=
 =?utf-8?B?ZVVvYzF5ZHVZNVgwRzdoRWtMQTB4c3pUWFFpd2p0WW5BcC92RjBsL082bC83?=
 =?utf-8?B?b0lMWXFJN1dqNTlVb3BPcUkyT1hveVU2czMxL2krbFl4NkdDVFB4UGNQMWdh?=
 =?utf-8?B?ZUVjbWxuYnZKNmw2alIxcmtCc0t3YnVLbzNmQnFyRDc5cnpuMkdFMzMzWkM0?=
 =?utf-8?B?VXJ5eTY3U3prQ0dCUXpoVEJTWi9jQ1dnUVBSTnN1Nk9heDhCU2NTempLci8r?=
 =?utf-8?B?Z0xJTlA0aVlrMW5kTDNFYmZvcGNkQngrSERNRkxnZURlMzVHRFdKeU5yUTMv?=
 =?utf-8?B?UitZeWdxZEZiMExjd1UvSmJOSE9vbUwrd0d4d09xZ0lDQjlTYW1Nd2RCcE0z?=
 =?utf-8?B?Tk12OU9nNlppRDFYNHgxbDcyNlJJNW96ZG1CWEk4TWEydUVrR2ZnaHVrZFVl?=
 =?utf-8?Q?E8YCsv6xWOdc5dVQEi1j1PlmZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14a7b790-f4b3-4234-3b4a-08dd8345f6de
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2025 15:37:47.3613 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UvtabQmdg4cU4J5hHi4p/165W7u1U/BUCyByUK/6jRJ+7F+O3gLbNioFsXDueqYvohWxCTo07vXQeZpaB1NHd4fpinVtGHJG+dQ9LkUZklI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE8B1F622C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745509073; x=1777045073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8AL7S4kiChTUrnw6iGDtKugRY9ZkFxU40SL0Hy3iMLY=;
 b=SOqnOYfWByNIEE6MJrGdeBwbmFjyg8KqslkE6h1r/sdwwgOBijEL5hBQ
 s76T/Ob0m2KqSoxgmKoT8Fn7M42AgqVw1MFoDTHejvSkLj1RQ0efjPRYj
 VjmJyX93Bntryld6eRc9ma6M7szbvRodWNXZX00219Z7PF0VpovhuZvbP
 Y8pwrRJq/sf4u98q9xdX3Q6L8SfkhmPQ2mfCRxHxwNg5SMWE1RAMr1zvh
 OYcd/Qo2lh4fPgqn16dOhbIbx0J3R4yyjYfH7bunMM1lmZJ8ougpYfPad
 iabYdxOelo0iJ6IhKnwt/DrcglGLq7wlYabNFEGs567ilazcTWlegrNVb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SOqnOYfW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
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

PiBBbSAyNC4wNC4yNSB1bSAxMzozMiBzY2hyaWViIExhcnlzYSBaYXJlbWJhOg0KPiA+IEZyb206
IFBhdmFuIEt1bWFyIExpbmdhIDxwYXZhbi5rdW1hci5saW5nYUBpbnRlbC5jb20+DQo+ID4NCj4g
PiBTdXBwb3J0IHRvIGluaXRpYWxpemUgYW5kIGNvbmZpZ3VyZSBjb250cm9scSwgWG4gbWFuYWdl
ciwNCj4gPiBNTUlPIGFuZCByZXNldCBBUElzIHdhcyBpbnRyb2R1Y2VkIGluIGxpYmllLiBBcyBw
YXJ0IG9mIGl0LA0KPiA+IG1vc3Qgb2YgdGhlIGV4aXN0aW5nIGNvbnRyb2xxIHN0cnVjdHVyZXMg
YXJlIHJlbmFtZWQgYW5kDQo+ID4gbW9kaWZpZWQuIFVzZSB0aG9zZSBBUElzIGluIGlkcGYgYW5k
IG1ha2UgYWxsIHRoZSBuZWNlc3NhcnkgY2hhbmdlcy4NCj4gPg0KPiA+IFByZXZpb3VzbHkgZm9y
IHRoZSBzZW5kIGFuZCByZWNlaXZlIHZpcnRjaG5sIG1lc3NhZ2VzLCB0aGVyZQ0KPiA+IHVzZWQg
dG8gYmUgYSBtZW1jcHkgaW52b2x2ZWQgaW4gY29udHJvbHEgY29kZSB0byBjb3B5IHRoZSBidWZm
ZXINCj4gPiBpbmZvIHBhc3NlZCBieSB0aGUgc2VuZCBmdW5jdGlvbiBpbnRvIHRoZSBjb250cm9s
cSBzcGVjaWZpYw0KPiA+IGJ1ZmZlcnMuIFRoZXJlIHdhcyBubyByZXN0cmljdGlvbiB0byB1c2Ug
YXV0b21hdGljIG1lbW9yeQ0KPiA+IGluIHRoYXQgY2FzZS4gVGhlIG5ldyBpbXBsZW1lbnRhdGlv
biBpbiBsaWJpZSByZW1vdmVkIGNvcHlpbmcNCj4gPiBvZiB0aGUgc2VuZCBidWZmZXIgaW5mbyBh
bmQgaW50cm9kdWNlZCBETUEgbWFwcGluZyBvZiB0aGUNCj4gPiBzZW5kIGJ1ZmZlciBpdHNlbGYu
IFRvIGFjY29tbW9kYXRlIGl0LCB1c2UgZHluYW1pYyBtZW1vcnkgZm9yDQo+ID4gdGhlIHNlbmQg
YnVmZmVycy4gSW4gY2FzZSBvZiByZWNlaXZlLCBpZHBmIHJlY2VpdmVzIGEgcGFnZSBwb29sDQo+
ID4gYnVmZmVyIGFsbG9jYXRlZCBieSB0aGUgbGliaWUgYW5kIGNhcmUgc2hvdWxkIGJlIHRha2Vu
IHRvDQo+ID4gcmVsZWFzZSBpdCBhZnRlciB1c2UgaW4gdGhlIGlkcGYuDQo+ID4NCj4gPiBUaGUg
Y2hhbmdlcyBhcmUgZmFpcmx5IHRyaXZpYWwgYW5kIGxvY2FsaXplZCwgd2l0aCBhIG5vdGFibGUg
ZXhjZXB0aW9uDQo+ID4gYmVpbmcgdGhlIGNvbnNvbGlkYXRpb24gb2YgaWRwZl92Y194bl9zaHV0
ZG93biBhbmQgaWRwZl9kZWluaXRfZGZsdF9tYngNCj4gPiB1bmRlciB0aGUgbGF0dGVyIG5hbWUu
IFRoaXMgaGFzIHNvbWUgYWRkaXRpb25hbCBjb25zZXF1ZW5jZXMgdGhhdCBhcmUNCj4gPiBhZGRy
ZXNzZWQgaW4gdGhlIGZvbGxvd2luZyBwYXRjaGVzLg0KPiANCj4gKFlvdSBjb3VsZCByZWZsb3cg
dGhlIHRleHQgYWJvdmUgdG8gaGF2ZSBjb25zaXN0ZW50IGxpbmUgbGVuZ3RoLikNCj4gDQoNCkkg
ZG8gc2VlIGEgZmV3IHNwb3RzIHRoYXQgZG9uJ3QgbG9vayBjb25zaXN0ZW50LiBJdHMgaGFyZCB0
byBzYXkgaWYgdGhpcyBpcyBqdXN0IGR1ZSB0byB0aGUgd2F5IGxvbmdlciB3b3JkcyBsaWtlIHRo
ZSBmdW5jdGlvbiBuYW1lcyBsaW5lIHVwIG9yIG5vdCB3aXRob3V0IHBvcHBpbmcgaXQgaW50byB2
aW0gdG8gZG91YmxlIGNoZWNrLi4uIA0K
