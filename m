Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLlGJbjSd2mFlwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:46:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CE28D40A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 21:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DDE960E0C;
	Mon, 26 Jan 2026 20:46:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7IeapItRRuc; Mon, 26 Jan 2026 20:46:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E97F760E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769460401;
	bh=TZnOfkPieb44E6wimPD2RBVIJ1A5hhkU1uCGpl+RTtM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Iqmc7yAPbGCUeXxDSS9VDCErv3w0ePp8tgc1POoU43BuWic2BlJzAjl/Cu93INCVd
	 nZP0oVVyEkAOYbJkBvm8TtG7l9XEuHhn8i/VXZ4GrzVWwKSrmNLorNSF93UYrH/OCJ
	 U3yY3H9qcHv0w6BXCrGjvjP/MGoYhmaas7BIfmuvxdpCUYq8Zbzrd/GnwVQXWk7UwK
	 yeI+tiNUXpXJb0sPDkT3aaSG5NCLwKJOZayuFW8nO8Okcj8qXlYA6dg+n72qaa+Ax3
	 t83hiDChCfK15ChU1SA8XXbm7tHolqHP0SHi+36FtXfcqR7Bh24C2pELfSYyllQbdL
	 KFtrDFb6Z/lzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E97F760E00;
	Mon, 26 Jan 2026 20:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0215D2F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3E4E40A9D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:46:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3vi6uv68BAsM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 20:46:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E10940A90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E10940A90
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E10940A90
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 20:46:37 +0000 (UTC)
X-CSE-ConnectionGUID: D7TjK1pPSG6whA2y4HVnFA==
X-CSE-MsgGUID: AMNBOSo5R+yulhoeN/WrZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="58219398"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208";a="58219398"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:46:37 -0800
X-CSE-ConnectionGUID: EEbYtg4aRvCbgBX/fJG7ew==
X-CSE-MsgGUID: EHPVZxc/QBylWFllw9qZlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="206905515"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 12:46:37 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:46:36 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 12:46:36 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 12:46:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zB/7wC+HiIk2BUFHyhLGs2ZCgMb8jcVU68ti9ydA6cVzbgV4ZhoSTaUwdnIzclMaYgkav51Hpw3L7MVWIeZ1JKl5x/ovZPcutxHWQj/qgjlLHIEPkrzIa9tzcmwIgkc3a3ULX++jOiCAngWETNGvA3LrxWz5XXE86RM3SepzjTh2cNyqkNv+9ssHfvZmxWleNf3wBKiHg7YiYEO6P6AsxJHLbqKmoW+z6xDpq51oLJlBsjpX6YLJl/LI3XYOkOFA6HiazDG+kwuX4Eti18HVbyFU3hLQgLEZfxklqdo7aJ+5EQj4uuxVUtBi9lUC4Dv+Dm8nMQ3ldF8d/+iIDczyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZnOfkPieb44E6wimPD2RBVIJ1A5hhkU1uCGpl+RTtM=;
 b=c+m5Z6gvy34+Xo0arqnvWRfRjeksrY8FPRH2GT8X0aRGyT3nCDikFlTv24ITAmG3ga3O6ScbSFoe2FqHt6WQISl6dMh2Q61xrxWMbckiwcGDyGnZ/b888FSS6zxnjf20I5UveOrbrnIK1CKUAxCD2BN380/dS9Ug6wJ1pDvtp8krHXd1ZbCsH9ZKcRpv+IY1VG2juh14LZswPlLySzw8JGqADdP1c6aw0JjlAJxzeFpKX/juRBtHurkM7KJX2/qpwDNQt0McrPjlFOhoXzL/c29/pzwFdMf5sg7AefyNeHmzATLrhi5DXcRPqnlpEVytUI35NCzYR6STL1od0laDsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB7065.namprd11.prod.outlook.com (2603:10b6:806:298::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Mon, 26 Jan
 2026 20:46:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 20:46:32 +0000
Message-ID: <72764a6e-602a-42ed-88c9-e4259b6078f3@intel.com>
Date: Mon, 26 Jan 2026 12:46:29 -0800
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Brian Vazquez <brianvv@google.com>
CC: Brian Vazquez <brianvv.kernel@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, David Decotigny <decot@google.com>, Li Li
 <boolli@google.com>, Anjali Singhai <anjali.singhai@intel.com>, "Sridhar
 Samudrala" <sridhar.samudrala@intel.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <emil.s.tantilov@intel.com>, Brett Creeley
 <brett.creeley@amd.com>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260126144624.2319784-1-brianvv@google.com>
 <37e1a648-609b-4d5e-9176-fbbacc7e9e07@lunn.ch>
 <CAMzD94Qt9-5G-8MHcmHLgYEyjRUoPB+SruzZXafxSTkNV8criA@mail.gmail.com>
 <b18b4b38-b3e7-485f-91f8-e3a74ff90572@lunn.ch>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <b18b4b38-b3e7-485f-91f8-e3a74ff90572@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:74::43) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB7065:EE_
