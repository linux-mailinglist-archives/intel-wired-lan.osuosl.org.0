Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D5CA823FF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 13:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D45040550;
	Wed,  9 Apr 2025 11:51:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_JLU749bZQX; Wed,  9 Apr 2025 11:51:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AAC240687
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744199474;
	bh=syWV+qerWg9ub6WEab4Xi9s6olo3YcNtmNDSImMxFZY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dt3xfcA+hAZ7ta7i7yOuRz6sP04/mCuHjCqi7cOuROnGqsmbheHuOcLFvJ1Bzr/4B
	 N7maTHX0w1zQ8we+vmMX4PPCU8+SkL4eVQbOz+wxxi4xhp5hPXPdYctB3EGjBbWpGm
	 DrmIfkMgjTVandmbJ6FJC8USk5R3dozS3LPi84i9r+Nx1MtrBG8Oe3UlfGeB9OYj4O
	 E5eRE4/QT9sC5J5iXs7MWCYnzV2YtRx+b2lVXJzfI9S+90Is/MSFc+i3BNzU1uij5L
	 ds3Wwn8OMcoHOLkfqW/cBYDwuZwP8/zeRqp4e6OhaHIYW18CnlSl4AGcN5e6Nh1/3D
	 9UDCCI9TGiFrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AAC240687;
	Wed,  9 Apr 2025 11:51:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 05BED1F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB38B83396
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x0rBosQlBi8D for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 11:51:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 160528122C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 160528122C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 160528122C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 11:51:11 +0000 (UTC)
X-CSE-ConnectionGUID: 91+jCp7WRMe0f3u3XzyyRw==
X-CSE-MsgGUID: FqDJ1SnfTt2VEgoUzQQ46Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45561432"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45561432"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:51:11 -0700
X-CSE-ConnectionGUID: dL8OYYbHTCek5sspYscf1Q==
X-CSE-MsgGUID: SGMcC7ilSsGUrkIic3yxeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128427422"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:51:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 04:51:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 04:51:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 04:51:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o8LEFFZM8Ccipppq3QtJS6sq7WVCsyGCf+82PZ2nO7eCNZRaxrsxh+e0XNyER1AB+XmcOT0SC1pS8F6xpx8TZdHEWaaHCXwWXOuAy1O3NP2ODTqYQWm8XH4FwnF8k7/oHLFez/Iqn5NEMxnm42RXcCy+55g8ZQ+3/H5mraWhCa4eIuu636BmY6/d0y7ZomqtxVdT/xnoHg5gUsnXP85wdyi4plOLJXTfRH2fbMvzTI1DzjKAcOpzUUNtgJIffVxqYDPoYJqTw+YwTR5MNcK7SjSBgkF1XourM3PO3YEwUWw42IWoJzWzt3Ue2LRKAmddQ4igY0j4MBteiCSE0q44Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=syWV+qerWg9ub6WEab4Xi9s6olo3YcNtmNDSImMxFZY=;
 b=Lm6J5S/p9SfAROozC69Ewxy2F0PwOLw7cYfetH7BeY9nSkVOU1lg+L8IZDCsZsWbd0exluE5+0nZyMu3rXehybZYw4AdChzjQYI8eGEouHgPrjtH3v3m89AmXb2w05UbdzAYCBOoUd7cvwJPVj31wYFbfAeCB+e9ntUaaAF6Vq7V/JfmaNS3q257oZ6j8x07wATe2R1h9crgrnrkRcwidPGOONXnAfke6LMWV9c5wnoDkwqg27UsGEJuY5QmBVxTciTDo14yuUQJDRWaI9O6CF6t8spKDRh7GTgfvdPX72TzW2rmeOP55p22ne2I752y63APSv8BJ2wzwzHjDcFQPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by PH7PR11MB6056.namprd11.prod.outlook.com (2603:10b6:510:1d4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.29; Wed, 9 Apr
 2025 11:51:06 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%3]) with mapi id 15.20.8632.017; Wed, 9 Apr 2025
 11:51:06 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 03/11] virtchnl: add PTP
 virtchnl definitions
