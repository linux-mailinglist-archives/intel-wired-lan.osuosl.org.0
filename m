Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QK8tM643e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B78AAECC4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E14D480AD5;
	Thu, 29 Jan 2026 10:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oG_KvZZZ6wXg; Thu, 29 Jan 2026 10:34:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE58380B88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682860;
	bh=U4SsRxajQ1iU8V2BT8asuP9p7L9Z/Gic/tEnOWWxw/M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9GuBaUsOFL9zGv5O3TEc5LZb8pW5h8PTQaFxRGrsZkMu7SmHeY6K51ChWw1EVla9F
	 HDvQjPbbtHFtliXPfTNo3aD1T9qp34AlarBe4QUDBoXkgpn0BNwLQU3cSu1QZzBoDM
	 2Z84CcRWyYX+I18oeA0G5TwvFOpabIxmvWWnHEHumOLB9gKpyw5y4rKv2KDc2K0REr
	 1eXmCWZZAmrXSIeEOKf3giZnWbqdfQtGR9d1cIQamMS1RTkYoFtBxBMgwEr7pV8hMI
	 PZ5sbfx2HgNY40IovpL8KG4SF9DCz3u4U5MOtK6iDNm9avYUqeF/HoSCk2uZvgOw3L
	 gZkh7lmlT8kYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE58380B88;
	Thu, 29 Jan 2026 10:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 116221AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E896B40BAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vNg56UXAKer for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:34:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CB14340B9A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB14340B9A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB14340B9A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:34:16 +0000 (UTC)
X-CSE-ConnectionGUID: RL/DKC6FQC6Np1Gx+XezRA==
X-CSE-MsgGUID: z+ezdvUISE2EjY61yoYofA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93579041"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93579041"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:17 -0800
X-CSE-ConnectionGUID: fE/wD89ERguF7qR2iltEgA==
X-CSE-MsgGUID: V/JOe0OuSXyRxtUNN266NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207657973"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:34:16 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:04 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:34:04 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:34:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=amWxTGdGqsZsMaxF4UDefmhsEnUkRlZOLF34rn1lZaVxdMjhXhSVHsLg+oeb9LLGtGkcHI7an/Vnhf6+3Bn6cUyYJlGZN15jspO4BblonjXzeNLmaZtS/VwuJEfQ6m+LrgCwE7k0j9nKGcq0wiIJiKEbAFrZDLKYoUTyRUMB1VVZsWDG06S2Bd6XhcObxMsFk3URz/jUZbvk985qrNU/7wQQvpXqVRqxtXTiyWrUSAssaP668vVpUlhOWbOR2bZTuxa8FDd25rTKkVESld1EI0o3eoR0bm0E323UCJx+7jxua6E8JjGeenQVCURqnerG3ff7VFLMqZa59P9OqPADyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4SsRxajQ1iU8V2BT8asuP9p7L9Z/Gic/tEnOWWxw/M=;
 b=Y/+HvlSDuuaGG724VeMTnvi+a1okq0+FLcYYIsPLfMpji0rKi6YKP0iBGAv8pBfSsvuktbPYtYHjsU8VMjMjwRwifQgkAhvv7gO7+y5rZD3bYFAOQtDHL5I+xEzSag53ya7xI8e6hDExFDKBz09zqvBoHaTaBKhJeHI0P1OuOdJ96g14FcSnGJsZOHLwcmcN8sAKRmKbqgcfcsNC+tceb6/IDmf4vmnaulLYg1k/TGgaHvOopnF3zdPRA+CWL7BKgnnslcJoh2nnAnh/nMM3n7ayV+9HXKulbmbuJgPtPrl9R+777eG+Bc60oE/bE4LDzFulxA5TrPJzsCVZnYg0oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB4956.namprd11.prod.outlook.com (2603:10b6:806:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Thu, 29 Jan
 2026 10:33:38 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:33:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 23/30] docs: kdoc_parser: better
 handle struct_group macros
