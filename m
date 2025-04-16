Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADD3A90F00
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 00:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 442A682096;
	Wed, 16 Apr 2025 22:58:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmLFtwEL52yC; Wed, 16 Apr 2025 22:58:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 232BC80E2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744844284;
	bh=OCCeoke+tkRIw0Ursdt6AQwtTxmEJyEA4BxbMMP1rtg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YkCRgjaiAqjICTFBUpMddCvSN/XPqUaMXoW5fJpbVjZbF+gdUzopWgcdtBQpO3mKT
	 j/fTXO1u3nKKZdiNsO8Gk3SPHaZpW3LBF7jlZPp3L92A16Fte4o9dsN6Jcf5Qkjdnh
	 dexJ31ReNdEpG8ujBYSY5bE2Qwn7Ho/G58RljgP8vM9las1bPg/OdoKK3Dsu9pw5Kk
	 qsPYl8fu4k2zMWMhkss2EmTBXxGvOOkuc97NtOHZk6WGnqLyOTF/251bO41ZuIli3t
	 EMrUoATpDHrIwcguZlvgGa78KQHHs8k8U/Lr8+vhPxBODL2aNaN1+Jl9h1M6yohdzI
	 zAh13F+h7cXEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 232BC80E2A;
	Wed, 16 Apr 2025 22:58:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 26379444
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C05341E55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:58:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3uDan77IF-uq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 22:58:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 258AF403F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 258AF403F0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 258AF403F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:58:01 +0000 (UTC)
X-CSE-ConnectionGUID: FZT/MfkjRE6YDbyJGjuR+w==
X-CSE-MsgGUID: N5nwfyFlR5uCfHk+P0EgYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46133094"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="46133094"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 15:58:00 -0700
X-CSE-ConnectionGUID: hPTXHg2iQImkwqSN5GB09Q==
X-CSE-MsgGUID: OhXMxJu7Q62rmr5Ixhogfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="135609667"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 15:57:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 15:57:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 15:57:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 15:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q6DcRC5TFhTwQwO60SAJW83IVC7HAfm5okigjP2GC4/NbM4r2WNiL+igQXOSLCrZdUD5zjyr8b+yyJ7epGdV4+Uq3vZk9J1HIVwGveJ5yZHpwnxzKJhayDL74npnTHEfhbXw+WkG2glAjUinPZJ/udi8TAk3EHYVoKM3Tsen/3QZVXq3KWUY0WjPsyDcbv4CuVlX7tXVlUJkmozkSWBejygmchOEN6EqCA3W9yM4m0GWooYfa1Ph9Ls5Xoh0GS9YvIezxkvOvL5MZwMA6aVZ6YAcw1Sf34j6yIABTUlUb5J06Df3PeywSKwAaz9CEXQ3ATrBt6NRwB3+7wj1H5dTGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OCCeoke+tkRIw0Ursdt6AQwtTxmEJyEA4BxbMMP1rtg=;
 b=XUSzbAG9ToCfojN3lSE4ov8PSMZo8gbgUhKeOw8OkUbR6Bcy5tux9fEVUnt6T4KXmM17z3wrNr7S4SSzOGZB7VXSn7YFHNzmf/DLf8zM+ZsoQserlYNU+5T7sLdmjkkOpBXATNbxIzoa8UqGa0mTh4PJjHMDyjOYS4WbfvCj3f7z8xmn7Ay15jT2HVZAS+phAEgH43tTbggp+jNPSKCWMjkvIpnv9bfrejx7fWnk48qxAogNIymSORWQnnJeyktRMRjs2EL3NJ9w/tlL6FkOir0bAq++F8x1zxtsrNdBAGPGq8x68NwgQxNx9NmKNJoDxj39KilSriRH95bCpr6hEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH3PPFA061B3868.namprd11.prod.outlook.com (2603:10b6:518:1::d3d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Wed, 16 Apr
 2025 22:57:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.025; Wed, 16 Apr 2025
 22:57:56 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Damato, Joe"
 <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Igor Raits <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>, "Dumazet, Eric"
 <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit
 492a044508ad)
