Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66793755F73
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 11:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01EC4409F8;
	Mon, 17 Jul 2023 09:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01EC4409F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689586617;
	bh=0bzf8zftH0RjbSCJynWT039RsWssCn2Z+77N8Fi+6/Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PN0B/J2F/q29tEfqdRyKVntr+hBWvvJ802L5FoCw2oewgT8RoeE5+O0q1RDXWeVjU
	 mKsoKeQSgG6vnFugLFkrKW5QEI+XAvR7415QbiYyooi/+t6iDxC+KdsrMyZeNFJbnL
	 i6j8lzQbyBpd+66GONaQ2tlQLCvziZZAOmEz6wzVLDuiqQp1kSe+ry9k9wYe44EI1w
	 3w3t8UUBQdVuEqzdomdQJ30W1CUiBzaK7e0/HwDIBQGASq3LKF4e5t4g89W8Jc8l3Y
	 6ISsoriEWn4aXRLRQVcis6v4QkmAkamPUq1NVOHLieJuIHjr8Al7koJ4rLa73e/SLG
	 r8Qs4ecEpz40g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_ymUq_QEno3; Mon, 17 Jul 2023 09:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E15540412;
	Mon, 17 Jul 2023 09:36:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E15540412
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADFCB1BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 09:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83192408C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 09:36:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83192408C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NdDTVfq9f8_f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 09:36:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F795408C4
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F795408C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 09:36:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="363352145"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="363352145"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 02:36:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="813251887"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="813251887"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jul 2023 02:36:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 02:36:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 02:36:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 02:36:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1lS9x6LvRxGBr+TO201e8Viw/JUv/6OGyBk7w+HlhIic6nYsmD9ksmc19zow6Uz8EJOCTUyMUFAj7i6Az9GjNXYhN7OH6oft15Bm50Jsi7720Vb86G51TttgI6Ae8PJeIrVCYv8mWOjcdf7PofP4ofTO6+mPrxBQfBQDqds1Ac5y4rpHHwYIoKXsxhS9JtVqeIlns+Fi1D3EoIaq3vwlC5lXJ6EirqrAprw7mmMOWCo6FSgs5RV5mGydENQIvJAPtoveXQ/+YlWbqwigRB/BNnecLCS+Kytr74AN8/NroH9Zuq1aJry+OmDfjLdNsfeNNUyNTltX94ZdYaqdNAvgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oj1NZrBOJjxrmDtSVfilUpGx3oEal/5VwRDqp+fllfY=;
 b=Icw3rdxgrJO1IU1GXdWZYGXGSI3yxo+sr4w8h1yjDaZhmmC94F9GEPirSv37j2vis6oeGImVkq+BeMhDLsv7hRNE43Ng/ZH58ElmkfwPbpCT8K0jOMHie9hOX4ON/s9awPeTwsO1kcv6turuZNkw0BE75HHhAMl/KNUTdcBZF1Ki4GawJjmiMO27LvtjEheLbd9WSdhGowqoJ7Fz8iOiuyrA3Ayj0xsu0hFf4XyhFsLARDyOkcKJnOLQM3CjgDxr11nTSR/fSkGLXwxAXCyxE2x3Sa0msWeu3ze2OhsAKvf8MKyBIhtr+ufGYceZH0/hcOJ2lBSykqNvwLq6P7Psvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA2PR11MB4825.namprd11.prod.outlook.com (2603:10b6:806:111::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Mon, 17 Jul
 2023 09:36:44 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5965:1e86:c9b1:c4c]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5965:1e86:c9b1:c4c%4]) with mapi id 15.20.6565.028; Mon, 17 Jul 2023
 09:36:44 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs in
 bridge offloads
Thread-Index: AQHZuI/xJUGVQJQStkKj0eJAQ/4kH6+9r5UAgAABA4A=
Date: Mon, 17 Jul 2023 09:36:44 +0000
Message-ID: <MW4PR11MB57767325A9110C71C3539128FD3BA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230717091843.108015-1-wojciech.drewek@intel.com>
 <e5e7a277-9591-4154-15de-b78be569a498@molgen.mpg.de>