Thread-Index: AQHckPabpWpQ031tWU6afk1DtW46lbVo84Cg
Date: Thu, 29 Jan 2026 10:33:38 +0000
Message-ID: <IA3PR11MB8986EA5F843A19E296A8FE63E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <e583f81bd191654b2df8622ca3d587ee8f61eb2b.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <e583f81bd191654b2df8622ca3d587ee8f61eb2b.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB4956:EE_
x-ms-office365-filtering-correlation-id: c522d82c-d300-4bcf-8ec6-08de5f21dd89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cGJPYnZZOCtVeE5PSUJHY0I2bG4rY0FjN1laRzZ6NWNQNi9ab09Vc2RReThp?=
 =?utf-8?B?bXU2Q1VTV0sxa25Nc2lsSElJOU95YjF0WUg2bzNBNitZRCsvbUdqVnJKbWJG?=
 =?utf-8?B?QTlYSW5LUTFJRHNlNnJUVE0xUTRraWlFdURNNG9CT2Z5M253VEw1RkFVNlkw?=
 =?utf-8?B?akFpdm1WUUtMYXlDeG5jTFBSS3dnYXNHZ1N4a1NITk1meks0djV4ZmUzd1JQ?=
 =?utf-8?B?c08vNDcrZUtJMG5LNnBUKzg3ZFJoV0MxcHk1TXhOUEMzSUwwWndIVWE2S0tr?=
 =?utf-8?B?Qi93R0wxcUNmc0lEUUV4NGVGaTMvRDd5OU1MaWFnNldBeDBzQTIzaW11dGJX?=
 =?utf-8?B?OSsyOUNjYkVwVVFLQjRtREtPaXpLUVV1a1F2ZG4wM0NoTE14ZiszVTgzdHk1?=
 =?utf-8?B?VUZYUmh3MklrVWJkRTZqTGp1aHRwZmw2eStTOE43VERab293UkdYZ3d0czlr?=
 =?utf-8?B?eFpiRUdaS0tRczIwV1R0RFVjNHh1NThQNXZkTjY2S0E0djFTVHR0dzY5NGVr?=
 =?utf-8?B?cm9XeXkzK283dWNyWGFPQ2dLdEM0L2l6cGc1Z1I4R1FnY3dSOWdhRThpK0Nl?=
 =?utf-8?B?YkYxdzM1Rnhad1RqUHpOb2hqSDJrSXFtTThRSkxqYVRCUUh0dlp3dW9YYUl5?=
 =?utf-8?B?MFU0TnhXK1FIbFU0a0c5dkhQMnRZaWdzYUtxR01lUFFVckVSZmttQUZLQ0Ju?=
 =?utf-8?B?bURua0FwYkE5M29OOVpkSWt4RldVbXFHemlHb0JvWjdqTm84Z2tLVllXaGtT?=
 =?utf-8?B?YzVWbTg2QkJZYno2cnF5UXN2Q2hZSUVOLy82WElhQlNNZUMrdGVBaE1EUGJT?=
 =?utf-8?B?MGk4YjZhVys5azRkYnVaV2txb2hIL0o1R0xhai9xYUtOVXdJaWJycGNJV3VO?=
 =?utf-8?B?YkZSazNCYVduVHhSVzkvYm03QnhuaHIrWVhmR2VRSDRYSkpTZmlYM2ZkUEM4?=
 =?utf-8?B?a1ZNQk9Bd3BCTWw1Wm5jU0xNZDI0QkRJS3E0K2t1a0VqOGdNUy9aMTNwaDQ5?=
 =?utf-8?B?ZnVKZ0g2dEphOUsyVks0LzNCYW5DR3lWSnhpNmUzeDU0cU5scXBEL3duMWdi?=
 =?utf-8?B?TmN0UEdSTDFpYUtucXlmMEw0Zm5MdDAyQndSZTc1YzlOY1VXVDRjQmRGVGd4?=
 =?utf-8?B?elpHTFJoN2p4NU5MRVZCK2pkS1Q0VFlHMzBkbXhERHVKZnJDU2RjRWlKckQ0?=
 =?utf-8?B?ZzFtTWdOdnNONlZDQUVBcnlnc1BSOEszZ2lZVUpaMExIbXlIQTMrSlZJeVo2?=
 =?utf-8?B?RDgwVUtMeHBXSy9PUjkxOTVHTmFJdXR3dEI1WG1FVmh6N0RILzZWQXYyWmFw?=
 =?utf-8?B?YU5CU1BiS0Jsd3RoUEZmdUp2cy83T0gxc0RrS241bmZxUWx0dkdscW14dGJt?=
 =?utf-8?B?VDgrcllLOG9iRGIvS0xnNEhHTVFGdWYyMGJEYVk3bVVRMjBOTHgweVEwMWFS?=
 =?utf-8?B?dUlodHhjRzhrVHZaNWdOSEw5K0dnSWhKbU04a0RicnF1UXExN01JWUprOW9r?=
 =?utf-8?B?aFg4UkpLRHErTitKZDJGRCtiSG5FYldGKzNFR29CeFkxVDZxNTJXM1lXLzBF?=
 =?utf-8?B?RkswVHZaUVZ4M05pL3I4WUNibnlLc0hoYnd3M1hDVjNscUhKNFZ1VFpHcmVD?=
 =?utf-8?B?UDNFWWVMN3pSZW9Cbmp5SUhrNG13cy9FanVlQVVhM2VldEhBdDJXSmpmU1Fw?=
 =?utf-8?B?VWZ0UzI1dlJGWGVPc0V3OG11emR1bUNkU2V5dlZkU3BFR1ZoS2R3TzFMMnlN?=
 =?utf-8?B?S3I2YmpBcFlHSzJyb3dwdU5MVnE0Y1ppOUVWVUcrSmJGMFRtY2RUSXlpUXVt?=
 =?utf-8?B?ZkFpR1FZYW0vQ3kxWVdFVFNvU3MxMmUrQW0wNnp2SWIwM2lnOFpiUEhFWStw?=
 =?utf-8?B?R01iaVZ5N2FDcjdsY3l2NWZiWEdPTFNDUDFsMmN1T2xrbmxMTTFUUlVVZmVq?=
 =?utf-8?B?aFZlY2t3TjlxRUF4Y0NXTFpCblZTNjNlY0JhUnhmRkYySHA4cHc4ZkJ2b3FW?=
 =?utf-8?B?OG9DeGJST2hZaHRlS281NW9oaGpUVjZkdjVjSVNiVXlOWVo3dzNDMFNTd2Mw?=
 =?utf-8?B?WU9scXJET0tLR1pXRk9hTndoZGZ4WEYxMDNtblowaS9GS0pnQzVvTGI3c1dm?=
 =?utf-8?B?ZndUNHIrSXJFWFJnbDdwcUV1QlN2ODJhaXdSc2tJNDE3elR5S28waUp1VEU5?=
 =?utf-8?Q?ZRQUMpkPF+md/eXaj9iTC5M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czVOZVFncXNxNWEyY3lSdHpWQ0czK25zRGdyRjVyYllJSS8vSXJaanVhNFBD?=
 =?utf-8?B?bUdRNzlaTSsyM2loRnJOMUo2bG1DR3hUdW1VZW9idUNzdVFxbnl2bDJZQ3lH?=
 =?utf-8?B?Z0FKSnR2OXlhNzc4dWJITTlZdUgzdGZQNTlzQUlCckpLUlByK0ZqMzBDVDJQ?=
 =?utf-8?B?ekJsY1RGQ3djTnREMkFCRStheUtNSERuSFo0bFNvbVVlMEtBR2hQeStQRkEx?=
 =?utf-8?B?MzZVMjRIektJVzdQNUdyL0Z4OWhuakdxSlAvbDhlVkJXQ0tVMVEvSGczN1pF?=
 =?utf-8?B?ZVdmMi8zRmt4ZjhRVkRkU1laL0dtY1pjYTRuWmo2eGNHSmVFOTFYYXFXTnJj?=
 =?utf-8?B?K0NjcSswNFNMWHgwT1pPM0pHTmRSWlJyVkRlNm9DczhvSnhoZTRRQkg3NDFN?=
 =?utf-8?B?U2k4cUJlc1JFQlJ1dWpRVkJvQkpUNU14bWRZSGZacWhwbGdmeHF5RHA3Snpa?=
 =?utf-8?B?TlhTbHY0QXZ1d1haZU5LcFcvMW9SWXBzeXdLUjJzMFQ0M1NyNU5aemxJYy9p?=
 =?utf-8?B?azRrSytuZ1AxdTZlM0ZtVVN5cjJLRlhRbGd5dnc2RzI5Q2pURmwwQ2VyWGJu?=
 =?utf-8?B?enJ0NDl0Q1QzOGtlMUJuTVR2b29ya0NBRTRLeFZmN2M1djg3RWJoUC9LSWoz?=
 =?utf-8?B?eEt2dkZjK0RFbUhOcElPNUlodUx5Q1lqZUJFZUw3S3BuSHdKdStORjhDNW1p?=
 =?utf-8?B?eFJCWncxU3pMaUs5Q3ZGMHNFMWlIM0dYMElZZDBhZVZnbVhOaWZzQmZIdVpt?=
 =?utf-8?B?ZWtYaDlkakdPM011UkIySUxReHVvWG1yQk1oYXVtQWlXWkVweVB2ZWNZSjRF?=
 =?utf-8?B?WkErOEMwYlJzSENhcVU0S0NZNlVSMGhNbVNVV0VpY1NHTlZwanR6T0ZTWnp2?=
 =?utf-8?B?ZnJXUXB0cWZtQjMyRTdMb0NDTm5QZEY2ZWV2SThhbFlSMVhVT3Vvb3NmWnU5?=
 =?utf-8?B?Z3ZLeTJyZy9IK1Izd0JESkZDOU5vTFE1UnZ0YWs5NGlYRCt0RWxtMmZOZXI0?=
 =?utf-8?B?OEZXaThkZmlXdWc4U0ZTVzdWVk8rd3dpb093SEYzNlY1d2hZeGZwL1p1KzhV?=
 =?utf-8?B?MU0wOUV4WGlhZkxHSUJHZGNIbDVRblY3Slg1YnVvT1l2MjRMajlPWnZWU3l3?=
 =?utf-8?B?NDBYNzB4ZThqcXpFemsraXhlOElHYVJFQWh3Nk4wb1hZYnVBYThJdXF6b2xM?=
 =?utf-8?B?K3NBOHpYM3NNTDhyM1I2SXUzSkpVZm5DakRtU1MweUFEcnVJMXdGOUkxRGxD?=
 =?utf-8?B?YndwVDlpVmZHNVFHb3FaQUtycS9YeTk4SHFkaUxSVFBZL1o0YWQwa3VKMUNX?=
 =?utf-8?B?eTJPcVFjNnludkdGVGRLZ1h3cUhyVHJpMm1qTmxYM2NjaDduM0hxMkNkeUZr?=
 =?utf-8?B?NWlvZkVYY0ozRDRNY0JtaHEzZGxZNjh4V3FXSWRXcHJFN0RsNlYvS3d2ek9E?=
 =?utf-8?B?akY0Y0xINGlaZWhZVW5ESFBwZTdmZ2QrbTB1OEhYcm4rS0VPc1N4VGFabWk0?=
 =?utf-8?B?bVRGaU5rb3cxYXk2YXJRaVYrNVB2QTZGZ1MvRmREZEowbUdoZmUxeGJMUldF?=
 =?utf-8?B?MlhpbDgwbUp6TUZwWlM1QzduSHR4WVlXM1FZSEZoejQ5d2hRMWxmSHV3dkVv?=
 =?utf-8?B?d2ZOWnUvc2hIMkVQSmN6OVdFNUJwMW42N1MrTXNqTU9hWEtZZitIaGZSa1JZ?=
 =?utf-8?B?K21KQ0hyOUV2aGZGcHJ6MUludjdNaFZXTkNYRVhjTExjdnZvaXRoanZlczVG?=
 =?utf-8?B?ZUdoVUorUW15KzNnRkNpb3FVWkFpbFEwTFdYNmR5bEFOYTRjR1k1djVRd3Bx?=
 =?utf-8?B?UmhVU0RPRUlMZHFxYklCd05rcUo0YUxkbkxicWQ5cjNiZ1pNYmxjVlZ2ZkxX?=
 =?utf-8?B?M2EzeWFpcVl5U3JteXhYd1hqZWZvMkRjWC81bFEzem1UbG1XbTV0Njh3UFp0?=
 =?utf-8?B?eHJ0R2hMSXRTSWxHVDVUZHcvOVBWc05yUDhRTFYzTmdSSGliY0RFVzYyL0F5?=
 =?utf-8?B?OTkwUkNUaGZzZmE2SWJMOUlmNU93dEJrLzlncEJwYVE5VmVXRk8rT3B4dmp2?=
 =?utf-8?B?anlEbUt4cTZtbUx6WHNBNERSVHE2bmZYZ1NrM0s2a3RRbFpPUG1WalFQZEhY?=
 =?utf-8?B?SHRKUFBlclptZzUrVC9BbXI5N2lGckdWbU1uNWZZeTlGS0FHWC9QK3VPWlVC?=
 =?utf-8?B?RkxCejJUMndsR1lieWQ0NmRiQ1BQRVU1Vk1ZTVBNcVc0Smt3bTZMWXZGR0Uw?=
 =?utf-8?B?QVFYZTJXdXQ3TFdBaE1zK3NCNWtVYTY5eFpGbGM5WWdwMFFaeDBBNmZicnRh?=
 =?utf-8?B?c1hKRk4rUVp3ckNCUGdtM2orcEdMaHNsb0s0VjZEd1NsakhGYzVMVnFNTlU0?=
 =?utf-8?Q?7kmxNbqe9zioNzwc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c522d82c-d300-4bcf-8ec6-08de5f21dd89
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:33:38.8475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: brHUHSYj0OR1vCkMrcGsywxCa5wgeVgg3hy7Jkc/EB4wO0YSGAiB8L4EtLPk9uZCX2ubC8CTN9eR13kAvgG5V7H0Rsc0oDtDT0uuSHIeGMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682857; x=1801218857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U4SsRxajQ1iU8V2BT8asuP9p7L9Z/Gic/tEnOWWxw/M=;
 b=nQZRQVjcApZPWwoCiofdPggGdrPMtFcVynjYfm5aqcr4deMcNpCcdX3u
 phbOM+vTlFAyegRyV9jC8TyuBGSUarpZEwJEkfJadzY2JSibYNFkwM/mq
 14vA5B4aLQUGnjDwiJHUUy1E7zW12hSc/8XHNt6Nn1PK5fSJtZixACAbF
 DsszsZYwB11z680R9M3+MZMiQxpWszXJfuBHsW8C+tKqxDjD03J0gzL0b
 0bi4hzmLwfC5QAVioFKyElbhrcokFDpAkK7EfoaNb130ASQNEkS0faLtX
 BVT6qAruEj8V+ARnD+/1fzyT4LOqxL139WZ0QQCjvxfHu+JL0V8yMaqST
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nQZRQVjc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 23/30] docs: kdoc_parser: better
 handle struct_group macros
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:mchehab@kernel.org,m:rdunlap@infradead.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lwn.net:email]
X-Rspamd-Queue-Id: 4B78AAECC4
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDI5LCAyMDI2IDk6
MDggQU0NCj4gVG86IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBMaW51eCBEb2Mg
TWFpbGluZyBMaXN0IDxsaW51eC0NCj4gZG9jQHZnZXIua2VybmVsLm9yZz4NCj4gQ2M6IE1hdXJv
IENhcnZhbGhvIENoZWhhYiA8bWNoZWhhYitodWF3ZWlAa2VybmVsLm9yZz47DQo+IGJwZkB2Z2Vy
Lmtlcm5lbC5vcmc7IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBsaW51eC0NCj4g
aGFyZGVuaW5nQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsN
Cj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFi
QGtlcm5lbC5vcmc+Ow0KPiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4g
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDIzLzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogYmV0dGVyDQo+IGhhbmRsZSBzdHJ1Y3RfZ3JvdXAgbWFjcm9zDQo+IA0KPiBJbnN0ZWFk
IG9mIGNvbnZlcnRpbmcgdGhlbSBvbiB0d28gc3RlcHMsIGltcGxlbWVudCBhIHNpbmdsZSBsb2dp
YyB0bw0KPiBwYXJzZSB0aGVtIHVzaW5nIHRoZSBuZXcgc3ViIGZ1bmN0aW9uYWxpdHkgb2YgTmVz
dGVkTWF0Y2guc3ViKCkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVo
YWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgdG9vbHMvbGliL3B5dGhv
bi9rZG9jL2tkb2NfcGFyc2VyLnB5IHwgMTAgKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS90b29s
cy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gYi90b29scy9saWIvcHl0aG9uL2tk
b2Mva2RvY19wYXJzZXIucHkNCj4gaW5kZXggM2E1NjE0MTA2YWY3Li5kMmViOTNmOWQ0ODkgMTAw
NjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiArKysg
Yi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gQEAgLTEyNCwxMCArMTI0
LDExIEBAIHN0cnVjdF94Zm9ybXMgPSBbDQo+ICAgICAgIyBtYXRjaGVkLiBTbywgdGhlIGltcGxl
bWVudGF0aW9uIHRvIGRyb3AgU1RSVUNUX0dST1VQKCkgd2lsbCBiZQ0KPiAgICAgICMgaGFuZGxl
ZCBpbiBzZXBhcmF0ZS4NCj4gICAgICAjDQo+IC0gICAgKEtlcm5SZShyJ1xic3RydWN0X2dyb3Vw
XHMqXCgoW14sXSosKScsIHJlLlMpLCByJ1NUUlVDVF9HUk9VUCgnKSwNCj4gLSAgICAoS2VyblJl
KHInXGJzdHJ1Y3RfZ3JvdXBfYXR0clxzKlwoKFteLF0qLCl7Mn0nLCByZS5TKSwNCj4gcidTVFJV
Q1RfR1JPVVAoJyksDQo+IC0gICAgKEtlcm5SZShyJ1xic3RydWN0X2dyb3VwX3RhZ2dlZFxzKlwo
KFteLF0qKSwoW14sXSopLCcsIHJlLlMpLA0KPiByJ3N0cnVjdCBcMSBcMjsgU1RSVUNUX0dST1VQ
KCcpLA0KPiAtICAgIChLZXJuUmUocidcYl9fc3RydWN0X2dyb3VwXHMqXCgoW14sXSosKXszfScs
IHJlLlMpLA0KPiByJ1NUUlVDVF9HUk9VUCgnKSwNCj4gKyAgICAoTmVzdGVkTWF0Y2gocidcYnN0
cnVjdF9ncm91cFxzKlwoJyksIHInXDInKSwNCj4gKyAgICAoTmVzdGVkTWF0Y2gocidcYnN0cnVj
dF9ncm91cF9hdHRyXHMqXCgnKSwgcidcMycpLA0KPiArICAgIChOZXN0ZWRNYXRjaChyJ1xic3Ry
dWN0X2dyb3VwX3RhZ2dlZFxzKlwoJyksIHInc3RydWN0IFwxIHsgXDMgfQ0KPiBcMjsnKSwNCj4g
KyAgICAoTmVzdGVkTWF0Y2gocidcYl9fc3RydWN0X2dyb3VwXHMqXCgnKSwgcidcNCcpLA0KPiAr
DQo+ICAgICAgIw0KPiAgICAgICMgUmVwbGFjZSBtYWNyb3MNCj4gICAgICAjDQo+IEBAIC0xNTMs
NyArMTU0LDYgQEAgc3RydWN0X3hmb3JtcyA9IFsNCj4gICAgICAoS2VyblJlKHInREVGSU5FX0RN
QV9VTk1BUF9BRERSXHMqXCgnICsgc3RydWN0X2FyZ3NfcGF0dGVybiArDQo+IHInXCknLCByZS5T
KSwgcidkbWFfYWRkcl90IFwxJyksDQo+ICAgICAgKEtlcm5SZShyJ0RFRklORV9ETUFfVU5NQVBf
TEVOXHMqXCgnICsgc3RydWN0X2FyZ3NfcGF0dGVybiArDQo+IHInXCknLCByZS5TKSwgcidfX3Uz
MiBcMScpLA0KPiAgICAgIChLZXJuUmUocidWSVJUSU9fREVDTEFSRV9GRUFUVVJFU1woKFtcd19d
KylcKScpLCByJ3VuaW9uIHsgdTY0DQo+IFwxOyB1NjQgXDFfYXJyYXlbVklSVElPX0ZFQVRVUkVT
X1U2NFNdOyB9JyksDQo+IC0gICAgKE5lc3RlZE1hdGNoKHInXGJTVFJVQ1RfR1JPVVBcKCcpLCBy
J1wwJyksDQo+ICBdDQo+IA0KPiAgIw0KPiAtLQ0KPiAyLjUyLjANCg0KUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