Thread-Index: AQHbrmoYFHYXzwUONkyzBwPhX3SQxbOl4UCAgABufwCAACW4AIAAb/YAgAADpxA=
Date: Wed, 16 Apr 2025 22:57:56 +0000
Message-ID: <CO1PR11MB5089E12CAAB57683740044DAD6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <20250416154436.179ba4e9@kernel.org>
In-Reply-To: <20250416154436.179ba4e9@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH3PPFA061B3868:EE_
x-ms-office365-filtering-correlation-id: 690ed833-60a3-466b-da28-08dd7d3a206e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?K3VSYmpZYWh1RmE4c1hrakZyV1pENUhQMzFjVDdkc0x0bFNJMU5nSnZDSDVQ?=
 =?utf-8?B?NmM1L1BEUHIxQjVOTExVK2M2SUZ3OWNDUDhTUmhCM21tL01Fajk3LytGS1dp?=
 =?utf-8?B?eW9qK3J5cFBUMlVzS1hXdEVDMEtOUkgyM256Umh3R2hMWjY4L2Y4QlM0Ly9I?=
 =?utf-8?B?UHVNdkk2MS9zL3FnalRqVHdYaEd3cnVKdTFrUkdyZzZmc3ZzeFlFcjlObUpL?=
 =?utf-8?B?YTFOQTJ5Q2ovcVRVbFVGV2FPc3VMMk1XVDZEakZqdXhWMlBaVjBkWXlDOWVw?=
 =?utf-8?B?VFBNckJwOWVzbFJLTk1LMW5qeWdPbEprZjNJY055RFA2NVJQb04yMFB5V01L?=
 =?utf-8?B?VTIyVUwxa3JIYjBqVDllbm40RldjRzVFRnFSK3d1L0ZiN21zLzRsKzhJOXU3?=
 =?utf-8?B?aGxYd2o0dWZOY3MrOHpzNTZmU3RHUW80R1VPSGdLaEl2UU1vTlhSWWZjSXZO?=
 =?utf-8?B?d0hoYVY0cDh1WVRSRjhpSDkvZkhldWdmUE5zR1JyTU5Tbkppc01wa0c5Q3hZ?=
 =?utf-8?B?TTU5YmlVL1pNcHZHQk1IaFRDWXRxUE5FU1ovVDNyNGs1SW5tcC9wd0g3R3BR?=
 =?utf-8?B?dDhRR0xSUXNOeFo0MlBFU0RjVDY5VmorUWtUajNUOFZPZk9UTEVFdzRTTkNz?=
 =?utf-8?B?SkVMaGdySUhrM2tuTjBPVFRYWjdUUkhEUlBudnFFNnJ0dm9QdEJhdjduR21E?=
 =?utf-8?B?clZwZ1pGZGEwUG1vM0xnMHBOMzVRS1RsNkYrSXdKZkovWEhZSm92T0FtZVBY?=
 =?utf-8?B?M1Uyek9DS0EwUFp3bUx2UkUyaHlWUFlDUXo4My8vVWJtRFdERjRUVGFwOElX?=
 =?utf-8?B?czU4UGM5K1B6LzQ3US9ibmxxQlFWNlZNK2NGLzMvVGhiQVF3LysxTE5HcGNy?=
 =?utf-8?B?MzNrUjFZUFozbmdJTTJlVWpFcndwZ3B0bTRIS1ErQis0d3AyUTFtTUVab1ZL?=
 =?utf-8?B?TG5TM2JZTVlmVVVsdXJzak43VmIrS0lzOVkzTmZoYUxUMUtFOXpkeFVYSWUw?=
 =?utf-8?B?N1ZoaHFEZEhpNmZ4TktwTFpoUmJkN1ZTQUhNK2lmL1lDeWdtUzMyeEJ5MmtD?=
 =?utf-8?B?a3N4MnZubEg3bHo3cEg5alVKemUvbThuS2laSTlleXI0UDlwWldDMVN6MXBR?=
 =?utf-8?B?YmNsd3R3dUZUQzZyVFRIZlh6REpWYzhrZllxMlRIS2FjY0dIU0srQ3Jham1w?=
 =?utf-8?B?cURSZld4dEhseVJ5eVhnZWdIRUtFOE1venpjdFZsUkNlUnJyYkM5WmtKcWoz?=
 =?utf-8?B?cjNOT25SaXFZeVdYUjFsVm12Z0JSVllMVE0xRGg0OXN3Z0tweFJVaEVwL2xV?=
 =?utf-8?B?bGx5OTkxaUtoOTd3aVd4cm9Jd1F1M0tUeW8raE9VSERISTY0WWtUMGtDOTlw?=
 =?utf-8?B?Yng1elBtWitwL0FDRTJnOXY3SjUzUzJPUUNaMXBsSjVOWldGRHFsajRjdFpY?=
 =?utf-8?B?YlMybStPUVZycFFDSVdVVC9jbHNvT054RFdEaU8ySGYxa3ZCQXdZZlowaGdD?=
 =?utf-8?B?R1BVSUhHbTZZUzNrSDFIYmk4dFNhRE9OOUpkVWNRekxVSU1FNUZQcVZZU0pa?=
 =?utf-8?B?TXVJaXJORktXSzluSGFlZm9KcGMvSTMweUpwaDBROW12OHBkeVdlTE5Xbi9w?=
 =?utf-8?B?c0k3YTEvZ0s5dlVmMjhFRXhaNloyd0NNZG9sZU1CSXMwdU5kK2pzbVBncENG?=
 =?utf-8?B?K3VheCtCLzA4NzJTOEUwbXhIaWpBTUV0TmFaZE0vMm1MM01vWmc3aUlqckZk?=
 =?utf-8?B?SWxrd2MyUE5BTWt4cC9VbkNHQmRxaWp6aEVsQkZuMStXUW1VUkdySGFUNXVI?=
 =?utf-8?B?ZFNiVS91WU15dk9UQkpoZTdHNzhxNXk3eXdjdUc1UXI5MC91QytWMndvNyt4?=
 =?utf-8?B?M0JZRTFOaTdUSXhadCs0NXBzaEZBRzFUc0ZMWWRYTFpaNTVGenFibTNRVnZF?=
 =?utf-8?Q?GSA98Enochg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGs4MGJIeWtnYW1uSWl0OFpRdE11NnpDU2paVDVINlZQUDdHS3IxYlNhU3hn?=
 =?utf-8?B?WlFiNVdZQzZLd0N5NzJJcGJjcUc4Z0VId2FUaHJLUDVrYVdtZ1E5TVNwTHhl?=
 =?utf-8?B?QVpGWUxYTFRKWGdtYWlObFpIMHFkYmhhTmw1eWxOVU5XbVkxK0xiZjlPNzVD?=
 =?utf-8?B?ZXJtT1BMOGxnOVNiQk1OZ0g3RnVXSElCUmd4UXpEcG9NdEFwTER0aXdjT1dI?=
 =?utf-8?B?WUtvMTVhQ2UzaXFUcEt1ODVEU2hvd29KT0lyb1Arc0VCRTQweCtWTC9udHJy?=
 =?utf-8?B?ak9vUjB4NmVWY1FESUV6UVVOK3Z6R2ErdmhtMVFJT3JYYkdsdUlucklKQXF3?=
 =?utf-8?B?ZkZURzFqcFRvTkpUZ0FKbzVKTzdsL3dZRXVOOTJRYzJyeW1vMnZ2UGV5cjk5?=
 =?utf-8?B?V2ZBdTRMQ3RKbWZlVjNhTnVLZmdJbG1wc0EvTG0zV2E2Y1BOM1pUckY0Wnhp?=
 =?utf-8?B?b1dTRUJGTmx3RnkwenBzTzVoNmpIZmNmT0JhZ2VlTS9JUzZIV3gvUWRxQzgz?=
 =?utf-8?B?VkVMTTI0WjIrL3JHQkZJZ3hHNWdaS2JlS2NHc2xQY3l2MXV1bVEvQ3hYLzU0?=
 =?utf-8?B?SXBEeEVlTTJEYllXbFhUWFhERHlLdmxFS0t2NUgvRUNZdTNMOU5hOWpyM211?=
 =?utf-8?B?TzBnc01FR3ZzZ0FneUlNOGNCUytuQmFuV0k1TmNBTGl5b1hiRnllbkpKMHpZ?=
 =?utf-8?B?N2lENnpnbGI0WndDcS90RW5MdWlDUXN4R1BuM2NYaSs0RzFvWENLWkx1SzZY?=
 =?utf-8?B?UTF5cmdMUHBkQjdqV2Z0cWlsZ0hjclpMbU9iZzBMYjZ3WkQwQ2FGa2RWNTA5?=
 =?utf-8?B?UktUUnFGdnlCaGRVd1RBWmkxaEdSSlB1dXZuamhLZUJjZ3hTM2pRQUxUZXI1?=
 =?utf-8?B?YVJ6SWRrWUw3dXdaeFIwc0trRlk0eCtRZ04vL3FxT1c0S2h4RFVENlhTVGNR?=
 =?utf-8?B?Wm41NWI5SldIaU50UGRVOC93UzRvLzhUMHZ2RksreVBGZ3BGVHcyNzVIVGdO?=
 =?utf-8?B?WjQyVTlCalZKVW5nU2RjU1RRR3VVRXBjWE1uS29RclBQZStHZGVWWjl4bnpU?=
 =?utf-8?B?SVZPM0ZPZ2NZZktmV0Z3Nnk1QS9zMi9vSGZZajRhMWZmWGlQakp2RmxUM3ZS?=
 =?utf-8?B?ZGdJWnBaZk9zd2h3UU1SZ1FxbjRzY2VvODNpTGhOY21NSkpWVURYUzQ3Y1FU?=
 =?utf-8?B?dDQ1Mm4vbTdzcnhvaWJwYm9UVXdoc2R1UFpqbXpuQkZIWU5sSkRVMWpnRXRW?=
 =?utf-8?B?Mzg4VlpoZDVacVB6cDNGM2oxOGtHZy9rU05TY2RIYWlaaGxKSkF2R3BuMS9t?=
 =?utf-8?B?Y0dNbTI2anJwT2hjV2FFK3U5d2xwOXgxL3JrcEsxWnd6ZU1pd0hwZTJLcnpo?=
 =?utf-8?B?SEpVYm1EUFg1N1ZZdUdsWERxM1NGQnhKZm5ENHFuTWhJSE5meS80aks0MW5p?=
 =?utf-8?B?OEdERSsxU0hxR0VuM3J1cmttUzZNQjdYVHlxcy9BWkpZbjIyUjZZekJmelFh?=
 =?utf-8?B?ajVBTktwNTVFR3RLQkp1QTV2YTBNZEYrdmIyMDF6WnNxcW9aVi95WFkyVkNG?=
 =?utf-8?B?b3l6d0RTOG5TMk13MFVxbmlBLzZhMmRNaXR2YTdWSklkWENJenZPa0NJV3pJ?=
 =?utf-8?B?M096VW9GdUFtbkR4cjNBT0ZTYmovUEd4TzZ2VC8yR3o0ejBuT3JOL21jRlhU?=
 =?utf-8?B?Snk3K3g2a3FyV1BBOWtzZFhtaW1zbkpuWWx0bUtET083TTNYZ0lNSGxUVEJI?=
 =?utf-8?B?ZVh2S0ZGTXhPSkhUV3Z4L2lBY3daZFpLekxyYVRGUEI2Szd6dGtrVWNzTnc2?=
 =?utf-8?B?MW1uMkVrM1dGTlFweEFBNldrRk1oUUNrVjRVZDZLOEZpSWVVTVJVWTAyUU5l?=
 =?utf-8?B?YzBNN0dIejZqUGhrRkRXUGRwYzUvU05NVmxCYkEvdEw5VzU3VXlwVW5Da1gr?=
 =?utf-8?B?MzlMOXl5aElmSnZldzhMZU16WTFMbm0vbE9VOTVzTnhraHBZSTJRc1d6blJs?=
 =?utf-8?B?Qkc4N3hER2Q2cHJrT2tlLzBDdkRYNXpvNVNNOW5mbzBBWDVtMkRpclNXYWhP?=
 =?utf-8?B?elRlQTNrV3VDMWpWNkptS2p4ZVVMUDhDWTJBS1lLUnl3dU8vNEowMGlDUXV5?=
 =?utf-8?B?bEd0QXQ2b0o3NUdYVDhYWmxNaUxOR2RvQWlISjh6eEFKY05ydmNKeE1QdW1u?=
 =?utf-8?B?c1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 690ed833-60a3-466b-da28-08dd7d3a206e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2025 22:57:56.1548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8olmmh+oB0YIEJB7pfaUTp2naw69fR6OB6zgLS/ldjsmjKcaL2KtRbgIxXDgp4NxNOxkoPs4gsMLCJon4bsgbaRVxLFbq3Mc5Dam1pWE8gI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFA061B3868
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744844281; x=1776380281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OCCeoke+tkRIw0Ursdt6AQwtTxmEJyEA4BxbMMP1rtg=;
 b=lhGmIBQz8+iG9LsxhW944Dz6su2Uo2PRX7XVoxl6AOrMOhkyf2HPTpR4
 nSoge53XbIiIGjnCRqsuEtKlnk1fMvnY5uLDf0blYJdi0gPi7x4JamY1L
 xO29g/1vFujck3CSFdnNHMkUGu8Ni7DUFB6+17RdVdd8Ml74/D0dwdyui
 13t4Y5iIfVgQrapr+N3qpVv3/Usfp6utS+VWDR32yeL5pcmw8OhqKZfE9
 IPFyLEkK7dbDAfuT3y4mizg/Lzsr/blJ4Le1H8fgyQ/gLFY80UDk/a9Ci
 LHz8U483hMG4uHGoBbfA8KC3NTyPhgyV7EeuL68UJNw9YXC/uu/26xBkG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lhGmIBQz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgSmFrdWIN
