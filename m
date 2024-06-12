Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A0A905007
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 12:07:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 424FC60811;
	Wed, 12 Jun 2024 10:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Y28iY1kZwLn; Wed, 12 Jun 2024 10:07:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 434A060873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718186842;
	bh=77d1qfkp04YYD5svtw2SnOHNFCoAlXPMJn/y+qB9FwI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vm6+IX6O0QqvdtXDaaf8wT9eya7pCeUDAuhILSnnsKKtavkQSyBqucwCP1+zeOIAZ
	 5j8B4v5y48gLOA5lChEouRJfC0O0xvpJAOEEnnoHNbw8ELRIdpMuTtqmeMoc3Hsmf+
	 o1JrXcJC6vrVNG+NuL1cCQ1mgQGSooSlgMH3TQgxDilHAvdfxh2mj9LzpmJke8Quoi
	 TATU5J+emlHyhAoKczfT5yvsXabOi9r90Qo8ceH/+0Miur6uDh0ssdGieO9ryAMC9V
	 a52lpZ3fTZ5tdgffkEax4FXRFvbTtJqhFRUdhmaqpUYkZu6n+NEG0UYXAGYXGzLLGP
	 dmnjBnjYPOnIA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 434A060873;
	Wed, 12 Jun 2024 10:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67B571BF376
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 10:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 519D4402E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 10:07:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KK2Tn3GFY61q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 10:07:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F2371400F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2371400F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2371400F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 10:07:17 +0000 (UTC)
X-CSE-ConnectionGUID: Trufd2DoTFWO03exZ8i+nA==
X-CSE-MsgGUID: LgFC5mguQmifWxvDY9cx4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="25517884"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="25517884"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 03:07:17 -0700
X-CSE-ConnectionGUID: HaFvYEzwRNS1dlHzi1ciNA==
X-CSE-MsgGUID: GhV1NobETaK4NblpJEOnFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="70549755"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 03:07:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 03:07:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 03:07:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 03:07:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 03:07:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gM7M+DPRjynvs9cKvRj/kYDDvH/Lxw28OpIX5/DSkRhtsS6350ermFmrd9Jet/IeblxF1CaEWMQAdOz1gkixEzZc7q+JelJ/vnIs0AIg6dEuDpXn/tuHp1ZsFrhMp5dR51WmfvsNDIP+UKg1yu/VDcJEXHBuWYmc12b+cFyqm+IgjALLNoaZydRIYqo+3gLsTwaLpceb10RWqJvkCBmqjQ0uqW/noPwh2388DyAwC9bcRP3yjxn4jtlJhejfZA6ECInlr6PEDod3humH0XBw9tynlkq2PXl/LHo8WqvRrrubwy9hqvKtjEXBtUPUO+d59ojpzDAPNt7YEZWaQWLiEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77d1qfkp04YYD5svtw2SnOHNFCoAlXPMJn/y+qB9FwI=;
 b=WPc4ccZPPb5scbzrNcd++MJKR3mSnkL8sVIYUe1wIjAvcGySvw/w53HHahP698OUP+CXflXETzsbU2SXU+Yvix/GGQAVZY2JquyEw4RrejaLCtLmla0aRISXCQ1ngVp/t10O5nOnh0NXTSw8LfF+gRfPy7yVaKwEaZ9qPAIt6H0rn9ebeXDziMr+E6vZD7JDw2qZA57VNv1evsTHFxlSqZdIP2oFBGwBfiN0X7Omf21pQXS2f86B4uZfgZlJleipQ8TLOO1pKp10l7/F6D0LJ+bKxoPG7dKoX20CEjdbS8cRYzuHnjz0zTiFF9kMOqyKqeL47TkzdqAl1KZNH5SoDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA3PR11MB7528.namprd11.prod.outlook.com (2603:10b6:806:317::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 10:07:13 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.7633.036; Wed, 12 Jun 2024
 10:07:13 +0000
Message-ID: <8aa33911-5e34-4a03-90de-81f42648ab5d@intel.com>
Date: Wed, 12 Jun 2024 12:07:05 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-2-aleksander.lobakin@intel.com>
 <20240529183409.29a914c2@kernel.org>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240529183409.29a914c2@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0261.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::34) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA3PR11MB7528:EE_
