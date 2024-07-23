Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 629F0939F8F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3904E40457;
	Tue, 23 Jul 2024 11:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WrrDRTGJTlYa; Tue, 23 Jul 2024 11:16:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6191F401F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733397;
	bh=FtaS5bzK31D5yLvY/6L1hA5YA98Q17xiHUvicFTxQFE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7FHMxm0x6J7Es5utNm0bL5/7VUQ3MSP/IT/iFdjW+sW0IckCXWxoz+pRtP+NmFJTr
	 MpP86oMVB43wfgJC02uOzlb3tp0w1CTH5g672HIKTSMHrzYBsO+EIotLtuXvTUhIaq
	 F7vJFs/NI69zQUUChPvxNZZx181/Q2xOfYaNLD80L+DAtsCj9jh4QRRVG3DOzc//N9
	 uaQ4kKawtNLHySJwbjrevSDDrfWWZ/ni2QmyxTJcN0P/ToBvfOMPKp3ub65AjlPHSp
	 sSstb9h5wXclzjvF8LsGAO4vnSjZKon6k+N61n3AHUleiYrZv6sozh0ZyDNb9wOvEf
	 8lxfutdp3ONeA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6191F401F8;
	Tue, 23 Jul 2024 11:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23D7E1BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E55A606ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l5azk7LwTzR7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:16:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 34805607B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34805607B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34805607B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:16:33 +0000 (UTC)
X-CSE-ConnectionGUID: jGY3ipOHQkKVWIlDC6Ql9g==
X-CSE-MsgGUID: eP4pAZHfRvWUswGn3KAGCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19051947"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19051947"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:16:32 -0700
X-CSE-ConnectionGUID: wCItpLY8TpKlKprbgLSapw==
X-CSE-MsgGUID: 7sy3rsL/TnaDrOmBto1ZLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52436613"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:16:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:14:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:14:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:14:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RsYkCwGAZoXxW6KKfRnJbGCL5MAEtN5qQaX8eIfyzg18Y3cbM4O95xSCfFQK51dB1Ku0hmwYJCJMw1kb1TCc++NSqy7cTRGQxntOYM2RbiNdZtXkyi77cZMucLAEhYSwD0oRbRAfUcHjp0ug+VZbVFcFdOCdRYrxCJ+F8K7LDpi/Hv6lF0+vcIvI8Dczd1aX9JlUcXAMgihCz2Du6WQre5nzDFhspopNadtVyE+GRiYKqZXhITfHSvKD4Ez4SbPK6CjPhzocrBqMN/CdWtAXxnAoi8JTfh6ZqyKoUcuFDChR2bwPhUVLTlwwiSNfUdsAUThew3HVma7T09mnPPg/tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FtaS5bzK31D5yLvY/6L1hA5YA98Q17xiHUvicFTxQFE=;
 b=O6CwQaDNOwDu+YrNiWqTlPY/OKg5/4CcqFgD5+fyjX/0kF2TD9A65gVah9frX71yYibjxduj3fDi8RKHQK4leh3n8afcJnMSvmYGaOzv9x3V83J7CZSJ9P6xnCxrwZ53vhasxAVAt+8xvYRHyRwBXJJSzVLve7PRnovKO1byCC+0dPU6tzYTKyqBUk8tc5ff5DZzW63Bsc40NJevM7CDZD2+wFRbG+vogxxaXp27bulzheYcrLaQXCMEiTHN2ZutL+wfJmfJCGXidFqeQxv96vkTNxApshM3TyW6DMr+E2BcXCjQPLc9QEYYIRKy0EXVED2mQYJbMzk5Z7NqXmn4EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 11:14:00 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:13:59 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 03/15] ice: add basic devlink
 subfunctions support
