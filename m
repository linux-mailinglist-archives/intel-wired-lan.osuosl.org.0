Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763426B4013
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1645E4037E;
	Fri, 10 Mar 2023 13:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1645E4037E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454308;
	bh=qYNUHnDNupgi7pgoRRZ4jLYvvLZ0+IpVeXhPkOGX01w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RfYuEi+3tytDs3MmSjA3FdQv5TUqvEFf0EcToGFWNtmKnETiOHN57Zlg61oWF+gaF
	 /l2YJyW4sG/ZZXjVhTKT6LSCzRyoOZ4C2pKB2Fn2KE+ivqAGpiFyso6tqV6GicTNhx
	 ZUQCnR1ebDMuGIVet4tKzaqpf5/Ibogka5DGZuo3aQWqW2kxRF62WRnxWQFss6Nxl+
	 ez5B3uMTpxIpdoiTEm0WHVuD4DY+zwF1Aqs74S4I3fI8NQ6SsHA7gHn1rw0V/g0e4G
	 iSJRN7R1lEG4h0EVf6yDiKo76c+VZLKHR/s1am8AHXySuYJ9nVR4c5PxreMMAtiB5a
	 Z3iMdiBLGRsjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e5R_jgfx0MDE; Fri, 10 Mar 2023 13:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1247340374;
	Fri, 10 Mar 2023 13:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1247340374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D72B81BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ADD0D4193A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADD0D4193A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9L-0Ho4cwhCE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:18:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C75641936
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3C75641936
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399323720"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="399323720"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:18:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766825913"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="766825913"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2023 05:18:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:19 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:18:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlkj1SBNYhbZ9uxuGz6yatyOrCFLNfVWn4yv3bo6oROlbowuPFlkpX0XMHEJES+RNFBxY/4hUSSrBU78FSQ2G/fegSfWGzgpU1CE0Hn+fuSkjXo6fx2WPRqO6ZQMRm5KgvjcAK+y40S9PWKUJ4iTJgV53zsvGAJLE549ibX6ZoPf7xTK1IOXJF7q68Gh+s1QvmLjQGi3+/MTfEqB8MKbJr4GD866ntZzvmvZydJD5pZ2X0FAkXMLenmZf01UeLS1d5M7x++eX5YhliZCAqJ2Rq7Frg72kF8HjtChFSp6gkdOGbgFFCxwFQIx402vWLBj9QoYOusLQAuri41o1Gi/4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMni/+JSgxD6OTdJQg7BISn3EUyUuZTKGeN7lSFmV48=;
 b=lSXwU0gh/wd/B5a6flm4x8h3yDCf3aasH/KrAmHazo7DguxGT66wQH8iUCZ4Q6NU5GWGk3VVDQC6MD97rcydsFzJnAPczhvu9SQe69TvbX8hIqFApXexKxAj/KJs7kSJqrdnYne4P/K41LZW1crJ57q3WGMgSk1IFZjDA5qSalTBV5Heg9pGg9VzPKtPiq21+ifgCI3IHrHoAEEdDdj/IZ74Rb67k4+tD2V6v0NzYGqzEO28jyKyC+0CTFUcJFsk8rhbAs2uzjIKgj28c8Tq8xrZr7tF5YCXAXmg6I3GnJFhoVzDHMeSb2o34H0Zb8kPhb/uzLa5TsDaBMNulm15Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:18:17 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:18:17 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 10/14] ice: remove
 unnecessary &array[0] and just use array