Thread-Index: AQHbqHKLDZhvMZzjoEqp31HJrhXBtrOaROAAgADyVmA=
Date: Wed, 9 Apr 2025 11:51:06 +0000
Message-ID: <MW4PR11MB5889CBA3909D6C877DA20CF48EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-9-milena.olech@intel.com>
 <754e6414-cbee-4216-9fe9-36c468d01244@intel.com>
In-Reply-To: <754e6414-cbee-4216-9fe9-36c468d01244@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|PH7PR11MB6056:EE_
x-ms-office365-filtering-correlation-id: 94986bc2-2df2-44e9-5a58-08dd775ccfe7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Y29MaHBJbUlRUWJrVkpmZk1GUmJsWmQvVWlUdEkwTTdlcjhJbHBuUkh1cFN4?=
 =?utf-8?B?QTY3NVNlSE5wQlJaSTJwdjRZRTlJUjJRZ3F0K2dLeEZndURXcklpTDF0UDRP?=
 =?utf-8?B?S1RGL0lTV1E3d0JPVFRQMVA2cDhtbllET0dzdHRlR1lTMVNSRzk0TXlQTkFR?=
 =?utf-8?B?VDhLOFNFWUNnOXUwSnl5aDdJeU4wd2ZFSmZ4aTl1aDl6Q2tKMVhzQ3NBWjZ1?=
 =?utf-8?B?Q0ZLWXpjcTJmbXltZ0J3bi9WYTVtaE8xZ3pJWFlvRTU5UjNSR1lMcVVHbUFv?=
 =?utf-8?B?disxZVNudWZtVG9wRy83NWtLWEdZdjd0R2dPOG1xSURkcEJOWWFqMGhEUlYz?=
 =?utf-8?B?NGpWSUQvZTJMWG9aR3piNGRsQU9rUmJ2SlFRNEZFNW9POFV0WVN6NUJNaDJD?=
 =?utf-8?B?ZlNmU1FiU1R6a0p6MG93OE9sdVptL203VXZlMVhSZC83NWRnVzkrcVJLRncx?=
 =?utf-8?B?bmg2RU1kUlozaEtOYTVpSXlXWVVJN2xjcHFyYTZvaCtSTjd4eVkyd0JmQTI1?=
 =?utf-8?B?WDdHa01kMjg2VlhLWFNNVmNWbENzWTZnNWdjekFDaEpJdXMwREdraGd4Q05J?=
 =?utf-8?B?Zm8vc2xLbTRyQUFZNkhiYkdndEJSUTFkVS9LRU9IbDVENE93VnVyV3krcXFl?=
 =?utf-8?B?aDZiU3dkcTFvMHZ6MitCMDBEcXEyMTFCbnpQellTU1ljMVQ0R1dnWkJ6akc0?=
 =?utf-8?B?b3k4b2NFMFMvZ05vNGlLb3pLeHkvamtoL05RSFd3ZU4reDQxek54OGQrdi8z?=
 =?utf-8?B?UjRLMzlnblVYUXpITVNXT0I5NW5ZeWZHMzF0ckl2NDJmUGVNdkxKMHpHOThj?=
 =?utf-8?B?aEhKUVRNL29WYjhZWWpwZjlPdXhNMCtmTXJzUG9lQXF0aitVUmI4WGkvaXhI?=
 =?utf-8?B?aVdSTlE3b3ZadUpQRlVZTHphQWwzTysyUi8xVWtmbytLYzhpMkQ2eStHOFBq?=
 =?utf-8?B?SGhCZjF0eVFoMlVYK2Y2VjZNSUdvdWdWSXpPYXl3TlVQRlE5a0FPeDgveXdF?=
 =?utf-8?B?dmJPVEVlWXFmcTlNZXYxSGUxd0VNTzI4WEdra2NXZ21RcFRFamJpbjU0WHY4?=
 =?utf-8?B?RlErbDBNVFhuZnpuc3VucStxblVKcytGdjlpZUt2d3E2SXh5R3dFY2xPRUUr?=
 =?utf-8?B?TStqbFk2U2IxRjZrTFg1a1hQdGlXM1dtQ0xGdDJHUlI4M1c4MWhXWHc2MnhX?=
 =?utf-8?B?KzlWM0J4MmQrZ2JMUnl2Smt0Q3VzVTRNWUtteVNEdGQ5VWxIcTFtMVVmemhI?=
 =?utf-8?B?amdWMmtZV3N4YXNmT3ZuaEJsa1FsbHkvaTRHU3lQd3hneGdJNjhUUkZVektm?=
 =?utf-8?B?dS9uMjMrYlNOcXVBRkZYT2V6Z2lyb0NYbU1uVkNGRm5oU0lmRVpJWHBqekh5?=
 =?utf-8?B?aXByMEt2aEhMb2pmYUs5OFl3QjV0T0xsMUFSY1FwRFdhMmZzZDNCU3UvU3dG?=
 =?utf-8?B?NTdvenA0ZFU3YUUrNVJVTEZrUjJ4V0I5TGVKUDNkcnV6OXlQT3ZoVkJkdFNq?=
 =?utf-8?B?dmNTYXBma2RDdTd2SFVYb3RGNEhRVGo3REMwN01VQndwemJiT2pmTmpaNUtM?=
 =?utf-8?B?UUNOUmFTaWZFNVk0Ky9SZGtQaWo5aDRsM3MrS05Hek13M2pXVHNGRWhqMW9m?=
 =?utf-8?B?SmlPaThhLzJWMXhXN29DN3liWm51V0xacHo1aXNySlh4SDVvWnNCRm9OUnZK?=
 =?utf-8?B?YXhlMzhuMXhSK3hmL0oxbitEYjI3NlZEc3A2M0RvbWF2SnRkZkFhZkp5TXJm?=
 =?utf-8?B?ZlFBV1Z0VWw4VUtzS01lRlFIQ1dyOVl0clZQTVlqd1RIc3NVbnE2SjMyMXBq?=
 =?utf-8?B?c2plZFU3bGpxbW5yMFZWRjNaL29na2FmOTdJSWxVVlBQbzloejg2WGsycGdy?=
 =?utf-8?B?RE5YV1ltMko3dzlsZjMvdDEvWVUwM3ZKakVDeURFMGpOK2E2Y1ZZQWZwVFV0?=
 =?utf-8?B?UUZOQUZmUEdxZTlqVWtwMmJDVGdFNkF4ekxIRFJmMFQyTEE0b0dqYlJmQVVV?=
 =?utf-8?Q?Q4pbek7YblmGXwhwiXZGvphl8y4YqM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzcxY3NOdXUrQnlEdVVhWnlWUEJXaDV3REdva1dNMjlJZ09SdFo4czRiSVp0?=
 =?utf-8?B?SzRreEcxdVhYbXRpNjUvZ3N6ZHI2b0xBTWNNSmJNTHprTGp2RTF4ZDdva3Vu?=
 =?utf-8?B?Y25VYjRYK3I3ZTd1b3grRWZqRmxaaGpXbkd4dS9DbkJubW1uLzJya29tamNK?=
 =?utf-8?B?M1FWRGV2M0FhbENTT21GWlRSVWk2ajh3c2VBb2VwOFg1cXJGaWJjUGlEU2Yy?=
 =?utf-8?B?TFhZYlc1bTJMaWJVVXBMZGlGMlViZS9lMU1uamZ6Y3hyQnFsbDFxOUo0dzhC?=
 =?utf-8?B?bC9KYUpaZFJMbmVYdzJQNjFFcWdYSTdUR1ExdVEwakg5c0Rtb0lEdi8vcXht?=
 =?utf-8?B?MEZUZ3NPQzhaalRGWWkyWmQ4RTI1bUJxOUxIZ21jUHFOaUtUenUyT04xVzZD?=
 =?utf-8?B?K1hxNnBRM2drRkFkaVowV2dlOGdjWWF1SEF2YkV5UitNZTVCZC9aSUc1Y0lW?=
 =?utf-8?B?S1diSEJwenFuTnNpbXk0U0JnY3lDN2VOcm5TZ1AzcTN3Y1d1M2d0elNFcWVT?=
 =?utf-8?B?SVlzMEg2SHVrY21URVZ0SThYUW42MlE0TzJ0akxxMXZPb1QrSWh3aHR4U1Ja?=
 =?utf-8?B?MytxQWlobG9YVmZQTXF1cU9jQTY5aVNDYzFnZHhuTVlvQkVPa21EcnhNcVcy?=
 =?utf-8?B?VU5XWkx2bytERzJyWk5qY3crT05xUVlncnJsTjZKM2NaWDg3b1NmTHErLzV0?=
 =?utf-8?B?TlorRkE1bkJXZkw4eFg1dk5EVEY1Qm9PZnhqa09MWmhGckw0UFVwVWZmb0x4?=
 =?utf-8?B?OW9oV2VHKy9NZzVSaVpYWGYyV0J2UkZHanJBWEZEcExjQXY3bnRzenYrY3dJ?=
 =?utf-8?B?U3A3eFlkb2x3U01JY3E1a0QrWDY5L3Q5MWJ1VDNvNDBxU0J5YUF0TjkwMnBr?=
 =?utf-8?B?M0hBT2xnbmJxNmxNRjBWNVlYbU1FMHlML09qWFd1VFA4QU91VEhEZ0E1T3da?=
 =?utf-8?B?TDVNelNPcE9hZFIvcyt2aENHaG5QbGtOcVdGcDJya3FGdTFJelhPKzNucXFL?=
 =?utf-8?B?Rk9SaGJpTHRYbkdxKzFrdGFmc0s1cmU1ZWZUM0NRenNHMXhKKzJFZHI4QW5t?=
 =?utf-8?B?aFdSU1dUYmRmdnN1TWVJOEFCcWxSdXNmb1JDVm1FNmpOMFRtd3I4STY1RWp4?=
 =?utf-8?B?V0RxU0lucHhDVXRwNEh6TG5XRHJXUWlWT3Y4QUhMajQ1QjV1Y2grY0hkT0lG?=
 =?utf-8?B?Z0JnQzBIcmd0TEdpdDJJRkprMU9QSDJoN0t1RVVwOE5MNUhucGE0QlNpUXpm?=
 =?utf-8?B?bmNiYVNmRkNxYnk1bUw2S2F5NkU4SFVHMDZOZHVCY3FIYmZjQ1BJNjdaSFpY?=
 =?utf-8?B?cXpYTlh6SDhiYXQ2TVdQQTNtTllsVG9SbUZ0bjV2SkJxMXc0SVNuRXhFdTNa?=
 =?utf-8?B?cUh3SDYxTFFSNGRKM05hNjZsa2xndEg0cFBOQkQxbzU1WEw5S3dOWUpUTFh6?=
 =?utf-8?B?RGtpaVk0WVZMS3N3MVM0Z3M3ZWZxTk82MWxHZWk5Vk84ZmVHRjFzYitwbnIr?=
 =?utf-8?B?OFNLbmwzQ25tZHRzcjBjdnBnUmFJWUlxcUxQQ1FIQWtVQm9ySmRQZW9PdlVo?=
 =?utf-8?B?aHU2NnZCWGdSOC8rdDRKM1VFZ3hBN3FzWFZOZ0prb3NPSEd1VEJvekkvNE12?=
 =?utf-8?B?TDZiWDZSbWQrZUhwdXR1VVYxN09TMHdTNm03MlhrZGJTZnhncnp1VThVdTRo?=
 =?utf-8?B?OWI1R0pEMmFiVGhKU1FwTldnNFlNQjVZSk9QZHV6UWdqVytIejFOSE81S01O?=
 =?utf-8?B?Z0ZNMlFRWTJCQTFrbzlTWDcvRHVCL3htWXhrdFB4WXRNZlRoengydC9PY3NT?=
 =?utf-8?B?Rkp3akRmdWUvaFNZMnJCQWI4MGROWHBLTzVVSjgwQkRYV1BxRmJ3T3NhN1ZI?=
 =?utf-8?B?WnFpZHdibW04RVgrTUxnUkMxN01vaWNzY1VKdVhSK2k4SkkvRno5cTY5cmNJ?=
 =?utf-8?B?Q1FkaG5aUEROTVZGcmpydmFkdTdPTGkybS82M29KRW9pejRPVzhXMTEyRUpN?=
 =?utf-8?B?czhROVhMWm9IRTNMNUFkR1VpTldFSmRTa3llSUo4WXF1MU1yV1dUbGZkYUov?=
 =?utf-8?B?WkI4dlk5YXNSUmVpbkJ2ZWdBU21JUnZzNnIvTkdWdkNqc3Vsb2dQanRZbnBG?=
 =?utf-8?Q?nA2LMl/f6eQkoG5EptyoyHBNL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94986bc2-2df2-44e9-5a58-08dd775ccfe7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 11:51:06.4979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LoCUNTK9cDIyy6lj+w2zJTN7ViHuMi1p7ETJxh1XbDwWARnxUMr9bHHerxyjAUmOvCFWVVBtq/7EHYxaumK2YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744199472; x=1775735472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=syWV+qerWg9ub6WEab4Xi9s6olo3YcNtmNDSImMxFZY=;
 b=XCxKfc2cAylwigpejwQAZWN6X1yqCEt8IbsaVUGSu8Z0qbuCZeXeZdy+
 YDEJq2/zFPleJh6KQu0GuQbX9QmaKocJGPKK2ExhHGpMKuL+QYTV53Hc9
 BfAvNt4OIgbGqbq+wEYOowMtrwmstzoVn/Ep/KcF/RwTtKj9S2TXs/zIE
 yOC72pCF/Wy9mPWhMnx2JC3YQ+VviT9GvuOp3x3YD0XJr2dSCTfOJ7PHK
 7XZXzM5isK3j1iiBuZhHZlr829Wvufx5VUdG7T9uONTczU/LyKf1dutFV
 aQsPG6FSvEdsoKIyQ45zEDpYx8GahKQIeZJXcbHVnerNiOa2u0T1s9KTK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XCxKfc2c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 03/11] virtchnl: add PTP
 virtchnl definitions
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

