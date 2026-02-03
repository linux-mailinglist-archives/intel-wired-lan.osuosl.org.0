Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4E/vNfpBgWl6FAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 01:31:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A8AD3028
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 01:31:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B72D607CB;
	Tue,  3 Feb 2026 00:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lf3vwjCqBn_4; Tue,  3 Feb 2026 00:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 773C8607CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770078711;
	bh=2XYpGmPCVMCzQBcAl2cR0i7LSFKa6Ips5gZBhot+DdE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z7dKEhNANNddnGbRHQCN1DglTkfz4AfOaFSMHKgIS+2XDvFv2dzNURyJuum8XIQgZ
	 qGlNv1RAgPBoTWKyUNa17c4hu2y1ta1SEwulmoUv9tsg4jIxQzeHbccmWaCR2+SIKH
	 G7IftmXAL3+bHcFo3xJhcVpjRIOWR0WGlUSZPRg0v51h4Wselby8Ln0BbhwIz6ARUa
	 621QFkMhoo2unWLFXKW/TX71YF3fXl6r5bmgMy4eHtrnR76eqEIt9T1Kd8mmIr7WQ7
	 TQoI0FrupiH5OOHZiH4CLkjLoHUypXIt4BogRSPvUW4FkJNd/PjZeOrdlqWM6rDv//
	 +DJ4sHAQvnARA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 773C8607CC;
	Tue,  3 Feb 2026 00:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD92E1A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 00:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C984A409B9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 00:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X0dSJVJ6zwb8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 00:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A13F3408E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A13F3408E8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A13F3408E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 00:31:47 +0000 (UTC)
X-CSE-ConnectionGUID: rajvFMS/RJCZlsk6kE7oWw==
X-CSE-MsgGUID: M9iTsgvfTuq2fAc4HxlsVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81982773"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="81982773"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 16:31:46 -0800
X-CSE-ConnectionGUID: STNydcPzQw27KRvODv/CxA==
X-CSE-MsgGUID: mhIUwwMTRcm+d80rJ9nbhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="240729210"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 16:31:46 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 16:31:45 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 16:31:45 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 16:31:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bYysW/zorm6/05JuF0GWmh6RSLmI30hnSHOvecNQYmqsFGV2KKS0ambgY6He3ao6z+1PDpMdUBaQrirqd5ZsqbGkrzaWmG4xQS116MudLn6moMb1/4TvrEWWdiZQR6KTQ9J1aUujSHY2WQRkf02scHDk54fNGkhRuH4OvSqObSRtHl6+7j9iyT/zT2qhQtJOKN3I1AMAOU9cSrARpR+JgDNitwFOV7cbO3Is2Cx/PHUgIG4fovcsQIJEJDx/1fYaWEba7k/NzLfrggwO9q/NzJLe3tI+CmEtkYzBtRzti9bBgr4b2WQJrmlBk7AJIwUdm8OJateuVw86fS6mPcDVAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2XYpGmPCVMCzQBcAl2cR0i7LSFKa6Ips5gZBhot+DdE=;
 b=TGIYTv7y/7ebsDwCUcggkJGPj42Kt1xDhWslTD9mh0P+xNuA5SLmqcsRJcQYxN1kLjDITKAan9xD7MQ/B0XYDLPay4Ef3lw0i6fAaXygSO0n60980fAZFRC/Jm7AF9DQAuuRLN0Kaw0thRYLwHDcKnKBUHaqFYg9kPaGVZ3f55uFgdQo8j0Xn70TDZPHH+ceIksIEQG/8S0yT2s3kdeuR/zltQwiHfu3xOk9qC2pUUs165A1aF1jyF/K1daUrcv/dEE6OM2D9334tJ7pQmCPOdzQ/hDkm6N/aGaqJvOuPEMAIZ21MtqUzLtQOsB12JxNdlTZtYHSZcvo+O+pxO1WDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.13; Tue, 3 Feb
 2026 00:31:41 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9564.010; Tue, 3 Feb 2026
 00:31:41 +0000
