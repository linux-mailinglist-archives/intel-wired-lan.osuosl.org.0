Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEF2B42A8C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 22:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 13CC384760;
	Wed,  3 Sep 2025 20:12:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p8tPYCPuBlph; Wed,  3 Sep 2025 20:12:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75A52843EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756930325;
	bh=QU2lLqSyblcK1Wg8tPoHZRhrBQDNl9yIlu59sYiGvoY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G509EUAvCst/OhEOaa9gJZ+yNH93i2DNLRY9J1ef5xPY5HZ6IoWgtLoja6K9/4vT1
	 /iRRcvxJzfTnGQjfk/dOuDDoX7Ry43FTo3Xfvjz8Gu+k/t6XXnods6tfh5NN1zpqtO
	 71+jTtJZR5JycqRUA7ErRo3CA/Ys81dvbBgU/QYkj3cgq0dx4+5xv23N34t8yUAUTJ
	 nrpeIH8wLH+O4uXCMDH95B0hfD6XLHZWQYPGtbi5ulCN31GCZIYKQMFElWZ5gsQU3w
	 Bj9+3Z0eU9hHKv8wpjBB6nY10zam0LmfQ4TorOJ8s3Pp6no9ogvgAwYc54txNy2Hyx
	 UK72MW5VGQDfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75A52843EE;
	Wed,  3 Sep 2025 20:12:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A3B9111
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 20:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AB0484417
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 20:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gm9U0P9xGDeC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 20:12:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 336AB84346
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 336AB84346
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 336AB84346
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 20:12:02 +0000 (UTC)
X-CSE-ConnectionGUID: nKo77iz3TyePXQAdrCQSig==
X-CSE-MsgGUID: aPggvJviRqGXgr80mW+QBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59325604"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; 
 d="asc'?scan'208";a="59325604"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:12:02 -0700
X-CSE-ConnectionGUID: VQ5ru9lAQjy6lPBSg1yGwA==
X-CSE-MsgGUID: PTKqHRMNSSWW9I4wDIz54g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; 
 d="asc'?scan'208";a="172134660"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:12:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 13:12:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 13:12:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 13:12:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kPWQSzX3bTANrggthAN1mK9iZrc9hEQmiUbiChPFa2/W316T96X7ezRprKWo4pWUMV+1cPTANfT94WFOPkTGA9MK9DZdXpGXQbcbThlDIKM7euemOE9c4G5xv6a5gST33VXQPxS+Miqg9hhEmUssWlR/+2BILazw1D5qlFcJjg9NvNJif+3CqrOBcuup6YS+e/Rj1xOfG731lSd8xksxjRvSRBA6lazSQDYhubpR79u0GcALmYnPlu9jx/HtLXyQ6b1kOMnkbs0SI5FZSEPFVMfNWGnRTLCifMEtkI/P9uJxmfucnCtT7oujTqkFFnDp5Em9GMbQ/IzkShkZw4rNDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QU2lLqSyblcK1Wg8tPoHZRhrBQDNl9yIlu59sYiGvoY=;
 b=Z/5wYQ2GJoNkqfzvQb+XT2UJ4xrY7mH+T+VHZQ621cl+2NE/p3mLHfaorRV52ZFN/JAE+1Z1JDI+tyiWFmCoB1QnUCZI2dhQ583sp2J2zCpNUQileHxJG1zTfOHG5C32gtwFYYrplgBLxUX4/d0MugKrKSAGpULBtzYPDYwIsVKs4se79rKNzUALCWNGmjPitdQZC4d2GllujS4KuyNN2d9nWHqt7YEpxcqOekcqNsXpaThzQyod6uWEcT0JdhRfGwc4sTURkXUzX2tDpxb8y+yRz3Ujp31/G1YOkmDqm+7tY3e1uMJCucui14imDeZtarqPOIRiBqNvxGtVvVr5VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ5PPFBBB839A03.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::84d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.29; Wed, 3 Sep
 2025 20:11:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9073.026; Wed, 3 Sep 2025
 20:11:53 +0000
