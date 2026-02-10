Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YANdK6RHi2kpTwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 15:58:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9648711C2CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 15:58:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A9706060E;
	Tue, 10 Feb 2026 14:58:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3mQU1j8ZehM0; Tue, 10 Feb 2026 14:58:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47F1F60628
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770735519;
	bh=O82w63YsiioNkymyOT5BShPWHK5WR+WUEFvmuDCt0mA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R291QLVmUAR27g2Dg5goduwsG7kEhItngbtnjniGMHKTbUyCHcwfZBpsl8IvZ4Gzd
	 o10DmtRvlckEtaOhCRsygxOLNEBLYsuMo/NYaPYEMDcQX5DIJjB90Mbis/Vewoj5/B
	 2K0YILIQvrHAUzmU/nyD9yiaBIrqqNhVnfE3WF0HDrM0i+vc/S+7cliph02AsmF2hh
	 9rc8AfplE6hJjMSBQgcMD0kfxHFWdZAQotbCAqRXNC4WWvI614E+1xlfGP2wObks5R
	 MOWIDkNwjvRRFvmrwbP34GNGZpIYTikKXIYY+oFAcq6jynjgu1CjcW8l+4z3rMZv6j
	 +tkCWKcWpS7OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47F1F60628;
	Tue, 10 Feb 2026 14:58:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 81476F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 14:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7280782F8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 14:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d8sHtaFyKfTF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 14:58:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 71AED82980
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71AED82980
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71AED82980
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 14:58:36 +0000 (UTC)
X-CSE-ConnectionGUID: n8V3+PZpSPOZxuFyZ0f18A==
X-CSE-MsgGUID: dseT0WE/QvugGb7jn+AhxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="94507665"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="94507665"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 06:58:36 -0800
X-CSE-ConnectionGUID: s9X2wbHATsiWvLe2vjIKHQ==
X-CSE-MsgGUID: 5bP6KmqNSfSbwxzMNH4hDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211772946"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 06:58:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 06:58:35 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 10 Feb 2026 06:58:35 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 10 Feb 2026 06:58:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K3KUTq6JVcR11f/aHIzDaVNWNIx4Yqr9hF9UgQz2DZixutioTEzKv7hKV5pq6tMKdCX/o3nPCBys7txElQiumMzmFp7QlDlwtN2Bp4sodYdPSTqALtdCVQZaAPeN3FjpYcXqchMWQ4MjVc7mHPtu9Z55+0pXb8+egXJq9ZjesKXx6PkZVRNoX0o7Nw9U2K44jAbWueRVBdKYaoZ/PnKJO7i0FEqiU69u73jOKw+5z4AMk4JpbSs9ZtTPNrfvZ03xj1XpGOhUZH/a59iOwhJ0rtjvmK7CQR/B/Os4QwIFCvXFar92vxhNw3nlYjvEMKS8ADBF4mQNd1wD0MnuojZYkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O82w63YsiioNkymyOT5BShPWHK5WR+WUEFvmuDCt0mA=;
 b=jLN0VGS7RjECh6Fe8SSTDKfgC/LbVU1TaV3d4VzFrYaS5EJ2Bxg0ot61bRjdYvN12mo7Kr4rM5p1LMl6T5/AEh4qXUrmYRFwj0RI0Qbb+7udOOzBy5s/XDv3vaF67ciX6XV9bzqH8SwTeheOLclsDVg43Qkyoz7HiNT4SAWQqSIJqalUwgp2LwRxmgU4GkjhPm90VOq+VloXxWIOzUXPMTzqp17OG0yc6EgBrFrtw4E2jJdRWhM0YjC2TViP/VXtXhJXU1zW1lht8+28pbmAV1glAtN4tMC9q6mb6prHp45v/7JPnIrD2ZndnNnjAWNkWWE1TGDXyELKGzhTRDsthw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY8PR11MB6890.namprd11.prod.outlook.com (2603:10b6:930:5d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.8; Tue, 10 Feb
 2026 14:58:32 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9587.017; Tue, 10 Feb 2026
 14:58:32 +0000
Message-ID: <adf9538c-d403-4480-8ec5-09e2943878e6@intel.com>
Date: Tue, 10 Feb 2026 15:58:25 +0100
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>
CC: <ivecera@redhat.com>, <aleksandr.loktionov@intel.com>,
 <shaojijie@huawei.com>, Jacob Keller <jacob.e.keller@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Stanislav
 Fomichev" <sdf@fomichev.me>, <intel-wired-lan@lists.osuosl.org>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>
References: <20260207102245.812795-1-poros@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260207102245.812795-1-poros@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0079.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY8PR11MB6890:EE_
X-MS-Office365-Filtering-Correlation-Id: af2463ad-af45-408e-315b-08de68b4db71
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEoxNGpZK2wxUnJ2OHFGSjhQTmREQXlFRy9vNGNaTEVDT1dpUDI3M2lnM2Jn?=
 =?utf-8?B?K2ZLNTdaVXdBK2dndksrNWVIR21UbVdLcWpHaHRGWTBZeURhcW5kODJZZ3Q1?=
 =?utf-8?B?ZUdHUUVTY1Q3QUlhWnM3enMrN21UajBpK2NKREhZY3ZOKzVRd3ZGQ1J1THRU?=
 =?utf-8?B?OXRUYzh4YkhWd081dGpGOE5PODRCNkg5a3hrK2Nkdy9zMndEMnVwMnVlYnAx?=
 =?utf-8?B?T1J6dmxZZUJ4S1BBTGFFQ3NWVzY4NTIyK1g5QzBCekt4eVpJUFhpdzBPRWdh?=
 =?utf-8?B?L3pTVGxGcGNIWnVSdlVuYVJaeW5KNWVhQXluNFRnK2NVNk5jU0QzbU9GU0c4?=
 =?utf-8?B?Zmw5V3BVMTJNcFRMM3VTeHcxSkxkdjk2V3dvcEJ3TVBKTkFjM29lZW5QSkhN?=
 =?utf-8?B?VG5JaUp4a0s5VHRWSUN1MlFVaXVtNGRld05DbkJKUGJtWHArQUxORkxkYm00?=
 =?utf-8?B?WUtQVW5xTmxYWm5OZ3UwbHRpem82aStjeE0vcVlCSmpjQkMwSjRoZzVNa3FX?=
 =?utf-8?B?VlM1eklhUWNxUUFEbUVRMmhoQTVFOVJENTlzYzVMaFBTLzcyTVNxTVN4Mk96?=
 =?utf-8?B?cnpPVXkzZVpwNFZDb29YQmR2VE1HOEV5dERKb1JWSEtZNjkxbGxIUFNLOGhZ?=
 =?utf-8?B?VEJBUk9CYURVdXE3KzZwM0h4VkpMbC9PbEJMOU16cWRJUENsaXNDUmhsK0x4?=
 =?utf-8?B?aU9TY0RJZ2U4UEJzZk5abG42bUV4Y1BCeHQ0b0xrZlU0UlJ1M3RkaFZnYjJF?=
 =?utf-8?B?V3ZDa2lNeFhCZHVHRDF5a2Ewc2JteU8yb1dqWHVveW5MdlNteWl2UlJmcTJC?=
 =?utf-8?B?bFBoSnFqaytqWWNzQkdiNjBjY2RmaVdHUEFNdWJLbVpxTnRxN2NmRXFrRGUw?=
 =?utf-8?B?c1RJNDBHYVNKNVg4ZUZFT0x6NmlEZFdzS2lwVUtDS3VrQnY3NkdVcTdQU1FJ?=
 =?utf-8?B?eXNyYzVDUzl3THpkWWxqakFlZkZrdXN0d2ZZVHdmT01IWEVXVkppbDNQYzlh?=
 =?utf-8?B?eFFvVlFVRUdxUUFDU1cvb1hzRWZ4QmY0M0MzeGcweVFYN0NkeDNrQ3RTbGpj?=
 =?utf-8?B?Umg4SkJWMm1GTCs4djcxMjByUW1HMXRBOHozR1ZXdEl4NTFLcDdCOVV1VnRG?=
 =?utf-8?B?RFc5akJZN1pxNHRreEF6MHhFdWxVczhRVzBCUklBMm45TElWaGl6dHFpbGF2?=
 =?utf-8?B?Y1JQWHV2RWQ4US9DcGRUY0VGejJkT3VQSXk3RXdidkt1NmFrMTh6TWtQQWJo?=
 =?utf-8?B?MkVQMlFQRmRCN1RxcTNsMG5uSEJIY1N3VEF0YkZ2YUxESjE5TzhXbHRZaElO?=
 =?utf-8?B?eUtsT3M2TTZIRVc0K3E0d0IzK2ZhQXM5NGlGSUR0VVBvb0NQangyYUUxQi92?=
 =?utf-8?B?d3JvWkhnMVpEYmdVU3ZPc0RGMmV1SDNSQnI0RW12MERnSXlYcjlJZmRxQnpn?=
 =?utf-8?B?bHhpYjd2eW9ET2FkNW1rT3M2TDZwaTN3eTlTRVg5RUVOdVpUWm1jbXRtT3h5?=
 =?utf-8?B?MStucktBNnpiQkd6NFV3V3MvdVpnVXZFa093eW41UzUveDZpTlh5ckI2cis0?=
 =?utf-8?B?M1FMTVo3UExkOU9YT1N6QmNlb1NmYW04M2w4Q3VPWWhRNk9nclpkT3BlRExE?=
 =?utf-8?B?MDMwVk1BbkZDeVlKZTlRY2RYTkZlbEFPdDRvaG92SjlBYmlDVUVOdlN2WWRo?=
 =?utf-8?B?TFNKTUR3bzJReGh6cXNRWkNLVWhFTFo4dFkvakNjV1gxY0FncVZBVk9nYTJx?=
 =?utf-8?B?cHNvZ21sWTlXeERIWXRJbmVWK2F4eG9YV0Q1S3lPVlFkdkVxaVhLajZ5MXN0?=
 =?utf-8?B?ZzZaRitteWZrNzhiV2o0VjVGVUdtVTJGYUpZc0YySjd2QmRGWTBYL3hUM3RN?=
 =?utf-8?B?dkJ6SFUyM3kzbnpMZ2YvMjNueTJpWEFPc3VIMTI1V2FPelZ0Q0ZkazNtNk1o?=
 =?utf-8?B?cUUrK2tCUUdXM3NiV2hySEUrTlM1bWtlOHlpTXBETE8vZlFlVGM5Mk1IQ3hV?=
 =?utf-8?B?a3hWZEgwUUNVdk9DaWFOZiszTmJya0JONGZTUGJEbnAxUFVFVVpWd2QzT0E1?=
 =?utf-8?B?KzNOMVdteWRzcXY5QmYvVFV0bkZqN1ZxSVE1a0ZEcklTVlR0bTRVdU1leFVZ?=
 =?utf-8?Q?Anpk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEF3enNqbXVhSUEzeGN4WjBDN0RmdENJVUhaSnZqdWJvdFB6bXJ4ZmpZMkZL?=
 =?utf-8?B?YlJTa2FNK0lmSS9VTVdiK284RlA0S3BOeWZOcHlJajlXU3NYbkc5ZEJYS0M1?=
 =?utf-8?B?UFdFR0JocG41T1BnYk9NbnJPdTlrSXN2ODRKWWhXN3dGb0g4Tk1hYUtHcjBm?=
 =?utf-8?B?OWM0VmtVb0JJZFBVckxBRzFnYTB1QkN2bW5NRHBpbnNwWTZGUEcxdzdvV2FG?=
 =?utf-8?B?MU83YkNKTWFyL3d5bnJ3cDJzVFBHQnlNVDVaVjVmYzZza2ZOZ2RZOXZtL2xS?=
 =?utf-8?B?aXo2SlBEczNKdnpoR1B6M1VpQlBJbTVXTXRYY21Ca0NLa0srQ3NCNGNkMFVw?=
 =?utf-8?B?WVBJUjR0RFJ1cWlPd014WVNKc05vS2tielkzM3pyR1hMcGZqcEUwUUQyVnlV?=
 =?utf-8?B?MXdkbk5QaTBjUnhtNEJJVUYweXF1MGJhOUZIZGt0amRmdEYwVUpFL3NBc0Zx?=
 =?utf-8?B?TExpaDN6WTFOR2RhYWdPUDJPZDFMVG5BWk9Cbmw3Um1ZTjBUOFE5VkNnSTNS?=
 =?utf-8?B?TGlieTJjcVkyNVZhYzUxMkM1VGREd1U5MC9JRGd2dHphNUFMaHRQWHpZQWZE?=
 =?utf-8?B?cmlUem8xc0xweDhlUGNNbUIyWGcwWVZxQVNGT29pUGFtMm5DQlRXVEFiTENO?=
 =?utf-8?B?aHRWc0duYTc2MXdpTmVhaGxveWxweldDLzZaKzc5aGQwOHYvRDNGbkxXaHNJ?=
 =?utf-8?B?UWNhN2NQV25KaUV5Vm1SSmd2cUlqeFlpcnhQZUNNeGlWNVhybHNGZDZManFL?=
 =?utf-8?B?TWFlN2xoTWl5NE1UN3NybGJiUThkem9waHBRR0xtRVV1Y0YvVVFRdjFKU1lr?=
 =?utf-8?B?bDJmVTdOZWIxR3p6M1dXSndOZDJrb1NnMWhEb3VDbnBMU3BoT0xrVU5id0E0?=
 =?utf-8?B?UEpVRzh6b0MweG9odmZHWWJuektQNU02SGY4cmk5R2dVcVUzdDd5ZjQrQlpH?=
 =?utf-8?B?T3pRaTd4alQxVkJDMzhMM0tabi9TSHBHa3Q3ZDI2NnR6SzVjYTBjQk1EVEFW?=
 =?utf-8?B?WXlUcytPZzlHRjIxeitiTnBnMGFWMHJoeFhCSEVDTEs3TWN6cEVXTWxSelJq?=
 =?utf-8?B?L3JxQWhtaUwzMzhWN1BJTE4zTS9uK0czMjNDOUgycmFBRDlDSUpGK2JWbHZ6?=
 =?utf-8?B?emNVU3lhMkZackVTSFlrVTZDVmxudmpZQzJaUFpvMGthdFMzcWtvVXpWenN1?=
 =?utf-8?B?b0VocmZvd2JYZEt1ZG55QzBOc2xFdS9qTFpLKzlMOUhuUmVxRm5wRHBJVnNk?=
 =?utf-8?B?cE5ya2hzUnZtRnZ3cmdRbkNSb1lNdVZEbk9TWC9BWWZaRFpZYmJIYngrSEFm?=
 =?utf-8?B?eHFTcXVzVlZOZzdVTU1iUE44eTFlL2NnYlFscmhqbElqT3FjY01IOVd6ZVpQ?=
 =?utf-8?B?NnFYZWlVUjhHMWZabDhRZ0NpTDBUbGNPOTdrcWp0K01HanZsS0xvbk0xZ0F4?=
 =?utf-8?B?NVJRLzVZYWJrUXR3MTQwR3YxRXMwRVpxMDBQY0YwVkM5M1ltT3ExaTIwMHM5?=
 =?utf-8?B?MDFmbFA1NjY3dlRNY3NGL0QvQ0VlbGg4My9UUmdNRU5iMjhCV0Z4UVpzSk5x?=
 =?utf-8?B?TjQ3ak1OeUM0QTJZQmtqcW54QzdlNVZHOFFiQkVRVk1UbXByWC9YSi9nVUF5?=
 =?utf-8?B?YjZ2RzhpRGJnY3pzZ2hpTWNkM0x0VkdhU2UvemhyR3N1ZmlONHhSWDMxcXh1?=
 =?utf-8?B?T2RIaGNyWkpXaVZlZE0xRW5XQjhZektPcS81dGN5QnowMWg0d1BMaE1PMlVM?=
 =?utf-8?B?cEtXYWV0L2hxTUhoVFQ1TS81QUtYQ3cyM0NXNzRFZ3R6ZW5BbUYwOFQyZjF0?=
 =?utf-8?B?TkhxYjJIZXRkVGJGcXR6QjdFZlNrRmV4ck44amxaOHZpOEVGaXhuUVVrRnJv?=
 =?utf-8?B?SEsxa2pMRkc4ako2SThFZmE5ZjdNMWdZN29xUEhCckY5TnNQaUxuNFhEejhN?=
 =?utf-8?B?Vit3M0QxNXNiR3JDYVloelkzWmZDTXZlZDdJcldNZFVjSXJJM1hIaG5BbnM0?=
 =?utf-8?B?WGUveXJYd0RSUFJ0eU1tVVgvS3BVQy9KeHNoMWpuZG9hNEFZRGFGTHE3bFJZ?=
 =?utf-8?B?YldkMFZqdFJTNDE1czFqRmFzaklkU0k1WG1QdjJ6aDVJblV1Uk9qTXZQd1ov?=
 =?utf-8?B?b2NONGVGUlZ1cnN6cVZ2MlR0alBWWXFWR1YvdU1nenEzcGZEdXArcTVWb2gr?=
 =?utf-8?B?OHpFKzRFVFg3dmZFenMySmxTV2paNTNRM3RpYnUvZU1xMVBqMTFYcEp1d0Zm?=
 =?utf-8?B?Y2VnM1hhSXdnZXpjZzN4S09sMkx2NnZMR29XOEhXUnZYdzVNV3A3ZExVYUJZ?=
 =?utf-8?B?c0pzZ3Z3emRNZ1BXS3c1LzhDVHFkdHA0NHpDam0xRDAyZVhXUkhnaGJrVjZQ?=
 =?utf-8?Q?Tb8riD2dpraFNFgc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af2463ad-af45-408e-315b-08de68b4db71
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 14:58:32.1168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sOur8An/p98eW0rY2NG/nrXDg8dW//sgAZpcoX0sYFcEdOuJfjtNCwSMNUAJFVHrt/14aC6vBr5FAFROa6u/9uZ5PKhILU8Qlm+U4S167eI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6890
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770735516; x=1802271516;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WfCC2W46z9ViLINvPSvl5MaMH5q8fXTGVH7n2LqMQo0=;
 b=jFRQgi9ce7s7UZxS3wTyAVkgm+MSNh5ldD8SJl3KNl5+dGDMhdcpp6sc
 /FC19PRzJmMHP5s63fUv2HaDizRZN+ldUNKO+/kJIvKgA/+yg2cPIT0tt
 6nICDY7VxOZ/yoLKDiQ3iuRSkJSAjmSrtCwecW+0x06l+MP7qjy5FQomH
 wFPefhmumZg7HVVJpKG/pWegg65ewygWvsKmRTJ9MqbQhSSTfB9+kmtJ8
 5LpKxaQlwlHxL1WnWsuPyTtIvyY8DnfNTUb3Yt+Qx9MCc1EDPkwGZMpEe
 PnaGmFNj6Nugc/GtPt6cbLy3wxyiTQJ1E9zRN7VIurkUVN7z/4/Fpe/kU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jFRQgi9c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: fix deadlock in reset
 handling
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:shaojijie@huawei.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:sdf@fomichev.me,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 9648711C2CA
X-Rspamd-Action: no action

On 2/7/26 11:22, Petr Oros wrote:
> Three driver callbacks schedule a reset and wait for its completion:
> ndo_change_mtu(), ethtool set_ringparam(), and ethtool set_channels().
> 
> Waiting for reset in ndo_change_mtu() and set_ringparam() was added by
> commit c2ed2403f12c ("iavf: Wait for reset in callbacks which trigger
> it") to fix a race condition where adding an interface to bonding
> immediately after MTU or ring parameter change failed because the
> interface was still in __RESETTING state. The same commit also added
> waiting in iavf_set_priv_flags(), which was later removed by commit
> 53844673d555 ("iavf: kill "legacy-rx" for good").
> 
> Waiting in set_channels() was introduced earlier by commit 4e5e6b5d9d13
> ("iavf: Fix return of set the new channel count") to ensure the PF has
> enough time to complete the VF reset when changing channel count, and to
> return correct error codes to userspace.
> 
> Commit ef490bbb2267 ("iavf: Add net_shaper_ops support") added
> net_shaper_ops to iavf, which required reset_task to use _locked NAPI
> variants (napi_enable_locked, napi_disable_locked) that need the netdev
> instance lock.
> 
> Later, commit 7e4d784f5810 ("net: hold netdev instance lock during
> rtnetlink operations") and commit 2bcf4772e45a ("net: ethtool: try to
> protect all callback with netdev instance lock") started holding the
> netdev instance lock during ndo and ethtool callbacks for drivers with
> net_shaper_ops.
> 
> Finally, commit 120f28a6f314 ("iavf: get rid of the crit lock")
> replaced the driver's crit_lock with netdev_lock in reset_task, making
> the deadlock manifest: the callback holds netdev_lock and waits for
> reset_task, but reset_task needs the same lock:
> 
>    Thread 1 (callback)               Thread 2 (reset_task)
>    -------------------               ---------------------
>    netdev_lock()                     [blocked on workqueue]
>    ndo_change_mtu() or ethtool op
>      iavf_schedule_reset()
>      iavf_wait_for_reset()           iavf_reset_task()
>        waiting...                      netdev_lock() <- DEADLOCK
> 
> Fix this by extracting the reset logic from iavf_reset_task() into a new
> iavf_reset_step() function that expects netdev_lock to be already held.
> The three callbacks now call iavf_reset_step() directly instead of
> scheduling the work and waiting, performing the reset synchronously in
> the caller's context which already holds netdev_lock. This eliminates
> both the deadlock and the need for iavf_wait_for_reset(), which is
> removed.
> 
> The workqueue-based iavf_reset_task() becomes a thin wrapper that
> acquires netdev_lock and calls iavf_reset_step(), preserving its use
> for PF-initiated resets.
> 
> The callbacks may block for several seconds while iavf_reset_step()
> polls hardware registers, but this is acceptable since netdev_lock is a
> per-device mutex and only serializes operations on the same interface.
> 
> Fixes: 120f28a6f314 ("iavf: get rid of the crit lock")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Petr Oros <poros@redhat.com>

thanks a lot, this is not only a fix, but also a step in the right
direction for the driver,

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> ---
>   drivers/net/ethernet/intel/iavf/iavf.h        |  2 +-
>   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 21 +++---
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 72 +++++++------------
>   3 files changed, 33 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index d552f912e8a947..0c3844b3ff1c86 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -625,5 +625,5 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
>   void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
>   struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>   					const u8 *macaddr);
> -int iavf_wait_for_reset(struct iavf_adapter *adapter);
> +void iavf_reset_step(struct iavf_adapter *adapter);
>   #endif /* _IAVF_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 2cc21289a70779..9b0f47f9340942 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -492,7 +492,6 @@ static int iavf_set_ringparam(struct net_device *netdev,
>   {
>   	struct iavf_adapter *adapter = netdev_priv(netdev);
>   	u32 new_rx_count, new_tx_count;
> -	int ret = 0;
>   
>   	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
>   		return -EINVAL;
> @@ -537,13 +536,11 @@ static int iavf_set_ringparam(struct net_device *netdev,
>   	}
>   
>   	if (netif_running(netdev)) {
> -		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
> -		ret = iavf_wait_for_reset(adapter);
> -		if (ret)
> -			netdev_warn(netdev, "Changing ring parameters timeout or interrupted waiting for reset");
> +		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
> +		iavf_reset_step(adapter);
>   	}
>   
> -	return ret;
> +	return 0;
>   }
>   
>   /**
> @@ -1723,7 +1720,6 @@ static int iavf_set_channels(struct net_device *netdev,
>   {
>   	struct iavf_adapter *adapter = netdev_priv(netdev);
>   	u32 num_req = ch->combined_count;
> -	int ret = 0;
>   
>   	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
>   	    adapter->num_tc) {
> @@ -1745,13 +1741,12 @@ static int iavf_set_channels(struct net_device *netdev,
>   
>   	adapter->num_req_queues = num_req;
>   	adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
> -	iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
> -
> -	ret = iavf_wait_for_reset(adapter);
> -	if (ret)
> -		netdev_warn(netdev, "Changing channel count timeout or interrupted waiting for reset");
> +	if (netif_running(netdev)) {
> +		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
> +		iavf_reset_step(adapter);
> +	}
>   
> -	return ret;
> +	return 0;
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 8aa6e92c16431f..9c8d6125106f5a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -185,31 +185,6 @@ static bool iavf_is_reset_in_progress(struct iavf_adapter *adapter)
>   	return false;
>   }
>   
> -/**
> - * iavf_wait_for_reset - Wait for reset to finish.
> - * @adapter: board private structure
> - *
> - * Returns 0 if reset finished successfully, negative on timeout or interrupt.
> - */
> -int iavf_wait_for_reset(struct iavf_adapter *adapter)
> -{
> -	int ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
> -					!iavf_is_reset_in_progress(adapter),
> -					msecs_to_jiffies(5000));
> -
> -	/* If ret < 0 then it means wait was interrupted.
> -	 * If ret == 0 then it means we got a timeout while waiting
> -	 * for reset to finish.
> -	 * If ret > 0 it means reset has finished.
> -	 */
> -	if (ret > 0)
> -		return 0;
> -	else if (ret < 0)
> -		return -EINTR;
> -	else
> -		return -EBUSY;
> -}
> -
>   /**
>    * iavf_allocate_dma_mem_d - OS specific memory alloc for shared code
>    * @hw:   pointer to the HW structure
> @@ -3100,18 +3075,16 @@ static void iavf_reconfig_qs_bw(struct iavf_adapter *adapter)
>   }
>   
>   /**
> - * iavf_reset_task - Call-back task to handle hardware reset
> - * @work: pointer to work_struct
> + * iavf_reset_step - Perform the VF reset sequence
> + * @adapter: board private structure
>    *
> - * During reset we need to shut down and reinitialize the admin queue
> - * before we can use it to communicate with the PF again. We also clear
> - * and reinit the rings because that context is lost as well.
> - **/
> -static void iavf_reset_task(struct work_struct *work)
> + * Requests a reset from PF, polls for completion, and reconfigures
> + * the driver. Caller must hold the netdev instance lock.
> + *
> + * This can sleep for several seconds while polling HW registers.
> + */
> +void iavf_reset_step(struct iavf_adapter *adapter)
>   {
> -	struct iavf_adapter *adapter = container_of(work,
> -						      struct iavf_adapter,
> -						      reset_task);
>   	struct virtchnl_vf_resource *vfres = adapter->vf_res;
>   	struct net_device *netdev = adapter->netdev;
>   	struct iavf_hw *hw = &adapter->hw;
> @@ -3122,7 +3095,7 @@ static void iavf_reset_task(struct work_struct *work)
>   	int i = 0, err;
>   	bool running;
>   
> -	netdev_lock(netdev);
> +	netdev_assert_locked(netdev);
>   
>   	iavf_misc_irq_disable(adapter);
>   	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
> @@ -3167,7 +3140,6 @@ static void iavf_reset_task(struct work_struct *work)
>   		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
>   			reg_val);
>   		iavf_disable_vf(adapter);
> -		netdev_unlock(netdev);
>   		return; /* Do not attempt to reinit. It's dead, Jim. */
>   	}
>   
> @@ -3179,7 +3151,6 @@ static void iavf_reset_task(struct work_struct *work)
>   		iavf_startup(adapter);
>   		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
>   				   msecs_to_jiffies(30));
> -		netdev_unlock(netdev);
>   		return;
>   	}
>   
> @@ -3321,7 +3292,6 @@ static void iavf_reset_task(struct work_struct *work)
>   	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
>   
>   	wake_up(&adapter->reset_waitqueue);
> -	netdev_unlock(netdev);
>   
>   	return;
>   reset_err:
> @@ -3331,10 +3301,21 @@ static void iavf_reset_task(struct work_struct *work)
>   	}
>   	iavf_disable_vf(adapter);
>   
> -	netdev_unlock(netdev);
>   	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
>   }
>   
> +static void iavf_reset_task(struct work_struct *work)
> +{
> +	struct iavf_adapter *adapter = container_of(work,
> +						      struct iavf_adapter,
> +						      reset_task);
> +	struct net_device *netdev = adapter->netdev;
> +
> +	netdev_lock(netdev);
> +	iavf_reset_step(adapter);
> +	netdev_unlock(netdev);
> +}
> +
>   /**
>    * iavf_adminq_task - worker thread to clean the admin queue
>    * @work: pointer to work_struct containing our data
> @@ -4600,22 +4581,17 @@ static int iavf_close(struct net_device *netdev)
>   static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
>   {
>   	struct iavf_adapter *adapter = netdev_priv(netdev);
> -	int ret = 0;
>   
>   	netdev_dbg(netdev, "changing MTU from %d to %d\n",
>   		   netdev->mtu, new_mtu);
>   	WRITE_ONCE(netdev->mtu, new_mtu);
>   
>   	if (netif_running(netdev)) {
> -		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
> -		ret = iavf_wait_for_reset(adapter);
> -		if (ret < 0)
> -			netdev_warn(netdev, "MTU change interrupted waiting for reset");
> -		else if (ret)
> -			netdev_warn(netdev, "MTU change timed out waiting for reset");
> +		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
> +		iavf_reset_step(adapter);
>   	}
>   
> -	return ret;
> +	return 0;
>   }
>   
>   /**

