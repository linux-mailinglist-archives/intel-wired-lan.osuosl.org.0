Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B928B8A63C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Sep 2025 17:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F34140F03;
	Fri, 19 Sep 2025 15:48:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 12P-KNVwDAuS; Fri, 19 Sep 2025 15:48:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE1D940F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758296890;
	bh=tnYS9WtAbN0BQJJj+4Y42SBIjfekIQrFWj9BkrRE3WE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KhqgYFtKf348IHZ2tH9VNLtMaSRH8ZKyEFTS5d+JyJpLYzk2kY2kUHFcNteJYG2Vj
	 to8C/OgX23hcBR36vHBLN9CIbIwh3NzrevV6e1R/LWcDqweX4oN2AVmIxUC7aUdVZq
	 qQMQcUdXF6Mk89u9AmDXj4X5CNu8mSNSPXl775hC3j5h3RNbxr5RUBROm0549h2K/h
	 uE0Mh3SOI8o2JKS2OlDNrUOhOu8wBeAjdd6fF+15ClH/5rkKJvqEqiqBJEPou3itEg
	 0r5J9UTnz1KSOhtJUjiDGQkr83SGB07HzCt/DMWO8oGj/05M2+A+YwumdSW4tA8jU2
	 /XGAhqlwZSsxg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE1D940F60;
	Fri, 19 Sep 2025 15:48:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 17D24D7F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 15:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0662440D23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 15:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iRq0M03Kuhfl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Sep 2025 15:48:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0C96340D14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C96340D14
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C96340D14
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Sep 2025 15:48:07 +0000 (UTC)
X-CSE-ConnectionGUID: jbnf+6o2Rhy3E/p8MPQ/ag==
X-CSE-MsgGUID: vkBLYOLaSpKLVPfk+8qiNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60533416"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60533416"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 08:48:07 -0700
X-CSE-ConnectionGUID: W9l0Ml0kRRCccsg6dKamhw==
X-CSE-MsgGUID: xZU3XrpcTpi08FaU/ejtcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="206609336"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 08:48:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 08:48:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 08:48:06 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 08:48:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tninechkOgjyZX/WZKc/MVLkhwWE7KN76J7rccWuqZINNono4WereQWMm0KL+OTxI6DjVbGIMRUTP+kg5FsbqbqsCREMGxRsDP+LmALqO8vDEI0cjiXCduYdf4OTToXAk67XHw4c4uKbt357Kj/i7MFL5AKQKPobcQUT8ZcmJ9PG9uAursbNyTl7wX2utZVugK4d+w72fB7RxLo21/Q1XS0nh6T1Bd8BqFhWipdRUtHI3G95Gmcg9EMa4/d1P0/FSJqisYRAcfFHXlZApFRSrWbUGZRDunSjuwCM55ZwvZYX3d8+MOfm1aiFlKMPM/u6kcN3m1VQNAjzIbayOlBCfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tnYS9WtAbN0BQJJj+4Y42SBIjfekIQrFWj9BkrRE3WE=;
 b=NCShL1KJ0HFi6C6JQlIZuB6I2DbLDjwsVseRGc8NC43+hsA6f4UGjizO72yfMOB1cliAD9f1VNdDqiNoWbqdbu1qenRN2FZxOCBb48G3yKUdjry6SVNoOaIOHTAttn76eCBObcafN0GBpPhNRDDBWTpritjfss00d1nQGZZFeLdoT1czVvKLFaPkfgpMngvGx2kCWebtdshux0EjV2ln4G41YO6L2i9Xq6vphqTIusj9vuPvZ2Ogr8vTuXBKsZFudupvUuC6N4/9zy+Deg9vNx10QTDn1VCoqbbLoslss6sdO3JZKYLzV4scPw3pl1EElWlxAGK/U2amn+I1YQKQoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CY5PR11MB6281.namprd11.prod.outlook.com (2603:10b6:930:23::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.16; Fri, 19 Sep
 2025 15:48:04 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.9115.020; Fri, 19 Sep 2025
 15:48:04 +0000
Message-ID: <e9fe2d3b-20cd-4e22-b14e-f395c483edd0@intel.com>
Date: Fri, 19 Sep 2025 08:47:59 -0700
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "Carolina Jubran" <cjubran@nvidia.com>, Donald Hunter
 <donald.hunter@gmail.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Gal
 Pressman" <gal@nvidia.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Michael Chan <michael.chan@broadcom.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>
References: <20250916191257.13343-1-vadim.fedorenko@linux.dev>
 <20250916191257.13343-2-vadim.fedorenko@linux.dev>
 <IA3PR11MB89861635B2B78A559A8EAE12E517A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <6cffe63f-4099-40f7-afee-3f13f1464e56@linux.dev>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <6cffe63f-4099-40f7-afee-3f13f1464e56@linux.dev>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0222.namprd04.prod.outlook.com
 (2603:10b6:303:87::17) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CY5PR11MB6281:EE_
X-MS-Office365-Filtering-Correlation-Id: a462ce61-307a-4b06-775d-08ddf793eb2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHNYQkJPZFk3enlWcVZEWkpxcnFVQ2RhTXVuMXlkQTdKN05HbnhFOWtpZ2I1?=
 =?utf-8?B?OVRwdnhxbFhyU0JDQVVHWjdGeUdldkloTXNkbW4ydE5aSHdydXJtaCtLZUxX?=
 =?utf-8?B?UjJKRmhURHN5TDcxQ05vYmh1akNxWXNmZDhaaU04OFUvVjY4T0VPK1NpVGxj?=
 =?utf-8?B?Zy9nRlpwcXZnU01xRWdveTllZjE0QldxUktBd0p4dEVNUEVTaHN4dUJMd2Rh?=
 =?utf-8?B?WStKWDd1TkZlc1Mzc2dTSVpiMCtOSzJNcTFtUnROc0w2aG5PeDJvYWpmZlZI?=
 =?utf-8?B?ZWpIQ09pTmNoTy9FSVJGOTBVdkphSExYSHJXNlJoakZUN2FDcGNkb2hQbHB0?=
 =?utf-8?B?dG5OdHhKRzZTOTRNY1lsd3F3bGNxKzJpd0V5U2YrUWRMM01UZ0NKLyt2MERX?=
 =?utf-8?B?dGdRbnV3Rjhza254RG15N01XcmdUQUtwdEYvUDdmZy9LV1BKUDFzc2tPdjBG?=
 =?utf-8?B?NUJLWktnZVNUZ0RpV1ozR2RiQkdaQ3M5b0IzV0R0YnVWY1AvSWl1czN5NzFE?=
 =?utf-8?B?ZXF2MHRadHVOcHZpMk1OdXFmdkRHSlo4OGtRZUhRcHJiUlhaemZyeEpNV3Nz?=
 =?utf-8?B?MFRTUnV4RGtHQVhKMkplY1NIczMxK3VSa25aSWNjQzRNQi9paTd2SkNaUTJK?=
 =?utf-8?B?RlIyYjd0WGd6bXZrK2pCODNvV0kwdlBpVFgyTDgwRmRLRTR3ck1TaGlsQThP?=
 =?utf-8?B?Mk8xRjVtV2R1b05LTUh5eGQ4eVFtUC9ubE9OdmF0aDhENmVXMG5KM0t1bzJL?=
 =?utf-8?B?cUpxOHFHTXkzSVpCOElPZDBWOXk4K3lIM0xoSVpWTWlUWVRQV2dmK0krcmN3?=
 =?utf-8?B?cUowL2xNS1czc24yVHBHeVdpSk9tandIQStGRGYwVEI4b1NxOEFuZWE4MHNx?=
 =?utf-8?B?cE5hOW83a3V3YkdjZ0twNmc4aGwyQ0FlK2NPVk5uNituUW1kRE5PeXU5dlZw?=
 =?utf-8?B?bytLU2ozek40dXh6ZWZWRHJlV3pJTUVkQ0s1amRnQnFXaTNza3ZUazEzbk1q?=
 =?utf-8?B?MUFVMkhDSHl6Rkt4NGJPK0loaWY1OGZMSjVmWlZ5WkhFdWYzbjJ3V3hYSWVL?=
 =?utf-8?B?eHM1VGNLZ2Rkd0dNczE3Z0ZucUwvVE50VWpROUd4dHg4YVNrcTdGTi9MNUkr?=
 =?utf-8?B?VlJzTll3S2dENVF1N0I5Zmd3MUNMRVF4UWgvdXFMRU5uS21JdFJJOE85M1U2?=
 =?utf-8?B?Zyt0WDRMK1dIREk2eGVJWDIrY0FIRUtKMXRObjI5aWRlZnZvVlFVMUJTUkpp?=
 =?utf-8?B?S2ZjTVJLN09NTkNVOE5JbllTTjczTk9zUmtpWlYrRnN5bUh5OTNJYzRpVDFN?=
 =?utf-8?B?aUtZTXE3ajFnQm96UkFGQjF2alQ0TWJib3lYbWFGT0RvbTB1K2tHTytNMVlK?=
 =?utf-8?B?YzFGdHh5N1d0NTZDbDk2OXgyN0hXS01GVjFDRkJhUFVEaThPbjBzMkxvNnhz?=
 =?utf-8?B?azBveGNqMzdUTEQvQTRxdFlkYy9md2RyR3g5VGJlQ2xxa241MHpLbVJWbXV5?=
 =?utf-8?B?L1AyVjhSRE1TVVVuUFFTQUQ0TkMxN2hENWRsQWhDVWtTV1lJS0VNczNrWEc1?=
 =?utf-8?B?aFVMaWN5VUtuTDNKc2FRZmU2VXNlMk5TRlNTYkhyM0F0MTdLOHg0VEgwRStk?=
 =?utf-8?B?UDNWRElEc3FTdWNnWEhYelVrWm1lTUllU0wxY0ZpUm90NVVpYmJHTXlCQmVy?=
 =?utf-8?B?a0Rzc1hsSU8xKzhwbWFzZUQrRVFEWkVGanJCeDVWUXVMdGJEd0pHZ0dQcEZI?=
 =?utf-8?B?VXRoSTY5cTQ0NDdNejh6N3hMdjloWk4zR2xjKzVsNUdOQjNpNXVZSm5qb2lL?=
 =?utf-8?B?Z1EwQVhhZmMwS3M1eWJwUFNjejg4d25jR2VvTHUwSFh4cHBUNHZ6b3V4R1FS?=
 =?utf-8?B?bEd2ajROWTVCbkJFQVJXZTNKU3VoOC9vVnpjNnRaZTc0M25TazhWZTZWNHRO?=
 =?utf-8?Q?skpj413nWYI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUI5MSsvWFJxNEtCTFRBSThNMW1laWtGZVRJRFBUdm5qQXl5QWFiSE93eUg3?=
 =?utf-8?B?RTFPckdsT0pSUG1DRXkyTDc1VTNNQTFUMmpRWWRTeHczS1VjMmwyQzlVaXBm?=
 =?utf-8?B?bU9kSHRCYWJEQzNwaUx2ZFhEMy9QbXIzZG1GVkZKTkRvbWNVUldRdUcveXZV?=
 =?utf-8?B?elR0UnJpSHdsNnVSUXpsQXVZM203NVJXb1NrYjNNQjNsTUp6bEo1bVVMS1Yw?=
 =?utf-8?B?MHRjZmV0d3AxVjlwOWtoQ05SWm9RS3FGUm91bkI2V3ZBOHd6cTF5MDQwdFY5?=
 =?utf-8?B?ODRkcVlQMVJldkg3REtlUE5BRTMzN2hHY2orVW96YlNGd1cyRjF5YUFrVkdm?=
 =?utf-8?B?MzVsOHZVY3BGN1RObHBiN3lxUmxUeVJ0S05MUFovTUVTcU9ISjNiZk93UldH?=
 =?utf-8?B?MitCS2k5d25JNVhRdEVpU1RjREowYkd4RCtuWlQ3dVhGbmcwNEx5M1NZWWYw?=
 =?utf-8?B?WERCcUZ0UklFWEVibUtqVXdRS0ZvcG5jVHdidHdKMHE5OGJaTmwyTVZmYW1s?=
 =?utf-8?B?bU54VS9FWFdsR1B0OW0vUldOdmkra1l3Y2svVm1MMU1oZUpTTHpQZytBVjRk?=
 =?utf-8?B?YndOdWxNK2RXY0ovck9xV0VucWh2S0JHekhEaXE3eHdEa0ZtZENUazhaaTg2?=
 =?utf-8?B?RFYrRURNSmpyVW9QcHloY1hVYjV3S0RXazZ0VDJ2STFGMHo0b3h5U1V3Nk91?=
 =?utf-8?B?WE9tR0dEM0xtV1A0STdEQXJRS1ArNjgwM0ZCV243NGVmVDJjUFBTaFdxays0?=
 =?utf-8?B?M1RQNHJ6OUZ4ZDhrbWpYdjNmSzVTVUlOcHJOVS9XM1NSTFVLOUEzU0hRSHpO?=
 =?utf-8?B?T1N5RUFHU3dYSHF6TllGOVprTEEyVlE4L1FwTEd5cFQyUlhnQ3g2QVhIM3N2?=
 =?utf-8?B?ZmVpcTdKQzFZazFpYkpCNWYxV3BtTlFVVFhtRUFhVmZKZkFrd3VDY3VUbTBs?=
 =?utf-8?B?V3dBR1lPNWtHSjBVS1phQjRIbzMyY1dreGdhR1oyNGFpVks3V1Fhbm4yckhM?=
 =?utf-8?B?TURSdzREeDhmYk5rc09hZXdEVkdBejloZHRVNG1Oc3luUUp6dS9EYVllalha?=
 =?utf-8?B?WHN1b3QrU3ZHQ1daaFBNSVJrQjBDZWRDKzk1Szg4aVdwVU1FSVYyenJjZE5H?=
 =?utf-8?B?YU9DQjVML2x1bnNSK041T1JZQnEzMit3Vkt4VHlqTllKTG1BZVFEWEhZOTFh?=
 =?utf-8?B?MUhCK041UFhhZ1l2c2RjTnhPZUFuSW9zdElHWU0zcUZ1M29WRXpXUi9VYzJ0?=
 =?utf-8?B?NXVLQkJUQWg0OW00SGpJbUx0Ui9RR2F1MmZqZEhDd1Q5T0ZTa09zL3VJVDBp?=
 =?utf-8?B?MUllWldKSTFqKzFENHBSdWNnT0JlQWFVODBNeS85TUVnd295aHZNZC9OZkw4?=
 =?utf-8?B?OGNPNWZ5bndZb016SUpKcE9HUitKQytHQWxIS1duZit3ZkJmbmRHYnZvdTdC?=
 =?utf-8?B?blYxbzNnOFhqcWJGZm5va1ZjSWREQ01NclRQalFuWlVnOFg1SjZLcFUyeHJW?=
 =?utf-8?B?WVhqdTl3UUw1cEl1ZHNjNmdLS0xiRlFzY254d0pFZVFOOGZ2R3RzWUwzaWZv?=
 =?utf-8?B?REF1MzJvWDYvZnJlVmtOY0gvMk9MYVJ3anZpMm91TDZENkxaVld0eUxPTVNR?=
 =?utf-8?B?UFFwL0pQUnM1UVhnM2xZL2RjK1JmSHBvejZOelhvdnBaZ2pDeHcxaVZFV3R0?=
 =?utf-8?B?Vmh1bE9SVWNqTWZ3WVFzLytBWHY4R2dMOWR2OFBpWk5xTkc0YzhGRXE0Rzcz?=
 =?utf-8?B?TGVuMXdUV1U2cXNicStFaEFpUlJ0NW9NakR4NmlDSE8zR2x4QUMyVFpDMXZF?=
 =?utf-8?B?aW9SN2JLNG1kZWJnUi9GUTEyRDhUR3Y5Sk15Tk92V0J6WHE0Y2RZQzRtMG14?=
 =?utf-8?B?Ymh0ZzM3YUVJRzVWeENuN1h6RlRXWnM1S3ZyT255YzFFck14TmEwbzdQRWFm?=
 =?utf-8?B?amVQcUljS29jNzNwejgwaU53TWNZT0NLeG1ZOXlMaEcwbTVOVERsV0MyUWZy?=
 =?utf-8?B?dnh3c3g0NExpN05NVGdQQnhnTXBRVXF0RHNibmVYSzVBUkpReS9MWm1ibStJ?=
 =?utf-8?B?T1c1c2ZsK3hNWkJJWUZHbzdDOFZ4MUdTOW5mVGZYYlNPanAzUFdrTEs3QlJj?=
 =?utf-8?B?N3p5WG5sYU52dmFVdzVaKzE2SjdMQWNMdUZSQkxjWUxFak1ETFFackRkUmZH?=
 =?utf-8?B?SEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a462ce61-307a-4b06-775d-08ddf793eb2a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 15:48:04.0103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oWXtw1GrLdx3ORV2QrZKc9p9MaQfE6yu3wGXpmlaU/8NCklMROXkTkrF7qtI3EpZMXJpQ4ogmvO20U1pM/sWAnkVyrYfR2WYtWQxqFaeNtY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6281
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758296889; x=1789832889;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t9j8tzLC45Z43KL3Bhp+yIHcuZlfOxPXvLioFQYRdAA=;
 b=mNnWoikmNtjYjweFh0jbVf64jaJUUBUs/3pSTPZdxNXg7V96d4wT1XNU
 0DRsLWGYZc7RY81Cjkq0k+N1RYFLkjPsQWT1qLof0YY1BkxPbQrq/MALY
 HCnzFRhKAg3WY5WW0LsWWI+Wte5R4YqQ0skDXx6tz6NDasgJWgnIC7Uee
 piZNQaE3Zb9v5ZwciYE50JkPIIHiEXcltVsVVrdWtmOXGLNgrB1F5Y/w+
 11rBB7gIbDq+ELTbnP25khFMBT1gpvpcMii6dcBaHIo8gpe82vqi/X2ma
 HnC13KXIh+KuoqJGkB5x8BG/dN4qKHYiQQAOHShnSgcS6O/mQLfR1731f
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mNnWoikm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] ethtool: add FEC bins
 histogram report
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



On 9/18/2025 3:58 AM, Vadim Fedorenko wrote:
> On 17/09/2025 12:27, Loktionov, Aleksandr wrote:
>>
>>
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>> Of Vadim Fedorenko
>>> Sent: Tuesday, September 16, 2025 9:13 PM
>>> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
>>> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
>>> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
>>> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
>>> Hunter <donald.hunter@gmail.com>; Carolina Jubran
>>> <cjubran@nvidia.com>; Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
>>> netdev@vger.kernel.org
>>> Subject: [Intel-wired-lan] [PATCH net-next v3 1/4] ethtool: add FEC
>>> bins histogram report
>>>
>>> IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
>>> clarifies it a bit further. Implement reporting interface through as
>>> addition to FEC stats available in ethtool.
>>>
>>> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>
> 
> Thanks for the review!
> BTW, do you know if Intel's E8xx series can provide such kind of 
> statistics?

Hi Vadim,

I'm not finding anything that suggests we have this information 
available/accessible; I am checking internally to confirm though.

Thanks,
Tony

> CC: Tony and Przemek as maintainers of ice driver

