Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 935E5A41CD4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Feb 2025 12:31:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F66940613;
	Mon, 24 Feb 2025 11:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K9mRB9kG6a6R; Mon, 24 Feb 2025 11:31:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3469F40630
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740396707;
	bh=3+jWkl69kQqvgSQCLCpkUZiAWYWUOhQxZwl9Khss5DI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dcd28bsVfe/3SFljWCvRMeic24OrpLZzF40FEWrFoDTVfewa6lH/KNRBDixxeTJGs
	 qXig8oJ6AqZozTo21JUp1tOLhHnfZ7XwHYdKILfew/rr0Y/OJK/CJ1UOOX2i3A9vRu
	 DnObdxt7NIAiOvd3fIMTMkugPCW73PmHmEZSVFKQT1E2yXNkw0EMDbSNwwgMxq6lBO
	 LKzzbNkGwgJuGU96jINUMIAVZ9mMEqH1oWIxj+JLTPIOuvzQolTd1zLihCFVV74G56
	 olsKkCMaJTMBXUnOwhfPoKgJdZfwBITSJFcr2z9H0kHBEqNPUpBE7kn9mueuIjKwwV
	 fThr2WntOiAfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3469F40630;
	Mon, 24 Feb 2025 11:31:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AEFDB88
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3972A40606
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:31:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_4lJPgmwoqe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 11:31:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5AD884057E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AD884057E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AD884057E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 11:31:43 +0000 (UTC)
X-CSE-ConnectionGUID: yLdFdxzwRUeaqJnz6wlEXQ==
X-CSE-MsgGUID: BEOB6OSwRb+jzzrt7d6zJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="51774694"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="51774694"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 03:31:42 -0800
X-CSE-ConnectionGUID: tqUs5uDQRimZPExuUY5cXA==
X-CSE-MsgGUID: P/Vea9I1QQSSFJy73S/usQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="121004068"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Feb 2025 03:31:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Feb 2025 03:31:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 03:31:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 03:31:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R7drzyO8pCpa6DkLei6gm2i2Up9fqa2obYkk1X8keLo/xRVkVeeMy0jfO7hn9H0vkkynDdZH7gFT0cFx2etWCyhfBpSzl0yFTGspbCKXkOSnmwmai4mIBCQ181bVFlJc+/P99ZeT+euHki+YmM487H7LWc3IByOH5Nl/C88M7zGm0rrRi4rxRITr0DeVkYjZzLcCVz+XSg18CVoEONCWb1iQ6NoaNw/5vfrRBFLGK3gvl1sYsX3IOUQV+U029NaNh9bI0us5H3BZJzr2+08UpIq7AtsI5Z5CPZ57aGjffLdszt6Osr895eas71KsCBzNmzLk6Apgh9B1AkoozPAyxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+jWkl69kQqvgSQCLCpkUZiAWYWUOhQxZwl9Khss5DI=;
 b=kzwDOVz7U8AyEUCTCLu7BGYUAooEs8yrESquki3JerewVzVt5RdEy+umLfhe3BcFCOjCwMEUuJ7Bpl8KJxYLur+gKpxlMo70AtcJJtqCHYy1Le5cdx4YxBE0/rgMVnASVR/fJEvuFufBpbbfLPtv+CgUyY1TtOh06Ynzossop9H3OywgcjpO3ydOjy1jWOxBj5LDoEoKZNIiKMO2JCopcIjJDtskfBqNcmnUxZbONNw7maYwTRDUhGRDfZHUo2u34fYwNIMr2NN2RddiUojGcFnLkLhDNQfPRGUd1on0ZRiobuCoTsW/1kQ/zZFPWefD+xthvpxfIop/FVJQx/djYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 11:31:35 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 11:31:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
 MQPRIO offloading