Cj4gS2ljaW5za2kNCj4gU2VudDogV2VkbmVzZGF5LCBBcHJpbCAxNiwgMjAyNSAzOjQ1IFBNDQo+
IFRvOiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYucHVsY2hhcnRAZ29vZGRhdGEuY29tPg0K
PiBDYzogS2l0c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47
IERhbWF0bywgSm9lDQo+IDxqZGFtYXRvQGZhc3RseS5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4gTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgSWdvciBSYWl0cw0KPiA8aWdvckBnb29k
ZGF0YS5jb20+OyBEYW5pZWwgU2VjaWsgPGRhbmllbC5zZWNpa0Bnb29kZGF0YS5jb20+OyBaZGVu
ZWsgUGVzZWsNCj4gPHpkZW5lay5wZXNla0Bnb29kZGF0YS5jb20+OyBEdW1hemV0LCBFcmljIDxl
ZHVtYXpldEBnb29nbGUuY29tPjsgTWFydGluDQo+IEthcnN0ZW4gPG1rYXJzdGVuQHV3YXRlcmxv
by5jYT47IFpha2ksIEFobWVkIDxhaG1lZC56YWtpQGludGVsLmNvbT47DQo+IEN6YXBuaWssIEx1
a2FzeiA8bHVrYXN6LmN6YXBuaWtAaW50ZWwuY29tPjsgTWljaGFsIFN3aWF0a293c2tpDQo+IDxt
aWNoYWwuc3dpYXRrb3dza2lAbGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVs
LXdpcmVkLWxhbl0gSW5jcmVhc2VkIG1lbW9yeSB1c2FnZSBvbiBOVU1BIG5vZGVzIHdpdGggSUNF
DQo+IGRyaXZlciBhZnRlciB1cGdyYWRlIHRvIDYuMTMueSAocmVncmVzc2lvbiBpbiBjb21taXQg
NDkyYTA0NDUwOGFkKQ0KPiANCj4gT24gV2VkLCAxNiBBcHIgMjAyNSAxODowMzo1MiArMDIwMCBK
YXJvc2xhdiBQdWxjaGFydCB3cm90ZToNCj4gPiA+IEZXSVcgeW91IGNhbiBhbHNvIHRyeSB0aGUg
dG9vbHMvbmV0L3lubC9zYW1wbGVzL3BhZ2UtcG9vbA0KPiA+ID4gYXBwbGljYXRpb24sIG5vdCBz
dXJlIGlmIEludGVsIE5JQ3MgaW5pdCBwYWdlIHBvb2xzIGFwcHJvcHJpYXRlbHkNCj4gPiA+IGJ1
dCB0aGlzIHdpbGwgc2hvdyB5b3UgZXhhY3RseSBob3cgbXVjaCBtZW1vcnkgaXMgc2l0dGluZyBv
biBSeCByaW5ncw0KPiA+ID4gb2YgdGhlIGRyaXZlciAoYW5kIGluIG5ldCBzb2NrZXQgYnVmZmVy
cykuDQo+ID4NCj4gPiBJJ20gbm90IGZhbWlsaWFyIHdpdGggdGhlIHBhZ2UtcG9vbCB0b29sLCBJ
IHRyeSB0byBidWlsZCBpdCwgcnVuIGl0DQo+ID4gYW5kIG5vdGhpbmcgaXMgc2hvd24uIEFueSBo
aW50L21lbnVhbCBob3cgdG8gdXNlIGl0Pw0KPiANCj4gSXQncyBwcmV0dHkgZHVtYiwgeW91IHJ1
biBpdCBhbmQgaXQgdGVsbHMgeW91IGhvdyBtdWNoIG1lbW9yeSBpcw0KPiBhbGxvY2F0ZWQgYnkg
UnggcGFnZSBwb29scy4gQ29tbWl0IG1lc3NhZ2UgaGFzIGFuIGV4YW1wbGU6DQo+IGh0dHBzOi8v
d2ViLmdpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvY29tbWl0Lz9pDQo+IGQ9NjM3NTY3ZTRhM2VmNmY2YTVmZmE0ODc4MTIwN2QyNzAyNjVm
N2U2OA0KDQpVbmZvcnR1bmF0ZWx5LCBJIGRvbid0IHRoaW5rIGljZSBoYXMgbWlncmF0ZWQgdG8g
cGFnZSBwb29sIGp1c3QgeWV0IOKYuQ0K
