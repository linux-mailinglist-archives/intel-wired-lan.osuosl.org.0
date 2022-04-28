Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D3545513277
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 13:29:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68EE260E94;
	Thu, 28 Apr 2022 11:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54SxIqmAu2Mw; Thu, 28 Apr 2022 11:29:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3169060E2B;
	Thu, 28 Apr 2022 11:29:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABDAC1BF46A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 11:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AFB241B4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 11:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dyoaskZAb-MK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 11:29:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6451041B49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 11:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651145384; x=1682681384;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nSdP13Ce8F5qcOgmy+gnZZ6OyNyQUZvZ/4KSs1JxNLM=;
 b=OHv9hcF3fbv8N5hP8Nyb+CqKD4fQ6abLK0v7ma7xmIahCLCu6dJzmynI
 u3aMwB7Z1194T/lOmyucOjUGQ+ia7sCV+wmdbLHEu/kqk4/YsGyYMd8Fb
 OZhy5hlOO/XA4UgF23lij9UErcNSzehBu0oWuPfCjeHR+KiGj00dD3tdR
 bNIIWeaBdFXqEvVPET/a99wg78GEC3h6grC6j3TClScbuOZ+5Kc6PR1pp
 FGZTTCv9eQP0p/S0LSsyW1Q4cUNwQXki7G5X4vrJ6v1vfov57mlE0jq2b
 ChSXogdjYnkoMo0MYOOnoi5opVe/O87DkttcZRgpCZ0dX6ksB2KKyDNof Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="326753641"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="326753641"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 04:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="541158772"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 28 Apr 2022 04:29:43 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 04:29:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 28 Apr 2022 04:29:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 28 Apr 2022 04:29:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlW/T2L211NP12tNBf80OD3k6eSZ0Lp2uwP9dc4W1F6vjpmVTlpQFx+j4sHM1OGemDy2Ua1QMpT521boKTp7bdy3jcmC9GD0dT62FL70L8eFIGCm4bVMi9Ab4EgHlTwHM8Gs0SGJxQvrbzGKpd09uukKZjcIIQmfJzH40k1MtrO+gQfdai/mecj1SrpuLhBU6CA5AQt/YqvFfaa0UGbo7Rupg+xffbtJral4tuGeIZscsQMxiaskKhFAmrpfvyiLxRucQLdUI72NoDz8SAWlmT1t6mcjnHtgz37q7YAmjWR9m0+rwS79gjbnZfzr6Dy6K6Rm6EEp+lol0jrTosrNIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nSdP13Ce8F5qcOgmy+gnZZ6OyNyQUZvZ/4KSs1JxNLM=;
 b=k9bmLt00ylnpx6FVsyk4tYKD23Foi03+2iCME3FKDK/Cf28iea2qrttYjgvxfPDTDWzEN3dmbRbRUUifHPsbbCAAX2vtqqddc3qsJ/5ADVxEqfRHeK0FcGl+PpJdKuwnoPheeCC7k1sl2YwgxCD6txl2bSwVBo/XhBS2QrNPjls/MHWNc02LRLFTqSWv3LU5WDt1WZgTJ4uDrDmjOQztMyyw1JYC+/sH+I3i3Ta9BFDmsHuZZgrYsP8QGDEROppDLLzZZ2SkEHjKzJ+JDcvXDlVF3NR3laaKWEedbTjrzF0s/G2OJCQysq4X6IqMGiyixmGEp1nvtgtQ98kAmpXYOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 MN2PR11MB3936.namprd11.prod.outlook.com (2603:10b6:208:13f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Thu, 28 Apr
 2022 11:29:39 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::18a1:57cd:815:e476]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::18a1:57cd:815:e476%2]) with mapi id 15.20.5206.013; Thu, 28 Apr 2022
 11:29:39 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix adding ADq filter to
 TC0
Thread-Index: AQHYWtXdP5a2tk1ARU61gfShzA/6x60E+wKAgAA1BIA=
Date: Thu, 28 Apr 2022 11:29:39 +0000
Message-ID: <DM6PR11MB27310E947344EDB66F06B566F0FD9@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20220428075735.926715-1-jedrzej.jagielski@intel.com>
 <e5f0f6a7-1c10-e445-be34-5ae9c3f5d4df@molgen.mpg.de>
