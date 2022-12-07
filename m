Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0194D645601
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 10:05:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63C8281FC4;
	Wed,  7 Dec 2022 09:05:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63C8281FC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670403915;
	bh=cBtWfzS/Et21b5179JAbmoX1+y5u0a+dCz0wEC1skWg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VnKR7wNIe/kTfEA6KtHrdojszl4jCSXONSNwgo6sX7G+R+0kEUOD/cwOJa6uV/ZxO
	 KpdjOnKnF3X+2y4eNtYMjMdRyV7J0j/nwq6VNIDdYPYTqVW4vNf47qDJxrtipenUnT
	 5GL5huxWJhLlh/zGH4tAb0wATwLV7U/guj9vXsTztxjy2BzL5jk31Mnxob/hUC8a2X
	 A9a2fPy4JmYwiqRcGAO6pdNhBHeYMNqI2mzs79nn7C78Nwo+FXudapSdT7ZrVPYwVH
	 1VWlG5zPrxd1wx33nGvVm/VvEP7e+t+1FNz1votufuq0kecG3QxEi9mziJErSiJiDX
	 UeecEOihgaCbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUkF2pzFndD3; Wed,  7 Dec 2022 09:05:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E68281F69;
	Wed,  7 Dec 2022 09:05:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E68281F69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BA5C1BF327
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:05:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 243BE40990
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:05:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 243BE40990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lHsuWQXuxgOP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 09:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6887408D6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6887408D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:05:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="314489218"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="314489218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:05:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="677291950"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="677291950"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2022 01:05:06 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:05:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:05:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:05:05 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:05:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2UXTI4SLLBYUP2ZwM4zPXm56q2D+ltzVQkW8vr3Otuo1sHnJovZ4RFr3KY5wj7TbJO8RfJw9alh5MZGHDShk38mOcveKFJ9lqK96I79O4Zr0LmaxUWWwynpOayQWiafwSBqRQRZv5jA2C+CwzsK399FCpDj7EgZbdybACyZE4jlOlJpQqE7IeCXcTMzBsL11zMYpd5b+eNSTSopAt7wOOq6GiMS50q5oppV2A1Xx+O+h52+DJDCNLsIGiMLbf5RNMd1qb/PR1GE/9E04wnpmJTr0K/KGGRqQlABO4Szb0dReMjPy7cmpT8iRFo68R2baVUVpQ83Gr0jY4RCrtXE/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHinW0Q2UKShV8i30KUT6NNwKM+y4hTPD34f/G7xo8g=;
 b=em1v7jGY0zZSzKfaEj+WInp3azV3zKgDWUpCxn7ZUc0rZTl+7As0miIBm9yAaM43VpPqhE1qCemhz/5hYf3oZWYizjQoww9bvh8pAdjUuziiSBjknFe1RfDoz6KBz04E4MMQl9FmqqJgPmBU/ebfyp+tuIlP3ckg1vYSkslH+wWDGKYMzIKpjQUC+CrpZecQwJCk+LrfICctuR1o2+1syicx8F8jecRCp5Qj7Y0fh3lvo5dCa7bMWEl11nOv8kkGgDXAL9tOTf0zL48oAaNt8S+6QZJzScD0ZYnHLDns+rhEYa/yQwgv1G1le+hPMda8cNGRt3k1FI+5qzHKFpOWxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by PH8PR11MB6902.namprd11.prod.outlook.com (2603:10b6:510:229::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 09:04:58 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:04:58 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 08/15] ice: synchronize the
 misc IRQ when tearing down Tx tracker
Thread-Index: AQHZCONMI4fPzGtMFEe5iu5bZtEs765iJAtg
Date: Wed, 7 Dec 2022 09:04:58 +0000
Message-ID: <BYAPR11MB3367F774CCC02F405D3135F2FC1A9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
 <20221205195253.2475492-9-jacob.e.keller@intel.com>
