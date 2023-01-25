Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFAB67AB47
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 09:03:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8869441177;
	Wed, 25 Jan 2023 08:03:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8869441177
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674633835;
	bh=W3IyStSQJ5lOESMiOC8H994kJmTY7Qa3GusTkRgSAzY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F+Kk0HogwXKuB+AAt7WKHznfdwMcw6Fb1jQCPGHOdzg8ck0lfZ7wWlX6hNyOm10y/
	 uFI8coeDJd35ktJKzYYxQTKsCcphEOvQlxKx+KB1DOVEVPTWHqPsKT/hOE8KlvdY05
	 GkwikeLjCuRLb+1yLVzUxGB+rnnI0IhZhpZwvoJl19Sa4gBaQ/Vv1Ry9gjwFAhqp7y
	 UpKjQ7Bdz+YChpRmS0+paf8+O9Ywlz/CZ61PXxVcLTAF9DqyhZhXZPX0mIAA7494qw
	 yN3BDqZ7jFu1KBpSGvCcGajdseLCt/an8YJtxUvaXVkWIQmGCBX+TelGDrGyZq8nMx
	 tGMaawTdMz8tA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m5qX2IosHKOG; Wed, 25 Jan 2023 08:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 004B640FE3;
	Wed, 25 Jan 2023 08:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 004B640FE3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0E2FE1BF420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6DDA61112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:03:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6DDA61112
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwU_95QZxUVs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 08:03:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98FED60F84
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98FED60F84
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:03:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="324202430"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="324202430"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 00:03:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="836277371"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="836277371"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 25 Jan 2023 00:03:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 00:03:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 00:03:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 00:03:44 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 00:03:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+/RBtemMgAvfMe9eTuiovXozEWvFcWAdUkTlziUrnYjPvZ2CGv5QYCUX2ADK7t+vLqg2MzQbrCK3cMFtZff0CCqvgONvFfBpNZv8aKceaexHnFWO8ZxsZ+4/zngwWpStlcPCrZngKPvwG7u1wagJ1VaHd5670SSFBCH7dMavydZwh/mQuh2bMGfe0wJwtYMzGmB5arBmMng7pOEhAwPKNXT30Pb5jKfPWbJ1FSE3KVB1oJYJcHDGdpnrX6y9Uasu7hdEi4kMuE5ciz72e4kt3E7AC/Fg14sWRtCGjte/ABySkjKD4HCV2lunlIgc7BM9UhdVLn801h0I4weRCyBqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jDszY4kx9YFrzb9k8BWKMtX7XYaddCh/Nj8IXxon16Y=;
 b=QcT+b6HWkQYOGXHkXd8FNF3lVblVKgRoEwQGT4x6dRYnCq1+KPgEU4fry2DI4y14pWfcv0u2t3ADKH8aaJtLm/axQW//TWZjSGFJ75e/A1D/t4QXd6PkXDhthGvhca2ueNHnCLJWKcOtevZ8VSOFwIggX6dbcE+gDBGfQYhiur8zDH5HWYg4xtkbLKIyeWZwY8RZOCq2B4snx4EbPgZ3wz8DWQdMwvQUOitN/sTSOPj6Xd/SQQdP+LKV5w8SwggRMF3LDIgB/jofgqLJo4h/nV7dK+2z92tuKw/qtTpeNaI3S6VflPMvoo4X+vTPFFJLPfmBk/BwekYsaSgfaYrnUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN7PR11MB2788.namprd11.prod.outlook.com (2603:10b6:406:b2::30)
 by DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 08:03:41 +0000