Message-ID: <6033dd40-8adc-48f4-9acb-be50d992add7@intel.com>
Date: Wed, 3 Sep 2025 13:11:52 -0700
User-Agent: Mozilla Thunderbird
To: <mheib@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <przemyslawx.patynowski@intel.com>, <jiri@resnulli.us>,
 <netdev@vger.kernel.org>, <horms@kernel.org>,
 <aleksandr.loktionov@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20250903190229.49193-1-mheib@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250903190229.49193-1-mheib@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HUinlEh9bsUa3wl0MDjAiJ3F"
X-ClientProxiedBy: MW4PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:303:b4::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ5PPFBBB839A03:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b2d17e7-0390-402f-ae9f-08ddeb261ff3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VE5RTks2UlRYWGwwQUgvdUkxSXJUM05nVjRSbWFxNkVHc0FQTVRDbDBVWWwy?=
 =?utf-8?B?bWhtVkxLSVNpTHBTU0xLOU5rWW9Yc2dkV05ZSWJJeEZEVjE3MG5aSjVCaHZL?=
 =?utf-8?B?ZTZBV3BvbmdnaWp2SG9lRGZsR1ZsY3lZbkI1NmhtVEVwM2l5RjRDTFFqMEZU?=
 =?utf-8?B?a3pIZ2VveXdiTXpkU2J0WEtHNlk3T3FYWDZNT1djRzQxdGl0M2RYTlloa25M?=
 =?utf-8?B?U1p1OU9tUkkvc0M3czl4TGZEYnkxK25Sc2J1WVB0RGVzdGVHZk83Q2ZoU1lh?=
 =?utf-8?B?RGNIR2Y3c09jdFdzekxDUTd6L1N1eGl4UzVDdm5GSGVmOWlyTGFiVGUxQnpp?=
 =?utf-8?B?TVNJUWVYNU1GY1FhUURvTDd4M2pKZEJBdndVMHROTEdRUDdQTUY2MHNMU201?=
 =?utf-8?B?TnRaUDhsVjMyU3NhOVBMdmM1VWFjOUt4R0pJdngzVkttbU10OWRqUFJhQm9P?=
 =?utf-8?B?N291UmttdzhTSEVLNG4wQ3ZSYyttajNQSmpLZ2htV2FvM2Q0NlhuWkZMZzQx?=
 =?utf-8?B?U2NOQ2Z4Q08ybnl0T3hES0hxa0JxU29Zd1FrekRkZExnUHRXTnk2dkQwaWVk?=
 =?utf-8?B?bjBGbW5YWDkzT3VndktMMGtBekg3aDA1RmFNM3VXdWphdTdVRWMyNW9MTnQ4?=
 =?utf-8?B?UTRFbldxakxIVWpiREUyY2VrSGdUSUgrZjBKS3JpenREWElQclZOYUhGTkEv?=
 =?utf-8?B?YkJtREhLcWhudXE1T3pNamVzbmIvOHRud0hBcmltTElxbXhTY2pBaDJxWG9p?=
 =?utf-8?B?NjRvVkNLVlA1cVh2UE52R3VUZEtuei9raFVRS3U2Y1V3bll2U1pueUcrQWdn?=
 =?utf-8?B?Q1VhcEhnVnFRU1ZDUFY5ODd5dFV1Y3lWK2s5NjVnZVZHT0pnRGdXa2FoSTlQ?=
 =?utf-8?B?dXNlNWFyUmJEUzZOS0VQbjBGcnRoSlRFKzFNYW5CZnpxbFN4VkFUMkZMbkJZ?=
 =?utf-8?B?V2t2VzdWNkU5UmtidjVWaEJzb0pFWHltU1FhL3dHWmtkK2VZamx2SUhwU0Q1?=
 =?utf-8?B?bHNiTUM5WGdFVWVMcFZSYXlJVENPVERoL2YvOWV0WXJZRDhSRld1T3F4bURO?=
 =?utf-8?B?WjZtUzh3dGpaRDZJVElRWXZRWC95U3V0S2IyTGRpZjdmV0RJUllIcmpWWFdm?=
 =?utf-8?B?MkNpRmtGaE9CTFFhZjNzMlZIRUF3cGUzZkdkZGhiSjhpcnNReFdvL29ibU92?=
 =?utf-8?B?UHcwTU5kcUxaSVpSbHh3Nm9FSnVDVzlmVkxQTDJCRDJVTHF0NjNiZEpTUkNy?=
 =?utf-8?B?YWI4ZHA0Tnd6cDF1UEJ6dnFFanNPUms5OTJKZGFPNnBBL0hmR3BzQUExOUxJ?=
 =?utf-8?B?MjZtRXIxeW9yU1Rhanh0VDV3d2NqM2JtYlJHT1lMNlFuY1prNEJhTFZpekVH?=
 =?utf-8?B?NzJJTVhOanVGNHVpcE5uUGxwZ1ZuaVphWmN1eEp4VG9pdjB1dXhwYllTZzd1?=
 =?utf-8?B?UzA4elg3NDIwY3ZqdjFqaWhwVHhtS1p3R043T3dQcHVueU44ODdtUEtoZGZY?=
 =?utf-8?B?S1MyMGhkb0lOL1VTNUVHY2VHZURESUppWVgrUjBiTUJPNWFQMVFMT3F2OElu?=
 =?utf-8?B?WWJ6MDU4Sk9SaHFnS1prQzFuUEUxOGRwVVhzaFpvdnFoaDhyUTdHY0VGVU9Y?=
 =?utf-8?B?SWRZTitpdjRQVXpuL044V1YzbFhqVEhzMTdEZjNNK3lnVldaMjI5SVU1QnhD?=
 =?utf-8?B?N0dIUlh4SUNQUlZWWFZjNWtzV2NmcW5raXVEUVVNbStzRzVPQWNzU2N1YzRw?=
 =?utf-8?B?Z0dWZWV4RXE0RTNyVkZpMGVRY3ovdEIrb0pKSTNRdkxLSjRaQ2pFTVFxTEQv?=
 =?utf-8?B?NThUQnVlL012YittbWRkL1V3SmJUWURGQTYraWZjTnNuUlovVm1zWHhWUzdO?=
 =?utf-8?B?RnViSTVPWG5DU0ZGWUwzVGtRTWQ1QmdBNWtpZTV4TFhrdVk3VUw5MDRDa0Qv?=
 =?utf-8?Q?wpJzV+3HAKU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cElJcEwxL25FV21RcDhWZnoxREhzK3lFWDF5MDd5Z2p4UGZZZFI3N1JPdjNm?=
 =?utf-8?B?R1BJUGkvY3B3Qzd1L2ZwdUU5a2RzcENpaFoyc29MOFh6S3A1dHVHcDUrdnFp?=
 =?utf-8?B?WEgvNEdqQjB1ZllWREN5VE5WMXEveTBSRzJjRE9xVDI2dTJMK3oxVExWR1hv?=
 =?utf-8?B?NHJSQWR2OUpiTTNxVWVwa0xydks4YWdJTUpSd29JT0YzOHcwenlCNnVGSHZz?=
 =?utf-8?B?MDVQdHdGYzdJZjZzQ2M3b291WXI1M3NiQ01wMlNHaVY1S0cwUGhscU5aaGE1?=
 =?utf-8?B?VEJxWExUbFo3RkZPbU5xR1BEY1RuODRTRU4wL1pzUGw0ZU44VGp5MkxyTTFJ?=
 =?utf-8?B?V2V4cW1BUTdxYXpGMUZXWTB6dEw4bys5ZGxNdUQrdWV1UStMOWpRaGpZcTZo?=
 =?utf-8?B?WFFwckJRSVVaVGliYmg2RGM4SUtZRzZMTVY0ditsZlY0WDFkcWN2WnRVUWZ5?=
 =?utf-8?B?bVhkYmdKN28vcmVMZmYzb2hEUkYrTll4YzlkQ09jc01Gb3dUbFlNeEw2RzZh?=
 =?utf-8?B?bVA0NVNjWmRURk5EMXllV0JTYlBmZW1YbWNMdy94ZkZIRzhnNkVuSzNlV3l2?=
 =?utf-8?B?MVJvYlpJL0dta2pmSnA4TlVrTlloQ2RyVUhnVXVCcDZyTllnYi9hcTMxdGMr?=
 =?utf-8?B?RkZ3L1hYMlg3c1RzU2w3aHJwWStPcTZ2d1JvMzl5eisxZDFvQ3RTL1AxYzlw?=
 =?utf-8?B?bWNKck9Pb0ZpWk11WExPS2J4TWVIc01XSWdsTGwzR1ZESWxEYXI3Yy92cnlF?=
 =?utf-8?B?cFhCdk5taEd3a2JlNE0rSE1UWThSellNUGdyNzVIWERiNXBVY3VnL0xMT1Y5?=
 =?utf-8?B?Ym0rc2IvS0JWQ1pmS0Uyd1VWREJNdWo4clc3bysrNW51ckVORkluMzNQa3hK?=
 =?utf-8?B?MFcrU3RZZTg2dUJWZTBueGFLN29NYmZUTERQTmNQZ0RwUUFzRi85aURjYmY1?=
 =?utf-8?B?Wk51dWttUWdld1ZrTTl3SDlWTEJVdGVJVHhGTHJEU1lxaHRUcWdGaCtzdTh0?=
 =?utf-8?B?Ulg2dWR0R2U1M1ozQmd5Z2V4ZHFYbnVFQWNvN2s0SzI2UXFrTDBiYVZFajc1?=
 =?utf-8?B?WVU4bVpqVmRMd2Z5Q3RsclJ4VVdpaFIwODNSQ202K2x4UVdRb1BvQWFydTVm?=
 =?utf-8?B?VWlvVkxmU0NkcFR1R2tCYk1HekZYa3VTY3orVEt2LzlwTHBkcWw4R0RUMEFS?=
 =?utf-8?B?b21ZdWZ0c1J1RjVvNFo2d1ZuTWxuUll4dHZlOXQyR25pNUNLc3ZsUDVwUzh4?=
 =?utf-8?B?cFU2NWU3ZEdRUmlOdXVJekxqOGhTSWQ2SU1RZlArNDE5R0F1M05XZHFIcUUw?=
 =?utf-8?B?VHM5WkFOamUvcUdOczd0RHdrU1BydEFQVjBuZWowQ0twVDB5TXFZb2ZSbGo1?=
 =?utf-8?B?emV1NHRJZ3MrYUFQeHA0UTlJTFdyY3UyTmo3QzhLK1JEdlNVRUdFM254OU1K?=
 =?utf-8?B?OWsyVTU4ZzRKRkdZNk84Z2tSbU5vd1FydGRUSzlNYTBUTldiUVRsUlJmL2JV?=
 =?utf-8?B?aE9Zd3J1Rnh6QUJITWthTEtkOEs2QXNBNjMybXlNNWQyNE0rbG4wL2hlVGMr?=
 =?utf-8?B?Ni9pWmpRenpzSXN5MVlUYm5EOUtZd2ZPdjZDbW1hYTJNQTRIcTBUVlowMjV1?=
 =?utf-8?B?bURmdUMwNnRYWnRWcHlzOTBDcGtWZXdkM214djNCRlNNbFVYN1JxTGNYY29G?=
 =?utf-8?B?ckxUcTdqb0R3ZGdnajRWMFhnSjNEdFMzbTNZaWFDaElnL1gyQVFadW43dFpD?=
 =?utf-8?B?M0JYc3JHYVgrbE9nOXN2QmZQenlqcjFmWUV2VjlCOXZ5R0NHNU9zVmF5c2Jn?=
 =?utf-8?B?M3p1T2pGSFRSSERnOTVIQ1NTSTMrTnUyRys1SzkrdG9JS1o5a1Y3TUZ3OXlp?=
 =?utf-8?B?M21DSFp4MEhQSWMvMlVLbHR2bWFKc2s3M3FsMmpXNU5YYW5neG1DL2FyUWVV?=
 =?utf-8?B?bVlrcE10cWJLTjc0MFFEWkJ3aUVFN1N1TmM4MWNwV2QxQ0F6OWRDczZnVG94?=
 =?utf-8?B?b2puWVZaUWxTUVpWbWY1TWFaYm9zdnNTa1hqK0dzemtMR25Lby81dnBqaEpm?=
 =?utf-8?B?TG1xWVRBaXh3Nm5LRzM1a1A1WEJSRHZka3I0cGNCeXFvNUkzanplcjdvS2Mx?=
 =?utf-8?B?TlYwbm8vRkhsZ0NkVFdJMmFSY1hpNUhPYmR0SHYxR2hJMHRJTGxReXZ1a3lP?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b2d17e7-0390-402f-ae9f-08ddeb261ff3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2025 20:11:53.5131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cOTME/kMc3JRbJ1gvMBsYDaRAFyIHB9YeTeXWBHcLUsZcifMuBkA8ErbOMUBO63Qx4ZHoTbgQb3s42VZL7tUc3EMnEOXaOWYGjM+xdMqwWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFBBB839A03
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756930323; x=1788466323;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=QU2lLqSyblcK1Wg8tPoHZRhrBQDNl9yIlu59sYiGvoY=;
 b=Bp6Kp/qbFlrqhURBoyfgHbxfzx+KQVW85Stm1Z/4uFHjYjOhxOBHkVAB
 8XLuxidxJUnDKWaa89chf2/D0QUWFmVLS7y/4cJR2yocO81HtmEywTJOJ
 gJvEUDAE2UHt0N9hA0FPhzr5hRu9OqwUEzKa/rRHG181IuN+wXKCugRBX
 PHQzGynHuBR8PG/7JZXzAq9wxQOlAkbGchSLEJRrza6pUDOexafEePr6I
 vL1htfipLueV1xRP2DR8cbDrWnbplsldsmrnAcIIEj48B/apktIBx7efI
 B1Yw+vxGzWJXmqrm7ZQkMR7bx9jJVH40yUk0vUP3x5c+saWxjkZWD53DM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bp6Kp/qb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next, v2,
 1/2] devlink: Add new "max_mac_per_vf" generic device param
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

