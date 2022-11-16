Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8515F62B193
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 03:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85C3D40B71;
	Wed, 16 Nov 2022 02:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85C3D40B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668567302;
	bh=GnhgF8i2lXkQT6Gg2bRW3UiQYiV6nwoOUDlb81nv59k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZmswO8zC3YMGqBC9WT2lHOh1X6s4S9kBXGi6N0KTTHUgcQf2/3Ulh7U31XyRqfDo1
	 6xhsCnZlLW515KFkq280E6A/a5wehPgc96+jwA1QOkTo7TYDji4Vy/PoEB9xC72hbP
	 68xntPRshma12asofdVgB9xNBtk9mErf4Wt+7BxvqGplDLhH1KpYb6Jv1LAzyjyKgh
	 ztvcQ+2qjiZtV3inRSMdAdmFNvOQuiZbu9cBT5MceoSrhA/xyIT3x5o1qfhMdG2O76
	 3piNrmDjGB5IyN3sCHbMFUscIjRtlGmqCVXO1TrpTyPJNv4uJkfCSAWH2T8rnCSlvE
	 8lW3pB0Oqe7sw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKlOd5LWlahn; Wed, 16 Nov 2022 02:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74C0C40B78;
	Wed, 16 Nov 2022 02:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74C0C40B78
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44F231BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 02:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1A97640448
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 02:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A97640448
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5iw6if_tUdDS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 02:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C0F440129
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C0F440129
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 02:54:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="376698925"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="376698925"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 18:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="764151732"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="764151732"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 15 Nov 2022 18:54:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 18:54:54 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 18:54:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 15 Nov 2022 18:54:53 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 15 Nov 2022 18:54:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DT4q5+o7hg1bchiPl9qljN71g8/Ne7yxXIAKGqwHlgCt98yDR9da2KL6v7UVprA7xjvzKiAF72B61oVwtGZEZdtf7KYz6/Y39MFb5JesXdUPCScVHXxKFoABYc6p9+6uqN28Mi/D/7uldy3ZOP3kc5mCyzGkzQT7EDi1WEHDgfkGZgiq+AcwJCG+Ose3ZGdE6ZpQga8lr5yPs0LiyqJd//ERo75W097v7XsKyiJ0iWGPeaoZh8lm4xn34JT0AqDjfGjNc4Fh/6Qda1B8VISIamXbZqF8ZArfQFjMkurdFLs2O1TmTf69ZCWQ3yS6imJALzQDTkZCIz5yR1dPXsxdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W8nff1PYi2ne5Y5PhXSXjUY/0U4AAOYmvfp7OzcQweo=;
 b=U0AuOldltQ5DbT5q6Z9N00rUhsFoh6452yExkvWQS+6KgYIdyEdgLTPwGHkeCa4bGAKkq06bkTGPUN5Pjub10zLxI9esj8AFDWDUpdOU55LUDyLK10bXwQXIJoZpNJnFDvN9v3ocwzKPWsRYfLSD+kODDN+dkhBuHF4OVM2aVQQFlSYI2HZsZurrnlTD0gLoUuWZ6iw7TqqKWotFZV6Ws8T43uHXieOG6OsfX8PdP9DoEp3WrqVwMq8LV24LsBruN4gD5APDmQokm7DZn2LMd5UxcVQD9lHI+Vjfw96fEIQY0/HJlzE4jGaQRxz4XZOSuxGzoqfxKkuShb/v/z179w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB0029.namprd11.prod.outlook.com (2603:10b6:301:67::25)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:95::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 02:54:52 +0000