X-MS-Office365-Filtering-Correlation-Id: a4669c87-3ea5-4c84-149e-08dc8ac76e7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|366008|376006|1800799016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aW9zOXB3TG9pMEhuU0V4U0E5VVVvd3BvbjN1RzgxekFZMzlpdkhyQlg1SGY0?=
 =?utf-8?B?UTFJK0ZZYXBIY2w0c0kwNmMyaUxKVk4yOE5yZjVTMGRYalVNbU1iWTVGV0xY?=
 =?utf-8?B?blBzcTcyU3AwUENmczRPYjVhekMwQWxYU2Vrc1AvR09zZXAzdDNSWm5pTFdX?=
 =?utf-8?B?MlMzUkdlZDF4ejVGY0FCdSs1NzlzWDdOWjVwR0Fqcy9CUHY1OWNXQjBOVXgr?=
 =?utf-8?B?WkxjWkxxU09SUngzTnJDMkdXczkwcm1YNWZibS83U2lYaUlPdk1vUitvY2JL?=
 =?utf-8?B?K2lYMTY1bUx4djVGSC9Ga3A4bnNCMjFnVjVuS25nTnZXWEhzVUtNei9VNmJK?=
 =?utf-8?B?VFpjaHVPNnVBU2VjKzUvZ2srT08rZVp1eFY1VEVjalhSaUhIVStlN2RZZTNy?=
 =?utf-8?B?OUhvWlVYSlhhaFlLbCs5M3o3TzRSajB6QXMxZnlQTDEvZ29wQ211TVJFTm1j?=
 =?utf-8?B?ZzJ5TFJPeStCNmhOMkptckM2VmJBeDJ3UFJNRUNPMmtBMlh1VUZSc0lDcnpx?=
 =?utf-8?B?cmRsWm5maWRpVzlZN1JEbVREZW9qYmxnUWY4Sm5kcDZCdU5yclZjeXpibitr?=
 =?utf-8?B?K1pIU3dQTFB5dktRc3RuSUVybHRpZ3FvVVBzSlh3cHlzcjFJRjlucEFRU3p5?=
 =?utf-8?B?Mk5KUFZlNndxdEdFK1FQSUZRSzY1cGpMeWl4S0V0QXlqeVR2bkFtb2M4WGd2?=
 =?utf-8?B?NlRDQitYZFlJYnFMZjdpMzJZZTVNb0Q0NGFTVGhGUVpGZTdLZ2VheXEvZStL?=
 =?utf-8?B?bzIrelYwSWE3Z3F1UytJYVAzeDVxaFJWZzE2YXdHYUZ0UkxybEdoL2M0SU5n?=
 =?utf-8?B?ejYxRCtoWDFDTHM1REFteVY1WUJscVBsVjlzcHNhcXEzMUdJZ1oybENmQXFU?=
 =?utf-8?B?NnNhUkp0ZWgrQ2ZXa0Q2UUFBWmd4RDFSSVlQMWt5OWM1VHRSdlhVeHJZeEhZ?=
 =?utf-8?B?Q01mQ3dvK3JSdE1tTWtGTUVzVGErVHFPbFExbUxBcEJYMGtnaHBVaW13eHBx?=
 =?utf-8?B?NGV0akZEVVlHblUrMnpkQmlaUWkvNHNnVnRoaXl3cnFqUlpFQTlmS2hQcXpa?=
 =?utf-8?B?S2l1QkNGbzJVVDE3cXlZVWRkOFN4UnRwaDhqbG8zYjBlekNGS3JFc05RZVY3?=
 =?utf-8?B?U0dXUHpIb0E5Y2dRdWdJL2s1L3E0TnBGSXZWTGNrMklHVWVuSTZxSW94ZlRw?=
 =?utf-8?B?ZTRFVHp5cGtZTERsd2ZjcWd4QXQxcVd1emVzUG1NbjBnVkJwMVFNRUE4YklD?=
 =?utf-8?B?aE9yMEFtYUhyTmRDMWozN1NMd2NucUFjZVR1SEt2SmRNazlHdzZoYzkxWHJ6?=
 =?utf-8?B?bHMza1lSbi9DZ0JJakZMdjBnMjIveGg1aCs0UGhYTVZXZnpDRjJaRUNSandR?=
 =?utf-8?B?MkZRRTNyRUJtM3BqcFV3RzVGdm9HT0tvNmJkZHFOcUdRVVpZd2d6aHphVEY4?=
 =?utf-8?B?UnZzTC9RQXQ1clZkWkxwSFFhdVVDd0pyVmJHQ1RmSGtoQlRHN3VIdThLbWMx?=
 =?utf-8?B?blVGWEs0SmNoa01ZcnlhVjNjS09lY0tOVW9BczVJeTdxcHZHTE56NnZJcFRB?=
 =?utf-8?B?RE1wTmt2M0pMYzl6ZkhIZy9oZGt5QmpqRUwrMlpNUHhIR0VBb0JRVkdON0pL?=
 =?utf-8?B?TmdCanY1Z3ppSzdVcllVTFFMYnFHQy9KZlBlQXpIS29xYUQyTE5zMEJuSlpl?=
 =?utf-8?B?UWxRU3ozelIzMDdVVmp5aVpyRGU3Ryt1bjVGQTRGbGVlQ0Zub3lja3ZhTmIv?=
 =?utf-8?Q?CKhn3iUwvwyiK7gluEmaJtHCTZBHH1gTIVP7ASr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(366008)(376006)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3BVZDhNaU0wckl2S1phVW5JaUdHTXc4eXpvZmJZdHN5QkZjNi9waDhEOVl0?=
 =?utf-8?B?MmF3NTRrdjNrUDNJc3J4WFFhcFUyWTV0YzhVWjMyMjFlMUtrNlBsc08zOFhl?=
 =?utf-8?B?QnNaYWZCZ0pic1JjWmZsUjU4VEcwRWNQcVVuZXZ3WC9xTTJRZkgyd0VjcTM0?=
 =?utf-8?B?ZW42S3JWWjkvalBJTlVBRkwxS1BwN25NbEYzMGFqOVpKcVI4ZGhnYU1YalRT?=
 =?utf-8?B?WEdvbm4wQ3Y3M0I1VkNMQVV5anlFVHRTQ3ROUDl4R3A1ZU1abW1YTm1lcCtr?=
 =?utf-8?B?R21vTW5sT0FubTlxMkNzZmxrYm9NUWd0M0NrdkptU2FOVTVreFVZVkVIaDhs?=
 =?utf-8?B?VmVVTzNtcGFtRTFMd0lRVHk4eGQrSXNpYllxSTFYTWl4ODlMcDFESkNuVTY0?=
 =?utf-8?B?VXZjQmU3dm83V0QzdU5sYlBRVkpId2dXV3k1MSt5ZUIzUkp5Nndnc0NNMnJp?=
 =?utf-8?B?QVNNamZsYUNrcmVIMlIvT3gwNC9zbFpUeFlFSFFaOEVFVCswNXRiNTZUeUpy?=
 =?utf-8?B?TGF0S1Fia1NTR0xadE5TZWNVODBtUERKb2dBUFdZR2k5aXZ1NURmWUF5U2k0?=
 =?utf-8?B?dFZ4NnA4YVZZdG4yYnJjR3NpS3VmNy9vWi96YTB4bXpGTVNPbTBTRGdvU1Qy?=
 =?utf-8?B?bjIvTVh5elRtaUhMQURtWEZTdFFqNEowc2tkUitoTGRFd0p1WjRzOERQSXM3?=
 =?utf-8?B?cE9YWmNYTnpkVElLZVVvT2poN1ZPUHdMZjJSVmEzcWpqRkRDamwyWUdzUkZB?=
 =?utf-8?B?V0dNZ21rLy9lRkxCQVlRbUVwbm0wdmJnM0xZNlR6N2RsOXlmSUlSeU9Welhr?=
 =?utf-8?B?ejhVWFRhODVyYVR0Q1VwR1JzUndFREFPcFd0dFFScFhTWG1QWWt4eVZhMXVX?=
 =?utf-8?B?ZjRzNEJHVTBmZ3FTM0RuWUxZOTBhZFUzOHZ0YzlOcEJsQ2FFdmNNMEc3SWhS?=
 =?utf-8?B?SHdQdXJnK3lDRXI2bm9mSGM3RlRDWHlhRFNYd05KcXRYRXlqZG5JMGxtb3FG?=
 =?utf-8?B?ZXJ4NEREU2dqcStQMjNjbE1jZzRFZTdhUVZaWUs2eVJ4bUdlMGF6UVVIWmNv?=
 =?utf-8?B?Z2lWU1N1WEpFSWJtRE0xOXlkWnJJa1FmY3RXbUx6ejJYL2o3Zklxa1NGNjFI?=
 =?utf-8?B?bThYSXplM3dabFNUYXBEOGNFVVJlY1lFc0JXck1CejdoNkpvMXFKNlNtSTVG?=
 =?utf-8?B?aUJEYzhGL3RvRktjMWhXWTMxNFM0R0NGaTQrRFV6QTlMWWswY3RDOElnenl3?=
 =?utf-8?B?cU5MejVlQ1ZpWHA4ZXNLVWtRTDNRdWhHZEwvdlpQd1hpQU13eDZ2QVlEMHNp?=
 =?utf-8?B?S3paS1BQRFd3dEg2aGV0UTJ1Uy9zTEVOVzFZNFRnYWovRDUxN05Jd21qVEpM?=
 =?utf-8?B?VUtqL3BYTkluclpHWWtNUlBWMitxcVg0ZmRBRjNON2ovTlU2VGcxUVJZV1RC?=
 =?utf-8?B?eU9ML1RwdUhRdE5ZRmNYTm83YXhha2RHbkliY0p1RkVyeE9kZ29oSGdlbVA4?=
 =?utf-8?B?OFIwcVFpakZkT0hnZ251QloxaGRrY3lYWG9zTmhSajJBTkU1RXFYbFN2OVM3?=
 =?utf-8?B?aVNGTU1zVC8xc2wyaVBHVi9TS3E0eUpHWkNDaTRFVmVIbkluQTJCdnNiUFB6?=
 =?utf-8?B?dXc4N1hzTWROa0tWcXdjc25TMTgrN3BWSjFLVmM1SVQrNDIyd3dsTDJkNkVt?=
 =?utf-8?B?c2tBQ3lNQ2tNdzZqQUM3TVFXcXVFSHQrdUhONXQyTGVDdElWb1ZnNGRSYmpM?=
 =?utf-8?B?cTdUWkZTVXBkUzc0NGhDSW01TVE4aDRCUWNvVHBGbE81MjR1ZlhIemlpYzUw?=
 =?utf-8?B?dkQrK3orNmZRdTYxeDFsbUhoS2xhRm4yTDV0SWdyTWFpSk9scEUzZmx5SjRN?=
 =?utf-8?B?aHEzR01XdHFPSXJUSzRmVkFMVld6ZFFCL0hpVmJidmtNUkRNcTBOYWE3U1d3?=
 =?utf-8?B?bWFLZytDY1NsVWRtQ0grVU5wdG9ISUtWWlYrOWNDbHFuUjhoQUV3Y3R1VWNh?=
 =?utf-8?B?cTFQa1NuVlZ1SEc3S0pTT0k3YjRjZU0ycmZaR0RBMlNleTg3dDhuV2E1VzlF?=
 =?utf-8?B?bjA1ckZtTjlhZTJHakF0OGFIZ2Rkako4KzhkQTBaWUhZdStFTFZKK1M1MGhu?=
 =?utf-8?B?MGhxVTlNT3YxaUI2WEJhNEV4cFFLWm1SSERRSEdzRHNYc0ZWV2xsWHJqOS9i?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4669c87-3ea5-4c84-149e-08dc8ac76e7b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 10:07:13.8216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JCWhs2hAFheFY7TyvPJ+CLBbK9/ITAkzaJ0oHcYsJpSWJ1tlBFgBd5/pf9A0hhH0sbk/ZUP1mUqhi/xIDHAFB/X44lpXb9Y0bVGRyI5FqKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7528
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718186839; x=1749722839;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eRqkKvinKF9abUOcMs2rUV0vNPXseUyC6kaueolIyDk=;
 b=MZ8j6PYF2Aze0H43TptxT32I7fK40/ndE0QMNTOmt8EYlP3ha867KkN0
 crVQpgEFzt0QvrlUJLZbvk7jldf5Jm6ZzcRVpA6gIgaE77W9hlxDgRsGT
 czT6s9eH9aHagsg8WxIjyEDnpaNkHYFgMDsMgYbUPfZtJfEma8zFhZTNk
 QxvFoAptV1LZ2j/agmPZb5QiO76Ts7VHU/7q4dKVRSXwjvPdRvw/sV05h
 KGy+oZK5CMsTTExBjiNqwAPN3KMRtRT8Ss9/+p243s/Wa0xNieWbeN2YO
 aE75s24F5FrrUPD2Of+UHqOK0GZmsoiLF43v1T22ssifmsJKto6e6//CA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MZ8j6PYF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 01/12] libeth: add cacheline
 / struct alignment helpers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/30/24 03:34, Jakub Kicinski wrote:
> On Tue, 28 May 2024 15:48:35 +0200 Alexander Lobakin wrote:
>> diff --git a/scripts/kernel-doc b/scripts/kernel-doc
>> index 95a59ac78f82..d0cf9a2d82de 100755
>> --- a/scripts/kernel-doc
>> +++ b/scripts/kernel-doc
>> @@ -1155,6 +1155,7 @@ sub dump_struct($$) {
>>           $members =~ s/\bstruct_group_attr\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
>>           $members =~ s/\bstruct_group_tagged\s*\(([^,]*),([^,]*),/struct $1 $2; STRUCT_GROUP(/gos;
>>           $members =~ s/\b__struct_group\s*\(([^,]*,){3}/STRUCT_GROUP(/gos;
>> +        $members =~ s/\blibeth_cacheline_group\s*\(([^,]*,)/struct { } $1; STRUCT_GROUP(/gos;
>>           $members =~ s/\bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;/$2/gos;
>>   
>>           my $args = qr{([^,)]+)};
> 
> Having per-driver grouping defines is a no-go.

[1]

> Do you need the defines in the first place?

this patch was a tough one for me too, but I see the idea promising

> Are you sure the assert you're adding are not going to explode
> on some weird arch? Honestly, patch 5 feels like a little too
> much for a driver..
> 

definitively some of the patch 5 should be added here as doc/example,
but it would be even better to simplify a bit

--

I think that "mark this struct as explicit split into cachelines" is
a hard hard C problem in general, especially in the kernel context, 
*but* I think that this could be simplified for your use case - split
into exactly 3 (possibly empty) sections: mostly-Read, RW, COLD?

Given that it will be a generic solution (would fix the [1] above),
and be also easier to use, like:

  CACHELINE_STRUCT_GROUP(idpf_q_vector,
	CACHELINE_STRUCT_GROUP_RD(/* read mostly */
		struct idpf_vport *vport;
		u16 num_rxq;
		u16 num_txq;
		u16 num_bufq;
		u16 num_complq;
		struct idpf_rx_queue **rx;
		struct idpf_tx_queue **tx;
		struct idpf_buf_queue **bufq;
		struct idpf_compl_queue **complq;
		struct idpf_intr_reg intr_reg;
	),
	CACHELINE_STRUCT_GROUP_RW(
		struct napi_struct napi;
		u16 total_events;
		struct dim tx_dim;
		u16 tx_itr_value;
		bool tx_intr_mode;
		u32 tx_itr_idx;
		struct dim rx_dim;
		u16 rx_itr_value;
		bool rx_intr_mode;
		u32 rx_itr_idx;
	),
	CACHELINE_STRUCT_GROUP_COLD(
		u16 v_idx;
		cpumask_var_t affinity_mask;
	)
);

Note that those three inner macros have distinct meaningful names not to
have this working, but to aid human reader, then checkpatch/check-kdoc.
Technically could be all the same CACHELINE_GROUP().

I'm not sure if (at most) 3 cacheline groups are fine for the general
case, but it would be best to have just one variant of the
CACHELINE_STRUCT_GROUP(), perhaps as a vararg.
