Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36AD6D6D56
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 21:41:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A67E40B2F;
	Tue,  4 Apr 2023 19:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A67E40B2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680637312;
	bh=WdYm50vvZZjnR7vlNicrbqAh3/Tw2SAEDbKnPRPeHSk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uH9LH0LeUifc71cts9DtbYPvjiiKdv9cFZpEu0bvLifN4VZQmOuzwxNSTLCqDv2/M
	 3uEJQc1mNsZ8noK1KVqvSyVt+tUabJRS3l0I8tYjPnyL3K6tGWtvcuAul2O92/iX/3
	 e4rtPsERmlgRZj2b/Qeb8ieAkhvWUCCyMt8oF/YpMuRrdpvlgTPq/KVPoXEH0W4eu2
	 JntRv3W+QLSBe2ywx6gsknnAuNAh3NisnVuTDuKaPX6X36zC4MSXy/YOPdnRU3Fqm8
	 J4OfQ46RzAEHc6p8WeSLO/y/tJBezIFTxnNFQDWxSVUgtNj/Tm7pZ1jM673W9lsunk
	 nmwTz5nK3rMeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DOJDe5t4RJel; Tue,  4 Apr 2023 19:41:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E1F2408E2;
	Tue,  4 Apr 2023 19:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E1F2408E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE8261C293D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 19:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7891040227
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 19:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7891040227
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mpxl7pkogGhi for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 19:41:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EC1640125
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EC1640125
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 19:41:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="407362303"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="407362303"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 12:41:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="1016228339"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="1016228339"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 04 Apr 2023 12:41:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 12:41:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 12:41:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 12:41:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iS2+OOxCSr8JDKA60rXvVSp8ySlb+t0KlhQDgg5r7IvZBSvXzilA/OaWRqVNA0wn4KGU1GspK6mFSW0PDGwa86ft4OAeaStofC5yKb3XgflZqRtZgzMlKZE0sI3rAdSEiNUWt2hqyxkKeR+W8WRqF9TLBIa/tRby6HRUuo8yI0n4NUoShMjA0NkwSfoin49EgowBNgHgrsmGiP69dgvtVldK/jBRHDjWW1ewuO4/J7GEPphm9CdBjuRd8wXwZtHrBQygeGDd/esUup3M3II20Vax+Ww6vIwo8SkLW+9sfh0SSCL5JxpBpCfxSv5flkbC9ZeO4lg6k2UZelFklgDtcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m1ivaKRcyeFk7CZ1HdxarRwqRNfCGTF8dMJehYLAKHw=;
 b=Q3lCS388CZ9inQE6DAXqQnPB8bBhm4lCaBNXdGtMehWulR6Y8hhrsMF6DNs1IkvS2uOfeonnvnSuGgdOirRXPZ2fyQOXWFGcWiIj8KtisLq33bq/plf1/zQUkvhL6wp3uJypFdEtwGVyZdzwBbNuNaAKgU7U/v/+pc/cM78Q73gv5bw9Nf0WTJoo5/uv8TId/9rWn2dryuScYJZsfFlSzV4lv+/2ho56H9l4JazsXzEkpAXDpBBN32vK74OQrvpCN1tpXcoXyk7otX9ZAB+69Wx7pBHveEzXxN5+M+F0wI/0S8L6fVQ0g78SSyCf1T8t2Mw3qcJdDd/8b3f1uzB3SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5733.namprd11.prod.outlook.com (2603:10b6:8:30::14) by
 CY8PR11MB7687.namprd11.prod.outlook.com (2603:10b6:930:74::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.33; Tue, 4 Apr 2023 19:41:36 +0000
Received: from DM8PR11MB5733.namprd11.prod.outlook.com
 ([fe80::9762:6efd:5a7a:8c46]) by DM8PR11MB5733.namprd11.prod.outlook.com
 ([fe80::9762:6efd:5a7a:8c46%4]) with mapi id 15.20.6254.035; Tue, 4 Apr 2023
 19:41:36 +0000
From: "Orr, Michael" <michael.orr@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Shannon Nelson <shannon.nelson@amd.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
Thread-Index: AQHZZngL/cO6AhH/5UGNZ/kw1BXIn68aKCqAgAFlTgA=
Date: Tue, 4 Apr 2023 19:41:36 +0000
Message-ID: <DM8PR11MB5733BDA0029D6238A56686DAE9939@DM8PR11MB5733.namprd11.prod.outlook.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <20230403152053.53253d7e@kernel.org>
In-Reply-To: <20230403152053.53253d7e@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5733:EE_|CY8PR11MB7687:EE_
x-ms-office365-filtering-correlation-id: b8cdeaec-bc96-4515-752e-08db35449a2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vkZJx5fcza+tIQ8z0Gx2spCuHLyCcBihc/fJWt+E4JynC2s6nYuy3Sxn8BVA6/RRzScfBxoyPNVms8+YRS5w/PqqYzDlKxhd8IMSp6la883Xg2xvPsjUi/zdczjSOAT5Jk7G91A+Qg6HcLgEJiwrEXWawD3peebb0kSSgL2LJxhZlkNsDfxMpsxrmvsPu3hh+1BubKKqq8Y0DRyPFe6cGFog85w4fs6DRRVr0kULa593dqBiFgCQ45ALRI20+MHE8qAlr4Sq7NUIZAy5CyEW6BhoO6uT9Zs/GHtzygb0jc2tCS4UAelnlWRONfVLo38eJOCmbgcn5r/BUTXyV2ZgCRyW48EcR35y2tErsvjCUtsXiBFHJhctPw+fG62Ki+5C8zGgZggXxc0VXT7jburoo5CwDOmsQ0a0ph3Z714kivt3ixeHGIzIqu33Fec61HoSpplQMJDHhePtWcCQW3PIh46imrnxlir43Yji7yKoDkeRRQAz7Y/5afUmn99J6+am1RB7/IAeDEdygyvN8djhRzgg60FAiSB9SATqBmlwNIlGRt4d6fDRn2tEzp+sg8VF2t9RijM/Ybv60mlwS6lS+2gJX6dTtPg7DTQJp28kABDUu0atjjqY0F4Ne/LV/enC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5733.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(366004)(136003)(451199021)(38070700005)(41300700001)(4326008)(8936002)(122000001)(52536014)(82960400001)(110136005)(316002)(5660300002)(86362001)(38100700002)(54906003)(66946007)(8676002)(66476007)(76116006)(64756008)(66556008)(66446008)(478600001)(2906002)(26005)(71200400001)(33656002)(7696005)(83380400001)(186003)(55016003)(6506007)(107886003)(9686003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cr6EHGiNGgOQkrwwCWAzYpVUzVSTRfQ7hyiM/n2AW5zx9aRQjZETVBUnzCdI?=
 =?us-ascii?Q?q8pPIMGdXnWjavI+oWaDjV6glmZg8yI4d5jfWBRySy1JJD+f1StfeFwQZrXS?=
 =?us-ascii?Q?OakNgg4No/GrVw43nFU9gIe+HqPZJR9ppC3mILQsKjHc5YhwyequbEozqW/J?=
 =?us-ascii?Q?/Oz5Wxb8FQKUH3lVfp3qyDtX28vYskLJPTAbhr3DRLH3ddyMaJNAUFNyEKk2?=
 =?us-ascii?Q?qkolLUxLZ1KgE+i9SmeImJiNkqfvXWvvYHVFKdXsFtmdtLccdrLWP9R/8sMS?=
 =?us-ascii?Q?/R+GybNyvWL/h3Hbizr8z5+7tH4tryD4amoI7HhZLlkcq8OrDKqCzhFEgSxe?=
 =?us-ascii?Q?P0hxgDPeR/7UwYJGaM2KW1sH+Lv6zQ8asGrtQDoXPE4uMXQ7Fk1qz6VxAFjR?=
 =?us-ascii?Q?zCKJLXJJ7xW2Vs42J8w6Vl6R9oV2YLXYVyDflpErUVONhbRJULykvnsI7JeP?=
 =?us-ascii?Q?Oe2juqGX6UyAsOUTfA9fBRnsfWqbngbUom0o0+unyr/5sX7RXKLgu8/kKXzF?=
 =?us-ascii?Q?E0Xphc0mhMmBXHgdaLlnZ59G8gKkRwZcDQDfdwreOJiaggnq1oJ9KcAOED8Q?=
 =?us-ascii?Q?Ss3e2DlUZ9/5cUugQRuTlD1B6e+w+MuMq2qFjxJ+C408gwB3f2a/P7aLnHQA?=
 =?us-ascii?Q?IVzHhugCSy6Z6BlelIoE9WEwmW2QcQEm1iMWQ73GWDaoB2jQIWqvEpkm4hDA?=
 =?us-ascii?Q?SPW5xrGuOs+e8g0T4aFwO3r7hSG/+nYXo4rO425kqSYURGLp0yOHTwv/qrHC?=
 =?us-ascii?Q?Y/iBz43yd6bRUPvkf5CVsWkJzpMYi1PhnsRBDwwruu8tv0dJDKW46ZDKAxy/?=
 =?us-ascii?Q?OijPBpkavQCC5EKDPLug4lno+vTL3gwwIIoOg+mEYffmSxEYxhXAwv0a2qSP?=
 =?us-ascii?Q?edxJnLs0TTyrPUkJ8AnkdK2Kfy8geh8jBaWmVY+9JPYBVzIqgmj5k5sRe4iq?=
 =?us-ascii?Q?qbsU/BX5NgPV+eSaTB+XI5lzYitmadsd31vCBRdM8SZWKSVyz8+ewtql+uLQ?=
 =?us-ascii?Q?qisrer9l/PxBfsj6/rLHpa/goAqL7GwHAqkxZ87RQrwEQoXQKtpkTj8yR8ii?=
 =?us-ascii?Q?Oi93MynbAXAhXMV+6LCjF39x3E9WdaqvIHJTLVZ4VHX2ELWo/nkZKXUezXwa?=
 =?us-ascii?Q?09zeYvfx++2P0R7kxHsx1bXB4JqAZm5Q4EYUE28rS1UOgmJ8rOjWm6dU+mjl?=
 =?us-ascii?Q?lSmoqRoQJNaPeN4AK5lI+RXKmA05YjOQj5R4OKwrTwNeBUFfONEm523e9RNj?=
 =?us-ascii?Q?DDVYfPZGnu5pBesSaDHUdHz/zYo2paNKmJmLAMMkpbO4J4UKnin8WeKDXSQD?=
 =?us-ascii?Q?qBTELrANm53+wnEzyPtNsaVIBd9nVaajzVHJV183j1GHVVgrJr2gikXElZnA?=
 =?us-ascii?Q?uXLrrNUy2Xv7C+4tKhQGeStX3EzM1SEUmVP2T8G7OO6KaySs9JEq69oX4gu5?=
 =?us-ascii?Q?DJs+Gl6LFy1eINBZoPH2KMejO8iaJAXcTSnUIm9Z0uzuKOViRue4mpPKedNF?=
 =?us-ascii?Q?YwSjBsskclff/yyiKWe+oW9yyLQuFyMjhirov7lgKxVoAb4DKHk/6sguelMr?=
 =?us-ascii?Q?kaFfxsBHTFNNEvKdeRwGNLHEPQYW0ffPb6mtr0Ww?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8cdeaec-bc96-4515-752e-08db35449a2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 19:41:36.3572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nrao1hAIeQH7dHHtfQ3VmSVwQK7nppVErM+KOpdspAw1l33+/bPmzTkoJ01TzE9NeMlNwSudZrXArBCurn+hTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7687
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680637304; x=1712173304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m1ivaKRcyeFk7CZ1HdxarRwqRNfCGTF8dMJehYLAKHw=;
 b=fTN4lJj3l9X1WDvoe87hugdAjOhb/ENawDDMX6nCRUdR5v+4jWnjxn3k
 49DTawFBq50IytgQ1IKHzKsWteDO5rRnmndgrTXxF04eeWUM537ksBrul
 llIrVm8VKRBsBC6PgqUdR+YdqpwGuGXk+TgG89WcGyDdneJlRQ3F0MP6Q
 IutyvdOwvBJPqrfmA8CstMzhFYMspaDH7dCVuT3H2qomZ6OHd5Nn3rCfv
 I2ZyA5YIT535fQPK5ASTpGUcNFAecU2c0tHqkR7wNlAttk6FlqggCP+RY
 ZLDqKfePEZuOBzqiIjxrlAH7IcuHLBLaADDpnR2GcI6odGfe1xTCDXmm7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fTN4lJj3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: "willemb@google.com" <willemb@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "decot@google.com" <decot@google.com>,
 "Saleem, Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

See below 

-----Original Message-----
From: Jakub Kicinski <kuba@kernel.org> 
Sent: Tuesday, April 4, 2023 1:21 AM
To: Shannon Nelson <shannon.nelson@amd.com>
Cc: Linga, Pavan Kumar <pavan.kumar.linga@intel.com>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Saleem, Shiraz <shiraz.saleem@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>; willemb@google.com; decot@google.com; Hay, Joshua A <joshua.a.hay@intel.com>; Samudrala, Sridhar <sridhar.samudrala@intel.com>; Brady, Alan <alan.brady@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>; Burra, Phani R <phani.r.burra@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl version 2 ops

On Mon, 3 Apr 2023 15:01:55 -0700 Shannon Nelson wrote:
> > > diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h 
> > > b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> > 
> > If this is to be a standardized interface, why is this header buried 
> > in the driver specific directory instead of something more accessible 
> > like include/linux/idpf?

This is an Intel driver, hence in Intel tree location. When OASIS has a Standard driver,
(that will be based on, but different than this one) THAT driver will go where industry standard drivers belong. 


> The noise about this driver being "a standard" is quite confusing.

This driver is NOT "a standard". 

> Are you considering implementing any of it?

> I haven't heard of anyone who is yet, so I thought all this talk of a standard is pretty empty from the technical perspective :(

Agreed.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
