Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6F57CF4FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 12:20:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 111A042EB1;
	Thu, 19 Oct 2023 10:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 111A042EB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697710821;
	bh=bZSQHSEz6ZlYk61egoYvcgyZ5GLx3PQ2io23othurp4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qSrscBg9iCVT+BmEX53/v4KuMHgelTf43nuwnZrcXJjzGQfzFIupqT46i0wQVIXxg
	 crVD919dzt4iiKnOsMNtgvwiTSDa6jQxHtPGwwg4VqAvMOGN70kBXg2QtXBLBHj2hr
	 eACA9RsqUSAEq4eayLqlzjZM/Adt/TO6YgrBn47FSsvmkNGON42vxFuLYLmtkPFT8V
	 /jUYBXRYuAbl+oAseHWoYMiumU+y3EqhateC3ivjmsWPTJiKjntGHG40z8Nm9gJrHt
	 ueQQIlz1vv8PtG5eg90CCbmexwc5/bF6yBCAYXJBY5f/1TAlSlkjJO+SxzXiDPhb3V
	 +qvGk25kpJKPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMMW0iAYx9nA; Thu, 19 Oct 2023 10:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A28140585;
	Thu, 19 Oct 2023 10:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A28140585
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD7141BF48D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 898D8408BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:20:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 898D8408BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UhEQmMd2oteO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 10:20:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 866AE405B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 10:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 866AE405B1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="386044985"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="386044985"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 03:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733516333"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="733516333"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 03:20:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 03:20:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 03:20:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 03:20:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 03:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T2CJYBdfoiXeLJx7hct7xdMKkksgc7tPXw2795aqnSQ60POQEzX7xG+HBhXwr+XDWFKhrSDk2PAarq+d2iSuZNrra+J8xZzPH6UBhFE1d5d0gAeRc//EPNmWpGO7QtjFTVwGImfZpH9ieVgmgSE4zTLmc3f7+0UeuX6lyoMdlVXczy6RVgnKucftOp5rP5KwZThlcjTVu7yHHsFPXqaSbgwUdRonVAKPhv8h0qNr5mTK9iZbKgIHog/QmU5sl+nkdn1iNaWeVT2ptDlJS0Kf04IgL0kdIPeQn6lOh3o9RybZ97hvqJPj6BkxoVBoc8X+4tr1l4acvVXbaF0DhKguXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MyJJdclIuffXCDSP1mPKvA5eelIDHEsFn7qWBmNuDMQ=;
 b=hioGastpB6BN7hJ+DqtkHSKZUeZVYk5GfbThih3nDYzLSbgTkdPuAe25W1XZGLYckfmbV2UOOioowzM090x0u7zgcdKA43aadquiMBQV/mc86Y5sqMoW+OkeDhedPfK+UFwW/irr23e8379iz5CL4D1ZyNZ9X55MwDNFU+xDfxdwULU0+PgKY1u40PMkH73gGRKhOWCQ8RuTwE96Y1/VJOVQOrsfdE5bkexk2CK+SCHx2Dk/4IxcAwvRa47/KhjEgrFkoL8apYXNZtQd3633Xb364iymWLa7vy6D20+7Au+PRBClxEf3laLB3XRpVgz/MqtCNm0cbKJOL3FKUG8lAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by IA0PR11MB8353.namprd11.prod.outlook.com (2603:10b6:208:489::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Thu, 19 Oct
 2023 10:20:07 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::a2bc:136a:3f41:c858%6]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 10:20:07 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ice: manage VFs MSI-X
 using resource tracking
Thread-Index: AQHZ6fxAcDH+Hy1XhUeIvnwfbWnrAbBRF5bQ
Date: Thu, 19 Oct 2023 10:20:07 +0000
Message-ID: <BL0PR11MB352154B2BC787102C5C4AE108FD4A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230918062406.90359-1-michal.swiatkowski@linux.intel.com>
 <20230918062406.90359-5-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230918062406.90359-5-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|IA0PR11MB8353:EE_
