Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C7849BFA3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 00:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E76C260B68;
	Tue, 25 Jan 2022 23:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txQQ9UHcMsui; Tue, 25 Jan 2022 23:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B97860B36;
	Tue, 25 Jan 2022 23:36:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 944921BF593
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 23:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80AC860B36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 23:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fAirrD65qry5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jan 2022 23:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4DA5560B03
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jan 2022 23:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643153801; x=1674689801;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=dqW4/KQm8A62KfXXZEndRJkf2PWP4AQUiYgw1LrdQ7U=;
 b=NXshBX7Jhw8jsj/b/MOQ89w1a1Ryx1g9i7XQVLrFeTkupOWp75moT0kG
 +KGVnzSEfqQvCnCE8glTBjYzPcPeaBjruu6lHDFy+hOmetknGcdXgtHu5
 km8nHLTumN3e83LKuL5jutJy2EX40wZnIoMWHXLaj/LHMtD4IPQYygCDZ
 iAlnlGxh6cPZYn17JrXMkGZeEyc30BRDx0Y2NhjvmevnEMMuuo4X6NliN
 UcRPGrVBPoZI6TzdAsqk2IeQryoDWe/4QUVJlBiB7/9Zb7tDrtJy7suS3
 1BNnRjbwGZxSnS5xncZukk8FIQX4xxhs3inqpPQUQz3mvFtgs8pirOlZ9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="233812524"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="233812524"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 15:36:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="617789418"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2022 15:36:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 25 Jan 2022 15:36:39 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 25 Jan 2022 15:36:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 25 Jan 2022 15:36:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 25 Jan 2022 15:36:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JTSKsYuJqXYs1/TyMBi0dlK+ZcaY7xVIe7FoAr9akE7Y3ie9b4/4bxjtj7mCMLzpEqMRNwteBbeBNdmDFgPd+yZbpMC1dFENgxFvZYVWGysNA5Bkf8WZMikOSnn5YWlIJu5B3OE8F3ThLgVym2J/dSeVNDyCwt9HVHjlrseX/UPzgw0nvWxw+6DdRnXM5qh5ahej4HQVXje3BmmO1dxV7Ztdx+kVxbokxUljmglVK1s1ziO9J2WDmEK6CRX/s3vhtM0PQrWEz8iPeuThxYlMeNexEhWVX6duuTOwaqtP2Fgf0E+09HncPSc08b+dL5XwjWBqkHD5COl+JsLbetr3zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqW4/KQm8A62KfXXZEndRJkf2PWP4AQUiYgw1LrdQ7U=;
 b=D7mFNC/dmSqXtxWfJLJ7Wol4OSsg3cQVxJ0U6zk5zsJIl0QI24k/HyH8b53JVHhBppDOZOvrn5kOF2L3OZw1J/HeLZQBfzf7fikr38UVJNo6zVWz26vr5lKaGbJjwgZ7vgFpxMKgOyrWglYjDOagv/WNVu2afzQUiVJrdV63g6LE1pN+pOp4mpAYWwoFxvihSF+RxRFonVFm7EaKy1kW64jIVHFagAgwkUeh8brUtwsMCNlBvPdeU54JbrWoHfCJA1gD2RdLg6X0LFTJeknQxP5vcGbXRpcHflPlARlhsKfgOgFXBzc14bETPDimIJUmoKP4O4wccJbR3zJgC/LtFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN6PR11MB1473.namprd11.prod.outlook.com (2603:10b6:405:a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Tue, 25 Jan
 2022 23:36:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bded:8c4b:271e:7c1%5]) with mapi id 15.20.4909.019; Tue, 25 Jan 2022
 23:36:36 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYETmp9+X6wYnn706LtIZjKCkkyax0ZkIA
