Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A0364BFCB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Dec 2022 23:58:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ED04415FA;
	Tue, 13 Dec 2022 22:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6ED04415FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670972316;
	bh=sPS7zv7+1YjKOMkPx1QxenMHZc0CZtP4+lLPupJV6f8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oelcqTE2ZcKRB6d535q1mw6JyzFap6amQUye3CHTFAEIM6JN0NLnrTE9TrC+BnTCF
	 F22ut4Ojq7ubDu5TlSTvd1xVTKtoaNYj8oWQpsLdbMOB3QH8873Si9qjKmV7B7m+NZ
	 LG5k9MRjCRzBvRwwIaGFh9sXNavC4Ygb+MJwv4XezD4jWw6BQlD53KtI0M+hWAQtq6
	 uUPQS1rTWXJNDbVL3qesC+wAaqT3oaqWa3fU4nWwQBXKywwFRLNK9VSQraMVfWrSSm
	 ThUQ6w1865oHjoIqFXYKdemLYGbP+qgA+u9DaBS8TKBVX0dYaAemUx6OKEpRbYYtjZ
	 QgNIicZq+vCLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pyr0PpmkKTEa; Tue, 13 Dec 2022 22:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18C4D40298;
	Tue, 13 Dec 2022 22:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18C4D40298
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8641BF405
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81A5F81EBE
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81A5F81EBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Imy2Mu5B3oyR for <intel-wired-lan@osuosl.org>;
 Tue, 13 Dec 2022 22:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E66681E0D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E66681E0D
 for <intel-wired-lan@osuosl.org>; Tue, 13 Dec 2022 22:58:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="315895035"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="315895035"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 14:58:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="823043986"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="823043986"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 13 Dec 2022 14:58:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 14:58:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 14:58:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 14:58:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 14:58:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BTCvZv6L4ONUAZoHITosi49Pl3WlLo5WSklneenK8k2yIZ16esexUznUrfHeqxBl68hB6TnqzhMhBhgPa7FoKSz8DQpYh3eweBCSErVaU9TLKdK/JLH8HYuD7fxFPi6hS7TZYGijPLoUHU+TOg/llmdkEKuwlDR3yHLiikbgBVHFi7p6jJIX4wGG9ODOk9kwOmxv7K4C3lsOAP0xKWeVRUyYQXcAOiG/zDxoV8wD+Mm2rx3d0/8VLRRL5MKPAYMtPdU10GZc7u5ez1LbAi6/ThIjSvtUKJZm+H0x0BbD199oweSv1PnwNuiPhP/rAru7iw02ufusyYYLjHWcI7KmoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IO+P3AFXibfXGGR7tvoxUfRBCjWjvyBNiic/7URj1dQ=;
 b=nxIppb/17oUkJclgoWHz+mmDLskP0eut8rqDNbMsnLWWWsivB7mXSOYWW5MSjIzRKbgghZWbTMg4SCzs5IXMNGGJ6FbHai/wda6Lof/HkLj+/1UslKp71H0plHTR2A0RfpkIaSjrTFdf9nLA7KVgZpxCkehXut1NlNvowf4Ia6ge5lZ1jxoODNy1Idkt96n9VIRXPzgz/rCrQcf6MJYDCgUTwNnB6DV+h+U55Db8EhMZwSXoQ/9JQQqIRv/2QxprkYX1Z3x6JyRDD6mMOs0eUWl/EUbm2tayRyApl7D3ULDDk+75pltkeG/H5yT5kCHdw0++IE233f05tesE5mJE+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 22:58:26 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331%5]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 22:58:26 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v1 1/3] igc: remove I226 Qbv BaseTime restriction
Thread-Index: AQHZDdMFH5WhHcIj3kWbVneJpgP9Xa5salOAgAAGqGA=
Date: Tue, 13 Dec 2022 22:58:25 +0000
Message-ID: <SJ1PR11MB6180EE0A6767C5B92202DBF6B8E39@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221212023706.13384-1-muhammad.husaini.zulkifli@intel.com>
 <20221212023706.13384-2-muhammad.husaini.zulkifli@intel.com>
 <93a298b3-1d3e-be69-ef35-217e3e767a55@intel.com>
