Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEFF74EBC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 12:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5961740C6C;
	Tue, 11 Jul 2023 10:34:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5961740C6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689071669;
	bh=C0lmBNQsh3AWM6SYl+A++zqERhY2PwdkOhkXo3rPr0Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EbxWg3FyApDi22hccQ/d3OlCSmR9QdwoHZ6/PA3HO65kS/jrDC8IGOO/JBhGzOtcx
	 MOVjZcsR7yZeAdg7TOBze3jCxufb/1tOaVRbhhuqQmshA0EFXD6gpEsOeCymBSe9Am
	 xYW53DquUIyWaFl09W7ghXUx/mr4+nuXrAcVDEWB7ZJ+4PcqCIVg45HEIW/glZitQI
	 IH0oQZK8iSoucva2+Wy2oGoZAdCUrobQeR1ANdqg2MIS4KatzBzNx/SUXB77abIwX+
	 zlK7/mrWdIm8wIIOtfT0Ug0saQylf3GoH2Ww2fH5n2iA3O3D/92bZtLyywWS/++kb2
	 UhWtHPwJ55uvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOzUWyb33X6u; Tue, 11 Jul 2023 10:34:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D52A140C2A;
	Tue, 11 Jul 2023 10:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D52A140C2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 585CC1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 10:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C6DD40C2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 10:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C6DD40C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjeYP8xxtTia for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 10:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA0C7400D2
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA0C7400D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 10:34:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="362046249"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="362046249"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="698385778"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="698385778"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 11 Jul 2023 03:34:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 03:34:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 03:34:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 11 Jul 2023 03:34:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 11 Jul 2023 03:34:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RKzSesBS2f1rFZwjuWxEoeefPZNUPFB/KP0YvjfP1o3TyqouWwwn4UZ18zy0Of/xi0klQiH7CH0hQVeDf7dyhHarNaT6naflC0MrQUFqkMcuWyZuOZto99oc01Q6MUS9hBeLvUatRhTJR6EYPl7i4jAmD9VtQWWNE2LM57LnqW6Ku5sBxZyseu2ytElfejLZG52qu7/leuy3LIy1RPFSGYoKhT5e1slc+La/9+vXbjLXhmtdbzuZqPCSoYvhyzBL4TJSUijXaPVgOeZYf1S6DhUlWRtAt9TcaPpLbEgQdsMro5KNA56NEygDJJfcIb7ZYCukQo/2STJA4Qxc6fSofQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bjhsvWFt8KMYomYrN7u+ET3hna95Grmy1D6o4LOL1Hw=;
 b=bskNPo1QUAnAsr8SswDKQTSDQcZaBX9Fl4S4BtxmjVz1OF4DXGsXXNuK7JSw9TS2GjbDXE7Az9aObzimC3+tFMThuziVxbbHjF3OLOTWKaqCRsJtQLrwrfEVJG+zaZn5q4YqMrXHcX0dG+yjLKi4g3Gji1jOh8Vx40zBAPe2CnbopXF8tF6MmKrRjAqdToMTupVttzTw8bdXGWrEMNW/BWRG6teQBuV56AccEWLovSFCbOcK9BQ/9XLaD70AFIOcL0oa9K4dnNrhOJBMNTjPcDAjnS8vHucNZc/giBCN++H7HmAQm84bOaLwNr7br+cSc0V/Yf+jZx8RA4jr+6K1Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SA2PR11MB4873.namprd11.prod.outlook.com (2603:10b6:806:113::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Tue, 11 Jul
 2023 10:34:12 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 10:34:12 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v9 00/10] Create common DPLL configuration API
Thread-Index: AQHZpc/u2XBvfmJQckCFu+3HjTH4RK+edcOAgAF/xCCAACKYgIASxLqggAAmaYCAAXNRwA==
Date: Tue, 11 Jul 2023 10:34:11 +0000
Message-ID: <DM6PR11MB46575D14FFE115546FDC9DEB9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJwWXZmZe4lQ04iK@nanopsycho>
 <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZKv1FRTXWLnLGRRS@nanopsycho>
