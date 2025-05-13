Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7B6AB5F4A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 00:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E759060A6E;
	Tue, 13 May 2025 22:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ENKh4CQSP_F; Tue, 13 May 2025 22:27:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F0E6608FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747175246;
	bh=B+llXsfRRD0D0T2VmDMnSgo6RS+0Iy4Lu4p3F7aGHt4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yjbp+9d6hb5uVrwtZyRNz4yFbSleISx5q1bkTBlr7vBN6WSGjf0nXUsBr+DTXtIJj
	 SbFd3vx6/NnWi0QZVQ1//D4VngI5mUxMoeKdeOj0xVjfEL4JUWPdAq6N7wJhcxLLLC
	 Kji3d8GHVs/VdUuhk/lpBWzeYwTsAvWaizttLlcQ1PiA9juMIEf2uYUnVxIe53mMIU
	 mDFr4vSedZhIOOxyj6VD+6u3kLBAHqD0TBDKMq27Q0XRCJ8sDOqBAxEZXr+oNADrrU
	 4rODeMTfoyxcNC85iEmbeo8H9OQ3TixZsMvpGx10rb+OB8b1SElW7JlS3dNjwv8JMd
	 vT93I1WfjOz0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2F0E6608FE;
	Tue, 13 May 2025 22:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D8BE212A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE09D401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:27:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IRGM6nWO_1qd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 22:27:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 507F54014E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 507F54014E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 507F54014E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 22:27:20 +0000 (UTC)
