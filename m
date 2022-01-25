Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C91D49BF7B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 00:22:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FF7B60B3A;
	Tue, 25 Jan 2022 23:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQHAyrVNKEye; Tue, 25 Jan 2022 23:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFD6360B36;
	Tue, 25 Jan 2022 23:21:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7925D1BF593
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 23:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CC9741553
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 23:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7o7z6MLb8cn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jan 2022 23:21:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8190641550
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 23:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643152912; x=1674688912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BKVFwKXlWUrF5Ck94D7FPOjj/fb5laoRguj3kJGfdD4=;
 b=m2XaWAYa/nxvwp6OGk5JtFZKxXnvDdo7fEB8XVo9p7uN160qSZYY8WhG
 nzJlQ24RwkZS0mRfMbzt/s9zanJosBTSIT3y0JVLZjrUrDGVZ+C+wsazk
 PVQOMLY/MnGevQMn7jDfZ7Gad8x81gcU+YLgmcSCLDQ1MTxB9awdfrLiv
 MSSGzUROZlIAzHoAGRN9vRsdgdsxkOxBlae4dcr/CoqtA0nSuAe/vPnDv
 +HntpbAhKGjDN1PWynbm2doM4TUJSciW6fQ0KG4vbJqSNhKO5xd3f+c9i
 vJSrEZYKJaU+xyoEHQj05Jp62kLJyT4WbhixC0xzsd2wEwE34XeX2/wEf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="307153283"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="307153283"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 15:21:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="674172006"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2022 15:21:51 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 25 Jan 2022 15:21:51 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 25 Jan 2022 15:21:51 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 25 Jan 2022 15:21:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVkrtkT8YbYU7dX7WRdBhdqgQZIJvi2G/u0p40+6sBpULgK1vsDq/GYU/1jFQBTPdn/MOCmNgA2WPIkWsO7Q+/CEctmCmqCrRpPoK1R9fHs/hKxY0J6EKrFD0KS9P1nixmLA5oF9XPHzngMKkKfV28DLnNfhrkjNjSpUzU4IVZjxY2fbFmYYSmPUgu2chsLpLH7B2dqJvBrIWbXge1Tp8EnW2d+ULcZ0z5U+bnHkg5YW0dC9RuOFtOOHCefMb4DKbozhmUjJeBEQOndSsFogV1wwFGSbEdf7dkwaeZ9OkOfPXxipPfj8R9/eD7j+2qf7XYHc/S5B4SBSsICfKz2v0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKVFwKXlWUrF5Ck94D7FPOjj/fb5laoRguj3kJGfdD4=;
 b=krGTV5xboV1IID3z4/HJxbF5TkV4mI+2EviXXty/5x7FOMDSrMZzNbg9stra7iGxoHXtW82sVyNvz4AAA7kmXnpFF0B1sz0atuT/kX4LDnLTs8u1LtHj0GHRPIbtyLIlcBXpo++/q+pizatAW38AEHQXDjCQdZNHQXC6SO4YHeeXEzV8H9ZhAxT6Wu8V7mzqpHrFqPFY2qHFMo3LiecdwwvG6yD0sdKj9+QEaEWuDS279210XOPuMa9TPLrJvKkVhtlowabcXSGixyHoFR89fIdhx+5HoO9RaEtBC010uVF8NEvtnPKQ8RTiLL51ovuqKWQMksDSLs5B0NMrEnir1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Tue, 25 Jan
 2022 23:21:49 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4909.019; Tue, 25 Jan 2022
 23:21:49 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYETmp9+X6wYnn706LtIZjKCkkyaxy5/SAgACwfgCAAMmvgA==
Date: Tue, 25 Jan 2022 23:21:49 +0000
Message-ID: <ae8aeee37c90595fe8f2a1c3f289288964c11e1b.camel@intel.com>
References: <20220124154553.29782-1-mateusz.palczewski@intel.com>
 <028c789af62a63fbb64d96706ca0e36a57cbec39.camel@intel.com>
 <BL1PR11MB5288FC5E9F7779E972A1A43A875F9@BL1PR11MB5288.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5288FC5E9F7779E972A1A43A875F9@BL1PR11MB5288.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e32b618b-3ead-46d0-e662-08d9e0597695
