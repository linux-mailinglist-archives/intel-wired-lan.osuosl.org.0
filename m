Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C30B76B84D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 17:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4920681EEA;
	Tue,  1 Aug 2023 15:15:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4920681EEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690902935;
	bh=rbDrNnphspvTBBQ/KPsbOXZA6Q6mIaT7iECaC6v2RHs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SGEbF1/ITf1XMxEIucGpZe2noHDSL5lfobLISu7mkxHWkk07215Yg8oeSS4qxY+GK
	 xMOqD4uEuKabnJFJI1b0aRqA1NGl4IelvWUPV3WRwlVYep6IHJcwuNtqMG7lJURczz
	 +NdWQeVRGCZgEhP1RD3/dM/FlndVzuR+5hGlBE3EJsDufIOkW3BbBC/DyW59SwDBJ6
	 59ZU7bc15caMZjsxtBTo7LcKrHEQyheNppN46m8fz2s44NadapDiW7rH41pAXm6W6d
	 tk3+QFSs1RBKkC7Ch9OTLxOE3K7Vlo7Z6z+9y1RsYLxxtoyCf9buxvdG6r4Jn3Xv29
	 NltG4x//ytXKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7S97zd6MjElK; Tue,  1 Aug 2023 15:15:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5051A81746;
	Tue,  1 Aug 2023 15:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5051A81746
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F5671BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 09:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBE8041772
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 09:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE8041772
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9UDEOCrLBT5A for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 09:30:42 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAFA141758
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 09:30:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAFA141758
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="359297621"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="359297621"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 02:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="818730255"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="818730255"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 02:30:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 02:30:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 02:30:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 02:30:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UO7to841CXCeJf276aHJSmXETYXgCZvrOBlSYhrTqyDp/xHPlYq+ircquaEkScrchuMXEgGzehBRROLLjGrbweq/4/g0YiaY7q5xifpNP8dmXwihSNn3ZIAl//yK0LbbvxOIcs7eo/mHn7uuvpavqReEu83TaMtVHOZ6FM+WmJlq0ziBU4AMKSbyizGGxgXuky+SMTwRYASuKGOPtHUGD4T+lGpUpFCpFco1wJZGhjBH0qtYsU9kxOmf5/Di+/1i2eovzk6o92GrV6imEsFCqKbyrx1+VHrSSc2Ni5z+NdMXuymiSsl2XAiju8XccNvxgx3cS7o+kdl7lgSDFEcwfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DtODlanjR1rtEe1x94fSE76DfTNsjUoAJ12/URyZ+Io=;
 b=PFvHiRbHg2MD9q1jOAAHADvWSSSAWz86NcOTAkJbF9oKUP9XDZiOEiA+OK44jqSyNwiCs5knIHK6czgSAp0Hmfx9pyLjGP/h7xZTdSDzh/Y7XrU2cW0PNip2f0Ndfa6eujM579I5QfY+KpeN3WyDebKv/45wT8C5f5Wots0xHjICcvQ+74K269053nAlwlr0JhyJX7GWGc3bGDcxhW+NUjUcqrF94jUio/X5j8D+ZxXaD9qtyIG9fjz+P/JvBZljHrpTcDeaWRy/UYgGNpnTm1EvAsDunPPhOU8iH2aWgl2UDHXvqVS+R9LhNFbSPVMlYmcAO5gX2uGDdILl9/HwdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Tue, 1 Aug
 2023 09:30:38 +0000
Received: from IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::9c97:497b:b952:147d]) by IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::9c97:497b:b952:147d%6]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 09:30:38 +0000
From: "Wu, Wenjun1" <wenjun1.wu@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/5] ice: Support VF queue
 rate limit and quanta size configuration
Thread-Index: AQHZwC8/P/j68XMuJEi8BHDFOz+QRK/Ues4AgAC4zhA=
Date: Tue, 1 Aug 2023 09:30:37 +0000
Message-ID: <IA0PR11MB7955F4164184E2272B691DAEDF0AA@IA0PR11MB7955.namprd11.prod.outlook.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230727021021.961119-3-wenjun1.wu@intel.com>
 <c7c74aea-046a-73f8-ab19-1341c66f8b09@intel.com>