Thread-Index: AQHbhqO1CLt7PlaQW0OksGD0TKWoKrNWUYkg
Date: Mon, 24 Feb 2025 11:31:35 +0000
Message-ID: <SJ0PR11MB5866961675179ABD23E97B2AE5C02@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
In-Reply-To: <20250224-igc_mqprio_tx_mode-v2-1-9666da13c8d8@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: dc2b94d6-0fcd-41b8-6888-08dd54c6cbc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TXJGeDFmcjdVRGQvTWNCbmU1ZHFxUnhhekJkRnhURnI2VE5EMDQ4R2lrTlJW?=
 =?utf-8?B?VDVVUTlSSys2TmFKRnNmL0xZUTVrcno4QWNhRzBiYlFnRDdyVWZYR3FMRzFB?=
 =?utf-8?B?cThmaWthb3IzZlR0Ky9QL0JWWFBaYkUwUS9UWHlXTFZmSzJDNVFSR2t0UmxZ?=
 =?utf-8?B?amVibmNIQk5xTGk5RXJ0dllyTWttQWpEcmVoaFFuUE5pVzdyRER0SHBRR1c2?=
 =?utf-8?B?MFQ0YkhlSDFjV2YyR1l1bFM2Z2RhL0dHbFlaSFdkOFNwRnlmdHFma005T3F1?=
 =?utf-8?B?a2o1WVlmYVlWVmR4OXhyY3ZveTJaZEFIcjlCVTc5UTk1RnZJa1FXNWVsS1JN?=
 =?utf-8?B?NStSQThlQ0ZJSWphVGF3Q1NSRW96R3d0N0hCZUVNYmk1NmNpWThvODhFSzU1?=
 =?utf-8?B?aHJlNnByM0o4NkZQKzJJRTVNT1lmOWV3MXRqTjlWUm1tYVhQNE9peXo4SENN?=
 =?utf-8?B?UkdwcWh0dDE0bEpLdnBPOWFrWDllUDYyWkY1WjBLZS9rN2FnZVJRd2xlbGhq?=
 =?utf-8?B?V3F1NjMyM0o3WHJsMThMeDdpUGNGY29oaVU3QVByWUhja293OXZ2U3JPOHd0?=
 =?utf-8?B?MGpUbUQ0bWs4bXlQclpJOEVWZGZ0RE4vVkZySHlhTnpmTno3QkU1NjMvUFNV?=
 =?utf-8?B?bTdmVXFKU3JLU2Q0OG9OWHArMXhMM2l1cjlPbi9FSmluRUZUSWNPb2tqZHM1?=
 =?utf-8?B?c3NzQjZXOHVxZVVLMm8vZUlCWmlEa2VYam5zNUR3UTRXSzdWTngyMzhUejQv?=
 =?utf-8?B?ODc1UUpLd3JIUWRIUE9qU0FGWXB1YmtzeVMwb3VLdlhja0JVaVR6K1FvNVBE?=
 =?utf-8?B?WGVMYWJIVjdWSUFmNEZLNXJYU2hLdDVoUU5ONzZEZDVCcWZGTUF6TWtzUVRr?=
 =?utf-8?B?cHkwODVFNmk1cjhIbVBSa0x3OEtUK09oNCs3bFlqUklnL2tWTW53NWlhSi9I?=
 =?utf-8?B?aENMdkdDN3NLYWhXUlFQT2J2bU1KQVFlejJ3eE81RnpnY1F2RWIzNkt4NmJq?=
 =?utf-8?B?S3NWUHA1QXYyUFM4NXFocHJRK3BNemRXZ2hpemhrU244RVdYUVBJMWozWmJ3?=
 =?utf-8?B?QUhkbjBwTnRCNzRUUGVyM3RDdGQ5OXBnWVFLMnhvckVrMG9VVmlaSkIyRWd3?=
 =?utf-8?B?Vy82TlI1Z0NGTkdWV2pFN2ZOVU14NUxzQVIxRmpDS09zbFV6d1JZZEd1dXZY?=
 =?utf-8?B?MmQ1THYwbXl0bk5NRmhVNnFVeHVOeWlYcldvMm9iOUNJa1VsK1FXQjVLTFA0?=
 =?utf-8?B?eTgxcExJL2hXcVJhWVBsYXZFWnlZU1RKR2ZZY1luczNJVlA3cXBOMys4U00x?=
 =?utf-8?B?c2ZsY05wbzNHUzltRG8zaFVydUZpZWhOclZrTkN4anVYdXViTDl1UHN2dFds?=
 =?utf-8?B?aGlhczdqM0d3UHo2K1A4aVoxSTZ0UlZBZEltdVgxeENPTDU5VExQaVgyTG51?=
 =?utf-8?B?LzFPOFhGUjFlSVBXQVlhMi9vNFVkNWRNMkNqUDRQVEFZanZlYWFYcGt2Q0F3?=
 =?utf-8?B?KzRhczMxblpmU1pvU3NDU2tHOEl2ZzJJNEhFN1ZZb3lxVHlBdm11L2hsbHNh?=
 =?utf-8?B?VGlwWDFRVWJ4MlVwNWVPbW9qUmdlT1FrZnRVcGhqU0Q4d1d5TmpOUE1GMXZY?=
 =?utf-8?B?NzRnck5FTUdCUVF0VUdQV3BHTW1CNlZEdmsrVzR1bG9vK0dtajc2R1VMZVUw?=
 =?utf-8?B?dEtKbzBrdGVMTnREZ3B2Z2JIcXo4NXpZWm13eCtaK05MRXIrdTdqSDBBVEtV?=
 =?utf-8?B?RWpLYWxHL2xvaVp1Q2I2RVdlY2t1STdBVHdoMXIrcEJNYTdmNGNXSmV5Vjhp?=
 =?utf-8?B?Tm1ZNkVBU1Fpd20xUzV1UTMvY1N4bGVDaXFsWUVZemN1OFlISnZ2cUdYd2ZR?=
 =?utf-8?Q?sRYm2FXy6/SJN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHpvQ01nWUNtYnBYZW9LaFlKbTY2MDhra3k4V0Q5aFdEUDduWjE2VnNGaTFO?=
 =?utf-8?B?eWtOeUdFeG9yWW5BbFVtMkdDcDJSaUhuMTBWZFhYZXArMkpuTkZpWEQrc0lD?=
 =?utf-8?B?c2NJNS9lN0tkamtVWFNYTnFJZC9Kekx0aVgzQ3lUbW5FU3JraTF3WHNxZytz?=
 =?utf-8?B?aWRVTFZpZjJpZmo0NVNVN2dMQ09mVVZmTG1BQ3ZhWWdWYjJqRHlwZGZxbVZI?=
 =?utf-8?B?TW9oNnYxNnhYU2JwaVhObWxNZ2loTERLallMWnlaUUdQdm9VNG8vb2FYSGs5?=
 =?utf-8?B?MkVVeWtzc0RxVWYzUTRzaXo4VVBEblQvUS9YV1RwYU9LcEg3ZzdqSVcyc2lt?=
 =?utf-8?B?bzBMYWdTbVo0SXRtK2xmQ0ZkQllQY2Y5dldPeDlxZmxZN2lmcFJsL01kOHZJ?=
 =?utf-8?B?djFmbFJzRmM4MVhnaGpYSXVlTm9WUjhmTWtYNFBwVU9Fc09wTklLMEcrc0pD?=
 =?utf-8?B?RzhOT3hTekFKeDJvNnpSYTN6c0EvR2V6N0Jtd1lONnhNRTNNLzRjOTZSU05w?=
 =?utf-8?B?eDVHTmIrMGtpeFd1Z1lFbjBsRGdUd1R4LzdCdzM4Wk5oVGUxRE9WQnVSWFYv?=
 =?utf-8?B?ejVuNXdRM2FqU0hGSUpFUmV5USticHRraWpheldBdWRvdFY2Q3lDendDTkpK?=
 =?utf-8?B?UzJ4YndpQ0Z4bk5qYXBYeE1oSjV6MXlKa1lGRHZOa1BXUGdpZ3lrS0NYbHlt?=
 =?utf-8?B?MDQ1ZjlpM2FxMGJYTXhoWS9UVzZCdVN0ZVk2WTRWMWJxM01KV3NyZk9melhT?=
 =?utf-8?B?MDVQMkU2WVNKV1JIb3lnZEV5THNlZHRUdllPVzFaTE1iK242bUNWTDJHbnVZ?=
 =?utf-8?B?NnJtYTZnaDZsc0MxM2UwZ3VhZVF3cUI3ZzhyMzlUMktmZEt1N2F1aWRGMUxG?=
 =?utf-8?B?OEcrNTRUZWtiUmsxR21LcDVLRnBqeXFhRGRDY1BaditnK0plMUNCRE5kRlg1?=
 =?utf-8?B?SnpIOFQvVlYydUQ2N0EvRGlGYlJRRWQxL0JldS9uUDRFVU5BQTY0MmZWZW5r?=
 =?utf-8?B?a2Z6dkFMbkk5b2VVR21kWnNBaEtPYlk4ejR5VzFtaDRLYkV1VW51MDJrK003?=
 =?utf-8?B?a1c4UDhUdTFiZWl4RkhqMVVPajlrRFZLVThrSmxUSk5VZE5hUnZudXhCNDFP?=
 =?utf-8?B?UVcvRUhXTlpOV3AwYkpPakRuS0JURVh0TyswQzF5T0xwQ2dlVDhXZmpDQnJZ?=
 =?utf-8?B?YmlhdjdzYmNnakV6czZIamxFTUJEUmRHSEpSODhFeFFRUTFQdHFESlRiZVVw?=
 =?utf-8?B?MVJFQzN5WDFzdDhxck5GSXdDelpMd3hjRXJuYlJ5UTlieGJEakFITlpEczhy?=
 =?utf-8?B?Ylo5QnNoeW9YK2NBRTA5NXlOcGhpbHdiWDFSZ09YUVZrRzI2dlhNUVY5bE1n?=
 =?utf-8?B?bEJRTmg2ZVBMN0NkT0VsWGxDakdBZllReEJjR2tCVVR1eStWenBGR21NTmZZ?=
 =?utf-8?B?SWFIK1MvNXRMRnRLd2FYMEl3bEtHVERNN0xsa2doUzVPNm1kY2w4Uzg1ZWJx?=
 =?utf-8?B?UW55VUd6MDVZRDhxOWphL013djFtaVh1TGlEMjZKYmZ2WnUzK2xzL0NtS3Ev?=
 =?utf-8?B?QXVNQk5iRXRZZXJrdGFFUDVjcWozT2RYOEc3eFo0VEJzblozdUlCaUdKY21n?=
 =?utf-8?B?ZUJNK0ZBbWoydmlPUU12QmlkYThJTWVCNUZqOVJsUmNoTDdSQnpJN2pHWlh3?=
 =?utf-8?B?UjBrdFVKdXAyWW1WWTNWUjdsa1dwYkIvUytpdUcvTXNHdTFMZEhZcTR2NnVZ?=
 =?utf-8?B?aVBic25UbU9CTU9JMmNqMjZBbnpzMkVDZGxpaW00ejJhejl0aVVHbnB1WlFK?=
 =?utf-8?B?aVJXU09QU2NlemlvcW53Wms0a3o0NXNMdi9yVXMwZkVRcklSQXFWbkl5anhV?=
 =?utf-8?B?SHNSeHNMejhXMG5sNWovRjRJWXJqSWNQajlYb1FJVW40ZGtSSHJ1aE90ODZz?=
 =?utf-8?B?WFhKdTNIMHpMT3dSVUdZN3NEVG1BTTNSRzFDVmdNYkNVb2E0Y3RXdFMzNUJ3?=
 =?utf-8?B?Ym1tbk5IbUN2cFIwTUUwK0xKdUJWRWNPblhqcWFzU0NCSTZTV3kyTFZFa21j?=
 =?utf-8?B?ajJaZVA1OGZSSGNKUkVwN1BlSm9YSHo0RXFVSU4vekdJNGgzNTRNSU9sWUJM?=
 =?utf-8?B?bFdwTDF2Qmk5cXZSQW5sVDg4U21CTnVpTnA3czI2cFBkUWNvbTU0OXZheTdz?=
 =?utf-8?B?bFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc2b94d6-0fcd-41b8-6888-08dd54c6cbc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2025 11:31:35.5104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f42rnxxMToVFbqGZtFIZnAIqPqkilliIUTPhkK9QYz+mO2JuSoU4JcOZqZScQ42tTdDGxNvVozjfD9ynKk2jFoNhgr6KK2tgkvdU4NZt9og=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740396703; x=1771932703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3+jWkl69kQqvgSQCLCpkUZiAWYWUOhQxZwl9Khss5DI=;
 b=k92A+0I6A3nttZtxJqoe5abX26rt9OE+6EiGAVWDLVnY9AWGQcq5MVdb
 pIqJL7eLl60vPVBqycS5Smf+iv6g1+a4A/VkQKtssMVkjCB7FL7mGZEjK
 ned6MajVTp3zM67hd7PfYoWQv/FEAllfnR+hE2pA9QkAkwCWNtuOP9Bql
 utsFq/3RagGDiVtymKyLdqrAFUTubWtaiHcMpesf2pffj/CtAERlPa9QS
 6DdRhrRyjSBwf9QwZqUa80pgdBRc4F0j9kXet1oYRENiOnUQ96aw05zmJ
 ayktlQUEYuM+KDRkp2e/gsx8l4+z+fc683LO+8LbQqIUIZqHNM6BxdbiX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k92A+0I6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Change Tx mode for
 MQPRIO offloading
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gS3Vy
dCBLYW56ZW5iYWNoDQo+IFNlbnQ6IE1vbmRheSwgRmVicnVhcnkgMjQsIDIwMjUgMTE6MDUgQU0N
Cj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtp
dHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBGYWl6
YWwgUmFoaW0NCj4gPGZhaXphbC5hYmR1bC5yYWhpbUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBB
bmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxk
YXZlbUBkYXZlbWxvZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsg
SmFrdWINCj4gS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlA
cmVkaGF0LmNvbT47IFNlYmFzdGlhbg0KPiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRy
b25peC5kZT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOw0KPiBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBLdXJ0IEthbnplbmJhY2ggPGt1cnRAbGludXRyb25peC5kZT4NCj4gU3Vi
amVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYyXSBpZ2M6IENoYW5nZSBU
eCBtb2RlIGZvcg0KPiBNUVBSSU8gb2ZmbG9hZGluZw0KPiANCj4gVGhlIGN1cnJlbnQgTVFQUklP
IG9mZmxvYWQgaW1wbGVtZW50YXRpb24gdXNlcyB0aGUgbGVnYWN5IFRTTiBUeCBtb2RlLiBJbg0K
PiB0aGlzIG1vZGUgdGhlIGhhcmR3YXJlIHVzZXMgZm91ciBwYWNrZXQgYnVmZmVycyBhbmQgY29u
c2lkZXJzIHF1ZXVlDQo+IHByaW9yaXRpZXMuDQo+IA0KPiBJbiBvcmRlciB0byBoYXJtb25pemUg
dGhlIFRBUFJJTyBpbXBsZW1lbnRhdGlvbiB3aXRoIE1RUFJJTywgc3dpdGNoIHRvDQo+IHRoZSBy
ZWd1bGFyIFRTTiBUeCBtb2RlLiBJbiBhZGRpdGlvbiB0byB0aGUgbGVnYWN5IG1vZGUsIHRyYW5z
bWlzc2lvbiBpcw0KPiBhbHdheXMgY291cGxlZCB0byBRYnYuIFRoZSBkcml2ZXIgYWxyZWFkeSBo
YXMgbWVjaGFuaXNtcyB0byB1c2UgYSBkdW1teQ0KPiBzY2hlZHVsZSBvZiAxIHNlY29uZCB3aXRo
IGFsbCBnYXRlcyBvcGVuIGZvciBFVEYuIFNpbXBseSB1c2UgdGhpcyBmb3IgTVFQUklPDQo+IHRv
by4NCj4gDQo+IFRoaXMgcmVkdWNlcyBjb2RlIGFuZCBtYWtlcyBpdCBlYXNpZXIgdG8gYWRkIHN1
cHBvcnQgZm9yIGZyYW1lIHByZWVtcHRpb24NCj4gbGF0ZXIuDQo+IA0KPiBXaGlsZSBhdCBpdCBs
aW1pdCB0aGUgbmV0ZGV2X3RjIGNhbGxzIHRvIE1RUFJJTyBvbmx5Lg0KPiANCj4gVGVzdGVkIG9u
IGkyMjUgd2l0aCByZWFsIHRpbWUgYXBwbGljYXRpb24gdXNpbmcgaGlnaCBwcmlvcml0eSBxdWV1
ZSwgaXBlcmYzDQo+IHVzaW5nIGxvdyBwcmlvcml0eSBxdWV1ZSBhbmQgbmV0d29yayBUQVAgZGV2
aWNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxpbnV0cm9u
aXguZGU+DQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0KPiAtIEFkZCBjb21tYSB0byBjb21taXQg
bWVzc2FnZSAoRmFpemFsKQ0KPiAtIFNpbXBsaWZ5IGlmIGNvbmRpdGlvbiAoRmFpemFsKQ0KPiAt
IExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTAyMTctaWdjX21xcHJp
b190eF9tb2RlLXYxLTEtDQo+IDNhNDAyZmUxZjMyNkBsaW51dHJvbml4LmRlDQo+IC0tLQ0KPiAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oICAgICAgfCAgNCArLS0tDQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYyB8IDE4ICsrKysrKysrKysr
KystDQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMgIHwgNDAgKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCA0MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjLmgNCj4gaW5kZXgNCj4gY2QxZDdiNmMxNzgyMzUyMDk0ZjY4NjdhMzFiNjk1OGM5
MjliYmJmNC4uMTZkODViZGY1NWE3ZTljNDEyYzQNCj4gN2FjZjcyN2JjYTZiYzcxNTRjNjEgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaA0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgNCj4gQEAgLTM4OCwxMSArMzg4
LDkgQEAgZXh0ZXJuIGNoYXIgaWdjX2RyaXZlcl9uYW1lW107DQo+ICAjZGVmaW5lIElHQ19GTEFH
X1JYX0xFR0FDWQkJQklUKDE2KQ0KPiAgI2RlZmluZSBJR0NfRkxBR19UU05fUUJWX0VOQUJMRUQJ
QklUKDE3KQ0KPiAgI2RlZmluZSBJR0NfRkxBR19UU05fUUFWX0VOQUJMRUQJQklUKDE4KQ0KPiAt
I2RlZmluZSBJR0NfRkxBR19UU05fTEVHQUNZX0VOQUJMRUQJQklUKDE5KQ0KPiANCj4gICNkZWZp
bmUgSUdDX0ZMQUdfVFNOX0FOWV9FTkFCTEVECQkJCVwNCj4gLQkoSUdDX0ZMQUdfVFNOX1FCVl9F
TkFCTEVEIHwgSUdDX0ZMQUdfVFNOX1FBVl9FTkFCTEVEIHwNCj4gCVwNCj4gLQkgSUdDX0ZMQUdf
VFNOX0xFR0FDWV9FTkFCTEVEKQ0KPiArCShJR0NfRkxBR19UU05fUUJWX0VOQUJMRUQgfCBJR0Nf
RkxBR19UU05fUUFWX0VOQUJMRUQpDQo+IA0KPiAgI2RlZmluZSBJR0NfRkxBR19SU1NfRklFTERf
SVBWNF9VRFAJQklUKDYpDQo+ICAjZGVmaW5lIElHQ19GTEFHX1JTU19GSUVMRF9JUFY2X1VEUAlC
SVQoNykNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
bWFpbi5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4g
aW5kZXgNCj4gMzA0NDM5MmU4ZGVkODYxOTQzNDA0MGI5Y2NhYTZiMWJhYmRiZjY4NS4uMGY0NGIw
YTZjMTY2YWU4YWE3OTgNCj4gOTNlYTg3ZjcwNmJlNWQ5NDM5N2MgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+IEBAIC02Njc4LDEzICs2Njc4LDE0
IEBAIHN0YXRpYyBpbnQgaWdjX3Rzbl9lbmFibGVfbXFwcmlvKHN0cnVjdA0KPiBpZ2NfYWRhcHRl
ciAqYWRhcHRlciwNCj4gIAkJCQkgc3RydWN0IHRjX21xcHJpb19xb3B0X29mZmxvYWQgKm1xcHJp
bykgIHsNCj4gIAlzdHJ1Y3QgaWdjX2h3ICpodyA9ICZhZGFwdGVyLT5odzsNCj4gLQlpbnQgaTsN
Cj4gKwlpbnQgZXJyLCBpOw0KPiANCj4gIAlpZiAoaHctPm1hYy50eXBlICE9IGlnY19pMjI1KQ0K
PiAgCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+IA0KPiAgCWlmICghbXFwcmlvLT5xb3B0Lm51bV90
Yykgew0KPiAgCQlhZGFwdGVyLT5zdHJpY3RfcHJpb3JpdHlfZW5hYmxlID0gZmFsc2U7DQo+ICsJ
CW5ldGRldl9yZXNldF90YyhhZGFwdGVyLT5uZXRkZXYpOw0KPiAgCQlnb3RvIGFwcGx5Ow0KPiAg
CX0NCj4gDQo+IEBAIC02NzE1LDYgKzY3MTYsMjEgQEAgc3RhdGljIGludCBpZ2NfdHNuX2VuYWJs
ZV9tcXByaW8oc3RydWN0DQo+IGlnY19hZGFwdGVyICphZGFwdGVyLA0KPiAgCWlnY19zYXZlX21x
cHJpb19wYXJhbXMoYWRhcHRlciwgbXFwcmlvLT5xb3B0Lm51bV90YywNCj4gIAkJCSAgICAgICBt
cXByaW8tPnFvcHQub2Zmc2V0KTsNCj4gDQo+ICsJZXJyID0gbmV0ZGV2X3NldF9udW1fdGMoYWRh
cHRlci0+bmV0ZGV2LCBhZGFwdGVyLT5udW1fdGMpOw0KPiArCWlmIChlcnIpDQo+ICsJCXJldHVy
biBlcnI7DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVtX3RjOyBpKyspIHsN
Cj4gKwkJZXJyID0gbmV0ZGV2X3NldF90Y19xdWV1ZShhZGFwdGVyLT5uZXRkZXYsIGksIDEsDQo+
ICsJCQkJCSAgYWRhcHRlci0+cXVldWVfcGVyX3RjW2ldKTsNCj4gKwkJaWYgKGVycikNCj4gKwkJ
CXJldHVybiBlcnI7DQo+ICsJfQ0KPiArDQo+ICsJLyogSW4gY2FzZSB0aGUgY2FyZCBpcyBjb25m
aWd1cmVkIHdpdGggbGVzcyB0aGFuIGZvdXIgcXVldWVzLiAqLw0KPiArCWZvciAoOyBpIDwgSUdD
X01BWF9UWF9RVUVVRVM7IGkrKykNCj4gKwkJYWRhcHRlci0+cXVldWVfcGVyX3RjW2ldID0gaTsN
Cj4gKw0KPiAgCW1xcHJpby0+cW9wdC5odyA9IFRDX01RUFJJT19IV19PRkZMT0FEX1RDUzsNCj4g
DQo+ICBhcHBseToNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yy9pZ2NfdHNuLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5j
DQo+IGluZGV4DQo+IDFlNDQzNzRjYTFmZmJiODZlOTg5MzI2NmM1OTBmMzE4OTg0ZWY1NzQuLjdj
MjhmM2U3YmI1NzZmMGU2YTIxYzgNCj4gODNlOTM0ZWRlNGQ1MzA5NmY0IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX3Rzbi5jDQo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfdHNuLmMNCj4gQEAgLTM3LDE4ICszNywxMyBA
QCBzdGF0aWMgdW5zaWduZWQgaW50IGlnY190c25fbmV3X2ZsYWdzKHN0cnVjdA0KPiBpZ2NfYWRh
cHRlciAqYWRhcHRlcikgIHsNCj4gIAl1bnNpZ25lZCBpbnQgbmV3X2ZsYWdzID0gYWRhcHRlci0+
ZmxhZ3MgJg0KPiB+SUdDX0ZMQUdfVFNOX0FOWV9FTkFCTEVEOw0KPiANCj4gLQlpZiAoYWRhcHRl
ci0+dGFwcmlvX29mZmxvYWRfZW5hYmxlKQ0KPiAtCQluZXdfZmxhZ3MgfD0gSUdDX0ZMQUdfVFNO
X1FCVl9FTkFCTEVEOw0KPiAtDQo+IC0JaWYgKGlzX2FueV9sYXVuY2h0aW1lKGFkYXB0ZXIpKQ0K
PiArCWlmIChhZGFwdGVyLT50YXByaW9fb2ZmbG9hZF9lbmFibGUgfHwgaXNfYW55X2xhdW5jaHRp
bWUoYWRhcHRlcikgfHwNCj4gKwkgICAgYWRhcHRlci0+c3RyaWN0X3ByaW9yaXR5X2VuYWJsZSkN
Cklzbid0ICBzZXF1ZW5jZSBvZjoNCmlmIChhZGFwdGVyLT50YXByaW9fb2ZmbG9hZF9lbmFibGUg
fHwgYWRhcHRlci0+c3RyaWN0X3ByaW9yaXR5X2VuYWJsZSB8fCBpc19hbnlfbGF1bmNodGltZShh
ZGFwdGVyKSkNCmZhc3RlciBzdGF0aXN0aWNhbGx5Pw0KDQoNCj4gIAkJbmV3X2ZsYWdzIHw9IElH
Q19GTEFHX1RTTl9RQlZfRU5BQkxFRDsNCj4gDQo+ICAJaWYgKGlzX2Nic19lbmFibGVkKGFkYXB0
ZXIpKQ0KPiAgCQluZXdfZmxhZ3MgfD0gSUdDX0ZMQUdfVFNOX1FBVl9FTkFCTEVEOw0KPiANCj4g
LQlpZiAoYWRhcHRlci0+c3RyaWN0X3ByaW9yaXR5X2VuYWJsZSkNCj4gLQkJbmV3X2ZsYWdzIHw9
IElHQ19GTEFHX1RTTl9MRUdBQ1lfRU5BQkxFRDsNCj4gLQ0KPiAgCXJldHVybiBuZXdfZmxhZ3M7
DQo+ICB9DQo+IA0KPiBAQCAtMTU3LDE2ICsxNTIsMTIgQEAgc3RhdGljIGludCBpZ2NfdHNuX2Rp
c2FibGVfb2ZmbG9hZChzdHJ1Y3QNCj4gaWdjX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+ICAJd3IzMihJ
R0NfUUJWQ1lDTEVUX1MsIDApOw0KPiAgCXdyMzIoSUdDX1FCVkNZQ0xFVCwgTlNFQ19QRVJfU0VD
KTsNCj4gDQo+IC0JLyogUmVzZXQgbXFwcmlvIFRDIGNvbmZpZ3VyYXRpb24uICovDQo+IC0JbmV0
ZGV2X3Jlc2V0X3RjKGFkYXB0ZXItPm5ldGRldik7DQo+IC0NCj4gIAkvKiBSZXN0b3JlIHRoZSBk
ZWZhdWx0IFR4IGFyYml0cmF0aW9uOiBQcmlvcml0eSAwIGhhcyB0aGUgaGlnaGVzdA0KPiAgCSAq
IHByaW9yaXR5IGFuZCBpcyBhc3NpZ25lZCB0byBxdWV1ZSAwIGFuZCBzbyBvbiBhbmQgc28gZm9y
dGguDQo+ICAJICovDQo+ICAJaWdjX3Rzbl90eF9hcmIoYWRhcHRlciwgcXVldWVfcGVyX3RjKTsN
Cj4gDQo+ICAJYWRhcHRlci0+ZmxhZ3MgJj0gfklHQ19GTEFHX1RTTl9RQlZfRU5BQkxFRDsNCj4g
LQlhZGFwdGVyLT5mbGFncyAmPSB+SUdDX0ZMQUdfVFNOX0xFR0FDWV9FTkFCTEVEOw0KPiANCj4g
IAlyZXR1cm4gMDsNCj4gIH0NCj4gQEAgLTIwNiwzNyArMTk3LDEwIEBAIHN0YXRpYyBpbnQgaWdj
X3Rzbl9lbmFibGVfb2ZmbG9hZChzdHJ1Y3QgaWdjX2FkYXB0ZXINCj4gKmFkYXB0ZXIpDQo+ICAJ
CWlnY190c25fc2V0X3JldHhfcWJ2ZnVsbHRocmVzaG9sZChhZGFwdGVyKTsNCj4gDQo+ICAJaWYg
KGFkYXB0ZXItPnN0cmljdF9wcmlvcml0eV9lbmFibGUpIHsNCj4gLQkJaW50IGVycjsNCj4gLQ0K
PiAtCQllcnIgPSBuZXRkZXZfc2V0X251bV90YyhhZGFwdGVyLT5uZXRkZXYsIGFkYXB0ZXItDQo+
ID5udW1fdGMpOw0KPiAtCQlpZiAoZXJyKQ0KPiAtCQkJcmV0dXJuIGVycjsNCj4gLQ0KPiAtCQlm
b3IgKGkgPSAwOyBpIDwgYWRhcHRlci0+bnVtX3RjOyBpKyspIHsNCj4gLQkJCWVyciA9IG5ldGRl
dl9zZXRfdGNfcXVldWUoYWRhcHRlci0+bmV0ZGV2LCBpLCAxLA0KPiAtCQkJCQkJICBhZGFwdGVy
LT5xdWV1ZV9wZXJfdGNbaV0pOw0KPiAtCQkJaWYgKGVycikNCj4gLQkJCQlyZXR1cm4gZXJyOw0K
PiAtCQl9DQo+IC0NCj4gLQkJLyogSW4gY2FzZSB0aGUgY2FyZCBpcyBjb25maWd1cmVkIHdpdGgg
bGVzcyB0aGFuIGZvdXIgcXVldWVzLiAqLw0KPiAtCQlmb3IgKDsgaSA8IElHQ19NQVhfVFhfUVVF
VUVTOyBpKyspDQo+IC0JCQlhZGFwdGVyLT5xdWV1ZV9wZXJfdGNbaV0gPSBpOw0KPiAtDQo+ICAJ
CS8qIENvbmZpZ3VyZSBxdWV1ZSBwcmlvcml0aWVzIGFjY29yZGluZyB0byB0aGUgdXNlciBwcm92
aWRlZA0KPiAgCQkgKiBtYXBwaW5nLg0KPiAgCQkgKi8NCj4gIAkJaWdjX3Rzbl90eF9hcmIoYWRh
cHRlciwgYWRhcHRlci0+cXVldWVfcGVyX3RjKTsNCj4gLQ0KPiAtCQkvKiBFbmFibGUgbGVnYWN5
IFRTTiBtb2RlIHdoaWNoIHdpbGwgZG8gc3RyaWN0IHByaW9yaXR5IHdpdGhvdXQNCj4gLQkJICog
YW55IG90aGVyIFRTTiBmZWF0dXJlcy4NCj4gLQkJICovDQo+IC0JCXRxYXZjdHJsID0gcmQzMihJ
R0NfVFFBVkNUUkwpOw0KPiAtCQl0cWF2Y3RybCB8PSBJR0NfVFFBVkNUUkxfVFJBTlNNSVRfTU9E
RV9UU047DQo+IC0JCXRxYXZjdHJsICY9IH5JR0NfVFFBVkNUUkxfRU5IQU5DRURfUUFWOw0KPiAt
CQl3cjMyKElHQ19UUUFWQ1RSTCwgdHFhdmN0cmwpOw0KPiAtDQo+IC0JCXJldHVybiAwOw0KPiAg
CX0NCj4gDQo+ICAJZm9yIChpID0gMDsgaSA8IGFkYXB0ZXItPm51bV90eF9xdWV1ZXM7IGkrKykg
ew0KPiANCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBiNjZlMTlkY2Y2ODRiMjFiNmQzYTE4NDQ4MDdi
ZDFkZjk3YWQxOTdhDQo+IGNoYW5nZS1pZDogMjAyNTAyMTQtaWdjX21xcHJpb190eF9tb2RlLTIy
YzE5YzU2NDYwNQ0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiAtLQ0KPiBLdXJ0IEthbnplbmJhY2gN
Cj4gTGludXRyb25peCBHbWJIIHwgQmFobmhvZnN0cmHDn2UgMyB8IEQtODg2OTAgVWhsZGluZ2Vu
LU3DvGhsaG9mZW4NCj4gUGhvbmU6ICs0OSA3NTU2IDI1IDk5OSAyNzsgRmF4LjogKzQ5IDc1NTYg
MjUgOTk5IDk5DQo+IA0KPiBIaW53ZWlzZSB6dW0gRGF0ZW5zY2h1dHogZmluZGVuIFNpZSBoaWVy
IChJbmZvcm1hdGlvbnMgb24gZGF0YSBwcml2YWN5IGNhbg0KPiBiZSBmb3VuZCBoZXJlKTogaHR0
cHM6Ly9saW51dHJvbml4LmRlL2xlZ2FsL2RhdGEtcHJvdGVjdGlvbi5waHANCj4gDQo+IExpbnV0
cm9uaXggR21iSCB8IEZpcm1lbnNpdHogKFJlZ2lzdGVyZWQgT2ZmaWNlKTogVWhsZGluZ2VuLU3D
vGhsaG9mZW4gfA0KPiBSZWdpc3RlcmdlcmljaHQgKFJlZ2lzdHJhdGlvbiBDb3VydCk6IEFtdHNn
ZXJpY2h0IEZyZWlidXJnIGkuQnIuLCBIUkI3MDANCj4gODA2IHwgR2VzY2jDpGZ0c2bDvGhyZXIg
KE1hbmFnaW5nIERpcmVjdG9ycyk6IEhlaW56IEVnZ2VyLCBUaG9tYXMgR2xlaXhuZXINCj4gVGlm
ZmFueSBTaWx2YSwgU2VhbiBGZW5uZWxseSwgSmVmZnJleSBTY2huZWlkZXJtYW4NCg0K