--------------HUinlEh9bsUa3wl0MDjAiJ3F
Content-Type: multipart/mixed; boundary="------------N2xmTzpgXn6QTXeGv7NzKGsg";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: mheib@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <6033dd40-8adc-48f4-9acb-be50d992add7@intel.com>
Subject: Re: [PATCH net-next,v2,1/2] devlink: Add new "max_mac_per_vf" generic
 device param
References: <20250903190229.49193-1-mheib@redhat.com>
In-Reply-To: <20250903190229.49193-1-mheib@redhat.com>

--------------N2xmTzpgXn6QTXeGv7NzKGsg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/3/2025 12:02 PM, mheib@redhat.com wrote:
> From: Mohammad Heib <mheib@redhat.com>
>=20
> Add a new device generic parameter to controls the maximum
> number of MAC filters allowed per VF.
>=20
> While this parameter is named `max_mac_per_vf`, the exact enforcement
> policy may vary between drivers. For example, i40e applies this limit
> only to trusted VFs, whereas other drivers may choose to apply it
> uniformly across all VFs. The goal is to provide a consistent devlink
> interface, while allowing flexibility for driver-specific behavior.
>=20

Would it make more sense to apply the limit to all VFs if set, and apply
the default variable behavior for when its unset? This would avoid the
need to have this much flexibility and latitude for each driver.

It seems like that wouldn't be too difficult.

--------------N2xmTzpgXn6QTXeGv7NzKGsg--

--------------HUinlEh9bsUa3wl0MDjAiJ3F
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLihCAUDAAAAAAAKCRBqll0+bw8o6HMd
AP4t5FRIdu79TpwiyO9vXN467oxDBpiAtinArGmUiHF/7AD/ccNkieGEliHa3DPYb2LuzcqS/EuP
L3mg/ioU8GNFvAg=
=dlNC
-----END PGP SIGNATURE-----

--------------HUinlEh9bsUa3wl0MDjAiJ3F--
