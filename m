Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ODkNAT+mGlCOwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 01:36:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A47E716B92E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 01:36:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BCFA84176;
	Sat, 21 Feb 2026 00:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fMLG_7kw7GGa; Sat, 21 Feb 2026 00:36:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72C0884192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771634177;
	bh=dHxXCQDmrZEmZh/5RIdPgHXWRfIMSRZFuNlNdLODWWc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V7dCfp3/GF5D+ehLg9IC+ypji2m/CKXc085tNHO851csImF51uEfSXGh4PdqAH5pp
	 mPOAdeI4ALRPaT5d9ZDcfS7RPFsDY0bqY46y13ST0q4TBaI06XCQisjU0BaCP1Z8UC
	 /rh9rB5azo1FGi3IxdxzE1e7rpGZ3QnJfdb/dhQ+mmSzjhfL4hQjalHK4H/5FfSFT5
	 er2JYC7ubqs6cJQOi9M6d5gWyMDRSNXPA1IXuy7zbTUqpSWc+Yoh7brBbBn3Hi6jv3
	 Q/MLIFnvOPsTqYvl1lrJyc/JnhlY8mCXlAtiZUR3hJmwNKIyl242fvNkAyxvEVx0zK
	 gvRcUL2pHLQxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72C0884192;
	Sat, 21 Feb 2026 00:36:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E76172DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 00:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B07061099
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 00:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hSRJPhMoqUGT for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Feb 2026 00:36:07 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D146C61092
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D146C61092
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D146C61092
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 00:35:46 +0000 (UTC)
X-CSE-ConnectionGUID: 1pOuRifITaiAeV8Zk/Yt/w==
X-CSE-MsgGUID: vMztUO2mQceKTqs0E4BRDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="90313266"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="90313266"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 16:35:45 -0800
X-CSE-ConnectionGUID: I+9x6Pk/QXOulwySnkEXMA==
X-CSE-MsgGUID: gzui7MPnSoSMZwmkn/rPdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="214232935"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 16:35:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 16:35:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 16:35:44 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 16:35:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kZGW8IN1K4RVqU3JzR2wZL2HVOnrV6yIukAmrZVuXf5CjyMJig6K2G3JmhULrcyhs17EIfmkIamD9IHu6njmoVCLt3qqVSXozj5evAyNdvJvhZZL0ZofEpZmZ7HiGnfl8LAUhYjISTao0LK6pjPvOFHqRg4HmIV4WFDe094XEKdr3DCVIJo13ocR9Owiyus2umsafumKjNrP9o9ceElGbv+WwGUFSF+st2jFn2NlXlKO7OxQiJR/sRw7DHDtpyf++iVKyeAACXONHsl7++NyU31JYiH4RlnXnMQYaV4deyWSzkYxQ/aFwh1Neyf9G37T8XbUUuZEo/xg4h8rEcsdVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHxXCQDmrZEmZh/5RIdPgHXWRfIMSRZFuNlNdLODWWc=;
 b=WN15OrJiD5nQwxqtx81Sc15FdCnA3JWmav6a8u4W811WT1qgt1fzVMrL4eYXkNt7R11SYXZnnWnfYX+3N/v+6HLTjDK4jAkfrLVHScwwh4O/KAxnEH6+P4oe2tEWBjqeQizCSHyI90qDwuK/OK5YdybZz2Fx6gvD/FlfXCAonR1/p9iF7PywEEBpSa6KH+w6Uc3HMPlb7wZZj762TNLCOMwdFj4xzPHgsNePuPAN2ddcTnz6dXHRRHSa1SvagQcq5R9KVoathv7M9Fi51BaL31KXjTOqaueTafyYgGfhQEfVYcAGvN1Ghfg2pJEmZxICl5Kyej4JZNXXfpZt4L3Z9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by CH3PR11MB7179.namprd11.prod.outlook.com (2603:10b6:610:142::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Sat, 21 Feb
 2026 00:35:37 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9632.015; Sat, 21 Feb 2026
 00:35:36 +0000
Message-ID: <b57460ab-d523-4e2b-ada3-4d338dea6701@intel.com>
Date: Fri, 20 Feb 2026 16:35:34 -0800
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <kohei@enjuk.jp>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alice Michael
 <alice.michael@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>
References: <20260220184031.60113-1-kohei@enjuk.jp>
 <IA3PR11MB89864DB144A3D8990E6512D5E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <IA3PR11MB89864DB144A3D8990E6512D5E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0264.namprd03.prod.outlook.com
 (2603:10b6:303:b4::29) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|CH3PR11MB7179:EE_
X-MS-Office365-Filtering-Correlation-Id: f3f4dd4b-a6f6-4b08-4849-08de70e1219b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RUphRld0dGR0TzJyRnluL2E0VWtRUFQ5QTMzYnZaNkpUMGdaVXZSUXg3NkRp?=
 =?utf-8?B?UzIwMTlrUnJlMng3R2h4bGJKVlM1R3dNWHY1QkdIbk9VYmhjZ2drcHRidmNm?=
 =?utf-8?B?MldqRGZ2WkhjSm1wSE9mMnJycW96MDl1UnNJTUZ5NzMrR2JYQ0tMNGQrUDI0?=
 =?utf-8?B?WkJvQmRPTXF0OFpqQm9vdFduV0RKZFR4SHdLMFFoNEUyUUxEMWRTM3RmaUsr?=
 =?utf-8?B?ZzkrT3ozOERud0pCekkrQU5Rck53SmV3aE92OUwyWGxIR0E1M1UraGxFcUV5?=
 =?utf-8?B?ZTRSMng4T3V2TDlVL3pvRkhod01lTHBrYWY2TkU3Ry9yOFVYVzBacDlDY1pE?=
 =?utf-8?B?ZW5GMDhmcE9nN3BUam13bGoyc3JqRm43ZUNpQm5DM1lxdGJ6YVBvTDNEL0lX?=
 =?utf-8?B?S3piYzNVTkJrQmhJSDgvemtRVk5hVVVianQxSDg3VDVMY3BFZzZ6WjJveno5?=
 =?utf-8?B?NWVxOFBMdnBjSnJJMDdLOXBjeElUMXErSVdDeE4ySkR3OC8wRkVVNm1zbHBJ?=
 =?utf-8?B?Wm8rekRUVFAzYWZyUno0dTdrNzB4TjIwTE1DT3FSSUJ6YU51ZXpDWE1IamtE?=
 =?utf-8?B?c0RDazdmczRQNnR2NE1NWnVnOUU2TzBsb0Radzc5c09vaXFxZWpyNnBzWTJo?=
 =?utf-8?B?bUtEdTlqNERGUHMvcytoaWd3Y1VQOFNRbTEvQVVIVDZDREdoT0pXWDBxODU5?=
 =?utf-8?B?bEszV3pXS0VxMzZMT1RVMTVyZ2lqOXUvZ0ducm44UzI2VHBzUW9Od2pXcXFp?=
 =?utf-8?B?Wi9vVGdRaG1JNHprVkp6Q01mcVR2emZsNG1pYWJweEdkT2lTUGJnejIvRlh6?=
 =?utf-8?B?aHUzdDcxRXZWSDJXSXFaQ3RvaFM0bVhBdmx2dEdla0tUOEpmMElvb0JSbXEw?=
 =?utf-8?B?ZXVZQTlhdnYvTjF2RzhubWpucWpTbExoeUxacVNMNklITXNHRlU5STk1ejJZ?=
 =?utf-8?B?YmpjWUoxRHl4eDhkVlhQS2l1SGtoOGtwMnllMlU5cFdxWFhISFliVSs2a2ds?=
 =?utf-8?B?R0diLzVVYlhuNzFMRWUyT3BzeW1JN2plaEZWM0VEQWRFU3pDcXRDVTUxNFNO?=
 =?utf-8?B?Zm90UWw0Vkd4V3p6SHBPaXVhemJQWlRrY000VzlTbjNwSXlHVW1lS0VOTUI0?=
 =?utf-8?B?d2pzbEluc1VNYmdYREl3TjdLTU4rd0RIYlgvUTN3NHpCZHVzeitsN2MzeWlB?=
 =?utf-8?B?Q0FWRzg3N2NReTRONUxXWkdsRFBwTGF3WjZGOWZZdUdnMFFCRWh5UlUvbjd6?=
 =?utf-8?B?Vk5wTGsxSFczZlYwOEQwK0VoMUpYUWtQbGRBWVptanBMWWhWR2UvK01KaHFD?=
 =?utf-8?B?UTZQZTAvV3BjZEhlZU9qcVljd0lhNFVnVWE0V1NvejhjRVBGQkFQRFRwS1VE?=
 =?utf-8?B?cS9aTm82emoyTEZucFI2QlgrV1Z6a1o0Z01sc3pobDB2OERIOUFFcWVIa1Jq?=
 =?utf-8?B?QmpiakxpY0RZZ3Q3a1E4aE5jeE5OS0JhZVlGZUk5Mzl3M1l0dEZYbFlsalpR?=
 =?utf-8?B?dTd5YU8ydmhuN1dNNnhabklsdUNYRkorV3ZxREh0M2dIN2swUjFMYjZEUU5Q?=
 =?utf-8?B?M1lDTkFRWVU4RVJ6RElyZTF2bVlnVWQ0VHhQZmZCRGdpUk1TTmNSQk8zNGVw?=
 =?utf-8?B?aENZT3NJMzVXeVd4VGhDYm9GaXIvSUJuOEc4RVpGYXRkMndGcGtia1BrNDE1?=
 =?utf-8?B?SHdHeEFlMjFZQXZwSDdWcUw0TFVwb2pzVVZvS3ZSMTBwa0gxQ3JuVzFBVVdm?=
 =?utf-8?B?cSs4TmRVdm03SFpPWnBleDdDaW5Ld3FHTXlCaTE1bDJIMThjclZ0RUVVUFAv?=
 =?utf-8?B?YksraDAxSUZnUVpweGNvUXNyWUZXU2hCdTJTM1hEblRUNTc1WS83THhtRlds?=
 =?utf-8?B?VzJxRmt5ekV4SHhyZWlwSXordEkxSFUrOGF3U21EZXVrdnJ0OHRVQzM2SVU1?=
 =?utf-8?B?OGdqTHdHMXNWeWVITGZBYit1Q0p3MG1rRW1Ed0xjRlVZWlY2QVY2dTNXbCtF?=
 =?utf-8?B?U1IxKzNSUmJ0WS9JaE1PNFJpYmZucE5nK2tKK1B2cHpJeFVySUdnOGhnQ2s3?=
 =?utf-8?B?RW91UGJLSWpFR25XdjBFczdMOWx3RG45eWliTlJsYVQwaUMwYW9GSitjcVpi?=
 =?utf-8?Q?qkHA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3AxYmhQeXJjTmQ3dTduWjFrVXZlbnFtTkMyQWlVcUNrSWUyeW41SVFSbGE4?=
 =?utf-8?B?aE13dFZiQklPZTRua3RjcGJqY3V5dE03ZHRXb0d6TkdBZ1NGTHpDOVJ6UjJy?=
 =?utf-8?B?Ylc0bnZWMTF2MmdUWDVPVEF2a1A0TUNPWFc0MksybDI4TkJFTFNhc0k4NUV0?=
 =?utf-8?B?ellsUkQrSHBvaUVVQ29QakhqTWtBNElkOWlzUzBYVGRUayt3LzZ2RGdIRzho?=
 =?utf-8?B?NGpGVTZIWmRwMWRIT3FYTkhNMEtNNW9ISjZaTUlURUhTOHBNbU5RU2p6bkti?=
 =?utf-8?B?ZU9zV1p6RWNLczdIa2lsbWZaODFCelpwejFZdGg5STUwSTV2M0NCNUpLancy?=
 =?utf-8?B?TDFMQ3k5a2JQNmJuc0ppSEZzUE9pd3h3L0V1ZlpWM0pMa1IxU1VjdDZoTlpn?=
 =?utf-8?B?Z3gzOThlRFIwT0txbG54cXBIWmxVaWx0T1BUbDYxTlJQWWV2WW44Q2JNNWFt?=
 =?utf-8?B?UlF5b3QzU0hoMDVBZGZvS0VRcnNrODlqVVd6R2JDUlNUaDgzS3dOb3lvQkMz?=
 =?utf-8?B?eE1sdmFyUmdzNktMUy85UmZmQmgyWTNNQ2puWDhNMjEzZnhpMDhQSmUxZVZQ?=
 =?utf-8?B?MU5uUFFhZ1NiRVdvVEUrV0RQL2Q5OW9Qd0ZTYXJldVVUQ2tpZ3dNZ1VJTlFw?=
 =?utf-8?B?RklLNG43UDhWV0owZHg1b0RNc0Z4OFhJUW1WQWpYV0xtQ05FV1pGM29uak1w?=
 =?utf-8?B?MGJNVXF2Zml2TUtDOE8xTUtCeFA1MHBnNUZrZWZNYVZISlBGbkpHYlB1VEV4?=
 =?utf-8?B?M25vYTgwRy9BQlV5b0QrN2RnZXl5K25EelNMOWdqcUk1NFgvdy9sTGJJUkZ2?=
 =?utf-8?B?YjhJMVlNaHAvU3NJeEdOd3NuWXpNRTRRdlFsaDJOaCtUY0I1VWRVLzlvQTBU?=
 =?utf-8?B?Qm02bFFRTFRhdXVUSjJKNlFvbDF0aVlRMk5Ja0ZOR0pwOURNb1JPejJMdGxD?=
 =?utf-8?B?RUNvcHBQZFZIREl3ZjIrZzZoQk1TbG1iWFFOc0Riek1UMHE2MVIzUjllbjB5?=
 =?utf-8?B?MlJ1b05rVWJKL1Q5MGV0cmViSEplQWtEYnZiUjZMMmlwaHkrZEpaTitKTXZG?=
 =?utf-8?B?QTJxaHNlRktmNW1zRVhoNXZyeHh2WVI1a3RZUmVzTXN3MXVRcE03UDUyNE1B?=
 =?utf-8?B?NmtSRVRvTmRvNGxyOTFueDh6VVNCcjlXOE9yK1Q1VkJLWWdIWGNSTzVjQWVY?=
 =?utf-8?B?ajBMZjQwcnNKTWlPeVg1bXZLM3FRSGZUeVNHTCtYMG1xZm9tZS80ZHhSbEJJ?=
 =?utf-8?B?bUR2b0lQaThzU3hTWFFhbWsxRksyYjgvVWlqRWtkOXUzSWsvWmQ1d2pXN0Zi?=
 =?utf-8?B?RExoZ2RuZG9NcU1QMGZzQWxzN3V0MlZmVVdIdDNRcE9hLzJJYnhjK01SZEph?=
 =?utf-8?B?cUlvM1ljVWpSUmpPOVlSVjVkY250ZzJ3YWQ1U25TZEJQN0Q3b1NuUzhsc21q?=
 =?utf-8?B?RlFsVFdsN1Q1WHJnYUFSemZYM3hhNnk4OGJXYWZwWWVyUDd2T1RjczQ1bEFL?=
 =?utf-8?B?WWpFKzJ5Y3dOZnlSQjNhSC9NU3pCVGRURTJhdTJPRkdrSytLM3ZnbDQrWmJQ?=
 =?utf-8?B?K1RMbnFOWUN5Uzk4NlVnV0o5OEUxbndDNGE4QzZQT0NBem1kZm1Wdlo2RXZN?=
 =?utf-8?B?bUthU1Z0UVhGVTVaZjA2dXFGTi9TOWMwUjREWDRBMHpYcnAyRXJ5anhWUUJl?=
 =?utf-8?B?RXNwMzVoamVOYVVnc21IMFNraE02MDRZeTF0dDh3MEgzK2pkay9BeW5pbWlG?=
 =?utf-8?B?cDlmejIrVStaRjFQZEN6a0FFMG50QjVqMzErRmlJUkRkMXNXdE9zM1pNS1FK?=
 =?utf-8?B?K1AwdGtZcUhCL1NyUkVlbktpckN6bXRIampDU2g4ZlFMVENNcGVVVE1JZG12?=
 =?utf-8?B?dGdDeTZRbFlSd1RnVmViVERHdnlQaTYzQnJkQjRZRCszV1RyazhyeERVQnNJ?=
 =?utf-8?B?Y2Vyano5Z0E1SFh2NkEwcUJRQ1p1NXVYQ0hMOWROa1F1TWczVVVMZ2s2cVJl?=
 =?utf-8?B?YW9lczBKTTV0NzNFT1QxT2paU29LclJQQTBzNFdkMGxNS09zUlZWMStBYzlD?=
 =?utf-8?B?eDhFT0pOalpiRkVkaDNYZWV1cGFDVHhBWE9KUDRwVTZhTTlJVjZWZkdhdHJM?=
 =?utf-8?B?bjcyTmhYN2F6SVpoRjJYY2tjN2VlRVYrUGNhZGNCakhEMVdmeWcvdDUrWFNY?=
 =?utf-8?B?cEtVKzRJM1pzTHZFSEQyNjJGdzBKN3F5SFNNZ21ITkIvSW9xVnZUY2w0bzBp?=
 =?utf-8?B?c3BnWm1tVUpUMXEvS0pjV1N5R2N1Tmk4TTVqRm5MMktjVzhMaHYxSThaZW5T?=
 =?utf-8?B?RVhCaXFSb3lpUWlHZHNxQUpyRnV0N2wzdkNMNkFaTDBZYmJGaGViUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f4dd4b-a6f6-4b08-4849-08de70e1219b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2026 00:35:36.8402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ooz7hqT5aUcpKDKKD9hhVcmOq05/C3EQaqA0Ss/aJzVnPcF1rp30S+sSLeFp8TseK5NH+PcGRCXKhJQFUR8T822+Me+wKN2/LdreOAKRAiw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7179
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771634167; x=1803170167;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yHke82Yk1a+VeIgtRu2FLr6KkxpXsCyByAbKGSp6Jlw=;
 b=bm7Na4xzwfofh9gK/g4260jv01b4WVO/lAw1BH921sxWTmaBlYimZ8cj
 Nt5DhhtYEpxv1Rm7DNdt/GSZpXgQ0tc6iin++hLnI6CHsV3h6Ywr5b/tE
 s7jfybvn+0kbS/sKNZ5AQRKrfzynX/n1vlc2CBOyI95DFoc4HWmeXDKTs
 ue/0QDlpwuSZCVaEglsZ0wQwQt9WR7/CXNG4exU7doEDRoZQ2PMEei3o1
 ReEqr4UiQrRLN4lonrlC2a6Sx60oP3yjReZ0M0UQljnVvBlxIIPpMQpf8
 Wdok/AUKS35FklB/WbkAyUa9QudNlAd5ZP/hZj+pN7mvM2NSpftfoTroN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bm7Na4xz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL
 pointer deref in error path of ice_set_ringparam()
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[paul.greenwalt@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:alice.michael@intel.com,m:maciej.fijalkowski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[paul.greenwalt@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A47E716B92E
X-Rspamd-Action: no action



On 2/20/2026 12:04 PM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kohei Enju <kohei@enjuk.jp>
>> Sent: Friday, February 20, 2026 7:40 PM
>> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
>> Abeni <pabeni@redhat.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; Alice Michael
>> <alice.michael@intel.com>; Greenwalt, Paul <paul.greenwalt@intel.com>;
>> Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>> kohei.enju@gmail.com; Kohei Enju <kohei@enjuk.jp>
>> Subject: [PATCH v1 iwl-net] ice: fix potential NULL pointer deref in
>> error path of ice_set_ringparam()
>>
>> ice_set_ringparam nullifies tstamp_ring of temporary tx_rings, without
>> clearing ICE_TX_RING_FLAGS_TXTIME bit.
>> When ICE_TX_RING_FLAGS_TXTIME is set and the subsequent
>> ice_setup_tx_ring() call fails, a NULL pointer dereference could
>> happen in the unwinding sequence:
>>
>> ice_clean_tx_ring()
>> -> ice_is_txtime_cfg() == true (ICE_TX_RING_FLAGS_TXTIME is set)
>> -> ice_free_tx_tstamp_ring()
>>   -> ice_free_tstamp_ring()
>>     -> tstamp_ring->desc (NULL deref)
>>
>> Clear ICE_TX_RING_FLAGS_TXTIME bit to avoid the potential issue.
>>
>> Note that this potential issue is found by manual code review.
>> Compile test only since unfortunately I don't have E830 devices.
>>
>> Fixes: ccde82e90946 ("ice: add E830 Earliest TxTime First Offload
>> support")
> If it's a fix, shouldn't it go to net?
> 

Thank you for identifying this bug. However, clearing
ICE_TX_RING_FLAGS_TXTIME before ice_setup_tx_ring() will break TxTime
offload on the success path.

ice_setup_tx_ring() doesn't read this flag, but ice_up() (called later)
needs it set to reallocate the tstamp ring for the new ring size. Your
change would silently disable TxTime after any successful ring parameter
change.

The fix should clear the flag only in the error path:

if (err) {
	while (i--) {
		clear_bit(ICE_TX_RING_FLAGS_TXTIME, tx_rings[i].flags);
		ice_clean_tx_ring(&tx_rings[i]);
	}
	vfree(tx_rings);
	goto done;
}

Also, per Alex's comment, please target 'net'.

Thanks,
Paul

>> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> index 7f769a90dde1..5ed86648d0d6 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -3290,6 +3290,7 @@ ice_set_ringparam(struct net_device *netdev,
>> struct ethtool_ringparam *ring,
>>  		tx_rings[i].desc = NULL;
>>  		tx_rings[i].tx_buf = NULL;
>>  		tx_rings[i].tstamp_ring = NULL;
>> +		clear_bit(ICE_TX_RING_FLAGS_TXTIME, tx_rings[i].flags);
>>  		tx_rings[i].tx_tstamps = &pf->ptp.port.tx;
>>  		err = ice_setup_tx_ring(&tx_rings[i]);
> If ice_setup_tx_ring() internally reads ICE_TX_RING_FLAGS_TXTIME to decide whether to allocate the tstamp_ring, then clearing the bit first means ice_setup_tx_ring() skips TxTime setup even on success - leaving TxTime silently broken after ice_set_ringparam() completes normally. The crash is fixed on the error path, but I'm afraid a functional regression is introduced on the success path.
> Please correct me if I'm wrong.
> 
> Thank you
> Alex
> 
>>  		if (err) {
>> --
>> 2.51.0
> 

