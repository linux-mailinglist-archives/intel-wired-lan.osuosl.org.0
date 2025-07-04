Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69130AF995E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 18:56:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B755411BA;
	Fri,  4 Jul 2025 16:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VR_nBzIhUuiG; Fri,  4 Jul 2025 16:56:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0527411B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751648193;
	bh=NIisvUsglXz/CehOQi3zz3IvFLTwDRVT0ZjJY+B7BkU=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nXIIfHTgOcfgj8HkZx0rtKv2S0dI/BgLvC/yeck5a8yFsfUPflGHttPQHW7GOpR1T
	 BkQW8stP7nrjguCauLPlvVOoTiMFy+LIBf4RDpwKWs5PgrsKt5ywz6f48ocpmN3L0m
	 yt00cNF61b8FWXV8/fwFCx09lwMra5ps3qpQMYQf6CqFjUjrMw4N24nW5r7inn1Z6j
	 BPvDgST0XTj99Q3gwFdfd7SpraUOflOipnbExulVvEVxt+MLYg1FmPO5rxdVImAvOx
	 qVQQVe2fKuebB5NhjexSpvPqqZ1fMqBuJ0IPwpyEvZj1RgTAJSpF733ItY7gwkqCjW
	 5lrCDrmRxYC8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0527411B1;
	Fri,  4 Jul 2025 16:56:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48F9E12E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 16:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FCA3400B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 16:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kqXspfFduaPd for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 16:56:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 02F2140089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02F2140089
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02F2140089
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 16:56:29 +0000 (UTC)
X-CSE-ConnectionGUID: zYFxfKWtSpyu6iiyE2Jo7g==
X-CSE-MsgGUID: jANqdr4jTHOCdXK4snvY3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="54126001"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="54126001"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 09:56:29 -0700
X-CSE-ConnectionGUID: RnIopoeFRsWkYTdaBaKY5w==
X-CSE-MsgGUID: aeiF7nZVQySYyFtnQVrslQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="160354886"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 09:56:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 09:56:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 4 Jul 2025 09:56:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 09:56:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cUe4w02owOxBFRY3mLaPfOECf5YsO/c0HsHniaAP5D90pOf7cYseDHFXlXSsIT+4Xg02K6OR6ljV7ndSEsz1UtnznJt9dPl6kp0tGTL8u+DfPSCQIcl/NzfEmpqvkm9FIfctJxOFZoi+FB73kEpXDUKXcUZAJ4T4yqLNl1dJAhJfmAa0+Z5jIf3I9D1dCh2mRUhys7P8LDoJqTWjs6Jq86HC0UUAQpXYAeaJO23fUZ5AQ3RBAVAcPmOSQ5RcTJZZNX+yLF95t+4qAQ5nrSD9EkzibU3YJGNfaR12OIKvIv9YR3Tn9iR9Uyka/MnEvSTp9NgPZQP4YTh+GfFKOaOWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NIisvUsglXz/CehOQi3zz3IvFLTwDRVT0ZjJY+B7BkU=;
 b=uy80bxIZRZ7Ui8L9kCE8V1gvpAQIV23vmzcwuS8lqCzWCPxWrBP7QdCrxLnshodwnljjsEJElJxCsznHcX1RhbyctvHsIp+nYeXylOstROjnrMcKb+MLh36781WcRNzkef7sfch55IL95KIEnoqy0pQab1vkGUJNQrz3RlwpCHN58W4gabmLpJFx/RyKqKLooHOlzstdHXL1tNpi0opfB3fEBBMSJTZpZp5d3LfhwL9QtBjPWXwCq6N3tWPkcltFoQ5rc7EMz9Z7S1k+9PCEz6vn5mAq/vW0SU3ic3jT7f3lYDtmbQmj3Heu+8Z6CgKvTfmij0HtXQ3qCiJGcKbndg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 CH0PR11MB5219.namprd11.prod.outlook.com (2603:10b6:610:e2::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8880.31; Fri, 4 Jul 2025 16:56:12 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8835.018; Fri, 4 Jul 2025
 16:56:12 +0000
Date: Fri, 4 Jul 2025 18:55:45 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, <jdamato@fastly.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Igor Raits
 <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, Zdenek Pesek
 <zdenek.pesek@gooddata.com>
Message-ID: <aGgHka8Nm8S3fKQK@localhost.localdomain>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
X-ClientProxiedBy: VI1PR0902CA0027.eurprd09.prod.outlook.com
 (2603:10a6:802:1::16) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|CH0PR11MB5219:EE_
X-MS-Office365-Filtering-Correlation-Id: 460588ea-3442-4a32-18ab-08ddbb1bae93
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MU9nNWphcVRSTWVSRVdaMmpGTzNtbW5GRXZ5SGR3ajErT3NwdXNNbDFkZENr?=
 =?utf-8?B?cWR0Ny9yZnlQUlZwQThvNEk5RDFMVHo3UUFNRkRoTUNsRFlzcXhRaGtrczdj?=
 =?utf-8?B?MVVibnAzR3BKRjVhVmJxYitXL21LZEloUXhSZ2dVVTdWcE1iSVdUbm4yUzBK?=
 =?utf-8?B?WWthcEhDRVc0emkwL1NTS2t5a2l3NVR4QjZtS1FDQnNKRWFsQldLdXV6K3Ux?=
 =?utf-8?B?TWpMSVhBRWovbWNKWDdINUsvOTZLVUhVR3JvQk1FL2NxUDFWd1FXVHUrM0tD?=
 =?utf-8?B?YmRpQ0Rla01LbTZsMVRaMXNZdFEreWViNmhHSmlkQVlucWloZmczREx1V2Yx?=
 =?utf-8?B?TUtzcXB2dUFsdnVocTAzVnNrUFZjMDZMM2hvM3Uwd05hdzVqSzhqOE51SXJK?=
 =?utf-8?B?WXBzMzJ0NEZlSXg3NHFZVjBLWGU2eUw5WkQyMktibTBJTjNWY21VZFpIUXlB?=
 =?utf-8?B?UGRjWTYydlg3aHdOQkdoelMwMC9OVWJTMjJBSHVFK1JHU2xsamhUOGFuK2Nx?=
 =?utf-8?B?Rzh4YnlXaTRLb3ZZbHdXNTlPZWVLMkNDNW1zK1doUFBZVTZ0Ujh0K0twcEth?=
 =?utf-8?B?dHk3dUVDd0FqWUF3WHlUQ2NVU2RZb3ZKZlZmTlRLUHdlLzdpb1FkZGNhV1ln?=
 =?utf-8?B?OHk3SVlHZHBzeFVwSjE0UEdOYmFXSXh0MHYrN1VHemVwUEpNNEZHcnRrM1hM?=
 =?utf-8?B?MFB0TmJPUW01MFdoTEc0L0NhMzVJNXJLdlRpUEhFV0F6QVZESXRsTzNkL0Qv?=
 =?utf-8?B?cGs0U0xzM3FVSkFIZEJvWmFSUzZ6THVxQjFoWW5SM0czWFRrQnhBVDJEdGVR?=
 =?utf-8?B?VzZVdXBtV0xSY3JBbFZxNVBwL1VPRkw4bU92OTBSQkt1RWJHSC8yNmNYSkp1?=
 =?utf-8?B?bndBYVdod3FNNGtGYTF1YlBpRzBmS1NOWk95RVRVUXQwZkNDbXFGTk93VXJx?=
 =?utf-8?B?aHJ5eThjU3FWb2JJaFdTdzhTTXNqT1U4S1luZGU2SjB3Skd0RUV4NkNqdzNq?=
 =?utf-8?B?a2hwVUh5Nm5PcFU0cGp3TDBRQXNLQUNuM3hySmNGZnJWU1YrZU0zdTdGS1Nu?=
 =?utf-8?B?OTJPS1pKMnVYR01rSkk5NFBsU0FpTXRlR0xmUjFRMG84NG5YR29ybUd0T210?=
 =?utf-8?B?OWVKNkV2SG5OMlF0aU9INHB2YXJLZEM2ZlZNTHUwajNSV2EyaXJoWkkxcWo0?=
 =?utf-8?B?bTRsbEZqTTNUZ0V3SHZHd29zWUt6UEc5Y2p1MUNxZDl3MS8vOHc0YVRia1FI?=
 =?utf-8?B?WEtURUlWTTloZE5vRjNhZS9GRnJtcS92WUhPOTQwU25SZ0t3Q0hyOXFPQmZK?=
 =?utf-8?B?WERoL0gyWjVFMUIxVFZadDR0RDFsSFBoK0RqbHBSekpSZHY2eGorNjMyV0pV?=
 =?utf-8?B?dFlUR0FpY1FoWjNyZTJPZi90U0VOb3pycUtLc0I5R1lOdVgra1B4L2Q3Z0RE?=
 =?utf-8?B?enF0OThLQjEzRzVHblNjNXgyZDEvaFZMa1R1clBER3krSHFEL2Qvc3MzaHY3?=
 =?utf-8?B?cEJHdUprVFRpM2ZwcUE4NjNOY3lieVFKNmdzMXJjaHVxeEdrcmgxUlVzdDNs?=
 =?utf-8?B?Ty9pME1CYS9hV05UNVhmUkdIM0NZZlg4bjBxSmRiN0VjWTAxTTJwWVBuSFpP?=
 =?utf-8?B?dnJuSGxTVnI5RDJBSFJEektBM29zbnhBNTFZY0E5eWdDWFJrbHhCQTlFTS9K?=
 =?utf-8?B?ckxVK1FUc1YwSFRteEFkeXFjZlJoNkUvemxoOWxGQnVJTWU2QkNWUjBocmR4?=
 =?utf-8?B?VnVkSWJndENXQnp6d2hyWlZuMEo0TXVtbytPS1VjS1RXaDA2MGRvMXlSQ250?=
 =?utf-8?B?ZHZjaVZOVVNwVVpFQ0U5QkVDQVpsWWRUcld0SDhaRjVqM21MajJLWG5YTXhU?=
 =?utf-8?B?V3dEVGFna0hnVlFtNjgyT3R4eW9BN0Mxb2VsZ2NwTVUzRTBTbDRzUE95b0J0?=
 =?utf-8?Q?8wvKNdx2jUw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEZidnRmcUpodXZ0V2wzSnU4Rm9mVHRNZllLaFJteFhHT0w2N1hXUFJVNnVZ?=
 =?utf-8?B?ZjIzZEh5ZTFzdHVnUGNPUWxOVjA2ZEY2VFlQNXNCVXFvVjk5MlhVc1V4dERj?=
 =?utf-8?B?b1BhQklYb0NMUzFhMzNGaDh6Z2sxWGVPMWJoNWdZczJZR2crbTN2SEFiMmVw?=
 =?utf-8?B?VkRGVmhrRnphNEpiazhPc0VoRTl5NXVucWd2aWZVUFZmRzRLUENING40SVlF?=
 =?utf-8?B?VHd6UHVTL2VlUWVrKzVhb1BTekRiY01TUXpIblpvK1VIQklwMitaeEVNeTZU?=
 =?utf-8?B?cGJXMVZjWEQ2UWlzMVJlYmtkOHJoZFdyTi9qYjIvcUVsOHZFaVJaNVlwZFh5?=
 =?utf-8?B?SCtsLy9ESkNTYkVHbFBRd3lmVWV3OTgwYUg4cUwvekJETDluUWJGNFZ0aEFT?=
 =?utf-8?B?YTRKdlRwM0xZZkI3bWFQQ3hIVzM5S0VScmF0U1pjSDBDSk1HUlRaQkFaT3lL?=
 =?utf-8?B?RWhVQytOaWpsZzZHWExtT1U1Y1dUeHg1V3pNZFMwTTB5ODJuaUZtSGhnejVE?=
 =?utf-8?B?amVMS1E3ZTRHNm4wc3dKU1dHRVR5SENNUGpUYS9pMG0yQVF0U1VnYXU2VlF6?=
 =?utf-8?B?YUNUcTFjd0R0WU1rL1J3bmJINHZDaHZGUUs1dEFPQTJKeUpQRTcyaWdXbXJn?=
 =?utf-8?B?MzVON3lDSVhtMStBUk9RMUU2eHdjY01GVzhWQnJqV09mYWRtWTNNcmJ0aXFR?=
 =?utf-8?B?bjhKN09ZUlR6Wk9zRlk4MFhVMjJLZjJiSm9aSlN0YnJmb0huanlDQ1hkaXdM?=
 =?utf-8?B?YXV1MklDdDRGRWJQY1FDQ3JXNmVNS1N2WkxXOHpaNGZWWk1ZOW8rNURSR0ps?=
 =?utf-8?B?L1JFU0NpaThhbldSZXJTWGdsaFdDcTRueFozdzBNSUUrQitPOEdBQ1FudTVL?=
 =?utf-8?B?amE3N01ZczIvRjRlTjhHZDNiaFVsNWs3N1FHWjZCakYyeG50cWFleDJqbVRy?=
 =?utf-8?B?VVJpaXlPL1dUNWt1eExpdmJpdWxYRWdlNlF5MTc2bHVmM2JlUTRIZWpNUlhY?=
 =?utf-8?B?T2NadVlZTzJFRnU1aU5jeE5rdjdmRmtsZzZmMVNXS05oVEwrYjZLRGd6Z3M4?=
 =?utf-8?B?OFVxaDY1bUUzWUVUQmR3TUphQkRlQmZiYXhkMVRrdzVGeFRsTlFqSlkrb0Za?=
 =?utf-8?B?N1RUSmcwQkpxR2FFa3BvZU9LVnZIWm5UMjNKOEJHSUl6c1pkYnQwdENtQnla?=
 =?utf-8?B?aldPMDI3bjVtdDFWeXJyZ3VKMy9JcUd2NmpaNHVmR0lMRkNwUzh4eHltd1h5?=
 =?utf-8?B?UEpzaWdMelIwWmMyQlF1RVRzSWpZcWh0cHpkajMvYWZPbFUvOXRXTWEzeG9L?=
 =?utf-8?B?N0FkR3lOYnZaUC85cUtvVlpWQVZxb3Z2RXB2SUliSUZBTHVNTGg3Tkh0QU8x?=
 =?utf-8?B?OE1iS3cvMXpnVGtaOGhsYmUxN0xWUUJiWG9Kb3g3M2dUQ3ZPQmtqWitmMEJV?=
 =?utf-8?B?T3VZSlloR0pxNzQ3czdudmt3eEhEUEJIZjlvYzh5S0hOUFZod04ybWFkYzN1?=
 =?utf-8?B?b1hoUGh6aEV6SFpkUlR0WXpKcDZ1TzErRCtXK0x6RkQzQ0g4TVhtOEtsUWp1?=
 =?utf-8?B?MmhNV1VWTWxyTWJkcllCNWNMcm9mdERvRnE0QjFXYlJRQ1RzQnBjMTcvNm1s?=
 =?utf-8?B?UzJUZENha3hCYmNOVG52d0JPdkQvL3VrSkxxM091VDhXWVc2VjJaalNqd2gw?=
 =?utf-8?B?Y2FzS3BTdUdwaXQzTUZ4MHhzdWNpZmd1TVQyS1U3N05YVDJQd0tKa2t3aS9R?=
 =?utf-8?B?T3NGVzVRZW1tdXJOcnNIbG5qZ1hMN0RKVFVkcmJ2NzdhOFNBVTFWNzI1aENG?=
 =?utf-8?B?NDcwTUFLbm81cm9mNnlTcDkySFRyTytyT0VkMHhDVXlRS3o2TTZIZTZQQmJQ?=
 =?utf-8?B?RWJoR2wvU1dIK1h1dndvU1JEKzNmeU9KWk40eFg4N09RZkdHVVhBOE1zS09X?=
 =?utf-8?B?eE1zQ2d6YjM4a1NQRHcyK0VMTzlhMW5IRmVHTHBFaVhOZEtlSk5PWXhiREpW?=
 =?utf-8?B?YlRmRDRtVnpDakpkZk5leHJyN3pzdU1kdENCZnRLTEFET2pYMDlOWTNLNGx2?=
 =?utf-8?B?ejFVNVpYQmdXTFVYM2NSQzRtcGdGMExqUmNoQVBSZ0hoaEREYmdWQkhqNGFS?=
 =?utf-8?B?MjI5U1g5eVRxRWxxcU1FdEVMellMeVh1c0swWlMyR1BadDFaeElibjFKeEt4?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 460588ea-3442-4a32-18ab-08ddbb1bae93
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2025 16:56:12.5031 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxupjpyvwqXqzZ4F2Zlhl8Ie0kKZ607tdlnzNTEGvEb3JuRqh6F9DM3dny1ymJApnGjeXGN0T8rBuaBrvdG98g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5219
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751648190; x=1783184190;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KQF37pMDE1l8GgqQun1KQ7okK7Fk8MYZ1sC0KbllXFs=;
 b=cJ0dxvdSPNUsz1tAh8iRoYF3p5ZRJkUAhkBp6QhQlL0MndBPDEhJ8Fxs
 lOyIwLo42cvWFlamHODrCr7WEASFzdq6nXOszH/dYAzo9/Rotei7XFFST
 o401oSRGQdihajdkyT31bZPrWRg0b2yFZYZytB9+Cj/DUwnrux+UtfQni
 FzAbmy1dIJyJZbZq7Y6FTBKlQyXSmsrBUsE06PF3RkRGJelfuoBh0eH/z
 WxAOdnGVxstteIxN9wQchYcvHBt7UJVDOBcv0JGV+/QSq+CGy9MephKN2
 nWl43sNkO9nWWth6taxvtJWbu9aQyokHCA7suIVB2+SmfLdvpaZgI1eaB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cJ0dxvdS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On Mon, Apr 14, 2025 at 06:29:01PM +0200, Jaroslav Pulchart wrote:
> Hello,
> 
> While investigating increased memory usage after upgrading our
> host/hypervisor servers from Linux kernel 6.12.y to 6.13.y, I observed
> a regression in available memory per NUMA node. Our servers allocate
> 60GB of each NUMA node’s 64GB of RAM to HugePages for VMs, leaving 4GB
> for the host OS.
> 
> After the upgrade, we noticed approximately 500MB less free RAM on
> NUMA nodes 0 and 2 compared to 6.12.y, even with no VMs running (just
> the host OS after reboot). These nodes host Intel 810-XXV NICs. Here's
> a snapshot of the NUMA stats on vanilla 6.13.y:
> 
>      NUMA nodes:  0     1     2     3     4     5     6     7     8
>  9    10    11    12    13    14    15
>      HPFreeGiB:   60    60    60    60    60    60    60    60    60
>  60   60    60    60    60    60    60
>      MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453
> 65470 65470 65470 65470 65470 65470 65470 65462
>      MemFree:     2793  3559  3150  3438  3616  3722  3520  3547  3547
>  3536  3506  3452  3440  3489  3607  3729
> 
> We traced the issue to commit 492a044508ad13a490a24c66f311339bf891cb5f
> "ice: Add support for persistent NAPI config".
> 
> We limit the number of channels on the NICs to match local NUMA cores
> or less if unused interface (from ridiculous 96 default), for example:
>    ethtool -L em1 combined 6       # active port; from 96
>    ethtool -L p3p2 combined 2      # unused port; from 96
> 
> This typically aligns memory use with local CPUs and keeps NUMA-local
> memory usage within expected limits. However, starting with kernel
> 6.13.y and this commit, the high memory usage by the ICE driver
> persists regardless of reduced channel configuration.
> 
> Reverting the commit restores expected memory availability on nodes 0
> and 2. Below are stats from 6.13.y with the commit reverted:
>     NUMA nodes:  0     1     2     3     4     5     6     7     8
> 9    10    11    12    13    14    15
>     HPFreeGiB:   60    60    60    60    60    60    60    60    60
> 60   60    60    60    60    60    60
>     MemTotal:    64989 65470 65470 65470 65470 65470 65470 65453 65470
> 65470 65470 65470 65470 65470 65470 65462
>     MemFree:     3208  3765  3668  3507  3811  3727  3812  3546  3676  3596 ...
> 
> This brings nodes 0 and 2 back to ~3.5GB free RAM, similar to kernel
> 6.12.y, and avoids swap pressure and memory exhaustion when running
> services and VMs.
> 
> I also do not see any practical benefit in persisting the channel
> memory allocation. After a fresh server reboot, channels are not
> explicitly configured, and the system will not automatically resize
> them back to a higher count unless manually set again. Therefore,
> retaining the previous memory footprint appears unnecessary and
> potentially harmful in memory-constrained environments
> 
> Best regards,
> Jaroslav Pulchart
> 


Hello Jaroslav,

I have just sent a series for converting the Rx path of the ice driver
to use the Page Pool.
We suspect it may help for the memory consumption issue since it removes
the problematic code and delegates some memory management to the generic
code.

Could you please give it a try and check if it helps for your issue.
The link to the series: https://lore.kernel.org/intel-wired-lan/20250704161859.871152-1-michal.kubiak@intel.com/

Thanks,
Michal