In-Reply-To: <c7c74aea-046a-73f8-ab19-1341c66f8b09@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7955:EE_|DS0PR11MB7310:EE_
x-ms-office365-filtering-correlation-id: e27260d7-ff56-42b0-9ecc-08db9271f732
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5gFODbv1aLy6AneKkPUrDYOziNS2ER9yPRH7CUsf5SOu+Wikph0OvtLuuY185LOMt4VgiUpj0r8YssvolhNYGeptmv/aufpbiuQFc9aMvbfpFpy/d0KSgyoXnXciyr7H+ByAcKBaC3bq7HYlXaNEEnzUBSwUNgUiNmH/WFFw/vYqAXwC34f1fKRqpU3Q4NtiT+O4FLa2b6+LgP5xxIFuHnCuwGbSArwt+yqd1qmNDljVaAh87anix0LVpD1e28AAHxZt332a9AumW8m3xa4+Pk0aRE8kkSB678plthXAV/NM2NwyqcfiD2YGnMDWflumGOuRMRJeIFXOZU2tiBaTl9TQTq2hBhyNucP+xtb6QanG55bVJ2t4x55Gb43FLRYfkh3ie1UK0E0XUHJu2Gj4jSlSKRQO4kbun1/+w4rd+cfOiqsw2W9a9VOzd6AXANDxx2MtYdWWopajgdNd95OkCiyQWT07y5dD8+b5CMrO18X4eHRiINfpNe35/tndiASX9HQgI0dLN/fjJ/v1BEwtuhKLolAPk+F52EM8VaF2VCXlqVF+wIcYfOYHWmzqswzCGExjw3rMyA10QttKIqbIcgAKhDkhmcYDWOw3yOGRzxYAY1KE0GWWtF/A43YnGoZN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7955.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199021)(9686003)(7696005)(55016003)(53546011)(6506007)(26005)(83380400001)(107886003)(186003)(76116006)(33656002)(66946007)(52536014)(66556008)(54906003)(110136005)(122000001)(82960400001)(38070700005)(41300700001)(38100700002)(86362001)(66476007)(316002)(5660300002)(66446008)(4326008)(8676002)(8936002)(64756008)(2906002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUhuc0ZhWGpYWDZrRHlFTHBUemR3V2VyRmNRcnlmSzBneTZDbUtRTlZjVzhp?=
 =?utf-8?B?TWd0bDlQN0d4L21JVWdJd1FaS2xKMnZOQXpadmJXL1RoNUVIKzM1djhmUnYy?=
 =?utf-8?B?VW1SaWpBNnBpdVVnTnJoaWs3RHBrM0JGdnlHaUY3dVQ4bW9DckNMZVgxN3B3?=
 =?utf-8?B?aFJLNjhzaGNkR29hTDV6bGRWdmJXbkJ4WVhNZkZlM3FPVnlzSVYvbWpjMGQr?=
 =?utf-8?B?S2t2NkNPU0Z1SjB5UVFPd2pET1UxUmtZb3ZtaTFvR2ZUZ0RveCs0L0xzTGE3?=
 =?utf-8?B?ZjExeXoxRmNYWDdEcCtCMWVlaGhOa1FVanI0WkJvbVVlbWxxMWJHMzZjd0xL?=
 =?utf-8?B?QnVtZ1J6OTdmc1JLelVoNXJhUTRpa2s4NVNLNy9aTlVJTUd1RXFnQUZadExy?=
 =?utf-8?B?eUhKZHdtai93UXF5VjljZkxBMDcvZjc1RFRjQW5TS3Q2VVhGN3VlV29OTkVC?=
 =?utf-8?B?ZkNEZThLdis5RzdxU2RLV2dBUisvY1YwOVladHBxb0lVRlRHc1ZPNEs2SDJE?=
 =?utf-8?B?dldOMW55bUM0L2NhYThKSXJCZ3BOVlA4by9STUtxcFhTNXBhMWtVWXFQQ3dP?=
 =?utf-8?B?WDVxdjFzZXFlQ1h4R29JaXdINUJqM2YyWm5odGhkMjlrMmVvN0IrRVEyMWF4?=
 =?utf-8?B?M0xXNUVBTVRCT0RDbEdyTnB4SFdxeFVYcjN5NE5NQWtPank2dUlVK0Qrd1do?=
 =?utf-8?B?MnlPYk1SNnBWeEdROFhiNzdaNk10d0FLaGlJeHVLazliM0JhWnJVVkpqMUwv?=
 =?utf-8?B?Mmkvc2Z0QkkxRU5BOTljUHdOclFWODVvUldtNWlCbitWUFdwUC80ZW1RaG50?=
 =?utf-8?B?MUU2cGtKWHc3ajA5ZHVnamNmLzVzeWl3N2hpamNWcnBXTllPY0xURkRvNXVp?=
 =?utf-8?B?ZE1SaXYvbUoxQkJ1alptM2VMTlVnODJJL3cxVittbmV4UVIzeGEyWUFvOEJs?=
 =?utf-8?B?Wk1RZGtCdFVsWFdNUWprSkhrM05BOHNRVnk1RVpaRjA2d0NRMy9ocVpkN3ZQ?=
 =?utf-8?B?dGVZOUh0NS9pOVoyUHdCc2R4S1h6cWpjTG1HMGNoZHVSbkVPM0hjQTRTUG4z?=
 =?utf-8?B?aTBnblBYUTN3YVFWd2tUdElhN2ZTNmlPWUFCWU5FaEE3ZDNxRHhWVlBxWWor?=
 =?utf-8?B?RkJ6ckc2R285VGR2bXo2eS9sU21uaDA1Q0ZhQzZtLy9hVmJMN21RWTZWSFVG?=
 =?utf-8?B?SElPOHRIdlBiOXVDM2dHQUtZU1ZYYy85OGtFWForUEwxK29WbUZnbHpRaFpx?=
 =?utf-8?B?MTZJb2dWaWtjQkZ3V0hoM1ozNEF1QnAvVytOWk1pbjJQRXJ4Z0lsU1AxS29W?=
 =?utf-8?B?OVVrSllnc0UyY3QxaDZ2blA4TGRERTRScnBuNUpXV1YxNFpvWm13Y1A2MG5x?=
 =?utf-8?B?ME5hblk5eFFDYkk2WEU5OThEYWZjbGNsVU1yaEtEbE5ZV0QwQXhmRnNGMWZC?=
 =?utf-8?B?QS9xdUMzSE5MZTQrQlc4L1lUMDBzMW16cFZnS2g2VGNtK2ZXYk40di9RNFhz?=
 =?utf-8?B?TUxDbFNYQlRUdDFGVmhWR0w2K0pBMjVRMnJOb0xBdlFWckNWMUNWZlRDQmtx?=
 =?utf-8?B?RG4reW12SlB5WWs1UXFIV1ZTc0JKN0JtSkJZNXEvU2JKZ0RBejVyU3hKUnEv?=
 =?utf-8?B?emh2WnlBc1plb0Y1SWQ2a29RSXl2d2ZIakZreURXT05RaytudUt2bFFuUmVI?=
 =?utf-8?B?b2hscG5jMVMzc3dQMmhONUlLNHRubnVpN3pNMEZ6UkhBZGxBcDlWY3liQmx0?=
 =?utf-8?B?ZzlrcFBDcnhSaUppZTNhVmJUbjl1RFZWZDhGaHk0WkZQT1BBWU50cnR3YTc3?=
 =?utf-8?B?MUR0em85Y0orUEhNdmFSSkxWTXhiNVh3M291UXh3SlRLVDdvdG56cTBrK2pV?=
 =?utf-8?B?QUtFdGM4blRrMDlnYzh4OFF3SHNaU3VmUmJaeGZPVTZ2d1pFRWFuT29vV212?=
 =?utf-8?B?c0kvbkZTbDJHQ2NTbDJ1QlNzU2pXanpJT0h5SWhFMXR6YWw5M3F5YmpYbXdZ?=
 =?utf-8?B?UlhoY2pQUFlFcnl1eWl3V1o5VTZURE90Ymh0aW9XVUhXVlBCa1ViTjc0NHBn?=
 =?utf-8?B?V2NOQVF4LzNpZFNGQXJkZ2J6aW1TS3FUQ2ZvTXlCNEFaM0dGZC9rbHcwQmEz?=
 =?utf-8?Q?BsyOVC3HsCkcy858Z4ZKyPUG3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e27260d7-ff56-42b0-9ecc-08db9271f732
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 09:30:37.8873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eyEOhNMk7ynqViurihBUPla4YRgPeIGEyOO25MyNsNGZxM5nHis64MjJo6t4Voer3aiSSw8IEMyUohTXhDhVIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 01 Aug 2023 15:15:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690882241; x=1722418241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DtODlanjR1rtEe1x94fSE76DfTNsjUoAJ12/URyZ+Io=;
 b=nTcTAboWyy//j6YPyhb6JIzBkIxm3JbkojB+qjC92qPMuvQYiSaEhZYZ
 l70dgjTJ/si5YIS6UmYaoFdlZmrAjPYnG3OKrpW0X2RnJ4w3omxJ2jbUo
 VeJLaP/GddocVkAbxplB3sfx4RgN1t5BZHguJdwCWWzcZg2YtRyC28pOu
 /PvXYONSKxqDsJvKnimo+gYhM01hfm/ec7o8VPXJU37Tq8NkWit7mfP7B
 YDK5i/06DMKYxa5lw/gnyoHLCgP+7RvWaG69GkUex14zfDx56yS+nxkex
 QLu/7zJKNqDHM2svvX6eGiVyIo7a7coBa1eSyk6L2qb6TtV+xniOUUiY0
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nTcTAboW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/5] ice: Support VF queue
 rate limit and quanta size configuration
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
Cc: "Aggarwal, Mitu" <mitu.aggarwal@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the careful review!

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Tuesday, August 1, 2023 6:23 AM
> To: Wu, Wenjun1 <wenjun1.wu@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Aggarwal, Mitu <mitu.aggarwal@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/5] ice: Support VF queue
> rate limit and quanta size configuration
> 
> 
> 
> On 7/26/2023 7:10 PM, Wenjun Wu wrote:
> > Add support to configure VF queue rate limit and quanta size.
> >
> > For quanta size configuration, the quanta profiles are divided evenly
> > by PF numbers. For each port, the first quanta profile is reserved for
> > default. When VF is asked to set queue quanta size, PF will search for
> > an available profile, change the fields and assigned this profile to
> > the queue.
> >
> > Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice.h          |   2 +
> >   drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
> >   drivers/net/ethernet/intel/ice/ice_common.c   |  19 ++
> >   .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
> >   drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
> >   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
> >   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 317 ++++++++++++++++++
> >   drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
> >   .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
> >   10 files changed, 377 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h
> > b/drivers/net/ethernet/intel/ice/ice.h
> > index 125a2e753e29..25267ae6ab62 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -637,6 +637,8 @@ struct ice_pf {
> > diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > index 20f40dfeb761..999bd4633d4f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > @@ -500,5 +500,13 @@
> >   #define PFPM_WUS_FW_RST_WK_M			BIT(31)
> >   #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) *
> 4))
> >   #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
> > +#define GLCOMM_QUANTA_PROF(_i)			(0x002D2D68
> + ((_i) * 4))
> > +#define GLCOMM_QUANTA_PROF_MAX_INDEX		15
> > +#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_S	0
> > +#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_M	ICE_M(0x3FFF,
> 0)
> > +#define GLCOMM_QUANTA_PROF_MAX_CMD_S		16
> > +#define GLCOMM_QUANTA_PROF_MAX_CMD_M		ICE_M(0xFF,
> 16)
> > +#define GLCOMM_QUANTA_PROF_MAX_DESC_S		24
> > +#define GLCOMM_QUANTA_PROF_MAX_DESC_M		ICE_M(0x3F,
> 24)
> 
> These don't look like the right placement within the file. Please check/correct.