In-Reply-To: <e5e7a277-9591-4154-15de-b78be569a498@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SA2PR11MB4825:EE_
x-ms-office365-filtering-correlation-id: 81313d83-cad4-4a89-9790-08db86a955a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sxzDSkcxQIN8gBdj4Wgr7EsgnSZJDO2h5B3Twrbw9iH6PCMVkP18ODyLrAa1g4HZMMQhcyF599JaOOyHHYOYIgyx+q/+i/QCkAQfdZuo2iAhHNCZEV/jvEwHwWLpayGnTL5Tke4Gc4hl7Xt2sxQqazksJJqytu6tiD4I5OWlN6obKpqnN95QWwHyLK9LVqRTGzhWeZ1tHjvWbAD76nzH6vf7rhptTTH1SADHypuN5eZUyrsxM3xfSvu4zODNWcnhh7BLCrzVzLQKJva/6bXdgGien5kq2Ba67ohdhEF2iNmN5IOsq4YToDSDXbLPQAB1g8gYuWeS7tecoMQjSFH0zirqFZAGEI/xBpw8iQbqHM/Y9AcW0bmcVZ3cLnz/5jsAy0FE9Xn2FGbx59/EfZOhxUOTRe+YnIjXyd7KL/v4ONieeuCYS6h5gXxqjKhDLXZu6Y7ZgnK072WavR/bu4T7C+lwLDtBBo1aJ+gJVXC1Bnc2/O8VG8uI0DnYtckGILpvrapK53XJ/QuaC+Lg93kdvz96lGvOETDl3BD83WS0ZX6CGiKh8LYUdjo8051w4TR/33drL0fUeNfC7YMVMZhjGqJf48O45Oiuz7yf5Fq4zqrEqt2wjL57V75URXozW3AYFplmh2yDYsA1YQcWXtQBqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(71200400001)(55016003)(86362001)(33656002)(38070700005)(82960400001)(122000001)(38100700002)(966005)(9686003)(478600001)(2906002)(26005)(6506007)(66946007)(53546011)(7696005)(316002)(52536014)(8676002)(5660300002)(8936002)(54906003)(64756008)(76116006)(6916009)(66446008)(4326008)(41300700001)(66476007)(66556008)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXdsdG5WMXdBOC9aaEdxSGhwQ3h2VytDS1o3Kzl5R0drZFh0M3N3bzZmazhQ?=
 =?utf-8?B?WWgzKzJwczd4bURDTk9YYXhNU2hqSXQwa2dvUi9Qa0xHYWFOeFRxdVpJYUdY?=
 =?utf-8?B?amV5V0ZualVyTHpwbEpSMm9xMmtCeUxlWGNpVlRQMm8weVhneEVEQnlrV2pC?=
 =?utf-8?B?R0xPL3dFWUpiamRWQldQRjRkbkozRFl3b3BDRTRsa1diNWMxYU1MZVByQVlU?=
 =?utf-8?B?QkQzdE5TcGVCci8yK0YvQUJTdW1Xc0JKcHJ3SSt6eTlwendMOVdLN0NtWWpL?=
 =?utf-8?B?QVpMQlJIVmNqZXJIR2hkNGNEbmh6MGF3UXJUUWxoWW5iRFViRi8zYnU0RHdx?=
 =?utf-8?B?V0U4SW9UNWFwWGtLMEZQUHp0L29obFFNVU5LYjkvREpvamtsM2o3Wm41TVNU?=
 =?utf-8?B?NHJiUStMaWJlVU05UFVoUlJnL2x5ZEVsc0xnVTd1MTMyMXh4N3RBUW9lRUth?=
 =?utf-8?B?dTZuU2V6R3ZtYlM4MytpczFra3laQzN0WXhMRkpuQ3lOQUFQUHZ4Q2RTb2x0?=
 =?utf-8?B?OTNFT0h5aHJPVDRYamoxVkpDZE9hbmJmK3U4SmpPM1FCcmdWMUt1b08vSUdz?=
 =?utf-8?B?cktORHZ0ckR4WEw2Y0EyT3hTYkZuSUFtZmJTL1BLdVJ1RHpWOFJQcXBOYy83?=
 =?utf-8?B?NVFDMDVSQmVEd3YyRDhtZTZlUmNSM2xJTjhKVHoyQVY0c01SVVg3cm1WZ1hY?=
 =?utf-8?B?SVkxanBhWGxXZUttZG82UEpSMmdFSjRYNm54KzVPbzJOWHRhaWNBY0ZWZncz?=
 =?utf-8?B?QUVBYW51eFhXQkRsUEV4bEJtdG5lSTBxeitucVpqRXNyOERHcGtDVHFOSis1?=
 =?utf-8?B?eHVPUERzN2Rnc2hqbDQzUURBVk8vd3didjdnbGErNDZOSmNpU1NIWmp5eEM0?=
 =?utf-8?B?MmxHSGcralhuMHZNN2liT3A5TU9RT0ZpNVZnZ0JLd3MrWWpHNDI3SmcyOXR0?=
 =?utf-8?B?c3AxSmNhQnlwdFFaYkR0YzN6TThUMGFadU5LaXJDMlZoNDFTZ1NhcEJGOW91?=
 =?utf-8?B?OEdYYVY5VjRmQ0xFRWpGUFFCT1FzKzNEWUhMNG9WaGJtcS9IMGhxa0JmbUcy?=
 =?utf-8?B?Y1loZXZOVlhkdktrR1YzRnNxUGJJekJaZlZpRFp5MS84Rm1LWU5ES2JQL3Nv?=
 =?utf-8?B?NnAzemhad0JXc1UvVGZsUGJhWXJpSGkxV1FaNU1oL3lNQWJHMkgyck5QbzhB?=
 =?utf-8?B?YUpLVDlGRDRBazdtMkJ5bnBqTTMvSEdnWVhhRS9sUUZOblV4VjFBd3h0SUlr?=
 =?utf-8?B?UzBzVGEyb05TTEp6QUxxampYbStPVjhIZjNRRUtJWE4xYTRVWThCRzl1VUFy?=
 =?utf-8?B?cDRJRUZFMnZiS2lzaHBUbVM1SXlROEdvYUZXZWxNWXRza2hleFA2VThKa3lM?=
 =?utf-8?B?eWs2d00vdldsMTVVSFBMU1hMQTlWWTRSY0JjWU9kS3FJZ3J4NUd0YmQrV0Fz?=
 =?utf-8?B?bjAwWTBVR0pqODVmcVNzQllxMlVYeThuVmpxVStXMnZWTlp5RGtiK1JPWXdO?=
 =?utf-8?B?a01IbVpBTVcwc2ZjYlVLa1V3RnR6UHJ5NUI1SmRtbGVITWR4TlIvZUlybzZS?=
 =?utf-8?B?MmlMUkVVTUVTcHdpSW5WSkFkU3NrUFZTdVJqVG1wME9tZnQ5djRaODJNSE01?=
 =?utf-8?B?ZXYxanBOVXN3aHJUemx0dmpmWnVDaFpEbzM0QmpNQTlNcHZVcmJkRHViS1hj?=
 =?utf-8?B?ZGREcU1yb3NUczA2MU4xMU5sZHN0dTQ0R3VjTUhVM1V1TldlcnlPanlvMmJT?=
 =?utf-8?B?MjlvM0pGb1gyUDJMdEZiZlRSMHdjejdNdTlySnZvN2syZzlqWUtQL2xjWDZV?=
 =?utf-8?B?WWhMdkFPWE1NL1NVOGpMSmlHZUJhbEZFelNtNkRKWHpiM0NTeUFRWWNXTTNO?=
 =?utf-8?B?SS9aNHk2bnUrcXlCU25JbE5wZ2xDWlJxZStOYmllbXdhS012WW5TeURvWHdH?=
 =?utf-8?B?QitMQ1dxNWpGOHllYm8vM1phRHh1MGZzRnE2b1drNkJaMGs0VXBILzlhT2sz?=
 =?utf-8?B?cUtTTTdJVWtUQjJUOFMvb2YvRENXcnJzOUFCVEhwZEE5SjV2aWZSWTc2UXo3?=
 =?utf-8?B?eEtGdHhYQ1FXVWhBYlNNTktrUWtnMTlLM0s3eGxXd3BjSzR5RnVSL1k1Q3Q2?=
 =?utf-8?Q?/K0Euz+t5mRRc6vHm5wl369k6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81313d83-cad4-4a89-9790-08db86a955a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2023 09:36:44.7352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hGSKUNnDbiCkYE+OdXxKu2GlzcA6oc1UJjDyf33LlgflpUrM862Bbmpt5zK9/cDAMMv7eO7dRR3wvbhGkRXz7192n24ujulA32nEshOXKLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4825
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689586609; x=1721122609;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oj1NZrBOJjxrmDtSVfilUpGx3oEal/5VwRDqp+fllfY=;
 b=hElnxgr6NrMLhYkZvi7PLqqrIltA6XP9rYFSCr7DPACXZ3dMGmKgjUHH
 H6/RkSDzyGLM66j6Ao9qqSa8WrHCi8n6Z82mx9Rr1/vdO1fS65qlGNcvq
 7PflxtHRxffpwdYEAWsTuZlUqILAlbmQg9parfNFILWCy7vjvRl39LPoF
 yhNTWl/PV+H4BQxfat1fIKBazWQ/QhjhQ9GeYt2KT1290zh3naOPDklTE
 lodxvrgL6fUkluyFYlJVVBiy22uRr+sU+yviJB6Na/n65wzuVXkA1HSrj
 tXvXGi/tOMuST3UdLqC2d3iSV6MsV8cknMonsEBI8dZgTdzoCPr8vfHQV
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hElnxgr6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs
 in bridge offloads
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogcG9uaWVkemlhxYJlaywgMTcgbGlwY2EgMjAy
MyAxMToyNA0KPiBUbzogRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJld2VrQGludGVsLmNv
bT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBqaXJpQHJlc251bGxp
LnVzOyBzaW1vbi5ob3JtYW5AY29yaWdpbmUuY29tOyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IFN1Ympl
Y3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjJdIGljZTogQWNjZXB0
IExBRyBuZXRkZXZzIGluIGJyaWRnZSBvZmZsb2Fkcw0KPiANCj4gRGVhciBXb2pjaWVjaCwNCj4g
DQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQo+IA0KPiANCj4gQW0gMTcuMDcuMjMg
dW0gMTE6MTggc2NocmllYiBXb2pjaWVjaCBEcmV3ZWs6DQo+ID4gQWxsb3cgTEFHIGludGVyZmFj
ZXMgdG8gYmUgdXNlZCBpbiBicmlkZ2Ugb2ZmbG9hZCB1c2luZw0KPiA+IG5ldGlmX2lzX2xhZ19t
YXN0ZXIuIEluIHRoaXMgY2FzZSwgc2VhcmNoIGZvciBpY2UgbmV0ZGV2IGluDQo+ID4gdGhlIGxp
c3Qgb2YgTEFHJ3MgbG93ZXIgZGV2aWNlcy4NCj4gDQo+IFdoeSB3ZXJlbuKAmXQgdGhlc2UgaW50
ZXJmYWNlcyBhbGxvd2VkIHRvIGJlIHVzZWQgbGlrZSB0aGF0IGJlZm9yZT8gSXTigJlkDQo+IGJl
IGdyZWF0IGlmIHlvdSBhZGRlZCB0aGF0IGluZm9ybWF0aW9uLg0KDQpCb3RoIGJyaWRnZSBvZmZs
b2FkWzFdIGFuZCBMQUdbMl0gYXJlIG5vdCBhY2NlcHRlZCB5ZXQuIE9yaWdpbmFsbHkgdGhpcyBw
YXRjaCB3YXMgcGFydCBvZiB0aGUNCmJyaWRnZSBvZmZsb2FkIHNlcmllcyBidXQgZHVyaW5nIHRo
ZSByZXZpZXcgWzNdIGl0IHdhcyBzdWdnZXN0ZWQgdGhhdCBpdCBzaG91bGQgZ28gd2l0aCBMQUcg
c2VyaWVzLg0KVG8gc3VtIHVwLCBpdCB3YXMgaW50ZW5kZWQgdG8gc3VwcG9ydCB0aG9zZSBpbnRl
cmZhY2VzIGZyb20gdGhlIHN0YXJ0Lg0KDQpbMV0gaHR0cDovL3BhdGNod29yay5vemxhYnMub3Jn
L3Byb2plY3QvaW50ZWwtd2lyZWQtbGFuL2xpc3QvP3Nlcmllcz0zNjM1MTANClsyXSBodHRwOi8v
cGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9pbnRlbC13aXJlZC1sYW4vbGlzdC8/c2VyaWVz
PTM2MDYyMQ0KWzNdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi9aSDc2OWFnam1GZVRM
a3E5QGNvcmlnaW5lLmNvbS8NCg0KUmVnYXJkcywNCldvanRlaw0KDQo+IA0KPiA+IFJldmlld2Vk
LWJ5OiBKZWRyemVqIEphZ2llbHNraSA8amVkcnplai5qYWdpZWxza2lAaW50ZWwuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNv
bT4NCj4gDQo+IFvigKZdDQo+IA0KPiANCj4gS2luZCBucmVnYXJkcywNCj4gDQo+IFBhdWwNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
