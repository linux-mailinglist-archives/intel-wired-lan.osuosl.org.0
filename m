Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C5D7F1344
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Nov 2023 13:29:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53F3740937;
	Mon, 20 Nov 2023 12:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53F3740937
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700483387;
	bh=WFaL/ZaPBz2CQBT7tjVS/VK6HhSRflbSIzUFfztx9+c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7OqWyJnBdc2/MMatBk+ACkTyUZ95BkC6gvWri90gnIHuK2HKIgbqt61YMxRbTMjlK
	 PNyrwi5DDfiEXUrlUzf9PR7n3PbfjbR97SnvlyMQI+F2jsOfPigT/wkpT0GePGA27Z
	 TJQ/xFQ7pflB4uFRnFXZbYyphumsKu5tObe/4nqCubzBmacdpDtSh8HHt1c+I6ovSs
	 Kq9Jzwj08IhRkuBtqN/TRrKn8QALGWBtNj5sNwaevmShOBTP7PBKJeYxxBcCqdDDeN
	 qcZMQ/xWns8ju2OmqeG3jFuw8KAmwCBBb+lYIMGkxf2htv27D1mUMA/aFUxZdOaup5
	 heVGsxw7wWwAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kSsPU4jYLUEE; Mon, 20 Nov 2023 12:29:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C06940919;
	Mon, 20 Nov 2023 12:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C06940919
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F7BD1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 12:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 461E360B49
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 12:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 461E360B49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PAR3x2wbspqb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Nov 2023 12:29:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4046360B06
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Nov 2023 12:29:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4046360B06
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="395537073"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="395537073"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 04:29:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="1097735659"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="1097735659"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2023 04:29:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 20 Nov 2023 04:29:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 20 Nov 2023 04:29:37 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 20 Nov 2023 04:29:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZnVE8oKoqkxVMMxDr96kokIBPOiZN5Uu6AaMOrZB23BTtXRrpHU6XxuzIKZFThdMZ16ZsffMIhIcEHyNHh1xw2ifrMWzvmoaSeCYAwL0wIATABnfAVxrnu5DypgdsnadtmYV1eHNm942zJVtBZwxPoQV069KjEp1G5pYVyDIulPj5vYBSEi+L0U550MBKqy0pUzNnQYO9kuVOgfma3d/K/JmoDP200jL5L7KOc3LdG4nOv+3wSS4md6MNsjHwuYOj9zkDk8p6T29bJMcLId2QCfut2dwDQjvhucvd0XzoLZt1hy1jc75fuIbjZu5D7qRZrgzQnVhqFlSzvguT0cxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0hBhtgMKuWk1HipwBEB+X75ZSbHDlMrYSxuaiv5Omk=;
 b=AmVT9zouzbJPFX168tO6xZnW5UQ9krZpmq0AsPD3qpvefZb/zx2UQtP/HEC4j9zZ/07lNM7sdvmvbvUd2GSr9TQRy4aR9D2yqRx9/8gxUxFXXi3yz4/glvXWXNjbkqEjexQrZRCs04HnDIqnSQN5rdcz2Ihxn4RitopuzM7vhFQCkWVslJ7XTlGfQefBX115ATp6ljeYHG8tGbfxq3Ml29X4lrrs606ApnmaD/wBSf0C9E7YBiH3+0GNFsZ4IolyJ6M5dXrSDHb8VNOUPYliZcyOxpGi28wDKEqu/7E998b78lLDgzWkp0Cod1WgzvSjn+pqYiYSGmTCDjDVHui/Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 SA3PR11MB7553.namprd11.prod.outlook.com (2603:10b6:806:316::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.26; Mon, 20 Nov 2023 12:29:26 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::2cf1:4412:3d49:1393]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::2cf1:4412:3d49:1393%7]) with mapi id 15.20.7002.027; Mon, 20 Nov 2023
 12:29:26 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v1 1/2] ixgbe: Refactor overtemp event handling
Thread-Index: AQHaFtu2n5Pu3HGmAUixdBmIsHXhFLB9nZaAgAWLW8A=
Date: Mon, 20 Nov 2023 12:29:25 +0000
Message-ID: <DM6PR11MB2731A88A046C0D5E28454A8DF0B4A@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20231114091054.68301-1-jedrzej.jagielski@intel.com>
 <20231114091054.68301-2-jedrzej.jagielski@intel.com>
 <64d5c6e8-e163-62a4-60dc-0aec37afba21@intel.com>