Yes, I will fix it.

> 
> >
> >   #endif /* _ICE_HW_AUTOGEN_H_ */
> > +/**
> > + * ice_vc_get_qos_caps - Get current QoS caps from PF
> > + * @vf: pointer to the VF info
> > + *
> > + * Get VF's QoS capabilities, such as TC number, arbiter and
> > + * bandwidth from PF.
> > + */
> > +static int ice_vc_get_qos_caps(struct ice_vf *vf) {
> > +	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> > +	struct virtchnl_qos_cap_list *cap_list = NULL;
> > +	u8 tc_prio[ICE_MAX_TRAFFIC_CLASS] = {0};
> 
> init with { } is preferred

Perhaps you mean u8 tc_prio[ICE_MAX_TRAFFIC_CLASS] = { 0 };
I will change it in the next version.

> 
> > +	struct virtchnl_qos_cap_elem *cfg = NULL;
> > +	struct ice_vsi_ctx *vsi_ctx;
> > +	struct ice_pf *pf = vf->pf;
> > +	struct ice_port_info *pi;
> > +	struct ice_vsi *vsi;
> > +	u8 numtc, tc;
> > +	u16 len = 0;
> > +	int ret, i;
> > +
> > +	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> > +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> > +		goto err;
> > +	}
> > +
> > +	vsi = ice_get_vf_vsi(vf);
> > +	if (!vsi) {
> > +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> > +		goto err;
> > +	}
> > +
> > +	pi = pf->hw.port_info;
> > +	numtc = vsi->tc_cfg.numtc;
> > +
> > +	vsi_ctx = ice_get_vsi_ctx(pi->hw, vf->lan_vsi_idx);
> > +	if (!vsi_ctx) {
> > +		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> > +		goto err;
> > +	}
> > +
> > +	len = sizeof(*cap_list) + sizeof(cap_list->cap[0]) * (numtc - 1);
> 
> I believe struct_size helper can be used here