Date: Tue, 25 Jan 2022 23:36:36 +0000
Message-ID: <eb3f148f9100496b07046d485eaa7080a9086043.camel@intel.com>
References: <20220124154553.29782-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220124154553.29782-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b5c724d-8b26-46c3-4218-08d9e05b8765
x-ms-traffictypediagnostic: BN6PR11MB1473:EE_
x-microsoft-antispam-prvs: <BN6PR11MB147393498C276B0322D23C7EC65F9@BN6PR11MB1473.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CnxTGAEeHMYUTQ+4vhnMjZKmXr6MHXcc+y1HDLrCBQcMTwoie2nPGR/eLbA/CU4eTTziJ9BEM1nSxwNrTNEPYBNA1r+OTmv702C3rexewxgoMeYizcgbeXGci+qfGIsf/g7C7+7Uo6eKDlVSm2NbAzSkZ0xTtMqkU0bFB2hX+gsFEanWMydOv37TTLeEFxsYQBXpc8XBCOYC0dctDvGrf3uc0wvdN+DP5DUIqBpX23RMcMp2IajVF25KkicQGGMJOiABsEB0BJwgSUnK7wYkL3IU+chPSQJirtFhiIuE/qD9W6Q2smRTsVa2KwXE3DkVDG2APWSXIO6FLQyvXJT7pmM4CXHFF8HiVg4UZOIxy0b+s6rc0eYoa79AQtvNGs23OH40VBEXoxf37b5immdFbbUFMKigNKIk/bDHGX61HBnSo72TKUgiUvzffthDphg5ARtVTFqQPRtLZx0++eDAaxOFOSWnyP1Vk1ZJT6SjEGTKWchac0I+RmaYVwtoPTbZqDyxb4p6UwLUZAvr9GyPX4brItBUFl0UEdNfidNlRKk8a8s6pxbKDRnrXtGkQoQXifJb6ewj2vE0eYrrQlZxgju/gEovvFN71/d5Tp4a5BRO/qO2O/uhlXNmbNId6RFf6ljQ0d6frVvMlZ5XOYqjk1v6No48zLGln6hjVmdSENiPZhAPLxy+Zm7LOhXm3uBrK4KhYFK4bsCgI4b7hF3Q7LT6phnYOS+I6dJObSjVXqWHomv/4f8JQZr/rL7X6YE0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(8936002)(86362001)(82960400001)(8676002)(38070700005)(5660300002)(122000001)(38100700002)(76116006)(2906002)(110136005)(66446008)(26005)(508600001)(91956017)(6512007)(64756008)(6506007)(36756003)(6486002)(316002)(2616005)(71200400001)(66946007)(66476007)(66556008)(186003)(69900200002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azNUbzdpOEZZUSthcnVkQ2M3SUdlcGs3MlM3Rnc4RGcweFRHbVcyYy9NQ0xS?=
 =?utf-8?B?WFNPdVlaUVJWM2ltdkMxKzhDRzFIZGJzY3BkQUViTVJpZzh6Y3dIZHV3YlJm?=
 =?utf-8?B?SWNyREpBVUd1RUF2Mi9jTnlvelZaUDRZQnlaYTJ3WFUzcXplWVRCV0ZMWENa?=
 =?utf-8?B?QmJ6WXg4a1NvQzZCd0pCcERhTy9YbldFOTdhRjlVcXdCLy9jRFdyQUxadDBU?=
 =?utf-8?B?WEdGcnJoV01JRCt3WktPWDNxU0lMVCtNaUQvZEhRNmdtWktMQzJBWVNNbWgx?=
 =?utf-8?B?ejRuWDU5NG9kY1BwMXNCU1loVWllamVQL0ZnNHZERnZyWGRpOGtQeVAwUis4?=
 =?utf-8?B?Z1dUM1UrZkhIRG5vUzFpUmVDc1g4N3gxNnRCR1psckpPeGlqWHFrVmZ1RHJv?=
 =?utf-8?B?MWZ2SXNJRkMrOVI5aHVMVjlVdnlFYlNJQy9GbnkvRmJqelRiMkk3UU5rUG5w?=
 =?utf-8?B?YXBFcXN4K1IxcDVIV3hHUHlaekdGak9HT0hha1JwaHUxQ3VTTmNmOFhGdlk3?=
 =?utf-8?B?RWtDUUFjc2lvbkM2Rytrbml3NkNYR3ZhUWEvYW9WZTN5RENrQ29zVFFCSUda?=
 =?utf-8?B?bFdjRUpXbWFuTU8zVlNjNjA4S0hKQTVxckNGQnFJT3g0MmxoZnpYUXk5THdz?=
 =?utf-8?B?WEFuMWxuN2NjaCt2SlpRdEpNOE4xU1QrdGJVV2ZGSkJZMVBZK2V1b3lLbnNa?=
 =?utf-8?B?UXIrbExIV01zVXg2WmVWZE9EeEVhbUVLc0hkOFdGQXZOdDNoUFFJZVNXTUVh?=
 =?utf-8?B?Q1pCck1CWDRSUU55aUdIcTRVSmF2K3BOMUVpNm4vVU5IdFp6YkNqLzBQZGdt?=
 =?utf-8?B?TWpsdURQNmdIYVNVc08vZGpPTVJCWDFINmJRVGpjMXNDZVUyeXVrQWYzQ3ZC?=
 =?utf-8?B?M203SmRxT0w1VVJQa1VtcEpzS2M4TFJuaWRxcUo0OTlGL1UvTGtwS0JUSjRo?=
 =?utf-8?B?K0M0NHpTUUhxclk4bE83RVFaVy9IVlFnTUxiaHpDbVFGT1pwMk1jN3V1TjhN?=
 =?utf-8?B?QTg0OXdkUm16QjA2YkVMZ1JRTkt2TkZNUVlNclNkUEZVYXJQWjdoV2RkM2Jx?=
 =?utf-8?B?eWErVUxOVjhSYlhIWlJEVkVRMUVVUzZvdU92ZlR4cXdERHgxRDRTak1PZmk1?=
 =?utf-8?B?ckdTaDV4Rk1ucWZ4OHU2QnNSaWZmaURDVjhMUUdQclpDQko4TU9raGZvSDly?=
 =?utf-8?B?NHdtdXBsY1VRRmVnbzNtUnJ6ekg0ek1iUU1JKytWcWZsOE4rQzBJSm0vVi9s?=
 =?utf-8?B?L2pyNVgvbitJdEl6QlNlWHUvQlVxaVFJNDRjZDRXUE45OTN2S0VsbGdiMTN3?=
 =?utf-8?B?WWdxN1BKOFdQWWlvdEdIMHIwQXNKQkluMGlKU2ZOVkV1ZVFBWXd1ckFUVkRX?=
 =?utf-8?B?TVdTL0tDWGFHMU1iZVdyRXJXM295YWhPdU4xVXlCc016UTFPL0p0cVFFaElu?=
 =?utf-8?B?bHdNTEM0dnRsUGcrVkhycExkRHRESFhJREZlcnBDM29kWlpCa1Q3S0FxV1ZL?=
 =?utf-8?B?a24reXB2RWUwNFZJZGlOdDFRRzBiU1plUVV3dzY4a0ZhdlBROTREZ2Rzcjlx?=
 =?utf-8?B?VVMrNTM4MkJVb2lqQTg5anhLMG04TjdlWjg1UVdOSjRCUi84dU83M3lWOVZD?=
 =?utf-8?B?YlU1S1ZyTkhOY0hSWjhLQkZQSU1XT2hkKzN6NXR4cmJwdnJiS2hIQXY4Vlhk?=
 =?utf-8?B?bjhZcm1FZG4xbnoxUldNOEVhSVNsZU4rcVowc0lFYnhNR1ljNU9sTEtQRllt?=
 =?utf-8?B?VTVVemJXVTFFcmJYbkpvYWdoNmdaZHZmYVB4SGhvdzlwQVhzbGRRQXR6OWRB?=
 =?utf-8?B?UzFJWFBaOWVEVVN4bTNNbllWNkxqRzlyNkpMbXhVK2pPMG44MlJEM1R0cDNm?=
 =?utf-8?B?OVVyNW5Zd1ZGcEZGK3FPRFlyZ1NidVFyVkVkQnVYRDhCeDZwelBQbnRDTkZH?=
 =?utf-8?B?OTZBcThoYmdON0JPVUJNdlZjV1oxNHlicVM4TWpaenA0YnZWbExIQ2I2dFZt?=
 =?utf-8?B?RUhqaWQ0US9SL0VWdkdhMllOL1cxWjlDVXpvN0E4S091RzNaZmxXODVaRk1T?=
 =?utf-8?B?MkpmZTZFY3FZTitQTEZ6TndYZzA1V2NoWGx2RTFUbThHSStvOWdRYWE5Q3hr?=
 =?utf-8?B?cjZqL0NGcEp2Zkd1dnNtNXFkc2hoR1JVeVVuZGhVVHlXV2syUStEZ1ZVRGxN?=
 =?utf-8?B?OVFZVjBZdmlOdW9HV2NDWmw3ckJwNW5zVHVuQTNGcityaUdKV3ZVOWpZdkc1?=
 =?utf-8?Q?rdIMI/RxDvL5Pc6ZLgjsQIR5DZmUifi5z6aQklUBss=3D?=
Content-ID: <546944BB3ADC8D4482D8EC5E4C44BA24@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b5c724d-8b26-46c3-4218-08d9e05b8765
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2022 23:36:36.6748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: opCmAyQM5Z9zPB7kXIlT0ituvQnnzoI4BZoILbU77k7mUvXyRtwoEF1tnWIMejNog5xiFmvRlxgHcTjY4MHXLg0LbcDvBiegvo/5b/yWqDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1473
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyMDIyLTAxLTI0IGF0IDE2OjQ1ICswMTAwLCBNYXRldXN6IFBhbGN6ZXdza2kgd3Jv
dGU6Cj4gCjxzbmlwPgoKPiArZW51bSBpYXZmX2NyaXRpY2FsX3NlY3Rpb25fdCB7Cj4gK8KgwqDC
oMKgwqDCoMKgX19JQVZGX0lOX0NSSVRJQ0FMX1RBU0vCoMKgwqDCoMKgwqDCoMKgwqAvKiBjYW5u
b3QgYmUgaW50ZXJydXB0ZWQgKi8KPiArfTsKClRoaXMgd2FzIHJlbW92ZWQgYnkgbWFpbnRhaW5l
ciByZXF1ZXN0LiBQbGVhc2UgZG9uJ3QgcmUtYWRkIGl0LiBVc2UgdGhlCmNyaXRfbG9jay4KCj4g
wqAjZGVmaW5lIElBVkZfQ0xPVURfRklFTERfT01BQ8KgwqDCoMKgwqDCoMKgwqDCoMKgMHgwMQo+
IMKgI2RlZmluZSBJQVZGX0NMT1VEX0ZJRUxEX0lNQUPCoMKgwqDCoMKgwqDCoMKgwqDCoDB4MDIK
PiDCoCNkZWZpbmUgSUFWRl9DTE9VRF9GSUVMRF9JVkxBTsKgMHgwNAo+IEBAIC0yNDAsNiArMjQ1
LDcgQEAgc3RydWN0IGlhdmZfYWRhcHRlciB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCB3b3Jr
X3N0cnVjdCBhZG1pbnFfdGFzazsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRlbGF5ZWRfd29y
ayBjbGllbnRfdGFzazsKPiDCoMKgwqDCoMKgwqDCoMKgd2FpdF9xdWV1ZV9oZWFkX3QgZG93bl93
YWl0cXVldWU7Cj4gK8KgwqDCoMKgwqDCoMKgd2FpdF9xdWV1ZV9oZWFkX3QgdmNfd2FpdHF1ZXVl
Owo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaWF2Zl9xX3ZlY3RvciAqcV92ZWN0b3JzOwo+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgbGlzdF9oZWFkIHZsYW5fZmlsdGVyX2xpc3Q7Cj4gwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBsaXN0X2hlYWQgbWFjX2ZpbHRlcl9saXN0Owo+IEBAIC0yODMsNiAr
Mjg5LDcgQEAgc3RydWN0IGlhdmZfYWRhcHRlciB7Cj4gwqAjZGVmaW5lIElBVkZfRkxBR19MRUdB
Q1lfUljCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgQklUKDE1KQo+IMKg
I2RlZmluZSBJQVZGX0ZMQUdfUkVJTklUX0lUUl9ORUVERUTCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBCSVQoMTYpCj4gwqAjZGVmaW5lIElBVkZfRkxBR19RVUVVRVNfRElTQUJMRUTCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgQklUKDE3KQo+ICsjZGVmaW5lIElBVkZfRkxBR19JTklUSUFMX01B
Q19TRVTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgQklUKDIzKQo+IMKgLyogZHVwbGljYXRl
cyBmb3IgY29tbW9uIGNvZGUgKi8KPiDCoCNkZWZpbmUgSUFWRl9GTEFHX0RDQl9FTkFCTEVEwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgMAo+IMKgwqDCoMKgwqDCoMKgwqAvKiBm
bGFncyBmb3IgYWRtaW4gcXVldWUgc2VydmljZSB0YXNrICovCj4gQEAgLTU1MCw2ICs1NTcsOCBA
QCB2b2lkIGlhdmZfZW5hYmxlX3ZsYW5fc3RyaXBwaW5nX3YyKHN0cnVjdAo+IGlhdmZfYWRhcHRl
ciAqYWRhcHRlciwgdTE2IHRwaWQpOwo+IMKgdm9pZCBpYXZmX2Rpc2FibGVfdmxhbl9zdHJpcHBp
bmdfdjIoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlciwKPiB1MTYgdHBpZCk7Cj4gwqB2b2lk
IGlhdmZfZW5hYmxlX3ZsYW5faW5zZXJ0aW9uX3YyKHN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFkYXB0
ZXIsIHUxNgo+IHRwaWQpOwo+IMKgdm9pZCBpYXZmX2Rpc2FibGVfdmxhbl9pbnNlcnRpb25fdjIo
c3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlciwKPiB1MTYgdHBpZCk7Cj4gK2ludCBpYXZmX3Jl
cGxhY2VfcHJpbWFyeV9tYWMoc3RydWN0IGlhdmZfYWRhcHRlciAqYWRhcHRlciwKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHU4
ICpuZXdfbWFjKTsKPiDCoHZvaWQKPiDCoGlhdmZfc2V0X3ZsYW5fb2ZmbG9hZF9mZWF0dXJlcyhz
dHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXZfZmVhdHVyZXNfdCBwcmV2
X2ZlYXR1cmVzLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZm
L2lhdmZfbWFpbi5jCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFp
bi5jCj4gaW5kZXggYTRjMTJhMy4uYzgxNmVjYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYwo+IEBAIC04NzMsNiArODczLDcgQEAgc3RydWN0IGlh
dmZfbWFjX2ZpbHRlciAqaWF2Zl9hZGRfZmlsdGVyKHN0cnVjdAo+IGlhdmZfYWRhcHRlciAqYWRh
cHRlciwKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGlzdF9hZGRfdGFp
bCgmZi0+bGlzdCwgJmFkYXB0ZXItPm1hY19maWx0ZXJfbGlzdCk7Cj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBmLT5hZGQgPSB0cnVlOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBmLT5hZGRfaGFuZGxlZCA9IGZhbHNlOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZi0+aXNfbmV3X21hYyA9IHRydWU7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBmLT5pc19wcmltYXJ5ID0gZmFsc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBhZGFwdGVyLT5hcV9yZXF1aXJlZCB8PSBJQVZGX0ZMQUdfQVFfQUREX01BQ19GSUxU
RVI7Cj4gQEAgLTg4NCw0NyArODg1LDEyOCBAQCBzdHJ1Y3QgaWF2Zl9tYWNfZmlsdGVyICppYXZm
X2FkZF9maWx0ZXIoc3RydWN0Cj4gaWF2Zl9hZGFwdGVyICphZGFwdGVyLAo+IMKgfQo+IMKgCj4g
wqAvKioKPiAtICogaWF2Zl9zZXRfbWFjIC0gTkRPIGNhbGxiYWNrIHRvIHNldCBwb3J0IG1hYyBh
ZGRyZXNzCj4gLSAqIEBuZXRkZXY6IG5ldHdvcmsgaW50ZXJmYWNlIGRldmljZSBzdHJ1Y3R1cmUK
PiAtICogQHA6IHBvaW50ZXIgdG8gYW4gYWRkcmVzcyBzdHJ1Y3R1cmUKPiArICogaWF2Zl9yZXBs
YWNlX3ByaW1hcnlfbWFjIC0gUmVwbGFjZSBjdXJyZW50IHByaW1hcnkgYWRkcmVzcwo+ICsgKiBA
YWRhcHRlcjogYm9hcmQgcHJpdmF0ZSBzdHJ1Y3R1cmUKPiArICogQG5ld19tYWM6IG5ldyBtYWMg
YWRkcmVzcyB0byBiZSBhcHBsaWVkCj4gwqAgKgo+IC0gKiBSZXR1cm5zIDAgb24gc3VjY2Vzcywg
bmVnYXRpdmUgb24gZmFpbHVyZQo+ICsgKiBSZXBsYWNlIGN1cnJlbnQgZGV2X2FkZHIgYW5kIHNl
bmQgcmVxdWVzdCB0byBQRiBmb3IgcmVtb3ZhbCBvZgo+IHByZXZpb3VzCj4gKyAqIHByaW1hcnkg
bWFjIGFkZHJlc3MgZmlsdGVyIGFuZCBhZGRpdGlvbiBvZiBuZXcgcHJpbWFyeSBtYWMKPiBmaWx0
ZXIuCj4gKyAqIFJldHVybiAwIGZvciBzdWNjZXNzLCAtRU5PTUVNIGZvciBmYWlsdXJlLgo+ICsg
Kgo+ICsgKiBEbyBub3QgY2FsbCB0aGlzIHdpdGggbWFjX3ZsYW5fbGlzdF9sb2NrIQo+IMKgICoq
Lwo+IC1zdGF0aWMgaW50IGlhdmZfc2V0X21hYyhzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2LCB2
b2lkICpwKQo+ICtpbnQgaWF2Zl9yZXBsYWNlX3ByaW1hcnlfbWFjKHN0cnVjdCBpYXZmX2FkYXB0
ZXIgKmFkYXB0ZXIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjb25zdCB1OCAqbmV3X21hYykKPiDCoHsKPiAtwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgaWF2Zl9hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYobmV0ZGV2KTsKPiDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGlhdmZfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Owo+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgaWF2Zl9tYWNfZmlsdGVyICpmOwo+IC3CoMKgwqDCoMKgwqDCoHN0cnVj
dCBzb2NrYWRkciAqYWRkciA9IHA7Cj4gLQo+IC3CoMKgwqDCoMKgwqDCoGlmICghaXNfdmFsaWRf
ZXRoZXJfYWRkcihhZGRyLT5zYV9kYXRhKSkKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIC1FQUREUk5PVEFWQUlMOwo+IC0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoZXRoZXJf
YWRkcl9lcXVhbChuZXRkZXYtPmRldl9hZGRyLCBhZGRyLT5zYV9kYXRhKSkKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgc3Bp
bl9sb2NrX2JoKCZhZGFwdGVyLT5tYWNfdmxhbl9saXN0X2xvY2spOwo+IMKgCj4gK8KgwqDCoMKg
wqDCoMKgbGlzdF9mb3JfZWFjaF9lbnRyeShmLCAmYWRhcHRlci0+bWFjX2ZpbHRlcl9saXN0LCBs
aXN0KSB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGYtPmlzX3ByaW1hcnkgPSBm
YWxzZTsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqBmID0gaWF2Zl9m
aW5kX2ZpbHRlcihhZGFwdGVyLCBody0+bWFjLmFkZHIpOwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAo
Zikgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZi0+cmVtb3ZlID0gdHJ1ZTsK
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZi0+aXNfcHJpbWFyeSA9IHRydWU7Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGFwdGVyLT5hcV9yZXF1aXJlZCB8PSBJ
QVZGX0ZMQUdfQVFfREVMX01BQ19GSUxURVI7Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