Received: from MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40]) by MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40%3]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 02:54:52 +0000
From: "Saleem, Shiraz" <shiraz.saleem@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH rdma v2] RDMA/irdma: change name of interrupts
Thread-Index: AQHY+PElMg0LHph8eEOQ7nax+vRIT65A2yXQ
Date: Wed, 16 Nov 2022 02:54:52 +0000
Message-ID: <MWHPR11MB0029D2CC9150737E3D40F28CE9079@MWHPR11MB0029.namprd11.prod.outlook.com>
References: <20221115123856.11737-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221115123856.11737-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB0029:EE_|CO1PR11MB4769:EE_
x-ms-office365-filtering-correlation-id: 5637cf0b-af55-42b7-a078-08dac77def1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O8lobipxhJEvvlwRbiifevWuWvjEbioUH/dOaNcxqKOn9wMjfYKLMxCu+2wJ8L9rtMgrURwiTMQqZoYyZ4E2JV1buMqO1CPm8eeHQl5e/vV+AZ6D9TLgHgPxqkyjHQzcBZe2JcFzqUk+QTTySdmLRtJQG1rSgoiINOHpl3bu6LbaWV+17AaZi+9MiiQl+a3NkDU1iZHITFhYYjNZjDSJ45wxY7A+rcn3Z0bFS4qBSVQyil7ytTeXfFlesORRgdOupiRiSmybOmqDTSAkZnZCzdWMFoC4b/7byCapuO05FGSfxIVc+0GQL0css3mqwkkRAgGhAmrJTIwG4hJME6mX8i8lne48QYXoTuHSZsRQRFp5mF85gVRtIKCgCQ+5m/dkW4xgwAkmx1kOSBhkjjT9gWy6SB2KdVNYl9d0x1h/YpEsMQOKO98jEkNDLwBpwJFmgWiyvhBVqBKC3vhOiHczjZlH2gCUM2bh1191mnIhSZOrqpwFZJfQEr0JjMZY8YBc+RD3YvJH160mJkmS3XAyP26x/TpDFis/FCUzrEtw7WlEVEV4uyQIyCHAzTd1BzZZDoMU+olGPVK+LtSwyhMdXM+sJtnEn7la25TFF83HHx2pdEQTyEJ2d/0ETMOgzz+zvMfYb9GjUNcSS9IAkAkBImDFZzn8AwvryLIwiEt43gqR6qjtpjOrwGO6qtPiwb91yf3fD77LMMXA0yxM5lGgwye+2lYn72tkSMu00QYrhesim2lfKG565G25tK5zlEj5uqczx0D6E0FXzsnHs6f/rw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB0029.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(376002)(39860400002)(396003)(136003)(451199015)(71200400001)(478600001)(38070700005)(8936002)(5660300002)(122000001)(38100700002)(83380400001)(86362001)(33656002)(2906002)(82960400001)(186003)(7696005)(6506007)(316002)(26005)(55016003)(54906003)(110136005)(9686003)(41300700001)(66946007)(76116006)(66476007)(66556008)(64756008)(52536014)(66446008)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?edStT46/g8kiIMxZBiIX3oXHYRlPILF6yUFeX3eXaA47RcjvmFv/AHgqyVVa?=
 =?us-ascii?Q?E2noGIuj0pf6Vd1O8RZhr5hXpw5c0XWaKAUBLbxJ4+Q24DfP3P3cw515wACZ?=
 =?us-ascii?Q?DamgVmfLf3sQ9v0JlfsDlbviilyjv1QzviIzfnffOKLzY85toV2K7XHlCRVY?=
 =?us-ascii?Q?u3PsPM+0uGHUPrpWVJoJwticg93EKzR9MnsEXilkZFZLssYPgAOQjujC6Sdj?=
 =?us-ascii?Q?0s6DZnxMXJD+5EAHWsz50SD5Ehog2Ugnfl6lQwjSHi2dDlTOBgJLHEInnOEJ?=
 =?us-ascii?Q?l770Tr9c5+90oP5sp8zwCwBYjMXaSJulzE+WSdflNBt7AD6wpDDVNqsN97fm?=
 =?us-ascii?Q?O1NcXSFufc391/xaMf7GI/ZnstEGlaYmGctNJQmj4ZmFKsTfffmq2lD3T6s9?=
 =?us-ascii?Q?WPDW+HkAW2vpPWGI6bhhz0J0Bgcn3TFnO3wzoG8brrtWlZeu+4T4EkyMDESj?=
 =?us-ascii?Q?u0sgS6irW//rxFPcz5AlKveTZ1r5dOpzXS5SQ+AouObhyDG6H648LlcpSraW?=
 =?us-ascii?Q?rDCOsgZwZcQJWg2EZD8aGsIyuAwS45P7i7EQltVdUOiF67muNPdJYOPdT+oz?=
 =?us-ascii?Q?WF43QVYLqFWkpDb4cumvd20QLI1VyClfEY4CzSLxPng+46CIoXqpHzPNr8SX?=
 =?us-ascii?Q?ZRZtMJ8HyqRe5FnZA5KkQaebQ5tQVCkvRJ4gBPdTHH3PIHRDt6YzlYiS3rYO?=
 =?us-ascii?Q?dYA2lHraHS3Xc9JhRaYE1VKgPHh0vdC7qxNVIiOLKbrx+WmNPAGGKh8alfNJ?=
 =?us-ascii?Q?8S1dsCXSxi2xTXjtl8n9k0axJF8AkVHj9pPgoyMUutT2/BvVSHkKfz4o3Bsc?=
 =?us-ascii?Q?GsFash9iieEMd0J3xufdMffWG4ZbWVH15juX8J/X2fQRtOA5d7OPLBIeAzPt?=
 =?us-ascii?Q?OFHOPKqJZNnwAbG59G6hA0Si0j7MkUTAhHVw2JRqaAnv50N/clCRT4nNLR9s?=
 =?us-ascii?Q?rcKtzrcTocOhF83W3BjpjWmTIVAig8T4ZeEV1bca6a4A6+kUJA0WIbUGuNZ/?=
 =?us-ascii?Q?1FRdfaj5L+d8fn8NCD5iItuQ7ZhiTJoFPKebEf6J7GOyE6OCIhNmOR8u/LvW?=
 =?us-ascii?Q?MZGCyFvkk+3TtZS4VXoMPw52FpdjcVrqdU5KSjTrs9lL/nviZwZmgJj+/kde?=
 =?us-ascii?Q?nbsCUVPoc1om/BbX1r2H/LQM7SzFzR7QHnKGcmGJnAT6j3hRV1CbcMyZaMVR?=
 =?us-ascii?Q?4jS4yBUxYCMACl6OTOqNsgB4T+rky+wLXC14/2scmN/3L6aoELZNWRLxTyOI?=
 =?us-ascii?Q?cIzb3+Uw/kTvCaABSK+JCgdSz5gfX0kpBiIpDQHibbUqxz/fWADst5aYjagq?=
 =?us-ascii?Q?PqbtfGUOE+w041MZIPB1I4WWWvwnL5uyiA61OnAI+ghynLe1Vj8cye5/+3nD?=
 =?us-ascii?Q?DXkkj2ZCOREayOi0E5JCxxW2VNUE2rLFawPoT0F0oKfBNRZN45MgzGDQ5bPH?=
 =?us-ascii?Q?nrJp2XtcMuoagQbn3OEkhLEDgk4b9oAUEWVZzQcK8orhokeYBaaOlm0Uvx/M?=
 =?us-ascii?Q?95BNmWaNGSh5kaYcPGRw+v+7T0h94YpUfPjJzGFsd0tGlujGkCOkmLoumRfl?=
 =?us-ascii?Q?BxgIRuoOIqxTMTsNsVQxQ4rsWZxuft76MiagFICc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB0029.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5637cf0b-af55-42b7-a078-08dac77def1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 02:54:52.2060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n52rPmX0ZRVhZhh+GV/KqbDzxYQEj1E+fuGYMVwLmaMJINy9fqW9CpDF5igccC8ayQUiYAhpcYry04xgIzSSOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668567295; x=1700103295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vke/0n7ltDOuRYSyuCSBmZzgbo+UUYwqgbol51wKFb0=;
 b=BWl325YQM0uRCA1dcKczNNFdjj/KTMOuutRY7GELMAm9XGsVqX1L3iPD
 zXqdrJ7uZCiRGYWIgQ++Q4Nm2YMiDncBJlby4zBifFVTVgIk+3prm2UPp
 MR41uuZOLiDEOyo3M40U6isiSoPzydL0KzxZ5o0GPQxA0CNXhvAoKBH8q
 sDBm9EWGIHNKcG7MxWA/srwMiH0Ta3NZ5ai10+PS+J3ig1dFZciSmmodg
 AgHTP4x1DUSv+fS2w8Z+yGKQO5nGcW0yj9CJP9PCHWnkUA/G1mjzGInq8
 BVG3kP7L3prrRiKVPfd6SsKVfb5+S9kqWwWittDyoQwclgioAioRqcajz
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BWl325YQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH rdma v2] RDMA/irdma: change name of
 interrupts
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: [PATCH rdma v2] RDMA/irdma: change name of interrupts
> 
> Add more information in interrupt names.
> 
> Before this patch it was:
> irdma
> CEQ
> CEQ
> ...
> 
> Now:
> irdma-0000:18:00.0-AEQ
> irdma-0000:18:00.0-CEQ-0
> irdma-0000:18:00.0-CEQ-1
> ...
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Suggested-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
>  drivers/infiniband/hw/irdma/defs.h |  2 ++
>  drivers/infiniband/hw/irdma/hw.c   | 14 +++++++++++---
>  drivers/infiniband/hw/irdma/main.h |  1 +
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
> index c1906cab5c8a..2f15d510e39d 100644
> --- a/drivers/infiniband/hw/irdma/defs.h
> +++ b/drivers/infiniband/hw/irdma/defs.h
> @@ -20,6 +20,8 @@
>  #define IRDMA_IRD_HW_SIZE_128	3
>  #define IRDMA_IRD_HW_SIZE_256	4
> 
> +#define IRDMA_IRQ_NAME_STR_LEN (64)
> +