Yes, I agree.

> 
> > +	cap_list = kzalloc(len, GFP_KERNEL);
> > +	if (!cap_list) {
> > +		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> > +		len = 0;
> > +		goto err;
> > +	}
> > +
> > +	cap_list->vsi_id = vsi->vsi_num;
> > +	cap_list->num_elem = numtc;
> > +
> > +	/* Store the UP2TC configuration from DCB to a user priority bitmap
> > +	 * of each TC. Each element of prio_of_tc represents one TC. Each
> > +	 * bitmap indicates the user priorities belong to this TC.
> > +	 */
> > +	for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
> > +		tc = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[i];
> > +		tc_prio[tc] |= BIT(i);
> > +	}
> > +
> > +	for (i = 0; i < numtc; i++) {
> > +		cfg = &cap_list->cap[i];
> > +		cfg->tc_num = i;
> > +		cfg->tc_prio = tc_prio[i];
> > +		cfg->arbiter = pi->qos_cfg.local_dcbx_cfg.etscfg.tsatable[i];
> > +		cfg->weight = VIRTCHNL_STRICT_WEIGHT;
> > +		cfg->type = VIRTCHNL_BW_SHAPER;
> > +		cfg->shaper.committed = vsi_ctx-
> >sched.bw_t_info[i].cir_bw.bw;
> > +		cfg->shaper.peak = vsi_ctx->sched.bw_t_info[i].eir_bw.bw;
> > +	}
> > +
> > +err:
> > +	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_QOS_CAPS,
> v_ret,
> > +				    (u8 *)cap_list, len);
> > +	kfree(cap_list);
> > +	return ret;
> > +}
> > +
> > +/**
> > + * ice_vf_cfg_qs_bw - Configure per queue bandwidth
> > + * @vf: pointer to the VF info
> > + * @num_queues: number of queues to be configured
> > + *
> > + * Configure per queue bandwidth.
> > + */
> > +static int ice_vf_cfg_qs_bw(struct ice_vf *vf, u16 num_queues) {
> > +	struct ice_hw *hw = &vf->pf->hw;
> > +	struct ice_vsi *vsi;
> > +	u32 p_rate;
> > +	int ret;
> > +	u16 i;
> > +	u8 tc;
> > +
> > +	vsi = ice_get_vf_vsi(vf);
> > +	if (!vsi)
> > +		return VIRTCHNL_STATUS_ERR_PARAM;
> > +
> > +	for (i = 0; i < num_queues; i++) {
> > +		p_rate = vf->qs_bw[i].peak;
> > +		tc = vf->qs_bw[i].tc;
> > +		if (p_rate) {
> > +			ret = ice_cfg_q_bw_lmt(hw->port_info, vsi->idx, tc,
> > +					       vf->qs_bw[i].queue_id,
> > +					       ICE_MAX_BW, p_rate);
> > +		} else {
> > +			ret = ice_cfg_q_bw_dflt_lmt(hw->port_info, vsi->idx,
> tc,
> > +						    vf->qs_bw[i].queue_id,
> > +						    ICE_MAX_BW);
> 
> These functions return kernel error codes...
> 
> > +		}
> > +		if (ret)
> > +			return ret;
> > +	}
> > + > +	return VIRTCHNL_STATUS_SUCCESS;
> 
> ... this and the error above are returning VIRTCHNL errors. These are not
> returning consistent types.

I will change it to return 0; to align to the kernel error codes.

> 
> > +}
> > +
> > +/**
> > + * ice_vf_cfg_q_quanta_profile
> > + * @vf: pointer to the VF info
> > + * @quanta_prof_idx: pointer to the quanta profile index
> > + * @quanta_size: quanta size to be set
> > + *
> > + * This function chooses available quanta profile and configures the
> register.
> > + * The quanta profile is evenly divided by the number of device
> > +ports, and then
> > + * available to the specific PF and VFs. The first profile for each
> > +PF is a
> > + * reserved default profile. Only quanta size of the rest unused
> > +profile can be
> > + * modified.
> > + */
> > +static int ice_vf_cfg_q_quanta_profile(struct ice_vf *vf, u16 quanta_size,
> > +				       u16 *quanta_prof_idx)
> > +{
> > +	const u16 n_desc = calc_quanta_desc(quanta_size);
> > +	struct ice_hw *hw = &vf->pf->hw;
> > +	const u16 n_cmd = 2 * n_desc;
> > +	struct ice_pf *pf = vf->pf;
> > +	u16 per_pf, begin_id;
> > +	u8 n_used;
> > +	u32 reg;
> > +
> > +	per_pf = (GLCOMM_QUANTA_PROF_MAX_INDEX + 1) / hw-
> >dev_caps.num_funcs;
> > +	begin_id = hw->logical_pf_id * per_pf;
> > +	n_used = pf->n_quanta_prof_used;
> > +
> > +	if (quanta_size == ICE_DFLT_QUANTA) {
> > +		*quanta_prof_idx = begin_id;
> > +	} else {
> > +		if (n_used < per_pf) {
> > +			*quanta_prof_idx = begin_id + 1 + n_used;
> > +			pf->n_quanta_prof_used++;
> > +		} else {
> > +			return VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> > +		}
> > +	}
> > +
> > +	reg = rd32(hw, GLCOMM_QUANTA_PROF(*quanta_prof_idx));
> > +	reg &= ~GLCOMM_QUANTA_PROF_QUANTA_SIZE_M;
> > +	reg |= quanta_size << GLCOMM_QUANTA_PROF_QUANTA_SIZE_S;
> > +	reg &= ~GLCOMM_QUANTA_PROF_MAX_CMD_M;
> > +	reg |= n_cmd << GLCOMM_QUANTA_PROF_MAX_CMD_S;
> > +	reg &= ~GLCOMM_QUANTA_PROF_MAX_DESC_M;
> > +	reg |= n_desc << GLCOMM_QUANTA_PROF_MAX_DESC_S;
> > +	wr32(hw, GLCOMM_QUANTA_PROF(*quanta_prof_idx), reg);
> > +
> > +	return VIRTCHNL_STATUS_SUCCESS;
> 
> Is this really supposed to return VIRTCHNL codes? That's not a standard
> convention the driver is doing.

It seems better to use kernel error code in this function,
I will change it in the next version.

> 
> > +err:
> > +	/* send the response to the VF */
> > +	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUANTA,
> > +				    v_ret, NULL, 0);
> > +	return ret;
> 
> return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUANTA,
> 			    v_ret, NULL, 0);

Got it.

> 
> >
> >   /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