x-ms-office365-filtering-correlation-id: e8e77860-701c-47cc-ee57-08dbd08cf800
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HliXT5hhL8sl+b8zFLbap1wVP2RAx47eTSw0ExFQOcRN6pBoFem5JUBNcvIw4faqbNcelTgqq+NkWJEvGzKTEloohMecseso2PKQqlTDZB29a0OV8jOUL/upA8ZBQnNJxUpn66lZWV1MsL+ugveNoroSGrRdFPK2WO/53tNyWrFm5xYwS8ICEnDDFA/6BBt2DNRxWCts0OtPfZy0KJV2hMpvuNiMZUQnnYgarpcy16u2jGfBeaUIUN9GyDuRI1nClzf4Vy/Y2/92H228dWc5sgszVD8hS8j57d5ppxQKekTTCRr4FRid+OaGWUjGxp9E3YzMiZ6T7BARJBQdQUo4Lg7T6kG96I9gT3xFUs+1hUuDcCCs6oNUJY/ffQi6CErbp615E5rqHR0I1yBfRWeoyPklrvBXk2pDx4Nnv6nnTO30s3I6z9A1PByx1qr7cGFIB6BD6dQpR47rKATft+XOCY45ZzMNud5PVyOhbEoEes2QTZZAy26yg79fCM+LEL2DLt0jONp4aFt6TdwMHkM8j5soYdz00+C8tAm2AjfP5nTZMvwrMgRx11MUdNd2hKGsbqYN+Awya47xdp6qrBpxgDgTH6NfU8zbmVNP4vnvRypklNtgE/83FBu+GLDaekdw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(478600001)(6506007)(9686003)(53546011)(7696005)(83380400001)(71200400001)(54906003)(26005)(316002)(41300700001)(2906002)(66556008)(4326008)(110136005)(76116006)(5660300002)(8936002)(66946007)(66446008)(66476007)(52536014)(8676002)(64756008)(122000001)(82960400001)(38100700002)(33656002)(86362001)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gyw/JjatQREDQ8/pWmS+5osEhjFoX00gvPWJQvGfdqVSYZvDk+BHT3LyaCtY?=
 =?us-ascii?Q?+2/lziL/RQM3orYTlGVX02aVlaZMEUQM6fnYqZ4dRXsd24jieL2MbT9OW2wB?=
 =?us-ascii?Q?1OjdMphdj6SprUHGo2Bychx/TLbl2uPQaAoTAKQ0BQLI5TZSMiomhWJ9BRbK?=
 =?us-ascii?Q?BFAorGO67/F4lQB1QSZrp0d3Os+yYwLyufqrvaooh+ciCdoqhetCFWRbm1H3?=
 =?us-ascii?Q?aWk/QvcCNNScXa0RXTp+t7VrBjRMCcx5elPHTeEJFl5pJcE75YKh7IZiPRjw?=
 =?us-ascii?Q?X/uopj6dY5vYu9lh+inF7ZuYEx2wIDA1BevQ+QYCoAirDFFV13OgJkC0RHQN?=
 =?us-ascii?Q?xoiwsCJTLHyYjC9p6kkiR0ysQq9BlziuB5ODk0kKaLInl5hW/HNEnPLe+DBw?=
 =?us-ascii?Q?kJQoAW2xNkL+8mC23F4BiXJAJi16WS3Z3NITNl4JhUdUQTnLyyc4j+gdwcys?=
 =?us-ascii?Q?o8/vQIDjSWf0YfJlt0KeWnOKg1/xXbzhYoUQT9jjEakIaQDdX51eTBkyQJy6?=
 =?us-ascii?Q?b2240tvwWk/VkDCJOA5YUaltQoxW2wWiJX/x+BOq1p8660PiAOWhTlelgTSu?=
 =?us-ascii?Q?ar3lgO43T/z1Jub0KqnJG+d/AiGfZMga0mLhSh7RTobmotkc02ijppjhj9al?=
 =?us-ascii?Q?ug/vCH6fNE8mKL0GtyVxUPwC9zgC5kLUB1/gV9/CY24GQT4IesZ60PMK6NX4?=
 =?us-ascii?Q?+UGKi0BlKna8zKb315zvEF+l2j8o4YezZV1wU4m7c6F0kHydys3YyJg+mPYJ?=
 =?us-ascii?Q?C6kLUVMM3hCwvdUxQG4W2QXghae7bHJIVVudlp/XrZC++MnT6miGkD8RVL8D?=
 =?us-ascii?Q?+NmTh4Qxzq9JyDjit3P6+1J/rD/w38Gj2o3rdhdIgMiyhYrxjNSOpxEwoIs6?=
 =?us-ascii?Q?z+tR6KDP6NmKkwBiixC6GeRq68/R4jAWI5e6V0/uD3SJ6k0KNyLoqfOIzrkC?=
 =?us-ascii?Q?xHEHeqqeSGscKmjV/pKoKtuqgJLZD+p1qA0S3GVH8jQGdu/AJvK0lNLU8c25?=
 =?us-ascii?Q?GLMkogURrHtbxBZY6Uj2XXY76fdUv99AGEo4im9eLsqZN9r4iZB0boJRKihW?=
 =?us-ascii?Q?EPXXMSWU/hxP70Zg9JZkGsRDVx0VER0pysDOSXjdNpU6nlcSGWw9zbdwOEWi?=
 =?us-ascii?Q?8nGNG9D9W82fCexB6q+yw8fSWeaW5Ib4sjEFelz9ywZre8Nbyj8QAAlcA7Pe?=
 =?us-ascii?Q?DMDq5vR6wpQiixhnKZdrT7DtTEONQmljW8giIWE14NbIyhrszXHtVBUYjz0t?=
 =?us-ascii?Q?WTHDUIPZ8rrYCMGgIwQD7DG6UK4YvoofyPyBmRjRFcDMFhILEo+DHiV9Ogqe?=
 =?us-ascii?Q?7xgQe8uppsoy4M5+v2vTkbGiHEQGIkc9h/uZPebQNM4p8Cpj3hBVMjEIm1qw?=
 =?us-ascii?Q?P/GthVlbq5cfUJq/4AF0L6KYSJpq03zfImYHjsdYlDelAXHlIgXCKRVeR7Dt?=
 =?us-ascii?Q?LMZskE2DhTAX58PMbAu3Qxl5hsYFfOQedzKhvzRIfP3dVz7Ht/ISLls06AFT?=
 =?us-ascii?Q?cN4OYxbebZKjYzM4Gmr+vEddLjgTNp37LTtOUBjySEwPBA9f5ODHmJP7mwcI?=
 =?us-ascii?Q?SbKB7zsBBMYjuVOBZHFJAJrxOAtiw3ZN47ItAQmA4TU6bg6R1u0YiO5+VOw7?=
 =?us-ascii?Q?Jw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e77860-701c-47cc-ee57-08dbd08cf800
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 10:20:07.7752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YdtlEYtnS2SLWKJkS1b2NmlYSAUjozSpxMquOC0YuRmWqAsXf97rHNZbIHbTQeG64jhv3nUWMah++HVARZjFrQufzRGNhHlGOLkbPp++Dz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8353
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697710813; x=1729246813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WbNW5m6+qFcPr0949Q0CCtphpA5FKGmRiPEyzks1uaU=;
 b=R2YAWyaFgVTB9rkkkvKrgvzHZjeK1KiNluVbdUpahajCFbi12AdeB6Df
 XjscFgc3Pa9zzdR/DGZoBzdQL9pIkGK9bhjUAyStXlZRDiRivIxns4WIj
 WwB+OBPtLEyMyyTrWBGU6Qy8dTmjj2lM4Vt5U3xuNpfqdZlZ0TV+NKSA8
 3pG4WCtZPH6BRu8VTJ2RYlGpPdOS+/3ntn8IHr1ZcbTunIKw03Vlcb1Yi
 W79D1hZE5zJJ1alogv7wuRgS0jpqy8tuk6mcjHPZguFBXbdyWRp4JYT3D
 oQDrRWTdvzgnhz0s/uRqIG8qWG5gQcnHOGRdRc6YaLHqKaZieLyBR6f4e
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R2YAWyaF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ice: manage VFs MSI-X
 using resource tracking
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, September 18, 2023 8:24 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/4] ice: manage VFs MSI-X
> using resource tracking
> 
> Track MSI-X for VFs using bitmap, by setting and clearing bitmap during
> allocation and freeing.
> 
> Try to linearize irqs usage for VFs, by freeing them and allocating once again.
> Do it only for VFs that aren't currently running.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 170 ++++++++++++++++++---
>  1 file changed, 151 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 679bf63fd17a..2a5e6616cc0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