Move this define to main.h


>  enum irdma_protocol_used {
>  	IRDMA_ANY_PROTOCOL = 0,
>  	IRDMA_IWARP_PROTOCOL_ONLY = 1,
> diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> index ab246447520b..d2a215ec531c 100644
> --- a/drivers/infiniband/hw/irdma/hw.c
> +++ b/drivers/infiniband/hw/irdma/hw.c
> @@ -1087,14 +1087,20 @@ static int irdma_cfg_ceq_vector(struct irdma_pci_f *rf,
> struct irdma_ceq *iwceq,
>  	int status;
> 
>  	if (rf->msix_shared && !ceq_id) {
> +		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
> +			 "irdma-%s-AEQCEQ-%d",
> +			 dev_name(&rf->pcidev->dev), ceq_id);
>  		tasklet_setup(&rf->dpc_tasklet, irdma_dpc);
>  		status = request_irq(msix_vec->irq, irdma_irq_handler, 0,
> -				     "AEQCEQ", rf);
> +				     msix_vec->name, rf);
>  	} else {
> +		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
> +			 "irdma-%s-CEQ-%d",
> +			 dev_name(&rf->pcidev->dev), ceq_id);
>  		tasklet_setup(&iwceq->dpc_tasklet, irdma_ceq_dpc);
> 
>  		status = request_irq(msix_vec->irq, irdma_ceq_handler, 0,
> -				     "CEQ", iwceq);
> +				     msix_vec->name, iwceq);
>  	}
>  	cpumask_clear(&msix_vec->mask);
>  	cpumask_set_cpu(msix_vec->cpu_affinity, &msix_vec->mask); @@ -
> 1123,9 +1129,11 @@ static int irdma_cfg_aeq_vector(struct irdma_pci_f *rf)
>  	u32 ret = 0;
> 
>  	if (!rf->msix_shared) {
> +		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
> +			 "irdma-%s-AEQ", dev_name(&rf->pcidev->dev));
>  		tasklet_setup(&rf->dpc_tasklet, irdma_dpc);
>  		ret = request_irq(msix_vec->irq, irdma_irq_handler, 0,
> -				  "irdma", rf);
> +				  msix_vec->name, rf);
>  	}
>  	if (ret) {
>  		ibdev_dbg(&rf->iwdev->ibdev, "ERR: aeq irq config fail\n"); diff --
> git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
> index 65e966ad3453..2872c7df6e88 100644
> --- a/drivers/infiniband/hw/irdma/main.h
> +++ b/drivers/infiniband/hw/irdma/main.h
> @@ -212,6 +212,7 @@ struct irdma_msix_vector {
>  	u32 cpu_affinity;
>  	u32 ceq_id;
>  	cpumask_t mask;
> +	char name[IRDMA_IRQ_NAME_STR_LEN];
>  };
> 
>  struct irdma_mc_table_info {
> --
> 2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