In-Reply-To: <e5f0f6a7-1c10-e445-be34-5ae9c3f5d4df@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95e8fc31-76b1-4680-5fbe-08da290a61b3
x-ms-traffictypediagnostic: MN2PR11MB3936:EE_
x-microsoft-antispam-prvs: <MN2PR11MB3936BD169D0CB805C9AD4614F0FD9@MN2PR11MB3936.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z3ZWiu3SLtXffH0RgveWTp+b5dr8rBpuRNBY/Iy0XmBJKMkoT/9Ff3TA6EZIKwaaH56x/4RHeO81LYodfPU8ysgHzSCOJHje8KTsTahD7EqaW2PI9j1iQrXezG4WVOenTfAqQFI3SPdacaw/Y/StcFc4dq8Z5MZoDOQDXheKxEb/x7VECcxnMflBONHh3ZflpUrNAUxkFwc98DHg1l1EjzLl7JZsT9OEeKagreRD73zm+HTq5M1o0A2K4Zlhx63mZk/FPydQQswTHqGUNB+dTq/c9QYnMd6YGzKiwOntfSev6ICZRxbRNOejk1z/5EgRtiD/dNPrfGMNsp4HCtyW5P3K+l39oDXD/O1PmwEyJufi4V5i6XccosChkDEn/ppBb5lDGF1hhha1srXLV3vsJ1sqVrODu0ppFtlI34Kkr562WTJIvbvfVF/8TL8fxr5GE3ON5X+MqMgEOBvpXS7LSyQgEUAyEWP9CtdeMZvNvRayNTHyWOCtD/Miw/XGgNtXasVTQljVj0DZ5as42OKjuo59mr8sqsWeUZYhS68NPNmFSXu+VBv8H6tXbfvPkmJXdoSHfY2ZOrK7RWQRlxwi2TfJLe+pcHtXLJEIgt5AztSwOcy3KVTKtvUiolR7goKOrx5FNf1Z3lZ7ylr6O/J/XzBCXs9k/K2WIDL8QZJnsq7/in4fm+Oaq+RV3afbMmc8oTuHSzDSniq7DnVvgAERbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(2906002)(107886003)(55016003)(54906003)(6916009)(316002)(26005)(186003)(52536014)(5660300002)(4326008)(8676002)(64756008)(33656002)(66476007)(82960400001)(122000001)(76116006)(83380400001)(66556008)(66946007)(66446008)(7696005)(508600001)(38100700002)(6506007)(9686003)(71200400001)(53546011)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVJUSlJscGdJUFFhekw0TlZjSGZIV1FzdEp4TlQzYlZjOXpRYUcybVgwT015?=
 =?utf-8?B?MkE5V2FkYnRucVpkMGRtOTZyam5kem95VzVlaTk1YWs4T3JhUmc5WktueFI1?=
 =?utf-8?B?T0lvOVFFUDRlRDM0WDFFMEZYa1UyQ1UyTUxJODBXdzVKUHZBR28wWUhKdXd3?=
 =?utf-8?B?elc2Ulp1cW9uaU9kWjFVM2VrZ21YTWxsT2JnUCt0SjFuL3k0bXRnUEZBS1Bz?=
 =?utf-8?B?Vnc2ZmZTcGYvZjkyRFdXVVh3SkZ5M2RmV2VEaWZaTG9jWjdsbldYc2V2Vkdi?=
 =?utf-8?B?T2VCREhjUm9KUzE4MmkwbHVlZFlkQ2ZYaFBLTFluYWZTT2l2TkhNeEsxUEZo?=
 =?utf-8?B?MGYrZGVIQy8rQ1I0QXdNcGhPb3d3U3p5M0paZDVrbmN3K1A1bEJJdzFENkN3?=
 =?utf-8?B?MWlzcXdnTXkxblRoVXFZVGJlM2NuZktHODF5QWU0TGpyU0pFdSt2RERnaGls?=
 =?utf-8?B?c1lOMzIyUEV0T0RFeFZtdldrRVpEWHFEUXNTME1OcWRSVnU3NzlUelQxWHJS?=
 =?utf-8?B?T3BvU3JYSHdiQ2RGLzl0MCs4ME1rcG1kRlU4WE8xR29mLzZib2J4T3VoU0sw?=
 =?utf-8?B?S3piZjJhdGVtN0JiRkR6SUx4VVRLMjkzY2FSMi9JM0xqVkJxOG0rNVpZV1hI?=
 =?utf-8?B?dktwSEg4c09XSmQ1ZDgwRFI4eUFmK1VwNVlOZ2hpMTlKVUVkQytQdDZhUHFK?=
 =?utf-8?B?ZTd1ZFVES012UG1nSnlwRnF4ZFJOcVlIMGF6a3FWN3hMWFc5WTdsaUc2UjEz?=
 =?utf-8?B?MUdlL015UE4yRmhtZ2VQZ0NYMXgxUlBtWXFBUlljajlDVzRCMDRnVlRzNFlh?=
 =?utf-8?B?bTZZTnYxNGpXL1dieWx4RlpMWlF0T3BRN2EycUVmVlF0WlpHVGFPazhpTEdy?=
 =?utf-8?B?alJ1V0I4Q2MxYXdJS1FQVm5xSmlRRHFMYlkveHVUNjNPYTdSWncrR1BpV0E3?=
 =?utf-8?B?UWgzZi9rdHJFcGlqQW9KNUdMcWRDWTNMS1krekQxVTU4bGt6SnV3eUdGUHNi?=
 =?utf-8?B?bS9oMlNibFMyU3RrN1lzQzIzT25hblRwZHNhU1Z0Q05WdUYzU1huWXdCd1Jo?=
 =?utf-8?B?QXpSVE9UUU9Yb281Z3M0WjhVMUZBRmRUUGhIS2VQQzRHNVkwYWxDb0FDRXdq?=
 =?utf-8?B?UUZ0QlpneVVtQzg5Z0JKQThOWjBsbGhtUlBLcEU2Z21VRmMzR1dkM2Jnbzhp?=
 =?utf-8?B?STdkZlhNaDRCNW1Ram5mQndPVWE5bDdsK1pYZElhWXpQWkprOGw4OXF4TlRC?=
 =?utf-8?B?R1pqRncvSTl1dnVVaXVkNUZMQXpNdng2ZTdjVUFmUkJrL1lQdEJ2U25UNWhh?=
 =?utf-8?B?Y2ZWSEtCTG13bjFZNkFMbUw1RWpUcFFsYVh4QUNwbitLdFF1MTFTRHlXNHU2?=
 =?utf-8?B?UE5yQW9RdXRCZHcxbE9lOWJxVlZHMDVDdGJtaWM2RFN5dFkvUlNZNzlrZHFI?=
 =?utf-8?B?UGxENHQ0U0Z1bjVJamFjelVub0ZsM2ZaQXdwZGVtMW91RVh0OEdpK2tRL3pM?=
 =?utf-8?B?WU9qSGtBQzlQVEd2cHVGbHBxOVBjT3ovakdleVdFa0FGdVdGRTE0YitBTnVj?=
 =?utf-8?B?WWdWRVpjYXBIaG5wd0h1OU5MUjdTMi9WT0lZODBON1NXUXRlS0NvZ3l3bjJs?=
 =?utf-8?B?YmtJWHgxU3daWUd3Z1FnZjN4RDI2bU5sQlVLMlRIbnV2aXkzd1A4Mi80cnM1?=
 =?utf-8?B?TW5nSTcvdFVqVnZxVnRaeHcyekt0cmxoTmhkZ1VsWEVHZTlGTGYweXI1aCt4?=
 =?utf-8?B?OWtWOC9UU2p3WnlqYXJPbGYyMXV0YVdvRjZLSWFEdXBCemh4cWpYWi8vQ2U5?=
 =?utf-8?B?SmVmL1dDcndyU3dBbzF4RXRiY3VXR0d2S1ZWeGJnNGRzR1hMdmNuSFR2VkZu?=
 =?utf-8?B?VDFqdVN4M0JZZ1ZWYVZ3bXJOcjh4d0lrZ3RWd0YyaHU4TCtLUjhGdGtyNlN0?=
 =?utf-8?B?L1phN293L1FwR1hGOWFNeHJuMGNzK3lnaEdaeDlMcDMrR2VXUnVidGUra2V6?=
 =?utf-8?B?WkdPYW9NbEZTSm1ML1dEdDlMTEdBdk5DTGdybUU0RmNGeWZWSHF6QjU1bTJX?=
 =?utf-8?B?WElCTGhneUJTTW00bGJXcVNqNEM3aUZ1R2dpMVVXVU43YW14Mm5HbWg2a2p1?=
 =?utf-8?B?NW81SjVrZGkwb1JsU1FSUjV2SlF4LzhhUVdJM0w5TE5vZVl3MUttVWgxQ3Jn?=
 =?utf-8?B?cWExS1VqOFM2dXRMN0tZT2tsUHdlMVBNdDZqZ29yajFmN0lXLytEWisvTXNy?=
 =?utf-8?B?bHpqR1BtVUlFZ3dPWnZRTUFDYjBEeXFnbGtBR1dLWDdvTm9iSzVOSW5FeGRX?=
 =?utf-8?B?aDFicnd0R0E2ZjRJY1dtRDhXNW44blkrVVFBU3cveCtTY09UQTJxbTRTN3Vx?=
 =?utf-8?Q?TZ9Knw9Ff3GSOcQg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95e8fc31-76b1-4680-5fbe-08da290a61b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2022 11:29:39.1747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w0Z0yyFKBK+++wDm+SnFnki15hR9bedGshLiZWJ1pzVTzpVEEDNnvaK13+AKgmHfhiL2/Eiys0R7K7MMELsYg5/roHtRIZU157APiSEhNw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3936
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix adding ADq filter to
 TC0
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8gUGF1bCwgDQoNCj5UaGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQo+DQo+QW0gMjguMDQu
MjIgdW0gMDk6NTcgc2NocmllYiBKZWR6ZWogSmFnaWVsc2tpOg0KPj4gRnJvbTogR3J6ZWdvcnog
U3pjenVyZWsgPGdyemVnb3J6eC5zemN6dXJla0BpbnRlbC5jb20+DQo+PiANCj4+IFByb2NlZHVy
ZSBvZiBjb25maWd1cmUgdGMgZmxvd2VyIGZpbHRlcnMgZXJyb25lb3VzbHkgYWxsb3cgdG8gY3Jl
YXRlDQo+DQo+YWxsb3cqcyoNCj4NCj4+IGZpbHRlcnMgb24gVEMwIHdoZXJlIHVuZmlsdGVyZWQg
cGFja2V0cyBhcmUgYWxzbyBkaXJlY3RlZCBieSBkZWZhdWx0Lg0KPj4gSXNzdWUgd2FzIGNhdXNl
ZCBieSBpbnN1ZmZpY2llbnQgY2hlY2tzIG9mIGh3X3RjIHBhcmFtZXRlciBzcGVjaWZ5DQo+DQo+
4oCiICAgcy9vZi9pZi8/DQo+4oCiICAgKmlzKiBjYXVzZWQNCj4NCj4+IGEgaGFyZHdhcmUgdHJh
ZmZpYyBjbGFzcyB0byBwYXNzIG1hdGNoaW5nIHBhY2tldHMgb24gdG8uDQo+DQo+UGxlYXNlIGFk
ZCBhIGJsYW5rIGxpbmUgYmV0d2VlbiBwYXJhZ3JhcGhzLg0KPg0KPj4gRml4IGNoZWNraW5nIGh3
X3RjIHBhcmFtZXRlciB3aGljaCBibG9ja3MgY3JlYXRpb24gb2YgZmlsdGVycyBvbiBUQzAuDQo+
PiBQcmV2aW91c2x5IGl0IHdhcyBwb3NzaWJsZSB0byBjcmVhdGUgdGMgZmxvd2VyIGZpbHRlcnMg
b24gVEMwLg0KPg0KPlRoZSBsYXN0IHNlbnRlbmNlIGlzIHJlZHVuZGFudCB3aGVuIHJlYWRpbmcg
dGhlIHdob2xlIGNvbW1pdCBtZXNzYWdlLg0KDQpTdXJlLCB0aGUgY29tbWl0IG1zZyB3aWxsIG1v
ZGlmaWVkLg0KPg0KPj4gDQo+PiBGaXhlczogMmY0YjQxMWEzZDY3ICgiaTQwZTogRW5hYmxlIGNs
b3VkIGZpbHRlcnMgdmlhIHRjLWZsb3dlciIpDQo+PiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBT
emN6dXJlayA8Z3J6ZWdvcnp4LnN6Y3p1cmVrQGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6
IEplZHJ6ZWogSmFnaWVsc2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRlbC5jb20+DQo+PiAtLS0N
Cj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDUgKysr
KysNCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPj4gDQo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4+IGluZGV4IDFlMDc0YTY0
NjJkNC4uYTBkNWQ2OTZjZGMxIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYw0KPj4gQEAgLTg1MzcsNiArODUzNywxMSBAQCBzdGF0aWMgaW50
IGk0MGVfY29uZmlndXJlX2Nsc2Zsb3dlcihzdHJ1Y3QgaTQwZV92c2kgKnZzaSwNCj4+ICAgCQly
ZXR1cm4gLUVPUE5PVFNVUFA7DQo+PiAgIAl9DQo+PiAgIA0KPj4gKwlpZiAoIXRjKSB7DQo+PiAr
CQlkZXZfZXJyKCZwZi0+cGRldi0+ZGV2LCAiVW5hYmxlIHRvIGFkZCBmaWx0ZXIgYmVjYXVzZSBv
ZiBpbnZhbGlkIGRlc3RpbmF0aW9uIik7DQo+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4NCj5Ib3cg
Y2FuIGFuIGludmFsaWQgZGVzdGluYXRpb24gYmUgcGFzc2VkIGF0IGFsbD8gU2hvdWxkIHRoYXQg
YmUgV0FSTl9PTiANCj50byBkZWJ1ZyB0aGlzPw0KDQpUaGUgaW52YWxpZCBkZXN0aW5hdGlvbiBp
cyBtZWFudCBhcyBUQzAsIHdoaWNoIGNhbiBiZSBwYXNzZWQgdG8NCmk0MGVfY29uZmlndXJlX2Ns
c2Zsb3dlcigpLiBTbyB0aGlzIGlzIGJhc2ljYWxseSB2ZXJpZmljYXRpb24gDQpvZiB0aGUgcGFz
c2VkIHZhbHVlLiBJIGRvbid0IHNlZSB0aGUgbmVlZCB0byBhZGQgV0FSTl9PTiBpZiB0aGVyZSAN
CmlzIGFscmVhZHkgZGV2X2VycigpLg0KPg0KPj4gKwl9DQo+PiArDQo+PiAgIAlpZiAodGVzdF9i
aXQoX19JNDBFX1JFU0VUX1JFQ09WRVJZX1BFTkRJTkcsIHBmLT5zdGF0ZSkgfHwNCj4+ICAgCSAg
ICB0ZXN0X2JpdChfX0k0MEVfUkVTRVRfSU5UUl9SRUNFSVZFRCwgcGYtPnN0YXRlKSkNCj4+ICAg
CQlyZXR1cm4gLUVCVVNZOw0KPg0KVGhhbmtzIGZvciB5b3VyIHN1Z2dlc3Rpb25zLA0KDQpCZXN0
IHJlZ2FyZHMsDQpKZWRyemVqDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206
IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IA0KU2VudDogY3p3YXJ0ZWssIDI4
IGt3aWV0bmlhIDIwMjIgMTA6MTcNClRvOiBKYWdpZWxza2ksIEplZHJ6ZWogPGplZHJ6ZWouamFn
aWVsc2tpQGludGVsLmNvbT4NCkNjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsg
U3pjenVyZWssIEdyemVnb3J6WCA8Z3J6ZWdvcnp4LnN6Y3p1cmVrQGludGVsLmNvbT4NClN1Ympl
Y3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0IHYxXSBpNDBlOiBGaXggYWRkaW5n
IEFEcSBmaWx0ZXIgdG8gVEMwDQoNCkRlYXIgSmVkemVqLCBkZWFyIEdyemVnb3J6LA0KDQoNClRo
YW5rIHlvdSBmb3IgeW91ciBwYXRjaC4NCg0KQW0gMjguMDQuMjIgdW0gMDk6NTcgc2NocmllYiBK
ZWR6ZWogSmFnaWVsc2tpOg0KPiBGcm9tOiBHcnplZ29yeiBTemN6dXJlayA8Z3J6ZWdvcnp4LnN6
Y3p1cmVrQGludGVsLmNvbT4NCj4gDQo+IFByb2NlZHVyZSBvZiBjb25maWd1cmUgdGMgZmxvd2Vy
IGZpbHRlcnMgZXJyb25lb3VzbHkgYWxsb3cgdG8gY3JlYXRlDQoNCmFsbG93KnMqDQoNCj4gZmls
dGVycyBvbiBUQzAgd2hlcmUgdW5maWx0ZXJlZCBwYWNrZXRzIGFyZSBhbHNvIGRpcmVjdGVkIGJ5
IGRlZmF1bHQuDQo+IElzc3VlIHdhcyBjYXVzZWQgYnkgaW5zdWZmaWNpZW50IGNoZWNrcyBvZiBo
d190YyBwYXJhbWV0ZXIgc3BlY2lmeQ0KDQrigKIgICBzL29mL2lmLz8NCuKAoiAgICppcyogY2F1
c2VkDQoNCj4gYSBoYXJkd2FyZSB0cmFmZmljIGNsYXNzIHRvIHBhc3MgbWF0Y2hpbmcgcGFja2V0
cyBvbiB0by4NCg0KUGxlYXNlIGFkZCBhIGJsYW5rIGxpbmUgYmV0d2VlbiBwYXJhZ3JhcGhzLg0K
DQo+IEZpeCBjaGVja2luZyBod190YyBwYXJhbWV0ZXIgd2hpY2ggYmxvY2tzIGNyZWF0aW9uIG9m
IGZpbHRlcnMgb24gVEMwLg0KPiBQcmV2aW91c2x5IGl0IHdhcyBwb3NzaWJsZSB0byBjcmVhdGUg
dGMgZmxvd2VyIGZpbHRlcnMgb24gVEMwLg0KDQpUaGUgbGFzdCBzZW50ZW5jZSBpcyByZWR1bmRh
bnQgd2hlbiByZWFkaW5nIHRoZSB3aG9sZSBjb21taXQgbWVzc2FnZS4NCg0KPiANCj4gRml4ZXM6
IDJmNGI0MTFhM2Q2NyAoImk0MGU6IEVuYWJsZSBjbG91ZCBmaWx0ZXJzIHZpYSB0Yy1mbG93ZXIi
KQ0KPiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTemN6dXJlayA8Z3J6ZWdvcnp4LnN6Y3p1cmVr
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmVkcnplaiBKYWdpZWxza2kgPGplZHJ6ZWou
amFnaWVsc2tpQGludGVsLmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYyB8IDUgKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9t
YWluLmMNCj4gaW5kZXggMWUwNzRhNjQ2MmQ0Li5hMGQ1ZDY5NmNkYzEgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiBAQCAtODUzNyw2ICs4
NTM3LDExIEBAIHN0YXRpYyBpbnQgaTQwZV9jb25maWd1cmVfY2xzZmxvd2VyKHN0cnVjdCBpNDBl
X3ZzaSAqdnNpLA0KPiAgIAkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiAgIAl9DQo+ICAgDQo+ICsJ
aWYgKCF0Yykgew0KPiArCQlkZXZfZXJyKCZwZi0+cGRldi0+ZGV2LCAiVW5hYmxlIHRvIGFkZCBm
aWx0ZXIgYmVjYXVzZSBvZiBpbnZhbGlkIGRlc3RpbmF0aW9uIik7DQo+ICsJCXJldHVybiAtRUlO
VkFMOw0KDQpIb3cgY2FuIGFuIGludmFsaWQgZGVzdGluYXRpb24gYmUgcGFzc2VkIGF0IGFsbD8g
U2hvdWxkIHRoYXQgYmUgV0FSTl9PTiANCnRvIGRlYnVnIHRoaXM/DQoNCj4gKwl9DQo+ICsNCj4g
ICAJaWYgKHRlc3RfYml0KF9fSTQwRV9SRVNFVF9SRUNPVkVSWV9QRU5ESU5HLCBwZi0+c3RhdGUp
IHx8DQo+ICAgCSAgICB0ZXN0X2JpdChfX0k0MEVfUkVTRVRfSU5UUl9SRUNFSVZFRCwgcGYtPnN0
YXRlKSkNCj4gICAJCXJldHVybiAtRUJVU1k7DQoNCg0KS2luZCByZWdhcmRzLA0KDQpQYXVsDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
