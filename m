Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3664D72A038
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 18:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B54EA4031C;
	Fri,  9 Jun 2023 16:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B54EA4031C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686328357;
	bh=CZFef+vcxj+7aytuUU1/5wLsxwFqaPKQW01Fq3of1vU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TyBM+CvV6LUvuI/V/620YTzbGlK2cnSG3wmLXZZ4Qe7h9aUDvnwMj7h+QXR7vlxXC
	 adNZLkjgrLx+rq6g9KG26goqOFqXIkpaALJI7+OnLejLezctN1nCVbQFU4Gjcz6EZA
	 nUdLYFxFafk+G6lZgnP6J7JLsuOViw6aYpsFYl6e0Lu69/DSMU6DdGWPnAsiPLc8j4
	 xnRziQwgllwzgZuwv0fEgkJihf/mQGmOZtqXXocmutmaK3w6b9Ckk79oUGLOZpRHpK
	 DgIiNujyr8BW4rpwywYvTOZuxdywzghI+LcWhHcxQjoGKf0QKgbvGNnp6yHVLt6Msy
	 07+e8gawlPRaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v8uyR01trZ_z; Fri,  9 Jun 2023 16:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67F5F401D8;
	Fri,  9 Jun 2023 16:32:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67F5F401D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1E1E1BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 16:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5EFE60C33
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 16:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5EFE60C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2kLR3STBsqQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 16:32:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B05EF60C0E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B05EF60C0E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 16:32:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="423515257"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="423515257"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 09:32:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="957209268"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="957209268"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jun 2023 09:32:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 09:32:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 09:32:27 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 09:32:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b61kBkgF2e8CitO0HrI2q5d2XfZ9799ucZ0L+L2RYqkuwXGJKwpXczAM9KBhT+Re2/o3PS7Zy/gpNeV049Wyu2xkfTwERKy3km+/6A8yqIwzr/drEXnDRFoyY/Y3VqiZpdx025IwVW7Owar2e7XIeqlEOmt6zNw80AkZvUE/BKr9le72G0rzkIeK/htsm8oZTGR45IJLctqrki/KAgp/Lp6t5uGaUQ2xHPY0YL5zzrhkRGyEKDrNswZRqe9zxOGUuCtQ4BWHQLnU1f3qu+7/FY8U50A6xnAOBjT6Vj68aoT66VPBRGtg7H8Ve/jf+8pKaflVvT7xvT3lG8EA8qsDFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lovM5RJtld+1J9oAwBF8hyvOrjFENZ7Zehr1oDoM8hg=;
 b=d18A4vRp/YYilSDFwS+lhd8L5KXGtlSJSk/KEx+Z5m5JYnV4pKrclz5S52cYxSvsr2NxInQfjQ8Jd02C8x8nJMEi4ltl/ig7OGsC+AsJ4ihbvIV/+eMoWHmuZMecYwGZ0lyWNhrjgqh3AFs57sR4G82N9Bml45sApUK29zn6Ct48wvdMdiq0/3yKy3XwrrLWFWS9OLkbkoLNULGFhpnYiQTuAgcNji7fYSfoDGJB0qb3pW2BgK5NKFRxIoTY802eZ46+WOEJF9zxnzdclBXulPjXsC8qFF3lFTtWHSdEPIXABaL4rfgg0w+0rWAQalBCBFBvSfi6/u4DvQUDta3e6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.28; Fri, 9 Jun
 2023 16:32:27 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 16:32:27 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Simon Horman <simon.horman@corigine.com>
Thread-Topic: [PATCH iwl-next v3 06/10] ice: Flesh out implementation of
 support for SRIOV on bonded interface
Thread-Index: AQHZmjQsaFSLqVaJM0qO8XdiSZCXbK+CLYCAgAB6sNA=
Date: Fri, 9 Jun 2023 16:32:27 +0000
Message-ID: <MW5PR11MB58110D453C6E6BB15AD4A53ADD51A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
 <20230608180618.574171-7-david.m.ertman@intel.com>
 <ZILqX7x7RP/cN5+0@corigine.com>
