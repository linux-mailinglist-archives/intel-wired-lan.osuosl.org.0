Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C947857984E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 13:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B080B400CE;
	Tue, 19 Jul 2022 11:22:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B080B400CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658229751;
	bh=UavwlB9XOPI7MAN5dWQWusS8e55hmWIQG2zvTuu8d0s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YxsFSmGkeUaqklVDOCWLpLOcJ6/GNrWJvkICW+uyk8Ib6JzRt64QoCMA2N7H6Pn5O
	 hQlirqZ/B8gVm16rVZ3/bgHUCChp2z1nYqWhsgLL6q1Ntuca6JhLYhq52o76T/Nzf2
	 qKiWBb3ZyDJ+Z9Uu5LssnmtZ5KfaZaaXs25c8bTh5V/czOOWB/4sf8ym9apjz69ryh
	 po8AWFXhBdpRerp7J1Hw27oZSm/lXMWiCw2JSKIMK3V3L3NJ+4cvbFr6l47VJtjqJR
	 jdGAQEXfTwFwxdnS3B0DtxhEVLa63D+uUJP9vmVtBo71ynJ/hcIbDNuDu4bOVgzzdH
	 mZppGLEY0ZoBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tS2ciLaXI6Go; Tue, 19 Jul 2022 11:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8296340BCA;
	Tue, 19 Jul 2022 11:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8296340BCA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1411BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 724CF6068F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 724CF6068F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YngWW3iZERz7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 11:22:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 991D06001B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 991D06001B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 11:22:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="372768425"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="372768425"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 04:22:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="630293235"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2022 04:22:20 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 04:22:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 04:22:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 04:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gIIZZr7234YU8cS/Kmq++VDB/hXeA94H0W7XyEI1SbNVR/WdptG/T711ilFo+90D/OMS2MRDYU+EReVUTXgVp2hF1On29Iexk6WBBV5YUHkUtbK3RLDqjDjtzLaB6/JVVqWsmmf/+TvsSeBCeHRphpMc5s8+jwgT1EnZU0gVHKePWs/KpzpUJucwjdj24cM0neriyuoTRwvYSiG+gGseRribZdWXKq4ZBRT+fTZVM2IowUqhpqsgO/fT8TRwEIq0A4p9dz5uL1FwcpaEo781Y1JyvTnsMyQ1vKdQIH0ej/xqHOVqn7D0L10soJIhYMpnSNVggK8W9d5iXpRQQ9O3pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aeLSA9tLUo4d1zxLwFlxlq3tnNj/1L3MNEEENp1tnNk=;
 b=NAbU6Xv0hb5ua4XkELVWWrJ0IkfVz7xE/Lk0v1Gf6Pp3l9yiHzbzxxARjdg9bpH9HwXm6vNLMLUOK/D63iwpG0+ta/wtbj7LvojR+zfIGNnhQPpkP0GIQVXIAgt3a50TMASl955zUWJ49bORcXEDKgeUz15WdBDGxJniSj4is4w05V2z+uVQeJgxdozcj3H12cAQfe4AxYrugVLKODnE/WuSfQ6yg79ZU2G3+fqqX/A5ZMy4pq30XOOJKrnX9MIQoxutpyf9peKmZWbyKsaKYi5M0XpYHRMf2ihT9QrfVAlp8yjlIE/zIGLlzVpbmambUqvrC/uLcrCWw7mV1HGWLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3609.namprd11.prod.outlook.com (2603:10b6:5:140::20)
 by BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19; Tue, 19 Jul
 2022 11:22:17 +0000