Received: from BN7PR11MB2788.namprd11.prod.outlook.com
 ([fe80::13e7:eea5:56bc:ac04]) by BN7PR11MB2788.namprd11.prod.outlook.com
 ([fe80::13e7:eea5:56bc:ac04%7]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 08:03:41 +0000
From: "Andrysiak, Jakub" <jakub.andrysiak@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
Thread-Index: AQHZLEtI0eg83h6RiUa0dhfatD6zSK6uy9lA
Date: Wed, 25 Jan 2023 08:03:41 +0000
Message-ID: <BN7PR11MB2788E3C68F352F9E7E539C64E6CE9@BN7PR11MB2788.namprd11.prod.outlook.com>
References: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20230119211608.2105338-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR11MB2788:EE_|DM4PR11MB5327:EE_
x-ms-office365-filtering-correlation-id: a531d5c0-265f-4ecf-fd43-08dafeaaac0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dv02/BrkPuMdsji11FU7Ge5VYTUTpC9ctlfBFMRpvSKpwhYFLou+d6amUCRvnunOrDmUG82IYARJnZatCJh+Z6aemjBhDMRAI4/GSC9yC/bi7EFrGdczMMHWr+8990ixqJQkpljhRNpenKWhjMJqVL0hVXNFQqCFvr0nRoa4EsyMjRSrU9FHQffJZ7givtnT8jJu5bgDwzujkwX//RhJNeyrQxN19Mf0DBXHn+zhDvHfkSLXPsOYdIZojwBe9PvZzWJX9f0ax5MCtHOLnIykdjpuEuOdaOjVggnc164+Xt1/0J12TDRFwiorLLdOhf4kZKgfCcqJeGew76Qdg9kJKiOIBU5Ivee3KwhJPmx43bpCEXqo0Rp6Pa5ksYXrI+/GmAdirZFE1fxUgQLTxH5lSuPTnMVBJKnW7c8t8e6wkhn+t7tFVDc7Y8AxS0/BSs1Nvf6mh+6Kiqy1Y4UQEYgHNJStJ9fOfu1d+/hVzRCrEIlnZZwNGxE1Zo49xwXc7KgrH3fFUR4I5ITzP6RP0WBF2RvoSpY93ngNA1ZfLlhG6EaeXg7sQvZvanxCuRIPbSjRWZLQH4GAiTJuOunBHoH/HgJG9z8SwoyDG+bRqLMDPjrRuBwQXar4xYwAatcFvPhfIDH0fkb5sXpBPetU114EWBuzdxYL5u0g7nbATNYZtAu1bYOnjsaTfSXJWKyo0/Z7QwhxPM4tqyVkCv7GQuvXgINzxvPFgpRG1pPc1nrTkl0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR11MB2788.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199018)(83380400001)(33656002)(122000001)(38100700002)(41300700001)(9686003)(7696005)(66946007)(55016003)(64756008)(66556008)(45080400002)(86362001)(76116006)(82960400001)(110136005)(71200400001)(966005)(478600001)(66476007)(6506007)(66446008)(5660300002)(38070700005)(52536014)(2906002)(316002)(26005)(186003)(8676002)(53546011)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BJTQk/pARh+CnityujvMiC9UpcctHGE4+0WYAdmE3PM9ZPG0p5iuSpKESTbS?=
 =?us-ascii?Q?adIoTrYRX5yWiGiIuCVYRPlHibEylE4hDGr4iwEiPCoANV+v1AhDeCPKusox?=
 =?us-ascii?Q?eOd1XOS2OV9S2hkuRhmoTF3WQYsNhsesfjTb+F675yxRUPilN5g84y7rsbqA?=
 =?us-ascii?Q?KEujhy4amlo5Hb9RRFNfGNj6jtigx+otyIF+9tYLvi0fdtyU67uFIjm6T185?=
 =?us-ascii?Q?2LRmLDwqb0ilJGiQkS8FrssAwrm9pHC6uXvQ0JUkS8gJRQZOfw/FA6mq1wjE?=
 =?us-ascii?Q?VxrKqXeUChmoPaI4poGtpiMnM85kyYy174AIeXLuRK14XrXkajZsLLpYh7xD?=
 =?us-ascii?Q?GZ7GCzwnl3tCw2R0oH5cxAaFuQW5vMVHVFF7p2tUHfXc8Vzn40r79qflRIRy?=
 =?us-ascii?Q?z7p/fXff8MZLS7Oyv9J/Ngw2tRiM2jlAq2pUZ4Sy5JEY2nvuIuyzk2qWln0g?=
 =?us-ascii?Q?zCr8Li8C3ok5lPCsvflf/I0wAx31TA5R1/0tQ24oHLwPKgnlHjUyGlO0pDUU?=
 =?us-ascii?Q?QoijBxJMRYlnK9XHvSJuftfTNfSrf+U7rE6UI0PJGM1y8jUkshJEWxcyTf/g?=
 =?us-ascii?Q?NzlXNOhZmDSjd/NzpM/PQkfNrxRpK1RbStR7BiCXZ2zS14u/LSNTksexHbZf?=
 =?us-ascii?Q?nT7mMfIlolIcJEA6PguFp47dH3sx6wD7kC2u/HKeINmoGPU+Jum1MwOvBWZv?=
 =?us-ascii?Q?sgFqWtL7bshNYbHKj3EeMaSk7M+ngH2FWSvKLNjawbBa5IO450UxvDlgKuSB?=
 =?us-ascii?Q?bT2/op3mErg6rNAS/3CazKmHyf0tnheHMncuXjtO4mgo228cpgu7Mo7YDxe+?=
 =?us-ascii?Q?rweFGBX0ZdBJ+saH5flsW+Q4shp8JOe8nfDONONonEaGZlNA5hNcXTjOo4KQ?=
 =?us-ascii?Q?stNvsdO8s16u8uVMgxXSvoS7Kaqd7Yc1eQEdwH8IYmmq/+8uwACjPP2zv6jL?=
 =?us-ascii?Q?1cEkMO41rp++MkpzhbuU7uKuICi/wC8EG3mJPhuUQVm7X8I2e+4ZmA+y7p/0?=
 =?us-ascii?Q?ZMu7iw4jKj20h+pRf2/bMQ6pP0bImb1wOAognU8q4NedwLOvejC3ZG9W4mXr?=
 =?us-ascii?Q?DNaoX7hBOfqYdlJ3vHJDflNX55fZ0AY7DCBFZTHJNIwWsHjzDX6Dcjw7zCPV?=
 =?us-ascii?Q?0p//vmMimekaxKOetNH1RTl0oFceHfWAjLVDcT7thhyikEO++AgfIlQu+3tP?=
 =?us-ascii?Q?zHJPWCQ0Fk+Xz8NJI0wPrexh374mASjFnC+XeAlrjI2uCiUNaH1WDcMzmnp7?=
 =?us-ascii?Q?OVkaAnFp+t/xfYwmySAE7PHsQ0+DDMzW2RgCJiwdZXNxwKCYa/owVsG7Lpcz?=
 =?us-ascii?Q?TKB89DNcUmg5UfYhl1hMyU4tJHVFtwZ3QaGwKk2UDAkbEq0U27/uu+nHhaJe?=
 =?us-ascii?Q?+tzsIIH+1lpie8djK3XuC0FVxYOti10pG462UNRY6zm1NGhYut+X8uWAO+Yo?=
 =?us-ascii?Q?xfOv3Yt7I5DPCQMpp01yuK6XNW8szYjdP9vgO9eOfDqxYTS85jwMkdimyatM?=
 =?us-ascii?Q?EH7LaHIA8xipmsvcrOtnRL0f+hoq004GcYO+gg7w3MBXvyKHt9+DrKhi9yUn?=
 =?us-ascii?Q?zT0VPThrKUBrJSgb7C46Acv9XWubw3sV5TvxmeAO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR11MB2788.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a531d5c0-265f-4ecf-fd43-08dafeaaac0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 08:03:41.0814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f3r2gDAhzfAeQNrG0v3f3r87HjCuh3vwj7YOKlQ6uumpOz7MY5HK5ub0dN5/Drb0xC/0uf3YeI3EQiGmVbWMLjrKb15zjuJRG9cXxg7aUog=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5327
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674633827; x=1706169827;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qWXlsMk5k7gn9X7n3fe425CGH0nBSpXno7A+dJLdgXQ=;
 b=HZLU+D9LQzMqi2SGPgjShwmlYFgaVSnB28+Q7kPE2EfsU3t5vdgfzHtN
 8blxeEZrHnNJSIsKyQYDmMHgK1PKSe8B9CYdx7CjVw0NXGovhKQ3YMQz4
 67wavByzamJtyo/WUbnF476qAPdZmYQhdRwkZbd5MCA90cy5xD1XbQg3t
 WCy/G/0DhqVI2qgZYqmCD90voxvgOiAB3riukmOt+dkgz1mJmg8mVdPir
 bAiGGm3tEDfc/SN2SOooJoNHfhUbgo1Y/De/9ZKl3idT7n6b1hHEVP9Ko
 sKdiIYF4vrkNb1XRideadeh8uPgeTTyB/5arPVNsbkQUiD1Z5vldGSEwX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZLU+D9L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
 WQ_MEM_RECLAIM flag for workqueue
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
> Tony Nguyen
> Sent: Thursday, January 19, 2023 10:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net-queue v4 1/1] ice: Do not use
> WQ_MEM_RECLAIM flag for workqueue
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> When both ice and the irdma driver are loaded, a warning in
> check_flush_dependency is being triggered. This seems to be because of the
> ice driver workqueue is allocated with the WQ_MEM_RECLAIM flag, and the
> irdma one is not.
> 
> Looking at the kernel documentation, it doesn't seem like the ice driver
> needs to use WQ_MEM_RECLAIM. Remove it.
> 
> Example trace:
> 
> [  +0.000004] workqueue: WQ_MEM_RECLAIM ice:ice_service_task [ice] is
> flushing !WQ_MEM_RECLAIM infiniband:0x0 [  +0.000139] WARNING: CPU: 0
> PID: 728 at kernel/workqueue.c:2632 check_flush_dependency+0x178/0x1a0
> [  +0.000011] Modules linked in: bonding tls xt_CHECKSUM xt_MASQUERADE
> xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_cha in_nat nf_nat
> nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink bridge stp
> llc rfkill vfat fat intel_rapl_msr intel _rapl_common isst_if_common skx_edac
> nfit libnvdimm x86_pkg_temp_thermal intel_powerclamp coretemp
> kvm_intel kvm irqbypass crct1 0dif_pclmul crc32_pclmul ghash_clmulni_intel
> rapl intel_cstate rpcrdma sunrpc rdma_ucm ib_srpt ib_isert iscsi_target_mod
> target_ core_mod ib_iser libiscsi scsi_transport_iscsi rdma_cm ib_cm iw_cm
> iTCO_wdt iTCO_vendor_support ipmi_ssif irdma mei_me ib_uverbs ib_core
> intel_uncore joydev pcspkr i2c_i801 acpi_ipmi mei lpc_ich i2c_smbus
> intel_pch_thermal ioatdma ipmi_si acpi_power_meter acpi_pad xfs libcrc32c
> sd_mod t10_pi crc64_rocksoft crc64 sg ahci ixgbe libahci ice i40e igb
> crc32c_intel mdio i2c_algo_bit liba ta dca wmi dm_mirror dm_region_hash
> dm_log dm_mod ipmi_devintf ipmi_msghandler fuse [  +0.000161]  [last
> unloaded: bonding]
> [  +0.000006] CPU: 0 PID: 728 Comm: kworker/0:2 Tainted: G S                 6.2.0-
> rc2_next-queue-13jan-00458-gc20aabd57164 #1
> [  +0.000006] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS
> SE5C620.86B.02.01.0010.010620200716 01/06/2020 [  +0.000003] Workqueue:
> ice ice_service_task [ice] [  +0.000127] RIP:
> 0010:check_flush_dependency+0x178/0x1a0
> [  +0.000005] Code: 89 8e 02 01 e8 49 3d 40 00 49 8b 55 18 48 8d 8d d0 00 00 00
> 48 8d b3 d0 00 00 00 4d 89 e0 48 c7 c7 e0 3b 08 9f e8 bb d3 07 01 <0f> 0b e9 be
> fe ff ff 80 3d 24 89 8e 02 00 0f 85 6b ff ff ff e9 06 [  +0.000004] RSP:
> 0018:ffff88810a39f990 EFLAGS: 00010282 [  +0.000005] RAX:
> 0000000000000000 RBX: ffff888141bc2400 RCX: 0000000000000000 [
> +0.000004] RDX: 0000000000000001 RSI: dffffc0000000000 RDI:
> ffffffffa1213a80 [  +0.000003] RBP: ffff888194bf3400 R08: ffffed117b306112
> R09: ffffed117b306112 [  +0.000003] R10: ffff888bd983088b R11:
> ffffed117b306111 R12: 0000000000000000 [  +0.000003] R13: ffff888111f84d00
> R14: ffff88810a3943ac R15: ffff888194bf3400 [  +0.000004] FS:
> 0000000000000000(0000) GS:ffff888bd9800000(0000)
> knlGS:0000000000000000 [  +0.000003] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033 [  +0.000003] CR2: 000056035b208b60 CR3:
> 000000017795e005 CR4: 00000000007706f0 [  +0.000003] DR0:
> 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000 [
> +0.000003] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400 [  +0.000002] PKRU: 55555554 [  +0.000003] Call Trace:
> [  +0.000002]  <TASK>
> [  +0.000003]  __flush_workqueue+0x203/0x840 [  +0.000006]  ?
> mutex_unlock+0x84/0xd0 [  +0.000008]  ? __pfx_mutex_unlock+0x10/0x10 [
> +0.000004]  ? __pfx___flush_workqueue+0x10/0x10 [  +0.000006]  ?
> mutex_lock+0xa3/0xf0 [  +0.000005]  ib_cache_cleanup_one+0x39/0x190
> [ib_core] [  +0.000174]  __ib_unregister_device+0x84/0xf0 [ib_core] [
> +0.000094]  ib_unregister_device+0x25/0x30 [ib_core] [  +0.000093]
> irdma_ib_unregister_device+0x97/0xc0 [irdma] [  +0.000064]  ?
> __pfx_irdma_ib_unregister_device+0x10/0x10 [irdma] [  +0.000059]  ?
> up_write+0x5c/0x90 [  +0.000005]  irdma_remove+0x36/0x90 [irdma] [
> +0.000062]  auxiliary_bus_remove+0x32/0x50 [  +0.000007]
> device_release_driver_internal+0xfa/0x1c0
> [  +0.000005]  bus_remove_device+0x18a/0x260 [  +0.000007]
> device_del+0x2e5/0x650 [  +0.000005]  ? __pfx_device_del+0x10/0x10 [
> +0.000003]  ? mutex_unlock+0x84/0xd0 [  +0.000004]  ?
> __pfx_mutex_unlock+0x10/0x10 [  +0.000004]  ?
> _raw_spin_unlock+0x18/0x40 [  +0.000005]  ice_unplug_aux_dev+0x52/0x70
> [ice] [  +0.000160]  ice_service_task+0x1309/0x14f0 [ice] [  +0.000134]  ?
> __pfx___schedule+0x10/0x10 [  +0.000006]
> process_one_work+0x3b1/0x6c0 [  +0.000008]  worker_thread+0x69/0x670 [
> +0.000005]  ? __kthread_parkme+0xec/0x110 [  +0.000007]  ?
> __pfx_worker_thread+0x10/0x10 [  +0.000005]  kthread+0x17f/0x1b0 [
> +0.000005]  ? __pfx_kthread+0x10/0x10 [  +0.000004]
> ret_from_fork+0x29/0x50 [  +0.000009]  </TASK>
> 
> Fixes: 940b61af02f4 ("ice: Initialize PF and setup miscellaneous interrupt")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v4:
> Change target to net
> Update kernel splat
> v3: added example trace
> v2: fixed From tag
> 
> 
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
Tested-by: Jakub Andrysiak <jakub.andrysiak@intel.com> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