Thread-Index: AQHZRuHCB2oNwzsl+kulfkEl/AeCRa70F7fw
Date: Fri, 10 Mar 2023 13:18:17 +0000
Message-ID: <CY8PR11MB736431DE44B584C117BCF367E6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-11-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-11-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: be8d81fc-7fbe-4376-985e-08db2169e979
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9k2R8YWuDWfZQU1z7vhrWY7qh842Bz/TE+jiKGUgAVqLIwQFo5bIbaHyXtEhFgj8Jp3+50QKwBgmhRWTQwe0D6tnzVbf1KHCbe4mrEjqCqf3jH+7+ik6MSq+MFCj/68Ee7sxUfN0vSd2cS8uo0+DAO/eM7cq59R8kzjI+F/N8VXXGpvrL1V++kSFAmrkCpAMpynmj3QGAIdF0uKPhmfFKhRUZRLnbZcwVBuxygASi+KNAWhkwRXZ/Xge9UF5n0UHk0BodwlX+Eej0/+0uMTMWHBzeLEEJ0Dm9N4ykiHgF1xW0HZw22NkXmBP1voKUp9bfw7HiX7+BPCBWxViY2ftYaVMpL9d+w7tHvo8tq9biXUKhLXCuOaaPkokHUjiOOI88EbXX8BNKKI3DEtse2lB8e3FFjZ5BxeV+TqizdPnbEswmlcQfOO8t0erEBSg5wLrVVwuWxbWEAJijosYldcquB6BCbUuTHh4RPjxRbq7g3wJkO7iF1b8pwpVaItf9YGl1yycjTVMDWsVmdleSxhvoCU+hwamE7xmT/VRaL4B84/AHea33EHgOx5nUxeV5Q/DxNUBU3bpdsstVaNAggduZ/9ydx2uRrmhSUblqPOusVcspnoFFK1keKPICuUTdOgoWb4XF9DlTDWYb00pA7JkDtlq2CwdKDyB0xojMja8ImBdkx5klThNVqSOfk+c3vm8kFBXR68YaTe12hseSZV1Ag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(76116006)(8936002)(5660300002)(4744005)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?cDO8lq62MN6LCupcWAzHOtnwVKCoWcGPtha07m+0fLtRgdNbXxRdjPIrBH?=
 =?iso-8859-2?Q?nF9d97atoBdXyPLCfGql5L7ky7Ba8H22KAWf0m/l6Se3UAXnfSCAyEAwM+?=
 =?iso-8859-2?Q?AfwYWy8SavkZTRkoIVi9wxATfKQAUfrtaZtceNmRlzVl6v6+2UK9Ds+Q4Q?=
 =?iso-8859-2?Q?EOeZhLOl1q3rPUtzXPpEds701K7KofqVqM6INf6e2UBnOQFJiqFCXiI6iI?=
 =?iso-8859-2?Q?DZzQaicEqi6cVo4dwLZmuzRT7LjZ9KIMoOLBrkKLO97XdjEF5g7AU8YTuH?=
 =?iso-8859-2?Q?MDRg1bFd8hh2+bUZEtkJqNQBQinLBJYKV3a3WtHzokoUgef0LSaKd+ZYOY?=
 =?iso-8859-2?Q?+KEoF+Ru6yhr7A1+Pupqr0GpD3WZbAuTMO84gJ2CCnNCTi9E6JGejcaleQ?=
 =?iso-8859-2?Q?/ZRyyyMN9V4EshYjknxLE9JAcNTWyrwJHjYD5T0ap39XidDVYfNEK4DjkI?=
 =?iso-8859-2?Q?GDeQsTAlydDXVOQebEsDGzFMTto/DCKNcxC85/j5UGLT5i+OLJu5qVUy7d?=
 =?iso-8859-2?Q?mERgm9oElCisBleyXL5BGPnnKhgdONhCqxeYF79E2Zc1/ZiWtLhYqWaq3p?=
 =?iso-8859-2?Q?1NFV612k3Surg1b1mG9dnL3zSMJErQiVQG9IBF2U3Rsm3gIBFRpnccc1I+?=
 =?iso-8859-2?Q?IwNyR3+KpdMF55juYSqKYEGlQ7uRmcMftlu4V8UysQlMilNxF3W6uACH75?=
 =?iso-8859-2?Q?xjkZfDy6mhUlq3K5IwspBfN+uhJQxDvsspvQn+gXMPF+H4ZjX0qzV7bHS0?=
 =?iso-8859-2?Q?comGakjoDrl0o50d5LK6Zm7N9b7a8NZVWBUWZn4TiTJzze/yXIJ2Qy0kxy?=
 =?iso-8859-2?Q?vSlWLWlJg2xWFq7/7Qdawwtuc+SjpThYVlfagfzIHq3mwaelVNDU2TjkRs?=
 =?iso-8859-2?Q?cD/ysz9uT8PNR7jlv5dv+jivaKl7kY7ERisD5YyIsp3G1wB2n/j8bNClYF?=
 =?iso-8859-2?Q?j6M7fomZQYERb04a1RhtcBZfVAZn5CWen7x3ye7hf7jPGwUeibSZqZt2DL?=
 =?iso-8859-2?Q?+EPxN67rK73y7V2aX7IclqnE+ZVefJlYyyn7p6mE6dniEP2SykHIgeUwUU?=
 =?iso-8859-2?Q?8zcl3INFKiBNBpjPSqwZcgb18GUuvZFBA79XXH6turQzgMo9IV/PCUtlfk?=
 =?iso-8859-2?Q?IDTdqOtO6Ml4i+y8Rl7+Ka2ustsUTRNcE0WkxqZbtX0XRgQhSpb0WJlB0+?=
 =?iso-8859-2?Q?ky+4nlvx4VOBdvdImPtwWKaOvCEMDbYgB9xN8NGLWL9ujBRiDKYSWfBCKk?=
 =?iso-8859-2?Q?hz9VEoF2V1Hbq5LJBjksIjyqP9Yhiec/Yv0UgiVo3nQK5fiCC/zF+j42C0?=
 =?iso-8859-2?Q?7kOYpuWcgm0m+UyT9Wy7BUejMsZ2ybXzG6aFP3vkjv/85J4uo0Md6U0ywX?=
 =?iso-8859-2?Q?k8f31gHU+akDDgIO1mNTdWxe6hxUmJQsVnigWcgZSJV+Yyf9Xn0eSuegdx?=
 =?iso-8859-2?Q?jsVyUxrSVkcw0HRqck3RGOqHNsfstER1farZ5ur6S6f4+fhShQZkBjf8Sq?=
 =?iso-8859-2?Q?RSqaRJCwTtnAcl51JnmtfihvGpYIoGAvT84F9bjy1gitcxmZeZ40CE9tWC?=
 =?iso-8859-2?Q?UsbsL3wbRJ4zPzwtsiVEddw7AtQjnn6T859hUMTu5UzPtNTKZ2Hmsz7IIa?=
 =?iso-8859-2?Q?R8K2IkScuVvyOOn2bOsr11g81EKYBpT5WK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be8d81fc-7fbe-4376-985e-08db2169e979
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:18:17.4931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tq6OI6YQ0Ol6/RpkCsFFruXLrl8ESRcyLMWqhhbeRrTW5TR5c6i7eOK3VCVig+TUAuDR2nEVbIrDUN9syFg+hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454300; x=1709990300;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iMFGfYaTrqYUvIgr5A/NeAA+jwGArpf5u2l4zskixeA=;
 b=esEQQgXaXzuu+6qQlY5POziNmY4S3RrI/T/NuTiQvZBtHIitcQjrVj8n
 0qN8GnnPCCdz+stFflCl/XE3bDc5oDNYKSbfo+27aIk04bQsK932yCD08
 o8lFr9ZLd7V8NLVZ2MEqPB5EETiWqOLfnJpH48/OVREr9HEIRK2i168RL
 zjU5QSQrw5spF8CLqrV1GXHjYsyndYz0LOmyRODGjphRZ6O4GEI1duSFa
 oCZizHZ7g6wbF4KFqy4jXno8TGI7DPBiDD42mpUurwxZ9YP89h+6euxJ8
 nZ5eHCp9St+4+pPXE9WcqbvvxdgosK6ViDNBYi2gUJikBbC8Kf8hVUUxj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=esEQQgXa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 10/14] ice: remove
 unnecessary &array[0] and just use array
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 10/14] ice: remove unnecessa=
ry
> &array[0] and just use array
> =

> In ice_is_malicious_vf we print the VF MAC address using %pM by passing
> the address of the first element of vf->dev_lan_addr. This is equivalent =
to
> just passing vf->dev_lan_addr, so do that.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 185673afb781..938be486721e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