Message-ID: <bcefc3ee-4704-483a-8271-01677e47eb8b@intel.com>
Date: Mon, 2 Feb 2026 16:31:39 -0800
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, <kohei.enju@gmail.com>
References: <20260202161826.114393-1-kohei@enjuk.jp>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260202161826.114393-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0148.namprd04.prod.outlook.com
 (2603:10b6:303:84::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7340:EE_
X-MS-Office365-Filtering-Correlation-Id: a4e81416-5931-4d03-873f-08de62bb996c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|7142099003; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkhxejhEbXBoeGVlKzJnOGtqRkVZU2FyWWl0OUZld1BESmU0cnlmcDBvazFN?=
 =?utf-8?B?b0VpMndCKzJuQUJJTWdid25wb3hyVkJRUWo5ZDFxeUliSkJjQW00d0NFdEhD?=
 =?utf-8?B?cXNvcVAyTXZXck5EejQramt6SEc0TmgrN3pNT2pwVCtibmY4bXQxRjc4TGlh?=
 =?utf-8?B?NE90WGw2ZitaSThjUXg1cVNjSUozZyttbTJiNDBzckRQR21SRjVTMWRBblVi?=
 =?utf-8?B?YnVISVowamtjZEdVOEJtTUVEek9lSzNYY0pGU3hwVk9EZkh6REdpeFVBRFAw?=
 =?utf-8?B?VTB3RkxXN0lSM3VwTkhzSmMyejVqa1dPS1gyU1IvSXcvMEhGYVBJRktORHpJ?=
 =?utf-8?B?QmU0UThBcWpNZ25FN2pqbkJNckNWZEVha1lkeWd5OHBrRmFsUDRWNUhEaEFr?=
 =?utf-8?B?OEttaXlBWDRsY2hKaWtrTXNyY0ZLc2pLV0xoQ2RGcm8xTmkzOUgxbTJaUEg2?=
 =?utf-8?B?MDQrUGJTQXV2RmtIOUxob2tzSGpUdysrelVHVndweHdaTjBKQkh3bnhjbFVn?=
 =?utf-8?B?U2N6dHpCWlo4VDY4OUpIWTVCUmVva1JWSDFDK1hZYy9NNk8vS3RBZFRZNXJk?=
 =?utf-8?B?a0JPWnVMTS81cmJmNHE3R2UxVWZNYm5EZHFpdFgwU0tlSmI2R1MxcFZzMjJu?=
 =?utf-8?B?eUkwQnNMTDRPcGJJeWE1d3hBZ1R5Ty9wQmhzVnJWUm5yVDRMM3VQd3hMeHZl?=
 =?utf-8?B?MGgzTXYvUXl5bjY1T05mdkNwOW0rZ3VpT3I1WWpWKzgwTldkMUh2QnlDWlRv?=
 =?utf-8?B?aEwycU10em5ZVldOSnZyNS9TUXpXYkJ4ZnpPMENvVzFPMEVQUnNDN29SY0Iv?=
 =?utf-8?B?VEN6ZThuVFBNOVZRNWdCbGxTUzVHNCt0SHJwSDBDMjM1ZWd1OTA2aXl4bGJv?=
 =?utf-8?B?ZjlIakg1elhZMEdWUjlldXZtYTZsSElzOHJOb1B0Ky9TdW1zOWl4UVQxNnB1?=
 =?utf-8?B?RGVKMGFFTFgwL2grYTNiVUZMcFh4d3BLZW80MkdIVDJKcHZaTFdGT2g4L3Vj?=
 =?utf-8?B?SmI0NHNGaURlckRtL1U5NHBMRmd0eVRCYml3S3liY1U4OHNyK3JDQW9tTHRw?=
 =?utf-8?B?aW1FL2lvcVE1RkdLVEVyU0plcmJOSXVFVXJEbDNsS1g4SksyOUNGaGlVNDdy?=
 =?utf-8?B?UmtrR0pJUzltS25DYTh4VmY2Z2t5YkIvaENabkh6VkJtUGtnTGs0Und4S0Jt?=
 =?utf-8?B?K3Axb3dKbVU5ZVN6RHVTS0pTanlybVMvS0NQNWhnVXcwWnAzN1VqZXdwNHB3?=
 =?utf-8?B?dFdxalM2bzlOdXJmY2VMU1JSNFJIeHYzQkE3TWY3bERTbGs0a2tVODJhVzRo?=
 =?utf-8?B?STdFalZNRVFPekR5dTRndkx0eE1aU3dlNDUxUmxRUFY1YUV3T0tCTkhDdy83?=
 =?utf-8?B?MnZKWHByUFl0cTY2YXEvNzR6ZFhuc0phY3JtMGo4Nys5K29XNGo3S3hTaGs4?=
 =?utf-8?B?QW5sV0w1ZzU4OFVXZU1xcHpCQ2NxMkdJbWZQOVhHMGxTZ1FDSFVxbHduOFk5?=
 =?utf-8?B?YUltRCtnbm1Hc1FlRm5BY0pORTJiTEFIUUh3OURQODIvQmZMQ2lpOHVmbWdt?=
 =?utf-8?B?amNrM1dJbUsrTElJbnlVbmpYcWdYNWlIdUhvMGxKSTVLQzRmQ25HbkNidGZB?=
 =?utf-8?B?RWZrMGpKa3FZTUJGU0E0VU1DK2NwWGdYZjJhZlovN0RpK3ZsVUl5TDJHSk9S?=
 =?utf-8?B?VjVrT24zU0E0NTZlZ1YxSTFuL3UwcUhkWjJ3OHl3a3BSbVFDbXZQM1BMMlFO?=
 =?utf-8?B?TmErOW5oeFdQR2tURHVUcE1WakRJQzNLUUlJUnhNL1IxUC9tQVpSbm5GYVFW?=
 =?utf-8?B?K2JtMWRIbW9sY2NpbjE2cGpBZTg4N3l1aEZPVmErR2o5TDMvU0FzQ0JZZGdh?=
 =?utf-8?B?YWtuMTZ6N2RQelV0ay9xQVRVTFJIVG1TOEZTc3gxb3B1Rk10WEhZQkFSeXVl?=
 =?utf-8?B?Z1RQS1FjMFlIVDdldm1lYysxRmFrQVFoNEY3WElWWmFjdW5ZUkdHS3NZU3dL?=
 =?utf-8?B?dEtXQkpIRkRKSzVYdFczdG94VVoxamVIVXkwbjZBTnJWT3E2MDVZb3NGam5u?=
 =?utf-8?B?Z3BaM3J1aTRtSDk3U1VJc04rWm8vc1NmVHR1VStGNHJ2d0xwa010SE9ueUxh?=
 =?utf-8?Q?6hL0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(7142099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVcrK1docTJjV2pCeDdrdGJpeXR5SjRlSU9ZYjgvTXBNRmFZbzJPRkxobUFC?=
 =?utf-8?B?WFc4QjArRytRU3BGem45VTZ4eWxFcEliTXg3VkhOcElmTFc3R1RxM0p3ZHRm?=
 =?utf-8?B?dmc1NTYyN2toRUZWS2MwUUNtZzdvOWtaOUZ4L1Z6S0pBeHhGQ2FUTkRxN29o?=
 =?utf-8?B?L0s1VDhsQjlERzMzWkgzVk1sMTBKemRQcnNjU3FqWU5QcUZheTZ4YlorS0ZM?=
 =?utf-8?B?R3JiOWJYMXVwdEprc1c0czM3dzNCdUhpQ3lHN1YrMGVYZEh4UlpBeVllcnJi?=
 =?utf-8?B?QkpZYXBaNjhCRm53aHd0enNuUjRoaUhPMXhjUHhhc3lvcWRFNmpiWS9IRm1N?=
 =?utf-8?B?OWt3akxFL3lnc2lJYWxLMzFUbmhhRGdiZTZEYVBqdVdFZmdxR2FmaEZDeVdx?=
 =?utf-8?B?d0NCYUMrWW9VUG9WQW9iMmNxK3NBcExrSGVxM1FtaGVFU0s2eERIMjR0dGRO?=
 =?utf-8?B?RTBOd1l4cDNiR3J0VGVJYjhiWHpPVzVvRHhWNFZCQXhMcEV2VElrMG0yZzFy?=
 =?utf-8?B?R3lCcnh0VjQyYnc0T2tKR0gyRURDQ0wrMU93OWVWbnNXcUNJN0t4N2cwREx1?=
 =?utf-8?B?R3hEUjVDR2M0cWdZMnMwOVhGMU5ENk1BMUF6cHp3SjI2ay84MVMrQ25CR0k3?=
 =?utf-8?B?Qy9ZenYzRVVja3VnUENBcWdWRURyQlpiYXRBbW84UzByTUhMUlBHVE41eTZq?=
 =?utf-8?B?MFVFWml4OS9tWGdlQjh5L1JlRW5FS0Uyc0xwaHNiSHYxSHBQcDRsdXZNN0dS?=
 =?utf-8?B?aDQ2SVFuRldTa3ZiQ3RBeFkyejNqeWNHMWFxWGF6SVhCK25BRXFnQlRYbU0z?=
 =?utf-8?B?TTUwQVRsL3JpdzVUbWg3WTBmYTlqWXNKaldsb1MyQWJPNFN0YklTWk1NYXZz?=
 =?utf-8?B?Vlk4OEFIeVBSa0w0ZGFhNXZlclhYRmQ1bUZpbnRmS0FVZGZwb2QwSDN5cnE5?=
 =?utf-8?B?VmhwVnNWV0xEQ2pUOW1vMVVVK085Qzd0ZTllellaVjd3RGFMcENFOVVqUi94?=
 =?utf-8?B?aWV5aFJaSy9HVkcxb095TWkveUJmUWw0djhqMGxoL2lqa0xwUzZBYzNZeE1a?=
 =?utf-8?B?NmRHWlNpMVpxOUtVNDRnOVNvMks4bXhtRFBzYUlZbU04ZUpzNDFRL2lNaHQ5?=
 =?utf-8?B?cGtncStXMXdCWE0zd1JXR0hmdmtUMjZ0eGlMcEs5RldRQnZ6WGhPY2V0ZU5B?=
 =?utf-8?B?NHc1WFZhVDdMSVhPR29vTXBiandCcW5kL1d4VS9jZFRwRi9nVHRkRnJpeUQw?=
 =?utf-8?B?ZHJiU3hpYzg5eStZaUFkVFJWRE5sbDRGMjdiMHNxbmpTMnJqbE5vZHhJbktQ?=
 =?utf-8?B?QnJhUGh6S2pjRk9aQTQyZ0JoU1ZCTzlsSU12anNzWExEZTh0aW5YSlB1TDlG?=
 =?utf-8?B?dERSU2JBL1k4QXFBZ2ZJWGtOZzN6WEJDVGFZcDkwRWs2alJ0aVhpeUNJNVZS?=
 =?utf-8?B?eXk0VG5BbW01LzNxdmdXb2hhWjlmL1h4emY5OVhBQUxFQXp5M0dabm0wejRt?=
 =?utf-8?B?UEYwNmhQVHhTZFJ2ZFVXNzZtMmgxMlQ1WHN6cWd3OVgzak1mdmVqZ21zR1l0?=
 =?utf-8?B?WFFkYkFaV2VCc2FuRjR1bTNVcERTeUJLOEJ5OTViM3pkQjRFZyt1M2hmeVdN?=
 =?utf-8?B?R2RaVjFkUTJtd2dMMk5yRWVHMGdJUTVweXQ5d25BRGNDTm1XM3R2TVFLalIr?=
 =?utf-8?B?c3AxWndlUXVQSmE2NmdjUjh4Uk1MRThvbDNVUUs0bUJicmFyaGlDZXFCRXVj?=
 =?utf-8?B?UDNLeVkyOVI1WmNkdTlVbi9PamY0VmVVQlloSFFrNnFmZ1RVSEdLcXVvV1Nk?=
 =?utf-8?B?cTRiQVNlZ09sU1JJbDhTT2hyLzZoOHlDNmhqK3lpeUlyZWpmeUdaQWI5N1pG?=
 =?utf-8?B?TzlhSXM4anpnZ3ZzU1Y4TjFVb2d0MGEyc2NqcGQ3cXNGZWFmT25rbjcrTURG?=
 =?utf-8?B?MGxRWVJaTnRvc0doY2hzYUh4ZFE3UVpYbXh1elZUa0lFNk5Uam94SjlnVm1P?=
 =?utf-8?B?NEg0MkgzYkFzTmZLYjYxek02Z2ZVelJSWnJGRHJnZllOSWRrWnpCQmg0U3Zv?=
 =?utf-8?B?UnhVcXM3dmFaM3EzYlVPeFc4Y0xaRWJCWmdSQmk4VkJnWHJURTFKNkI1SlNO?=
 =?utf-8?B?M3hZMmprNW85dk42dlVOVThWRDNNb0pyUmJ1Rjg2M0MxNE9Jb1dIQ2U1SFU1?=
 =?utf-8?B?SmJLSDR3c2lXRmk3QkJyOGI1alhiYnZsK1dTTTVabU9BZHRRM2JBYUNBaFhJ?=
 =?utf-8?B?RFQwT3FRUVFzU1pPSGUvYUpXdEtWYXNmS05OQ0xBSlpjS3h3WE1PbVYyczA4?=
 =?utf-8?B?Q052b29iRks4bUY0QVprdFNzK05YeW5tL0NxeE5iR3FpMUtuaUxKZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4e81416-5931-4d03-873f-08de62bb996c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 00:31:41.0784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oiP8eYYNZAgQ0ZqyJK9awQI/dT3BwPyKDp5hZIK1+SgZ/lO68+Bd2YcOgQKyoQ9WwAzUyCzElQfGnDXBStBaAVYusT6tBcJVY64PcvIu2qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770078707; x=1801614707;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EME/W5c4rDFCtVgw+ewf+j103OTdgcebiXQVSxTW8QU=;
 b=ckfJ2+JcDBkDCD1zuP4NQHac+JIyqtI/jejhAOv/c+Ip9iUI/d6K/6p7
 jsyjzJq6XO8eGENY63rPOiPSs8enp15Wug2Yy47+sVgZLDodHOHg2b7m8
 FUU6jBVLCVWDhUyTJT8q2sZrDFnKjQyGzwf4CDL2oyajWFR8naC4uJcRX
 hfObpRWXL64gklQzDC0Wds9MNOBSMxjedbeJJaDA+01i/90TNMe8U7AmP
 bP0qna53c96uL9jX5oht6ecj3qcZUXs/Zj2aWWwTQpwc4W+JXffK8EoXu
 ZfnnUe8uiHaPp+wssuJMYFdmhsD2vMInOhwqJzYGkPbbpNPUtqh8aUQ1M
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ckfJ2+Jc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next] ice: fix NULL pointer
 dereference when changing RX queue length
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: A5A8AD3028
X-Rspamd-Action: no action



On 2/2/2026 8:17 AM, Kohei Enju wrote:
> When changing RX queue length via 'ethtool -G $DEV rx $NUM', a WARNING
> indicates the driver missed unregistering xdp_rxq_info [1], and then
> NULL pointer dereference panics the kernel. [2]
> 
> The following sequence in ice_set_ringparam() triggers this bug.
> 1. Allocate new rx_rings
> 2. rx_rings[i] = *vsi->rx_rings[i];
> 3. ice_down() unregisters vsi->rx_rings[i]->xdp_rxq
> 4. ice_up() registers rx_ring[i]->xdp_rxq
>     a. __xdp_rxq_info_reg() sees the copied state REG_STATE_REGISTERED
>        and calls xdp_rxq_info_unreg() to fix it [1]
>     b. xdp_unreg_mem_model() looks up the stale mem.id in rhashtable,
>        which was already removed in step 3, causing NULL dereference [2]
> 
> The root cause is that struct copying includes xdp_rxq_info which
> contains registration state that should not be duplicated.
> 
> Fix by clearing xdp_rxq_info after copying the ring so it starts with
> REG_STATE_NEW instead of the stale REG_STATE_REGISTERED.
> 
> [1]
>   Missing unregister, handled but fix driver
>   WARNING: net/core/xdp.c:182 at __xdp_rxq_info_reg+0x89/0x150, CPU#4: ethtool/1105
>   [...]
>   RIP: 0010:__xdp_rxq_info_reg+0x89/0x150
>   [...]
>   Call Trace:
>    <TASK>
>    ice_queue_mem_alloc+0x159/0x240
>    ice_vsi_cfg_rxq+0xc3/0x160
>    ice_vsi_cfg_rxqs+0x4f/0x70
>    ice_up+0xd/0x20
>    ice_set_ringparam+0x34f/0x4e0
> 
> [2]
>   BUG: kernel NULL pointer dereference, address: 0000000000000008
>   [...]
>   RIP: 0010:xdp_unreg_mem_model+0x113/0x340
>   [...]
>   Call Trace:
>    <TASK>
>    __xdp_rxq_info_reg+0xfd/0x150
>    ice_queue_mem_alloc+0x159/0x240
>    ice_vsi_cfg_rxq+0xc3/0x160
>    ice_vsi_cfg_rxqs+0x4f/0x70
>    ice_up+0xd/0x20
>    ice_set_ringparam+0x34f/0x4e0
> 
> Fixes: 111a8e2be488 ("ice: implement Rx queue management ops")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
> I see the Fixes: commit exists in only tnguy/next-queue.git, so I'm
> sending this patch to iwl-next, not iwl-net.
> 
> Also IIUC dev-queue in tnguy/next-queue.git is rebased continuously, so
> the commit hash will be stale soon, and I don't know how to handle this.
> 

Yea. Including the full subject line should be sufficient for Tony to 
find this.

> I'd appreciate it if iwl-folks know the way to handle it. Thanks!

Ideally we can squash this in with the implementation patches and 
include your Co-developed-by and Signed-off-by tags if you would agree 
to that?