In-Reply-To: <ZKv1FRTXWLnLGRRS@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SA2PR11MB4873:EE_
x-ms-office365-filtering-correlation-id: 5d5655db-b162-4e42-b562-08db81fa5dd6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0rE3wD1UyMeU9IM7JGxhZrOgiurYSj0Tbu1QfHzmAsBzD+Ns+73wxMKEReIS0NMa0iaV0PaihJuywzf8ItFnZMteanlIIyZFBFca1HNoPJdjJg9AJM1cKt3Ymq7ph9jUGpZjm/aLR4nyR8oFBzn4sWw52d4ItwUZ5jEvbhiUZmmZb9Gul94FEbp/lCiYp4BiDSzLtif22rbjY2Ptqo76H8TT0lyUtMBJx+7Z6ybNNiUG3Z0626onfEtn+G/SDsViB7vmC2RwAdOPx1KldjeBJt2SiYzAPD22Nqsvq+Dncgrh/RcoNg0csSRoHO2KTvJzOG13v62H35TW5XOX8w5DYhmYKvKij8Y5YlurWbvy9JuDy64N8XLYllLXSgW0cTfnehFJjoeWFSy0FQkjLdcWgPSBLvO8xDLRrBqZ/y9buuboUNS0M/A7f2Z3eR48ilVWJQUU5tyq1ScU3PqvcuNDAoSHGGkITEoSZebtIPEIWKKNVRsJ79aChDXmNLNvv6KS0G7SSIX94nSRqB1eiTtiiF14GCaR2xGycUQNygkVb28bVEA95Khrpkib2UJx2zcg69EHDesF7+y8Q0ZctJ4fw36wt29c4DIb3zInjaFd8YY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(396003)(39860400002)(136003)(376002)(451199021)(55016003)(2906002)(64756008)(6916009)(66476007)(66946007)(71200400001)(316002)(4326008)(76116006)(7696005)(54906003)(66446008)(83380400001)(66556008)(52536014)(478600001)(5660300002)(7406005)(7416002)(8676002)(26005)(9686003)(186003)(6506007)(41300700001)(8936002)(122000001)(38100700002)(38070700005)(82960400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GQFARaUlA4dnWFQgOcDFjzfBZPrBBjZpaiEz7UifZQcyvec++JpYCvZ0tVHG?=
 =?us-ascii?Q?C8rf8iJ5GCIGxntO17n+k9aaKWBtS4e43gNaSOpA9Pz/Yo6WY7HuEphPUz2o?=
 =?us-ascii?Q?zJufeNUPSnqvVj8fFA8kqkxHbQfr4kpgbJBkNB8sHQh4P6KCWOduoz+8w0v7?=
 =?us-ascii?Q?/BmBjkmEoubdBpBxt9wsqG3YmQlFy2fmgqL+aWnEYw4UC3jMh+AOW8aZtm2A?=
 =?us-ascii?Q?BfL8BJrWP3fnpUbw0jkLIXwMStL7wnHG66aT6VxS28YGFBYI3SbRhGyC/Q5Q?=
 =?us-ascii?Q?ei1fyyaIxQ4KMbmA7ggvvkWGK0B9cLJZgKQCb5sE/+P/6RmZ7+DzDsB0ODH2?=
 =?us-ascii?Q?igi4flh/y1WGpNIi4XF6oOO9T6snnqKrNneRt3dvzeVXgYKNUU7e3emuCurr?=
 =?us-ascii?Q?bqkkfuVDsEI7hRMJw8rPg5AuCqQ7ctCacjtSCoSi85cXmI7laMPQ2V6vlf6H?=
 =?us-ascii?Q?DxleD5jhJ878tJm3bhbDF2iQX68YsD+0Kfaq33kBau1ojdevA2yrL+0sz7MX?=
 =?us-ascii?Q?rl5peE24cHmbzBpxbjNdII0yvfoYC1r3KXEk6+8irwc0aJy8797mw1Mhcqu7?=
 =?us-ascii?Q?vx6o0hPrg8LeXCIVpojDuNMcycRc0S28tMFxpxI1p0YTTDXPUd1KFro5k58I?=
 =?us-ascii?Q?VfUbsZN4J6VrjqVkgzqnDs4ua/WqTdonYxhP8FXXLZBQWWrm0EYpswoynebz?=
 =?us-ascii?Q?4wgMULo8eYNqOL9wsOgF4LgNH7K5CLaJ3QORks0Ein8hginN1xj8RRvi5Nce?=
 =?us-ascii?Q?gB5BtjcHD/7M1ZV2juFr0hIyK+JTRsR4MYvCdzB4zh/OV5zjiUjYjGWTDMR5?=
 =?us-ascii?Q?KIwt6UjxsQgeVfSnNwgiiotnV5JYwpuKd4oumzDVOifiR67IVIP3f0uVDSeQ?=
 =?us-ascii?Q?F9MC22w2hOg44W6rfEjWcD8hkln76dx2+xTha9wHkggh0J4x4mPxZz/+ObDn?=
 =?us-ascii?Q?iPrwQrdQgCza3d7A22ZDTIn/1iYdkvByZ5r2pcuVa2zAg1bvzPjCaGtT8GzA?=
 =?us-ascii?Q?Lmwu2EFuwzhf0Br2ZdlQDggBN04AGZ8dBouo2s57yfkMid4Cs1XVrHI/vIX+?=
 =?us-ascii?Q?sfd+RKNOA+6fNVuXzlaLg6hm4p1DZyp5vBWspJv+7vj7OLb1p4BTc9LX8Vqo?=
 =?us-ascii?Q?nRYLxm2qf8Ncyy0LNHf+nePVkmcL86NgsTP5OV6iUyyIQ14j5fg1FuBx1DVI?=
 =?us-ascii?Q?LxluNe8TNQXmXE5NWxXwOA+3+VcZugLchdrSW0HESK8EHw3axxszGpBeGyut?=
 =?us-ascii?Q?8TtGsFepcyH0BE16AZLeV1K9LV+DEFZkQwg9NNMouqmDZlTcTBus7IdgbnKe?=
 =?us-ascii?Q?wb27kyP8uDGNd/+vniKL1PkqSFBtnuBWSrmQ4qHruhcvjD6VsQGZpzuhfpMr?=
 =?us-ascii?Q?lo19keozT/MuCfezQSQ8Je5hSB37yfgr9SmQAVMsFaT3KXk8XCCD2W/XM0tq?=
 =?us-ascii?Q?it3IBpaKAvKo8TtUzmSlAN+et0KKo/vt5MZkAuTsva+kY9VFhwKLxuz5g42t?=
 =?us-ascii?Q?eXyMpHxxc89tY2wSFvE5HkHXvhth95MDy5GXBxUg3+66JKZMt1K/0gUR9Bpa?=
 =?us-ascii?Q?10UrL3THB+/sNRpDhMkl5b8LN7RWKKKmBRfWqtoUUz1gw+1AINYmm3Nt837t?=
 =?us-ascii?Q?Vw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5655db-b162-4e42-b562-08db81fa5dd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 10:34:11.8867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +mn3lcps4nOfjj+VkMPcaRnJSl5eODLKYaiNB0UjKT3AC/hYnb+vwSbip7sFSTaF1vI6Dzm/BSr1Va9VrmcmzXFaUHSEemAtrO24Gu3Nz3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4873
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689071661; x=1720607661;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=icR8wJaOuyedmZdI7VSc8pByy2LXcflEBBdx7MHQeyI=;
 b=J2SazVR3hfo4C0o2KUEN5EMdIyZ7B6TOq4fymToUPC57t31i7vXrJJDZ
 KNg2SbKIk6i9bg4kgffQI1rAD0UQmmFQWFP6NEK/4AnjE+nGwtktZ1Sds
 81RmKG6uxF3jmarkpMJ9O7oxYyKpgkzLZ/IURj/MOt+NL5OiD4Istrqz/
 AuCpxx2fAwxI4+Kk+Y/ZJBG0soMhsRBaDIO9zVL2XtJvst/KKrPrbfqw6
 7AX1md2M2eBlf7C4vvTrDGiGbsmBOSVTa5Cis+sSlD2ALZVEZbovn+WlL
 WC+Cr8ZWrHSncrZPGOVGDFH/RVFiw/svkni5vnqqnSB0YfoepOlPGVtAt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J2SazVR3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Monday, July 10, 2023 2:10 PM
>
>Mon, Jul 10, 2023 at 12:07:30PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Jiri Pirko <jiri@resnulli.us>
>>>Sent: Wednesday, June 28, 2023 1:16 PM
>>>Wed, Jun 28, 2023 at 11:15:11AM CEST, arkadiusz.kubalewski@intel.com
>wrote:
>>>>>From: Jiri Pirko <jiri@resnulli.us>
>>>>>Sent: Tuesday, June 27, 2023 12:18 PM
>>>>>
>>>>>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>>>>>wrote:
>>>>>
>>>>>>v8 -> v9:
>>>>>
>>>>>Could you please address all the unresolved issues from v8 and send v10?
>>>>>I'm not reviewing this one.
>>>>>
>>>>>Thanks!
>>>>
>>>>Sure, will do, but first missing to-do/discuss list:
>>>>1) remove mode_set as not used by any driver
>>
>>I have implemented in ice (also added back the DPLL_MODE_FREERUN).
>
>Uh :/ Why exactly is it needed in this initial submission?
>