Thread-Index: AQHauAOifu6RbHA4RUCOOQbIN+yJSLIEcrbA
Date: Tue, 23 Jul 2024 11:13:59 +0000
Message-ID: <SJ0PR11MB58658B2E963126964A14509F8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240606112503.1939759-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 13f43368-cc9f-4aa7-66fc-08dcab088d1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Lne5AI2TH44VSTrT6knO3CABuzzWzK0PHDEBiM+erQ2va7xKbP08Ozz5LMjx?=
 =?us-ascii?Q?w7zJy0o7mwaK3YxuwKr5P/iCNNO1u395DX4ESoY2zpwVBX7dqi23oUlgHVw3?=
 =?us-ascii?Q?9NxmdLxxrvCk5PnLsd19epNyQQUEHQowNjp7/5mAEvwuLNOMGGuer8aHqb8R?=
 =?us-ascii?Q?3i7/ZxRl/nweVTo4p+Am9//7v5Ia8us4IGFJ0gQsTfU9YInm2gDKD0L/JD43?=
 =?us-ascii?Q?gljhYipgzpY+3IdwkBtzPu0Ee3+4bm9VxqLPVvSX5MYxXLniBkVEj6CtzgN4?=
 =?us-ascii?Q?+qU0OJzZExOKHIbmWPapj8BH2xjB1CyBtnxemcovwRzFnF8uSzVymNhTK5Ru?=
 =?us-ascii?Q?B83NtOUS/b33SfhgiOJHNPnJP5ePxJBouVUoDv50fzvNUCw5pK39uMIVlddN?=
 =?us-ascii?Q?KMmpjvdyCngzQYk2eHvVY+fSDRZKCUNaB+7bAPQ+Zf8BiOd5OtHC4h5p9gCm?=
 =?us-ascii?Q?zEqxlXaslw477G1nYcBVml/3WcgoR2pqlrMEps+bRIM7aHFUURsn/KSVAVWj?=
 =?us-ascii?Q?00+e5hEP/GCVPTHyPxNR4JuE7tOyUdZMq8kH8HI5D8TzVzipuCiolJO+pOJy?=
 =?us-ascii?Q?SLxseZzTgofqZxRH5uSR61BC11ajj488OsATLoYZfAJmKMvubdARBklnqsWu?=
 =?us-ascii?Q?a4KnD0bwA/s6yOhlXIAvsbnf1LY98sVNbRJgPSPrYc48RtNDK0oF6HtsZOBr?=
 =?us-ascii?Q?BFO3LIzEY0v6qE2FutK6xOOr6MNv68yepO+rGd23p4BRq2XXXkqtz7UOZ+uz?=
 =?us-ascii?Q?aDW2apc/ikffT8rJXEqS9BW6CRp4kIxgRqGp890d7biCRg8fJi3cjzlvGoHe?=
 =?us-ascii?Q?ucwnOCdTvu973k9rAyYFPpu7LkSmEkcGr6cOFuAC4GIOadk/N0GKdYeeY6q2?=
 =?us-ascii?Q?x9MEXICWNSE0nasTkOaq+RuCiYQTDCsQeoj+8rzapUFSKfpObn2MHX/d7bo3?=
 =?us-ascii?Q?SVFD1TUCYW+dxFYhe3tGD+AtWe6iY6Y7iVpOuCFjx2sudUKOCHc4ngR92pKz?=
 =?us-ascii?Q?ybKtm5MPsgaAVKpj2EvGyURUY4H10jWzpkO6X8RPQmrKN6X0eXkYTW+aGtNW?=
 =?us-ascii?Q?ACjSlMVo0Tw5uK5JFD5xc0yd915pAsaLFBbJ9uNm9UhcVLRj7QbrmFCF86Rw?=
 =?us-ascii?Q?hlwB5M5qH+RHQ7wV9Rx4jvd8XBq3Hp8E4FA9254kfqpDbwgIZdbjmeE9me/x?=
 =?us-ascii?Q?RLs8LczO1ZUDyD43wvGI5/gVlVaABFArbKS8wII9ckUeXBPGeYgcFqkestkF?=
 =?us-ascii?Q?L6Dudd8CDLc1db9kz468c0gHyHQf7+Qi1aDwywzL9sogBjEWXMtdeUMKc/It?=
 =?us-ascii?Q?358WFzWtQ0VjCVVHVQS4f2JHaAPAnbVisiQE2H9+hUyYmziS5AGuSARaOdzH?=
 =?us-ascii?Q?ULVVwGsJHSPJbBESyBRcZQW2t/vzXCbHQB6OBFkrlEDyY7x28w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lfUCkmIhrmqRJwlGqRCObCUn16a/dxYR8awh+LEQqdlLHMZyBxXMbT16rEk+?=
 =?us-ascii?Q?zGeq+xQucc4kbZTo9/+k8tE0HB69oSc/BxQEA/jdBFX4TIdcQHcb41pL3ton?=
 =?us-ascii?Q?aRJBPREvgoTswvJigJzLcvuI9YuboIKzTICy7etNL0+KeKa2q50sWTwyshBV?=
 =?us-ascii?Q?STLSW2Bh3BFTLGSZ4TheAWakbjwUC08R8XfueZvXla+fZvwpsSxC4SWOFC9Q?=
 =?us-ascii?Q?MlUqndQx+am9QMwvxE9lTEF1+a8AR8La1ymT4086qsjDD4C7SkmCYfmcxdRl?=
 =?us-ascii?Q?ka0JOwR42quW8XBsGGhvbuSeHMiWHNN2LZAH2cDa8E9Ptuz9sNfBmAHEeIB2?=
 =?us-ascii?Q?3LrlU/yHJ6dsCMBXhSKNHHRtdVeNTKPlP9hgFYEJger11D+ahkcVGdsGcCym?=
 =?us-ascii?Q?Dqt7HpQorqaTZ1QQnvpX4PuPnYBVrKyCJpoOXwYpTYJYmvqtCWWZ32aqfagv?=
 =?us-ascii?Q?wJofMh9XheHNm+gaYpkD6bE67iCUrUG3uojBDOrTXX07OQSJJnT8AyLvL0al?=
 =?us-ascii?Q?WCsJ9d5vi8JQGM0G/R746bhYYCYNSUfcLT4cVyJwRGAjAkGHY3hJad5/47AF?=
 =?us-ascii?Q?zBIpKs5sIDutKaK3l5sUmmc/4FGW0anRLsxJueClNZC6JUTgpwcfkquvaMLq?=
 =?us-ascii?Q?NNdBbVcOBNJJ1BtiHNoBt6Z/QVS78NEbhEdA6IsoNmWk7zMC7ak/UTXkeCH0?=
 =?us-ascii?Q?aXEChPXhLZZ312lDuoCreQNAqD/NJbWvzcXe8R+eFSOmA9yj6+IfXt+/7xLa?=
 =?us-ascii?Q?GfpRkOlEmgCgpg/RhakRna9lJ3sJcSm2l5ILQiA4hfetyEonHvi03LOyhCpV?=
 =?us-ascii?Q?/82JG/cicOvhfqPboLuS46zslNKw/OkOj6NPBpGfHwDEGbJiAsn13cdw93+R?=
 =?us-ascii?Q?8e1boOfGSxmSzkz+gWTVOrWzNh9SiLafuPEHdhqvPVg62Nxg9oOXDfjefJoH?=
 =?us-ascii?Q?qU10zViYDAUMHkb/zTw3OpURFhu/SJETPi61WJdeg8Nj0VO9JrbVQCdZMXwe?=
 =?us-ascii?Q?7f/nzkZVe5sCwcS/MGhnknnELxhMOXBZcAob3EE/n/MklF1rApbamIPlS+JB?=
 =?us-ascii?Q?gOH2QZKYhTfdyLvArxFSfdNAyPn97bh2WK66GIsZ42rINKQgWwm9iG+3lO7P?=
 =?us-ascii?Q?Z8pRNWKtWEymToNC5lNeeA4kdRpbpjrBtXANMBFCrV3nMqEHIB/n6dZj8K4+?=
 =?us-ascii?Q?APsSYioAj+6mFO+UHmkxBJODHYhgKU6mb+XvPlisXjB9IWBi6X1P7qHrzf1s?=
 =?us-ascii?Q?J4eCLdKWnsXhwiOmroEhpc9v3QzwixE791slRqdVOGLobfppqc2MfzjAJQuO?=
 =?us-ascii?Q?hmnv4t8orAiMF02OGydgJ315XIHQIEXU7Ds9VyknBGR8mXC844eQ4JW/NVP4?=
 =?us-ascii?Q?RuKAGrFC2OX1UxDyosnwfJpQSV4AucUS0KtYXE2TUoKq0Ox5Mag0CI8q+bgW?=
 =?us-ascii?Q?5hrfKg5Ac8veYWhMFSAZJmUv0LGp4VjxfPTgpHQ1w7bywMyA8L9SC18acAkp?=
 =?us-ascii?Q?Y8YqCIKOKW11+NPIMsn/kVsqNINCU8OlbAbVqyYK66ohhtKrPliGj6P9DQSp?=
 =?us-ascii?Q?o1OfVOsua4kCOYe+AbVGMm/ghJoMTEYTnWdvfc0g1Eyr5k0N7qUgVCkPoQao?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13f43368-cc9f-4aa7-66fc-08dcab088d1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:13:59.5006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cI48JuDpaLLD4LwrIRVv8lagIZTseJkMtwO5TulJQPSUCfhkv5ZzsVCLHfGoyWxVUh9wg8SdvZ+eWUIZQFAessG7DXUZkkV3FIlC8S3vbkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733393; x=1753269393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5onX9JebrRiek8X0B6IOkgrlh1ttjGj8WTDbKRQZrx8=;
 b=bOCVvAP5daVTGujr25sJ7AfvPakSiF7bmZly5OaVlgUtt1a5tVRfi0eU
 1TCWTevt9CXclA5msA9U5D6Vc2lvtLFjvbIa8ahp/fUF2JTjp/zGSxRN6
 Xqb1aaD6sPy/S+DukzRjed2dPyATWZMq9umSKVMBSZKBNqCGrXtHTXNj3
 VLy8m8nyj7TclaDXLRtHerp+9cwuWtrEEgyY0qknBhQG5ij2bE79tQgLO
 hDNdU+QCxNdU+o3sfxkz5+b9ggSOZ+jItMkMCY8jZZsZmn2llHHsBlGY6
 b9h4mkIAgYlTchEgK0eb9o23/Pr7Kq0xZWv4glA6Hz3tQVQN9l1xyxAfC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bOCVvAP5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 03/15] ice: add basic devlink
 subfunctions support
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 6, 2024 1:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: shayd@nvidia.com; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; pio.raczynski@gmail.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [iwl-next v5 03/15] ice: add basic devlink sub=
functions
> support
>=20
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>=20
> Implement devlink port handlers responsible for ethernet type devlink
> subfunctions. Create subfunction devlink port and setup all resources nee=
ded for
> a subfunction netdev to operate. Configure new VSI for each new subfuncti=
on,
> initialize and configure interrupts and Tx/Rx resources.
> Set correct MAC filters and create new netdev.
>=20
> For now, subfunction is limited to only one Tx/Rx queue pair.
>=20
> Only allocate new subfunction VSI with devlink port new command.
> Allocate and free subfunction MSIX interrupt vectors using new API calls =
with
> pci_msix_alloc_irq_at and pci_msix_free_irq.
>=20
> Support both automatic and manual subfunction numbers. If no subfunction
> number is provided, use xa_alloc to pick a number automatically. This wil=
l find the
> first free index and use that as the number. This reduces burden on users=
 in the
> simple case where a specific number is not required. It may also be sligh=
tly faster
> to check that a number exists since xarray lookup should be faster than a=
 linear
> scan of the dyn_ports xarray.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  |   3 +
>  .../ethernet/intel/ice/devlink/devlink_port.c | 288 ++++++++++++++++++
> .../ethernet/intel/ice/devlink/devlink_port.h |  34 +++
>  drivers/net/ethernet/intel/ice/ice.h          |   4 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   7 +
>  7 files changed, 341 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index f774781ab514..bfb3d5b59a62 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -6,6 +6,7 @@

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