T24gNC84LzIwMjUgMTE6MTIgUE0sIEphY29iIEtlbGxlciB3cm90ZToNCg0KPk9uIDQvOC8yMDI1
IDM6MzAgQU0sIE1pbGVuYSBPbGVjaCB3cm90ZToNCj4+IFBUUCBjYXBhYmlsaXRpZXMgYXJlIG5l
Z290aWF0ZWQgdXNpbmcgdmlydGNobmwgY29tbWFuZHMuIFRoZXJlIGFyZSB0d28NCj4+IGF2YWls
YWJsZSBtb2RlcyBvZiB0aGUgUFRQIHN1cHBvcnQ6IGRpcmVjdCBhbmQgbWFpbGJveC4gV2hlbiB0
aGUgZGlyZWN0DQo+PiBhY2Nlc3MgdG8gUFRQIHJlc291cmNlcyBpcyBuZWdvdGlhdGVkLCB2aXJ0
Y2hubCBtZXNzYWdlcyByZXR1cm5zIGEgc2V0DQo+PiBvZiByZWdpc3RlcnMgdGhhdCBhbGxvdyBy
ZWFkL3dyaXRlIGRpcmVjdGx5LiBXaGVuIHRoZSBtYWlsYm94IGFjY2VzcyB0bw0KPj4gUFRQIHJl
c291cmNlcyBpcyBuZWdvdGlhdGVkLCB2aXJ0Y2hubCBtZXNzYWdlcyBhcmUgdXNlZCB0byBhY2Nl
c3MNCj4+IFBUUCBjbG9jayBhbmQgdG8gcmVhZCB0aGUgdGltZXN0YW1wIHZhbHVlcy4NCj4+IA0K
Pj4gVmlydGNobmwgQVBJIGNvdmVycyBib3RoIG1vZGVzIGFuZCBleHBvc2VzIGEgc2V0IG9mIFBU
UCBjYXBhYmlsaXRpZXMuDQo+PiANCj4+IFVzaW5nIHZpcnRjaG5sIEFQSSwgdGhlIGRyaXZlciBy
ZWNvZ25pemVzIGFsc28gSFcgYWJpbGl0aWVzIC0gbWF4aW11bQ0KPj4gYWRqdXN0bWVudCBvZiB0
aGUgY2xvY2sgYW5kIHRoZSBiYXNpYyBpbmNyZW1lbnQgdmFsdWUuDQo+PiANCj4+IEFkZGl0aW9u
YWxseSwgQVBJIGFsbG93cyB0byBjb25maWd1cmUgdGhlIHNlY29uZGFyeSBtYWlsYm94LCBkZWRp
Y2F0ZWQNCj4+IGV4Y2x1c2l2ZWx5IGZvciBQVFAgcHVycG9zZXMuDQo+PiANCj4+IFJldmlld2Vk
LWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRlci5sb2Jha2luQGludGVsLmNvbT4NCj4+
IFJldmlld2VkLWJ5OiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxsZW1iQGdvb2dsZS5jb20+DQo+PiBT
aWduZWQtb2ZmLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+PiBU
ZXN0ZWQtYnk6IE1pbmEgQWxtYXNyeSA8YWxtYXNyeW1pbmFAZ29vZ2xlLmNvbT4NCj4+IFRlc3Rl
ZC1ieTogU2FtdWVsIFNhbGluIDxTYW11ZWwuc2FsaW5AaW50ZWwuY29tPg0KPg0KPg0KPkNvdXBs
ZSBvZiBjb21tZW50cywgYnV0IG5vIHJlYWwgb2JqZWN0aW9uLiBJIHRoaW5rIHRoZSBkZWNpc2lv
bnMgaGVyZQ0KPmFyZSBhY2NlcHRhYmxlIHRyYWRlIG9mZnMuDQo+DQo+UmV2aWV3ZWQtYnk6IEph
Y29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPg0KPj4gKy8qKg0KPj4gKyAq
IHN0cnVjdCB2aXJ0Y2hubDJfcHRwX2dldF9jcm9zc190aW1lOiBBc3NvY2lhdGVkIHdpdGggbWVz
c2FnZQ0KPj4gKyAqCQkJCQlWSVJUQ0hOTDJfT1BfUFRQX0dFVF9DUk9TU19USU1FLg0KPj4gKyAq
IEBzeXNfdGltZV9uczogU3lzdGVtIGNvdW50ZXIgdmFsdWUgZXhwcmVzc2VkIGluIG5hbm9zZWNv
bmRzLCByZWFkDQo+PiArICoJCSBzeW5jaHJvbm91c2x5IHdpdGggZGV2aWNlIHRpbWUNCj4+ICsg
KiBAZGV2X3RpbWVfbnM6IERldmljZSBjbG9jayB0aW1lIHZhbHVlIGV4cHJlc3NlZCBpbiBuYW5v
c2Vjb25kcw0KPj4gKyAqDQo+PiArICogUEYvVkYgc2VuZHMgdGhpcyBtZXNzYWdlIHRvIHJlY2Vp
dmUgdGhlIGNyb3NzIHRpbWUuDQo+PiArICovDQo+PiArc3RydWN0IHZpcnRjaG5sMl9wdHBfZ2V0
X2Nyb3NzX3RpbWUgew0KPj4gKwlfX2xlNjQgc3lzX3RpbWVfbnM7DQo+PiArCV9fbGU2NCBkZXZf
dGltZV9uczsNCj4+ICt9Ow0KPg0KPlRoZXNlIGFyZSBpbiBuYW5vIHNlY29uZHMsIGFuZCB0aGVy
ZSdzIG5vIHJvb20gbGVmdCBmb3IgZXh0ZW5zaW9uIGluIHRoZQ0KPnN0cnVjdHVyZS4uIEhvd2V2
ZXIsIDY0Yml0cyBvZiBuYW5vc2Vjb25kcyBpcyA1ODQgeWVhcnMgZ2l2ZSBvciB0YWtlLg0KPkV2
ZW4gaWYgd2Ugc3RhcnQgZnJvbSB0aGUgVW5peCBlcG9jaCB0aGF0cyBhIHByZXR0eSBsb25nIHdh
eSBpbiB0aGUNCj5mdXR1cmUuIEFkZGl0aW9uYWxseSwgaXQgaXMgbGlrZWx5IHRoYXQgc29tZSBz
b3J0IG9mIHNvZnR3YXJlLWJhc2VkDQo+cm9sbG92ZXIgY291bGQgYmUgdXNlZCBzaW5jZSB0aGUg
cm9sbC1vdmVyIHBlcmlvZCB3b3VsZCBiZSBodW5kcmVkcyBvZg0KPnllYXJzLiBPay4gSSBkb24n
dCB0aGluayB3ZSBuZWVkIHRvIHdhc3RlIGFkZGl0aW9uYWwgc3BhY2UgZm9yIGV4dGVuc2lvbg0K
PmhlcmUuIFRoaXMgYWxzbyBhcHBsaWVzIHRvIHRoZSBvdGhlciBfX2xlNjQgZmllbGRzIHdpdGgg
bmFub3NlY29uZCB0aW1lLg0KDQpSaWdodCwgSSd2ZSBhbHNvIGNvbnNpZGVyZWQgaXQgZHVyaW5n
IGNyZWF0aW5nIHZpcnRjaG5sIEFQSSwgYnV0IGF0IHRoZQ0KZW5kIG9mIHRoZSBkYXkgSSBhZ3Jl
ZSB0aGF0IHdlIGRvbid0IG5lZWQgdG8gd2FzdGUgc3BhY2UgZm9yIGV4dGVuc2lvbnMuDQoNCj4N
Cj4+ICtWSVJUQ0hOTDJfQ0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmwyX3B0cF9nZXRfY3Jv
c3NfdGltZSk7DQo+PiArDQo+PiArLyoqDQo+PiArICogc3RydWN0IHZpcnRjaG5sMl9wdHBfc2V0
X2Rldl9jbGtfdGltZTogQXNzb2NpYXRlZCB3aXRoIG1lc3NhZ2UNCj4+ICsgKgkJCQkJICBWSVJU
Q0hOTDJfT1BfUFRQX1NFVF9ERVZfQ0xLX1RJTUUuDQo+PiArICogQGRldl90aW1lX25zOiBEZXZp
Y2UgdGltZSB2YWx1ZSBleHByZXNzZWQgaW4gbmFub3NlY29uZHMgdG8gc2V0DQo+PiArICoNCj4+
ICsgKiBQRi9WRiBzZW5kcyB0aGlzIG1lc3NhZ2UgdG8gc2V0IHRoZSB0aW1lIG9mIHRoZSBtYWlu
IHRpbWVyLg0KPj4gKyAqLw0KPj4gK3N0cnVjdCB2aXJ0Y2hubDJfcHRwX3NldF9kZXZfY2xrX3Rp
bWUgew0KPj4gKwlfX2xlNjQgZGV2X3RpbWVfbnM7DQo+PiArfTsNCj4+ICtWSVJUQ0hOTDJfQ0hF
Q0tfU1RSVUNUX0xFTig4LCB2aXJ0Y2hubDJfcHRwX3NldF9kZXZfY2xrX3RpbWUpOw0KPj4gKw0K
Pj4gKy8qKg0KPj4gKyAqIHN0cnVjdCB2aXJ0Y2hubDJfcHRwX2Fkal9kZXZfY2xrX2ZpbmU6IEFz
c29jaWF0ZWQgd2l0aCBtZXNzYWdlDQo+PiArICoJCQkJCSAgVklSVENITkwyX09QX1BUUF9BREpf
REVWX0NMS19GSU5FLg0KPj4gKyAqIEBpbmN2YWw6IFNvdXJjZSB0aW1lciBpbmNyZW1lbnQgdmFs
dWUgcGVyIGNsb2NrIGN5Y2xlDQo+PiArICoNCj4+ICsgKiBQRi9WRiBzZW5kcyB0aGlzIG1lc3Nh
Z2UgdG8gYWRqdXN0IHRoZSBmcmVxdWVuY3kgb2YgdGhlIG1haW4gdGltZXIgYnkgdGhlDQo+PiAr
ICogaW5kaWNhdGVkIHNjYWxlZCBwcG0uDQo+PiArICovDQo+DQo+RG8gd2Ugd2FudCB0byBlbmNv
ZGUgc2NhbGVkX3BwbSBoZXJlIGluIHRoZSB2aXJ0Y2hubCBpbnRlcmZhY2U/IEkNCj5zdXBwb3Nl
IGl0cyBub3QgdGhhdCBiaWcgYSBkZWFsIGJ1dCBpdCBpcyBraW5kIG9mIGFuIGltcGxlbWVudGF0
aW9uDQo+cXVpcmsgb2YgdGhlIExpbnV4IEFQSXMuIFdlIGNvdWxkIHVzZSBwYXJ0cyBwZXIgdHJp
bGxpb24gb3Igc29tZXRoaW5nDQo+c2ltaWxhci4uDQo+DQo+SSBzdXBwb3NlIHRoZXJlIGlzIGxp
dHRsZSB2YWx1ZSBpbiB0cmFuc2xhdGluZyBmcm9tIHNjYWxlZF9wcG0gdG8gc29tZQ0KPm90aGVy
IGZvcm1hdCwgZHVlIHRvIGFjY3VtdWxhdGVkIGVycm9yLCBhbmQgc2NhbGVkX3BwbSBpcyBoaWdo
ZXINCj5wcmVjaXNpb24gdGhhbiBwcGIuIE9rLg0KDQpJJ20gbm90IHN1cmUgSSBmdWxseSB1bmRl
cnN0YW5kIHlvdXIgY29uY2VybiwgYnV0IHlvdSB0aGluayB0aGF0IHdlDQpjb3VsZCB1c2UgYW5v
dGhlciBuYW1pbmcgY29udmVudGlvbiwgb3IgcHJvdmlkZSB0byBjb250cm9sIHBsYW5lIHJhdw0K
c2NhbGVkIHBwbSB2YWx1ZT8NCg0KUGxlYXNlIG5vdGljZSB0aGF0IGluIGN1cnJlbnQgc2hhcGUs
IHdlIG5lZ290aWF0ZSBhbHNvIGJhc2ljIGluY3JlbWVudA0KdmFsdWUgaW4gUFRQIGNhcGFiaWxp
dGllcywgdG8gYWRqdXN0IHNjYWxlZCBwcG0gLSBhcyBpdCBpcyBkb25lIGluIGFueQ0Kb3RoZXIg
cHJvZHVjdCAtIGFuZCB0aGVuIHRoZSBkaWZmIGlzIHNlbnQgdGhyb3VnaCB2aXJ0Y2hubCBtZXNz
YWdlLg0KDQpUaGFua3MsDQpNaWxlbmENCg==