Without mode-set there is no need for device-set at all, right?
So it is better to implement at least one set command, so we don't
need remove device-set command entirely.

>
>>
>>>>2) remove "no-added-value" static functions descriptions in
>>>>   dpll_core/dpll_netlink
>>
>>Removed.
>>
>>>>3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>>>>   after each patch apply
>>
>>Hope Vadim will decide on this, the thing is merging in two patches
>>doesn't make much sense as there won't be any linking until both patches
>>are there, so most sense it would be if 3 are merged into one, but
>>then we will be back to one big blob patch issue.
>>
>>>>4) remove function return values descriptions/lists
>>
>>Fixed.
>>
>>>>5) Fix patch [05/10]:
>>>>   - status Supported
>>>>   - additional maintainers
>>>>   - remove callback:
>>>>     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>>>>6) Fix patch [08/10]: rethink ice mutex locking scheme
>>
>>Fixed.
>>
>>>>7) Fix patch [09/10]: multiple comments on
>>>>https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>>>>8) add PPS DPLL phase offset to the netlink get-device API
>>>>
>>
>>Added few things on this matter
>>- 1 dpll level attribute:
>>  - phase-shift - measuring the phase difference between dpll input
>>    and it's output
>>- 1 dpll-pin tuple level attribute:
>>  - pin-phase-adjust - set/get phase adjust of a pin on a dpll
>>- 2 pin level attributes:
>>  - pin-phase-adjust-min - provide user with min value that can be set
>>  - pin-phase-adjust-max - provide user with max value that can be set
>>- a constant:
>>  - DPLL_PHASE_SHIFT_DIVIDER similar to DPLL_TEMP_DIVIDER for producing
>>    fraction value of measured DPLL_A_PHASE_SHIFT
>
>Again, why do we need this in this initial submission? Why it can't be a
>follow-up patchset to extend this? This way we never converge :/
>Please focus on what we have now and bring it in. Let the extensions to
>be addressed later on, please.
>

Well AFAIK, RHEL is doing some monitoring software, so the end-users need this.

>
>
>>- implemented in dpll netlink and in ice
>>
>>>
>>>You are missing removal of pin->prop.package_label = dev_name(dev); in
>>>ice.
>>>
>>
>>I didn't touch it, as we still need to discuss it, Jakub didn't respond
>>on v8 thread.
>>I don't see why we shall not name it the way. This is most meaningful
>>label for those pins for the user right now.
>
>This is not meaningful, at all. dev_name() changes upon which pci slot
>you plug the card into. package_label should be an actual label on a
>silicon package. Why you think this two are related in aby way, makes me
>really wonder. Could you elaborate the meaningfulness of this?
>

Without this, from end-user perspective, it would be very confusing.
As in ice without any label there would 4 pins which differs only with id.
What names would you suggest?

Thank you!
Arkadiusz

>
>>
>>Thank you!
>>Arkadiusz
>>
>>>
>>>>Thank you!
>>>>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
