Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4523B94DFD7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Aug 2024 05:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2CC94129C;
	Sun, 11 Aug 2024 03:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hpdCwEPP6LA0; Sun, 11 Aug 2024 03:38:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDAB141278
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723347539;
	bh=r/+Xb/lo9TWVgyjajMAw6VuYQVxfZ5ilmWP+/OmdeV8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TGnuA/1MArwHK/zJQIWSgnWRBCfrbQl6e5t7KiWPBmhsRBnOuybH5LoEV2BlLj3E5
	 HmK/58oML8P/yUhmFC2JZc42iUkwejdECUBdfSCVS/1uu3n7Ytx4Q6RGeqKlop/HUJ
	 GefxLFPj7wN/vKFTr9iZ7OmqU9GfIspTRiwS8hSYYTHsmuGTpj5UZDPJAM+G+2SbjM
	 Oy+hCLjyAsDMoYOM+UAUBxyG6DLyLftOvscma19+LE8WwIb9o8eGtUChbJ3Id/hdGv
	 efYJpldkeWaWc/mj8eVa1KnylO5Snj8JjRYkNpAwePf1JiYzzTPh9n6lOpYmmN+d2s
	 aMWsnM/L4HmGQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDAB141278;
	Sun, 11 Aug 2024 03:38:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65E1F1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5336140428
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WaWPgP8gLNBn for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Aug 2024 03:38:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44801400C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44801400C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44801400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Aug 2024 03:38:51 +0000 (UTC)
X-CSE-ConnectionGUID: msx31KUrRlOcmJZaiAX4xA==
X-CSE-MsgGUID: /1q5d5X/TiiPjIH2+ZzdPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11160"; a="21457781"
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="21457781"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2024 20:38:51 -0700
X-CSE-ConnectionGUID: H+zp2zgRTrauN0bOAvQ7yQ==
X-CSE-MsgGUID: E630IZKPR7SyHQYFgXnMoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,280,1716274800"; d="scan'208";a="57828243"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Aug 2024 20:38:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 10 Aug 2024 20:38:49 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 10 Aug 2024 20:38:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ahFze1GuSs1T85uJevgg4t1Z1e0X8y53ZGd4nJuuF6Wnd1dHHOgPD7oM8W1h9FiGSRg+L4HTsEKpjEa5lEeeC25YtfkDaHzGTgbrt2IxwCE1T/Hm60F22Xt+q6uuPG4i0za8sY0h6fk5JwYMYfjdI+PD8Sg/6RTqQDn0WfmXegFDEhxEsUblOISO9ekckJSiMfT3h4dQjriHT79FMFVMvW6Sc1SbJSD1MchDwyqJh1ndX4stJL9gR3yyTeTzd+FEKhNy1sfxtKVkT+ZiRYbapoiPAChC4VxGcfPWOCUGAvywOt2yryPkEAEJBWFV3ebFfCtbeINGkvxLwzBIzvyNBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/+Xb/lo9TWVgyjajMAw6VuYQVxfZ5ilmWP+/OmdeV8=;
 b=ouNAhStZ2jCIYAxbyWoRxfsLt2BC8Y4djUt0acZFClyV9xneuYAExEzkO549ZK+Kj60wEJi4ukpdpMI4zzlj73aILrCic2o4wpXNqx/Nde5mvnpro6QWgI73CdvXYyOq6Y3+zcNDyPG3jLnaKOIFRcMF5PFhPxare+Qwsx3f02BPCKHieF9Yxo/b8oOil2hBgwTqh79+q6sFroWfsq6PCaAHrmOvq9h43XKPlDYFDSCLg+v2N37vVcjDw8MDr1QaegQu4FRhIodV8IQBXsTJe3nkp9+oOx6xXJ0iMHv1d+hubQUVeypoXooxOk49mKH9m6xEDdp/2W6OiJwHvt0fPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SA1PR11MB6615.namprd11.prod.outlook.com (2603:10b6:806:256::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.24; Sun, 11 Aug
 2024 03:38:42 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7828.016; Sun, 11 Aug 2024
 03:38:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "\"netdev netdev\"@vger.kernel.org"
 <"netdev netdev"@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/7] ice: do not clutter debug
 logs with unused data