X-CSE-ConnectionGUID: EJjxz+e2TXSXK4icCHpZdw==
X-CSE-MsgGUID: h+JmCnZXTRaDud5EgJI+cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="52858721"
X-IronPort-AV: E=Sophos;i="6.15,286,1739865600"; d="scan'208";a="52858721"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 15:27:20 -0700
X-CSE-ConnectionGUID: Cse3jdAHT3OMJy9fetFF5w==
X-CSE-MsgGUID: jme/sq9sRcq6Z2/jcr2SXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,286,1739865600"; d="scan'208";a="138768703"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 15:27:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 13 May 2025 15:27:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 13 May 2025 15:27:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 13 May 2025 15:27:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i5E/TTS2RnW0BiDWl4lZGiBlwbFvCelx3K6TsZoboMBw9bvxpG+mzJIHuPkXY1yPZCG/mAo0PRrr1frCriRXXl5vT4jB/25iFzjAyUrSGQbrHaMhF6EU3cXnwhgJO6nHRnVE7+4L8qaXhjZY+ulhTdnCAlx4pZePWRloVrr//rzNFZsW+QLA9Qj+2dP7uVvWu/Rn7UPgWWhRBtFgi1+f7I64gJcyLJqetW22OprGlOIRK7xZy3dmm/FP2Q887gNStL82uWZVBL/o7APQKdVsD+F4MVGVDNk9x8QmwSVHn3+UCGQSicG7QIOqfJ1z4smROBE1/Bn/h107fHDTF8e7iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+llXsfRRD0D0T2VmDMnSgo6RS+0Iy4Lu4p3F7aGHt4=;
 b=FjM67ETjZrRPBjGNuEVpJ0g/ySQGUY39KGNxoLkZ9k95YNJ8oPInBBkonj1m4IxmXrxoP8yFIBxzoFnlXyzd0u/93QJXxxOQXMHfrlSFXZP0C5hm01LNfTPJsEkusDqkxFaCT8ZWQZDsVeA7e49OawN8SWqeRm5dLcDfRyREQkEnQpiPRaeVRh7ipUkzfYgtw+ssvAWFqkESHz4LryrUhEBZyDNVjxhhYTPEFl8s9VxvwKxpio9TZUlGI1mU9lteNg8TP0K/E1qeCcovUDJSBR3qJqg2AqHrF/UNq8qGmuYdDDeXEbuYBlk+ubxy7FR+CDgTN51xx8gxVchUivMANg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7123.namprd11.prod.outlook.com (2603:10b6:510:20e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Tue, 13 May
 2025 22:26:49 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 22:26:49 +0000
Message-ID: <8a8dfc47-c80e-45c7-b2ea-86b0d921b226@intel.com>
Date: Tue, 13 May 2025 15:26:48 -0700
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
 <20250513101132.328235-2-vladimir.oltean@nxp.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250513101132.328235-2-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0032.namprd04.prod.outlook.com
 (2603:10b6:303:6a::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7123:EE_
X-MS-Office365-Filtering-Correlation-Id: 448e81e8-4398-4b11-e081-08dd926d40c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2ZobStqK0ZReXJsNDA0TWRGOENEbWJHRW1UYnRpeUZIOVNPZEM2bk45WmFo?=
 =?utf-8?B?YUw5S2dKYXhrWU9ZeW5oVEdJMDNqbGxURjRodC9kNXJZRm02TmFjMW5JOWZ1?=
 =?utf-8?B?RmxhaFh2b2JoVlhxcmhsSnVsenNUQ0ZuWFVmaE5CcTlZVXQxUmRMRldZOFhP?=
 =?utf-8?B?SUFKZS9tZkQ5Q0g2UEEyd1g0RkpFbncxZlNkN2laZWVMRGRoZmNBeS84WmdM?=
 =?utf-8?B?Q285a0wvVTlsOFExblh2MHYzcUVxbmp0VFBVcWJ5TmkzMmxpQ0cvcjlxbklw?=
 =?utf-8?B?WkNTczhpTDJ1QnJ5MFFqbVQ1aVBRUXFuZHk0bU0xeDIrTlpFeHp1UlRqOEdw?=
 =?utf-8?B?aUZMMkg2eTRBT2FMTkZVT0tsbFF1VWpRM2JlWDNzT3Z1WlZTaCtDYVFVWFV1?=
 =?utf-8?B?cWhQSEVFaHFiSThtOW9pQ2JUZHAzSlZaVVBCNm9xR1dXVnllZWpzbURnaUw0?=
 =?utf-8?B?TGJ1UkF2L1I3OGVHd0w3SytCSFJFUjgvUEh3b2RXMVdOMG5jUnZ4UjBxcExU?=
 =?utf-8?B?SEIzU1VVdnl2a1hFME1jZ2FIQnNvck5PWEQzVnFCZWVPZzdGSDliM0JyRk9m?=
 =?utf-8?B?R1RONk1tU3VWcExyREx3SFc5dG1WTlRNY1lZKzhLZ3ZVemFBYnBwTDBzUDR6?=
 =?utf-8?B?S0lkQXEwU2tQL05UZzdOdVhhK0p2eHp4L1U3ak1ScXlzMCs2NmFZaEhpbElJ?=
 =?utf-8?B?emw3VmxPWjZEbEFrWTBJS2FzTEk0QTJpRDBxd0EvelI2VDB2Qm1WOFE3WWlI?=
 =?utf-8?B?UzFmU1dHS2pBRzFlaC9DOGRBRi9PSUhKbWx4MmNYQkJDTWNlS2NHTy9Pd1Iw?=
 =?utf-8?B?VDJyOHRHSXlvaGhVdkFjbklsZC9sQUxGeUhhN0lLTytRUEtMU0p5RDlEbjFP?=
 =?utf-8?B?aHNmdDB3ekxoUi9ydDEySUV3YjJIS1liY0l2MENLQnA3VTMvU0U1MkZHSXhJ?=
 =?utf-8?B?UXBqSnlNaktlYUtiR3dMK3B2QzR6cVB6WlhkYmUyVXl1UUpjek1ia21OQUp5?=
 =?utf-8?B?SE11Tk1mb1AzRGxCUnAzQUdacXBwWjRIc1lOcWlKOWYrK2wzVnFRU3Jnc213?=
 =?utf-8?B?bE9vM2ZodHhvK2dGZCthWUk0S09yaG1IRzdOOVpVOXpyaUI4ci91MWtjVU55?=
 =?utf-8?B?QWVIb3U2QmxXeUFGeXVkNkw0Qjdoc0ZNYkIyQVlWZFQrcElka1BoNGFlbjBK?=
 =?utf-8?B?VmxpTWJITTU5Z2pXUm4rcE0vWGo3NGYxZXNrblYxcEtEOWt2ZHNoUW90eGFF?=
 =?utf-8?B?ZS9oK1U3ODZBQk5pUVR0bE54NHkzNHFhMjZIUGs5YlBNZllRZ29sNXpjWnpo?=
 =?utf-8?B?Ty9kUEFYaWhNUFV4Rm1YNUlUY1drcG1UQ0dIenpiYzFuMitPc1cxLzArazdF?=
 =?utf-8?B?Tm94bVAyUXY0M0tBSm9LTld4TStSM25MVmJ3NkFWVElYNW0xRGZPLzduYmJB?=
 =?utf-8?B?Mi9kaU5mTDdmQU1YekRRWklkTmdDNTl1aEljY3FLeUpVRUhQUVlwOW9nV0I4?=
 =?utf-8?B?SGNESDh5ZVRGRENRdlR0ZERoaUY2TXYvdmJ0VURGaHBqNXYweGw2YW16WHNO?=
 =?utf-8?B?elRCT3lSNjBNTkFJUW5wUjB4Z1dxVWFZVVR3QWdTb0lKandvVThiR3RXSGw4?=
 =?utf-8?B?UWY0MmlhVVZZQnJVSHVZdGtoMzlCb1ozNkMvVytLSUpVaHhiZVcxL0o5KzVy?=
 =?utf-8?B?aFNPMklsK1RaTDZ3R1Y0ZUsvcW85dkdDMUZDWEI0Ym9NU2RBRTVZaGU2d2Q5?=
 =?utf-8?B?dVlITnJRNTlCTy9PK1c4ZUlZVmFySlBvd2JkbE9sYzBCRGJRQUtUKzFBcXFS?=
 =?utf-8?B?UVcrVkVUVzZJaWtLVldIbW5RNDZndlFCckZnWVJGelExUnFxY0hBNG9OL1ZX?=
 =?utf-8?B?amlkbGdBbmJQZm5JTDZoRXZ1K3NraHk1VnU0eEJFL2xmNUU2blRWd0JybTlT?=
 =?utf-8?Q?k4dmyfaU1MI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0ZBWm9wNkl4S1p6TEhmRjhXUVZSZVAxQWNrTkpoYit2aG45MktJbldobk44?=
 =?utf-8?B?YXBPT3o3YTQ1TmpQbnova25EL0hUNXlDbmt6WE5YbjN6NFpIM3NmazBlejh5?=
 =?utf-8?B?dGt1ME8rUkloZ0pqM2s1RG4rUFlvU1gyaElEY09JWDM3T3VDbnFPQjVJVW5M?=
 =?utf-8?B?S3dTRTlCRXN2S2E5ZlN5Q3A5Z2lBWTNpQldSMUE1WHQ2Z3B6TGg0Z2hqdzg0?=
 =?utf-8?B?ZytkUGZvSXY1bmlMK1NrK2UxYVQxSXJ3VGlLQTZ4SFBUdlNaVTN6VWY5NEhM?=
 =?utf-8?B?OGttNk1iZFJaKzRvNXNXSUF2S0YxdFVoU2l6S3FQcGh3UHdJK0tFVERCQkMv?=
 =?utf-8?B?MlUwZW4rMU5adlc3SWNqNnBlZGtTUlpSL3Z3ZmFKeU52VVo0SXJYT2xOQ2NN?=
 =?utf-8?B?aUM5ckIxODBYMUR3dklGWk1vcUR3SGtUMmdnN0x1NFZjd1hRZkMvV3NiMjFT?=
 =?utf-8?B?RXUydmFocTV2MEZGTjVNTVNNVVhKT2ZFYkRVMXB2MnlOQ3dYWW9HclNEZ3pQ?=
 =?utf-8?B?ZzE1V0NGQklaeW5RZE8yN2RWUWJubmhURW40NzdydUovMWlvbnVKZDJvOEhq?=
 =?utf-8?B?MVluWm8wbHJiVDFFSkY4KzVWUjJ0aVZvOC9tS3FmQ01xcUR2UThzSUFFd0Y4?=
 =?utf-8?B?Q293Wk9KS2IyQ0pLRlJMazBXRVFWcmJ2d2ZVZWJpdEdRWGFUQTA3djladWNa?=
 =?utf-8?B?TWhjMWljNUQ3STV1UHBlalgyRXk1OW5uUDFrdndoQ2x3cXBVLzlUMlhNL2RI?=
 =?utf-8?B?ZTBzTGptUnIxVS9hdlZxeVBydlZOZlEzcWt0dVFhQTVxMHVFL0RPR0k4ZCtX?=
 =?utf-8?B?L2JvUCt0TDd2NUgra1Q4bjRXcUZZRC83RFVZRzFsTzg4YzhwZGQ2N2F1cnJQ?=
 =?utf-8?B?OGJ2SWRscHJpbTZKMWR6WStGME1sWTMzcmE1NVZqYnM4VWVQRUFRZjN1NHlS?=
 =?utf-8?B?WDdvVTN0bTEvMDZNbE5EemNMSGV1eG5PMk5xQTV1ZDNwRlM5OUFQWkx0Vm5Y?=
 =?utf-8?B?VzlvWE5HTmc4L2JqaUlhUEE1dFlwbGJrVnlYaUVaT0dKYllCSWRwRXZESG0y?=
 =?utf-8?B?VVlFdU15NUNEM3IyTHlDUHQzaEcvT3UwL3NkdWxVcWRYSGdxb2FObkNzOEdG?=
 =?utf-8?B?dkZDN2VTYW9qZGJZMEtibVpLWWJ5VFdSdjJmWlNVUXF0M3gzWVRDWGRKSzhO?=
 =?utf-8?B?Q0JWUVZTR2diYktvODdoREE0UExWNzdISGd5MCtOWkpOOVBqdGh2TGRqVVBV?=
 =?utf-8?B?TXJrbkZiazRrVUNEWWV4ZUFicFpNcGJGVmttTWNkYnNpbFhtMzZqOHFsQk9N?=
 =?utf-8?B?KzVLY09NS2VnczhhL3JQMzZwVVhTWlNUNDZVekQvS2Y4emJDejNvRGs1NUtW?=
 =?utf-8?B?L2VoVkFkVHZFMk5FSUFRNUNncUt5djdiS1VvRkh1STNnbVU0T3Vxa2xxeEsz?=
 =?utf-8?B?c3BZQW9YcFA0NXBTWlF0eXBqTklFRDhWNlR5TTZOeUxlamtKQk1UdVR2QU54?=
 =?utf-8?B?UXQ3Z3kxa0J5bU9SaGF2a0E5Q28xdGU3WG9pMkRwZkZqc3g5aGJ0SnVxRXhn?=
 =?utf-8?B?M1dzNTlNUFkzMy84M2ZWU25MVDdWd1k2d0dzNVBGOWNXRXBxbWsyZHdIMHZq?=
 =?utf-8?B?bmc2d25pS3lpdktZYXJrb1F5L2VSUERiVUNPQUJPSGs0VlA1NWtVS0V1c1N3?=
 =?utf-8?B?VGl4VXlxQXVoYzJReEF2dWFldG4yOGlOb21lODVmWE42ZVJRcUtSeHZtNURT?=
 =?utf-8?B?c1h6RGR2MnF1SnJrTWZ1SkdzTWJXMWZGTDZ2aFhiRTFFTTUwdVVnblE4NVRB?=
 =?utf-8?B?K3k5OUlzUW1LYVZheHRkL01ROTRORUlJVEg1cmhmUFdrN3J6eEpGZ1BMZ2dm?=
 =?utf-8?B?N3hydVBCd3hOcStHM05wajdzLzlhdit1QSt5d0xBKy9OT3lUS0gwejFxNWEz?=
 =?utf-8?B?RkxubkRhc2VaMkZhRHAxL0h4M3BLcUVzYk8yUmN4cE41VS9CMTFkalFPQWxq?=
 =?utf-8?B?cStFM213K3JSbzlvNldRamZWditvTURIc0trSy85Ums4ZnJtU2NMTnI4NVNX?=
 =?utf-8?B?N0NiSUxkNEU2QnBEVm1pTklWQnNBWElubnAwNUxsMnZEcXVaNGtUd2VHL0xH?=
 =?utf-8?B?SWZyZnFLaVNHWkx6dS9hNXRpdENRTVRIeDN5RGhYM2R5Slh1aHAxUjBKMjV0?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 448e81e8-4398-4b11-e081-08dd926d40c7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 22:26:49.5052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z9CWs7Rz1+zf2mUJS967dYBRdc+4ML1iSa+Kl0g91ATY8csmV4JJkvCH9wfHXx2iE/NgnLbjPy2HiJKissx1LRqY3R+uqOesDSrPyuX03vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747175243; x=1778711243;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S54GflFet/4OZq3ljmHZgznW9exMfqnlH9/qQUn9eik=;
 b=IRxuFh9RKXLwto9pbnD8yIdUlWZRHud6RRWpd8grb3Xxf1Oa5FhwFR4u
 fLGlT2yvJHTQqSK8YKoPhhTSGSnI1l+snI/mEhIvcYSHkhfXtVfpHRBqw
 ZLD3tLlx5NX1zQ+S9R+Ajcg3GBeQCR5QBFVGrXDy1t7zpw3Ou5nMxCtv2
 xyeu6wA///cOXQ0+I8kcMp2x11FXD7i8xSofT/HutvoLtlCXt7bdzD1pn
 XibTekZOIEiJW1HK1wh/r5LiHQQ6SDvezSwwe1tm5tSqDLSP5tMcoQ7pd
 SXaND/KRx+BVx+ccxKbkHtBxAOm4zruWDbhq2Ak6mCtpOHBGtKZkDEoQH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IRxuFh9R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/5] ice: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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



On 5/13/2025 3:11 AM, Vladimir Oltean wrote:
> New timestamping API was introduced in commit 66f7223039c0 ("net: add
> NDOs for configuring hardware timestamping") from kernel v6.6.
> 
> It is time to convert the Intel ice driver to the new API, so that
> timestamping configuration can be removed from the ndo_eth_ioctl() path
> completely.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Acked-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Previously submitted as
> https://patchwork.kernel.org/project/netdevbpf/patch/20250512160036.909434-1-vladimir.oltean@nxp.com/
> 
I had a minor conflict when applying to Tony's dev-queue, but it was
trivial to fix. The series has been applied and marked for testing.

Thanks,
Jake
