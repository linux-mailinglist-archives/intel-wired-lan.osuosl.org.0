Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOlWBco1e2mGCQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:26:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A18AE9E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 11:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1677740B51;
	Thu, 29 Jan 2026 10:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jRSPPVpJdzEI; Thu, 29 Jan 2026 10:26:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A1E940B57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769682375;
	bh=OPQ6Vnpbfdhe2BjKUJdLPiWkvhbZqvu4lE0WIKIt55Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uWXisd0HUtYPV7W8KzI04ZdTWv/nGfbqd54NZipaPuqgxRXyBagybfrWXTfNdmK2l
	 x0MNL88rDlCvXRAb/4MjaRm/pnYyP9WlpWtjJ0Qec82MVYuQVM6nbNcAuoOX1FLNGw
	 aC5gh8YbNhK6OOwS+oLJn/wmRpkzpcGrrtXLP9FyWWZfKKcWpvw0wP7sOfLeibBizn
	 jEqjKSyzThC/7fnTFhheyPxc7af1/aRPV7G1J9e/t/ziJmqftWJ3Fdm3AKUKrBxXVh
	 qZz5k/2om3qnxRXPsb2mimuEoeUo/+QeAIt4ececGY/5OxrAMRkPOSxXHiUJ9bDXnN
	 HbEO8tyTzggwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A1E940B57;
	Thu, 29 Jan 2026 10:26:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8608D118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 699B340B47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7ij0k9O8HM6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 10:26:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F72040B33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F72040B33
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F72040B33
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 10:26:13 +0000 (UTC)
X-CSE-ConnectionGUID: S/eTgY1iQoS7K8JtOHCPJQ==
X-CSE-MsgGUID: jv3bgJiFT1SgDGLb572q2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="69931531"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="69931531"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:26:13 -0800
X-CSE-ConnectionGUID: zyH8QSxOT9KmQ+FTTnEvDg==
X-CSE-MsgGUID: lQQmiDC7S7GyLf9cEcUq6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213502465"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:26:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:26:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:26:12 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:26:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ayc1JBnk8/+PkKHM8OV7jxDE/IGdJ1XRqgXCCGVgdH0odOJLmoNUnKVk9syPavaioX5tjZmUUPlcqQrDJUvKO/nK0km9MRQ4fTx2FE67cgFcNBJObwxSQs9NXmBioPe1+74mW2TqfuPs8tuo2/0F3lR3PuIwdGK7wOSADWSMri5EE8ZE/FTao8gyDmXJW+MzwBnS825A29pjHLYNsTupAGI62dP8t7oN/y1UiGdRZzD7sjldoGyQIBJf9L5frecYkTB9pmzC1IL77WDruBeYg/FBixYdnMYAwsLfcYqcThtYLnK/rM+UWFcgR1wPN1wOwV1b0YZU4HJ8+AGsfJrjoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPQ6Vnpbfdhe2BjKUJdLPiWkvhbZqvu4lE0WIKIt55Q=;
 b=pQXer5hzoXQCdLHyg3KfhN0/YQ0m+opR+B1Bm8CTXgEdK3dfgYYZoE/cKorhFr/jsAbrZRI4TanGJD1kJpB3JTd29Bwu94Z4fAnDfduyjfEgpIcYj/ImfRU5sphanxLIUaOSQSt/3EHFaB9IILlw2EdoiRsam4FGY/BgGmIfGvzz7c4uZ8LBEqAxokZTPC1W8k4vu11UtlH5PIhf6VD6silliwexYmzE6L51jAZphF227KT9pKvavTy5u9189sojEXEwpqhx5RlDLXJD6t+s4FSrKstz51oIwCXYss8rr9oJGncX85Xp16Gbv+zJUtKQ8W1dQw/I3K9swME0Sf951w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8697.namprd11.prod.outlook.com (2603:10b6:408:1fe::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 10:26:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:26:10 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Randy Dunlap <rdunlap@infradead.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 03/30] docs: kdoc_parser: move var
 transformers to the beginning
Thread-Index: AQHckPanHjDnYZNf6EiillpVmAOQbLVo8Wmw
Date: Thu, 29 Jan 2026 10:26:10 +0000
Message-ID: <IA3PR11MB89867387C416560E957E42C3E59EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769673038.git.mchehab+huawei@kernel.org>
 <aa7f027e5b2f8599c9e268790f9ffbca9f0634e6.1769673038.git.mchehab+huawei@kernel.org>
