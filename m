Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9EF7BFACD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 14:08:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 278AD41928;
	Tue, 10 Oct 2023 12:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 278AD41928
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696939718;
	bh=QEhHFJKTJAS2O1AEOojAht9DPw5O/k9bmNaXx+Nd6RI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wwaoyUz67drQD+xYnujkmnS+d0iaySRCalPDjTSJLnZFzs8q53TcCZtRa6BL47Yr4
	 WL+3IYzhxN3LiMLQR0Je8swth8GgMDRP/vrTye5nZTTBpa/QRxs7IyTwK7Zn91tL57
	 XYaO/Su6GGZjc2kSd2fIxGDEpATNrie87D6UkHMzO2YE+uSrZ+0p6WXYXLZBPR3nTN
	 csJhZ/f/PVG7JdvYCX1ZgiJp4VcDMjipvrEWl7SgfRtWByhtEHX56H+0i+nGuj/59h
	 u9bIj25Jmmp0jqEExTWmi5rvkH3LQzaovtwDgIIdt4pgUURbkUo2GO4njHYWZUzDyP
	 kSHPw9MFouokA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D664YiQckGNc; Tue, 10 Oct 2023 12:08:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAED8418EA;
	Tue, 10 Oct 2023 12:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AAED8418EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB2421BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 12:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF13581EFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 12:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF13581EFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXzHcRmQzvsA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 12:08:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9787781E88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 12:08:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9787781E88
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="415384205"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="415384205"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 05:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="819215854"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="819215854"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 05:08:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 05:08:28 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 05:08:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 05:08:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 05:08:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YdmoQDNThWQ5g0XG3WY8OUNZJmceAduH72tupv+s58GaAhc3m0VJoirVama+g8apAUaRJHKD2gA7GJ1164Il0gII0HrhutUEJUAorSY28q2wxz/Cl+vqChm2Jo+L0rBCZLvZyItMZW6HA3GEfkU1rClnH81DfloVZNnlhaaa8/fNglJMgw6H1gxcg9/WZZynH/SvL9Zu192FQZD9T1hb4aqS63Y3Pk6meie2KICjktZS/6JU4AGY3LfsWI9W1KEYQAQhRIVLprh9JTXBFxByfptvj6Vg/TYbe4gvNVDZKgbOf5FiWHLHydv8lyINUWXeFhgNezDoYUTB0nCMFkX6dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FwjnDl5rjiYKYre4Znsm/ozycPLDworuoNKpGlqRueQ=;
 b=mlFYpHKGkw6rLnoz0LO1XHW7PA1e6rcP/bO5Nsxwf4N5r3Weq4jj8Gory5UDrYCoIQII8XNQRMVbdX1lsbSwHxocLXeFdICkue5wFNdjCbFoGOQPf3TweI/YcEt1B/hnfYyHLzChQ1Wxlfszgc1R4FHyN2XhHiD++BOEVx55Tc18m+2M6BoKFatxFjshDxUmZYks/VLQ9YT1QGbaPoZiJQBPmrsHvZOn+bcUD08Ay+9O16MxSgqa/mVmNIl5B5/5crYTtwV71+DeHiD4p0qtgT8lNyahW6+z6inrde/KgVbVNS6o8jqMCT38wuHQ3gdQ+zLNhVjnE1CWTnnyiMbP7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by PH7PR11MB6906.namprd11.prod.outlook.com (2603:10b6:510:202::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 12:08:25 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 12:08:25 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
Thread-Index: AQHZ+xBUzGJaiZ8enU2sIz/BslrYXbBC45JQgAAIMICAAAL5MA==
Date: Tue, 10 Oct 2023 12:08:25 +0000
Message-ID: <MW4PR11MB5776E1AEB843AFE779D29708FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-3-mschmidt@redhat.com>
 <MW4PR11MB5776FAE3D86203A223769BABFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
 <a65e79ff-7894-4095-b3bb-948b4cfa04e0@redhat.com>
In-Reply-To: <a65e79ff-7894-4095-b3bb-948b4cfa04e0@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|PH7PR11MB6906:EE_
x-ms-office365-filtering-correlation-id: 3c6a5670-d360-4d8c-bf43-08dbc9899b08
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iC79CYMZbeXNemvpPzjZ9V5p7/sza+yFyDDA4obIXU4KtFeZ6otGNSPNchL/FJYlB4ovq8hskDEvTWFlGLClQl/D3kwA/xWrq2l8YHnyj+PeoHjM5zBR8rJLk75CoigMKVEJc2rBjFkMuPfonwaTbhnxVs4klh+4h9vGr6dbb6RvOja05ETnqRVvhsHeg2xUdKsArMM8pPPxndnXYzvfkrFuDJ+BtuFPnlAT6WA5xfBYkr5T2NYjJOzID1a7DLEtNrMvbhQYmqEyjr7zIgsH+Vj6oZdFamLdWLeLW6JWW3rPFdXnfjU8hW4f5FVNUKUJkQaVGZTG6ZijOdtYdl3aC5lr9AKDjuNa6O1HT6mOhP1AWOBSGzKknprXIGtWc391MliwZ/Q5IFvs9rSRyxPrHXYZ3Ba7FkY0kMj03GI2PJ3SJa10xGeRwtoIr/1UQZDFU/UgdrD0dn2L323/jmcG5o+fK3RXD72fLf95UTm8dGGf3d2ZNSmuGZ5p4MMDcXHjBzO+F7jVevciepYLMxAgoTuBOF0uDChUlMc9JJW6M+TPlA188jryoZaV5MIHKpyke9hdQ/FYUOM6Q0Sg0eDCU6sYUz0jpMZnhS68kU6twak=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(53546011)(107886003)(9686003)(33656002)(86362001)(122000001)(55016003)(38070700005)(38100700002)(82960400001)(26005)(2906002)(83380400001)(966005)(71200400001)(7696005)(6506007)(478600001)(8936002)(8676002)(4326008)(52536014)(41300700001)(316002)(66446008)(5660300002)(66476007)(110136005)(66556008)(66946007)(76116006)(64756008)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3pua0pCRWRHN1hOVHdOQ0lSYXFzUjN0cmcvWEhIOThMTllJSFBucjBhTjlx?=
 =?utf-8?B?anNGTWRjdndxNk5hUzJsUk5nUVlzU3IvdnNPWHpCNnZWS1FOSGhrTDREQlMx?=
 =?utf-8?B?WUNsYjdNWUhVd3JqMDQrOUp3VGZNdTFGYzlqMk5xaUk5c0x2OUIvNHBKOGdu?=
 =?utf-8?B?M1VTd1VaSnI0RFlSanJiWU5yeFY1UE1EeTcwWDVVeGliNlZQQlc2K0dmNm9W?=
 =?utf-8?B?cmdlTGpqSEJkZlUrMTRNRU1aWGJ1dG9pcHRVaXIzbTVFTnZvanNENHNZWi8r?=
 =?utf-8?B?ck1SKzN6SktvNDNZZTlaWnBnS0RNQWFKSTl2ek0zWFBzeWNyaXpMbTI5VVJz?=
 =?utf-8?B?bTVEU21nOGtPbkVIOWQ3SGJUL3N3KytEMzlYemVKV3Z1UVFNdU1sbFNab3JO?=
 =?utf-8?B?SjE4VlJIQ1Vldmg1NVNzSmFUNys4dTBPSW5jSERjdVBIVyszYm1RcVBzSDVO?=
 =?utf-8?B?UFFHUkVUYlY3VTAvSkhYUmpaYk1iM2lCaS9PUk5sUi9GSmVLTXFKVzBjSDVJ?=
 =?utf-8?B?OWsvblFDTWtLZFNVd1JERTIvQ2lnUXVNeWFzdTVyQi9yVTB4QzFJR280WHp6?=
 =?utf-8?B?Q2F2OW1SYUVhZjBiYksyMTlKOHR0TzFJZngzVVNybkFBU3haZW50RjlMZ3Zs?=
 =?utf-8?B?SUVZL2h3a1J5Z2FPQ25TOHBaSnJFOHl0aHhZemh3WEZVSFpiR1dRUkZ4VjVl?=
 =?utf-8?B?WlR1QXlCeWN1NjBOTmk5SW1zZm5kR2xPWXNhcnBkS2NWZ09hUm9EWXpCd1Iz?=
 =?utf-8?B?VWxxandEUDQzeEtvYkY2TkpFTlFNQ2FRODBEa2pwaDN5bmNhNm1uSmxlQzhp?=
 =?utf-8?B?LzFiZHQ4d1diZFdqZlZZOEo0akpDSWZ5cllGdHNlWVNIM0VTc1QxaFA4UTVD?=
 =?utf-8?B?ZGxPeHhqQXZBblRTcENMd25DdWl2MDlNWGZHNFZLZG5nbm5IZmorcHRld1d6?=
 =?utf-8?B?L0N2TVpsWWgwQ2hQelYwamNSSUhpRXBlUEZUSXBpb2Z0OGd1MlAyeURJaWJq?=
 =?utf-8?B?Vk5mek8wbklzbGFtQ0hodVdjb1Rkb096dWpwU3JOUUJhUEFrNDZkQ3JiVzdk?=
 =?utf-8?B?eHRyY2NlT2V1OVQ4VVg3a0h3WEljaGNzb3BRZzNLNEgraXRJSzRkMmh0QStX?=
 =?utf-8?B?ODUvWnRhYS9Qa3dyeU5PeVd5OHpROU81MVZzRmZUNDA3RzJmUGFBdkFwVEM0?=
 =?utf-8?B?Z0NNSHVWWkxLUkx6L3Z2N3FEUk9zck9nc1YrUlBLNnFrRmVFS0J2S0tCSVRD?=
 =?utf-8?B?NGJ0L1FqOVhpSzkvQ01Vdi9aU2FOMEF4Uk1NaXRaMmEvMkRBcnhBbkVXbUwx?=
 =?utf-8?B?R3NoRzRKYUY1Y29OZkN2U0FseERGWXU1TmoyMW4wZVdmNG5SMnpwM2Npa2NM?=
 =?utf-8?B?WlBtN3dmOS9GcEtmRXB4bms4a0x2bGZyTFJwUnZSZEdFQ1JhbnZueDY0U1Y4?=
 =?utf-8?B?alZpd3RNdjAwUHRsQW4vMmxnSEdqb28wNVVkbjVXd0FnUkZiSlZ0SVE2TlZC?=
 =?utf-8?B?MVdENUxyOVp6dDlaQ3FJakh3TkQzd00vREZoaEUycGZBUDArME50dVVkYjJa?=
 =?utf-8?B?UGJhMktDVFB3RjJYcHl0MkdoREdtU1M0aVpUUTRGbWpkUFZZclBrSksrSXFF?=
 =?utf-8?B?c1FZRHhTWC9nNW9zKzdWQnpPSE9lRUhIZkN0dTVBT1Vib2NqcG0vaFhMYWhB?=
 =?utf-8?B?cllNK0RiRDdVd0swTXllWmpTUVNVa2dMT0NBbisvU2xqcXRpYlBMcnl4Qksr?=
 =?utf-8?B?aEhaZ3ZBVDd6alBGcUlBMGZZdjZOWTlPRXRRekNGb3Z4ejRsK3V4cHgxZU5N?=
 =?utf-8?B?a0IrOVJuOUlsZUxYS1p1ZGtJb3U1UXJwN3pQYmlvNjZUaE1KNlBrSUphU3J5?=
 =?utf-8?B?dUt2UnhtRmxpNSt5cTM2UU91Y2tZNm9rdERvZGJIeHAxa0FzZ01tQXRsRHM5?=
 =?utf-8?B?WFBvWmdpK1ZFRnlIZHByNk9HNlFrT0VmV1cxVngvVWlpUStuR1NwNmJxTFZY?=
 =?utf-8?B?Ujc5NTVXRFlUYmV0UGE5bCt5WFUxR0h5cDlYTEQxdzhxZFJuL0xYOUFoei9h?=
 =?utf-8?B?U0s2ZHlqSS9VNUd2UWcwOVZSNXArMzhVQjh0QjhoYTdOODZoQzNQaHh3R2cv?=
 =?utf-8?Q?okdyx8rFrNGLs+7rOs1HlNzya?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c6a5670-d360-4d8c-bf43-08dbc9899b08
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 12:08:25.1720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMDSQWi+oRq+cMb3AtJlLpYIG9GTUCCsu4EO7vedaFwIkyjSJGotcMas7DgUFC9xpHmh1Zbnoxdj2yYbFu8MdG3j8k2Gl3TZht2Xy+mVDK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6906
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696939710; x=1728475710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FwjnDl5rjiYKYre4Znsm/ozycPLDworuoNKpGlqRueQ=;
 b=DQF/Yju0ILW/2N3VbtCHQK0QoXrEVPWF7CmqLWD7Ar9Q0/fJSUgMgmqg
 p5lzcVJr5+4DDy73GVSo5oh23N0dB2vgxv5KYCjoaNK0CaAWX/A0bbZr5
 +G1zER7oa9Tv2F7iiLAXcuCjOwS8tyJyqNprkvLtdDRCZZEaSwb9zyXR3
 DND9ZA7zPa/ZE8ldOBGfvSlJEPW+7KkvZ1pQd7sLpKn3cmzsOqC8133FM
 rT9nreXV+kxBhgAZIjtF7EswKUcIQbeDGU/685qFSF8gsYvO9Eni/jOIg
 90bM78fY0oK2ePfg6UAhQQZKrw9Qc7Oz86ljG03C0zEuaR7kyniL4oNvT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DQF/Yju0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
 mutex_trylock+sleep loops
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Tuesday, October 10, 2023 1:57 PM
> To: Drewek, Wojciech <wojciech.drewek@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
> mutex_trylock+sleep loops
> 
> Dne 10. 10. 23 v 13:30 Drewek, Wojciech napsal:
> >> -----Original Message-----
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> >> Michal Schmidt
> >> Sent: Tuesday, October 10, 2023 2:25 AM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> >> <radoslawx.tyl@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> >> Subject: [Intel-wired-lan] [PATCH net-next 2/5] iavf: simplify
> >> mutex_trylock+sleep loops
> >>
> >> This pattern appears in two places in the iavf source code:
> >>    while (!mutex_trylock(...))
> >>        usleep_range(...);
> >
> > I found a few other places with similar pattern (iavf_configure_clsflower e.g).
> > Do you think we can fix them as well?
> 
> I think so. But those are with some sort of a timeout, so replacing them
> would be slightly less obviously correct than these here. Later.
> Michal

Makes sense.
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> 
> >> That's just mutex_lock with extra steps.
> >> The pattern is a leftover from when iavf used bit flags instead of
> >> mutexes for locking. Commit 5ac49f3c2702 ("iavf: use mutexes for locking
> >> of critical sections") replaced test_and_set_bit with !mutex_trylock,
> >> preserving the pattern.
> >>
> >> Simplify it to mutex_lock.
> >>
> >> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> >> ---
> >>   drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++----
> >>   1 file changed, 2 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> index 98ecf5d5a2f2..03156ca523fe 100644
> >> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> >> @@ -3016,8 +3016,7 @@ static void iavf_reset_task(struct work_struct
> >> *work)
> >>   		return;
> >>   	}
> >>
> >> -	while (!mutex_trylock(&adapter->client_lock))
> >> -		usleep_range(500, 1000);
> >> +	mutex_lock(&adapter->client_lock);
> >>   	if (CLIENT_ENABLED(adapter)) {
> >>   		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
> >>   				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
> >> @@ -5069,8 +5068,7 @@ static int __maybe_unused iavf_suspend(struct
> >> device *dev_d)
> >>
> >>   	netif_device_detach(netdev);
> >>
> >> -	while (!mutex_trylock(&adapter->crit_lock))
> >> -		usleep_range(500, 1000);
> >> +	mutex_lock(&adapter->crit_lock);
> >>
> >>   	if (netif_running(netdev)) {
> >>   		rtnl_lock();
> >> --
> >> 2.41.0
> >>
> >> _______________________________________________
> >> Intel-wired-lan mailing list
> >> Intel-wired-lan@osuosl.org
> >> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