In-Reply-To: <ZILqX7x7RP/cN5+0@corigine.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|DS0PR11MB6375:EE_
x-ms-office365-filtering-correlation-id: 3948a918-68a0-40f2-eb68-08db69071cc5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EUHRoaxeT9k9m//1i9wCjrMjIjUiCRRxCy2nnXf1y5Z2M6UBIcygnIauiYAXWMa6H9G9AUmMgm86H1/NdhowDPWrtQevL8IU7Jv+2pAVK5bNhcfBDTTUNYYMqhdyKuogaRULGaCVHSihCvVUUVjGixEMrlYH+eqE7eVjn7C2fFqOOkYebjUtydaUl8np/H0xINU+tPYT847FFBfDSOk0L7HSt+JW8YQL4u8GPfqmrvYxinVTKvAVYEkmxCzlDJBCOgM1nvp5wCQzxDPaeZ3dbUFEmh2EwgbnhuP02BD395ggvNX+hf3LGF4MeQdkHMFeKu0qBPJ4M9p+oKSzcyQpmd2C83IIDkdH4cosgt18OZ9iXqaVc8fXozs3n7A3BxN6A7t/zkKEGZBUnKLP/Nt5rNQFFWx1uomwBQkKRkLH1mAl2e/RyEhsZJCwDl4wMqNeM+ybJtTAVrq0k4OwYYMEODBg3v8eddG2ZwMAjvoSftJVEWoTfSwhNZWhhaQ9GasQqvhaWjX5Pz/GoNKVSrhuednNYHPG5lQIOBnVbufeydx4/SPaZXFSeeL4DkkWIVZry/lRdiU8mrhqSS/oct6xEVJKPTmTF2mlNwpRmBRc0KIYpYJfkHY1YrAXwtsk8x8T
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(396003)(366004)(376002)(451199021)(83380400001)(38100700002)(55016003)(33656002)(86362001)(122000001)(82960400001)(478600001)(38070700005)(316002)(66446008)(71200400001)(7696005)(54906003)(76116006)(8676002)(4326008)(5660300002)(66476007)(66556008)(52536014)(6916009)(64756008)(8936002)(2906002)(41300700001)(66946007)(9686003)(26005)(53546011)(6506007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lADUs/zHF/et+96bpXWeEpNECh+Li7t+U6xM8ZUDfN6yifH2wBhXJUf5M2g7?=
 =?us-ascii?Q?Emsmfhs2USA1QhkxItHir06rUVx9KZTVoKoRs3edReGNTcSHrNl4mev5b/SV?=
 =?us-ascii?Q?ug5yRKnaubK8eaB9PSs2/BvQvVuF3SvyBsEK82nXsPn5ZseN/1NB4qm7ezXJ?=
 =?us-ascii?Q?c2c57FcKTSQWvJsmpflDBFAuM9kcH+Ab8EYtWQPQ3wjss6t7yJ/oC18Dd5vc?=
 =?us-ascii?Q?stEU4etgL1O0gzACyoFRSXEQeKl76yUlkUVSJj36LHsnabL/Kap5E9sANMHh?=
 =?us-ascii?Q?z3a8QdZ4JN0+2tKcJ2jdiZURN5IVnD1Y/37GitUG6OrpARaXI/hYkqUaBJv5?=
 =?us-ascii?Q?HZm3HrdxUkX2ganiwYUZfYkR65yC1BS7Q1Q381BEwdrjO/f3QFdl8secvdCG?=
 =?us-ascii?Q?xHiT7t8Hu72Vr+LDjB4m2VPo45kMW9/1DL7ANp+REOUuDUEV8/aJaWYgT2LW?=
 =?us-ascii?Q?Ok7m3YXMVPQoY7ipId5D9dVickXS5pZMQRicGXD1D47/SzhieZwgHZ+U0PS5?=
 =?us-ascii?Q?NDNxAMXaVorcUi7A/ehI15KccLBScwCo89qv5AKl4VxD9urn9lJ6pePON0nP?=
 =?us-ascii?Q?RLpAF0YTva5teVDlJcg4DeJJq5mwxtPOS5Ajijur5V93877PU+gU5NQ8CkhS?=
 =?us-ascii?Q?b5cjkuok3x7bYXi3ObWvzu32y6bxcNJf1n9n+i6OzPyxaaFfqs5YNRBO7p5O?=
 =?us-ascii?Q?NxMtG0rl0DYYW0x5Gi/oFxxicuO+HvAXAe6rgEm3jss46KySfjeuHjyxqQA9?=
 =?us-ascii?Q?dNaJCDrf+mWhQWveSS3ssiSNinUWdPKscjTsvpvVuaJHEMDzZqby5O19HLn9?=
 =?us-ascii?Q?tuTsMAsI43p9BQ9dG3w9IepwG0v7X71Uu0E4jSH3xkh+sxVouLhwJSuwQpTh?=
 =?us-ascii?Q?AVSbNcoJZ4pbXx0liGE90NQ5eF2k8LBolCrflLyEyiVqBlEdn9JFvlzsHNGm?=
 =?us-ascii?Q?cQ8oy0C/ZwgVvkQaysYya0vtc1vSYlgN2waZfXDKhrDXuKO4UCIOHMsosoDA?=
 =?us-ascii?Q?RpPL8niabqRXDTSqF/t7iY71b5wqrKmx11tmE3FmKOFsYM/qolz18kCuWDw/?=
 =?us-ascii?Q?HqRfYzdeIijn8BK9ZpkpuZNdoK01Nld3uQ7nBnCBPCa2ok+hJQfz9GURFmhm?=
 =?us-ascii?Q?jYkkNKvLLfwc+d3gl6VdOf1ipkTkLh/P4kJ6rXOzqg8378gllT5vJyMi3AwK?=
 =?us-ascii?Q?sc6aT2XWnTDxrFwUn+XtOAW3CLG5XKTxHCfEOm0heoegSwBI+EO4VoUaBYzH?=
 =?us-ascii?Q?H8NqmBHOx4ZEVdUYab67srKoAI15VxmymS54XHVf3/zofjbbQSRD1evVb2IG?=
 =?us-ascii?Q?1EztqfkwLWAaj5ri1ZIiTjYQr2vZk4U7Lx09nLVSgHDoC/B5GXbD+CvfL+vK?=
 =?us-ascii?Q?OzBIrA9Ou9Vlro4xTrZmX8ilZRoM+ogvJnytppGn09OJUeHWDKmwScpsN0XY?=
 =?us-ascii?Q?inqDYY5jEB4sj8v9DJk2D9IJPGaH4v0Grhb58379t72XO3MzHu5nKmBBD6ml?=
 =?us-ascii?Q?3sQt6CbIb++Drxt0O/usouHEav0wsQkXX+f2A8N3bVqVoxsGhHdTrg98+2sj?=
 =?us-ascii?Q?FaKnPuNSTDhHGPw6n7QYiFyc0LS2NKTLkGJ4kl7Q?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3948a918-68a0-40f2-eb68-08db69071cc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 16:32:27.1128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njTuX+qdtn1r2b4rXm4CE8/bT0r3kTAr8KbmqO+pHj+V0+B6xHpLMROBTTzw4YkewX4F5Q2+uiqyM1b5QMzsO9JNFc/8eHSFXDKK84YJ4W0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686328349; x=1717864349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRPb78yUp1T1tysILjKFd9819phU8+/Hg9K8IdFbIhU=;
 b=IZAchKp1wXUnI9RDWz8jwxgTo/IC5YfZQtwN+cQPttoUBvCVdaCs9QU6
 7LqKQDZ6rM661jZ1fhk1efxoog7cYQRFp9XyiwehdDuihihtBhXmVUPQO
 dm974mR3gL3RTJ9gEMvOCDh7qpDSvKdJWxOQqegTGXxg2lR4g4vyI5Eco
 +9zPgaKCXTp6cJb4RklaFN1IB33bIHsneIumPuEixT4YnDlYkFdnBZDGV
 0Iy+fPwJxEko9T28VRmb02EU+1BpoKQUOQ4FmTf1ycw3k0nH/Q0zQga5S
 9yFeoUVSJ45FtcTCQHfIGFj29Xcp7CP0flntAwmuxLsoRjewt5ktjJ1nZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IZAchKp1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Simon Horman <simon.horman@corigine.com>
> Sent: Friday, June 9, 2023 2:01 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> daniel.machon@microchip.com
> Subject: Re: [PATCH iwl-next v3 06/10] ice: Flesh out implementation of
> support for SRIOV on bonded interface
> 
> On Thu, Jun 08, 2023 at 11:06:14AM -0700, Dave Ertman wrote:
> 
> ...
> 

...

> > +
> > +	/* add parent if none were free */
> > +	if (!n_prt) {
> 
> Hi Dave,
> 
> I suppose this can't happen.
> But if aggnode->num_children is 0 then n_prt will be uninitialised here.

If aggnode->num_children is 0, something very wrong (to the point of the device failing probe)
would have to have happened.  But, you are correct, it would be better to initialize n_prt to NULL.
That is a nice catch!

> 
> > +		u16 num_nodes_added;
> > +		u32 first_teid;
> > +		int status;

...

> > +	/* find parent in primary tree */
> > +	pi = hw->port_info;
> > +	tc_node = ice_sched_get_tc_node(pi, tc);
> > +	if (!tc_node) {
> > +		dev_warn(dev, "Failure to find TC node in failover tree\n");
> > +		goto resume_reclaim;
> > +	}
> > +
> > +	aggnode = ice_sched_get_agg_node(pi, tc_node,
> ICE_DFLT_AGG_ID);
> > +	if (!aggnode) {
> > +		dev_warn(dev, "Failure to find aggreagte node in failover
> tree\n");
> > +		goto resume_reclaim;
> > +	}
> > +
> > +	aggl = ice_sched_get_agg_layer(hw);
> > +	vsil = ice_sched_get_vsi_layer(hw);
> > +
> > +	for (n = aggl + 1; n < vsil; n++)
> > +		num_nodes[n] = 1;
> > +
> > +	for (n = 0; n < aggnode->num_children; n++) {
> > +		n_prt = ice_sched_get_free_vsi_parent(hw, aggnode-
> >children[n],
> > +						      num_nodes);
> > +		if (n_prt)
> > +			break;
> > +	}
> > +
> > +	/* if no free parent found - add one */
> > +	if (!n_prt) {
> 
> Likewise, here too.

Actually, this code was refactored out into a subfunction in patch 10/10 for
this series.  In the subfunction, n_prt is initialized to NULL (for purposes of
using it as a return value.  I need to move that refactoring back into this
patch since there are multiple uses this far back.  Thanks for pointing this
one out to me!

I will send this change out in patch set v4!

DaveE

> 
> > +		u16 num_nodes_added;
> > +		u32 first_teid;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
