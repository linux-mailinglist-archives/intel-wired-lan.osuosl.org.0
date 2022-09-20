Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EF45BE3DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 12:54:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7A3360E46;
	Tue, 20 Sep 2022 10:54:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7A3360E46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663671286;
	bh=2gkxpHArQ+ZRBhFhtEScBcorTldW7NZRSt4DJBN2yb4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NeCugfjmMRVOeEN+16zedpQ7SXzpxVa2j2n60DvlJoqO4BVXvwhBzfhcYbmDSzPDM
	 UamLcuLRef8YpwueXpFGYjv1kP8Qi11iJSsYtQsxgiQSrqhbG4g4+O3ufiHlgIHTt3
	 on2b2ddkGVOLUQo9SwjA2/Pz2DH0L6UXldfnkBE0hMnmOf0y7XUCOrV6l8thHq5P0s
	 iHHphHk5LpNp/gcZ4Wc9g3G+aLpqGbJ0Iokv4rUByQz14BCFYaP2DpIyqeQhjJ+Qb2
	 aYers/M6zZhjKD38tk4jB/Y/CF/q8aWQsPKdJO6FsXAjm2MitORBXDKETB9ijEzJUs
	 Cvn1HTSulMyrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u2TrViB7Fsnl; Tue, 20 Sep 2022 10:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF02A60E03;
	Tue, 20 Sep 2022 10:54:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF02A60E03
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9E4E1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 938AB40B62
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:54:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 938AB40B62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGEbDB2vMwNN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Sep 2022 10:54:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BE5D4057A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4BE5D4057A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Sep 2022 10:54:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="282691128"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="282691128"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 03:54:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="947624452"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 20 Sep 2022 03:54:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 03:54:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 03:54:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 03:54:36 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 03:54:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G4930i8igkA9QNUVhL/V1EslvVH5U3hTb11BWmj0IvkIttaQJz/JY2SEMDe2LDBYhRZaqxfNJmhmih7rG/KggGPLLOQQ7VszBvTk106+VDFBCCGg8nQrLf8EKfLpwhhlniGEupnEIKFF/4xZjBXTV4fmamh8UrHkxMO/FP3hC5Rts9j+YlgyLpZ8QAYQkvqCBghCIpTcKvh+r1wM/FMYFquI++Ir37MsngAWzTkqugbts2mhNf6oxyvLjxhERUw7Yj12HGWkfUmjnh9hhz1nafv2OOdHomnszCpc5bFnBBPQqlh6L5kITms58Mv3vC+TafEZlpFIiesv8NUGst4uOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yowsReLMrMKnUg4kjebCCb1/lEUB9JJHS9BdU46T9kw=;
 b=hNsrtXSkUvOXUoGsVYjXCB+eo3cyCIxS+S+A3+r0eg9LC+H8KzBG/63EP4v1HGiaAd2huL/GP4r03lket8QwYH2iyUoF8MIo/sz9dKnCwjymvtvUuUeFtjccDpA/ol8KMaEZz6KIkpreA7Dee1dgNxkqfHHtO2Rxsg45U/3Wsrf/HGaplMw5QcgRsG26OOnkbHMZL1hDGyzRRfSGNXFfIm8AlmD/UQ4gZ44PM1W3ILavG3G2gj4/mzGQPFoi3kjXxdm86HgWif4jmpULiSAEw/JP2lEzdnaQ69Gj/O7TlkVvwoZ9lumfztu5avaQZe+tAedHkfpTyPqSeCTBKLkgVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6851.namprd11.prod.outlook.com (2603:10b6:806:2a3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Tue, 20 Sep
 2022 10:54:30 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b26:8c78:fd62:300d%7]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 10:54:29 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: support features on new
 E810T variants