Thread-Index: AQHa6EH2Pp3v+3jeSUCtnW/qJ17HK7IgWGJQ
Date: Sun, 11 Aug 2024 03:38:42 +0000
Message-ID: <CYYPR11MB84295EB0BBE69FF6A2C5990ABD842@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240806-e810-live-migration-rd32-poll-timeout-v1-0-b5ada29ce703@intel.com>
 <20240806-e810-live-migration-rd32-poll-timeout-v1-3-b5ada29ce703@intel.com>
In-Reply-To: <20240806-e810-live-migration-rd32-poll-timeout-v1-3-b5ada29ce703@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SA1PR11MB6615:EE_
x-ms-office365-filtering-correlation-id: 2f5ac8d1-5357-480f-73f7-08dcb9b718a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?K1FESm9BWnJRMjdzblhBMGhzOFpyYUNaT2t2VnZmclZZVk5ZUlhsNERvTEd3?=
 =?utf-8?B?MSttK2JtenU1dmtBTnJVNnZ1WmJwWTluaEd4MDIxdENVTXRNdytiQSt4OU9x?=
 =?utf-8?B?c2lKb1Vwc1loVXNzcWFzblB3cHdqTGlhbFhGYUpMbFprYWlPSUM2Y01qTmxE?=
 =?utf-8?B?eE10YmJHNTdxdzJad0JJL0h1ekNGVWxFQ1ZxMm12TVA2eExZYTFZQ1ZhazFH?=
 =?utf-8?B?aFZZdURDZjd0Y1NoMCtNU1lXQ1drNUZRc2hFWGs2V1dzUE0vVVUrRTRLWURn?=
 =?utf-8?B?bUptYmJyUnhSdUwrbHprZXhFTHkzSGZ0SnVseVRyTlgrUXZqMnZLYVJiSERF?=
 =?utf-8?B?MEdjQStldWJHK2l1UzJnc0ptSlFzTjc4d1hWMlJnMk53YWFKYnB2aWFrNStp?=
 =?utf-8?B?YnY0dW5XTGRWMXZ4WGROWTdSZmg2bEwzM1JwSFpjYXNkZFo4VTBVVkErRXli?=
 =?utf-8?B?ZDFpRWNmZXFUaVM2VXZjdlFsZDlrdjZSZEhMQVl4OFpMOTQ1NkhHaklJREM4?=
 =?utf-8?B?cjg4Qm52MW9yWEZmYk9YczFVbG45VCs4QmNHY0JTWEM0RzlWOXk2K25scHZy?=
 =?utf-8?B?L0ZhdUxFcURQZXRuaXBLdkNSdmNQMmMwRFNMUUlteFZXVWV6M3dQS1FZQXBu?=
 =?utf-8?B?b1hYbUtLdk5GZTJWTHYzMUdEOEJSUllXS1pLeHR6T2l1MU9WWlNnbFIzd1NF?=
 =?utf-8?B?YnM0RUM3cEJEUzJrUERFNk9Pam0xeTAvbGh5SWxhcnJUcTZoMFpySTVISTRD?=
 =?utf-8?B?VmpmVGJiM2JPMjlYeDM0Tzg3Y2VrekVjNFQybHFhZ2dDaitpRC9kR3lTL1ZJ?=
 =?utf-8?B?Z2wrZGFJSE9pVHRzLzFXSEl5bDFWL3BVODg1eUNtN1ZPTnNTeTliOERZT2FL?=
 =?utf-8?B?THFPUHA5OFVzcmh6eUQxb2MvcDNneGJzNmZFR0IraCsrb2lSN09DYTVoS1JL?=
 =?utf-8?B?OElHMGthVmJha25nbmFTRFc2c2xiODNUa2FFdkdvVEp5S0lMMjZLS3kzSnpn?=
 =?utf-8?B?UnNxMEpEV2MxN3VQdWZVZVc3dmt0UjFmZFRzbUQxWWJKcmQvSUJHelZDOWNC?=
 =?utf-8?B?M2h3NmxwNE95SWpsY0o5emtwZk9WUzFFOFM0RjREQ2l3SVFFWjlHVkdoN3Vh?=
 =?utf-8?B?alBNTURtcVBsNXJYa2s2dWpoMUJpZ1FiK3ZWM2NjNkViMTkvRWxlVjBTbFYy?=
 =?utf-8?B?elZGeFpBNWFpVGFjL0IyN3VpbC8wUjVJSlV2YWhodUNBVjFlRllyUTVmM1pv?=
 =?utf-8?B?Z1dnNXBXc0I2cW1xMkRSUzQra2pTSEtkNHNUdmVqRitFSDE0NWk0TWxLV1ox?=
 =?utf-8?B?TDVNM1JyeTJYZEFETkNWYjI3aldicHcwS3hUb3p2VU1Qa1lTQkp2SGVXczA5?=
 =?utf-8?B?ZGFta1BPL3R6c1VuU3RNRW9nZGFCeW5qNFdFazZ4cGh3M2lvVGVjRGdWUmNr?=
 =?utf-8?B?QkV1WGhzZzhheG1OL0FzMDRwSHdISjQ2Y3FyVDVLQklMMkdHd0tVcjcvZnhp?=
 =?utf-8?B?Y3MyWjV4WEFYSWE2TkcySU4xV3VVMUtHV3ZEcjBiNWNBMVBIQTJjRTVrVEll?=
 =?utf-8?B?MWxZTTNrL2NheDN4aUMxTkJ4c0FaSG5Ya3ZTOWREQXYxdHRPU2hpa0dqa0M0?=
 =?utf-8?B?bUZKdi9XQmhIN1Y1b1BQdUcvMHFkRXIvdTVLQWJXOUpKUVA3RVFIYTJ2SnVZ?=
 =?utf-8?B?bmg3VWdIQ0duK0Z1cExpck5CdVdBY3VJQy9zbjg3MHYwakNqck9MT2xtZER4?=
 =?utf-8?B?OGlNNjAyc3JvYkJ4YW9hcmR2QzZEYi9MZEVJSUdPb1BPQmlaci9KMFQ3QXVI?=
 =?utf-8?B?U1Y3Y1Q4SWlmdTNuL2RlWkpKQzJERERBNUVkTUxGM3dacEJ1dE84Sm5seUVu?=
 =?utf-8?B?MXNvc0N5azRCdlExSU9tckNjYU5DckxKc2dhb1dHS0kxOFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3FxWk9NSTlKYllhTnhXckEzcXluU2dqbjB2bzd6S2trVElaV2JnTVZ3VE5D?=
 =?utf-8?B?cGQ3QkV4cmVIUnFhOEpEUXpKdUdTKzFzWDhhYlQzNjFXNUZRZ3RTNXFzbmVS?=
 =?utf-8?B?ZEJWaEdhUEV2QmNQa1NzS24xQkk1Mlh4Z2FoakJnczNUaEI2NzBDc3pwNEJ1?=
 =?utf-8?B?U05CT3RrLytqcCtQRXk5NTFtRUdDNmxZMk9Zck1Wc1hpd214V1hvVUl4UUtN?=
 =?utf-8?B?dVo5QVBYL1ZvY3VCb0tQaHBiQk93dkxteWpFTTlXRkFLQUJnTjI2enV6d2JL?=
 =?utf-8?B?Z1BQZnNvbVlVSkZyakJ1TG42TTB6SFhYWkJ1K1B2b1c1c1NmWjBWWXBXRDhX?=
 =?utf-8?B?bnVwUEU3elZOZW9YNy9WTGFZSDFMaHlGTng2eXNLT3ZrdVlVMjVJNGJyc2xm?=
 =?utf-8?B?VDZUcTR2YVZRT2lRSFRJMUs5VHIvc2dmbEJYV29oR3NGZGhrclY1akZxenho?=
 =?utf-8?B?R1pWMGxndUE3ZndyTmpRRFFjOEd1Z0FpcXM4NmZySFU0UW1xS3FnVXo4T3RZ?=
 =?utf-8?B?NnZHVW0yNmhJbHY5V2tIVFVmeFdObWl2cVVENHZteDNSd0tHczlWR2d5T2dv?=
 =?utf-8?B?c3NUL3JyU3ZOcGxKMlp5dlo4SzVWS2RaV1BuU1hvTDFVdU83YkN4QUlsUU8x?=
 =?utf-8?B?SlBxL1N2SjJVSTFZS1g2TVRTTVFTMzZjRWc3bTlBb1lPb1hUT2hNL2RVWGhu?=
 =?utf-8?B?OUNDd2hRdC9MR25lanFFNXJUa2hLMCtXQTJSN0pKekFBc0dCMjNaZEFYWEhW?=
 =?utf-8?B?ZEpLOTlhdXo1UkJvTGd4M0htdnczYXFTNVNDZ0NSYS9yOXg5ME1UTHZuVnhO?=
 =?utf-8?B?TXFlTkpYOFdFdjlJTDk3dlFNN05TbU5iNHU0dXBYWlo1Uld3Qm8zOFh5Qm56?=
 =?utf-8?B?TDRVQjRlTTFyZnpkMHVqekNVMmZ2OUZxQVlrUEx5S1d5WTlJT1RpazM4TW5I?=
 =?utf-8?B?YS80M1hESXNLeE5rVDJSRWgvSStremRPUTl0K0cxdXdwVUZqTDk0U3JyMlhF?=
 =?utf-8?B?SHA5QThBWUtVWTNXenhiTUxhOTA3cXd4cTNuaXg1cWUramQ1OG9DTjBiemU1?=
 =?utf-8?B?MXo4MS85S1BoZlEwTy9ERmt0OTV3b0N6Z2dUWWFxYjZzMm1BWmR4SnhiZkdj?=
 =?utf-8?B?VDIyK2NpUGNmT3NNem9rZngzbVk3QTRxRmRKdnNkZmJWb1VseWxQdEk1VXJn?=
 =?utf-8?B?blNEbWQyeVR2OGVIM29iVVM1QnhhNHE1Z3FYVHBXNWRVWjNYT2tYU1RZOElF?=
 =?utf-8?B?akFtVHpOaEdVQkZyTy8yZmJKcEJ6NlBRaGp4V2NDMThoQ1RETWhrNDc1QUN5?=
 =?utf-8?B?TG1BanZ2LzJvNlJhK2pXbFpYVmNPVVdnaUMwbWJ0YUg4UXdTMW5kR0pCd05m?=
 =?utf-8?B?K01LZDVOVUVOS2pWUHc3by85eEdKdFdwSTRXVnJYakJ3TTR0M25ueVdFOHpj?=
 =?utf-8?B?d2dYaFdFZXJSSHRsdzg0V25FLzB5ZURIUEE4QzJvRU83ai9ZaHpmQUhNQVdI?=
 =?utf-8?B?RWNlakhrNUlLZ0szWHllSk5UQW95cGpaMmVrMDdnemZkcVoycHpHamVTTXpL?=
 =?utf-8?B?dWZXNXYzVWhIT3ZoK1FlTVVJem5FTWpuZk12VDUwUmFvcVZxVG5KQzdhaC9y?=
 =?utf-8?B?SjBkcVlELzkveG1HQlo5SUdGZ0RTeE5YR0o3N1JlV21rOUszMTdBMktZbHpI?=
 =?utf-8?B?M0RKZkRTNmxKQjJMZXlTVWJrN1F0dlZZWGRwY0RFZytBK2pKQ2dKYlk1ZVhr?=
 =?utf-8?B?Z3NWbHo2MkZFSWNmNGRuS2hwdTBpN09Zb3F5NEJGNFVvYVRhdTE4NkU4d21t?=
 =?utf-8?B?eElmZ2FvdmEzbkdHVUdteXlvb2RFai9XbllJQkxnd29CcWRwQnljN1dmUlI0?=
 =?utf-8?B?YWowZzlTbzFoY2hxNmVKcHNBZEpPK094ZVZNMFY1bEEvVFpIaTVCTXo2Tnhs?=
 =?utf-8?B?MTBCZmRYWC9xNHRrVmQwWFl5NTd6eVcwRWg5dDZ3UXlHMGNZTEdjU3NtWEFr?=
 =?utf-8?B?c2ZZQUIvREpJQkR6NGFuYk1tMmlxUU5aQXJSbVp3bXUwR254U053NmtMbTJ2?=
 =?utf-8?B?Qnd5eUozeHNGNkd6cHhOZGNUdzFXRkx5SlJYUXRnRWFidEJSbWZaM0NxL2c3?=
 =?utf-8?B?c24wUEszaHpIa0ZxT1FlQXdzSnJLSGMydnBLM29Tc1A1OW0wb3doWHdvOVhW?=
 =?utf-8?B?c0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5ac8d1-5357-480f-73f7-08dcb9b718a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2024 03:38:42.2973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MIhAQ0OogWU5R1WZz7pHitDM1Jw8l1pVSfkxXOsk92YyQewPMsJpAxG1SIc4SavUCFYLS4Hf+B6oFjMAavkNWPgBIvMZHrtdIqWJjxDfxmfXId/HUOOXLD2FR3p4h+bc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723347531; x=1754883531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r/+Xb/lo9TWVgyjajMAw6VuYQVxfZ5ilmWP+/OmdeV8=;
 b=hxqJOkBfwix+zcKOH4SqLGguTRNpOMXj8JN8wSROhuF14bhLhxuxYPAl
 7BbO6OiMrgqWHCZ/fdOyCiLFkUbU6EaLhkQyRvIpYVw69FIyPx2B7UW1V
 NxaT8WzedVv1M2UbsYaqBs4UzUVXF8enhpdGR/LOwHrhPBzQcOM3zCXil
 o3pqcbpYBRe/zKyt5bQE+xkHpA86xc8iD4mHAkAXQw58jTVXvhucJYSsk
 UziagzPpu/CPJ8OhxKHbk+HpwXrq+MCLclMpHCrg3dgPi80oukfjCgJEM
 Nd8oNQoKwU+z1K9u5ex2vmosLSmcxc7XaRkLfPd4SJdPU4aqotMZnwrHz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hxqJOkBf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/7] ice: do not clutter
 debug logs with unused data
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Wierzbicki,
 Jacek" <jacek.wierzbicki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCAyOjE2IEFNDQo+IFRvOiBOZ3V5
ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBM
QU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgIm5ldGRldiBuZXRkZXYiQHZn
ZXIua2VybmVsLm9yZw0KPiBDYzogVGVtZXJraGFub3YsIFNlcmdleSA8c2VyZ2V5LnRlbWVya2hh
bm92QGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBp
bnRlbC5jb20+OyBLb2xhY2luc2tpLCBLYXJvbCA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+
OyBXaWVyemJpY2tpLCBKYWNlayA8amFjZWsud2llcnpiaWNraUBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCAzLzddIGljZTogZG8gbm90IGNs
dXR0ZXIgZGVidWcgbG9ncyB3aXRoIHVudXNlZCBkYXRhDQo+DQo+IEZyb206IEJydWNlIEFsbGFu
IDxicnVjZS53LmFsbGFuQGludGVsLmNvbT4NCj4NCj4gQ3VycmVudGx5LCBkZWJ1ZyBsb2dzIGFy
ZSB1bm5lY2Vzc2FyaWx5IGNsdXR0ZXJlZCB3aXRoIHRoZSBjb250ZW50cyBvZiBjb21tYW5kIGRh
dGEgYnVmZmVycyBldmVuIGlmIHRoZSByZWNlaXZlciBvZiB0aGF0IGNvbW1hbmQgKGkuZS4gRlcg
b3IgTUJYKSBhcmUgbm90IHRvbGQgdG8gcmVhZCB0aGUgYnVmZmVyLiAgQ2hhbmdlIHRvIG9ubHkg
bG9nIGNvbW1hbmQgZGF0YSBidWZmZXJzIHdoZW4gdGhlIFJEIGZsYWcgKGluZGljYXRlcyByZWNl
aXZlciBuZWVkcyB0byByZWFkID4gdGhlIGJ1ZmZlcikgaXMgc2V0Lg0KPiBDb250aW51ZSB0byBs
b2cgcmVzcG9uc2UgZGF0YSBidWZmZXIgd2hlbiB0aGUgcmV0dXJuZWQgZGF0YWxlbiBpcyBub24t
emVyby4NCj4NCj4gQWxzbywgcmVuYW1lIGEgbG9jYWwgdmFyaWFibGUgdG8gcmVmbGVjdCB3aGF0
IGlzIGluIHRoZSBoYXJkd2FyZSBzcGVjaWZpY2F0aW9uIGFuZCBob3cgaXQgaXMgdXNlZCBlbHNl
d2hlcmUgaW4gdGhlIGNvZGUsIHVzZSBsb2NhbCB2YXJpYWJsZXMgaW5zdGVhZCBvZiBkdXBsaWNh
dGluZyBlbmRpYW4gY29udmVyc2lvbnMgdW5uZWNlc3NhcmlseSBhbmQgcmVtb3ZlIGFuIHVubmVj
ZXNzYXJ5IGFzc2lnbm1lbnQuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEJydWNlIEFsbGFuIDxicnVj
ZS53LmFsbGFuQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNv
Yi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHBy
emVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9hZG1pbnFfY21kLmggfCAgNCArKysrDQo+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMgICB8IDIxICsrKysrKysrKysrKy0tLS0t
LS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQ0KPg0KDQpUZXN0ZWQtYnk6IFB1Y2hhIEhpbWFzZWtoYXIgUmVkZHkgPGhpbWFzZWtoYXJ4LnJl
ZGR5LnB1Y2hhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQoNCg0K