In-Reply-To: <20221205195253.2475492-9-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|PH8PR11MB6902:EE_
x-ms-office365-filtering-correlation-id: 1abbc15c-c692-4a8b-5f02-08dad8321db3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S6FdPnXRcqmAfL05hbJGIaE0YaARkfHDQ0nHvd9lyYdVc3t2I4C0KMOzqoXcFX98tW53R9tTF779nE4NVXTaeL7f2j93Drsyp1CgaevpEJcnuKx9Y6fPSDJCCF/WeGtSzueA4HISmQ2to7z5Hl0Q7ClajPfqq63J5AyX0vHYI3GBJovSFXDAkjQnVyPhgZHFOSg78/iqwsbQHyuGOfaH9vXeatB9QsKngKPlDud+JAfnu0O02RN0gZ7p3RIvcyCcACk/XmhgmXKKhgcQkmV3cmUOUh+cbJW55wgQ1faOdhKm0dK2oklDrdAgm0er9EdMYiBOS7pig0gN7g+bAvMoTNsd6figHkkoD1grrLmeVVJ3Gl/I8Tb/Qa5UaYmNaZyYAWfRZHiwPysGEdRR+kXxglvQVF7R/3tos/8dSXxjRKG8cct/g1ITUKmksUtLTJllV0DLNRgPMS9R69Mou9+9kRS47woa3fFgsOLAm/Pb1AZh7XIXvmr0PwN+DX7pKXRw7G/ucIkgVQopke5R2H4W4KwaKYVkmNSZnc/nB9P30yRb6El7M5si6WUoAzV+38nn3eOgakXawwgU/QkF/4byxVpGDdn3lVvRAGC7ebS50NPkhycI0660Yrd0/mxPVHd3rk7h1x2HBcrUk+DO8RXhKKJIGhBleDj3func+B+O0yCETBwTplPnFGRfT3pJS6QY+szJyLVN0EaVo4E7LhxMVrd/UfEMLqa6JUknay6EME4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(39860400002)(366004)(376002)(451199015)(186003)(110136005)(316002)(966005)(71200400001)(478600001)(82960400001)(33656002)(55016003)(38070700005)(86362001)(38100700002)(122000001)(7696005)(6506007)(83380400001)(9686003)(26005)(2906002)(53546011)(5660300002)(66556008)(41300700001)(66946007)(76116006)(52536014)(8936002)(64756008)(66446008)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QfYbcM4WYUh7CPrxCMX7LRPhmuixazTWGoWfWFu4aI1q6k3HKZwlAsr39zT7?=
 =?us-ascii?Q?4BO04xm9rcS+nSocgzZe7xrMq1088MXRn6c/ADW0aYa8KNxQPCEFszhJ2M8U?=
 =?us-ascii?Q?3P7bEltWqK6RGpa4Cq7/wZotJAnEcWAyO9AVbcU771ba/HgC4NfmRg23XAYs?=
 =?us-ascii?Q?eBTptDbxBFwbAn7CeztpwNNLipXgi6oy5qWZurtSuC4xcmiHCImLaupc5MAh?=
 =?us-ascii?Q?yfvsTybAcHznRe9kRJ1a8/MRxfygiDVroI73bm7moYHZgxd+N+2wyeP5kG2Z?=
 =?us-ascii?Q?ViDgL+d0YZtIDOszb+19zTTE3Mw2OdPltP3I6xX5l3ej7zVEQK4uPB9EGPUs?=
 =?us-ascii?Q?Q22IZS4reNqKOAaCmnkcvaro/3bIUghKsZ/B19GMqzl0dI8+Qwknu+RiMWq5?=
 =?us-ascii?Q?gRgsBkaz3b/QNKqUwgQh0Zf84EbkCZE8SZwtgUbB/XHlpO2LZPI5TUNzihCZ?=
 =?us-ascii?Q?WCsCDrMB49LRUWEOQW0Osau4FlJGjLiiKS72nPDBQrDmE5YeujcLcCVP+jD1?=
 =?us-ascii?Q?BYSuGBooxLXgZsz+Bkz9aLYVc1zRJuznMQJztwshVOKNO0qjudSkSgtHi1r/?=
 =?us-ascii?Q?F4RdZgHpOtslb3OYLDovIqxOvXDNCdUK8mjjyE5XmNyUQ9h6uK4Ve4XzU11Y?=
 =?us-ascii?Q?GYQsSS8f2GLe4xo2nsBlWsF4L9WdrNz2BeKEXoGUbOBXpKDsps0N0GsuAxZd?=
 =?us-ascii?Q?F1fmqP7zkTigjHuQEOlURBAtLODz27xWxTcv7ag1Me7Ubev9oWNpl3DHCCYC?=
 =?us-ascii?Q?bSYWi9cUchEP+dhi7Q4odwjnr/4ATXrvkD047isU6Nj6Vj605hswlVFIJn35?=
 =?us-ascii?Q?mfyeK7QAG2ME1r0CSybBskKjy14nMf5BBe+cPavwF20X2z91XX26uiQDRILG?=
 =?us-ascii?Q?/uaV29iFSNtdZJJ3FrdEaxA1vNqqID7yYJpqSLQ3t2VEBocnHnw1nwPIaZ0q?=
 =?us-ascii?Q?uimK8DcXbnVgRYWi0zMEqG36B6o/P9GGxYmi/nLB1V+y0Ohp84ab1IAT5bD8?=
 =?us-ascii?Q?I1bQkrtVBBDWRwD5SG0CJBr/g++1mOhM2aDR4/QavP4ysS5ozFrFyVQkyaKB?=
 =?us-ascii?Q?dfjq2NWfLyiZRnPhS3cDllAJCCKpSWyFGUGxRNDfQXYO/YiEDEd7f/tJMjdh?=
 =?us-ascii?Q?yz6uaGMRCM957GgIjaNOa72qXZmIAo8HKtpOGtUMNupXYdzFSQ8yWYVYyxYa?=
 =?us-ascii?Q?8iip0FanxBwISrNfuhIDY1lg8yhmXswEc71VECwdaV8w0QpsEaPHGQX84B+v?=
 =?us-ascii?Q?GGnv1d3vMORKnnRgXChxlO+tsz7dzuTlyZyrM0NcWCuuUdedppsBsJeQZEMX?=
 =?us-ascii?Q?Po/I8on8AhrDGzrgeKg1+0+AW7FgC+Ag+2XUWL8p2DpipwGqTP2iz3Hh9rBP?=
 =?us-ascii?Q?nroO8RJRUNLl+kIUc6RGQE22JE7tmu+Y+GxjdSj/NBUTk6QSVRHaUVMLKmNw?=
 =?us-ascii?Q?L70mjMW2tHNgac+WJB8MKX+Bbxht6DvhBwPsnw3hXv8H1cDcomZ/CyC3u9Nu?=
 =?us-ascii?Q?ctt7YD6ZNlUU1peC6bb9nTor5xzLx/xi8zLgNY1CEieSoH7RfNYAcI7Gyy++?=
 =?us-ascii?Q?lJB7xERbUAvQnrxL/bL1W92Jq9z0YSvF2//7vEb/?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1abbc15c-c692-4a8b-5f02-08dad8321db3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:04:58.4136 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BzCSqiX8gpZW+QNCtkSTr06F0d4QKIRBcWPzLVPSakDscE7aJRGdIfxxEe80fSdA8htPEU5pEHhtfvu4ZAbbhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6902
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670403907; x=1701939907;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wY2NIrz9Bdn5KdBP/4erLuEvcjdYkRrpj+OUSqqlwGY=;
 b=Hf/OcdKXXEduNuFVkKnjM4P0WISrCZxerwDz16gWH9S6dO08qczmB/tF
 mPKLYHk1nz2rUbqF0TTnYFxzJn5dk0JU6INCf3JroZLAmn15meC52OXW5
 PAvAiV8rx3G4wC8WJSfMoHSW1rJvulNQ5B2eDiMERTsAdLM6Hh1SD/jjK
 ZX5kajGiHX9GfyY3p+SYwKRurUEgKt7LQ8stV9SFYeF2KvgMHZBHS6p0k
 HB/dezwp/PrExqJCSI6ETffrw6+WObWvO1UwwobH0VTnjhKyUqRhNFIO7
 mUJVpG+dNyG/Ge/smnJuU4+AQ+kefKizIBL2CP7V/L9gnbNLsrsWElKfK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hf/OcdKX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 08/15] ice: synchronize
 the misc IRQ when tearing down Tx tracker
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
> Jacob Keller
> Sent: Tuesday, December 6, 2022 1:23 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v3 08/15] ice: synchronize the
> misc IRQ when tearing down Tx tracker
> 
> Since commit 1229b33973c7 ("ice: Add low latency Tx timestamp read") the
> ice driver has used a threaded IRQ for handling Tx timestamps. This change
> did not add a call to synchronize_irq during ice_ptp_release_tx_tracker.
> Thus it is possible that an interrupt could occur just as the tracker is being
> removed. This could lead to a use-after-free of the Tx tracker structure data.
> 
> Fix this by calling sychronize_irq in ice_ptp_release_tx_tracker after we've
> cleared the init flag. In addition, make sure that we re-check the init flag at
> the end of ice_ptp_tx_tstamp before we exit ensuring that we will stop
> polling for new timestamps once the tracker de-initialization has begun.
> 
> Refactor the ts_handled variable into "more_timestamps" so that we can
> simply directly assign this boolean instead of relying on an initialized value of
> true. This makes the new combined check easier to read.
> 
> With this change, the ice_ptp_release_tx_tracker function will now wait for
> the threaded interrupt to complete if it was executing while the init flag was
> cleared.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> New patch since v2:
> * This was pointed out by me as I reviewed comments from Leon at
>   https://lore.kernel.org/netdev/ba949af0-7de6-ab12-6501-
> 46a5af06001f@intel.com/
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