Thread-Index: AQHYx05BKc7DeSC9c0qxIp5w2720KK3oL/mg
Date: Tue, 20 Sep 2022 10:54:29 +0000
Message-ID: <BYAPR11MB3367187F6F5E176C04C50E19FC4C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220913085139.8581-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20220913085139.8581-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SN7PR11MB6851:EE_
x-ms-office365-filtering-correlation-id: a1a56fb6-9ff7-4bfa-0b2a-08da9af67e64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vjXybKABE/08/oz80xWDId0p2suiM19uC4K7Uqa7c1ZOkpZ22Ot4tq+yrDXSFtkjKOnasBhPYlibhBOUNVg3JEzDm7t+5ej4ihFTWXgY10Q2IpXjwk++yfvnELjUrCLra01p6GDX2eS3bNqjant2UBof/cTXtX3vOkwr8BrEws7EezUSXFZyK+9ahY2DyGPPh71RBFEvzRHZ7/d6qkSLedi6w1hRet1maMF0rWKlBU5gA5nhbFMBOuuKczhmgMRIFDJwUlCWq1vquwLTNqqCyKJiASGbJV5aEVU8Gu4z3eTI8RGRWUSsHP7KaA61m7I72lrKMMZGwpf1Q5WAzj1rTf7E9BIRS5+1sCsAvZYRN+wEibq/igSFwt9C5Hhdf7W2EgF0rDaxFgJfJBBOp1kJruz6+BDKsE53fccLQNM/kMPaIOY/+ewxkF0pz467GBwMJ3CP/cKmeJcIrVxx4oiL/RdRvPs19v394dBXtay7QA/anXtMe+8f1Mz+AMPQ76ImfD/pusSw1MPEc+AW7d1mSJqnMQrTHrSlldJ7pqQFi/pQ3idcj1C6l5TLgNQsy2rJZSxiCjcOu4tis11cvsKiyaMQnhxttatEjyFtRv5aK2uAi1uhCbdtu/3qqQYiTqtFlxixHY3FLpECATXlJZBPB5+9I9e1Kg5bCywuehzp8IlXikSTi233a0UOv5GGzB6LepCuewOfEwzzjAyP7Y6Mhlli9pQPUQhAsfyatuvQz/zxDCcBesC5I5sWNdP568SG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199015)(8676002)(186003)(83380400001)(38100700002)(82960400001)(86362001)(38070700005)(122000001)(52536014)(5660300002)(8936002)(41300700001)(66476007)(4744005)(66446008)(64756008)(76116006)(66946007)(2906002)(26005)(55236004)(66556008)(71200400001)(7696005)(9686003)(6506007)(53546011)(110136005)(478600001)(55016003)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3rmbNqKO2SmnKNTkNSCaHSJ4osrbk0l5p3vQG9LLOB735i9hz1TmGjk7A3QC?=
 =?us-ascii?Q?6hLbBc+ElqDIbKZ1+gS7/8rvkrnL56PniRewozyvnaQtHYeGnES7/mQIkzLO?=
 =?us-ascii?Q?MpEuU17akXdGKtilAJQpCmhzl6nuLfF8wQa5dtHaNz2LQvXTyB4MSzWEqA/Z?=
 =?us-ascii?Q?cpkekpFqcFZxDKaaDcpOCJDqTCoOQ8DkESYjTZs/0Xwyrs7Dmim/7R5rfn/+?=
 =?us-ascii?Q?OsoJFxbODHQBUPqB1i81oMut5BAB6fRDqBJt+tMr8mkFtrWq6rCCEoAD0r+K?=
 =?us-ascii?Q?JhwqjgwqTb5E4slgBnIvEP/G+AP56nO21j+NPQRJ1tEDgttfTk/IgSmJrHEU?=
 =?us-ascii?Q?DPofqYuuhxxsbllRWoO41GOW5TbsYTAfxdglwBBVaBI5GVJiMO2d0LfIJMFH?=
 =?us-ascii?Q?IgwHUkMWb2LRq2k9xtJyQGauI1+j29JVTasmU+KI6hbZiiQi8VUMJqnbHPLs?=
 =?us-ascii?Q?p2WFdK3TV+iSzqGwP75UUalRqH7J24b2wsch0edBcPUOMds91aZelg/hhQYT?=
 =?us-ascii?Q?22p+5foReFtCk00khJLUfkiloqUTRG9vdXtf9MI3fXSZ+CQBuOqz+wZLWhb1?=
 =?us-ascii?Q?lZUE2tUgAF8Qg9XvqBNVuA8J/n2BRIcUnryPeE8IjtPS/T6A+ldcguQt9aUg?=
 =?us-ascii?Q?PXVQTvorzVzEnaH6oX57YfztQDPY0yoS8b1MG5sVBHYmgKFYkQLOwa919sL3?=
 =?us-ascii?Q?saYhrGMNn7IFycb77wziepaHSf6y/fQT0cxxfr7Sp6N1LKYgO23H5cIgO6lj?=
 =?us-ascii?Q?JoOnFGeHoHAwiLuAOMpBpBxJiXzRZ5f9Jzg/7DmcGhyohx8kHZKUh2jcrTPu?=
 =?us-ascii?Q?VN28grXfPWlPbVJthz8NTf3cfv+wK+cgAhKylYj4AIDSXPrMbZODHvB6BBYj?=
 =?us-ascii?Q?74OfpgUtkXcW+NEjKsjfjty34IS32DSJB+R5UQC9f1zCYr5nRsgMtzvlsvV7?=
 =?us-ascii?Q?CHdCGDi/+x4RAP8cTGGDVD+v3YpjWOt5NWVZ+7Rmu1iwssUILIXythKi106b?=
 =?us-ascii?Q?q3P0h1MDIsAn64o4GH6ub7ym7z3o9nBb9syOi+xu0kNhOnF2cHd4C5wq8BdR?=
 =?us-ascii?Q?czLKNo0wJv0TNyV8XLYNoMncsbyxY9BCDqRIFTEBfzW/BxjZjBnjOek5zbVG?=
 =?us-ascii?Q?PhrNvORNSKE4wNDn/EeJKDk3R/SSR3SRa3lxQsSU40ZbeRnwxvGYEOpF274G?=
 =?us-ascii?Q?ph97Uv+saQXSUanCs9jvruLIKQj23oEGhiys1RoYF3K73KechU3t8/2Llv91?=
 =?us-ascii?Q?XvxEaVpGOCrV5NdtDchtudd8ebH21aZ4DkYY7vtSr/Ivj5NKrnIB/K97GCCR?=
 =?us-ascii?Q?JmoG4n9kMtUqknyuydCJJ9+c8VlIvZwBIvd9KrEeSwOzXfG3fFY1bocZgQLF?=
 =?us-ascii?Q?yWWDWRNAftIYJEjueBxilsAgtrkV5tRUCUbabavY7B6hWIUzzMl90UQc+VYp?=
 =?us-ascii?Q?Xonbk/uNPp8KrAcQeh2KaeADk2D1jVmpTWvuqxQPzRBhGeXytsROIihuO5S6?=
 =?us-ascii?Q?lms3D6PKAjXRMe7yGwZifW0QtIEyt54U36IGDIyzXFR7bmK/9mhBjEhYM3IU?=
 =?us-ascii?Q?Fw4wPEqJ8Vz1NiVL9nxBZ5V1dwvlHbtbm7mUPM0s?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1a56fb6-9ff7-4bfa-0b2a-08da9af67e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 10:54:29.9308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 17t4uwtU8ZTKREqRA0Cnnvt1R3t2cpKqc0USDSEqOoo1MaHwye1h46d/pt83FJegikZhOsGEKmF+domSeaWPaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6851
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663671278; x=1695207278;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jHeuTye5TaNyRut37laWQq3M2lnHeBxdOUh438q7VpM=;
 b=eBcCu7rt70KyeE4Z8cPpqy4/h6DBGWRQAOwNEdQeh6LbSPw9A9c75BYB
 29YpX92PO6SrDuaNQmOd4IeQufugwkCt/QT9eAmEEbvtIFvSouCJcTTmu
 QHRiVDLlWO5id+j1GWtLkvODJ1Y03HKeuedd/pH0hr1PgtZcxz+Li1dZy
 hKuzpsrHt/cW3kimelhVffD8uYR2U5WZn5VyAIQ01wDrQQuUmutfVy4TA
 oCwpjWXUcSKoZ/5eyqCbysKKlbVn599LOIRr/pdt1R8rABK3H+Lwxn+wQ
 OswQ0uTbCtaJSRe7m8Nq9+Y0kod5vdqErQsenjO5BdIP9YCH4Jyo+brLX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eBcCu7rt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: support features on new
 E810T variants
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> arkadiusz.kubalewski@intel.com
> Sent: Tuesday, September 13, 2022 2:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: support features on new
> E810T variants
> 
> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> 
> Add new sub-device ids required for proper initialization of features on E810T
> devices supported by ice driver.
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 18 ++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_devids.h |  5 +++++
>  2 files changed, 21 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
