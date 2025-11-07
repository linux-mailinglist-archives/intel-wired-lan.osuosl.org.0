Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BE7C3EA28
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 07:39:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0DF6413FA;
	Fri,  7 Nov 2025 06:39:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oDAQznVW7GRr; Fri,  7 Nov 2025 06:39:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC88C41400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762497571;
	bh=26CzU63wrUbETUS+Lj/G3dd00C+N8MQOVmb7l0j5xdc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bn5rzqSTnSTGUqneOrda+ycbFIhgQfXjc7A3ZIrsc8KK76oKQonb1SsPCdrXuOTSw
	 ytZDg4vy/RCa2pMuOJElv8a0431QXQjV1tLaRVcE/0p4+eCOCjvAMmJqzTIgOO/FcQ
	 yqLlRO/uc2ef9583sI7U3TJYbH72o/Ue/a128DuEydcGoQFL+nyo9x+gVDgUZXW2EA
	 8WaplM+qlgBuxHJcXc+klc5wyhDA2qLYBOhf+Y78+lQMc64PTIJtQOo6uhpVb7AeFe
	 zXaZTv3chEoIUqYmz/yXw7COSIRGXdkH4ccYSNbNAl8NPXH+R6UR9zXHmDGj5+TgAI
	 9ASDd0ZKMFF2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC88C41400;
	Fri,  7 Nov 2025 06:39:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7427E961
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 06:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 522F4610D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 06:39:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VS8yYd3268lw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 06:39:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0694F60884
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0694F60884
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0694F60884
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 06:39:28 +0000 (UTC)
X-CSE-ConnectionGUID: EtPnmHzZQCe+OxMbsjYdxg==
X-CSE-MsgGUID: Ta73FLnSQguH56jJ+kamVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64683061"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64683061"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 22:39:28 -0800
X-CSE-ConnectionGUID: ztBs5BVsT/K47+wEKd1lag==
X-CSE-MsgGUID: Kh1ftXWqQEy4usT686ghEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187220411"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 22:39:25 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 22:39:24 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 22:39:24 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 22:39:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xtAUBJNHWbefpAJef2Y6EVxcaRTH4QdvuK4e9Du5IhOAq+tf588SqIo3qlU3J2tWuCRjOr0tMn4d3yJzE1OqmjPgaL2JuwDyAEBqDPstfrKjT7PS5xWhRLmVmURFCrnDeWf8kfd3VfKgeiwHjk4dt7VrpWVvXaBfpRXfib7iFvtJ1Z4w5kPx4iDaxgLTTsbub5hthg/biaBpwhmIjU33b5Z2VSwibHi0C9WhqRRKhm8o3PeowSGU3QR1mPPvYbxJ+4AXdpfXVzkVtA6lvm54uz7rrbQGA54AqP7uz4oVK0rPL2XeUWayruT6vQ3o8uVX+ocL7oUTYpNyHtKYNICgYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=26CzU63wrUbETUS+Lj/G3dd00C+N8MQOVmb7l0j5xdc=;
 b=ttEl5Dm1Z2NTrowRvfzVz/B2Y22ciMaaj5yKeX/04l5cNTnSimTeHzMdqPMyPai1VsFxOxb6LOyrnnJtpM4OquGwRt3OygKtIl+pRIvigKwdyTORljCA91VpcqC7lRWqLFDnhSqpqG7F2AChqE7sLhQBsTvsbdcJWCv1wW7a2JRpAeES5gpP0PN1kxEhnt3zzHBp69OBYVJizhgT9k/lbNAO5VdwYMBce2Xv1m78MC9KdBympOeg3ZpxTZx86LN/amiRzY3VDbeAZjt8t/kdR7nQQ5R4dJtv/+TULdwRaliWwk6SaEkygfVpXZ6048h0hGCzyr83l/Ae4ZbRG+x/aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB8828.namprd11.prod.outlook.com (2603:10b6:8:257::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.10; Fri, 7 Nov
 2025 06:39:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 06:39:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "gregory.herrero@oracle.com" <gregory.herrero@oracle.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: validate ring_len parameter
 against hardware specific values.
Thread-Index: AQHcTzjK+L+TLfTJSEm4sft0ISZWd7TmwZSQ
Date: Fri, 7 Nov 2025 06:39:16 +0000
Message-ID: <IA3PR11MB89868E49FE97CE7A95394518E5C3A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251106150248.721025-1-gregory.herrero@oracle.com>
 <20251106150248.721025-2-gregory.herrero@oracle.com>
In-Reply-To: <20251106150248.721025-2-gregory.herrero@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB8828:EE_
x-ms-office365-filtering-correlation-id: c5247845-c8f0-4058-171a-08de1dc85fc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?UjFtaEp0cm9OTDRoRDUzUFkzdWJzdkFFa3A5dlljWEdXbU1uOUp1OGpNWkZ6?=
 =?utf-8?B?VzEzQ0FCeFZqLy80ZHR1Y0ozY0pJRTVRTDZrVjJuVHFOTm5lcVJEOU1yQ2gz?=
 =?utf-8?B?R2dzNmplYk1aUmRrb0ppbnY2d1AzM1ZhZWN1V2xoZm50UHNoN1RmbzVyWmdY?=
 =?utf-8?B?WmFHcEhDd2pmMjY2dFBDdStyVCtyNmREZHBrZjJrdVUxdjVFem9zT3BFdVd3?=
 =?utf-8?B?UDNPbG9qZzV5ZVFFZHpTQ3ZrR3BiWklDcnZsNlVzVXF6bW1DajVya3NqTUNZ?=
 =?utf-8?B?QnlpYktodXhFUjFJOHNFaVgrRzVlc1dHTVp5MXBjVVZsclFSd09qWTUvK2Q5?=
 =?utf-8?B?dExtQnFONHJuSjE2L05CWEQzVzBjSk9JSXBqR3dWVkdCdjNJWU5hcXNhZFpR?=
 =?utf-8?B?bUo0UldLWmFuSjRzc1lmbS8wSUorYVcrU2R0WGRxRUxaT3JiMnBWckNTdy90?=
 =?utf-8?B?N3F4UXloYXMvb254a0s2UGwxRXBGWnVwQ21RZkRHalRqVkJLSFlLajdrMXdl?=
 =?utf-8?B?dGRrTll5Q2owMFRpUVB0amZlanNSQ2piOWMxK3VXUm5CM3ArRFlqVkpvS3ZE?=
 =?utf-8?B?T3lNZDNSRG9NNURENUszZi9jUDBUL01YRGlhVnlGd2lCM21iLzF1cFNzSHpG?=
 =?utf-8?B?WkcxMGNLc1BtK25JckRBdlBBY0pxQkgzMDZBQUg2TEVFR2hOem11dFErYnpU?=
 =?utf-8?B?YVhVQzdSenBaWFRGSkVBOUQyalhCcnBFZzFkdEFJUFI0TjhlZWtCWWdTNmlL?=
 =?utf-8?B?YnpmbzFlaTNPWXR5cGhReVpQVzdYVU50QzRMSUJRdDJpMDR6TUVLaGlVKzNr?=
 =?utf-8?B?NXdCbFpBVmxiVmJTK2pUMGZtYlVzV0haL0VxRTJ1L1ZXZ2Q1ZTZMVDJOTnZX?=
 =?utf-8?B?V2wzWlZ2RFJQT3YrbVFZSUlhWWY0MjMvRlZaMHFhM0puSHRtSmlBcDIrUVBM?=
 =?utf-8?B?dlQ3MCtWeTBzakxEa2Y4cFpPOWJtMW1NYVdrMGxYbDlsNEZyZUg1VFNNZmNH?=
 =?utf-8?B?bjNtUXRwNk5xT1R3Tzl3ZzFCQWF1NUVta3dldCsxbkFzWlJqblFDc1NUWGt4?=
 =?utf-8?B?T3pIUi9JS0FTM3lZejc3NTllRVVXK0JETGNEU1NCeElIL3k1aVNvTGV1K2lQ?=
 =?utf-8?B?UFFSQzBCUDVLSkUzR3g2TVM0OUIvNlo4eGUwUytYL0NHRTJLRTZBTTFtSWI3?=
 =?utf-8?B?MTRoUlk1dVZzbHZBY0w4Sm8xOEhZMkhOWXJ1bUwvOXNzMHIvSlVFY1NYR1Vm?=
 =?utf-8?B?QXBXc0h2cExaQTZPbkRGNVpjTVZBN3E3OU0yOHFXd2NqQVhueHArKzZ4eFl4?=
 =?utf-8?B?aVY3QUVuVzEzZnRKRitKSWJLemE1YTNVbytRMWMyVng1S2lUSzFucDhZd0th?=
 =?utf-8?B?SCttVUFjVU9wN3dySnlkdG9LM3RoVDBlSDNuRHV5VnlZOVREMjJuSnB2cEJ1?=
 =?utf-8?B?ckFqMUlEeXZ1cjczZ0FiUkxQK1NPZXA5aHJPT3krTDh5STlsbnpVMmRZT3ov?=
 =?utf-8?B?dGNnaGd0c2I0S3FiQzByTk42WjVkQm5KTXN2ZC8weFpnenRVYnFKT0d6NUZs?=
 =?utf-8?B?Sk85S2VzdlZBYUVLSmZWQ0kwckEzSjBuK25qZjZKM3ZSMnVOOWpPaklGOWFQ?=
 =?utf-8?B?L0JNWmFTc0tsNm1lNERTU0JTemNlR3QySnNDZXB4ZGRBS3dnMDRtK01qWkdr?=
 =?utf-8?B?OHFvS0Q1WDFKdEtiUm4xeGVSWEY1WnhONEJRRDhzNU53TE5VbEJYRlQwQ1Iv?=
 =?utf-8?B?OHByOWtaQVRxbjVDRHU1MzJiQlpuVi9meFFUTjVQWHVTY2FNV0pRSDJjV1VR?=
 =?utf-8?B?VDJHbXNsR2lITjk1M1NCMXhqMjAzMkczR1liTXJDZTFMazlmczlML1VDMXNZ?=
 =?utf-8?B?aTh5Z0RYanVXNHUzZm9VK29UQkVQSHhwR2QzVmJXelZUcldUdVp0L2ErMWl6?=
 =?utf-8?B?NXhMQ0ttaklSellxYWFBWjNjdFpPTzFSVndJRU5xQjA4RWRwWEUwNHlHd3lh?=
 =?utf-8?B?R05mZTBlTFR0a1hyY0x4bnlUQVlBYTdzMEdlUXZVTXdFY2dRQytObmhkU0c5?=
 =?utf-8?B?TVBQNm90UVVBQ3dHbVFWbGMwczBNR3pnZlhxZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmNZaFkxR2pTTG1WYTJXYzJZZXdqbWxNSlYzemQyWDByMVdCZWNmSFpCMkFh?=
 =?utf-8?B?Wkd6d3NUMTdzT1IwT09JYklNOFEzUlBKTVBIaTE1RGc5ZGgxMjAvYllmSmFz?=
 =?utf-8?B?T2FiV2w4T2xpK0JaWHdkRjJKYnpnbzVZM3JOcnkyRkhwMkxRL254M1FpbWlz?=
 =?utf-8?B?dzdON21tSWgzdmZocmFzWDZHSzBXS2F6bkRib1N3ekViVG1PejlhRmlNQ2tk?=
 =?utf-8?B?eGZRQ0UyTURLejNwQ3RraW1NSk84dlFHam1za0FLbVppMWtGVVRGdllwb3lx?=
 =?utf-8?B?TEtJL2d6WENHQWdYUjlZUnFXT1BDUmNRK1B5dWloQUFNY2dOclFoTXFwaExy?=
 =?utf-8?B?ajVhN2Vub2tDaHRxZnduby9hQjJlQjI1NDhNd1VkSFRWMnZkUE5JVEFkK0FW?=
 =?utf-8?B?RUlXWU5WWWJPS2MrQzB5dWRjTXBpOTUrclNiQ1hLQTMyWHFmc3FGRGF0dzlP?=
 =?utf-8?B?V1RZRUpEN3loa3VFQmJLVWY4M1dkdERpWHZkYkJmWVFHYjd2TFVIMklnbTZ3?=
 =?utf-8?B?cUZPcXE1YlhMeXRCK0VzbFBnd0VUMFJsMklWbnpESUh1ZW1NQjlSSjJLOGxH?=
 =?utf-8?B?YmVQdzFKSkZTNU9SeS9yNkdjNUpNNUw4a0RBU2pmNFJBSTl5R0FFNmZVN2Zj?=
 =?utf-8?B?ZTV3alRvcjZZd3k2MDd4eURaelJtZmlUU1VidGp0eElSdFQ5emVqVmVHUTdj?=
 =?utf-8?B?RGk0WEhkcmkrckNscTJxQm1wUWxiT0FVQmw0N1NGYjlIK1Y0dHhGVFl3UlQ5?=
 =?utf-8?B?Vm0rZ3Yvbmd0TGRvWkV4YkdQS3NJSHZMbWlSdS92eVZXRElCVlBXamV3L2JL?=
 =?utf-8?B?Nlo4bElnQzZ0MVRvditZWGhCak90L2tpSEMxTWZNZndFOGpYaEgweFdkSkxU?=
 =?utf-8?B?aldTOG9jNGN1b2s4KzRTYzNSU0trZ2htbERpbnF0S2NlZ2taOHlJTlRaaWdo?=
 =?utf-8?B?QkEvcVQzOEdQYVArT1granZWcmVQdEZROEhSY3c2OXZxTkFuVitLZ25IdWhl?=
 =?utf-8?B?dXI0b0Mvc3JpLzFCcmJya1ROTkNlM2JYM0J3T0ZNWkRJWXZYU1RuSmJMa0JZ?=
 =?utf-8?B?VXh4SUZSYkloMkVtUHFDb2lJMVBoV3VVT01DWW05MVdhU3dhUERQMG9vYXBV?=
 =?utf-8?B?c2NsRktTV25zd3VTRVZtejk1M1NJaTg0QldFaU5vSzhXMUJZZEFNaStNRHk5?=
 =?utf-8?B?TlVEZGtIQS9DUXlIUlY0dHdIVm1HTEVGcm1JbUFpOC9tbG14MW1LNXBnbmJk?=
 =?utf-8?B?QnY1WWQ5WlNQZ2llOXlZZTZFZUJMeDF4dDF3ZVhqaHA2d1ZpYVdsTkpJVzhz?=
 =?utf-8?B?RWxqcWNUOVlvTE5pbjlmamRwMXc4RUhGNHZSSzVoOEZTejlBQTlSRGRQbHha?=
 =?utf-8?B?R1l2ZU9GR1JFKzR2UWgwRHl4ODVZRk1EVWtrQjUrVkhOZzUzU1J1UWlIYUNa?=
 =?utf-8?B?N253cGpubVN3MlFMemFML0g2YTNBQ05ITnpIeVpPVGxmQlFwdFpWOTA0SHpE?=
 =?utf-8?B?UUNRd2JuQzcybGo5TTFGR0V4WVhDLzRMTVhIL2J0RXNEbkpzZ1UrWkdOVk0v?=
 =?utf-8?B?SUhQZVRvaVI5WEtMRjBhSUpLdXprTHczcTJXUENLRjRndTJHbHhpNjBZUHhn?=
 =?utf-8?B?MjlLRFREdUpJbTNqY1FwVnNGMmlqS2xlU2NmanNMWVkvMFduQWRjZ0ViVWFD?=
 =?utf-8?B?QjFJYnArWGpxOStjK242WDg1R1lCcFNsSWF4TnRpVm90b3ptUWxCUmZodjVG?=
 =?utf-8?B?QjhycVZPcDZzRHNtc09Xd20rNkRiQ1lxT0ZlMkdwK1hLcWp6ckt1V0ZlNFQ3?=
 =?utf-8?B?KzBGS1o0V0JDVGdvQ2RMQi9rS2pMaHljSzZFSVliUTU2QkZtYitTa3FWUHI2?=
 =?utf-8?B?aU5WZy9jbk5TZkhqNVRRb3NRa1VpWEU2V3MwcE9HTjl2WFRRM3Vxa0RiZVhM?=
 =?utf-8?B?aFZCRHg4T3N1Ty9qSThYdFFiWWJCTWhKOUx1aVdXY0tVZjR2RTgxOGs4NXJo?=
 =?utf-8?B?R2dlSDJCWXVxdFBXbGM4YnpYMHFUSkkrRUFXcnBWUWY2cmY4VHYzOTZsTkll?=
 =?utf-8?B?R3BwTEdka1lwL25sdFcweHQwcnlTTlM2dDZ2bHVTT0hQR04ycVhTUS8zV0tK?=
 =?utf-8?B?alVPNDRKQ1d0R2I5TG83T2FjbTdBcVFxNVM4bU5kcDBCOHRSUklxQ1BKT3gx?=
 =?utf-8?B?K3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5247845-c8f0-4058-171a-08de1dc85fc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 06:39:17.0195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NGDLos+1BVxhGiwot+MmZeXL0uIM5eL8F3YVrQHbuIyzM73awu6BeM6pEnIrkeW5p8ksE+lrrOWiVHU1daS01VSSoBM6iR9B/bQyX0qRM1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762497569; x=1794033569;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=26CzU63wrUbETUS+Lj/G3dd00C+N8MQOVmb7l0j5xdc=;
 b=ePtaDrvqmcWRoUrQhYw07rMSRspKnM9Ov1Pb6BgMZ9Mfmh8u7p+NrCYW
 sM4KQI3C1AnQ+Mzfdr499zMJqv0j5pAFrHOj7v3+08iPDWUl5bkUKzWq2
 lb55/+xL6dLWhGwblHlH1BGixXKjU5wGrTpDxd+kq4TNFeK086IJn0CWV
 7m81Ia8OaF7aax3aTwTNtygX81S1elD55dA9l4xixzO4HwHIGCFpRkX5H
 BXcgspcEVa4A1446bKi/oNeZzXIcfEMirCSXtOYqgi9qSMeShz4qfWKhk
 hvLwAtqCi2HO6VRYualFqaXNzD93T00aCf/I0v4zL0xoQJ6bB1G+Qne9Y
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ePtaDrvq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: validate ring_len parameter
 against hardware specific values.
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgZ3Jl
Z29yeS5oZXJyZXJvQG9yYWNsZS5jb20NCj4gU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDYsIDIw
MjUgNDowMyBQTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50
ZWwuY29tPjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT47IGFuZHJldytuZXRkZXZAbHVubi5jaDsNCj4gZGF2ZW1AZGF2ZW1sb2Z0Lm5ldDsgZWR1
bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJuZWwub3JnOw0KPiBwYWJlbmlAcmVkaGF0LmNvbQ0K
PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5l
bC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBHcmVnb3J5IEhlcnJlcm8g
PGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0hdIGk0MGU6IHZhbGlkYXRlIHJpbmdfbGVuIHBhcmFtZXRlcg0KPiBhZ2FpbnN0IGhh
cmR3YXJlIHNwZWNpZmljIHZhbHVlcy4NCuKAnGhhcmR3YXJlIHNwZWNpZmlj4oCdIOKGkiDigJxo
YXJkd2FyZeKAkXNwZWNpZmlj4oCdDQoNCj4NCj4gRnJvbTogR3JlZ29yeSBIZXJyZXJvIDxncmVn
b3J5LmhlcnJlcm9Ab3JhY2xlLmNvbT4NCj4gDQo+IFRoZSBtYXhpbXVtIG51bWJlciBvZiBkZXNj
cmlwdG9ycyBzdXBwb3J0ZWQgYnkgdGhlIGhhcmR3YXJlIGlzDQo+IGhhcmR3YXJlIGRlcGVuZGVu
dCBhbmQgY2FuIGJlIHJldHJpZXZlZCB1c2luZw0KPiBpNDBlX2dldF9tYXhfbnVtX2Rlc2NyaXB0
b3JzKCkuDQo+IE1vdmUgdGhpcyBmdW5jdGlvbiB0byBhIHNoYXJlZCBoZWFkZXIgYW5kIHVzZSBp
dCB3aGVuIGNoZWNraW5nIGZvcg0KPiB2YWxpZCByaW5nX2xlbiBwYXJhbWV0ZXIgcmF0aGVyIHRo
YW4gdXNpbmcgaGFyZGNvZGVkIHZhbHVlLg0KPiBDYXN0IGluZm8tPnJpbmdfbGVuIHRvIHUzMiBp
biBpNDBlX2NvbmZpZ192c2lfdHhfcXVldWUoKSBhcyBpdCdzIHUxNg0KPiBpbiBzdHJ1Y3Qgdmly
dGNobmxfdHhxX2luZm8uDQo+IEFsc28gY2FzdCBpdCBpbiBpNDBlX2NvbmZpZ192c2lfcnhfcXVl
dWUoKSBldmVuIGlmIGl0J3MgdTMyIGluDQo+IHZpcnRjaG5sX3J4cV9pbmZvIHRvIGVhc2Ugc3Rh
YmxlIGJhY2twb3J0IGluIGNhc2UgdGhpcyBjaGFuZ2VkLg0KPiANCj4gRml4ZXM6IDU1ZDIyNTY3
MGRlZiAoImk0MGU6IGFkZCB2YWxpZGF0aW9uIGZvciByaW5nX2xlbiBwYXJhbSIpDQo+IFNpZ25l
ZC1vZmYtYnk6IEdyZWdvcnkgSGVycmVybyA8Z3JlZ29yeS5oZXJyZXJvQG9yYWNsZS5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmggICAgICAgICB8
IDE4DQo+ICsrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2V0aHRvb2wuYyB8IDEyIC0tLS0tLS0tLS0tLQ0KPiAuLi4vbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jIHwgIDQgKystLQ0KPiAgMyBmaWxlcyBjaGFu
Z2VkLCAyMCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oDQo+IGluZGV4IDgwMWE1N2E5MjVkYS4uMGU2OTcz
NzVmY2FmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGUuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBA
QCAtMTQxOCw0ICsxNDE4LDIyIEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGk0MGVfdmViDQo+ICpp
NDBlX3BmX2dldF9tYWluX3ZlYihzdHJ1Y3QgaTQwZV9wZiAqcGYpDQo+ICAJcmV0dXJuIChwZi0+
bGFuX3ZlYiAhPSBJNDBFX05PX1ZFQikgPyBwZi0+dmViW3BmLT5sYW5fdmViXSA6DQo+IE5VTEw7
ICB9DQo+IA0KPiArLyoqDQo+ICsgKiBpNDBlX2dldF9tYXhfbnVtX2Rlc2NyaXB0b3JzIC0gZ2V0
IG1heGltdW0gZGVzY3JpcHRvcnMgbnVtYmVyIGZvcg0KPiB0aGlzIGhhcmR3YXJlLg0KPiArICog
QHBmOiBwb2ludGVyIHRvIGEgUEYNCj4gKyAqDQo+ICsgKiBSZXR1cm46IHUzMiB2YWx1ZSBjb3Jy
ZXNwb25kaW5nIHRvIG1heGltdW0gZGVzY3JpcHRvcnMgbnVtYmVyLg0KPiArICoqLw0K4oCcbWF4
aW11bSBkZXNjcmlwdG9ycyBudW1iZXLigJ0g4oaSIOKAnG1heGltdW0gbnVtYmVyIG9mIGRlc2Ny
aXB0b3Jz4oCdDQoiICoqL+KAnSDihpIg4oCcICovDQoNCg0KPiArc3RhdGljIGlubGluZSB1MzIg
aTQwZV9nZXRfbWF4X251bV9kZXNjcmlwdG9ycyhzdHJ1Y3QgaTQwZV9wZiAqcGYpIHsNCk5pdDog
a2VybmVsIGNvZGluZyBzdHlsZQ0KUGxlYXNlIGZvbGxvdyBzdGFuZGFyZCBrZXJuZWwgc3R5bGUg
Zm9yIGZ1bmN0aW9uIGRlZmluaXRpb25zOg0KDQogLSBUaGUgb3BlbmluZyBicmFjZSBtdXN0IGJl
IG9uIGl0cyBvd24gbGluZSwgbm90IGFmdGVyIHRoZSBwcm90b3R5cGUuDQogLSBzdGF0aWMgaW5s
aW5lIGlzIGZpbmUgaGVyZSwgYnV0IGtlZXAgc3BhY2luZyBjb25zaXN0ZW50Lg0KIC0gQWxzbyBj
b25zaWRlciBtYXJraW5nIHRoZSBhcmd1bWVudCBjb25zdCBpZiB0aGUgZnVuY3Rpb24gZG9lcyBu
b3QgbW9kaWZ5IHBmLg0KDQpTbyBpbnN0ZWFkIG9mOg0Kc3RhdGljIGlubGluZSB1MzIgaTQwZV9n
ZXRfbWF4X251bV9kZXNjcmlwdG9ycyhzdHJ1Y3QgaTQwZV9wZiAqcGYpIHsNCnVzZToNCnN0YXRp
YyBpbmxpbmUgdTMyIGk0MGVfZ2V0X21heF9udW1fZGVzY3JpcHRvcnMoY29uc3Qgc3RydWN0IGk0
MGVfcGYgKnBmKQ0Kew0KDQpTZWU6IGh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL3Byb2Nlc3MvY29k
aW5nLXN0eWxlLmh0bWwgc2VjdGlvbiBvbiBmdW5jdGlvbiBkZWZpbml0aW9ucy4NCg0KPiArCXN0
cnVjdCBpNDBlX2h3ICpodyA9ICZwZi0+aHc7DQo+ICsNCj4gKwlzd2l0Y2ggKGh3LT5tYWMudHlw
ZSkgew0KPiArCWNhc2UgSTQwRV9NQUNfWEw3MTA6DQo+ICsJCXJldHVybiBJNDBFX01BWF9OVU1f
REVTQ1JJUFRPUlNfWEw3MTA7DQo+ICsJZGVmYXVsdDoNCj4gKwkJcmV0dXJuIEk0MEVfTUFYX05V
TV9ERVNDUklQVE9SUzsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gICNlbmRpZiAvKiBfSTQwRV9IXyAq
Lw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0
aHRvb2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29s
LmMNCj4gaW5kZXggODZjNzI1OTY2MTdhLi42MWMzOWU4ODFiMDAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0b29sLmMNCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0KPiBAQCAtMjAxMywx
OCArMjAxMyw2IEBAIHN0YXRpYyB2b2lkIGk0MGVfZ2V0X2RydmluZm8oc3RydWN0IG5ldF9kZXZp
Y2UNCj4gKm5ldGRldiwNCj4gIAkJZHJ2aW5mby0+bl9wcml2X2ZsYWdzICs9IEk0MEVfR0xfUFJJ
Vl9GTEFHU19TVFJfTEVOOyAgfQ0KPiANCj4gLXN0YXRpYyB1MzIgaTQwZV9nZXRfbWF4X251bV9k
ZXNjcmlwdG9ycyhzdHJ1Y3QgaTQwZV9wZiAqcGYpIC17DQo+IC0Jc3RydWN0IGk0MGVfaHcgKmh3
ID0gJnBmLT5odzsNCj4gLQ0KPiAtCXN3aXRjaCAoaHctPm1hYy50eXBlKSB7DQo+IC0JY2FzZSBJ
NDBFX01BQ19YTDcxMDoNCj4gLQkJcmV0dXJuIEk0MEVfTUFYX05VTV9ERVNDUklQVE9SU19YTDcx
MDsNCj4gLQlkZWZhdWx0Og0KPiAtCQlyZXR1cm4gSTQwRV9NQVhfTlVNX0RFU0NSSVBUT1JTOw0K
PiAtCX0NCj4gLX0NCj4gLQ0KPiAgc3RhdGljIHZvaWQgaTQwZV9nZXRfcmluZ3BhcmFtKHN0cnVj
dCBuZXRfZGV2aWNlICpuZXRkZXYsDQo+ICAJCQkgICAgICAgc3RydWN0IGV0aHRvb2xfcmluZ3Bh
cmFtICpyaW5nLA0KPiAgCQkJICAgICAgIHN0cnVjdCBrZXJuZWxfZXRodG9vbF9yaW5ncGFyYW0N
Cj4gKmtlcm5lbF9yaW5nLCBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX3ZpcnRjaG5sX3BmLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfdmlydGNobmxfcGYuYw0KPiBpbmRleCAwODFhNDUyNmEyZjAuLjVlMDU4MTU5
MDU3YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X3ZpcnRjaG5sX3BmLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3ZpcnRjaG5sX3BmLmMNCj4gQEAgLTY1Niw3ICs2NTYsNyBAQCBzdGF0aWMgaW50IGk0MGVf
Y29uZmlnX3ZzaV90eF9xdWV1ZShzdHJ1Y3QgaTQwZV92Zg0KPiAqdmYsIHUxNiB2c2lfaWQsDQo+
IA0KPiAgCS8qIHJpbmdfbGVuIGhhcyB0byBiZSBtdWx0aXBsZSBvZiA4ICovDQo+ICAJaWYgKCFJ
U19BTElHTkVEKGluZm8tPnJpbmdfbGVuLCA4KSB8fA0KPiAtCSAgICBpbmZvLT5yaW5nX2xlbiA+
IEk0MEVfTUFYX05VTV9ERVNDUklQVE9SU19YTDcxMCkgew0KPiArCSAgICAodTMyKWluZm8tPnJp
bmdfbGVuID4gaTQwZV9nZXRfbWF4X251bV9kZXNjcmlwdG9ycyhwZikpIHsNCj4gIAkJcmV0ID0g
LUVJTlZBTDsNCj4gIAkJZ290byBlcnJvcl9jb250ZXh0Ow0KPiAgCX0NCj4gQEAgLTcyNiw3ICs3
MjYsNyBAQCBzdGF0aWMgaW50IGk0MGVfY29uZmlnX3ZzaV9yeF9xdWV1ZShzdHJ1Y3QgaTQwZV92
Zg0KPiAqdmYsIHUxNiB2c2lfaWQsDQo+IA0KPiAgCS8qIHJpbmdfbGVuIGhhcyB0byBiZSBtdWx0
aXBsZSBvZiAzMiAqLw0KPiAgCWlmICghSVNfQUxJR05FRChpbmZvLT5yaW5nX2xlbiwgMzIpIHx8
DQo+IC0JICAgIGluZm8tPnJpbmdfbGVuID4gSTQwRV9NQVhfTlVNX0RFU0NSSVBUT1JTX1hMNzEw
KSB7DQo+ICsJICAgICh1MzIpaW5mby0+cmluZ19sZW4gPiBpNDBlX2dldF9tYXhfbnVtX2Rlc2Ny
aXB0b3JzKHBmKSkgew0KPiAgCQlyZXQgPSAtRUlOVkFMOw0KPiAgCQlnb3RvIGVycm9yX3BhcmFt
Ow0KPiAgCX0NCj4gLS0NCj4gMi41MS4wDQoNCkJlaGF2aW9yIGNoYW5nZSAvIHBvdGVudGlhbCBy
ZWdyZXNzaW9uOg0KVGhpcyBzd2l0Y2hlcyB2YWxpZGF0aW9uIGZyb20gYSBoYXJk4oCRY29kZWQg
WEw3MTAgbWF4aW11bSB0byB0aGUgcGVy4oCRTUFDIG1heGltdW0uDQpUaGF0IHdpbGwgdGlnaHRl
biB0aGUgbGltaXQgb24gbm9u4oCRWEw3MTAgY29udHJvbGxlcnMgYW5kIGNhbiByZWplY3Qgcmlu
Z19sZW4gdmFsdWVzIHRoYXQgcHJldmlvdXNseSBwYXNzZWQgdmFsaWRhdGlvbi4NClBsZWFzZSBj
YWxsIHRoaXMgb3V0IGluIHRoZSBjb21taXQgbWVzc2FnZSBzbyB1c2VycyB1bmRlcnN0YW5kIHRo
ZSBjaGFuZ2UgKGl0IGZpeGVzIGFuIG92ZXLigJFhY2NlcHRhbmNlIGlzc3VlKS4NCg0KUmV0dXJu
IGNvZGVzIC8gbG9nZ2luZzoNCi1FSU5WQUwgaXMgZmluZSBmb3IgaW52YWxpZCB2aXJ0Y2hubCBw
YXJhbWV0ZXJzOyBwbGVhc2Uga2VlcCBpdCBzaWxlbnQgKG5vIGRtZXNnKSB0byBhdm9pZCBsb2cg
c3BhbSBmcm9tIG1pc2NvbmZpZ3VyZWQgVkZzLg0KDQpXaXRoIHRoZSBiZXN0IHJlZ2FyZHMNCkFs
ZXgNCg==
