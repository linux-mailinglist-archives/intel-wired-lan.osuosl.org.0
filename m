Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E62F54A7B06
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 23:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68BA283E8C;
	Wed,  2 Feb 2022 22:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M8dqzf0f4AoW; Wed,  2 Feb 2022 22:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B084083EA8;
	Wed,  2 Feb 2022 22:22:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E65B1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5021540A1C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bplAQcJy8VMv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 22:22:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 744FB405CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643840524; x=1675376524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pbix7N3tb9mBZVkKUySC+EbDsTQtJcSH5Ls2opRZTFA=;
 b=O4qFFXT69L9Qn8RQath1TzeGRKpdElHDhAaPIppibGaJFJnhiiqGWrWs
 cqmsD7rapwKMBOwCpVlH80/f6IZPq6p+6AD8UHn1fjqEN+00cSv7fp3XY
 Iuj++lq4RMsB0p3yFa1bxoIRJBmu5w0VLmio/PVFviqCRwER4sNVUWjqX
 Guow99swTcDv7TdpHHtDmpw5FxlT9s8VtPj8TCeuZ9WOEnjm/eKVQ0gPx
 TDkeLEm+RYE4VlNRV86/IvJS9P2qw5IF2M8GQFGqDH40XkTSQXLPS7DT2
 ANSWgc7ZIGoZL6+bicsPditDlUmoO8v576qfUpkyAN0qUR0ze5EXgeKcI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="308759320"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="308759320"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 14:22:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="583597058"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2022 14:21:58 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:21:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:21:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 14:21:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 14:21:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eJtJYLwtpkOaKrCtPVVaKokZKwkY/8QgeLpu53dJvMGv7NuRR1yoT82l6r0HWHuAicpBanNENbTmOA8vlbuZABPnJ7jTtwlFv5/abv4AGzkW4DKbn4+jIz8XGIy5hr9ufzZxC9MOJYtQ33XTx97A7077QjSXJRnexJBlNoJ3HbbKcOzR9njF0+4nWgc8HdWi/i+wky90i3BgboB30kkDhliS58sLvGiAiiL+mp58ttY/P2+Rifw910P5Zb6/IfN1CWSu6M95TuVzrKALnZDxqMf8XlaBqMsQK0rnGH+o/8c0EWAw2xsJs8ic3syuXTAdRvRu3jOYM5hbumXg7pBRIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KbaJ+nF9eHy8OaI9SslgKWmwl/mRkW8ZLxzWX7iIkDY=;
 b=eZZJoKcfdBUksE7ia3vHtlecVdqAKZ9aB/LeoWbcIc/ZNAoAUBK71eN47+Jmo/1c9x8pajVGwgmTV3q+Vs3TZwbQN8v2Aq2elTA9bvUateqvIPoi8RFHCy1OZkPTjmdw6swA/j092QbFNQHb25zaPBo+nfgQ+BJ0tzrXw6KnX+UhR1nxJRLcCYOWQ9tz9Lorjrxq5P9GD6cjB/w5nf5v8OLGH0Uz4aKXrp0n8hJoOQabHhFNIpLNnwWKbIyLVWsgL72ZRm+pIElB2R+FlPsENUEhuub9fvlos76uxDdAUvEPeYij673XOvmrcKTR2yVBHfmijwDV2eBUhTf64eSiXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by MW4PR11MB5869.namprd11.prod.outlook.com (2603:10b6:303:168::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Wed, 2 Feb
 2022 22:21:54 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 22:21:54 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc
 and virtchnl messages
Thread-Index: AQHYE97UbqGZGUG4j0uGbi7+tOEfA6x4Xo4AgAh/JpA=
Date: Wed, 2 Feb 2022 22:21:54 +0000
Message-ID: <CO1PR11MB51865CAB7217DC106C5F95308F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-6-alan.brady@intel.com>
 <20220128123244.21159-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128123244.21159-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f231a1b8-4ef4-4f45-22ee-08d9e69a6b39
x-ms-traffictypediagnostic: MW4PR11MB5869:EE_
x-microsoft-antispam-prvs: <MW4PR11MB58691AD225EEF55E8598F9B18F279@MW4PR11MB5869.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e0GyeW/3u2iCsvJS74docFlNYHdUqaLOcWrAjgGDJASqV73Sn3XAWEmXOnnl37e+4w6ZqiqVcLeDVg2a/qYRcwcYefIlVIOpPD1KgbkntjIMrZrISSLU5Y7ZWcwtzCnfnWRFtiSqH6eQ8sGGDf/atb/1GPjl1ZhHEnRMssJ3RZmSsrkj0btzfK7/E6cGKwe2/Y50/KfLZV7NKx64EMkF+OQpbALIGgukMqPM/6lOZSM3HDY6tpBghBoLBqDzDhRVYMCcUF9ukGfKQYg9Cj6W5e9yQ+T3iRXyIrBFmwJVAmsILqGkD6cJ8lnZl8pld8v6p/UilOSv55aXj+C+qsqfAAFGfydhFbn7mqwh5rRwRmBoOHmLhEbUQa1gXM4b5jnRXarsPyCS5cdhtyRkclmVfL5ODzIKRZVl/hAnjwAWrxSTI7iUd9cuazXY2VzvDtSh55yrdx1fYGhsoVxI0U3DRy6MdMl0JHNuVFTdM0P/l2VDCitpN3+jCv6YUq72bgytEhYn+Druh5Ypo8y+W5zyTX4Mhpu/8hpO5ZX2GL4MeXtAY1qizEZPMZpahW6F8Nzli3jDxH+TgdfhsKw9GETtHxWRzAjR6LwJ5KpTthtO570qMg5zKnKQBbOagkPx19S4ygPPt0vdcET/Zl+KunosTy8oeyItShoN0+deBrhgA19BpLwDoe9uj7fTgMgmJ1jpSO5/xCQfYBK1POf2fu/8nQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(6862004)(8676002)(33656002)(107886003)(2906002)(66556008)(71200400001)(8936002)(66476007)(66946007)(66446008)(26005)(76116006)(64756008)(83380400001)(6506007)(53546011)(7696005)(186003)(5660300002)(52536014)(9686003)(54906003)(86362001)(38070700005)(30864003)(316002)(122000001)(38100700002)(82960400001)(508600001)(6636002)(55016003)(15650500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Dcz02PsGRoNTqUN8gZPtQIDPxkxoT6oDavJ/TVQaftWRrV4vs95hEo9bJ9Xq?=
 =?us-ascii?Q?64SR+uDVAqFVg9deK3PUSPxljSy2rWbTCFfNHZsOvkHqiKo5L25/vmWmo4kc?=
 =?us-ascii?Q?X1vz4H3bLgQoPIYLHaBlxxKN9PskXuN/l6JOUKW0XJM8+cRNay8cGqFsx6ax?=
 =?us-ascii?Q?KoM8P0fsg+LWpMD8+24Ug+T3ULlpAzTiz2Hw4r8JAVxXWXsv/BlYtEcU1/7a?=
 =?us-ascii?Q?2pjGFzv8+CzcYlgopqqGEGbript5STRqU6gScb5RhjBhhtnwFOqjBahNOHJE?=
 =?us-ascii?Q?0ezpvULpUF8n6Kpb0CFeXR14PUE1ra7CT9bRegiZ0YevpejWOSOFSZNL06/F?=
 =?us-ascii?Q?RtUvrhSU+nItxp096YVpXZZ9BU1HPg4rf8X0BHftnbS4do0bQ9R3RoZS39bb?=
 =?us-ascii?Q?iAAinq3T0uRLiZySd9zzuUwv7+YzqVXXrEs24aXWYiNa9aB5frj7KwgtS7pc?=
 =?us-ascii?Q?9WJF8Y+HDVSdsssSi+CIy7VGGhxWqEcDeo8jdWl6nJhGNlulObyJ39ifDpye?=
 =?us-ascii?Q?cqHZuiRRokhI1KJM7OEFC77qs0tJMNrkTcdnVfkNy8ktSCd2gPuq7QQtz79p?=
 =?us-ascii?Q?MFU6WrX/eRrzzwo3bmVDsKd6CGfTDs9LolUq4AzQWUtVGFnuWZ3wE0bivFce?=
 =?us-ascii?Q?6LouXvKFJMAEERm66NHxcTrnlD/8gI6+485vfQ3aPbmKyV0HpTfZiZChNJzu?=
 =?us-ascii?Q?NfqMr83IBVUvsbPOVijm7ixQdaM+g2lrJ3FCrbb7OkSY5+K83oG2L3M8Ls6l?=
 =?us-ascii?Q?o9mN1/f0/yu7JzB5w5jtp8yCoyDGNrQVWv16e8ewU//oeOGo8C4brbRqDtvY?=
 =?us-ascii?Q?t8WQ0SJgNbxCda6pmH/JU5NWq8i6h2v02pmBo3k5nXcrW1rEldyNOmOMCRfc?=
 =?us-ascii?Q?HBBkFXmqm228+gPFPipE9+IsrJJTAjBBdV7jAPEBrF1XfkjNBD6/6CuBIDdV?=
 =?us-ascii?Q?oHaw5gRJSIJPUjzvgZsYgokkv2/Zv34tfOD7PiWYWM1a9olpep7ujVyPiAa3?=
 =?us-ascii?Q?OK1R+TmzpyaGyUaiM5So2fXXbAEkjpVYuT2+sHr+tpSd859zvoYhw81n5gYX?=
 =?us-ascii?Q?rrGzRXC6DXYsbUfUYtO2d9OCIhoRTjFMUG2Tv4319zWG6qSTqftNPe7Lyf8U?=
 =?us-ascii?Q?LAHAtZLVrYzDhIrOUbFtvEQ3+CLumm760ytH/i4SJLD0Ovz/v34A2zsVfi2x?=
 =?us-ascii?Q?/1KOXHmT55K6Q2koNqjikwjQ2AAc5PQWm60v+82rAPdLhLO/HKPP4mEeD1Jk?=
 =?us-ascii?Q?oSFfvHiLqgCfmstJqixzg3a05I/OB0GX+1hHEoZQRCGEtRd/xMNCdYyFl+Oh?=
 =?us-ascii?Q?7iHfIs/MJ0NND2AFUYDQBx5zO9t4ESo7mQhcvywv844N3aAen/DeS4tOksII?=
 =?us-ascii?Q?VVZwT9IPJZVTNq6SJJ2Gx6mLIgEl53ENheWc25gNi22SLFBOLKoCrOeOXK4Y?=
 =?us-ascii?Q?fQFZQLO4S8Z4YkXEOwc4H7C2gV6dBaLw0GEY9pXSbPMtKonQEw7pIR7SyO+6?=
 =?us-ascii?Q?WfUGDuQiKH/VebSVioxBGxEpvLlcew0ehauiqRBa3nJhNE9klqI4Uxo1CzdA?=
 =?us-ascii?Q?7EIHadC0lh7R1nmdToOanfrWP3FpwJEZocVZkNVYKQBXqHcij+cf57kbYZd4?=
 =?us-ascii?Q?JofeSh0YmpaTIDBb0eg9sr0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f231a1b8-4ef4-4f45-22ee-08d9e69a6b39
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 22:21:54.6488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 31wB9Ps8SGPjVqSRK7lzslKgn6VlGlYuXOr1SJLQbuLqcvk1m7COUCZ0lXx8/aM5UZcjLaGCLm2Uyh9pt6N+8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5869
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc
 and virtchnl messages
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 4:33 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 05/19] iecm: add vport alloc and
> virtchnl messages
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:09:55 -0800
> 
> > After handling hard reset, we end up in init task. This starts by
> > allocating and setting up a vport. To do that we need implement virtchnl
> > messages.
> >
> > The virtchnl messages are also offloaded into function pointers so that a
> > device driver may override them. Here a default implementation is provided
> > for devices using virtchnl 2.0 but there exists the flexibility add
> > virtchnl 1.1 support through function pointers.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/Makefile      |    4 +-
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |  167 ++-
> >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |   22 +
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 1299 +++++++++++++++++
> >  drivers/net/ethernet/intel/include/iecm.h     |  316 +++-
> >  .../net/ethernet/intel/include/iecm_txrx.h    |   94 ++
> >  6 files changed, 1898 insertions(+), 4 deletions(-)
> >  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_txrx.c
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> b/drivers/net/ethernet/intel/iecm/Makefile
> > index db8fecb075a6..fcb49402334f 100644
> > --- a/drivers/net/ethernet/intel/iecm/Makefile
> > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > @@ -7,11 +7,13 @@
> >
> >  obj-$(CONFIG_IECM) += iecm.o
> >
> > -ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include
> > +ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include \
> > +	     -I$(srctree)/include/linux/avf
> >
> >  iecm-y := \
> >  	iecm_lib.o \
> >  	iecm_virtchnl.o \
> > +	iecm_txrx.o \
> >  	iecm_controlq.o \
> >  	iecm_controlq_setup.o \
> >  	iecm_main.o
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index 64cdbce2c842..e2e523f0700e 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -5,6 +5,11 @@
> >
> >  #include "iecm.h"
> >
> > +const char * const iecm_vport_vc_state_str[] = {
> > +	IECM_FOREACH_VPORT_VC_STATE(IECM_GEN_STRING)
> > +};
> > +EXPORT_SYMBOL(iecm_vport_vc_state_str);
> > +
> >  /**
> >   * iecm_cfg_hw - Initialize HW struct
> >   * @adapter: adapter to setup hw struct for
> > @@ -24,6 +29,113 @@ static int iecm_cfg_hw(struct iecm_adapter *adapter)
> >  	return 0;
> >  }
> >
> > +/**
> > + * iecm_get_free_slot - get the next non-NULL location index in array
> > + * @array: array to search
> > + * @size: size of the array
> > + * @curr: last known occupied index to be used as a search hint
> > + *
> > + * void * is being used to keep the functionality generic. This lets us use this
> > + * function on any array of pointers.
> > + */
> > +static int iecm_get_free_slot(void *array, int size, int curr)
> > +{
> > +	int **tmp_array = (int **)array;
> > +	int next;
> > +
> > +	if (curr < (size - 1) && !tmp_array[curr + 1]) {
> 
> Redundant braces around `size - 1`.

Will fix

> 
> > +		next = curr + 1;
> > +	} else {
> > +		int i = 0;
> > +
> > +		while ((i < size) && (tmp_array[i]))
> > +			i++;
> > +		if (i == size)
> > +			next = IECM_NO_FREE_SLOT;
> > +		else
> > +			next = i;
> > +	}
> 
> One indent level is redundant here. First condition is an oneliner:
> 
> 	if (curr < (size - 1) && !tmp_array[curr + 1]) {
> 		return curr + 1;
> 
> 	while ((i < size) && (tmp_array[i])) {
> 		...
> 
> > +	return next;
> > +}
> > +
> > +/**
> > + * iecm_vport_rel - Delete a vport and free its resources
> > + * @vport: the vport being removed
> > + */
> > +static void iecm_vport_rel(struct iecm_vport *vport)
> > +{
> > +	mutex_destroy(&vport->stop_mutex);
> > +	kfree(vport);
> > +}
> > +
> > +/**
> > + * iecm_vport_rel_all - Delete all vports
> > + * @adapter: adapter from which all vports are being removed
> > + */
> > +static void iecm_vport_rel_all(struct iecm_adapter *adapter)
> > +{
> > +	int i;
> > +
> > +	if (!adapter->vports)
> > +		return;
> > +
> > +	for (i = 0; i < adapter->num_alloc_vport; i++) {
> > +		if (!adapter->vports[i])
> > +			continue;
> > +
> > +		iecm_vport_rel(adapter->vports[i]);
> > +		adapter->vports[i] = NULL;
> > +		adapter->next_vport = 0;
> > +	}
> > +	adapter->num_alloc_vport = 0;
> > +}
> > +
> > +/**
> > + * iecm_vport_alloc - Allocates the next available struct vport in the adapter
> > + * @adapter: board private structure
> > + * @vport_id: vport identifier
> > + *
> > + * returns a pointer to a vport on success, NULL on failure.
> > + */
> > +static struct iecm_vport *
> > +iecm_vport_alloc(struct iecm_adapter *adapter, int vport_id)
> > +{
> > +	struct iecm_vport *vport = NULL;
> > +
> > +	if (adapter->next_vport == IECM_NO_FREE_SLOT)
> > +		return vport;
> > +
> > +	/* Need to protect the allocation of the vports at the adapter level */
> > +	mutex_lock(&adapter->sw_mutex);
> > +
> > +	vport = kzalloc(sizeof(*vport), GFP_KERNEL);
> > +	if (!vport)
> > +		goto unlock_adapter;
> > +
> > +	vport->adapter = adapter;
> > +	vport->idx = adapter->next_vport;
> > +	vport->compln_clean_budget = IECM_TX_COMPLQ_CLEAN_BUDGET;
> > +	adapter->num_alloc_vport++;
> > +
> > +	/* Setup default MSIX irq handler for the vport */
> > +	vport->irq_q_handler = iecm_vport_intr_clean_queues;
> > +	vport->q_vector_base = IECM_NONQ_VEC;
> > +
> > +	mutex_init(&vport->stop_mutex);
> > +
> > +	/* fill vport slot in the adapter struct */
> > +	adapter->vports[adapter->next_vport] = vport;
> > +
> > +	/* prepare adapter->next_vport for next use */
> > +	adapter->next_vport = iecm_get_free_slot(adapter->vports,
> > +						 adapter->num_alloc_vport,
> > +						 adapter->next_vport);
> > +
> > +unlock_adapter:
> > +	mutex_unlock(&adapter->sw_mutex);
> > +	return vport;
> > +}
> > +
> >  /**
> >   * iecm_statistics_task - Delayed task to get statistics over mailbox
> >   * @work: work_struct handle to our data
> > @@ -55,7 +167,25 @@ static void iecm_service_task(struct work_struct
> *work)
> >   */
> >  static void iecm_init_task(struct work_struct *work)
> >  {
> > -	/* stub */
> > +	struct iecm_adapter *adapter = container_of(work,
> > +						    struct iecm_adapter,
> > +						    init_task.work);
> > +	struct iecm_vport *vport;
> > +	struct pci_dev *pdev;
> > +	int vport_id, err;
> > +
> > +	err = adapter->dev_ops.vc_ops.core_init(adapter, &vport_id);
> > +	if (err)
> > +		return;
> > +
> > +	pdev = adapter->pdev;
> > +	vport = iecm_vport_alloc(adapter, vport_id);
> > +	if (!vport) {
> > +		err = -EFAULT;
> > +		dev_err(&pdev->dev, "failed to allocate vport: %d\n",
> > +			err);
> > +		return;
> > +	}
> >  }
> >
> >  /**
> > @@ -81,6 +211,31 @@ static int iecm_api_init(struct iecm_adapter *adapter)
> >  		return -EINVAL;
> >  	}
> >
> > +	if (adapter->dev_ops.vc_ops_init) {
> > +		struct iecm_virtchnl_ops *vc_ops;
> > +
> > +		adapter->dev_ops.vc_ops_init(adapter);
> > +		vc_ops = &adapter->dev_ops.vc_ops;
> > +		if (!(vc_ops->core_init &&
> > +		      vc_ops->vport_init &&
> > +		      vc_ops->vport_queue_ids_init &&
> > +		      vc_ops->get_caps &&
> > +		      vc_ops->config_queues &&
> > +		      vc_ops->enable_queues &&
> > +		      vc_ops->disable_queues &&
> > +		      vc_ops->irq_map_unmap &&
> > +		      vc_ops->get_set_rss_lut &&
> > +		      vc_ops->get_set_rss_hash &&
> > +		      vc_ops->adjust_qs &&
> > +		      vc_ops->get_ptype &&
> > +		      vc_ops->init_max_queues)) {
> 
> if (!op1 ||
>     !op2 ||
>     !opn) would look more natural and more readable here.
> 

I'm not sure I understand this comment.  Adding an extra symbol for '!' seems worse.

> > +			dev_err(&pdev->dev, "Invalid device, missing one or
> more virtchnl functions\n");
> > +			return -EINVAL;
> > +		}
> > +	} else {
> > +		iecm_vc_ops_init(adapter);
> > +	}
> 
> 'else' path is a two-liner allowing to save one indent level:
> 
> 	if (!adapter->dev_ops.vc_ops_init) {
> 		iecm_vc_ops_init(adapter);
> 		return 0;
> 	}
> 
> 	adapter->dev_ops.vc_ops_init(adapter);
> 	vc_ops = &adapter->dev_ops.vc_ops;
> 	if (!(vc_ops->core_init &&
> 	...
> 
> > +
> >  	return 0;
> >  }
> >
> > @@ -93,7 +248,15 @@ static int iecm_api_init(struct iecm_adapter *adapter)
> >   */
> >  static void iecm_deinit_task(struct iecm_adapter *adapter)
> >  {
> > -	/* stub */
> > +	set_bit(__IECM_REL_RES_IN_PROG, adapter->flags);
> > +	/* Wait until the init_task is done else this thread might release
> > +	 * the resources first and the other thread might end up in a bad state
> > +	 */
> > +	cancel_delayed_work_sync(&adapter->init_task);
> > +	iecm_vport_rel_all(adapter);
> > +
> > +	cancel_delayed_work_sync(&adapter->serv_task);
> > +	cancel_delayed_work_sync(&adapter->stats_task);
> >  }
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > new file mode 100644
> > index 000000000000..2f5c16a28266
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > @@ -0,0 +1,22 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#include "iecm.h"
> > +
> > +/**
> > + * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
> > + * @irq: interrupt number
> > + * @data: pointer to a q_vector
> > + *
> > + */
> > +irqreturn_t
> > +iecm_vport_intr_clean_queues(int __always_unused irq, void *data)
> > +{
> > +	struct iecm_q_vector *q_vector = (struct iecm_q_vector *)data;
> > +
> > +	q_vector->total_events++;
> > +	napi_schedule(&q_vector->napi);
> > +
> > +	return IRQ_HANDLED;
> > +}
> > +
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > index b8f54b8c700a..aae06064d706 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -3,6 +3,74 @@
> >
> >  #include "iecm.h"
> >
> > +/**
> > + * iecm_recv_event_msg - Receive virtchnl event message
> > + * @vport: virtual port structure
> > + *
> > + * Receive virtchnl event message
> > + */
> > +static void iecm_recv_event_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl_pf_event *vpe;
> > +	struct virtchnl2_event *v2e;
> > +	bool link_status;
> > +	u32 event;
> > +
> > +	if (adapter->virt_ver_maj < VIRTCHNL_VERSION_MAJOR_2) {
> > +		vpe = (struct virtchnl_pf_event *)adapter->vc_msg;
> > +		event = vpe->event;
> > +	} else {
> > +		v2e = (struct virtchnl2_event *)adapter->vc_msg;
> > +		event = le32_to_cpu(v2e->event);
> > +	}
> > +
> > +	switch (event) {
> > +	case VIRTCHNL2_EVENT_LINK_CHANGE:
> > +		if (adapter->virt_ver_maj < VIRTCHNL_VERSION_MAJOR_2) {
> > +			if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > +					    VIRTCHNL2_CAP_LINK_SPEED)) {
> > +				adapter->link_speed_mbps =
> > +				vpe->event_data.link_event_adv.link_speed;
> > +				link_status =
> > +				vpe->event_data.link_event_adv.link_status;
> > +			} else {
> > +				adapter->link_speed =
> > +				vpe->event_data.link_event.link_speed;
> > +				link_status =
> > +				vpe->event_data.link_event.link_status;
> > +			}
> > +		} else {
> > +			adapter->link_speed_mbps = le32_to_cpu(v2e-
> >link_speed);
> > +			link_status = v2e->link_status;
> > +		}
> > +		if (adapter->link_up != link_status) {
> > +			adapter->link_up = link_status;
> > +			if (adapter->state == __IECM_UP) {
> > +				if (adapter->link_up) {
> > +					netif_tx_start_all_queues(vport-
> >netdev);
> > +					netif_carrier_on(vport->netdev);
> > +				} else {
> > +					netif_tx_stop_all_queues(vport-
> >netdev);
> > +					netif_carrier_off(vport->netdev);
> > +				}
> > +			}
> > +		}
> > +		break;
> > +	case VIRTCHNL_EVENT_RESET_IMPENDING:
> > +		set_bit(__IECM_HR_CORE_RESET, adapter->flags);
> > +		queue_delayed_work(adapter->vc_event_wq,
> > +				   &adapter->vc_event_task,
> > +				   msecs_to_jiffies(10));
> > +		break;
> > +	default:
> > +		dev_err(&vport->adapter->pdev->dev,
> > +			"Unknown event %d from PF\n", event);
> > +		break;
> > +	}
> > +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> > +}
> > +
> >  /**
> >   * iecm_mb_clean - Reclaim the send mailbox queue entries
> >   * @adapter: Driver specific private structure
> > @@ -39,6 +107,865 @@ static int iecm_mb_clean(struct iecm_adapter
> *adapter)
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_send_mb_msg - Send message over mailbox
> > + * @adapter: Driver specific private structure
> > + * @op: virtchnl opcode
> > + * @msg_size: size of the payload
> > + * @msg: pointer to buffer holding the payload
> > + *
> > + * Will prepare the control queue message and initiates the send api
> > + *
> > + * Returns 0 on success, negative on failure
> > + */
> > +int iecm_send_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
> > +		     u16 msg_size, u8 *msg)
> > +{
> > +	struct iecm_ctlq_msg *ctlq_msg;
> > +	struct iecm_dma_mem *dma_mem;
> > +	int err = 0;
> > +
> > +	if (iecm_is_reset_detected(adapter))
> > +		return -EBUSY;
> > +
> > +	err = iecm_mb_clean(adapter);
> > +	if (err)
> > +		return err;
> > +
> > +	ctlq_msg = kzalloc(sizeof(*ctlq_msg), GFP_KERNEL);
> > +	if (!ctlq_msg)
> > +		return -ENOMEM;
> > +
> > +	dma_mem = kzalloc(sizeof(*dma_mem), GFP_KERNEL);
> > +	if (!dma_mem) {
> > +		err = -ENOMEM;
> > +		goto dma_mem_error;
> > +	}
> > +
> > +	memset(ctlq_msg, 0, sizeof(struct iecm_ctlq_msg));
> > +	ctlq_msg->opcode = iecm_mbq_opc_send_msg_to_pf;
> > +	ctlq_msg->func_id = 0;
> > +	ctlq_msg->data_len = msg_size;
> > +	ctlq_msg->cookie.mbx.chnl_opcode = op;
> > +	ctlq_msg->cookie.mbx.chnl_retval = VIRTCHNL_STATUS_SUCCESS;
> > +	dma_mem->size = IECM_DFLT_MBX_BUF_SIZE;
> > +	dma_mem->va = dmam_alloc_coherent(&adapter->pdev->dev,
> dma_mem->size,
> > +					  &dma_mem->pa, GFP_KERNEL);
> > +	if (!dma_mem->va) {
> > +		err = -ENOMEM;
> > +		goto dma_alloc_error;
> > +	}
> > +	memcpy(dma_mem->va, msg, msg_size);
> > +	ctlq_msg->ctx.indirect.payload = dma_mem;
> > +
> > +	err = iecm_ctlq_send(&adapter->hw, adapter->hw.asq, 1, ctlq_msg);
> > +	if (err)
> > +		goto send_error;
> > +
> > +	return 0;
> > +send_error:
> > +	dmam_free_coherent(&adapter->pdev->dev, dma_mem->size,
> dma_mem->va,
> > +			   dma_mem->pa);
> > +dma_alloc_error:
> > +	kfree(dma_mem);
> > +dma_mem_error:
> > +	kfree(ctlq_msg);
> > +	return err;
> > +}
> > +EXPORT_SYMBOL(iecm_send_mb_msg);
> > +
> > +/**
> > + * iecm_set_msg_pending_bit - Wait for clear and set msg pending
> > + * @adapter: driver specific private structure
> > + *
> > + * If clear sets msg pending bit, otherwise waits for it to clear before
> > + * setting it again. Returns 0 on success, negative on failure.
> > + */
> > +static int iecm_set_msg_pending_bit(struct iecm_adapter *adapter)
> > +{
> > +	unsigned int retries = 100;
> > +
> > +	/* If msg pending bit already set, there's a message waiting to be
> > +	 * parsed and we must wait for it to be cleared before copying a new
> > +	 * message into the vc_msg buffer or else we'll stomp all over the
> > +	 * previous message.
> > +	 */
> > +	while (retries) {
> > +		if (!test_and_set_bit(__IECM_VC_MSG_PENDING,
> > +				      adapter->flags))
> > +			break;
> > +		msleep(20);
> > +		retries--;
> > +	}
> > +	return retries ? 0 : -ETIMEDOUT;
> > +}
> > +
> > +/**
> > + * iecm_set_msg_pending - Wait for msg pending bit and copy msg to buf
> > + * @adapter: driver specific private structure
> > + * @ctlq_msg: msg to copy from
> > + * @err_enum: err bit to set on error
> > + *
> > + * Copies payload from ctlq_msg into vc_msg buf in adapter and sets msg
> pending
> > + * bit. Returns 0 on success, negative on failure.
> > + */
> > +int iecm_set_msg_pending(struct iecm_adapter *adapter,
> > +			 struct iecm_ctlq_msg *ctlq_msg,
> > +			 enum iecm_vport_vc_state err_enum)
> > +{
> > +	if (ctlq_msg->cookie.mbx.chnl_retval) {
> > +		set_bit(err_enum, adapter->vc_state);
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (iecm_set_msg_pending_bit(adapter)) {
> > +		set_bit(err_enum, adapter->vc_state);
> > +		dev_info(&adapter->pdev->dev, "Timed out setting msg
> pending\n");
> > +		return -ETIMEDOUT;
> > +	}
> > +
> > +	memcpy(adapter->vc_msg, ctlq_msg->ctx.indirect.payload->va,
> > +	       min_t(int, ctlq_msg->ctx.indirect.payload->size,
> > +		     IECM_DFLT_MBX_BUF_SIZE));
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(iecm_set_msg_pending);
> > +
> > +/**
> > + * iecm_recv_mb_msg - Receive message over mailbox
> > + * @adapter: Driver specific private structure
> > + * @op: virtchannel operation code
> > + * @msg: Received message holding buffer
> > + * @msg_size: message size
> > + *
> > + * Will receive control queue message and posts the receive buffer. Returns 0
> > + * on success and negative on failure.
> > + */
> > +int iecm_recv_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
> > +		     void *msg, int msg_size)
> > +{
> > +	struct iecm_ctlq_msg ctlq_msg;
> > +	struct iecm_dma_mem *dma_mem;
> > +	struct iecm_vport *vport;
> > +	bool work_done = false;
> > +	int num_retry = 2000;
> > +	int payload_size = 0;
> > +	u16 num_q_msg;
> > +	int err = 0;
> > +
> > +	vport = adapter->vports[0];
> > +	while (1) {
> > +		/* Try to get one message */
> > +		num_q_msg = 1;
> > +		dma_mem = NULL;
> > +		err = iecm_ctlq_recv(adapter->hw.arq, &num_q_msg,
> &ctlq_msg);
> > +		/* If no message then decide if we have to retry based on
> > +		 * opcode
> > +		 */
> > +		if (err || !num_q_msg) {
> > +			/* Increasing num_retry to consider the delayed
> > +			 * responses because of large number of VF's mailbox
> > +			 * messages. If the mailbox message is received from
> > +			 * the other side, we come out of the sleep cycle
> > +			 * immediately else we wait for more time.
> > +			 */
> > +			if (op && num_retry-- &&
> > +			    !test_bit(__IECM_REL_RES_IN_PROG, adapter-
> >flags)) {
> > +				msleep(20);
> > +				continue;
> > +			} else {
> > +				break;
> > +			}
> 
> Since if-condition always ends with a 'continue', 'else' is
> reduntant here.
> 

Will fix

> > +		}
> > +
> > +		/* If we are here a message is received. Check if we are looking
> > +		 * for a specific message based on opcode. If it is different
> > +		 * ignore and post buffers
> > +		 */
> > +		if (op && ctlq_msg.cookie.mbx.chnl_opcode != op)
> > +			goto post_buffs;
> > +
> > +		if (ctlq_msg.data_len)
> > +			payload_size = ctlq_msg.ctx.indirect.payload->size;
> > +
> > +		/* All conditions are met. Either a message requested is
> > +		 * received or we received a message to be processed
> > +		 */
> > +		switch (ctlq_msg.cookie.mbx.chnl_opcode) {
> > +		case VIRTCHNL_OP_VERSION:
> > +		case VIRTCHNL2_OP_GET_CAPS:
> > +		case VIRTCHNL2_OP_CREATE_VPORT:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_info(&adapter->pdev->dev, "Failure
> initializing, vc op: %u retval: %u\n",
> > +					 ctlq_msg.cookie.mbx.chnl_opcode,
> > +					 ctlq_msg.cookie.mbx.chnl_retval);
> > +				err = -EBADMSG;
> > +			} else if (msg) {
> > +				memcpy(msg, ctlq_msg.ctx.indirect.payload-
> >va,
> > +				       min_t(int,
> > +					     payload_size, msg_size));
> > +			}
> > +			work_done = true;
> > +			break;
> > +		case VIRTCHNL2_OP_ENABLE_VPORT:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_ENA_VPORT_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_ENA_VPORT, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_DISABLE_VPORT:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_DIS_VPORT_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_DIS_VPORT, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_DESTROY_VPORT:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_DESTROY_VPORT_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_DESTROY_VPORT, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_CONFIG_TXQ_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_CONFIG_TXQ, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_CONFIG_RXQ_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_CONFIG_RXQ, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_ENABLE_QUEUES:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_ENA_QUEUES_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_ENA_QUEUES, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_DISABLE_QUEUES:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_DIS_QUEUES_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_DIS_QUEUES, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_ADD_QUEUES:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_ADD_QUEUES_ERR);
> > +			set_bit(IECM_VC_ADD_QUEUES, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_DEL_QUEUES:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_DEL_QUEUES_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_DEL_QUEUES, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_MAP_IRQ_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_MAP_IRQ, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_UNMAP_IRQ_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_UNMAP_IRQ, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_GET_STATS:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_GET_STATS_ERR);
> > +			set_bit(IECM_VC_GET_STATS, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_GET_RSS_HASH:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_GET_RSS_HASH_ERR);
> > +			set_bit(IECM_VC_GET_RSS_HASH, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_SET_RSS_HASH:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_SET_RSS_HASH_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_SET_RSS_HASH, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_GET_RSS_LUT:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_GET_RSS_LUT_ERR);
> > +			set_bit(IECM_VC_GET_RSS_LUT, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_SET_RSS_LUT:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_SET_RSS_LUT_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_SET_RSS_LUT, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_GET_RSS_KEY:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_GET_RSS_KEY_ERR);
> > +			set_bit(IECM_VC_GET_RSS_KEY, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_SET_RSS_KEY:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_SET_RSS_KEY_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_SET_RSS_KEY, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_ALLOC_VECTORS:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_ALLOC_VECTORS_ERR);
> > +			set_bit(IECM_VC_ALLOC_VECTORS, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_DEALLOC_VECTORS:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval)
> > +				set_bit(IECM_VC_DEALLOC_VECTORS_ERR,
> > +					adapter->vc_state);
> > +			set_bit(IECM_VC_DEALLOC_VECTORS, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_GET_PTYPE_INFO:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_GET_PTYPE_INFO_ERR);
> > +			set_bit(IECM_VC_GET_PTYPE_INFO, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL2_OP_EVENT:
> > +		case VIRTCHNL_OP_EVENT:
> > +			if (iecm_set_msg_pending_bit(adapter)) {
> > +				dev_info(&adapter->pdev->dev, "Timed out
> setting msg pending\n");
> > +			} else {
> > +				memcpy(adapter->vc_msg,
> > +				       ctlq_msg.ctx.indirect.payload->va,
> > +				       min_t(int, payload_size,
> > +					     IECM_DFLT_MBX_BUF_SIZE));
> > +				iecm_recv_event_msg(vport);
> > +			}
> > +			break;
> > +		case VIRTCHNL_OP_ADD_ETH_ADDR:
> > +			if (test_and_clear_bit(__IECM_ADD_ETH_REQ,
> adapter->flags)) {
> > +				/* Message was sent asynchronously. We don't
> > +				 * normally print errors here, instead
> > +				 * preferring to handle errors in the function
> > +				 * calling wait_for_event. However, we will
> > +				 * have lost the context in which we sent the
> > +				 * message if asynchronous. We can't really do
> > +				 * anything about at it this point, but we
> > +				 * should at a minimum indicate that it looks
> > +				 * like something went wrong. Also don't
> bother
> > +				 * setting ERR bit or waking vchnl_wq since no
> > +				 * one will be waiting to read the async
> > +				 * message.
> > +				 */
> > +				if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +					dev_err(&adapter->pdev->dev, "Failed
> to add MAC address: %d\n",
> > +
> 	ctlq_msg.cookie.mbx.chnl_retval);
> > +				}
> > +				break;
> > +			}
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				set_bit(IECM_VC_ADD_ETH_ADDR_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_ADD_ETH_ADDR, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DEL_ETH_ADDR:
> > +			if (test_and_clear_bit(__IECM_DEL_ETH_REQ, adapter-
> >flags)) {
> > +				/* Message was sent asynchronously. We don't
> > +				 * normally print errors here, instead
> > +				 * preferring to handle errors in the function
> > +				 * calling wait_for_event. However, we will
> > +				 * have lost the context in which we sent the
> > +				 * message if asynchronous. We can't really do
> > +				 * anything about at it this point, but we
> > +				 * should at a minimum indicate that it looks
> > +				 * like something went wrong. Also don't
> bother
> > +				 * setting ERR bit or waking vchnl_wq since no
> > +				 * one will be waiting to read the async
> > +				 * message.
> > +				 */
> > +				if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +					dev_err(&adapter->pdev->dev, "Failed
> to delete MAC address: %d\n",
> > +
> 	ctlq_msg.cookie.mbx.chnl_retval);
> > +				}
> > +				break;
> > +			}
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				set_bit(IECM_VC_DEL_ETH_ADDR_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_DEL_ETH_ADDR, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +
> 	set_bit(IECM_VC_OFFLOAD_VLAN_V2_CAPS_ERR, adapter->vc_state);
> > +			} else {
> > +				memcpy(adapter->vc_msg,
> > +				       ctlq_msg.ctx.indirect.payload->va,
> > +				       min_t(int, payload_size,
> > +					     IECM_DFLT_MBX_BUF_SIZE));
> > +			}
> > +			set_bit(IECM_VC_OFFLOAD_VLAN_V2_CAPS, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_ADD_VLAN_V2:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to add
> vlan filter: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +			}
> > +			break;
> > +		case VIRTCHNL_OP_DEL_VLAN_V2:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to
> delete vlan filter: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +			}
> > +			break;
> > +		case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +
> 	set_bit(IECM_VC_INSERTION_ENA_VLAN_V2_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_INSERTION_ENA_VLAN_V2,
> > +				adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +
> 	set_bit(IECM_VC_INSERTION_DIS_VLAN_V2_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_INSERTION_DIS_VLAN_V2,
> > +				adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +
> 	set_bit(IECM_VC_STRIPPING_ENA_VLAN_V2_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_STRIPPING_ENA_VLAN_V2,
> > +				adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +
> 	set_bit(IECM_VC_STRIPPING_DIS_VLAN_V2_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_STRIPPING_DIS_VLAN_V2,
> > +				adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
> > +			/* This message can only be sent asynchronously. As
> > +			 * such we'll have lost the context in which it was
> > +			 * called and thus can only really report if it looks
> > +			 * like an error occurred. Don't bother setting ERR bit
> > +			 * or waking chnl_wq since no will be waiting to
> > +			 * reading message.
> > +			 */
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to set
> promiscuous mode: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +			}
> > +			break;
> > +		case VIRTCHNL_OP_ADD_CLOUD_FILTER:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to add
> cloud filter: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +				set_bit(IECM_VC_ADD_CLOUD_FILTER_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_ADD_CLOUD_FILTER, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DEL_CLOUD_FILTER:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to
> delete cloud filter: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +				set_bit(IECM_VC_DEL_CLOUD_FILTER_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_DEL_CLOUD_FILTER, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_ADD_RSS_CFG:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to add
> RSS configuration: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +				set_bit(IECM_VC_ADD_RSS_CFG_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_ADD_RSS_CFG, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DEL_RSS_CFG:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to
> delete RSS configuration: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +				set_bit(IECM_VC_DEL_RSS_CFG_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_DEL_RSS_CFG, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_ADD_FDIR_FILTER:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_ADD_FDIR_FILTER_ERR);
> > +			set_bit(IECM_VC_ADD_FDIR_FILTER, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DEL_FDIR_FILTER:
> > +			iecm_set_msg_pending(adapter, &ctlq_msg,
> > +					     IECM_VC_DEL_FDIR_FILTER_ERR);
> > +			set_bit(IECM_VC_DEL_FDIR_FILTER, adapter-
> >vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_ENABLE_CHANNELS:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to
> enable channels: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +				set_bit(IECM_VC_ENA_CHANNELS_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_ENA_CHANNELS, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		case VIRTCHNL_OP_DISABLE_CHANNELS:
> > +			if (ctlq_msg.cookie.mbx.chnl_retval) {
> > +				dev_err(&adapter->pdev->dev, "Failed to
> disable channels: %d\n",
> > +					ctlq_msg.cookie.mbx.chnl_retval);
> > +				set_bit(IECM_VC_DIS_CHANNELS_ERR,
> > +					adapter->vc_state);
> > +			}
> > +			set_bit(IECM_VC_DIS_CHANNELS, adapter->vc_state);
> > +			wake_up(&adapter->vchnl_wq);
> > +			break;
> > +		default:
> > +			if (adapter->dev_ops.vc_ops.recv_mbx_msg)
> > +				err =
> > +				adapter-
> >dev_ops.vc_ops.recv_mbx_msg(adapter,
> > +								   msg,
> > +								   msg_size,
> > +								   &ctlq_msg,
> > +
> &work_done);
> > +			else
> > +				dev_warn(&adapter->pdev->dev,
> > +					 "Unhandled virtchnl response %d\n",
> > +					 ctlq_msg.cookie.mbx.chnl_opcode);
> > +			break;
> > +		} /* switch v_opcode */
> > +post_buffs:
> > +		if (ctlq_msg.data_len)
> > +			dma_mem = ctlq_msg.ctx.indirect.payload;
> > +		else
> > +			num_q_msg = 0;
> > +
> > +		err = iecm_ctlq_post_rx_buffs(&adapter->hw, adapter->hw.arq,
> > +					      &num_q_msg, &dma_mem);
> > +		/* If post failed clear the only buffer we supplied */
> > +		if (err && dma_mem)
> > +			dmam_free_coherent(&adapter->pdev->dev,
> dma_mem->size,
> > +					   dma_mem->va, dma_mem->pa);
> > +		/* Applies only if we are looking for a specific opcode */
> > +		if (work_done)
> > +			break;
> > +	}
> > +
> > +	return err;
> > +}
> > +EXPORT_SYMBOL(iecm_recv_mb_msg);
> > +
> > +/**
> > + * iecm_send_ver_msg - send virtchnl version message
> > + * @adapter: Driver specific private structure
> > + *
> > + * Send virtchnl version message.  Returns 0 on success, negative on failure.
> > + */
> > +static int iecm_send_ver_msg(struct iecm_adapter *adapter)
> > +{
> > +	struct virtchnl_version_info vvi;
> > +
> > +	if (adapter->virt_ver_maj) {
> > +		vvi.major = adapter->virt_ver_maj;
> > +		vvi.minor = adapter->virt_ver_min;
> > +	} else {
> > +		vvi.major = IECM_VIRTCHNL_VERSION_MAJOR;
> > +		vvi.minor = IECM_VIRTCHNL_VERSION_MINOR;
> > +	}
> > +
> > +	return iecm_send_mb_msg(adapter, VIRTCHNL_OP_VERSION,
> sizeof(vvi),
> > +				(u8 *)&vvi);
> > +}
> > +
> > +/**
> > + * iecm_recv_ver_msg - Receive virtchnl version message
> > + * @adapter: Driver specific private structure
> > + *
> > + * Receive virtchnl version message. Returns 0 on success, -EAGAIN if we
> need
> > + * to send version message again, otherwise negative on failure.
> > + */
> > +static int iecm_recv_ver_msg(struct iecm_adapter *adapter)
> > +{
> > +	struct virtchnl_version_info vvi;
> > +	int err = 0;
> > +
> > +	err = iecm_recv_mb_msg(adapter, VIRTCHNL_OP_VERSION, &vvi,
> sizeof(vvi));
> > +	if (err)
> > +		return err;
> > +
> > +	if (vvi.major > IECM_VIRTCHNL_VERSION_MAJOR) {
> > +		dev_warn(&adapter->pdev->dev, "Virtchnl major version
> greater than supported\n");
> > +		return -EINVAL;
> > +	}
> > +	if (vvi.major == IECM_VIRTCHNL_VERSION_MAJOR &&
> > +	    vvi.minor > IECM_VIRTCHNL_VERSION_MINOR)
> > +		dev_warn(&adapter->pdev->dev, "Virtchnl minor version not
> matched\n");
> > +
> > +	/* If we have a mismatch, resend version to update receiver on what
> > +	 * version we will use.
> > +	 */
> > +	if (!adapter->virt_ver_maj &&
> > +	    vvi.major != IECM_VIRTCHNL_VERSION_MAJOR &&
> > +	    vvi.minor != IECM_VIRTCHNL_VERSION_MINOR)
> > +		err = -EAGAIN;
> > +
> > +	adapter->virt_ver_maj = vvi.major;
> > +	adapter->virt_ver_min = vvi.minor;
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_send_get_caps_msg - Send virtchnl get capabilities message
> > + * @adapter: Driver specific private structure
> > + *
> > + * Send virtchl get capabilities message. Returns 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_get_caps_msg(struct iecm_adapter *adapter)
> > +{
> > +	struct virtchnl2_get_capabilities caps = {0};
> > +	int buf_size;
> > +
> > +	buf_size = sizeof(struct virtchnl2_get_capabilities);
> > +	adapter->caps = kzalloc(buf_size, GFP_KERNEL);
> > +	if (!adapter->caps)
> > +		return -ENOMEM;
> > +
> > +	caps.csum_caps =
> > +		cpu_to_le32(VIRTCHNL2_CAP_TX_CSUM_L3_IPV4	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_TCP	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_UDP	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV4_SCTP	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_TCP	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_UDP	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_L4_IPV6_SCTP	|
> > +			    VIRTCHNL2_CAP_TX_CSUM_GENERIC	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L3_IPV4	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_TCP	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_UDP	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV4_SCTP	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_TCP	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_UDP	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_L4_IPV6_SCTP	|
> > +			    VIRTCHNL2_CAP_RX_CSUM_GENERIC);
> > +
> > +	caps.seg_caps =
> > +		cpu_to_le32(VIRTCHNL2_CAP_SEG_IPV4_TCP		|
> > +			    VIRTCHNL2_CAP_SEG_IPV4_UDP		|
> > +			    VIRTCHNL2_CAP_SEG_IPV4_SCTP		|
> > +			    VIRTCHNL2_CAP_SEG_IPV6_TCP		|
> > +			    VIRTCHNL2_CAP_SEG_IPV6_UDP		|
> > +			    VIRTCHNL2_CAP_SEG_IPV6_SCTP		|
> > +			    VIRTCHNL2_CAP_SEG_GENERIC);
> > +
> > +	caps.rss_caps =
> > +		cpu_to_le64(VIRTCHNL2_CAP_RSS_IPV4_TCP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV4_UDP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV4_SCTP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV4_OTHER	|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_TCP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_UDP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_SCTP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_OTHER	|
> > +			    VIRTCHNL2_CAP_RSS_IPV4_AH		|
> > +			    VIRTCHNL2_CAP_RSS_IPV4_ESP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV4_AH_ESP	|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_AH		|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_ESP		|
> > +			    VIRTCHNL2_CAP_RSS_IPV6_AH_ESP);
> > +
> > +	caps.hsplit_caps =
> > +		cpu_to_le32(VIRTCHNL2_CAP_RX_HSPLIT_AT_L2	|
> > +			    VIRTCHNL2_CAP_RX_HSPLIT_AT_L3	|
> > +			    VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4	|
> > +			    VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6);
> > +
> > +	caps.rsc_caps =
> > +		cpu_to_le32(VIRTCHNL2_CAP_RSC_IPV4_TCP		|
> > +			    VIRTCHNL2_CAP_RSC_IPV4_SCTP		|
> > +			    VIRTCHNL2_CAP_RSC_IPV6_TCP		|
> > +			    VIRTCHNL2_CAP_RSC_IPV6_SCTP);
> > +
> > +	caps.other_caps =
> > +		cpu_to_le64(VIRTCHNL2_CAP_RDMA			|
> > +			    VIRTCHNL2_CAP_SRIOV			|
> > +			    VIRTCHNL2_CAP_MACFILTER		|
> > +			    VIRTCHNL2_CAP_FLOW_DIRECTOR		|
> > +			    VIRTCHNL2_CAP_SPLITQ_QSCHED		|
> > +			    VIRTCHNL2_CAP_CRC			|
> > +			    VIRTCHNL2_CAP_ADQ			|
> > +			    VIRTCHNL2_CAP_WB_ON_ITR		|
> > +			    VIRTCHNL2_CAP_PROMISC		|
> > +			    VIRTCHNL2_CAP_INLINE_IPSEC		|
> > +			    VIRTCHNL2_CAP_VLAN			|
> > +			    VIRTCHNL2_CAP_RX_FLEX_DESC);
> > +
> > +	return iecm_send_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS,
> sizeof(caps),
> > +				(u8 *)&caps);
> > +}
> > +EXPORT_SYMBOL(iecm_send_get_caps_msg);
> > +
> > +/**
> > + * iecm_recv_get_caps_msg - Receive virtchnl get capabilities message
> > + * @adapter: Driver specific private structure
> > + *
> > + * Receive virtchnl get capabilities message.  Returns 0 on succes, negative on
> > + * failure.
> > + */
> > +static int iecm_recv_get_caps_msg(struct iecm_adapter *adapter)
> > +{
> > +	return iecm_recv_mb_msg(adapter, VIRTCHNL2_OP_GET_CAPS,
> adapter->caps,
> > +				sizeof(struct virtchnl2_get_capabilities));
> > +}
> > +
> > +/**
> > + * iecm_send_create_vport_msg - Send virtchnl create vport message
> > + * @adapter: Driver specific private structure
> > + *
> > + * send virtchnl creae vport message
> > + *
> > + * Returns 0 on success, negative on failure
> > + */
> > +static int iecm_send_create_vport_msg(struct iecm_adapter *adapter)
> > +{
> > +	/* stub */
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_recv_create_vport_msg - Receive virtchnl create vport message
> > + * @adapter: Driver specific private structure
> > + * @vport_id: Virtual port identifier
> > + *
> > + * Receive virtchnl create vport message.  Returns 0 on success, negative on
> > + * failure.
> > + */
> > +static int iecm_recv_create_vport_msg(struct iecm_adapter *adapter,
> > +				      int *vport_id)
> > +{
> > +	/* stub */
> > +	return 0;
> > +}
> > +
> > +/**
> > + * __iecm_wait_for_event - wrapper function for wait on virtchannel
> response
> > + * @adapter: Driver private data structure
> > + * @state: check on state upon timeout
> > + * @err_check: check if this specific error bit is set
> > + * @timeout: Max time to wait
> > + *
> > + * Checks if state is set upon expiry of timeout.  Returns 0 on success,
> > + * negative on failure.
> > + */
> > +static int __iecm_wait_for_event(struct iecm_adapter *adapter,
> > +				 enum iecm_vport_vc_state state,
> > +				 enum iecm_vport_vc_state err_check,
> > +				 int timeout)
> > +{
> > +	int event;
> > +
> > +	event = wait_event_timeout(adapter->vchnl_wq,
> > +				   test_and_clear_bit(state, adapter->vc_state),
> > +				   msecs_to_jiffies(timeout));
> > +	if (event) {
> > +		if (test_and_clear_bit(err_check, adapter->vc_state)) {
> > +			dev_err(&adapter->pdev->dev, "VC response error
> %s\n",
> > +				iecm_vport_vc_state_str[err_check]);
> > +			return -EINVAL;
> > +		}
> > +		return 0;
> > +	}
> > +
> > +	/* Timeout occurred */
> > +	dev_err(&adapter->pdev->dev, "VC timeout, state = %s\n",
> > +		iecm_vport_vc_state_str[state]);
> > +	return -ETIMEDOUT;
> > +}
> > +
> > +/**
> > + * iecm_min_wait_for_event - wait for virtchannel response
> > + * @adapter: Driver private data structure
> > + * @state: check on state upon timeout
> > + * @err_check: check if this specific error bit is set
> > + *
> > + * Returns 0 on success, negative on failure.
> > + */
> > +int iecm_min_wait_for_event(struct iecm_adapter *adapter,
> > +			    enum iecm_vport_vc_state state,
> > +			    enum iecm_vport_vc_state err_check)
> > +{
> > +	int timeout = 2000;
> > +
> > +	return __iecm_wait_for_event(adapter, state, err_check, timeout);
> > +}
> > +EXPORT_SYMBOL(iecm_min_wait_for_event);
> > +
> > +/**
> > + * iecm_wait_for_event - wait for virtchannel response
> > + * @adapter: Driver private data structure
> > + * @state: check on state upon timeout after 500ms
> > + * @err_check: check if this specific error bit is set
> > + *
> > + * Returns 0 on success, negative on failure.
> > + */
> > +int iecm_wait_for_event(struct iecm_adapter *adapter,
> > +			enum iecm_vport_vc_state state,
> > +			enum iecm_vport_vc_state err_check)
> > +{
> > +	/* Increasing the timeout in __IECM_INIT_SW flow to consider large
> > +	 * number of VF's mailbox message responses. When a message is
> received
> > +	 * on mailbox, this thread is wake up by the iecm_recv_mb_msg before
> the
> > +	 * timeout expires. Only in the error case i.e. if no message is
> > +	 * received on mailbox, we wait for the complete timeout which is
> > +	 * less likely to happen.
> > +	 */
> > +	int timeout = 60000;
> 
> If you make a definition from it, it would be easier to find it
> later in case of adjustments needed.
> 

Will fix

> > +
> > +	return __iecm_wait_for_event(adapter, state, err_check, timeout);
> > +}
> > +EXPORT_SYMBOL(iecm_wait_for_event);
> > +
> >  /**
> >   * iecm_find_ctlq - Given a type and id, find ctlq info
> >   * @hw: hardware struct
> > @@ -170,3 +1097,375 @@ void iecm_vport_params_buf_rel(struct
> iecm_adapter *adapter)
> >  	kfree(adapter->caps);
> >  	kfree(adapter->config_data.req_qs_chunks);
> >  }
> > +
> > +/**
> > + * iecm_vc_core_init - Initialize mailbox and get resources
> > + * @adapter: Driver specific private structure
> > + * @vport_id: Virtual port identifier
> > + *
> > + * Will check if HW is ready with reset complete. Initializes the mailbox and
> > + * communicate with master to get all the default vport parameters. Returns
> 0
> > + * on success, -EAGAIN function will get called again, otherwise negative on
> > + * failure.
> > + */
> > +int iecm_vc_core_init(struct iecm_adapter *adapter, int *vport_id)
> > +{
> > +	int err;
> > +
> > +	switch (adapter->state) {
> > +	case __IECM_STARTUP:
> > +		if (iecm_send_ver_msg(adapter))
> > +			goto init_failed;
> > +		adapter->state = __IECM_VER_CHECK;
> > +		goto restart;
> > +	case __IECM_VER_CHECK:
> > +		err = iecm_recv_ver_msg(adapter);
> > +		if (err == -EAGAIN) {
> > +			adapter->state = __IECM_STARTUP;
> > +			goto restart;
> > +		} else if (err) {
> > +			goto init_failed;
> > +		}
> > +		adapter->state = __IECM_GET_CAPS;
> > +		if (adapter->dev_ops.vc_ops.get_caps(adapter))
> > +			goto init_failed;
> > +		goto restart;
> > +	case __IECM_GET_CAPS:
> > +		if (iecm_recv_get_caps_msg(adapter))
> > +			goto init_failed;
> > +		if (iecm_send_create_vport_msg(adapter))
> > +			goto init_failed;
> > +		adapter->state = __IECM_GET_DFLT_VPORT_PARAMS;
> > +		goto restart;
> > +	case __IECM_GET_DFLT_VPORT_PARAMS:
> > +		if (iecm_recv_create_vport_msg(adapter, vport_id))
> > +			goto init_failed;
> > +		adapter->state = __IECM_INIT_SW;
> > +		break;
> > +	case __IECM_INIT_SW:
> > +		break;
> > +	default:
> > +		dev_err(&adapter->pdev->dev, "Device is in bad state: %d\n",
> > +			adapter->state);
> > +		goto init_failed;
> > +	}
> > +
> > +	return 0;
> > +restart:
> > +	queue_delayed_work(adapter->init_wq, &adapter->init_task,
> > +			   msecs_to_jiffies(30));
> > +	/* Not an error. Using try again to continue with state machine */
> > +	return -EAGAIN;
> > +init_failed:
> > +	if (++adapter->mb_wait_count > IECM_MB_MAX_ERR) {
> > +		dev_err(&adapter->pdev->dev, "Failed to establish mailbox
> communications with hardware\n");
> > +		return -EFAULT;
> > +	}
> > +	adapter->state = __IECM_STARTUP;
> > +	/* If it reaches here, it is possible that mailbox queue initialization
> > +	 * register writes might not have taken effect. Retry to initialize
> > +	 * the mailbox again
> > +	 */
> > +	iecm_deinit_dflt_mbx(adapter);
> > +	set_bit(__IECM_HR_DRV_LOAD, adapter->flags);
> > +	queue_delayed_work(adapter->vc_event_wq, &adapter-
> >vc_event_task,
> > +			   msecs_to_jiffies(20));
> > +	return -EAGAIN;
> > +}
> > +EXPORT_SYMBOL(iecm_vc_core_init);
> > +
> > +/**
> > + * iecm_vport_init - Initialize virtual port
> > + * @vport: virtual port to be initialized
> > + * @vport_id: Unique identification number of vport
> > + *
> > + * Will initialize vport with the info received through MB earlier
> > + */
> > +static void iecm_vport_init(struct iecm_vport *vport,
> > +			    __always_unused int vport_id)
> > +{
> > +	struct virtchnl2_create_vport *vport_msg;
> > +	u16 rx_itr[] = {2, 8, 32, 96, 128};
> > +	u16 tx_itr[] = {2, 8, 64, 128, 256};
> > +
> > +	vport_msg = (struct virtchnl2_create_vport *)
> > +				vport->adapter->vport_params_recvd[0];
> > +	vport->txq_model = le16_to_cpu(vport_msg->txq_model);
> > +	vport->rxq_model = le16_to_cpu(vport_msg->rxq_model);
> > +	vport->vport_type = le16_to_cpu(vport_msg->vport_type);
> > +	vport->vport_id = le32_to_cpu(vport_msg->vport_id);
> > +	vport->adapter->rss_data.rss_key_size =
> > +				min_t(u16, NETDEV_RSS_KEY_LEN,
> > +				      le16_to_cpu(vport_msg->rss_key_size));
> > +	vport->adapter->rss_data.rss_lut_size =
> > +				le16_to_cpu(vport_msg->rss_lut_size);
> > +	ether_addr_copy(vport->default_mac_addr, vport_msg-
> >default_mac_addr);
> > +	vport->max_mtu = IECM_MAX_MTU;
> > +
> > +	if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +		vport->num_bufqs_per_qgrp =
> IECM_MAX_BUFQS_PER_RXQ_GRP;
> > +		/* Bufq[0] default buffer size is 4K
> > +		 * Bufq[1] default buffer size is 2K
> > +		 */
> > +		vport->bufq_size[0] = IECM_RX_BUF_4096;
> > +		vport->bufq_size[1] = IECM_RX_BUF_2048;
> > +	} else {
> > +		vport->num_bufqs_per_qgrp = 0;
> > +		vport->bufq_size[0] = IECM_RX_BUF_2048;
> > +	}
> > +
> > +	/*Initialize Tx and Rx profiles for Dynamic Interrupt Moderation */
> > +	memcpy(vport->rx_itr_profile, rx_itr, IECM_DIM_PROFILE_SLOTS);
> > +	memcpy(vport->tx_itr_profile, tx_itr, IECM_DIM_PROFILE_SLOTS);
> > +}
> > +
> > +/**
> > + * iecm_get_vec_ids - Initialize vector id from Mailbox parameters
> > + * @adapter: adapter structure to get the mailbox vector id
> > + * @vecids: Array of vector ids
> > + * @num_vecids: number of vector ids
> > + * @chunks: vector ids received over mailbox
> > + *
> > + * Will initialize the mailbox vector id which is received from the
> > + * get capabilities and data queue vector ids with ids received as
> > + * mailbox parameters.
> > + * Returns number of ids filled
> > + */
> > +int iecm_get_vec_ids(struct iecm_adapter *adapter,
> > +		     u16 *vecids, int num_vecids,
> > +		     struct virtchnl2_vector_chunks *chunks)
> > +{
> > +	u16 num_chunks = le16_to_cpu(chunks->num_vchunks);
> > +	u16 start_vecid, num_vec;
> > +	int num_vecid_filled = 0;
> > +	int i, j;
> > +
> > +	vecids[num_vecid_filled] = adapter->mb_vector.v_idx;
> > +	num_vecid_filled++;
> > +
> > +	for (j = 0; j < num_chunks; j++) {
> > +		struct virtchnl2_vector_chunk *chunk = &chunks->vchunks[j];
> > +
> > +		num_vec = le16_to_cpu(chunk->num_vectors);
> > +		start_vecid = le16_to_cpu(chunk->start_vector_id);
> > +		for (i = 0; i < num_vec; i++) {
> > +			if ((num_vecid_filled + i) < num_vecids) {
> > +				vecids[num_vecid_filled + i] = start_vecid;
> > +				start_vecid++;
> > +			} else {
> > +				break;
> > +			}
> > +		}
> > +		num_vecid_filled = num_vecid_filled + i;
> > +	}
> > +
> > +	return num_vecid_filled;
> > +}
> > +
> > +/**
> > + * iecm_vport_get_queue_ids - Initialize queue id from Mailbox parameters
> > + * @qids: Array of queue ids
> > + * @num_qids: number of queue ids
> > + * @q_type: queue model
> > + * @chunks: queue ids received over mailbox
> > + *
> > + * Will initialize all queue ids with ids received as mailbox parameters
> > + * Returns number of ids filled
> > + */
> > +static int
> > +iecm_vport_get_queue_ids(u32 *qids, int num_qids, u16 q_type,
> > +			 struct virtchnl2_queue_reg_chunks *chunks)
> > +{
> > +	u16 num_chunks = le16_to_cpu(chunks->num_chunks);
> > +	u32 num_q_id_filled = 0, i;
> > +	u32 start_q_id, num_q;
> > +
> > +	while (num_chunks) {
> > +		struct virtchnl2_queue_reg_chunk *chunk = &chunks-
> >chunks[num_chunks - 1];
> > +
> > +		if (le32_to_cpu(chunk->type) == q_type) {
> > +			num_q = le32_to_cpu(chunk->num_queues);
> > +			start_q_id = le32_to_cpu(chunk->start_queue_id);
> > +			for (i = 0; i < num_q; i++) {
> > +				if ((num_q_id_filled + i) < num_qids) {
> > +					qids[num_q_id_filled + i] = start_q_id;
> > +					start_q_id++;
> > +				} else {
> > +					break;
> > +				}
> > +			}
> > +			num_q_id_filled = num_q_id_filled + i;
> > +		}
> > +		num_chunks--;
> > +	}
> > +
> > +	return num_q_id_filled;
> > +}
> > +
> > +/**
> > + * __iecm_vport_queue_ids_init - Initialize queue ids from Mailbox
> parameters
> > + * @vport: virtual port for which the queues ids are initialized
> > + * @qids: queue ids
> > + * @num_qids: number of queue ids
> > + * @q_type: type of queue
> > + *
> > + * Will initialize all queue ids with ids received as mailbox
> > + * parameters. Returns number of queue ids initialized.
> > + */
> > +static int
> > +__iecm_vport_queue_ids_init(struct iecm_vport *vport, u32 *qids,
> > +			    int num_qids, u32 q_type)
> > +{
> > +	/* stub */
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_vport_queue_ids_init - Initialize queue ids from Mailbox parameters
> > + * @vport: virtual port for which the queues ids are initialized
> > + *
> > + * Will initialize all queue ids with ids received as mailbox parameters.
> > + * Returns 0 on success, negative if all the queues are not initialized.
> > + */
> > +static int iecm_vport_queue_ids_init(struct iecm_vport *vport)
> > +{
> > +	struct virtchnl2_create_vport *vport_params;
> > +	struct virtchnl2_queue_reg_chunks *chunks;
> > +	/* We may never deal with more than 256 same type of queues */
> > +#define IECM_MAX_QIDS	256
> > +	u32 qids[IECM_MAX_QIDS];
> > +	int num_ids;
> > +	u16 q_type;
> > +
> > +	if (vport->adapter->config_data.req_qs_chunks) {
> > +		struct virtchnl2_add_queues *vc_aq =
> > +			(struct virtchnl2_add_queues *)
> > +			vport->adapter->config_data.req_qs_chunks;
> > +		chunks = &vc_aq->chunks;
> > +	} else {
> > +		vport_params = (struct virtchnl2_create_vport *)
> > +				vport->adapter->vport_params_recvd[0];
> > +		chunks = &vport_params->chunks;
> > +	}
> > +
> > +	num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
> > +					   VIRTCHNL2_QUEUE_TYPE_TX,
> > +					   chunks);
> > +	if (num_ids != vport->num_txq)
> > +		return -EINVAL;
> > +	num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
> > +					      VIRTCHNL2_QUEUE_TYPE_TX);
> > +	if (num_ids != vport->num_txq)
> > +		return -EINVAL;
> > +	num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
> > +					   VIRTCHNL2_QUEUE_TYPE_RX,
> > +					   chunks);
> > +	if (num_ids != vport->num_rxq)
> > +		return -EINVAL;
> > +	num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
> > +					      VIRTCHNL2_QUEUE_TYPE_RX);
> > +	if (num_ids != vport->num_rxq)
> > +		return -EINVAL;
> > +
> > +	if (iecm_is_queue_model_split(vport->txq_model)) {
> > +		q_type = VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
> > +		num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
> q_type,
> > +						   chunks);
> > +		if (num_ids != vport->num_complq)
> > +			return -EINVAL;
> > +		num_ids = __iecm_vport_queue_ids_init(vport, qids,
> > +						      num_ids,
> > +						      q_type);
> > +		if (num_ids != vport->num_complq)
> > +			return -EINVAL;
> > +	}
> > +
> > +	if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +		q_type = VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
> > +		num_ids = iecm_vport_get_queue_ids(qids, IECM_MAX_QIDS,
> q_type,
> > +						   chunks);
> > +		if (num_ids != vport->num_bufq)
> > +			return -EINVAL;
> > +		num_ids = __iecm_vport_queue_ids_init(vport, qids, num_ids,
> > +						      q_type);
> > +		if (num_ids != vport->num_bufq)
> > +			return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_is_capability_ena - Default implementation of capability checking
> > + * @adapter: Private data struct
> > + * @all: all or one flag
> > + * @field: caps field to check for flags
> > + * @flag: flag to check
> > + *
> > + * Return true if all capabilities are supported, false otherwise
> > + */
> > +static bool iecm_is_capability_ena(struct iecm_adapter *adapter, bool all,
> > +				   enum iecm_cap_field field, u64 flag)
> > +{
> > +	u8 *caps = (u8 *)adapter->caps;
> > +	u32 *cap_field;
> > +
> > +	if (field == IECM_BASE_CAPS)
> > +		return false;
> > +	if (field >= IECM_CAP_FIELD_LAST) {
> > +		dev_err(&adapter->pdev->dev, "Bad capability field: %d\n",
> > +			field);
> > +		return false;
> > +	}
> > +	cap_field = (u32 *)(caps + field);
> > +
> > +	if (all)
> > +		return (*cap_field & flag) == flag;
> > +	else
> > +		return !!(*cap_field & flag);
> > +}
> > +
> > +/**
> > + * iecm_vc_ops_init - Initialize virtchnl common api
> > + * @adapter: Driver specific private structure
> > + *
> > + * Initialize the function pointers with the extended feature set functions
> > + * as APF will deal only with new set of opcodes.
> > + */
> > +void iecm_vc_ops_init(struct iecm_adapter *adapter)
> > +{
> > +	struct iecm_virtchnl_ops *vc_ops = &adapter->dev_ops.vc_ops;
> > +
> > +	vc_ops->core_init = iecm_vc_core_init;
> > +	vc_ops->vport_init = iecm_vport_init;
> > +	vc_ops->vport_queue_ids_init = iecm_vport_queue_ids_init;
> > +	vc_ops->get_caps = iecm_send_get_caps_msg;
> > +	vc_ops->is_cap_ena = iecm_is_capability_ena;
> > +	vc_ops->get_reserved_vecs = NULL;
> > +	vc_ops->config_queues = NULL;
> > +	vc_ops->enable_queues = NULL;
> > +	vc_ops->disable_queues = NULL;
> > +	vc_ops->add_queues = NULL;
> > +	vc_ops->delete_queues = NULL;
> > +	vc_ops->irq_map_unmap = NULL;
> > +	vc_ops->enable_vport = NULL;
> > +	vc_ops->disable_vport = NULL;
> > +	vc_ops->destroy_vport = NULL;
> > +	vc_ops->get_ptype = NULL;
> > +	vc_ops->get_set_rss_key = NULL;
> > +	vc_ops->get_set_rss_lut = NULL;
> > +	vc_ops->get_set_rss_hash = NULL;
> > +	vc_ops->adjust_qs = NULL;
> > +	vc_ops->add_del_vlans = NULL;
> > +	vc_ops->strip_vlan_msg = NULL;
> > +	vc_ops->insert_vlan_msg = NULL;
> > +	vc_ops->init_max_queues = NULL;
> > +	vc_ops->get_max_tx_bufs = NULL;
> > +	vc_ops->vportq_reg_init = NULL;
> > +	vc_ops->alloc_vectors = NULL;
> > +	vc_ops->dealloc_vectors = NULL;
> > +	vc_ops->get_supported_desc_ids = NULL;
> > +	vc_ops->get_stats_msg = NULL;
> > +	vc_ops->recv_mbx_msg = NULL;
> > +}
> > +EXPORT_SYMBOL(iecm_vc_ops_init);
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> b/drivers/net/ethernet/intel/include/iecm.h
> > index ca9029224e06..994664dfe419 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -7,10 +7,13 @@
> >  #include <linux/aer.h>
> >  #include <linux/pci.h>
> >  #include <linux/netdevice.h>
> > +#include <linux/etherdevice.h>
> >  #include <linux/ethtool.h>
> > +#include <net/tcp.h>
> >  #include <linux/version.h>
> >  #include <linux/dim.h>
> >
> > +#include "virtchnl_2.h"
> >  #include "iecm_txrx.h"
> >  #include "iecm_controlq.h"
> >
> > @@ -35,10 +38,34 @@
> >  /* available message levels */
> >  #define IECM_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE |
> NETIF_MSG_LINK)
> >
> > +#define IECM_VIRTCHNL_VERSION_MAJOR VIRTCHNL_VERSION_MAJOR_2
> > +#define IECM_VIRTCHNL_VERSION_MINOR VIRTCHNL_VERSION_MINOR_0
> > +
> >  /* Forward declaration */
> >  struct iecm_adapter;
> >  struct iecm_vport;
> >
> > +struct iecm_mac_filter {
> > +	struct list_head list;
> > +	u8 macaddr[ETH_ALEN];
> > +	bool remove;		/* filter needs to be removed */
> > +	bool add;		/* filter needs to be added */
> > +};
> > +
> > +#define IECM_VLAN(vid, tpid) ((struct iecm_vlan){ vid, tpid })
> > +
> > +struct iecm_vlan {
> > +	u16 vid;
> > +	u16 tpid;
> > +};
> > +
> > +struct iecm_vlan_filter {
> > +	struct list_head list;
> > +	struct iecm_vlan vlan;
> > +	bool remove;		/* filter needs to be removed */
> > +	bool add;		/* filter needs to be added */
> > +};
> > +
> >  enum iecm_state {
> >  	__IECM_STARTUP,
> >  	__IECM_VER_CHECK,
> > @@ -90,6 +117,24 @@ enum iecm_flags {
> >  	__IECM_FLAGS_NBITS,
> >  };
> >
> > +/* enum used to distinquish which capability field to check */
> > +enum iecm_cap_field {
> > +	IECM_BASE_CAPS		= -1,
> > +	IECM_CSUM_CAPS		= offsetof(struct
> virtchnl2_get_capabilities,
> > +					   csum_caps),
> > +	IECM_SEG_CAPS		= offsetof(struct
> virtchnl2_get_capabilities,
> > +					   seg_caps),
> > +	IECM_RSS_CAPS		= offsetof(struct
> virtchnl2_get_capabilities,
> > +					   rss_caps),
> > +	IECM_HSPLIT_CAPS	= offsetof(struct virtchnl2_get_capabilities,
> > +					   hsplit_caps),
> > +	IECM_RSC_CAPS		= offsetof(struct
> virtchnl2_get_capabilities,
> > +					   rsc_caps),
> > +	IECM_OTHER_CAPS		= offsetof(struct
> virtchnl2_get_capabilities,
> > +					   other_caps),
> > +	IECM_CAP_FIELD_LAST,
> > +};
> > +
> >  struct iecm_reset_reg {
> >  	u32 rstat;
> >  	u32 rstat_m;
> > @@ -105,14 +150,229 @@ struct iecm_reg_ops {
> >  			      enum iecm_flags trig_cause);
> >  };
> >
> > +struct iecm_virtchnl_ops {
> > +	int (*core_init)(struct iecm_adapter *adapter, int *vport_id);
> > +	void (*vport_init)(struct iecm_vport *vport, int vport_id);
> > +	int (*vport_queue_ids_init)(struct iecm_vport *vport);
> > +	int (*get_caps)(struct iecm_adapter *adapter);
> > +	int (*config_queues)(struct iecm_vport *vport);
> > +	int (*enable_queues)(struct iecm_vport *vport);
> > +	int (*disable_queues)(struct iecm_vport *vport);
> > +	int (*add_queues)(struct iecm_vport *vport, u16 num_tx_q,
> > +			  u16 num_complq, u16 num_rx_q,
> > +			  u16 num_rx_bufq);
> > +	int (*delete_queues)(struct iecm_vport *vport);
> > +	int (*irq_map_unmap)(struct iecm_vport *vport, bool map);
> > +	int (*enable_vport)(struct iecm_vport *vport);
> > +	int (*disable_vport)(struct iecm_vport *vport);
> > +	int (*destroy_vport)(struct iecm_vport *vport);
> > +	int (*get_ptype)(struct iecm_vport *vport);
> > +	int (*get_set_rss_key)(struct iecm_vport *vport, bool get);
> > +	int (*get_set_rss_lut)(struct iecm_vport *vport, bool get);
> > +	int (*get_set_rss_hash)(struct iecm_vport *vport, bool get);
> > +	void (*adjust_qs)(struct iecm_vport *vport);
> > +	int (*recv_mbx_msg)(struct iecm_adapter *adapter,
> > +			    void *msg, int msg_size,
> > +			    struct iecm_ctlq_msg *ctlq_msg, bool *work_done);
> > +	bool (*is_cap_ena)(struct iecm_adapter *adapter, bool all,
> > +			   enum iecm_cap_field field, u64 flag);
> > +	u16 (*get_reserved_vecs)(struct iecm_adapter *adapter);
> > +	void (*add_del_vlans)(struct iecm_vport *vport, bool add);
> > +	int (*strip_vlan_msg)(struct iecm_vport *vport, bool ena);
> > +	int (*insert_vlan_msg)(struct iecm_vport *vport, bool ena);
> > +	void (*init_max_queues)(struct iecm_adapter *adapter);
> > +	unsigned int (*get_max_tx_bufs)(struct iecm_adapter *adapter);
> > +	int (*vportq_reg_init)(struct iecm_vport *vport);
> > +	int (*alloc_vectors)(struct iecm_adapter *adapter, u16 num_vectors);
> > +	int (*dealloc_vectors)(struct iecm_adapter *adapter);
> > +	int (*get_supported_desc_ids)(struct iecm_vport *vport);
> > +	int (*get_stats_msg)(struct iecm_vport *vport);
> > +};
> > +
> >  struct iecm_dev_ops {
> >  	void (*reg_ops_init)(struct iecm_adapter *adapter);
> > +	void (*vc_ops_init)(struct iecm_adapter *adapter);
> >  	void (*crc_enable)(u64 *td_cmd);
> >  	struct iecm_reg_ops reg_ops;
> > +	struct iecm_virtchnl_ops vc_ops;
> > +};
> > +
> > +/* These macros allow us to generate an enum and a matching char * array
> of
> > + * stringified enums that are always in sync. Checkpatch issues a bogus
> warning
> > + * about this being a complex macro; but it's wrong, these are never used as a
> > + * statement and instead only used to define the enum and array.
> > + */
> > +#define IECM_FOREACH_VPORT_VC_STATE(STATE)	\
> > +	STATE(IECM_VC_ENA_VPORT)		\
> > +	STATE(IECM_VC_ENA_VPORT_ERR)		\
> > +	STATE(IECM_VC_DIS_VPORT)		\
> > +	STATE(IECM_VC_DIS_VPORT_ERR)		\
> > +	STATE(IECM_VC_DESTROY_VPORT)		\
> > +	STATE(IECM_VC_DESTROY_VPORT_ERR)	\
> > +	STATE(IECM_VC_CONFIG_TXQ)		\
> > +	STATE(IECM_VC_CONFIG_TXQ_ERR)		\
> > +	STATE(IECM_VC_CONFIG_RXQ)		\
> > +	STATE(IECM_VC_CONFIG_RXQ_ERR)		\
> > +	STATE(IECM_VC_CONFIG_Q)			\
> > +	STATE(IECM_VC_CONFIG_Q_ERR)		\
> > +	STATE(IECM_VC_ENA_QUEUES)		\
> > +	STATE(IECM_VC_ENA_QUEUES_ERR)		\
> > +	STATE(IECM_VC_DIS_QUEUES)		\
> > +	STATE(IECM_VC_DIS_QUEUES_ERR)		\
> > +	STATE(IECM_VC_ENA_CHANNELS)		\
> > +	STATE(IECM_VC_ENA_CHANNELS_ERR)		\
> > +	STATE(IECM_VC_DIS_CHANNELS)		\
> > +	STATE(IECM_VC_DIS_CHANNELS_ERR)		\
> > +	STATE(IECM_VC_MAP_IRQ)			\
> > +	STATE(IECM_VC_MAP_IRQ_ERR)		\
> > +	STATE(IECM_VC_UNMAP_IRQ)		\
> > +	STATE(IECM_VC_UNMAP_IRQ_ERR)		\
> > +	STATE(IECM_VC_ADD_QUEUES)		\
> > +	STATE(IECM_VC_ADD_QUEUES_ERR)		\
> > +	STATE(IECM_VC_DEL_QUEUES)		\
> > +	STATE(IECM_VC_REQUEST_QUEUES)		\
> > +	STATE(IECM_VC_REQUEST_QUEUES_ERR)	\
> > +	STATE(IECM_VC_DEL_QUEUES_ERR)		\
> > +	STATE(IECM_VC_ALLOC_VECTORS)		\
> > +	STATE(IECM_VC_ALLOC_VECTORS_ERR)	\
> > +	STATE(IECM_VC_DEALLOC_VECTORS)		\
> > +	STATE(IECM_VC_DEALLOC_VECTORS_ERR)	\
> > +	STATE(IECM_VC_SET_SRIOV_VFS)		\
> > +	STATE(IECM_VC_SET_SRIOV_VFS_ERR)	\
> > +	STATE(IECM_VC_GET_RSS_HASH)		\
> > +	STATE(IECM_VC_GET_RSS_HASH_ERR)		\
> > +	STATE(IECM_VC_SET_RSS_HASH)		\
> > +	STATE(IECM_VC_SET_RSS_HASH_ERR)		\
> > +	STATE(IECM_VC_GET_RSS_LUT)		\
> > +	STATE(IECM_VC_GET_RSS_LUT_ERR)		\
> > +	STATE(IECM_VC_SET_RSS_LUT)		\
> > +	STATE(IECM_VC_SET_RSS_LUT_ERR)		\
> > +	STATE(IECM_VC_GET_RSS_KEY)		\
> > +	STATE(IECM_VC_GET_RSS_KEY_ERR)		\
> > +	STATE(IECM_VC_SET_RSS_KEY)		\
> > +	STATE(IECM_VC_SET_RSS_KEY_ERR)		\
> > +	STATE(IECM_VC_GET_STATS)		\
> > +	STATE(IECM_VC_GET_STATS_ERR)		\
> > +	STATE(IECM_VC_ENA_STRIP_VLAN_TAG)	\
> > +	STATE(IECM_VC_ENA_STRIP_VLAN_TAG_ERR)	\
> > +	STATE(IECM_VC_DIS_STRIP_VLAN_TAG)	\
> > +	STATE(IECM_VC_DIS_STRIP_VLAN_TAG_ERR)	\
> > +	STATE(IECM_VC_IWARP_IRQ_MAP)		\
> > +	STATE(IECM_VC_IWARP_IRQ_MAP_ERR)	\
> > +	STATE(IECM_VC_ADD_ETH_ADDR)		\
> > +	STATE(IECM_VC_ADD_ETH_ADDR_ERR)		\
> > +	STATE(IECM_VC_DEL_ETH_ADDR)		\
> > +	STATE(IECM_VC_DEL_ETH_ADDR_ERR)		\
> > +	STATE(IECM_VC_PROMISC)			\
> > +	STATE(IECM_VC_ADD_CLOUD_FILTER)		\
> > +	STATE(IECM_VC_ADD_CLOUD_FILTER_ERR)	\
> > +	STATE(IECM_VC_DEL_CLOUD_FILTER)		\
> > +	STATE(IECM_VC_DEL_CLOUD_FILTER_ERR)	\
> > +	STATE(IECM_VC_ADD_RSS_CFG)		\
> > +	STATE(IECM_VC_ADD_RSS_CFG_ERR)		\
> > +	STATE(IECM_VC_DEL_RSS_CFG)		\
> > +	STATE(IECM_VC_DEL_RSS_CFG_ERR)		\
> > +	STATE(IECM_VC_ADD_FDIR_FILTER)		\
> > +	STATE(IECM_VC_ADD_FDIR_FILTER_ERR)	\
> > +	STATE(IECM_VC_DEL_FDIR_FILTER)		\
> > +	STATE(IECM_VC_DEL_FDIR_FILTER_ERR)	\
> > +	STATE(IECM_VC_OFFLOAD_VLAN_V2_CAPS)	\
> > +	STATE(IECM_VC_OFFLOAD_VLAN_V2_CAPS_ERR)	\
> > +	STATE(IECM_VC_INSERTION_ENA_VLAN_V2)	\
> > +	STATE(IECM_VC_INSERTION_ENA_VLAN_V2_ERR)\
> > +	STATE(IECM_VC_INSERTION_DIS_VLAN_V2)	\
> > +	STATE(IECM_VC_INSERTION_DIS_VLAN_V2_ERR)\
> > +	STATE(IECM_VC_STRIPPING_ENA_VLAN_V2)	\
> > +	STATE(IECM_VC_STRIPPING_ENA_VLAN_V2_ERR)\
> > +	STATE(IECM_VC_STRIPPING_DIS_VLAN_V2)	\
> > +	STATE(IECM_VC_STRIPPING_DIS_VLAN_V2_ERR)\
> > +	STATE(IECM_VC_GET_SUPPORTED_RXDIDS)	\
> > +	STATE(IECM_VC_GET_SUPPORTED_RXDIDS_ERR)	\
> > +	STATE(IECM_VC_GET_PTYPE_INFO)		\
> > +	STATE(IECM_VC_GET_PTYPE_INFO_ERR)	\
> > +	STATE(IECM_VC_NBITS)
> > +
> > +#define IECM_GEN_ENUM(ENUM) ENUM,
> > +#define IECM_GEN_STRING(STRING) #STRING,
> > +
> > +enum iecm_vport_vc_state {
> > +	IECM_FOREACH_VPORT_VC_STATE(IECM_GEN_ENUM)
> > +};
> > +
> > +extern const char * const iecm_vport_vc_state_str[];
> > +
> > +enum iecm_vport_flags {
> > +	__IECM_VPORT_INIT_PROMISC,
> > +	__IECM_VPORT_FLAGS_NBITS,
> > +};
> > +
> > +struct iecm_port_stats {
> > +	struct u64_stats_sync stats_sync;
> > +	u64 rx_hw_csum_err;
> > +	u64 rx_hsplit;
> > +	u64 rx_hsplit_hbo;
> > +	u64 tx_linearize;
> > +	u64 rx_bad_descs;
> > +	struct virtchnl2_vport_stats vport_stats;
> > +	struct virtchnl_eth_stats eth_stats;
> >  };
> >
> > -/* stub */
> >  struct iecm_vport {
> > +	/* TX */
> > +	int num_txq;
> > +	int num_complq;
> > +	/* It makes more sense for descriptor count to be part of only idpf
> > +	 * queue structure. But when user changes the count via ethtool, driver
> > +	 * has to store that value somewhere other than queue structure as the
> > +	 * queues will be freed and allocated again.
> > +	 */
> > +	int txq_desc_count;
> > +	int complq_desc_count;
> > +	int compln_clean_budget;
> > +	int num_txq_grp;
> > +	struct iecm_txq_group *txq_grps;
> > +	u32 txq_model;
> > +	/* Used only in hotpath to get to the right queue very fast */
> > +	struct iecm_queue **txqs;
> > +	DECLARE_BITMAP(flags, __IECM_VPORT_FLAGS_NBITS);
> > +
> > +	/* RX */
> > +	int num_rxq;
> > +	int num_bufq;
> > +	int rxq_desc_count;
> > +	u8 num_bufqs_per_qgrp;
> > +	int bufq_desc_count[IECM_MAX_BUFQS_PER_RXQ_GRP];
> > +	u32 bufq_size[IECM_MAX_BUFQS_PER_RXQ_GRP];
> > +	int num_rxq_grp;
> > +	struct iecm_rxq_group *rxq_grps;
> > +	u32 rxq_model;
> > +
> > +	struct iecm_adapter *adapter;
> > +	struct net_device *netdev;
> > +	u16 vport_type;
> > +	u16 vport_id;
> > +	u16 idx;		 /* software index in adapter vports struct */
> > +	bool base_rxd;
> 
> Bools are not really advised to use inside structures since they may
> have different sizes and alignments. There's a 2-byte hole here, so
> u8 or u16 for base_rxd would do the job.
> 

Will fix

> > +
> > +	/* handler for hard interrupt */
> > +	irqreturn_t (*irq_q_handler)(int irq, void *data);
> > +	struct iecm_q_vector *q_vectors;	/* q vector array */
> > +	u16 num_q_vectors;
> > +	u16 q_vector_base;
> > +	u16 max_mtu;
> > +	u8 default_mac_addr[ETH_ALEN];
> > +	u16 qset_handle;
> > +	/* ITR profiles for the DIM algorithm */
> > +#define IECM_DIM_PROFILE_SLOTS	5
> > +	u16 rx_itr_profile[IECM_DIM_PROFILE_SLOTS];
> > +	u16 tx_itr_profile[IECM_DIM_PROFILE_SLOTS];
> > +	struct rtnl_link_stats64 netstats;
> > +	struct iecm_port_stats port_stats;
> > +
> > +	/* lock to protect against multiple stop threads, which can happen when
> > +	 * the driver is in a namespace in a system that is being shutdown
> > +	 */
> > +	struct mutex stop_mutex;
> >  };
> >
> >  enum iecm_user_flags {
> > @@ -164,6 +424,7 @@ struct iecm_adapter {
> >  	u16 num_msix_entries;
> >  	struct msix_entry *msix_entries;
> >  	struct virtchnl2_alloc_vectors *req_vec_chunks;
> > +	struct iecm_q_vector mb_vector;
> >
> >  	/* vport structs */
> >  	struct iecm_vport **vports;	/* vports created by the driver */
> > @@ -190,6 +451,8 @@ struct iecm_adapter {
> >
> >  	wait_queue_head_t vchnl_wq;
> >  	wait_queue_head_t sw_marker_wq;
> > +	DECLARE_BITMAP(vc_state, IECM_VC_NBITS);
> > +	char vc_msg[IECM_DFLT_MBX_BUF_SIZE];
> >  	struct iecm_rss_data rss_data;
> >  	struct iecm_dev_ops dev_ops;
> >  	s32 link_speed;
> > @@ -215,6 +478,38 @@ struct iecm_adapter {
> >  	spinlock_t fdir_fltr_list_lock;
> >  };
> >
> > +/**
> > + * iecm_is_queue_model_split - check if queue model is split
> > + * @q_model: queue model single or split
> > + *
> > + * Returns true if queue model is split else false
> > + */
> > +static inline int iecm_is_queue_model_split(u16 q_model)
> > +{
> > +	return (q_model == VIRTCHNL2_QUEUE_MODEL_SPLIT);
> > +}
> > +
> > +#define iecm_is_cap_ena(adapter, field, flag) \
> > +	__iecm_is_cap_ena(adapter, false, field, flag)
> > +#define iecm_is_cap_ena_all(adapter, field, flag) \
> > +	__iecm_is_cap_ena(adapter, true, field, flag)
> > +/**
> > + * __iecm_is_cap_ena - Determine if HW capability is supported
> > + * @adapter: private data struct
> > + * @all: all or one flag
> > + * @field: cap field to check
> > + * @flag: Feature flag to check
> > + *
> > + * iecm_is_cap_ena_all is used to check if all the capability bits are set
> > + * ('AND' operation) where as iecm_is_cap_ena is used to check if
> > + * any one of the capability bits is set ('OR' operation)
> > + */
> > +static inline bool __iecm_is_cap_ena(struct iecm_adapter *adapter, bool all,
> > +				     enum iecm_cap_field field, u64 flag)
> > +{
> > +	return adapter->dev_ops.vc_ops.is_cap_ena(adapter, all, field, flag);
> > +}
> > +
> >  /**
> >   * iecm_is_reset_detected - check if we were reset at some point
> >   * @adapter: driver specific private structure
> > @@ -233,6 +528,25 @@ int iecm_probe(struct pci_dev *pdev,
> >  void iecm_remove(struct pci_dev *pdev);
> >  int iecm_init_dflt_mbx(struct iecm_adapter *adapter);
> >  void iecm_deinit_dflt_mbx(struct iecm_adapter *adapter);
> > +void iecm_vc_ops_init(struct iecm_adapter *adapter);
> > +int iecm_vc_core_init(struct iecm_adapter *adapter, int *vport_id);
> > +int iecm_wait_for_event(struct iecm_adapter *adapter,
> > +			enum iecm_vport_vc_state state,
> > +			enum iecm_vport_vc_state err_check);
> > +int iecm_min_wait_for_event(struct iecm_adapter *adapter,
> > +			    enum iecm_vport_vc_state state,
> > +			    enum iecm_vport_vc_state err_check);
> > +int iecm_send_get_caps_msg(struct iecm_adapter *adapter);
> >  int iecm_vport_params_buf_alloc(struct iecm_adapter *adapter);
> >  void iecm_vport_params_buf_rel(struct iecm_adapter *adapter);
> > +int iecm_get_vec_ids(struct iecm_adapter *adapter,
> > +		     u16 *vecids, int num_vecids,
> > +		     struct virtchnl2_vector_chunks *chunks);
> > +int iecm_recv_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
> > +		     void *msg, int msg_size);
> > +int iecm_send_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
> > +		     u16 msg_size, u8 *msg);
> > +int iecm_set_msg_pending(struct iecm_adapter *adapter,
> > +			 struct iecm_ctlq_msg *ctlq_msg,
> > +			 enum iecm_vport_vc_state err_enum);
> >  #endif /* !_IECM_H_ */
> > diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h
> b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > index 602d3b3b19dd..e1348011c991 100644
> > --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> > +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > @@ -30,4 +30,98 @@
> >  #define IECM_DFLT_SPLITQ_RX_Q_GROUPS		4
> >  #define IECM_DFLT_SPLITQ_TXQ_PER_GROUP		1
> >  #define IECM_DFLT_SPLITQ_RXQ_PER_GROUP		1
> > +
> > +/* Default vector sharing */
> > +#define IECM_NONQ_VEC		1
> > +#define IECM_MAX_Q_VEC		4 /* For Tx Completion queue and Rx
> queue */
> > +#define IECM_MIN_Q_VEC		1
> > +#define IECM_MAX_RDMA_VEC	2 /* To share with RDMA */
> > +#define IECM_MIN_RDMA_VEC	1 /* Minimum vectors to be shared
> with RDMA */
> > +#define IECM_MIN_VEC		3 /* One for mailbox, one for data
> queues, one
> > +				   * for RDMA
> > +				   */
> > +
> > +#define IECM_DFLT_TX_Q_DESC_COUNT		512
> > +#define IECM_DFLT_TX_COMPLQ_DESC_COUNT		512
> > +#define IECM_DFLT_RX_Q_DESC_COUNT		512
> > +/* IMPORTANT: We absolutely _cannot_ have more buffers in the system
> than a
> > + * given RX completion queue has descriptors. This includes _ALL_ buffer
> > + * queues. E.g.: If you have two buffer queues of 512 descriptors and buffers,
> > + * you have a total of 1024 buffers so your RX queue _must_ have at least
> that
> > + * many descriptors. This macro divides a given number of RX descriptors by
> > + * number of buffer queues to calculate how many descriptors each buffer
> queue
> > + * can have without overrunning the RX queue.
> > + *
> > + * If you give hardware more buffers than completion descriptors what will
> > + * happen is that if hardware gets a chance to post more than ring wrap of
> > + * descriptors before SW gets an interrupt and overwrites SW head, the gen
> bit
> > + * in the descriptor will be wrong. Any overwritten descriptors' buffers will
> > + * be gone forever and SW has no reasonable way to tell that this has
> happened.
> > + * From SW perspective, when we finally get an interrupt, it looks like we're
> > + * still waiting for descriptor to be done, stalling forever.
> > + */
> > +#define IECM_RX_BUFQ_DESC_COUNT(RXD, NUM_BUFQ)	((RXD) /
> (NUM_BUFQ))
> > +
> > +#define IECM_RX_BUFQ_WORKING_SET(R)		((R)->desc_count - 1)
> > +#define IECM_RX_BUFQ_NON_WORKING_SET(R)		((R)-
> >desc_count - \
> > +
> IECM_RX_BUFQ_WORKING_SET(R))
> > +
> > +#define IECM_RX_HDR_SIZE			256
> > +#define IECM_RX_BUF_2048			2048
> > +#define IECM_RX_BUF_4096			4096
> > +#define IECM_RX_BUF_STRIDE			64
> > +#define IECM_LOW_WATERMARK			64
> > +#define IECM_HDR_BUF_SIZE			256
> > +#define IECM_PACKET_HDR_PAD	\
> > +	(ETH_HLEN + ETH_FCS_LEN + (VLAN_HLEN * 2))
> > +#define IECM_MAX_RXBUFFER			9728
> > +#define IECM_MAX_MTU		\
> > +	(IECM_MAX_RXBUFFER - IECM_PACKET_HDR_PAD)
> > +#define IECM_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
> > +
> > +#define IECM_TX_COMPLQ_CLEAN_BUDGET	256
> > +
> > +struct iecm_intr_reg {
> > +	u32 dyn_ctl;
> > +	u32 dyn_ctl_intena_m;
> > +	u32 dyn_ctl_clrpba_m;
> > +	u32 dyn_ctl_itridx_s;
> > +	u32 dyn_ctl_itridx_m;
> > +	u32 dyn_ctl_intrvl_s;
> > +	u32 rx_itr;
> > +	u32 tx_itr;
> > +	u32 icr_ena;
> > +	u32 icr_ena_ctlq_m;
> > +};
> > +
> > +struct iecm_q_vector {
> > +	struct iecm_vport *vport;
> > +	cpumask_t affinity_mask;
> > +	struct napi_struct napi;
> > +	u16 v_idx;		/* index in the vport->q_vector array */
> > +	struct iecm_intr_reg intr_reg;
> > +
> > +	int num_txq;
> > +	struct iecm_queue **tx;
> > +	struct dim tx_dim;	/* data for net_dim algorithm */
> > +	u16 tx_itr_value;
> > +	bool tx_intr_mode;
> 
> Same here.
> 
> > +	u32 tx_itr_idx;
> > +
> > +	int num_rxq;
> > +	struct iecm_queue **rx;
> > +	struct dim rx_dim;	/* data for net_dim algorithm */
> > +	u16 rx_itr_value;
> > +	bool rx_intr_mode;
> 
> ...here as well, and most likely in more places I overlooked.
> 
> > +	u32 rx_itr_idx;
> > +
> > +	int num_bufq;
> > +	struct iecm_queue **bufq;
> > +
> > +	u16 total_events;       /* net_dim(): number of interrupts processed */
> > +	char name[IECM_INT_NAME_STR_LEN];
> > +};
> > +
> > +irqreturn_t
> > +iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
> >  #endif /* !_IECM_TXRX_H_ */
> > --
> > 2.33.0
> 
> Thanks,
> Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