x-ms-traffictypediagnostic: CO6PR11MB5603:EE_
x-microsoft-antispam-prvs: <CO6PR11MB560308C3C2C38B92DE78A75DC65F9@CO6PR11MB5603.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9BdpKHPA7X5ulq6JfnoqHdxYCrZmH6j8y6+wiI95L/9pViy6FN1ZsFsOLwCwdXV0LzZpEU6BCISZdMjsASs5208uAdIWiYWscIn91XKiN+eFJPN9eWENhpsptDvnbzUZuLDCvJm28VUPmVwlCkn6TkrZjPwnghDg2wwSpQDLLCSOPKQyCvtIj0x+Md1SGeKcXCnIR/fcvD3n5vXXWDBgIEhJAtcVSgt5alvl4xWgG4iOEZth3L8Mw8epDUDUOfAKH5GaIC0yGjaNYYkMU/6HGTQ3nrjkGTS/fZ0gOLS7+DytQQl9cflwOEe0FpHOB+/Ap47qDYB2AV/BOiw9X8SJ+nOE/ERfdzjJ2kIln1euIEQkqWrngL7/CoNYioMEDLxi/qObRibBTiklylGW52b7w2lLcAm6yHDJV4TiZoDRrvXTIQogS0e1QJ+hvC6h8O0Ugq2ZTWMMJ6JP8fOccsdl5X+bpSBi1sTq4diFHwiNaygNNZywE6ZpiWDL7A2pm5gaIouCtbqvpInVCDZYgHPt9jE9OVSvMJLH/sgH++D8uqsRRPCsm3E5qnd9wJ+zqmc1kB+mrATSSZoV8Lx7EgsxBfVRnGg7ZNB27nMhAAFnqWvv0mzCICh8RVAhxdDmwxsbr9YMYIxafYc5o5y775PlF94I51jRZ9nmMciJIckiH0bJ+D4I16bR6rcL1GQX9MMlgyVdrrlIoTxuqpfw5naC8RcYGx//ikeSYFHeLBsLeA1PLIYeZsqETzK0lnT6ApjpGg/tPfddwU8SwDQeT38RjLgSU6zyZxY/B7ByXbzspwIDnady1hkK7ya2aa5jaBqWtu3qDCdneU2KYTwXGNoK+P/x0iovVBjCvU1FGGeXgPQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(6512007)(38070700005)(71200400001)(316002)(110136005)(86362001)(966005)(6486002)(122000001)(508600001)(83380400001)(66556008)(66946007)(26005)(2616005)(186003)(82960400001)(38100700002)(107886003)(36756003)(8936002)(5660300002)(4326008)(2906002)(76116006)(91956017)(66446008)(8676002)(64756008)(66476007)(69900200002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFdtcEdvT09xaHd2UHhiRG81WFV6ZUlDWnJGR1Rneis5T002azMwczZOMTdD?=
 =?utf-8?B?Uk13WE1RUkZYWWxxZ1lLZzlQNHovVVJBTXNPNHY4MTg5cmsydTl2RGhNdHFK?=
 =?utf-8?B?NVBqK1JIS1d5SU1ObzVveFVQaTBDd0V5VGx3TEFlUEVYY3pqVnA0dFJuUXVh?=
 =?utf-8?B?Tkh3TkZOMUljeXBDcGJCeURvY0Y4L0JzdlRVV1VxREU2cDNBTDBBWDh5aytS?=
 =?utf-8?B?RlJnVlNZQlkzNnZ5TDBydTI2M210by9jRDVRckl6aDNPNTBOeHhkUWcvT2Ji?=
 =?utf-8?B?ZmdMbHpxdVhRMTNKMDdzRTBtTEt3MnRMNDlRUFA1YmtDaDdVOG15SlExYUJE?=
 =?utf-8?B?VXR4c21BbkRhamJNQ1djemFjY2hUbGxQYmVoZTBOOWxWZ0srT2psT1JlOG0z?=
 =?utf-8?B?UnJXRU5JdTM3ODA3N0dudm5JdGJTNnZreWN4cE1oVDRXSmlVT3E5NmxwVUNq?=
 =?utf-8?B?cXFmVWdHblAvVTBxSlBxUWt6eFRTbUdKQTcwZ295VFRoOFhRSGVPWkU5Y1RP?=
 =?utf-8?B?djgvNzJIM29HdFk1cTRBUzJzMjNvc1pTM0x1NlZ4ZnQyaHJaS0Mwc1VMRXhK?=
 =?utf-8?B?eFRIVk1QcHRQS2FkRG8wZStYQW1reCtKNXU3QmRWQ01neCsrRHJFZHFVbWg2?=
 =?utf-8?B?ZUNYMUNKU2p2R3U3a0NHdFRXTXhGQklJZU1sK2dTb0ZKWG1QQURKOXBtTjZN?=
 =?utf-8?B?NnVrQUZvNHlRS29TSWZuQUx0WXNhLzkrM1JqR2FDMm5ua2tyWVA3TkhFV2tw?=
 =?utf-8?B?dW9ucjNlZTRiQ0lCbmE4VThBM3hULzhzWXc5QjVnNUJuUFVWNjZad21XRVln?=
 =?utf-8?B?Y0o5SmxXQ3o2Y3FOQVVyTjJMYVErbitUbUoyUHhMUzRXUGkyQ2dvYUlZOUta?=
 =?utf-8?B?TzNYUEcxMHJsTmNNM2pvZGNwUVpSdDJUV2RDWDNJM2Q3WHFheUpNbUZPenhM?=
 =?utf-8?B?WjlQYnluWXBYQnNoaEJ6eXBLbEM2QlhxQ1JtajhESGRXU3JuY2pGOFVCYjFk?=
 =?utf-8?B?K0ZhMlRuK3pETnlud3lhTUFoTklDVUhzWVp4QnpyR2ZOZG81RXBSOVRPZGx3?=
 =?utf-8?B?ajhNWUlPMW4wMUdmWVBEak1xSlB0ZkxUTXczVGxqWU5BYmJ5T0VrSklGSUhv?=
 =?utf-8?B?T2dvajAzMjhzakVvbkFJbGxpdkNWYjR2T2FmN2lEQmY3SjQ2MUVNQlhTQ0RH?=
 =?utf-8?B?NHRMdkl3N3pteTA2K2NFWXRaZEs3a0lKMWVVVVc5M0VSWGZoREd4L2pFRFVv?=
 =?utf-8?B?SmcrYnFkZnFSZDlqSW1yUUdmcEtldmNucS9qTGdUSkxIR0c4cHdENXlsT0J1?=
 =?utf-8?B?VnRoZDFHbk9OcWhCVUc5MGRGNzhBLzZsV1k1WEJHLzN1RnhUTUt1b2U4SjJS?=
 =?utf-8?B?TjhFYmUrMDI5OGdhcXZPODc4ekljZ093ak9Ld1FzMDM0UEZBWHBQMEYyYncr?=
 =?utf-8?B?WndSMVVVT3JTOWovUlVHeXFBZFBBczhjNm12Q29MS24reFpja0RzVFYxNVFo?=
 =?utf-8?B?VEJ1dFJOdHJrWGtTcmUzeTBISWFsckFDYUhsSTJrZjRuTDFKSGJmNno5QVo1?=
 =?utf-8?B?VHgwOVYvWFNDaDlMNkRlOTExSU9DQWhML29mZTVvZ2F4NS9Nb0MycmNTdmRL?=
 =?utf-8?B?TjFKSGdmcCtuNWR6bDkxSlpmYWkvUzlWL2pZcko2cm5ROGlTVEVIZWY2UmEv?=
 =?utf-8?B?RUF5RGVuNThGSlRGaFJUZWMwTUVKZ1kxTUxqYnJ0YnYxNDB2QU1Zekl2SGxo?=
 =?utf-8?B?bHRZZVl3S2VMZ1JYV3p2bzNPRVp5TWZGQ2JwWVIzWFcxNmFrUFN3eTlPbm01?=
 =?utf-8?B?eEdiUzZibnBTN2VXTG42ZnRkM0pUV2VoamhuZDdvcnptVmFwVVZZbXFYb041?=
 =?utf-8?B?U3hyOU5KSnBJWUxTRnZ2WDBmL3RhOEtzSTI2bTI4WUJnakJpK3FlZytIMnJN?=
 =?utf-8?B?OHdoMk9aaFYwUlhwWVBIWEJpQ3I4YWsvZkE5dWZJeTE4RXE1bUpRZlZQM1Bw?=
 =?utf-8?B?U2J6V250TlJ5clFmS0ZLa205WEdrKzhZYlB1TGppai9LcmNrejBLcGU4T3dn?=
 =?utf-8?B?K0hUWWF0U2NES2NYekRuS2ZvZnlmaFROT0Y2bWZjd2d6bGZweGZJcmtDVDFS?=
 =?utf-8?B?R0ZWNW1yeEpKTlRMTlNQeU5ENGZ2aXBucjhwN1ZQcmtkNEVyZmI0NXd6dE83?=
 =?utf-8?B?OXB3S2ZlTkVsdVdlekZrY0xuMnlZdnF0L25sdzhrcVNRTktuejBzQTMvdksy?=
 =?utf-8?Q?ACIoMvZtFXqxVnNhRaQkr1dMmlEdyYzBcHGdp0jgVs=3D?=