X-MS-Office365-Filtering-Correlation-Id: ec2cfef2-6d62-44c4-dcf7-08de5d1bfcaf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZUxEbDc1TFF0VXA5bTNTNXpPbmI2d1R4MVJjcks4b2pZNXR0SjdlbXg5cmgw?=
 =?utf-8?B?QU1mb3N0T2JOdmJ5WXpXajRpNit6c2hiODJKMk9pM1Z6c1BpSThNa1JWS0I1?=
 =?utf-8?B?bEphNmNwcytKNjhWc3Fuck5jcERxdC9idnMzZUlqUnlTempETGtCSlV5UmU4?=
 =?utf-8?B?ZkJuUlBVZEIzZWtuRnVGUEdrVGJiVTRteVF5anhQTnlMNjUxTU0vbFI3RDB5?=
 =?utf-8?B?enExL295UnZKdnRpKzBFRWNIVGpkWGwzQ0Y5TGZhSnhXTnNFeXZibnFUampG?=
 =?utf-8?B?RGZjTlU4emlZa0R1QzdGVGc3bnEvV2pvTE9DcHpWMWZPNnRaV1E3cjBHbk5S?=
 =?utf-8?B?U2s3bitnNWRjcmJIT2xQTHpBbE0ySS9SeThGWjdHanRucFZqV05Pc3JXSXBF?=
 =?utf-8?B?QS9WUlk2c2xYOVFzM0piNmhpRkU4cVU3NUhsVXIvTWEwUng3ZThXVDhTK0FN?=
 =?utf-8?B?eDNEQ2xobHZyM1R3TVZjK0VzYlN2cHB4dEVlWVRuVDdKM3QrRGxTbFNNUEQ0?=
 =?utf-8?B?L2grRGNzcFVxQ3cyZWdOaVRHZ09aUUlKZFFmM2RMK0QxQWZFdjVqOG5Nbi9X?=
 =?utf-8?B?dmU5SW52dTdDT3c5SUxNK3VhUFVpcUlCaGdkOFJ0R0RCRXJwUTZpcHNWRmsy?=
 =?utf-8?B?aXVUcnRYc0lrWDMxNjJuVHJrTlRpUHdnaWlhKzlGR210NU9tenU2VG9aSVNN?=
 =?utf-8?B?cVlXTXR3cmQ2ZFNveE11dGRGSUJWNFhQVnl4QWFEbkNsR1YyWU0wSXJEbFlI?=
 =?utf-8?B?Mk1KL0hkWGdRcWFIM05ZNkQxTzBYSmNIZno3MDM5VnpPQjdRTy9XR1IraTNG?=
 =?utf-8?B?eWxIaGN1dDhtK0dyNXJ2OWgzR1JoNGlQNHdEYXR1TE5lSTlJM1FaUTJ5d1Bq?=
 =?utf-8?B?THdtSXZMeTZPamRid256aDBSWTZ5aWxBWk1pSU5PN0c1VWsxSWsyN2pEVmo4?=
 =?utf-8?B?OWVIbkZBYXNwd3BSdnVUSUl4TkRXQVBnNWQyT20ranJrUEd3RWZSUisxRDMw?=
 =?utf-8?B?dUdFdjhEUU1KNXBaSUwxZisxbkw4dWp2M1J6K0gya0t1ampPU2hhSXZXN21C?=
 =?utf-8?B?SS9JeUlRWnhpcGp6Rnc3b2F2NUNvNUpYN2dlWXhCZ3NvVUlJNCtQS2JxOVNx?=
 =?utf-8?B?NzBDbXBoa1dGdVMyanVIRG1sdlVuOUtIUUlSSkx2NGhGYjR1bENBdmFMZ2lK?=
 =?utf-8?B?eEgrdWMrSnVlSUNheG1oejFjQk9PRVJIdVlVVDdmUmFsL2sxOFV5QUZQbG50?=
 =?utf-8?B?S050akdUSU9uOWlScjJzUFRRWkNMYThCbjVwSVNjbnFhOXN5Z3VCY2ZQMTd2?=
 =?utf-8?B?Ymo0Z1FiQVZJMnhnMXRsSWsxaERHcnRkQ3FCWkJDSEtDYjg4ZkdWcUZXenBJ?=
 =?utf-8?B?RVVydlMvK2UxTXZFcTlSUmk5Vmt3NmVQSDNscC90M1BGVHp5b084cHZJQUVU?=
 =?utf-8?B?UEtiQnpMaGFremlsSWlMcUx0QlNLVmwxdTFSOUVGVzBvYVRvWm53WHYzZjkw?=
 =?utf-8?B?UEtCaVNqaWhGUE9tYnN3OVV0aWc5L2JJWFgrR3NNT25KcUw5Z2JWclBpZG5i?=
 =?utf-8?B?ci8ydW5ESm1QMXdldzRLZnBLVXpJSVpad0c1MHR6b3NFZXlqeVdWOVB1YldV?=
 =?utf-8?B?OUppNWcrSEZQeGI0a2V6RnJXR0E3aEpXMWpxRDJISU5GRnhTT1ZGa3hORk55?=
 =?utf-8?B?blJQeGgvNDQ1TTZnc3VqMXFQeGdXNktxN2QvMWFGYnhnaTVlVzRXN3cyRmRL?=
 =?utf-8?B?OHNGSU9ncDhvMit5VmtGSlN1Y21jMHBDdEdLWXNpLzhoU0h4TDgwRG5QK2dD?=
 =?utf-8?B?ekxYL0dtNjVuMTcvcHpBV0tqOXRMeU5xZTh4blJlanYzRGVUVER6WVpYNXk1?=
 =?utf-8?B?OEtZMzVKaUN5dnh4WXBQRVd5bnI3U0lCM2lOdHIzaUplRzdYYVQ5TUdkMC9T?=
 =?utf-8?B?bVhlVmdrM1QvbWJjL1FMNm1ab3RpaXpNRmN6K0M1YzkzemRwVU9FTm5rR3RY?=
 =?utf-8?B?aGhqWlAzZnhKZWFhdkZZUGZUeEkzVXpjanc1RmU5QlRnWVdQSnFJclE3MUlY?=
 =?utf-8?B?bVNkTVlqTmdRdFY1N2NDcUNQa29RTXhEM2VJcllqWDdKYmh4WlF3QlJEZDR0?=
 =?utf-8?Q?bcrg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SElsSk1PY2ZsNloyTzl0RWlzOGcxSzZ3V0RZaFJzSWxNclhLYXc5VUovOHR3?=
 =?utf-8?B?MDVlUlBYRktDdm13dWtuYjgyWDZhdlFzWkMxTmJTT0wwMnAzUng4QVB3OE5h?=
 =?utf-8?B?VnMxL3VRNVcrcDI1MGhDbmwxaTRVSXNGNUtGNEhGOXFMNWRUMkNvRGluMVox?=
 =?utf-8?B?eVNBQzZySFlXam1oVnQzbGx1U3dLdktWWjYzMXIrVW9hUjZ6SS8yTTBuYklV?=
 =?utf-8?B?K0JNRTc1RFArTlhQdWxwZE1Nc0MyK0tESmFJMzdndlpNbytVRWJwNzIyQ3RO?=
 =?utf-8?B?bmtJSTNEUHkwcm8rMmlzRFArZUZNRVhzdy9NcU9hT2V3ZkZyRSthMERyUm5o?=
 =?utf-8?B?ZEJLeXBvaVBuc2xPV1BlbkFxRElhdUp1dnlnWDM4M2pqQVRCQ3dVOHBiLytB?=
 =?utf-8?B?d1UrajRxL1Vnd1l3NjFabFFzcHZUMmtVSmxReWpoUkJIcWFxdVA2Q21RTTR5?=
 =?utf-8?B?UExWSlo4am01TUtzYmg2UzRNM2s1RHJYRkV3N09lc0J1WGtHRXlYUjNtZEs5?=
 =?utf-8?B?WDRyeXBtb0pZM25tdllnM1NxNW5ETFlPZWp3ZXhrUWtJTlowa1JTNFROQUxY?=
 =?utf-8?B?K1VzbXpaL3kwNGFDUkY0ZVFWb3ExQlh4OFR0aVNaVVJGbHZwNHpSekx1VVBt?=
 =?utf-8?B?VWtmSDArODRsTmJxMEZpLytvaGdLS3BBUVFBWTRGMG9uOW1TNEJhN0Q0SDFs?=
 =?utf-8?B?Yi9uTDhyeENXOG4reC9DSEp0Y29zbFM4cE5CQ2xFZE8vMEpiTkVsbkRqM2N0?=
 =?utf-8?B?VmpCdVYwTVltcllTQk5qTFlkVk43eGZOSUt4QS83MFJybmorclI0L0h4OWVi?=
 =?utf-8?B?RW9RVFZnQTJmck5wUDRNeFIzbmxMT0d2ZGs4czFUVW11cTZWY2J2ekNLZi93?=
 =?utf-8?B?cS92dHByMW0rMWpQRlZ6d29QWDRIM243RGtDV3kwMER5OVF6WGVlYTJQNGsw?=
 =?utf-8?B?b2JkZnZ0cDMrR0RSdGZaYm9wczZpaldQVFJBZ3hSU0h1RUNoZ0pDdWRWTktv?=
 =?utf-8?B?Y2ExS2ZTd251NE0yMXFGdkVPNlEva0cvaGI4RFRZYS9rcStldk1BYitOMll5?=
 =?utf-8?B?Z0VYVlV4YndzSGwzc3lSY3FsQ1dMTHpiK3E3OGlQK2lmRElKWmJrMENMaHRi?=
 =?utf-8?B?dmR1UUgySmxwOW44alREM255cW16YlpOUEh5WjhKU2QvaDhFNGVjeUlOZ0tH?=
 =?utf-8?B?TlNDblVvK2luN2pYSnBVbTdTdXh0Wks0Z3J2VHdBTDFHWkVQbGRaMU43OTc3?=
 =?utf-8?B?VHBmczg5ZFFJaTlveXZIdUsvVm9YMDQ4UjBhU2Q1RG92bWVjOEFhcnJzd09S?=
 =?utf-8?B?b1RHOGtqMFEvdUxRQkQyaWJyZnNDanZmOXAwS0hKMVZLMm9VVXZqdDVhcEtr?=
 =?utf-8?B?YWc4NkxWRVlEMVBGSjVQSUVEYjFKVW1NWUNrYW9sd0ZlNFVVT2V0M3NwMFZI?=
 =?utf-8?B?MWNJL1N3cTA3WXZic29RUllMRzVZaTBwTHQrY0JhY01HTngycW13R1RHazJI?=
 =?utf-8?B?Nm4xUmpRYm8yZ0JZL05qaDAyQmhNMXFsSFJkWUtPYzJndFRLSkxWTEdQRHp5?=
 =?utf-8?B?MHAxd0RrMGZiK3V4aGxvV2JQT01WeFFSWVJiZGEyaDlna2o2Vm9HZVduYXo0?=
 =?utf-8?B?K1hHMUtiekl6KzR6ZktnZW5xUGVoVXRGTWVoQ2tNMmtwOFBBbEIvMHRsaUhn?=
 =?utf-8?B?Q3dIVU1wMGFIM05TcHUxZ3JOaUNmZGVXR25pYUM3MjMvV1VKSlBSL1EvNGta?=
 =?utf-8?B?US9nZU9udEpoMmoxTlR0NDMxdE5wZHBRQmVVVk5GSlF5SXU0dmx1OWZNTjJ3?=
 =?utf-8?B?L1dQWmdqNlVtR0x5eVoyVElXTjdKaWJMMHFiOERKR2NXS3p2WHF0aitiSW5Z?=
 =?utf-8?B?SHBHazkxYjBka2xCR2VZK0drL2tPN1R5MzE2TUNlSlVycHM1VWhkc1R6SjV2?=
 =?utf-8?B?OC9wQWVTcmJzemxwemtIek94ODNDclRZYnBaQnNnK3RtaVIwQTVoSHJPYStl?=
 =?utf-8?B?YTZEV2N5NDJVcEVPbWt2bkZjQTV2K2xqRnJUKzZZaG5HVWlpYXFxMjRrZzkz?=
 =?utf-8?B?V1VoUVplUHVTNnd2aHIvTmt4TjM3SEJHTnpmVnBBOHN3T2dIRFBCeFZNdm9L?=
 =?utf-8?B?c2kyNGRkYkFwelY3dUY5TUY3QU5ZaHVlQ09MTmxETWNIVlcwWlBZTkh0KzM2?=
 =?utf-8?B?a0lSU2tIVTBqcGZ4cnZXM2VFc0QyaGtZakJ0M3JCK2lSc1ZEakJmeUVvS3lo?=
 =?utf-8?B?SGlFcXRkc3Naa28xZHY4TS8raGljaER6eWZPMHliZUpCNkRTZlduVThncHpR?=
 =?utf-8?B?c2pRWkJDV0VkYktDSUUxL2w3VFZLeVRNSCt3cXAxc2VOY1B4KzUxQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec2cfef2-6d62-44c4-dcf7-08de5d1bfcaf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 20:46:32.1025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4dh7MJ/3WG25z0rOnsCc7AwUO0YUPd5+gUj+0u/8Zp+S6MZkze88aPGMA3Ralzk0mS/cYgbQSNGywf1+xYQoQd+DPmzyqfqVByhdJkDpA4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7065
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769460398; x=1800996398;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S1OYf2QI/ORPkCmrBxUFuRDf/fyBRdmJ83ss8ecRHB4=;
 b=LefVdBniq5aUmb0v2j4NduTU9aNr0JnYpbgDvnVqUK8KTcySXEHlDWAm
 opvGjty9jscXB5FnpOT5zqolXexaEeK0+1IrcqB/4jvKwkJ5uMrTBKddl
 zZo081X7F27UFgA5VSHP8dipkyvpTuArbg+WCbdBDnUrc6SBaF11tld9O
 4Z1DkJyoIGo/W8qbITlnmHeTH8P1rcKmhLPqr+PB34ZSjrnsKYnLq7HQu
 0zXzu4aqgTXh2ZfX6nKfJl8sdGnkt3SgI+qPgTCQBO13j9mxCkZu8m2GL
 JrwlhzYCVoOC+hmRzQD/+sp0BvlDrrpQ1lsBaZlYvNkBh7g1fw5ao5cJC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LefVdBni
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v2] idpf: change IRQ naming to
 match netdev and ethtool queue numbering
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:brianvv@google.com,m:brianvv.kernel@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:decot@google.com,m:boolli@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:emil.s.tantilov@intel.com,m:brett.creeley@amd.com,m:aleksandr.loktionov@intel.com,m:brianvvkernel@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MSBL_EBL_FAIL(0.00)[andrew@lunn.ch:query timed out];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,lunn.ch:email]
X-Rspamd-Queue-Id: 22CE28D40A
X-Rspamd-Action: no action