In-Reply-To: <aa7f027e5b2f8599c9e268790f9ffbca9f0634e6.1769673038.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8697:EE_
x-ms-office365-filtering-correlation-id: 6edc7fcd-d864-462e-4ccd-08de5f20d22d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bjhnbmV1dXRqUXB2NG1jR3JnNDVvdzFQT1RQcjdZbU1FcTdjbkdWTkxUMWx2?=
 =?utf-8?B?a3JSRXU5eWJFN3pFRUNhNktlam11YmhtVXo3eHpxNkN4WUxQRC9sUVpBZit0?=
 =?utf-8?B?VXYvdGVNUkxPc1VCZmtveFpHUEtMVTQzVnRiNVFGaFpnK1V3ZGRxMnRUbVZN?=
 =?utf-8?B?Mm5BTFZEaTVBWmZwOExFZU1hRFMrb0pBMGhzbHR6WXpVeDFyRmhuajhBL0xO?=
 =?utf-8?B?bnEyTFFpQVdYcmNCU3F6bTZla1RSYmhBYnhMVS9USDFFTlpEMlJrRGg2enRT?=
 =?utf-8?B?WVYwbzdaMlRLakNQS2U5NlBRWmpBMU5YTEJLeGZ6R2FabHF3eEU4K2FuR1Q5?=
 =?utf-8?B?dStzdUhobE1CdkhCck5UeS8rV0txZjlaUjgwbXI2VS9scDFacHN0SDBjd0Zn?=
 =?utf-8?B?MURGcEFXank3UUJEVEN0Mm9lWElzQnd2S2xqR0tlMHdUZWkzeFVkeVBhWkNo?=
 =?utf-8?B?dENYaXNvWU5TNUE0U2lHZXhOQloxZk9xTVppYUgrTWdGMzVpc0hDazEzS2Zz?=
 =?utf-8?B?ck5RMWQvaTJ5WkV2Z2R5Y0pubkd6aVZUV01JbGxOUXp5WVkrSVBTcG5ubjIy?=
 =?utf-8?B?Y1pSallzRFd1a1NMakpFV1BJSFJNQXcxbGwxQ1pXQVBtcVZ5ZkwxZXJYQXhM?=
 =?utf-8?B?RE1xVkFubEtWOHpGcGNIZDArNlVZMTVGZDV5S203VHRjY1VnUUJlSFhwcm1W?=
 =?utf-8?B?Z3ZyUUNMZ01zSVBuenBoSEF2UDZhK3hMSGFKMVQ5cGREZHB6Y0ZIV1lNOE15?=
 =?utf-8?B?bFJiTUpHWTRxSEhPV05lR2lBVU01L0tnTzRucVhaTEdQT0thWHBpcCt3Wm85?=
 =?utf-8?B?MlIwdUVxd3Q1YWwrL2pLMS83SnBwMXo5VTExRHBhSExsTTBCdHkzQk54TTFj?=
 =?utf-8?B?YzNpM2xiY2k2akF4dCtETldrUE9PaGMzcjB6T1JYWnJYS1FzRjY5eVQrU09p?=
 =?utf-8?B?VHVNc3h6MzdXVlJwMFc2VnZRTndFVk9yaGxTYUkwUi82dTZiYzNhbnpHQzdC?=
 =?utf-8?B?ajFVb0RtaUxUaXVrcVY4VGxDbDd6alF1NUlaSFh3czdpdDY3YXk5WnFYZ2xo?=
 =?utf-8?B?Y3NBZGR5d1F0Sm9zdDBxcmFxaDNQVTdlTTBZdUFjWlphSDN5REYzRXR4OXVr?=
 =?utf-8?B?Q2J1NnlNdzQ2VERtb0w0VVVhaDQ3OFNjOGZRV3FaQlZSRHVEcDluekJkODFp?=
 =?utf-8?B?bWk4a01TLzZIanNQUUxsT1JXUWRmQVhRTERJOFUwQTZiY28vMTBkUE4wSTVD?=
 =?utf-8?B?NEN5UG5Pc1g0S05qQnZUZzVLcldKbkNWUCt6RmVncHZRSjN4ejBDd0hnNCsv?=
 =?utf-8?B?NExjWUNabjFsVXgxVHUvT1N0NGdYUlFjalJFdkUzMjQ2ZlhZSlZxUU9HSUJu?=
 =?utf-8?B?SlRKNTNmYkFuamdlY2VHdXhMMlV0UFA1dWZiTXBJd3lBK09hM0JzUFEvUGZX?=
 =?utf-8?B?Yno5YWtxSXZGSDFBcVo0Tm9MWC9uOGt3WTJZN2swcERwcWlxQlY2OXdTNkxx?=
 =?utf-8?B?NVhMYThJOEJLWUNPdWo1ejBuc3I3My9FVUhib2Y5MGgwV3I0WVQzaXdtdHBE?=
 =?utf-8?B?VFkvWGpQQ3d4U3N1aUx5QzB3VG0vNFNrL1N1Yi9VbnpUcjVyVnpmeUVxWWVP?=
 =?utf-8?B?SGZFTnNlRVROZi9PeEY3NTFIczBEQ2l0T1k1WFVONkZHVzRCNU5MU3RSbm9I?=
 =?utf-8?B?MHprQlRhSzcyck4vcHZwa3Z1TVArcnpRSi9rTys5Um5VbXNtUy9pUzk0eWtI?=
 =?utf-8?B?Q3VLU204akFCdE1kWFdqK3E5bGYwbUlhYjJJT01zWFI0b2cyMHYyNHE3ejIr?=
 =?utf-8?B?TjlFclZHMmE0eTNtWDVkZVIwTERyb1NLdEQyMVR2YkU3R0dhRFFycEo5Z1Va?=
 =?utf-8?B?c29tZStoam50MmNTWkJtaFFhTW5DSm83TFFnSzN6dWwwelpuaXdvb0ZGWDQx?=
 =?utf-8?B?cjdLdElYcGJwUk85L0hwOUdEd1hpUmMxZHYrdE9Rd2lTVDVwSnJ1Q24zVTZ2?=
 =?utf-8?B?bzl3V2JIOG8vZWI3NGFjUlhjUGFsTURlbUphRG91WVNMOGNIZHdqbllwSTI1?=
 =?utf-8?B?Z1FBVngyUjJBbGI0L3RaWWxqVEJWYlpXN1NTWmZ4T29JRlFidVJqMGdCdzBl?=
 =?utf-8?B?Qm02NEh2djZCeHZxckFsdVFwYXZkRWdsZGx5b296Z3BDcTREelhXcHJndSsv?=
 =?utf-8?Q?DLbA6JMLcMqhcpxSIw9qlok=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVF6SmwyMi91QUlQZHBWQ3JrZnpJVUJ6TCtVanR0SzFPRjNQbUhNNGZlaFlC?=
 =?utf-8?B?YmlmQ1YvQTlUeHVUMlNHdTIyT2hWcEx0ZjY5azkrRzBhNG9Xb1JVYkFuQ21l?=
 =?utf-8?B?bUVoelJwelUybE83c3AzQm9wU0taNTZSVm5POVg5MDVST240aU04aU9YbzFa?=
 =?utf-8?B?eFVkNU9yMmt1WU1DcVdlRzJyMVZIRm1MbU5TSHcyNCtqaHhKNUJYRWFnUjdW?=
 =?utf-8?B?NnltYm8yWkkvb1BxbkVaYnhYTC9KUDJ5UkhENlJVd3V3RXlyNFE2TVR6N1BV?=
 =?utf-8?B?RE4yQWdiSFlYMDFnSEFxR1hTMnBTL2p0ZFRKRGN4Mk41WUdBTSsyeVFNK0hr?=
 =?utf-8?B?dGova2Jkekg2NW1meVNRejFEaDgzRDI2blNTSlNQbHdBUXJJeWpYQ1R1TFdk?=
 =?utf-8?B?VFhQRTFTazhZMWY2S0dYVFVNS1pQaGpEOThOUXJKekpnQnlYdEdwdHJzOUZx?=
 =?utf-8?B?YjZ3V09vYWtoQzJ2RXEvdGhMNmMxYk5MNmIwb0QyYnRIUjdaN1RQdDhlbnFG?=
 =?utf-8?B?QkVoMmpIWEtXNytrNDJLRWd6S3RqMWs1UnMwWCsrS200RUhMUlFCbnJIOHZx?=
 =?utf-8?B?eWpSazNMbmZ0eFpEMkJ4dU1aeDIzTFE4NThWTlFLSGd2MTJncXlEYmdTU3Zp?=
 =?utf-8?B?WFdIakR1VkVqVS9yK1d3WU9WeFIwajdmSDhZNlRzR1JJUm1INlRvbWFsdGxh?=
 =?utf-8?B?N2c5QWhDOVBtRU9MV0Rmb2V6dnJnNWFySW05dUpKeXkrVGhZZmZtRXVoU2lJ?=
 =?utf-8?B?cFQ4dWViblhaM2tiZ241RTgxcG1MTk54cGZXOGlDdCtQRzd5RG9ObHB2Q0Rl?=
 =?utf-8?B?d08yUFoyZE81aVR0YmNlczNGOWFQTGgrQWxBajlNU2Z1ZEhQZzlhZzJTWjM1?=
 =?utf-8?B?V09xK0RQRlFRaHJ3QmYxUUVsSE82RlVmRDl1aWQxQUJRbVgwV1ZkbWk4RC9D?=
 =?utf-8?B?ZzJ4dkpLc3lnUHJNYzZxWEZrTmUrcXNTM2pFcCtFbWhoSERDQk9SZXREUlAy?=
 =?utf-8?B?VmRwNTZEYVZtcTFoRjU0VEszREkrL3V3eUd5cnJGQWxFNGFhNmJnOVRIdDFJ?=
 =?utf-8?B?V2JCNXc3QUpuQ1NPU1p2VUVTYS82TkFaL1hXem5LU0I3dHRpeUp4NWRhL1FR?=
 =?utf-8?B?N3V0NGRpZjNWeWVHSEpHVjNrSThtcFBOSXVRYTJOdmxKZVZaK2NHTkdjbVVu?=
 =?utf-8?B?SjdvTmIvU3ZIdFdPTkNHWXdtRE1lQUd6WVplWHVoeDN5UXZtVEwrSHF4WjBX?=
 =?utf-8?B?NkVmVmpQMDlYdWEzc1YrSm1keTE1R2hFMDE4UEdUSnNpUEorZ0NpNTR5VXRt?=
 =?utf-8?B?UnQzR2YvcHBDSWVhRE43SjNzZThIaW00L2hWbHZyeEZqVWYwMzV6bzVtcHBq?=
 =?utf-8?B?akt0RVlLN1FPUVNOWVBWa0VxUmtKM0JUbnBmall1NWp4VldUT3c4QVZJR3Zq?=
 =?utf-8?B?R05OcDVVRTUzeGV6YjQ5OEg0Ni85dzdmTi9jcWRBbFYzTkQzUmlZQWJ2SGhI?=
 =?utf-8?B?a0NEbWViNG40Sy85amRoTVdLOC9jTXE0QTB3Z0RHNzM0c2t5MUYxMjAzU1dm?=
 =?utf-8?B?VkppaFcvVElzbnBpaUJGajAwUi95MHIzQ1BFY3pvaWxsMHMwMDRFY1BPeVRp?=
 =?utf-8?B?NDNnTGVwR1RrcDhwK3FxK0JOYW1tT0NEckhSNkhzUWc5dmdiVjBuMW16ZG04?=
 =?utf-8?B?SUxhekVML3huYXk1RmZDb3BIK0tseEhPZkZhZ0tmTWdwZm11V3JSTUlYNkJM?=
 =?utf-8?B?N3JTeVpOdzg3UU03NHdhbkl6M0x1K2swZGVzNVlrNCtBK0FOZ3JFNzlKMWVy?=
 =?utf-8?B?eSs2L00xcU5Ma1Z5NWJvU1RFWjA2MGEwcWFNdE9Hb0RSMWg3ME85VU14WW5F?=
 =?utf-8?B?cGY0TjB0RituNGVoWEtZaGtRb2FQdGR2dE5nZ0gwRE1iMXJRSWloSnRBWTRa?=
 =?utf-8?B?MFdwTkRnNHBaNkQ5cHdQbEZ2TjQ5Vnc1Wm56dXJ5blVWVzdFTm1VdkY2ZWVQ?=
 =?utf-8?B?ZkR2TDlXRGx4NzZrNEZyekhzamN3MjB0ZVMzOFR3VnJlT0d1Y1lLY1dEdmVD?=
 =?utf-8?B?bHR2cFBUcGd2a2FKVktaQmNraHhiOUhXWVc2Ym9zRzBqVlpzc3NGUzdVNjRK?=
 =?utf-8?B?Z1VlZWtXc01ucHpCNDZjOGw0T0pSdEUwMURwUFNld0NVck16bUhMN2N4Lzlr?=
 =?utf-8?B?QlhNN2Rzd0ZienVqZHN6ZlBHeGRoU2dXbzdWaCszbFR0V3VBcnFIUytzWmo0?=
 =?utf-8?B?YnFrczZqcFhZMGk4UUI5Z1A5Z1VtVWZVMjc2b3I0Zm5HS0xLanNQUFA2YVZ0?=
 =?utf-8?B?VzJzNlNrZmI3VlR1RXdLRmpZYUJWNXk3OUVCUUJWRE44aC9ROVRvTlM3NXdx?=
 =?utf-8?Q?1Luu1a5J/Wc7QVh4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6edc7fcd-d864-462e-4ccd-08de5f20d22d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 10:26:10.2429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ksCOh7qqYAw9H2zsSj6k6z+vzKzqxEUCuD/KyBLDxGmIv9V/wd8y51LihZvwnZn4j4Ymn+2dOSzi1eIFm1clVxNcuF7KS8wgqU1TNuQaL+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769682374; x=1801218374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OPQ6Vnpbfdhe2BjKUJdLPiWkvhbZqvu4lE0WIKIt55Q=;
 b=cDtn29xOH57aQe4jlGDM5tXRpIq1QWVnsaXTBs/Wt1GdD2HhvEI8Gtbl
 Ua/a3b/YUukjLBSGzSOZNgDJnNW8I4n6lse7Kg2XHxXBxqQccWraluGxQ
 49rCQxKPw5ACsOe67IHDVxG18Q88XVcdIkMBWwrbfWJuDxX344o87WSfh
 sdN8KHr1jLoOH5N1f/KfLCiMZKVZhHUGyFpZc+zP2iWXx1+8J0Rn7I0GZ
 J2CNxrxT0P3tCiA7OEmf78FermeyvGHY4Snc2fm2gieGKowl9c8t2ZDh0
 WdX3aYldFo0upcxCHmg+6piAjTbudem30j9HJDr0mPMWgk/RxZKqE2fLK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cDtn29xO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 03/30] docs: kdoc_parser: move var
 transformers to the beginning
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,lwn.net:email,infradead.org:email]
X-Rspamd-Queue-Id: 71A18AE9E9
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
U3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHYzIDAzLzMwXSBkb2NzOiBrZG9jX3Bh
cnNlcjogbW92ZQ0KPiB2YXIgdHJhbnNmb3JtZXJzIHRvIHRoZSBiZWdpbm5pbmcNCj4gDQo+IEp1
c3QgbGlrZSBmdW5jdGlvbnMgYW5kIHN0cnVjdHMgaGFkIHRoZWlyIHRyYW5zZm9ybSB2YXJpYWJs
ZXMgcGxhY2VkDQo+IGF0IHRoZSBiZWdpbm5pbmcsIG1vdmUgdmFyaWFibGUgdHJhbnNmb3JtcyB0
byB0aGVyZSBhcyB3ZWxsLg0KPiANCj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwu
b3JnPg0KPiBBY2tlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+
IFRlc3RlZC1ieTogUmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+DQo+IC0tLQ0K
PiAgdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5IHwgMjMgKysrKysrKysrKysr
Ky0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMCBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19w
YXJzZXIucHkNCj4gYi90b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gaW5k
ZXggZmQ1Nzk0NGFlOTA3Li4wYjY4YjE0MGNkMDIgMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9w
eXRob24va2RvYy9rZG9jX3BhcnNlci5weQ0KPiArKysgYi90b29scy9saWIvcHl0aG9uL2tkb2Mv
a2RvY19wYXJzZXIucHkNCj4gQEAgLTE5MSw2ICsxOTEsMTggQEAgZnVuY3Rpb25feGZvcm1zICA9
IFsNCj4gDQo+IChLZXJuUmUociJfX2F0dHJpYnV0ZV9fXHMqXChcKCg/Oltcd1xzXSsoPzpcKFte
KV0qXCkpP1xzKiw/KStcKVwpXHMrIikNCj4gLCAiIiksICBdDQo+IA0KPiArIw0KPiArIyBUcmFu
c2Zvcm1zIGZvciB2YXJpYWJsZSBwcm90b3R5cGVzDQo+ICsjDQo+ICt2YXJfeGZvcm1zID0gWw0K
PiArICAgIChLZXJuUmUociJfX3JlYWRfbW9zdGx5IiksICIiKSwNCj4gKyAgICAoS2VyblJlKHIi
X19yb19hZnRlcl9pbml0IiksICIiKSwNCj4gKyAgICAoS2VyblJlKHIiKD86Ly8uKikkIiksICIi
KSwNCj4gKyAgICAoS2VyblJlKHIiKD86L1wqLipcKi8pIiksICIiKSwNCj4gKyAgICAoS2VyblJl
KHIiOyQiKSwgIiIpLA0KPiArICAgIChLZXJuUmUociI9LioiKSwgIiIpLA0KPiArXQ0KPiArDQo+
ICAjDQo+ICAjIEFuY2lsbGFyeSBmdW5jdGlvbnMNCj4gICMNCj4gQEAgLTk3MSwxNSArOTgzLDYg
QEAgY2xhc3MgS2VybmVsRG9jOg0KPiAgICAgICAgICBdDQo+ICAgICAgICAgIE9QVElPTkFMX1ZB
Ul9BVFRSID0gIl4oPzoiICsgInwiLmpvaW4oVkFSX0FUVFJJQlMpICsgIik/Ig0KPiANCj4gLSAg
ICAgICAgc3ViX3ByZWZpeGVzID0gWw0KPiAtICAgICAgICAgICAgKEtlcm5SZShyIl9fcmVhZF9t
b3N0bHkiKSwgIiIpLA0KPiAtICAgICAgICAgICAgKEtlcm5SZShyIl9fcm9fYWZ0ZXJfaW5pdCIp
LCAiIiksDQo+IC0gICAgICAgICAgICAoS2VyblJlKHIiKD86Ly8uKikkIiksICIiKSwNCj4gLSAg
ICAgICAgICAgIChLZXJuUmUociIoPzovXCouKlwqLykiKSwgIiIpLA0KPiAtICAgICAgICAgICAg
KEtlcm5SZShyIjskIiksICIiKSwNCj4gLSAgICAgICAgICAgIChLZXJuUmUociI9LioiKSwgIiIp
LA0KPiAtICAgICAgICBdDQo+IC0NCj4gICAgICAgICAgIw0KPiAgICAgICAgICAjIFN0b3JlIHRo
ZSBmdWxsIHByb3RvdHlwZSBiZWZvcmUgbW9kaWZ5aW5nIGl0DQo+ICAgICAgICAgICMNCj4gQEAg
LTEwMDMsNyArMTAwNiw3IEBAIGNsYXNzIEtlcm5lbERvYzoNCj4gICAgICAgICAgIyBEcm9wIGNv
bW1lbnRzIGFuZCBtYWNyb3MgdG8gaGF2ZSBhIHB1cmUgQyBwcm90b3R5cGUNCj4gICAgICAgICAg
Iw0KPiAgICAgICAgICBpZiBub3QgZGVjbGFyYXRpb25fbmFtZToNCj4gLSAgICAgICAgICAgIGZv
ciByLCBzdWIgaW4gc3ViX3ByZWZpeGVzOg0KPiArICAgICAgICAgICAgZm9yIHIsIHN1YiBpbiB2
YXJfeGZvcm1zOg0KPiAgICAgICAgICAgICAgICAgIHByb3RvID0gci5zdWIoc3ViLCBwcm90bykN
Cj4gDQo+ICAgICAgICAgIHByb3RvID0gcHJvdG8ucnN0cmlwKCkNCj4gLS0NCj4gMi41Mi4wDQoN
ClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGlu
dGVsLmNvbT4NCg==