In-Reply-To: <93a298b3-1d3e-be69-ef35-217e3e767a55@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: 4e7c1146-a6ac-48e2-15c2-08dadd5d8af8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OYDtltL/VaOFDi3jn/FNoRSxWZjMV7xKG6QjQPLPBei/UTVn4Dh8cwHFp5bdRJ2VVgrizqaZzKjZZN8zyHtjDSlbgap3venleaGkGpcy0318FqXTlxteU8NgYryefGThLawLZU0u1S338NmCrg6TyMrI9lD6ZG1oOoWnfsJCLAwF2qar4VMWzx8Uual3RcYkU8xmVnBcoBH5+rfaLH+4YwYsRCznbFqd/wAAN2pQlIvhnYs7h0cP/wJo1qmFNooMXgGFNkDv6yDF60epeYjXcYNc850vSWHh6k4UWGxF+Mbrh6gWiGgYk3S48BlhOByyPPlwAfMj63sIylq9UwHS1iDFB09cbWwivmxKT2YsUGk41nbv/Fh2T8WJTedxJtCGS8aG7tkjby3b775uFXc9/h3jE51iftZk6lkJUrRKUq07ZZ5Dg5RnCHw1P/AOPxEsW07h7nvQYm8TZawjPh5+cvaLdeh06jfHdJ+V1uS2CkJHQMpyUIZaVuHuf+z7qD8480iM4rvlmeq0WQO9BC/9TQsFmFLBGF08IABDQVUSWhFQMO1WJWVTbud8R9zV2Lf8ytc0z0+DZk+hSEyLKo0G1z46W1/jmp0r/dmY5adpkUquYRAJuECFvvGEkVAi6qY5nNMUl1+iKK5muVhgjsbYhFUUy7N85CdHtQaIArosrc+0gFooBOkR8ae/GeUjDnfHbhhQ7Xx1fkDUHyoP9U3xMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199015)(2906002)(82960400001)(38100700002)(55016003)(122000001)(53546011)(66476007)(5660300002)(86362001)(71200400001)(7696005)(6506007)(83380400001)(41300700001)(64756008)(4326008)(76116006)(66946007)(66556008)(8936002)(52536014)(38070700005)(186003)(8676002)(66446008)(316002)(26005)(54906003)(6636002)(110136005)(9686003)(478600001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekRCcUhqTUFOL3Z2K2I3eFpjOGFaU0xBOGt5M3AvbGVBWWc4NmFlR01HVVR1?=
 =?utf-8?B?Q2pBQlp5N2VldG1ldnQycitOU0MxWDRQMTlOWWVhdmJBdXJRVGllaExqRVNL?=
 =?utf-8?B?TGJHS1RubENSSTNZMjJTYjluSEh2RlEwTCt2VGVQZ1FoTXBQQUZtMzdLNllI?=
 =?utf-8?B?WDAveDBjRXpkWlhmdzlPUVFNeXpwSjB2UUZNMWFJa1JhYjYvZjFMV282eU93?=
 =?utf-8?B?anY3VWRqV0J1dVNZRVJ2QUNyS1NtTGlsVU1WdWNob2hYOGQ5NGRyWk5sNnlP?=
 =?utf-8?B?aWo2dTZ3Rnl6TXR5eUtNWW1HQVJHY3d3RC80ZUczam9VRHBnNGE1alFSZ2Zq?=
 =?utf-8?B?NEhOcEp4SjBHQzltMUdrcndndUVzZEZvazBYNXNmSHBiNFZTWExCR2Z3Q2ZK?=
 =?utf-8?B?SEVSYUk5d2pUYjc3Wjd5MGtGMlo4dWRaaWR4NGQ1ditLQkVxYjE3R0d2ZHo0?=
 =?utf-8?B?VmRtSmI3K2E3ZVp3cUEvOXhSL1VrejJ6d2V5Zmg3Y2p0ZnBKZnczaU4xbTRM?=
 =?utf-8?B?REl2UUUxeXVCQW9Bb0ZSRmtKMitoNStBeFlCVTlLbkVPcWN1SHM4Yy9iQmk1?=
 =?utf-8?B?bm1RZTV0ZHBOamsrZytidFdmTHE0RmdRcWFiR2xyTmRmR0NSSUZQZStxK0gy?=
 =?utf-8?B?QVVwVmpiU296dEhSd2UxR1NJdkgxaGRDN3M5dnNiSjhXRkxtZ3RJSUN1dTJX?=
 =?utf-8?B?bDdVN05JWldQZG5wMVd6VG8rUEFhTlVmMWdNb3ZCRk1OaENGSGxreU5rVFJ6?=
 =?utf-8?B?WVM4TG92NVIrQlNXek5iOXNaOVNsM1llRGJrd0NMMm8yZmNJRWJWM0JOY2Ex?=
 =?utf-8?B?U3NqakNkVVlUbEx1alg1RURveWxkQmJ0ZDkrMGh3aWVZMytlSnFaRzlYeWF4?=
 =?utf-8?B?amNpOEJWQjV1VW1ZWTNncHdtR29kUU9ubWl4c3ltaXVaN1JmVkcrRUthTTFp?=
 =?utf-8?B?VjJHb3g4QmdZNUE3VjBzWmFLdUdVRm00MmdGMmErdzhLWVdPU24vZ2o0UUJq?=
 =?utf-8?B?M2hERXFIRUtJK2NjbW1KdzFNOTFyVUpVU1dnS1ZyTjBQWEcvSGNqR0ZsRU5T?=
 =?utf-8?B?Q3M0cm1sZDVXeTdXd2Q0M05OTmNJeFNiRklvdDFlSWhrcHBEQjJGNzFwSzR4?=
 =?utf-8?B?RDJ5S094VmFoQk9yM24rQndmZVlFU0toL3ViMnd4UlY2dWJ4NXl2QWhzaWVZ?=
 =?utf-8?B?a2ZMRm52cWFsVTFiUGdJSDFoWmQ1a3R3RlJiblRpbFpBdkFNQnlFZk9oMmVE?=
 =?utf-8?B?U29BZzh3clNpNk8yNVdBVm9VYnUxL1RyS2ZFZEhBbzUyZ2lWMGtlOHJrMG5z?=
 =?utf-8?B?MnZYeFZ3VVJuQTg1YVJwQU1MWGZoVW93ZzJaNTFrTTYvUUdtMWp6UlRGeUtj?=
 =?utf-8?B?dTYyZkxTSUVrdlhQS3c4OGdSaFhxdFh0YW12NnVXWGs0K1JQQlpmbFFTRUpB?=
 =?utf-8?B?dms0Wi9jK2Q5YXNKOVpydlpRVXdVUEFtc0p2b0VURzZjRENiaVo2OEpWSHNm?=
 =?utf-8?B?NDhsTE9rY0wzOUFLTXlnaTBMT1FQRHdLclJwRU8raVB6bU5rUWUycVlIRUE1?=
 =?utf-8?B?citBT2lFMzlxZ2l5RW1HWnF6eWZrWGVkQ01mcXlVQVo2NjJSQkVIcWRsb1NU?=
 =?utf-8?B?T1JNeVFFZTVmRDlsbCtPOGE2QnJBcXdPTGtPemtyK3dKSXJkLy9Gd0Y0b0Jz?=
 =?utf-8?B?dmUvSE9BeDNUQ3o5dHVsK2dwOEw5aXdIai9MWkVoV0U5QUFacnAvS1dURjJh?=
 =?utf-8?B?SGp6TzdGR0taZWY2MVg1S0RhWmo2c3Y1N3g1b0RwZjFMNk1Gc2l3N29tYUZr?=
 =?utf-8?B?V3Fld05EcmlWRy9EQ2J6QnBMeUV0VmxMajlLeXhJQUdrdDFFRnIxNHVLdE9U?=
 =?utf-8?B?ZW1XZS9xcmt1bEl1eGpHT29UU3hubDV2aEZpN3VTdXJkYlo1b2hteUpTR3ZO?=
 =?utf-8?B?d0JPb3QvTmlwNnRiK2NwdGdpNFgrVUlnQStLcGc2MzNmUXlyRWFyeWhjcERT?=
 =?utf-8?B?eUpwc0xwVUdBZ1BVcWhwNVhyeXVMZDU4Q0l1OVRMVkhQT1RRNFVOZWtYUU1s?=
 =?utf-8?B?cU5TeXpPTUdOckFJTjBIejR4TjlkQi9ZZ21GaWFVMFQzclVjdU1CTThFaHlT?=
 =?utf-8?B?SjZBTjRkRTM0blBqNDJvTWlBOTNMUklhM0NWSjFuREl5UTBVcFJiSUdFUXh4?=
 =?utf-8?Q?Al6ZqDKPBepO5eXxpz+xNrA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e7c1146-a6ac-48e2-15c2-08dadd5d8af8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 22:58:25.9401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N4r5gzle/Mgmky66nZNgxQJ9Kx7gLHgp/foVlkFB5f+XQB134vi8e30u/8ff7CPDGjU7is3HcWOKzK3vbqAyiZdix9fLKnL6ZOi0z6TPaxNmFj6WqqN+4HPkN++UT0sX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670972309; x=1702508309;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IO+P3AFXibfXGGR7tvoxUfRBCjWjvyBNiic/7URj1dQ=;
 b=amrhqj8O5D0WS3imVT/K+eM0xQ4KRCptB9U6XEba6PQ7qcxyI9XLdXuA
 ghwsfBQKr4L2Wnj6Vr9I0/OYD6xeRrcRE4k1T4H75Aq1nsgcf8kbxQYE6
 F8h9lQ+3yomGhcndHy2G5OtBP3En4PXTvhe2mwri0Y/M8sNDL3y3SlJIq
 rV+ENpqZwXT+jZtCPyFELap9m7Gq2bJDU00701szzdyo3f5znpKe30BDM
 AicVpyCVo3c3qhh1GoABBiRpcnp1qKSkn2YlmdkbEHrAZoiP5HQSFkwp2
 tZR/iS4A/MKaQ+htuTTPlrRIH/cSz8j2mRKgWUrfmcAKKIQ/00Bh+jQxy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=amrhqj8O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/3] igc: remove I226 Qbv
 BaseTime restriction
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Anthony,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Wednesday, 14 December, 2022 6:34 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: tee.min.tan@linux.intel.com; naamax.meir@linux.intel.com
> Subject: Re: [PATCH net-next v1 1/3] igc: remove I226 Qbv BaseTime
> restriction
> 
> 
> 
> On 12/11/2022 6:37 PM, Muhammad Husaini Zulkifli wrote:
> > Remove the Qbv BaseTime restriction for I226 so that the BaseTime can
> > be scheduled to the future time. A new register bit of Tx Qav Control
> > (Bit-7: FutScdDis) was introduced to allow I226 scheduling future time
> > as Qbv BaseTime and not having the Tx hang timeout issue.
> >
> > Besides, according to datasheet section 7.5.2.9.3.3, FutScdDis bit has
> > to be configured first before the cycle time and base time.
> >
> > Indeed the FutScdDis bit is only active on re-configuration, thus we
> > have to set the BASET_L to zero and then only set it to the desired value.
> >
> > Please also note that the Qbv configuration flow is moved around based
> > on the Qbv programming guideline that is documented in the latest
> datasheet.
> >
> > Co-Developed-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> nit: WARNING: 'Co-developed-by:' is the preferred signature form

I think tee min prefer to use this signature.

> 
> > Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