On 1/26/2026 9:53 AM, Andrew Lunn wrote:
> On Mon, Jan 26, 2026 at 12:40:15PM -0500, Brian Vazquez wrote:
>> On Mon, Jan 26, 2026 at 11:24 AM Andrew Lunn <andrew@lunn.ch> wrote:
>>>
>>> On Mon, Jan 26, 2026 at 02:46:24PM +0000, Brian Vazquez wrote:
>>>> The code uses the vidx for the IRQ name but that doesn't match ethtool
>>>> reporting or netdev naming, this makes it hard to tune the device and
>>>> associate queues with IRQs. Sequentially requesting irqs starting from
>>>> '0' makes the output consistent.
>>>>
>>>> Before:
>>>>
>>>> ethtool -L eth1 tx 1 combined 3
>>>>
>>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
>>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
>>>> /proc/irq/68/idpf-eth1-TxRx-1/../smp_affinity_list:0
>>>> /proc/irq/70/idpf-eth1-TxRx-3/../smp_affinity_list:1
>>>> /proc/irq/71/idpf-eth1-TxRx-4/../smp_affinity_list:2
>>>> /proc/irq/72/idpf-eth1-Tx-5/../smp_affinity_list:3
>>>>
>>>> ethtool -S eth1 | grep -v ': 0'
>>>> NIC statistics:
>>>>       tx_q-0_pkts: 1002
>>>>       tx_q-1_pkts: 2679
>>>>       tx_q-2_pkts: 1113
>>>>       tx_q-3_pkts: 1192 <----- tx_q-3 vs idpf-eth1-Tx-5
>>>>       rx_q-0_pkts: 1143
>>>>       rx_q-1_pkts: 3172
>>>>       rx_q-2_pkts: 1074
>>>>
>>>> After:
>>>>
>>>> ethtool -L eth1 tx 1 combined 3
>>>>
>>>> grep . /proc/irq/*/*idpf*/../smp_affinity_list
>>>>
>>>> /proc/irq/67/idpf-Mailbox-0/../smp_affinity_list:0-55,112-167
>>>> /proc/irq/68/idpf-eth1-TxRx-0/../smp_affinity_list:0
>>>> /proc/irq/70/idpf-eth1-TxRx-1/../smp_affinity_list:1
>>>> /proc/irq/71/idpf-eth1-TxRx-2/../smp_affinity_list:2
>>>> /proc/irq/72/idpf-eth1-Tx-3/../smp_affinity_list:3
>>>>
>>>> ethtool -S eth1 | grep -v ': 0'
>>>> NIC statistics:
>>>>       tx_q-0_pkts: 118
>>>>       tx_q-1_pkts: 134
>>>>       tx_q-2_pkts: 228
>>>>       tx_q-3_pkts: 138 <--- tx_q-3 matches idpf-eth1-Tx-3
>>>>       rx_q-0_pkts: 111
>>>>       rx_q-1_pkts: 366
>>>>       rx_q-2_pkts: 120
>>>
>>> Are there any ABI issues here?
>>
>> The patch doesn't change the format, it just fixes the numbering in
>> the name to make it consistent with other reporting tools. It
>> shouldn't break any library.
> 
> But is the numbering part of the ABI?
> 
> Making a comment about ABI in the commit message makes it clear it is
> something you have considered, and you have decided it is not an
> issue. If there is no such comment, reviewers probably should ask.
> 
>         Andrew

I don't see how an application can depend on the name if it can't 
correlate it to anything meaningful. The change fixes the ID values used 
so that they *do* correlate. If an application was previously assuming 
it correlated to the queue ID, it would incorrect associate the IRQ with 
the wrong queue.
