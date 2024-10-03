Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 101C298EC42
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 11:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C614060778;
	Thu,  3 Oct 2024 09:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wCWGJ_xRfA35; Thu,  3 Oct 2024 09:26:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B556607A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727947567;
	bh=tyE0j+XlgXgz7G4n7HnsWtWnEIGn/l914W53iWB2uHs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sVEWI3JRQhySgGdwH4xQ9avf1VdGPZffWlQeDIrnfQzEnCGTx8Seijr2+2vnNyAKE
	 MU/fbJkB5lYJyeKvjZPrb+uKXGXf/LMDmewczI/iIeHt5Ijd2LrJpX2c88UHasBKfT
	 z8au55oOMduT25fOH4y29Ie69i1ERUts6P35pBEi96E90KWLBUrwaXdf074eIbUpDM
	 eRX0yzuJieM2E5I6twyJJSzp+tRJ9CixSSF+wnWgoyr6lBfUH6dypG3AnoCEYJEu3I
	 3AXDd+CMwIwnVRh8DtlqTUCCPKMBNSlu7xaNonZa1CKKmssSdGTag1uU326tlYXdxC
	 mlXgtbVK6VIMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B556607A9;
	Thu,  3 Oct 2024 09:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C301B1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 09:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DBAF411E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 09:26:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jSdKWypPSXjV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 09:26:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D97840C63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D97840C63
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D97840C63
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 09:26:00 +0000 (UTC)
X-CSE-ConnectionGUID: KtfoyWiRSemp8OrKMeiWDw==
X-CSE-MsgGUID: Xx0xIFnZRKO01H6JuNt87Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="37693472"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="37693472"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 02:26:00 -0700
X-CSE-ConnectionGUID: Vg1myIijSYi5m2+nBlYWXQ==
X-CSE-MsgGUID: diuo53olRbuN1WgNx/lE7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="97626527"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 02:26:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 02:25:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 02:25:59 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 02:25:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 02:25:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 02:25:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wHoVlLMC4Ddqp9MNq4XYHQaUO0WCligRCGW/W7uXhvouoO0GjSFjY0ld/zyou4So8mgp+7nyKu1Cdnbow8H/tf++jr5f87XgdhGNwdxEyaAwGE6FR/2yNNnL33BUAWBWMldJY3/n+4YDK0fGnI8QmM0SWfvCKFsAe4r1cx5mZ0s6UsBp0AJ/JIlX7WUqX7rRN8OM/CS4/EM2x64bWD806BcjT8fDGREE7WjROsc0NO7jDZRRIKjFhuHavHGlYV4S8B37NWT6xWgtH3LiMAmuYoXe1FQ/rUqWVGQ1SHfvTKLTZk7KgnpzgJ1ItZEwOgaKx1uP4QxW1zghAPivWoeqJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tyE0j+XlgXgz7G4n7HnsWtWnEIGn/l914W53iWB2uHs=;
 b=waRz/azrI8MUzyGPywS8e2wcgCSiW9L4NiQxjo0sArlECnrokCo00hRlOPHdjPFCxHBkqMih352gbiUnGyHhyUA44KMl9dmTHTQjns1PSNnfDtmbNhLzKk9BBauByEW0SDpobVVh2NpOmmcC3uKh3aTXiJEQg2RIXySWtT4oKCY5JUFAS3Iad6Ucu0LE6oXXypvDF/VfQKTR5Qbzs80LkQu8tPISPXCkA+9vQWn+dCtLmBB5e1GCn0vbPCjn2d2PQuCj3OakwdBMXgTyXhfkHpiQIS93G7OfMWRrDnYbDRGnABulsZLICgH/ao4PyHfnpckwZGObekbXuuXRksg9Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 IA0PR11MB8418.namprd11.prod.outlook.com (2603:10b6:208:487::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 09:25:56 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8026.017; Thu, 3 Oct 2024
 09:25:56 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix crash on probe for
 DPLL enabled E810 LOM
Thread-Index: AQHbE2jnCbrURC2QDEuHM4EfNTi3EbJ0CzEAgAC5MHA=
Date: Thu, 3 Oct 2024 09:25:55 +0000
Message-ID: <DM6PR11MB465745EEAAD6D61325AB3CE29B712@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20240930184030.897689-1-arkadiusz.kubalewski@intel.com>
 <7b84469d-8404-1961-c038-27eca4bd93b6@intel.com>
In-Reply-To: <7b84469d-8404-1961-c038-27eca4bd93b6@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|IA0PR11MB8418:EE_
x-ms-office365-filtering-correlation-id: d9668b90-13bd-482a-3770-08dce38d6253
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dmxiWDMvWkpzbkVzWDhjRnNsWUpKQWpHVmJjY20rdERnK2x6RFd0dFdxSVhP?=
 =?utf-8?B?V0VUVER1bTZacy90alc4cm5SVllXbTFENWVWRjNzdElnY3daVktwY2J4WVRO?=
 =?utf-8?B?OVdjNTkzS3J4N2U1RHdlb0lIQm5CM3oxU21mQWlmT2Vvbmx5U0s1V3BaOUxj?=
 =?utf-8?B?M3ZERWJOWWdhVThyT0llOEhxdWhrUUllMklnZFB5amthWC83d2VqeDlTNjFH?=
 =?utf-8?B?THlrUDBtUlB4bTVUYmw1U3F0ZnBkWktpRjZic0hjSmZwYkhobkRPcmFMMHgx?=
 =?utf-8?B?ak9wQXJYOWRNNzZoSnczcFpLTlNvV0M2WURON0hla1lkazdDYnhmVjR3VHRo?=
 =?utf-8?B?VUdUWk02ZHg0LzBtUUVKVHYwY0xFcjJHQm9rYzE1dDVCR3pxMmlJMWowL08v?=
 =?utf-8?B?UlV5TmZodVdBQ3dUY2hrM2cyNXplLzhtQ2JuNkRGTW45dXFJVS9DZ3R4RHlR?=
 =?utf-8?B?Y0ttRlVsakVOTmRBU2RZbHFGTTFBeWw1TkZ4b2tXOTc2OXZWYVBOZHpYdzdJ?=
 =?utf-8?B?Z2tQc2Y5L2dEd0NhVjRFbjhQcU1vLzBmcjBEcDZ6UU5VOEZ1alZLVkh5ZmxQ?=
 =?utf-8?B?QVBHWmVFZVEzbTdoZzRUV3dPR1lWYm5WQ1NobVdhU254RTk0QWZzeGZRMzE1?=
 =?utf-8?B?RUxoN1FOWFluWkVMNFd2Sy90NTlBVDdqL0dKcGdGQzBGZmwrN25jM1RJdXlE?=
 =?utf-8?B?dWZlZUZ6TFhBMmgvdEs2UzZYQU5zUHRkMVlNc1dHdXFKNnBscS83bUg4c1N4?=
 =?utf-8?B?SlZuTU1zL3JsSVRnN1ZpSW9NUnUvem5nUC8zVkl1aWRkRDJIZEhWbWZlU0hQ?=
 =?utf-8?B?MlpzdVNPdjZaeGRPWVZ6L2FJNEE3L0hEZGl6dFBsQkdyb1RwRXpiSk1JMWtD?=
 =?utf-8?B?M0ptdzlKUCtqdXpqSWRuSkR6SkxLeGlsUmN2eHRMT0dNYWVHUE11S3RJK0Rm?=
 =?utf-8?B?TGZhK2JkNXRQby9oYm1hRlJWOCtUZk5lTzNtaFhxbGlJVXZKb29PcFlrTlk1?=
 =?utf-8?B?RE1DSTFmbjJENTR2bUVjbTZuL3I2NW9RZ3BzQTYvQzFleXkyNWhEZWF1NnBy?=
 =?utf-8?B?a0VwSjV2ZXlDQzFnSFlpYXBFcm9jNUdsZjZoTG1abkJsbE5hRTM3LzA5Qkgy?=
 =?utf-8?B?ZWgwdlFFSVh4Zi9IL0wrOCtEYkswRDdTOU9jK2xyalNLWmd6dzdvY3dWdGEy?=
 =?utf-8?B?NmJUNTByRUVNUzNpeU0wRG5FUEJoOGRFL1lrK1pvcHRVSXJiR2w4U3VVSWZl?=
 =?utf-8?B?RnNpZ1NOS0NpVHh0a25jeVlIR05kRkZGYjRTS2ZjdW0zTUkrUk5jNGMyRnFk?=
 =?utf-8?B?UEZEdTZYa1pJU09QY3FaOWZhZENWR0tuWG9LOU1lMHJ1aThDUHU3QVB0c1Qy?=
 =?utf-8?B?NnBLbmRZVTdIZmZIakhld3dqVm0vYm9vQmJ6YzM1czc5MmhMa3Rhdnl3ZUR1?=
 =?utf-8?B?bElVWlpvMUZYcVVvZEpNY3JiRzZPUlBiUjlwWVJIem5Kc0orcGpHRW44ZmRn?=
 =?utf-8?B?bUtzazJ2eWVXQUlPdnNLTVlSSzdTajdETTZraUZnU3h3c3ducHJEOHc5YlZK?=
 =?utf-8?B?bXNoOGZMY3oyaFVNSC84SXFYR29Vc3ordks2SWltZXhBV3FMa0dkV0dxdGZV?=
 =?utf-8?B?Mm5YSWNOaUljQ1dMTGp1Y1ZrbWZEWVJoYis2d1ZrN2Z6dHppczVBMFZiUmc5?=
 =?utf-8?B?bmwwbjh2am12UGRheU9sRklTM05QSCtSZXpwaXo2ZHNxQmNDdkFFb1o1ZUxZ?=
 =?utf-8?B?VjJSYjFGNHcvUzVvc1kzODB6ZzdsdlhhT2RveDNoYTlkU2xLdXJYSTM5SElY?=
 =?utf-8?B?T3NoQmNYVUJYeStxT1p1dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHg5MGxaV2NyMGdudjY5SHZNVFhFaUc1R0dqeGxxbVV0Y3dCVzdlRzNsNTUy?=
 =?utf-8?B?Z0NYdWwvUmszTXlGUE03MHV1TlBhTnJkQ2R3cklCd3dnUUhUQVBZSWpTYWMz?=
 =?utf-8?B?aVRrMFF6Q0xCVXlndWxHNXhORXd1WkQzZVZDMGU0OGZaYVMwZE5YSGNxR3I0?=
 =?utf-8?B?TzVPejAvMVVHc1hjVzAyWjI0M3RobzRjZm1LWVBmR1dWcTdaK1p0NFRpaHBu?=
 =?utf-8?B?TmEvcjR2QlJveU5NcjdQZWZaN3JKMEROQkFvUktBbFR5TGNhNkY1V2NxSWw1?=
 =?utf-8?B?MWlsOXBRenB4QXpqQjRkQlN0dXBPNThhem9qQ3JBLzZOWnZMRjZJU242TWI4?=
 =?utf-8?B?aHYwaTRsVXZ5dmp4UnRoQzRFSG5FazZ6d29IN1VIa1Q1bTlDanpyK0pTRnhV?=
 =?utf-8?B?OGlJNjVwbnVyS3VYeTRSdkFHTW5EWFpXUGd1QXowUjMwbXB3UHN4c1c5SkIz?=
 =?utf-8?B?bjkxbTdhVnlhaEpVUEU3OEQ0U3JJUFhacUMxb0xjbVVhQ2F3YWFDckpKeDdI?=
 =?utf-8?B?R1ZubkdyVXhYVWpLeVMzaU01U094ei9tV0hnNDdsd05uRVIrSkp3WVArcjJm?=
 =?utf-8?B?U1pyNHRWMitzNThEVGVoYW5sb3hrb2cwNEJ4Yks0bGtYbEF4YWZLM21MOEZ4?=
 =?utf-8?B?aVhQNHFYV3gvSWdFeDJLNURaUW5xL2xaWG1uTW5MVEtDeE9TQUdoVnRnbXdC?=
 =?utf-8?B?RUVvY1pwU0JjZ1lORXBFRmpLWG5XdGZUNS9zWnk3ZzZ0N3lyckVVckMwMU5P?=
 =?utf-8?B?QmthZ3JnVkdEQmcvdGRERHBoaXlTakdmZUhHRXhvcldER2xNMHRUSFZPbS9n?=
 =?utf-8?B?a0tCY094dzJTT2cxTHh6VU8xQWJTeGQrVXh6cGVqT2ZPKzlrSnNxa1NBNTZu?=
 =?utf-8?B?WURLWEMxMGJIOFJOUHJsZDhUWGhBdmdxcGplS245SExMMjZ6ckhjTDRCTU1X?=
 =?utf-8?B?clZhcE1ZUmZqSmo4QmNqdCtmZ0U4R3A3dXFyS0pJUmw3WlRHd2JFS0lOVUx6?=
 =?utf-8?B?TDZyemUrWUxQK0RjVEM0Ykw0em5CMCtxN2FpdzFwb1JCUkVQYTVHWlRBODhT?=
 =?utf-8?B?UmR6ZHVVcm10RFJvWURMdmRKY2VQaWU0RHFQTDBydFZGOVlPeEJQMlJYMXI1?=
 =?utf-8?B?aWRZa2NMbmdtNUwxQk5YUWtYTDNhYWRIZjdBN0lmSmkvUnlPeDV4NCswcEU5?=
 =?utf-8?B?cEFQazNhbk1IZGJLRnFLMnMvVG13VTF6dHBndm9HTVVUQkhMMTlRbWZ5aXBj?=
 =?utf-8?B?S2o1NjdPWi82SmVWdU1ZS0lNSEZkQ2puamZha2VMZUxrVVk5V01RbnY5TlJB?=
 =?utf-8?B?VnNtVmxTMTJESTVaRENZZjhJMHA5MWMwQlpOSUpIQlJUL3JJU01ZYS8yUkF5?=
 =?utf-8?B?VCtNaWxiUHhtU0R2ZVpkcExxTWhvemcvUVl0YTd6empqVlZVS3RtRS96dE5P?=
 =?utf-8?B?R041dFFVTHRieFFBb0J2dmhzcEt0NTFDaUlISVpadkNUbW00KytQZy9JbFpK?=
 =?utf-8?B?KzlDMEhVeEcrT1RnNFBoNktCbEo2cTd5Q1BlY3FWYVkyTzNUVmV0RzRrNEpw?=
 =?utf-8?B?THo5M3JvVkF2d0lyWVVXUnp4VnE0UENITmJBTTFZSlFZVkJFN1Z3cHNZR3pT?=
 =?utf-8?B?bVhCOVVZUFJDcmNUc0hzbGlwV1Z3c2NzWVZsOUNDdEFXZFJCdExmZmlJNER1?=
 =?utf-8?B?dkFkYXE5KzJrVDhzN2NkRDV5WHQyd2Q5Qm1aTTZQSHQ5RXQzNUYvdjJkZjN4?=
 =?utf-8?B?UjVPN1dBb2FHOU1WVXJON2ZFb1RGV2FpNlhVOUhvaGpqTURjVEdBc3pKcGl0?=
 =?utf-8?B?WEJkdmRlVFpKeW9mME5ieE52THRtUXQzWE9udVhQQ2JwdEx5S29MVlUyOWtI?=
 =?utf-8?B?Z3VXUFVIOTljODJhNlhvd01WMGFYMXNVZFFlNlRNclM3VmhKd2RmcWZEOURn?=
 =?utf-8?B?TGJaRHpyeUJwb2tIVEtBNUxQZHNIODE0bk8yZDJXMU40dmVBUnZOTVNoRTFt?=
 =?utf-8?B?ZjhRdmxmTm4rcHZ5MDgrZU9oeFBUZmdMRkk1QWQwQTFxZHZGNlZPQjVEQ1o5?=
 =?utf-8?B?bEFLMk9NaUFjL1AxM3MyWW1oMjliWDJPbnFCV2hWK3R3Y2hZN3Iyb2dQY1Jt?=
 =?utf-8?B?WDBVd0RuUkdiQkVOaXFpeVpvY2xDM29sVTArQjNVSEc5dDN5R1hxZEhFMXdC?=
 =?utf-8?B?U1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9668b90-13bd-482a-3770-08dce38d6253
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2024 09:25:55.8823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S7JEPyEH73cMY7ydhuTMgbG0UCVEPVG9Okte8CGOS7KfsIBdyYESoeG/kCe5PJP03y+gZNy4f2UOH5Zko6qpv6M9MPWZR7/NIYJTRfx1+MA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8418
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727947561; x=1759483561;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tyE0j+XlgXgz7G4n7HnsWtWnEIGn/l914W53iWB2uHs=;
 b=FEqJwbhANZ8iEmky19eB8v5rph2f1lYrACYTSFPBwOxRd2jLBfMVv66V
 LPC3fXeSVhcfiYQOoFrWbuo8cDyLcAQ8BLDXExuq5SZZWUwb0cTcio3/x
 X+/RvGK0kr89v3iePTjMhNH6fLePuba3wv/iLR0OKU5DbojZMEpUfU0IP
 QT1Dh6zMtQPglO1igxf1VYrwEq0/6wOFqNEQQPV0VV4koG53swUXUMKX0
 knRV/nDGqgntuPoeOAGEuxq08bN18cnfzwGEfdZADBOO2Cf6e+wcsRUCT
 RN0DOgyFOaGhHOg45/YshhYX9K1Oa4ZyRKVDL+E8ub4BEYrEhGTrpd4RW
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FEqJwbhA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix crash on probe
 for DPLL enabled E810 LOM
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj5T
ZW50OiBUaHVyc2RheSwgT2N0b2JlciAzLCAyMDI0IDEyOjE4IEFNDQo+DQo+T24gOS8zMC8yMDI0
IDExOjQwIEFNLCBBcmthZGl1c3ogS3ViYWxld3NraSB3cm90ZToNCj4+IFRoZSBFODEwIExhbiBP
biBNb3RoZXJib2FyZCAoTE9NKSBkZXNpZ24gaXMgdmVuZG9yIHNwZWNpZmljLiBJbnRlbA0KPj4g
cHJvdmlkZXMgdGhlIHJlZmVyZW5jZSBkZXNpZ24sIGJ1dCBpdCBpcyB1cCB0byB2ZW5kb3Igb24g
dGhlIGZpbmFsDQo+PiBwcm9kdWN0IGRlc2lnbi4gRm9yIHNvbWUgY2FzZXMsIGxpa2UgTGludXgg
RFBMTCBzdXBwb3J0LCB0aGUgc3RhdGljDQo+PiB2YWx1ZXMgZGVmaW5lZCBpbiB0aGUgZHJpdmVy
IGRvZXMgbm90IHJlZmxlY3QgdGhlIGFjdHVhbCBMT00gZGVzaWduLg0KPj4gQ3VycmVudCBpbXBs
ZW1lbnRhdGlvbiBvZiBvdXRwdXQgcGlucyBpcyBjYXVzaW5nIHRoZSBjcmFzaCBvbiBwcm9iZQ0K
Pj4gb2YgdGhlIGljZSBkcml2ZXIgZm9yIHN1Y2ggRFBMTCBlbmFibGVkIEU4MTAgTE9NIGRlc2ln
bnM6DQo+Pg0KPj4gV0FSTklORzogKC4uLikgYXQgZHJpdmVycy9kcGxsL2RwbGxfY29yZS5jOjQ5
NSBkcGxsX3Bpbl9nZXQrMHgyYzQvMHgzMzANCj4+IC4uLg0KPj4gQ2FsbCBUcmFjZToNCj4+ICAg
PFRBU0s+DQo+PiAgID8gX193YXJuKzB4ODMvMHgxMzANCj4+ICAgPyBkcGxsX3Bpbl9nZXQrMHgy
YzQvMHgzMzANCj4+ICAgPyByZXBvcnRfYnVnKzB4MWI3LzB4MWQwDQo+PiAgID8gaGFuZGxlX2J1
ZysweDQyLzB4NzANCj4+ICAgPyBleGNfaW52YWxpZF9vcCsweDE4LzB4NzANCj4+ICAgPyBhc21f
ZXhjX2ludmFsaWRfb3ArMHgxYS8weDIwDQo+PiAgID8gZHBsbF9waW5fZ2V0KzB4MTE3LzB4MzMw
DQo+PiAgID8gZHBsbF9waW5fZ2V0KzB4MmM0LzB4MzMwDQo+PiAgID8gZHBsbF9waW5fZ2V0KzB4
MTE3LzB4MzMwDQo+PiAgIGljZV9kcGxsX2dldF9waW5zLmlzcmEuMCsweDUyLzB4ZTAgW2ljZV0N
Cj4+IC4uLg0KPj4NCj4+IFRoZSBudW1iZXIgb2Ygb3V0cHV0IHBpbnMgZW5hYmxlZCBieSBMT00g
dmVuZG9yIGlzIGdyZWF0ZXIgdGhhbiBleHBlY3RlZA0KPj4gYW5kIGRlZmluZWQgaW4gdGhlIGRy
aXZlciBmb3IgSW50ZWwgZGVzaWduZWQgTklDcywgd2hpY2ggY2F1c2VzIHRoZSBjcmFzaC4NCj4+
DQo+PiBQcmV2ZW50IHRoZSBjcmFzaCBhbmQgYWxsb3cgZ2VuZXJpYyBvdXRwdXQgcGluIGluaXRp
YWxpemF0aW9uIHdpdGhpbg0KPj4gTGludXggRFBMTCBzdWJzeXN0ZW0gZm9yIERQTEwgZW5hYmxl
ZCBFODEwIExPTSBkZXNpZ25zLg0KPj4NCj4+IE5ld2x5IGRlc2lnbmVkIHNvbHV0aW9uIGZvciBk
ZXNjcmliZWQgaXNzdWUgd2lsbCBiZSBiYXNlZCBvbiAicGVyIEhXDQo+PiBkZXNpZ24iIHBpbiBp
bml0aWFsaXphdGlvbi4gSXQgcmVxdWlyZXMgcGluIGluZm9ybWF0aW9uIGR5bmFtaWNhbGx5DQo+
PiBhY3F1aXJlZCBmcm9tIHRoZSBmaXJtd2FyZSBhbmQgaXMgYWxyZWFkeSBpbiBwcm9ncmVzcywg
cGxhbm5lZCBmb3INCj4+IG5leHQtdHJlZSBvbmx5Lg0KPj4NCj4+IEZpeGVzOiBkNzk5OWY1ZWE2
NGIgKCJpY2U6IGltcGxlbWVudCBkcGxsIGludGVyZmFjZSB0byBjb250cm9sIGNndSIpDQo+PiBS
ZXZpZXdlZC1ieTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
DQo+PiBTaWduZWQtb2ZmLWJ5OiBBcmthZGl1c3ogS3ViYWxld3NraSA8YXJrYWRpdXN6Lmt1YmFs
ZXdza2lAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfZHBsbC5jICAgfCA0NCArKysrKysrKysrKysrKysrKysrKysNCj4+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDE5ICsrKysrKysrKw0KPj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oIHwgIDEgKw0KPj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmMNCj4+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmMNCj4+IGluZGV4IDc0YzBlNzMxOWE0Yy4u
NGJiNGQ3NGE3ZWI4IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9kcGxsLmMNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfZHBsbC5jDQo+PiBAQCAtMjA2Myw2ICsyMDYzLDQ4IEBAIHN0YXRpYyBpbnQgaWNlX2RwbGxf
aW5pdF93b3JrZXIoc3RydWN0IGljZV9wZiAqcGYpDQo+PiAgIAlyZXR1cm4gMDsNCj4+ICAgfQ0K
Pj4NCj4+ICsvKioNCj4+ICsgKiBpY2VfZHBsbF9pbml0X2luZm9fb3V0cHV0X3BpbnNfZ2VuZXJp
YyAtIGluaXRpYWxpemVzIGdlbmVyaWMgb3V0cHV0IHBpbnMNCj4+IGluZm8NCj4+ICsgKiBAcGY6
IGJvYXJkIHByaXZhdGUgc3RydWN0dXJlDQo+PiArICoNCj4+ICsgKiBJbml0IGluZm9ybWF0aW9u
IGZvciBnZW5lcmljIG91dHB1dCBwaW5zLCBjYWNoZSB0aGVtIGluIFBGJ3MgcGlucw0KPj4gc3Ry
dWN0dXJlcy4NCj4+ICsgKg0KPj4gKyAqIFJldHVybjoNCj4+ICsgKiAqIDAgLSBzdWNjZXNzDQo+
PiArICogKiBuZWdhdGl2ZSAtIGluaXQgZmFpbHVyZSByZWFzb24NCj4+ICsgKi8NCj4+ICtzdGF0
aWMgaW50IGljZV9kcGxsX2luaXRfaW5mb19vdXRwdXRfcGluc19nZW5lcmljKHN0cnVjdCBpY2Vf
cGYgKnBmKQ0KPj4gK3sNCj4+ICsjZGVmaW5lIElDRV9EUExMX0dFTl9PVVRfTlVNICAgMTYNCj4+
ICsjZGVmaW5lIElDRV9EUExMX0dFTl9PVVRfTEVOICAgMw0KPg0KPmlubGluZSBkZWZpbmVzIGFy
ZSBmcm93bmVkIHVwb24uIEknZCBwdXQgaXQgYWJvdmUgdGhlIGZ1bmN0aW9uLCBhdCB0b3ANCj5v
ZiBmaWxlIG9yIC5oIGZpbGUuLi4NCj4NCg0KU3VyZSwgZml4ZWQgaW4gdjIuDQoNCj4+ICsJc3Rh
dGljIGNvbnN0IGNoYXIgbGFiZWxzW0lDRV9EUExMX0dFTl9PVVRfTlVNXVtJQ0VfRFBMTF9HRU5f
T1VUX0xFTl0gPSB7DQo+PiArCQkiMCIsICIxIiwgIjIiLCAiMyIsICI0IiwgIjUiLCAiNiIsICI3
IiwgIjgiLA0KPj4gKwkJIjkiLCAiMTAiLCAiMTEiLCAiMTIiLCAiMTMiLCAiMTQiLCAiMTUiIH07
DQo+DQo+Li4uIGhvd2V2ZXIsIGNvdWxkIHdlIGRlY2xhcmUgdGhlc2Ugd2l0aG91dCB0aGUgc2l6
ZXMgYW5kIHVzZSBhcnJheSBzaXplDQo+Zm9yIHNpemU/DQo+DQoNCkkgaGF2ZSByZW1vdmVkIGZp
cnN0IGRpbWVuc2lvbiBhbmQgdXNlZCBzaXplb2YgbGF0ZXIuDQoNCj4+ICsJdTMyIGNhcCA9IERQ
TExfUElOX0NBUEFCSUxJVElFU19TVEFURV9DQU5fQ0hBTkdFOw0KPj4gKwlzdHJ1Y3QgaWNlX2Rw
bGxfcGluICpwaW5zID0gcGYtPmRwbGxzLm91dHB1dHM7DQo+PiArCWludCBpLCByZXQ7DQo+DQo+
c21hdGNoIHJlcG9ydHM6DQo+Li4vZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9k
cGxsLmM6MjEwNQ0KPmljZV9kcGxsX2luaXRfaW5mb19vdXRwdXRfcGluc19nZW5lcmljKCkgZXJy
b3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdyZXQnLg0KPg0KDQpGaXhlZCBpbiB2Mi4NCg0KPg0K
Pj4gKw0KPj4gKwlpZiAocGYtPmRwbGxzLm51bV9vdXRwdXRzID4gSUNFX0RQTExfR0VOX09VVF9O
VU0pDQo+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4+ICsJZm9yIChpID0gMDsgaSA8IHBmLT5kcGxs
cy5udW1fb3V0cHV0czsgaSsrKSB7DQo+PiArCQlwaW5zW2ldLmlkeCA9IGk7DQo+PiArCQlwaW5z
W2ldLnByb3AuYm9hcmRfbGFiZWwgPSBsYWJlbHNbaV07DQo+PiArCQlwaW5zW2ldLnByb3AudHlw
ZSA9IERQTExfUElOX1RZUEVfRVhUOw0KPj4gKwkJcGluc1tpXS5wcm9wLnBoYXNlX3JhbmdlLm1p
biA9DQo+PiArCQkJcGYtPmRwbGxzLm91dHB1dF9waGFzZV9hZGpfbWF4Ow0KPj4gKwkJcGluc1tp
XS5wcm9wLnBoYXNlX3JhbmdlLm1heCA9DQo+PiArCQkJLXBmLT5kcGxscy5vdXRwdXRfcGhhc2Vf
YWRqX21heDsNCj4+ICsJCXBpbnNbaV0ucHJvcC5jYXBhYmlsaXRpZXMgPSBjYXA7DQo+PiArCQlw
aW5zW2ldLnBmID0gcGY7DQo+PiArCQlyZXQgPSBpY2VfZHBsbF9waW5fc3RhdGVfdXBkYXRlKHBm
LCAmcGluc1tpXSwNCj4+ICsJCQkJCQlJQ0VfRFBMTF9QSU5fVFlQRV9PVVRQVVQsIE5VTEwpOw0K
Pj4gKwkJaWYgKHJldCkNCj4+ICsJCQlicmVhazsNCj4+ICsJfQ0KPj4gKw0KPj4gKwlyZXR1cm4g
cmV0Ow0KPj4gK30NCj4+ICsNCj4+ICAgLyoqDQo+PiAgICAqIGljZV9kcGxsX2luaXRfaW5mb19k
aXJlY3RfcGlucyAtIGluaXRpYWxpemVzIGRpcmVjdCBwaW5zIGluZm8NCj4+ICAgICogQHBmOiBi
b2FyZCBwcml2YXRlIHN0cnVjdHVyZQ0KPj4gQEAgLTIwOTcsNiArMjEzOSw4IEBAIGljZV9kcGxs
X2luaXRfaW5mb19kaXJlY3RfcGlucyhzdHJ1Y3QgaWNlX3BmICpwZiwNCj4+ICAgCQlwaW5zID0g
cGYtPmRwbGxzLm91dHB1dHM7DQo+PiAgIAkJbnVtX3BpbnMgPSBwZi0+ZHBsbHMubnVtX291dHB1
dHM7DQo+PiAgIAkJaW5wdXQgPSBmYWxzZTsNCj4+ICsJCWlmIChudW1fcGlucyAhPSBpY2VfY2d1
X2dldF9waW5fbnVtKGh3LCBpbnB1dCkpDQo+PiArCQkJcmV0dXJuIGljZV9kcGxsX2luaXRfaW5m
b19vdXRwdXRfcGluc19nZW5lcmljKHBmKTsNCj4+ICAgCQlicmVhazsNCj4+ICAgCWRlZmF1bHQ6
DQo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYw0KPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+PiBpbmRleCAzYTMzZTZiOWIzMTMuLmU0YWI3NjQ5NmQz
YSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRw
X2h3LmMNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3
LmMNCj4+IEBAIC01OTY0LDYgKzU5NjQsMjUgQEAgaWNlX2NndV9nZXRfcGluX2Rlc2Moc3RydWN0
IGljZV9odyAqaHcsIGJvb2wgaW5wdXQsDQo+PiBpbnQgKnNpemUpDQo+PiAgIAlyZXR1cm4gdDsN
Cj4+ICAgfQ0KPj4NCj4+ICsvKioNCj4+ICsgKiBpY2VfY2d1X2dldF9waW5fZGVzYyAtIGdldCBw
aW4gZGVzY3JpcHRpb24gYXJyYXkgc2l6ZQ0KPg0KPm1pc3NlZCB1cGRhdGluZyBrZG9jIGZyb20g
Y29weS9wYXN0ZS4uLg0KDQpGaXhlZCBpbiB2Mi4NCg0KPg0KPj4gKyAqIEBodzogcG9pbnRlciB0
byB0aGUgaHcgc3RydWN0DQo+PiArICogQGlucHV0OiBpZiByZXF1ZXN0IGlzIGRvbmUgYWdhaW5z
dCBpbnB1dCBvciBvdXRwdXQgcGlucw0KPj4gKyAqDQo+PiArICogUmV0dXJuOiBzaXplIG9mIHBp
biBkZXNjcmlwdGlvbiBhcnJheSBmb3IgZ2l2ZW4gaHcuDQo+PiArICovDQo+PiAraW50IGljZV9j
Z3VfZ2V0X3Bpbl9udW0oc3RydWN0IGljZV9odyAqaHcsIGJvb2wgaW5wdXQpDQo+DQo+Li4uIHRo
b3VnaCBJIHdvbmRlciBpZiBpY2VfY2d1X2dldF9udW1fcGlucygpIHdvdWxkIGJlIGEgYmV0dGVy
IG5hbWU/DQo+DQo+VGhhbmtzLA0KPlRvbnkNCj4NCg0KQWxsIGZpeGVkIGluIHYyIDopDQoNClRo
YW5rIHlvdSENCkFya2FkaXVzeg0KDQo+PiArew0KPj4gKwljb25zdCBzdHJ1Y3QgaWNlX2NndV9w
aW5fZGVzYyAqdDsNCj4+ICsJaW50IHNpemU7DQo+PiArDQo+PiArCXQgPSBpY2VfY2d1X2dldF9w
aW5fZGVzYyhodywgaW5wdXQsICZzaXplKTsNCj4+ICsJaWYgKHQpDQo+PiArCQlyZXR1cm4gc2l6
ZTsNCj4+ICsNCj4+ICsJcmV0dXJuIDA7DQo+PiArfQ0KPj4gKw0KPj4gICAvKioNCj4+ICAgICog
aWNlX2NndV9nZXRfcGluX3R5cGUgLSBnZXQgcGluJ3MgdHlwZQ0KPj4gICAgKiBAaHc6IHBvaW50
ZXIgdG8gdGhlIGh3IHN0cnVjdA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcHRwX2h3LmgNCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wdHBfaHcuaA0KPj4gaW5kZXggMDg1MmEzNGFkZTkxLi5mMjhjYmFlOTI0ZGQgMTAw
NjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5o
DQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oDQo+
PiBAQCAtNDA0LDYgKzQwNCw3IEBAIGludCBpY2VfcmVhZF9zbWFfY3RybF9lODEwdChzdHJ1Y3Qg
aWNlX2h3ICpodywgdTgNCj4+ICpkYXRhKTsNCj4+ICAgaW50IGljZV93cml0ZV9zbWFfY3RybF9l
ODEwdChzdHJ1Y3QgaWNlX2h3ICpodywgdTggZGF0YSk7DQo+PiAgIGludCBpY2VfcmVhZF9wY2E5
NTc1X3JlZ19lODEwdChzdHJ1Y3QgaWNlX2h3ICpodywgdTggb2Zmc2V0LCB1OCAqZGF0YSk7DQo+
PiAgIGJvb2wgaWNlX2lzX3BjYTk1NzVfcHJlc2VudChzdHJ1Y3QgaWNlX2h3ICpodyk7DQo+PiAr
aW50IGljZV9jZ3VfZ2V0X3Bpbl9udW0oc3RydWN0IGljZV9odyAqaHcsIGJvb2wgaW5wdXQpOw0K
Pj4gICBlbnVtIGRwbGxfcGluX3R5cGUgaWNlX2NndV9nZXRfcGluX3R5cGUoc3RydWN0IGljZV9o
dyAqaHcsIHU4IHBpbiwgYm9vbA0KPj4gaW5wdXQpOw0KPj4gICBzdHJ1Y3QgZHBsbF9waW5fZnJl
cXVlbmN5ICoNCj4+ICAgaWNlX2NndV9nZXRfcGluX2ZyZXFfc3VwcChzdHJ1Y3QgaWNlX2h3ICpo
dywgdTggcGluLCBib29sIGlucHV0LCB1OCAqbnVtKTsNCg==