In-Reply-To: <64d5c6e8-e163-62a4-60dc-0aec37afba21@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|SA3PR11MB7553:EE_
x-ms-office365-filtering-correlation-id: 0a61b927-9b5b-447c-b832-08dbe9c45572
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VYC3GM4JV30jlzYgvPTN273e3QHFsoe+HB5kIH7I2/+WQES/mrVv/uFa9TEgNkSTsvwZImc/v2mHyZCdMoEbUK8O7jyiBfZypz9J37PMj166eInezu/wAYw8nNmt68JjLuz4XCkN5MK3zS/kp6EKES5fEyateAokf2BNH+SGlduNM0C6vXgo789RDrk1Xwqot5vOiSK6cxwo6mZlFyFe70Rh3aPLc7ELulf44k14UkVfSOl+HtISkSMxc1IP4SnGti/GhjSo2asq3rEfaQ13WVtJWWxMEfp47pVCraYgL6rX+S9NCBWc+7EKLPMqeFHien0r0tDaHFjobV0P91lSASEEZY55aXOfCa2Bh8MItdb/0tIODithcJcoJ1VxJmurXHW534/X7m0V3Q1r/Oho156Gh2v4vwLR2dtz+Hss7KlwEcDvatFqji4+UfSipOAIPyFV1pfMFa7G+TYMRq+VWFfXMlfamgP0uZv0AY5pHoheyH7ar1KPUF0UbDG7MqZ1KCAMuovEHjut7upfEdjewC8fc7kiAbYjYNqztFN0Gb1N9soqRAD8G0DgT6ssCrY63pH/xNfk/lN470/68ACy45+yr0BrKvweEJQSFe77F06YTV2I4al4Gl06EOQMbnNG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(396003)(39860400002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(64756008)(66476007)(66446008)(316002)(55016003)(2906002)(5660300002)(41300700001)(8676002)(8936002)(7696005)(71200400001)(478600001)(76116006)(66946007)(110136005)(52536014)(4326008)(82960400001)(38100700002)(66556008)(122000001)(107886003)(83380400001)(26005)(9686003)(6506007)(86362001)(38070700009)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjdMOUtUU3lPOFljUkNzemFLeG5hNnluMFZjWEowUklPczFhOFF1eVJqNzN2?=
 =?utf-8?B?RFBlSnZUa0VOZ2pwUXo0YTU0TDh3dHdOWlREYm1rQzVoTjBka1AyTkIvc2hC?=
 =?utf-8?B?cXdjRktXT29hWXQwdDJTKzU0Z2J1aWtmNTBqeXZyQWZUWmU5b3lMaGMxeVlK?=
 =?utf-8?B?eDhzTWREb2tHL1hGdlJKeUFEYkhkMmVQZ0VvWGhoQW1hUkNaWG0yUnlnMWRS?=
 =?utf-8?B?WmhkVjhXWk1xWG9DaHJsOWQ0eGNpNEtPMFprYmxySzdlOEtYQVNncXptYVpo?=
 =?utf-8?B?YWxHZEVJcnYyZEM3VWNHNzVLL0xjSnBabWwrUXB1aldHbjYyajVwMklnZ0o4?=
 =?utf-8?B?S3VaWXoweGswdlUwTGxwdFVWSDZWSC8yTE5DYWRSWkUxRGtzVnNEbEEwNC8r?=
 =?utf-8?B?dWgrSTFESG1JeXRyNHB2RHlkZThZUEgvZGQ2OFlsbnl4aVdtellzSjNYZm94?=
 =?utf-8?B?SjAwMFBZSVlTTEU5YlJDa3gzb3QxNmZaOE5mUmp1QzEvS2RFZ1hoZ2xnandD?=
 =?utf-8?B?dWRRR3M5WGZRRHVlRkE2NWFtQm92cmlLdisxc0RrajM0c3Y0cXlNT0FmaVpK?=
 =?utf-8?B?VEVmb1pSVEZBUWlGRGpNdllGanAvdTN6YXVBZERWYVVrbVVQTlc4ZThmbmxu?=
 =?utf-8?B?cFQvMTRIQlFLTEFhU2Z3WExGK2Yrc2lqZzVscEhsT05wbEh4aFVKbjZnRHl0?=
 =?utf-8?B?dk43Q3ZLOURpTXRVNjBtTnJ5M1dPaSs1dW1tcWNFVmdEa3FPaEZCNnovbGRW?=
 =?utf-8?B?QURYNXRZVkZEaEtUa0IwSlV5WFVxeFVQZmxLc09BSU96WEdtWHVuSjFuQ0Ry?=
 =?utf-8?B?T1o3a04vWGhzWjVRWVROZTFETVgzMjhFdDV6d295ZWVlUmorNnJJRGJsZERh?=
 =?utf-8?B?WEFzZSs1OVhSRDJobDBnQlk1aVhkZ1lMQnR6TXBrcE1hSnRpTldHSnpMTk9E?=
 =?utf-8?B?cWhtNGI5c3hmZmlwMVQ2SWZFQk43YnhnWENSdFRNZi9jVWhrRm5vcXJmOXVq?=
 =?utf-8?B?bndVQStXUnJSRG5EalkyZTlBMVJETmYyNzd2S3RyOUZLUjllMkdkQm9aTWht?=
 =?utf-8?B?bGc5NlFVTmhZVW5xcnJURGVVOEJHUS9qK0NvM1N1a0NnNDBiMG9IS3RBam5R?=
 =?utf-8?B?dU03V3lzRVVReDl3S2ZZNWw1TDQwRllRZ0lMdzNWUlBCNVh3WFA1K2kzclZV?=
 =?utf-8?B?Q1kxc1lwWFM5cUFSU3RCNU1ERW55SUxsVjdFaUYwVUpGcHJwYWtSa2xNdWRD?=
 =?utf-8?B?SlF5WEZtd0dFRENsa0I2ZDFxekowM1ZLTFpZbndFZlJwMU9Yb245QitBdEFn?=
 =?utf-8?B?cWszaGNFOWNuOEVoWnpjQWdGMG15V0l6UWg3anBqb0xCTldlQ01VakpYd1FQ?=
 =?utf-8?B?OHVCV2h0R1ZockVPUFZMRkx3OVd1QktJTjcxZlNLL2ZuSDZkMldJdlhDbFlw?=
 =?utf-8?B?TkNzR0syNk4xZml6WTJxYmthcEx3NGtWYkx2Nm5GRzRSM1ZxK1VrbzJaMGht?=
 =?utf-8?B?Z2R2MVcrNjg4Vmh2ZXBjLzNjYVpDOWx3SlBsVDlHODUrbURZZVZJWml2aUhl?=
 =?utf-8?B?d2loZ2kvNTcxMHU0dVVteWhGSW05WnFEVGpkVmQvcnJGOFcyYzZhYkNZRlFV?=
 =?utf-8?B?MmE1RG9yeHVPQldqeElKQ1c3YTg1Z2lvcklmbTBwS054Rm9ucVZCbDBVYVZm?=
 =?utf-8?B?VWFFcm1yYVhoeHROSkJVODBUWUxxOVhTd0VKR2tmUVhuNXNGV1doa1lDL0dI?=
 =?utf-8?B?VGpZdmRkdjhSbEw1b3J0eks2UFNYNXdRVDJVaHRmSUhYS2hWVjdpTUVHVXkx?=
 =?utf-8?B?TGhXYWlIcGc1VjBUN2diRjZYVFh1eDYyZ0FHT0xpMDY1a0tzeHlHN3lkbWxv?=
 =?utf-8?B?WjhBdHpqWEV6cGRtUXBvK2Z3OWU0ZENrQjNjdmtyd3NzaHBJYjhnc0lJV3M4?=
 =?utf-8?B?Vmt0OWttcThnUTRhMlBEcThleis5S3JsSTgzVGhUTFNZYytSd3F6QU1LMVJ4?=
 =?utf-8?B?Z3N4WjNUcnIrSTNhbVQxOW9jQUxMU3R6V3N5UC9NMjdNUEt6eUp3S0tuNUFl?=
 =?utf-8?B?Qmt2cENCUFB2L21xQWw1Z1FjV3JITy8wMzYxTTltZGs5STRhVnVRRllSRmky?=
 =?utf-8?Q?yd21tfMaLWhW3Xnp0qCSBBUjF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a61b927-9b5b-447c-b832-08dbe9c45572
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2023 12:29:25.9274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YavVyOI7usCFgVqZ8L1r+dKCamuCiDfYletAnJEYVcjfNDRahkYcM3FdKr8yk2UMjs2H43fZ28j0l+NRpBrnAmJ7QO6lynNCpx1pLZ94ziU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7553
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700483379; x=1732019379;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a0hBhtgMKuWk1HipwBEB+X75ZSbHDlMrYSxuaiv5Omk=;
 b=GSh3BjCEbEUPt4LeJSHwSm28Z+ya5SsrQi9fZg0GF3bXG50Y9vVE4kCc
 xF508kE0/w6JqI1y0K66TqOuHD6pXg5yWDBE6mH1o1kCEuZndC6UxYVNd
 gFR3nKXwC4WxmDcao1VNyNJ7e2fv3jS/53xlggMYRkSR5MJAGRoXa6Vhc
 GeJvMR74+w7xUorJdFq4Sqaf+9ZEkh5jDoOnKxJUj5rnlV+3ZcdW3wIHd
 vs4EyNiqONesn16beGTQbHE/ZUL1ggEvVhAxa0VjvUHbXfMiPIfJ3o7oq
 zZLQeP9gmIKe1iy0pjzNpTg62WkMK+QbWYhA4TNCkrgvcHsccHyAs0+bM
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GSh3BjCE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Friday, November 17, 2023 12:36 AM

>On 11/14/2023 1:10 AM, Jedrzej Jagielski wrote:
>> Currently ixgbe driver is notified of overheating events
>> via internal IXGBE_ERR_OVERTEMP erorr code.
>> 
>> Change the approach to use is_overhaet variable
>> which set when such event occurs.
>
>I'll likely have more questions/comments, but an initial question. Is 
>this variable intended to hold the state of the PHY as overheated or is 
>this just communicating at the time of the check that it's overheated?

My intention was to introduce this variable in order to inform the
calling function, not to hold the state, that's why it's cleared right
after overtemp detected. So basically it is IXGBE_ERR_OVERTEMPworkaround. 
Actually i could add dedicated parameter to phy.ops.check_overtemp() and
phy.ops.handle_lasi() but I choose not to interfere with their
declarations and decided to add this variable.

If you have any advices please share.

>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 12 +++++++-----
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  7 +++++--
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  2 +-
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 19 +++++++++----------
>>   4 files changed, 22 insertions(+), 18 deletions(-)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
