Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4C34A7E39
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 04:08:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE6D1402D8;
	Thu,  3 Feb 2022 03:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9SrrSDMYOCst; Thu,  3 Feb 2022 03:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE3D9401F9;
	Thu,  3 Feb 2022 03:08:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 469161BF47A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40A60402D8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eantkvnq5ri1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 03:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AC02401F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643857717; x=1675393717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zqlJ84IEIb5l0i4ANAoL1X7VNY/SMt8W5G1G/6dS9AQ=;
 b=X1TAnuz8vo5E+JZarSkN3vdVAwmNAR7wL2zEg9jIDQOym+/xOHvfEw24
 TtDEXDE7KLPK0yHKMbkc48Mh4ZinoGFF+P8GJfxEPKw70TDNxRsiSXLaI
 17cTNVNb2XCQPffAv4f6v5kHebDVWJeR8TDaosWxz6PtYSwtUkhCXx0Sp
 B/yUQ8ZJMBtqnY4l3zh2KE3SftLx06Cqr1nj4BvXDnAOFrmk7wkagE9CF
 CpR1oq22QZpcvCwqT47iWZIgQjWYUtiTsRt5S7Hinl49oJ5/IB7V/76lG
 ww9ZVWY9ZE9ifOeZ3lAhWB6bwyrKGx9Y5OXXBL1hxIZpfZYuU5H6nsqEL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="231632652"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="231632652"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 19:08:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="769489712"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 02 Feb 2022 19:08:35 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:08:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:08:34 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 19:08:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 19:08:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgyMIXIGpF0Z5AMzJVOeHuyMH2fYPCVGNCEg9msI801NuGrQ0CGoZRVCKzNnc1nNgEFCdlfCiMQIStGYNjXkFrE81HNBvg9ZBLyCelk2VT0md+YaABUVugDq5QcUvNMaDJ2Hb6TtZT4RPcF4OOsu7dyf2cXXradHWcQ2gKAEFh5/2nPJBPN4w9Jsfyw8sQMGpcVEgo94/zfDnnG0iMHXFSJs/AUtrn3a4lJMJs1Bzh/5Ws4PMPEO7CexaQv4zHffW+SbcollGkePSpNZwDfgXZBb57BL1FS4jV8HN5nKUPlvt3fgYh/+aq6PwlBiH4xP+RpAswquxLOg9GvyxgKfpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zqlJ84IEIb5l0i4ANAoL1X7VNY/SMt8W5G1G/6dS9AQ=;
 b=Ml00H26ID36mJ6FYe22JaFWnERhAvKyGvhOM/hoQB709XNmVuJiPRnt4KkgpW6F+us01UQApxLsjma2SD1ynOoY8azTJ+SHbZBCWl+Pm2HWgr4EA3eS2DqxMwwTD5EqPxHHxOQTtUEW69dtOALahNHm3gIDCGw9Y0uybToLucb8RmqoIYPC9TFoVv1Bt2XzNi9OTw5AKEGPMopdG+X5jXB1RlEidEKPlQSrkwnwzjXcYBo1yWy22+x1t/27nR1easOg02hI4RMmW4eZMUOAsECSpylXiHheAsRawIFn+jpzHWOj22gS4PeN8YZzNBE977W24eFgjw2jM/iWygmYlAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by CO1PR11MB4850.namprd11.prod.outlook.com (2603:10b6:303:9c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Thu, 3 Feb
 2022 03:08:33 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 03:08:33 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic module
 init and documentation
Thread-Index: AQHYE97P+xgP0L96iEuzkw7w8eI81ax/IJcAgAIOAkA=
Date: Thu, 3 Feb 2022 03:08:33 +0000
Message-ID: <CO1PR11MB51860674D2077D6CDEDB7D778F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-3-alan.brady@intel.com>
 <CAP-MU4OwDLJ623dDX7kJhXaTQqBM0coyLxAL06C3pKB_EO8Caw@mail.gmail.com>
In-Reply-To: <CAP-MU4OwDLJ623dDX7kJhXaTQqBM0coyLxAL06C3pKB_EO8Caw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a300322d-2ffa-4991-a2d3-08d9e6c2767c
x-ms-traffictypediagnostic: CO1PR11MB4850:EE_
x-microsoft-antispam-prvs: <CO1PR11MB4850F825498A47BD66396EDD8F289@CO1PR11MB4850.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iJh21pivAauRSgvDvUJHQI4Cf1ArbeEIWXpgfDs7cwWCvlpHCqdvWX3W5hG6tImHlbF8k0iCTyTbKXZC8Jpl7X2XJiXZILjmJXfYHj0ZhoSFRNrLMO4WrjMJuWkeBz8wTp26HmOuZS8R5HwjOrc7BuRaOUi1+tOVZk1HwTPd45Vt1F+/9A2LI4bvG6+3XzeolrFrugj58PujTOl74m+eEPy+S3VzASu0IouViHT2TJ6vWSBkrfhzTD0a1ZFImKstSf4+3m47VY1udh/lBD8MZZi2gOoqfXTBHFlktFkb5p3YdMnjojRDHwVM34GTOugZOIy6SiDNuxYZ0tAew9NIWtv41BPTWjTlHNYS4XIcCVatPQptF1vSnXmkZGN2Dlj9M5Ed50Iyk0oDDizYZhiPeRxI09ez7NoqAGxV+BlEkUDMKCWduSU/nTkMmyzFR5kkOE0r4ezzRz2h/q+K9pVP4LWS9HFXR0u3vjVNXx3ieMe6fM2EKRvN07hnNz2rVAWJTk5t9KmBrzBfyi3kLTXerwv7TrniL6UIJansUTsC5NCr+yzeo6kN4lBALbvlTck7ojJCN9Ed5bOPKnghmDmb3wl5RF3fpKptfBiZdsbwlAoTBWhH9jD/JrOEEIb1KvBswXkUaW4YrN0x8OTi8RsAum9PV44cBhxDWsTWymr64lOMZzWQkGbyq+N9pZXpfBmzxWawu2uymOwN3N5qhzQzWQJqKYcKz2xLyskOX1TWRyfa/XxwlFfGchbxBiNQrRx+9j54GiHFcH4XKWGiJjw8ecA6WaGlX9/fuV7dHDh61Xc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(107886003)(54906003)(6916009)(38070700005)(33656002)(316002)(9686003)(7696005)(6506007)(71200400001)(53546011)(86362001)(186003)(122000001)(66946007)(8676002)(508600001)(82960400001)(26005)(83380400001)(5660300002)(8936002)(66556008)(66446008)(66476007)(76116006)(64756008)(52536014)(966005)(2906002)(4326008)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFlsdVZJOGdBZUNPSDJ2ZXhSeEVOMHB2VG1zNTVRU0xnbU9tb05JVHZYNFRF?=
 =?utf-8?B?MGZMeE9SUHMxQnRwRjdYeDdVcDRTS3U3cVB2ZUlmdndITnI0WHVMSExxN25O?=
 =?utf-8?B?RU5TTG45S1RYcm9LejFPWEFJMkJpK3ppdjU1ZjVRdWh4dWVzcm1RU2hsNnQ3?=
 =?utf-8?B?WGljekpzVHArZGRBYkFFNGJFbndBeGkwWkE2dzFrVDVTSkFUdE5JN3pTWmQr?=
 =?utf-8?B?ZSttVFJvRDd4dEY1dW9PbkJsYjh3SU9FQjZFK1RzN0xUQU5lSkZoRmtjcXdK?=
 =?utf-8?B?RDJpSUEzNHc5UUhpVmFXQ21sZFVxZ0tyd2E0Q2tGNHBnanpJK0ZnTkgrZFU3?=
 =?utf-8?B?cGZoMjlhdURqL1huWE8rWDJoeUxQemZ2V3pOcjd3bDAwVGE3SXEwNzV5ZVZX?=
 =?utf-8?B?TGkwR0FhWmJ2MFNCS281VTJrY1ZPcVhKcUs2NTNHKzlkNlR0Ui9Gb09NZy84?=
 =?utf-8?B?R3pRK0MrRFR4bHlKYTBSNHVXc2hydS9BelFWMFRHVE12US91MHp1YjUzditD?=
 =?utf-8?B?RVM0cFMyb2R1bHRRaGFyQTRlWTBjaVFBS0xqbUhleDByMnZsdFNKYk1oeEk1?=
 =?utf-8?B?ZHdlQmRWMndOTHkvYlByVVo4K0FQNkw0MjRWRFBjTkpraXk1aUttMmdxODdJ?=
 =?utf-8?B?NUxxcGgxUnUvMWNCZ29rbmdXdTRINEZCVFRvRlJGVFpwcnRmUHdsaW80WkdC?=
 =?utf-8?B?Qmlvcmd6Z0pWMVJSUDhCbnhPS2F2NWxYWXV4em9sdGsyTG9QVDFraWZ6MmVF?=
 =?utf-8?B?c1Avd1pKNUJqZllqb0pKQm5zTDBtQnoreE9zelM5U2Rhclh0TkgzUGNuUDlB?=
 =?utf-8?B?S2laV1VaWVhGTFZqaEJBU0tsOXNWU1UyWmhpQ1J2UVJDeHdDVjlhemxsRW80?=
 =?utf-8?B?MUVOWUF4YlQzeTFmUDR5amNidURpVGo2VVdPckZoeFZ6Z0V5eWxlQXl1NFJs?=
 =?utf-8?B?akRzSmZDQm5zV3plSkcyZHFWZlB4VUJqQ2U0bGQyckFGSzY2eHJNSkZURlor?=
 =?utf-8?B?YS9aZzFqR0pibUV6UXRZOVRDREY2OC9xL0ZxMk9ydnNQclVyN1I4VTIzaWl4?=
 =?utf-8?B?VkpEQnNLYmdGdk5GZ3RjOU9iTlVvb29MRFNTTCtpZ1dCQ2I2blN5UUl4VHpZ?=
 =?utf-8?B?OC82R2lmOUE2cGlLQlRMZ1JIaUpyTWEwZDFwZGhqUlJnY3IrekpLVktydENp?=
 =?utf-8?B?djhrdDBrV2ZXR1ZDMTZXUktSSTdibmU3SDRnVGtJeHVRbG1HNU1VcjFEbCs1?=
 =?utf-8?B?ZHhmUk9lbHNlWTZ6UVZOV3VCdFpBV3JQMERwRDdqeGlRdVZYYzVpWEg2OEln?=
 =?utf-8?B?cmIrMER4TndwbTVrRUVUNjJYRHNmanM1S3huZEk1dUVnQWVmMVdhclZRNStN?=
 =?utf-8?B?U2tLZUJhOTU5M1FyRVlQZU02N2hWZ3JIT0pQMjJ4WGRDV0pjdXRDaE5SY1NB?=
 =?utf-8?B?VGIrVlRJbm5vdDRqckMxcmYzMytITGt6SmttcW0yQUFOWHZERTFrUDR5dTda?=
 =?utf-8?B?SG1PTDJ2ZUJFcHF6YUVqb1hYTkhPbERSUWd2YXcwWVV3RlQ0Q3JhY25RNmdJ?=
 =?utf-8?B?TUR2cm5UbGZrZWhsTlNEaW9kSGxKekxKMzVyNXFTcGlIQVFKeUFlOVhIRitp?=
 =?utf-8?B?RkZJODFtUUJVdE5Cb25JenBESlRrbitlWVVUN1lQQkVuNzRDeVJCb21LelRD?=
 =?utf-8?B?ek51Y0FhNDlLbHZtTXh5dUl1TSsrcXprc3NCNlFxQ0hSWjRYWDNxc2RmbTRt?=
 =?utf-8?B?eUJiTnoxdldDbzlmWldDWDJtakF6SzBJUHFORDFLNllvbXQ1a0JuUitreU82?=
 =?utf-8?B?RXl5QUZkdnRJb1VyK29VVWpaMFZ2YXgxYnhSZEttTEdteUh5NWh3WWhvMlFy?=
 =?utf-8?B?VndSSUI5MFVqODcyOWdLSGVOVHJveDVkQm1Bc2piWStVRkg0TUVReUhRWWFp?=
 =?utf-8?B?LzBWODZPL3ZEdEFqRFR6eDN0SHpCZUY1TG9MUDdVUklYTjlsTkp1emNudnpj?=
 =?utf-8?B?MHovZHgxWDMzL2VzYmFDYTVRSHJGSVFPWE53bkx5QWV3LzhqdTBFcVNhZzM2?=
 =?utf-8?B?QUNoVlhIR1VORzJROUdBMDRMY3pNZUx1U00zSFhKZW5UemVQeFRqL01DR2M1?=
 =?utf-8?B?WUFraXZMTGhGZnN3UXA0K2p5M0NKTXlSL29hRXowbDFBelcyODQ4Q3A1a3B4?=
 =?utf-8?Q?Ih39QkRm/MjheQJ6JGmSQOU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a300322d-2ffa-4991-a2d3-08d9e6c2767c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 03:08:33.4778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s5ttuLzw2sjK6dMewBvZMKpfBbEpsjSC9kmz7cBHhdbBtYedvs4kPs1wObhD9JioCsoVRKmFvuvLMUVlDAxL7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4850
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic module
 init and documentation
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Shannon Nelson <shannon.lee.nelson@gmail.com>
> Sent: Tuesday, February 1, 2022 11:45 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic
> module init and documentation
> 
> On Thu, Jan 27, 2022 at 4:34 PM Alan Brady <alan.brady@intel.com>
> wrote:
> >
> > This adds the basics needed to make a kernel module and documentation
> > needed to use iecm module.
> >
> 
> [ snip ]
> 
> > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> > b/drivers/net/ethernet/intel/iecm/Makefile
> > new file mode 100644
> > index 000000000000..d2d087ac71e9
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > @@ -0,0 +1,13 @@
> > +# SPDX-License-Identifier: GPL-2.0-only # Copyright (C) 2019 Intel
> > +Corporation
> > +
> > +#
> > +# Makefile for the Intel(R) Data Plane Function Linux Driver
> 
> Maybe the iecm here rather than idpf?
> 

Woops.  Thanks, will fix.

> > +#
> > +
> > +obj-$(CONFIG_IECM) += iecm.o
> > +
> > +ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include
> > +
> > +iecm-y := \
> > +       iecm_main.o
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_main.c
> > b/drivers/net/ethernet/intel/iecm/iecm_main.c
> > new file mode 100644
> > index 000000000000..7c09403c6918
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_main.c
> > @@ -0,0 +1,40 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include "iecm.h"
> > +
> > +#define DRV_SUMMARY    "Intel(R) Ethernet Common Module"
> > +static const char iecm_driver_string[] = DRV_SUMMARY; static const
> > +char iecm_copyright[] = "Copyright (c) 2020, Intel Corporation.";
> 
> Do you want this copyright string "2020" to match the top of the file
> "2019"?
> 

Hmm yes we should probably fix that.  Thanks!

> > +
> > +MODULE_DESCRIPTION(DRV_SUMMARY);
> > +MODULE_LICENSE("GPL v2");
> > +
> > +/**
> > + * iecm_module_init - Driver registration routine
> > + *
> > + * iecm_module_init is the first routine called when the driver is
> > + * loaded. All it does is register with the PCI subsystem.
> > + */
> > +static int __init iecm_module_init(void) {
> > +       pr_info("%s - version %d\n", iecm_driver_string,
> LINUX_VERSION_CODE);
> > +       pr_info("%s\n", iecm_copyright);
> > +
> > +       return 0;
> > +}
> > +module_init(iecm_module_init);
> > +
> > +/**
> > + * iecm_module_exit - Driver exit cleanup routine
> > + *
> > + * iecm_module_exit is called just before the driver is removed
> > + * from memory.
> > + */
> > +static void __exit iecm_module_exit(void) {
> > +       pr_info("module unloaded\n");
> > +}
> > +module_exit(iecm_module_exit);
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > new file mode 100644
> > index 000000000000..f66f0d7db8e7
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#ifndef _IECM_H_
> > +#define _IECM_H_
> > +
> > +#include <linux/etherdevice.h>
> > +#include <linux/version.h>
> > +
> > +#endif /* !_IECM_H_ */
> > --
> > 2.33.0
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