Content-ID: <C7C9D18341B6444A9948372A7C3C68BB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e32b618b-3ead-46d0-e662-08d9e0597695
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 23:21:49.5101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KxXO3bDBWxDarZpVkWFl0U5eVl0KJ0cm1f3gxFRMGis4Hagf5dPUsWLpmvkhWUONyX5YJgvp3Z9E+l1OKfQWr4LztrHSQEdjDCWNCl4KnKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
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
Cc: "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2022-01-25 at 11:19 +0000, Palczewski, Mateusz wrote:
> > On Mon, 2022-01-24 at 16:45 +0100, Mateusz Palczewski wrote:
> > > Make iavf_set_mac synchronous by waiting for a response from a
> > > PF. 
> > > Without this iavf_set_mac is always returning success even though
> > > set_mac can be rejected by a PF.
> > > This ensures that when set_mac exits netdev MAC is updated.
> > > This is needed for sending ARPs with correct MAC after changing
> > > VF's 
> > > MAC. This is also needed by bonding module.
> > 
> > This sounds very much like this patch [1] or is this resolving a
> > different issue?
> Hi, 
> this is resolving a different issue that is being currently tracked
> on bugzilla:
> https://bugzilla.redhat.com/show_bug.cgi?id=1938635

Thanks for providing that info. I do have some feedback on the patch,
I'll reply to the original so that I can make them inline.

Thanks,
Tony

> > 
> > > Signed-off-by: Sylwester Dziedziuch
> > > <sylwesterx.dziedziuch@intel.com>
> > > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > > ---
> > 
> > [1]
> > https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/
> > ?
> > id=c5c922b3e09b6e5eeb9cd2b1122f3e49c0bf2283
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