Received: from DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::169:2b76:cd12:9dc4]) by DM6PR11MB3609.namprd11.prod.outlook.com
 ([fe80::169:2b76:cd12:9dc4%7]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 11:22:17 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix 'tc qdisc show'
 listing too many queues
Thread-Index: AQHYgL1qNEwbMYxZR0Gq9lgp0EKyva2Fwcaw
Date: Tue, 19 Jul 2022 11:22:17 +0000
Message-ID: <DM6PR11MB360994A424AA4FAD56033BE78E8F9@DM6PR11MB3609.namprd11.prod.outlook.com>
References: <20220615133628.3187450-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220615133628.3187450-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f6e5cd4-888e-4179-1f2d-08da6978f058
x-ms-traffictypediagnostic: BL1PR11MB5352:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CYCjofKi6J48gAfGEt7rjJosmql6hAL3ELZggVCBHPKw6lWxy82C1n7FoHrDMnORUedFnfgYOiqslJxXtrnOzUglY7KFxkrTUW53XJPGtAFEaP+4wU7xQs1FIF6fe2589YBmAsCFN/qz3sg0GxEenqKTsX6+dd8iXnSx1pWHBJET1u1p6vIH6WmtU8ZT+UjvLni/igSakKUN1GSZI/PEHq0pSViW4Z6oTvd6I3SMvhkN4XvpC8fna79Fo86z1j0kTPSLB7y/DpaBsmcbE2V8WRACSBjBs25h3lsVO39Yxl44AmFhVAEGf9ABQ45E6FgUdIDFf9Z8Trkgh7cijHLL/suwop7BGTOZzor28kL/EgEHSC8gZ22HYkHeSu7UmP5o57kCEI8MHpPGSD5etzTdRcTpOjeMVuy/LqsGzZurp0QWsK/EElPGxmLZcxObOlY/+cPig8eVHV/6FlxeKlQly27HXx2Dkrr9gAHMb2/s1LG8RnzeMWgn+HVB0duVtsYmTkGKL3BSNy5udKKpaq8DZ+n+nKxYHx4BQ874glW7Vc3jOPhbkuRN2Al94EL5wn12YbS3bm3Xq9HUk2wtoeQnXuhcF/OSZ1fjjgagARjCKqq7Ubh/trBtZXd5TGjcRiZWi4UhBho4ejXm+Qc9T9wop6772QC9e3oNwKl4TY0iIdGvXqCXz4sO5KXjuJTYpowDXznM9vuktwcMqGZXiYD4HMUXpv+GCjwCgNdb/P0JYpvj7UJxsZLw206BwlvmdAeHrAQHHrhnbckwhX1AMa852Z6S7NeUQhcDourFcMxmLDCEBIk3Sm5UZiZNW42fvMJ6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3609.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(346002)(396003)(376002)(39860400002)(9686003)(41300700001)(186003)(26005)(122000001)(55016003)(2906002)(5660300002)(83380400001)(478600001)(71200400001)(7696005)(38100700002)(52536014)(66556008)(66476007)(64756008)(38070700005)(76116006)(66946007)(86362001)(33656002)(8936002)(82960400001)(6916009)(8676002)(53546011)(316002)(6506007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pxbMiZZjPbXFFKvFUJA6fJSzPvJ+9QyRxdu0VLIS4Z38ujUg2YW6FMzDFznw?=
 =?us-ascii?Q?agxiC3g/I1AOB7zdyHefkPV70cihWCdrFPq9loadcgIz3ytOL/+2NhpPdA/h?=
 =?us-ascii?Q?BN4VmstF8IeYIneiuHP+jZ39pJB/ct0qkoilwuMnmtfbHE7Ar61crG64vBVS?=
 =?us-ascii?Q?TWyrFzfvVFjH1A2uJoFuSjPqXEWJJ9vtKfLSxl0PJ2UPdppHVrLEYPIpRINf?=
 =?us-ascii?Q?y89Tf8MdsxsJ0xVv6zO2WDdVjtxbi5OjjOzLG5GqKH098yXdgiihfkOIUCcP?=
 =?us-ascii?Q?d2I+MwVo3he6ChSOqPX8l8Rs4zGhlEFv6UiwsMGZ1gy2KB9oP/LhGUpeV47T?=
 =?us-ascii?Q?7GZFY/c7FNWwOzOsR1VeUOWSAPtbKCQEMvT5gGwt9OHAw+2BSs3KE3G01dKm?=
 =?us-ascii?Q?apGTINdNcF1MdSSuhH1vNYqvMQZcTBlvI+C32rI86S9HAfNI3BZ4rHf/f/zG?=
 =?us-ascii?Q?5XB67sBqWF4Rsn6pZy1lPem1YE/uj3k0T6LIS4ebslRbjmXGXCwv/8Zekgry?=
 =?us-ascii?Q?D7JN0hJ1G8xbB8Fkz8pOd0QF21HFK38tDjgwxevOHOiLLJ2OTi54EJyoXd/o?=
 =?us-ascii?Q?sb4+SXKo0azv4zAU9IcmSbU8sHxoyWljM6YHRGjeJ/+Yq+BWrBRzbrELJioF?=
 =?us-ascii?Q?LE+upJ+vX6U1Za2lp+mF2ahEPb+N1Xr9zXyXvs/RKfBqWyHUWilKGrm2+h8R?=
 =?us-ascii?Q?vLMuk2lGHbvtFxS1EYGspkAHJwxoML9GLRAArXeEGy5PDeGlT8V/PXi0A/Hx?=
 =?us-ascii?Q?Uwx1/bwoCdDAsIDZhbC+n8E42I18du9QGgDybXc3YEUno6L3wZNuBAaQ7MEX?=
 =?us-ascii?Q?2RpI1f0nBCzGDzKzw8HYBnQPoS0ijA2+91ElFctH+1WX6A0Sd0zfjyErRhIj?=
 =?us-ascii?Q?4vX46EchXbzI9/P4Yz5XaF7yFGzcIvzQYsa1r6foJA9HaoA+AC2bbCn/eFNs?=
 =?us-ascii?Q?DrHQAUpgk1h0b9P/yGrZ1GvcTSXhsi50tb/Mqtzs8rX5nysWlsGif+A4j2F0?=
 =?us-ascii?Q?etWlXNrSop8kbN3Vxw4ORnsRXbP6MRazzIDQwak7eenLjrHGBjOGosBC0F3q?=
 =?us-ascii?Q?W+XT6UO6283EtUyPbe8G83vHSBJDGBDKdbFuAnphgOHnSFEf5lMvoqJLqZao?=
 =?us-ascii?Q?GZntkOoG3xH604psxXDxSH7nVc4n9EZ4KVfRjXzSHZT/nwlrRShZKw6A4lj2?=
 =?us-ascii?Q?O9fFlN81KaFpi8OrW4V70PCXoX9QHCczmzmnJ+qHEuN0LkOZbhFM3AGEuU0R?=
 =?us-ascii?Q?W7qC5SeYqoA3D6bsiHMMEGg8sLpJaH+2KuKe0REclu4xVzTz5xv5s/8tP6wa?=
 =?us-ascii?Q?WBUD+EEuazYba7tEJx6dgowxRScmcMi47No9azwVcKUwcdg6gzGwD/tQUigp?=
 =?us-ascii?Q?0N6t/6YZJ/r5Rd8TnmwvwcxYr6KMQELCADFKsJUQsSACvFAWr5kF8Be6JASY?=
 =?us-ascii?Q?Z1iEpM4LRKLs3cOTkcwIu3kYx+aEXKoKvf0krllvXqZb+OLzdcEibHHnP93A?=
 =?us-ascii?Q?BrSkEteZ3B9q8fTJ3DXLItwwwpstc+SDlLW9+vYM/jEIi9ifqJhrbF5aM337?=
 =?us-ascii?Q?OQO7O8XvovOCNyfvINTdhGGv1u7UX2SRCCK9qNpkt/zVV9M2JtMkR0klDo2y?=
 =?us-ascii?Q?6w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3609.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f6e5cd4-888e-4179-1f2d-08da6978f058
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 11:22:17.5489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ITvBjQLVEzfn9uMTrMbNIESzn5Y5yKpouUGAfL/TTWDR4CG9vPrlSGjcc7pJejFxbQUiBmbruyTjMGOHuXzMRgz99PAWQwaSUHE67jirZ/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658229744; x=1689765744;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FYXkJpoqBIzKbMvqday7uL5mJVhLA0kezdPoOwUXnb0=;
 b=foecnE8G5G7bLC5vT7Lht/7268LAugW2gMF5heeP3OvF4wCaYRYzrFZ0
 63bGcfV8eIFEGlBUdZJPtnck0ixMG+Zl44SRsZIJ8ntxNLh04fkkgkKov
 27cX5FV2RTojVW96txghc5u/LgcUAD6EooIVAcqJPMugr16gFMmvdR13N
 kWtOMiKXFED4yqesNawistBMX5t3tEvjCxp7RCdOFjqo7TPpvyqzJ9cIn
 0yExsReKqoX8dUqmczCVfPPPXzuzc9BRvuAshSqv1J+3caw/5p0aWTAA/
 MfGXMrBq12txJwSzoHbxUdCavuZV2HyG5SlytJtnVIES6itYPC3/ZW3v1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=foecnE8G
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix 'tc qdisc show'
 listing too many queues
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
> Jedrzej Jagielski
> Sent: Wednesday, June 15, 2022 7:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>; Kiran
> Patil <kiran.patil@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix 'tc qdisc show' listing too
> many queues
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix tc qdisc show dev <ethX> root displaying too many fq_codel qdiscs.
> tc_modify_qdisc, which is caller of ndo_setup_tc, expects driver to call
> netif_set_real_num_tx_queues, which prepares qdiscs.
> Without this patch, fq_codel qdiscs would not be adjusted to number of
> queues on VF.
> e.g.:
> tc qdisc show dev <ethX>
> qdisc mq 0: root
> qdisc fq_codel 0: parent :4 limit 10240p flows 1024 quantum 1514 target 5ms
> interval 100ms memory_limit 32Mb ecn drop_batch 64 qdisc fq_codel 0:
> parent :3 limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms
> memory_limit 32Mb ecn drop_batch 64 qdisc fq_codel 0: parent :2 limit
> 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit
> 32Mb ecn drop_batch 64 qdisc fq_codel 0: parent :1 limit 10240p flows 1024
> quantum 1514 target 5ms interval 100ms memory_limit 32Mb ecn drop_batch
> 64 tc qdisc add dev <ethX> root mqprio num_tc 2 map 1 0 0 0 0 0 0 0 queues
> 1@0 1@1 hw 1 mode channel shaper bw_rlimit max_rate 5000Mbit 150Mbit
> tc qdisc show dev <ethX> qdisc mqprio 8003: root tc 2 map 1 0 0 0 0 0 0 0 0 0 0
> 0 0 0 0 0
>              queues:(0:0) (1:1)
>              mode:channel
>              shaper:bw_rlimit   max_rate:5Gbit 150Mbit
> qdisc fq_codel 0: parent 8003:4 limit 10240p flows 1024 quantum 1514 target
> 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64 qdisc fq_codel 0:
> parent 8003:3 limit 10240p flows 1024 quantum 1514 target 5ms interval
> 100ms memory_limit 32Mb ecn drop_batch 64 qdisc fq_codel 0: parent 8003:2
> limit 10240p flows 1024 quantum 1514 target 5ms interval 100ms
> memory_limit 32Mb ecn drop_batch 64 qdisc fq_codel 0: parent 8003:1 limit
> 10240p flows 1024 quantum 1514 target 5ms interval 100ms memory_limit
> 32Mb ecn drop_batch 64
> 
> While after fix:
> tc qdisc add dev <ethX> root mqprio num_tc 2 map 1 0 0 0 0 0 0 0 queues 1@0
> 1@1 hw 1 mode channel shaper bw_rlimit max_rate 5000Mbit 150Mbit tc
> qdisc show dev <ethX> #should show 2, shows 4 qdisc mqprio 8004: root tc 2
> map 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
>              queues:(0:0) (1:1)
>              mode:channel
>              shaper:bw_rlimit   max_rate:5Gbit 150Mbit
> qdisc fq_codel 0: parent 8004:2 limit 10240p flows 1024 quantum 1514 target
> 5ms interval 100ms memory_limit 32Mb ecn drop_batch 64 qdisc fq_codel 0:
> parent 8004:1 limit 10240p flows 1024 quantum 1514 target 5ms interval
> 100ms memory_limit 32Mb ecn drop_batch 64
> 
> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: little tweaks in commit msg and iavf_main.c (remove/add blank line etc)
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  5 +++++
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 21 +++++++++++++++++++++
>  2 files changed, 26 insertions(+)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
