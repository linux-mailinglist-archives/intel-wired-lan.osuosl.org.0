Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFAE65FB8A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jan 2023 07:36:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 839FF41910;
	Fri,  6 Jan 2023 06:36:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 839FF41910
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672986991;
	bh=BH7V70zNiIrIJUaKyLstxFK2UeZ6Z9FtHMzlGrAMckc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=twvMXqhDFa9XRkPs07kxj2c8E7E7tUPlW87P4fGylvwNYS1I7h6hvJKIc68dVduYo
	 iHicZK9ryLnikUtLKxyvmGqdWDUZ0KspsoPzeeu85/a1GXUfY/pfq3F542vGrB7Ctq
	 kgThq7m3U/nhtTJWfQKNMqPGuAANtMhALpxLr5jeuaMNdW5MZBl+x3MW04tQzwvqTX
	 iQtISuyLFvn+f6XcaAn9oihoiSqDbUoAqDKP5eavTCq1E8doPVrIu8WvQYf7ZEaF3r
	 NUyDkrMo8O8j6YWtRBmabL90aFXzI1AdTw21OB7WW+em6jgB2BPlRgF3Ec41SO046K
	 xpcL1+cJGux8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPPiJYH9lt9x; Fri,  6 Jan 2023 06:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35D684191B;
	Fri,  6 Jan 2023 06:36:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35D684191B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D68E1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:36:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 14258403FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 14258403FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZiueOp_lw6Nn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jan 2023 06:36:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DCAA40017
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DCAA40017
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jan 2023 06:36:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="322486859"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="322486859"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 22:36:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="763425658"
X-IronPort-AV: E=Sophos;i="5.96,304,1665471600"; d="scan'208";a="763425658"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2023 22:36:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:36:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 22:36:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 22:36:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 22:36:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UaY69jIdPsczFR8EGgUPQ+QRDCWeI3FDKfQdk+2Sfq27dTSb9HB1vLwrvTrqhZ/q1bMbl2Ty6rxFTGMKw64WVQg4bJKlvJbR6P5iPR2LWIKfvfTDywUeatcGxzl0Wd3MZ2AbmrgJF3BDJpy7nFaqNIj0DOb1vP7nDTh2umDK2LQcUPtkFbMJjpJcpZE5oC7joqH5Q4aVdAF6i/wf2NKSbDIGHBZuynlW2zafLqW0dMrV3pr7EzbSHJzopIFzpe7mGa3ySilysFiI+sOLCn6ZL2Hqx4mZgwxE7zbGOw0jjrEKG0jzGzKQQZocNZvcoKf45NJ1gSRChKR+Wcpcsd0MLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iba1NyCWC4mNMacARJMHAAIupMgDuBtXb+DBHaFmDLQ=;
 b=iYBPUpmQqmlPzt9QFixjd5nqGA7Fn/Qo5SCygNObiMbjluGl3VoA35TuNJKNtmu5BCjwQu1oPAtpBSmG205+IsyMR/63SplnFXOcXPJ7nHU9q1BGjkEYi9YQ3sP+p15gwSr7VUxr1KTlhbEu18JimbuQW8pkd8G+zgehWv9tJWrfGWf/O4q0QuvOb0E+sFqHVrbJTcqH+ctMjaDHZFDv0Bq7TPVhIQ0gAIj47SA4AYxUSDLDoJTtj9Y0zk4VSbJhLCYh6eKzWemfJXzHfaLwbDHLbklBTTQs205UjmIKX8c8uh5ocEBs4admetesAfNXyb59XV1u1cb+LSoMOZ/EtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 06:36:15 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 06:36:15 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 08/10] ice: move VSI delete
 outside deconfig
Thread-Index: AQHZFTMH9kmWeBdb9EaXW560bILHO66RB9ew
Date: Fri, 6 Jan 2023 06:36:15 +0000
Message-ID: <BYAPR11MB33677CE2BDA824FA8DF51BF4FCFB9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
 <20221221113822.12858-9-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221221113822.12858-9-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 3858a9c5-3f2e-4b95-66ff-08daefb04fc4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lb+4g4+sgZPbelnTSxgymDdqtj0faPJ+gzs9Cc7fH41td7sY/2TcvRb3uvo+Oc8Leim74xsmIb/aRuKP4J5m0gsXdR+kM6LDJOGbtZmNa370dB9uWMJD6VN26pnbTyY8ZTKZSWOdBYhVZyRDFzU/zdtfdDJLexgnZb8dyo7SLNQbEBfKNVAfLR2Gygb7ilweAMz6oyVODxhCfkNOxl6O3Tx3McxAzusmpksRCyJyVIJtfM+X8xTt8xiq/R2qXy+OPdt2f3MsrrQ7WY/oO3rL0aXgNMF3u6eIXbzmG+HFczZj2GR6U74m0GzeOFyQbevEfOQ0Gqudb5EQZUvqvEgd0VfHoLBrmuG+Evn2YdXAEdY7kxFBIlB7v3FwsuLS3uDl0lK/5jTKO0mAhXtxtOCi81b3E3Z3BLt90BcH25Pm55qQPrgA34G9D3v+vG/xCvqHwQm3Ih40aUiypPB15JoOdhE+dpEV0DozbBBV/HIlpbAK324XCV6Oo6Wu1LbF2A+8zXJIMNlyR25oXeDbgYfMM4YvDrwMkPlDEKDGFHiqbaz8loMxEcwxEnaXMHBKp5qfZhheVVXkxQF5n7aqwypVW/VZx6nKQf2u3g4Zmtj5YQPgJu/NsqCA2zzqgdtS8J5EaFF73SyxHQLnl1+gnI5IhIaFh75ByeNyn47xwNrrSqG6FZTeqGfa3fAMTyqcGu3dMzEZrsp7ogzcuKKV/3d0uw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(2906002)(5660300002)(52536014)(71200400001)(8936002)(41300700001)(478600001)(4326008)(316002)(8676002)(66556008)(76116006)(66476007)(110136005)(64756008)(66946007)(66446008)(54906003)(9686003)(55236004)(26005)(33656002)(6506007)(55016003)(83380400001)(7696005)(186003)(122000001)(53546011)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UnmEmdN6gUlOWBgtIn2DRSczwXNDpo6Mj7X7vdslKPezF4fzXJ04uzBInspr?=
 =?us-ascii?Q?qAG69jlv8fjwDPVs1o/qrSu0VoyfZEkIZD8h7lVCd7hiKgPABJ0gMILTnFbO?=
 =?us-ascii?Q?+iOgddDwRzNBlDbgqN+T/lSsXisVR5618+z4pBmdnSzPLrosLf27DTiF795P?=
 =?us-ascii?Q?s62pgGk0yCCWekHQ0miHdJp43U8oCZZejb8inMjVfRolsFu0VjnzFHvWPcCF?=
 =?us-ascii?Q?ucRaHk3imQoaStnlQZYyuLQqP30kmtyHy7CCQHnKjp1rjyGbMLIsv75HKNND?=
 =?us-ascii?Q?cS1Tix+KNZdhD+F07GHx2ximXyldmoT8jqbuKlkgsr+RjIfKFE/J5zUjkT6t?=
 =?us-ascii?Q?isya/6Y8/E5EdOhyxbRRJJ4tbE5xGZH+/PHND1acla5Dg9JSWTtGiCc1TthN?=
 =?us-ascii?Q?Y6L6OolyTTKx9a5YsADVWN8GjZVLyHvIMa14yJ8QLACUQOuQ8YRQV9nnokH/?=
 =?us-ascii?Q?4x004dgtIsWdo4CP6mJ3KL/dbBJS4P2QlBXMyzdmIvuECdiCJ5X9Pj8/O6P+?=
 =?us-ascii?Q?epB7mH9LwJmBBvUY5xZFqNlV5RKPVc8C12DIlGWmuENd+OJHPQkMkNLu57cO?=
 =?us-ascii?Q?ScBnsNcg4o8Jp/jl22kGOZ+J1r/Ts9+uUvKHZbUUta0OZy+0JoDpodXLZZXr?=
 =?us-ascii?Q?fALYm8V3FVcRh9hEW+MlI271QNXZJ07pPjNhLc5UyV3mcqhw1N7mx70IHWIh?=
 =?us-ascii?Q?uALfQxDWLukn3zWZfGl1TDotpzFUV2al4tmIsrcTMxpIXOr1GvuDrjvU1Pfv?=
 =?us-ascii?Q?9Y5XhzoU6w31Uh4UOEV6VIhOeXtB1mBb21eeyYFHNbg21o2+fYm4leSO11xt?=
 =?us-ascii?Q?oRYwc0cbCX7FUuQbfQ5A4zr6Dit7Rgyf8oCUNYfJFXq+4T0bGOb29nGNx+Y7?=
 =?us-ascii?Q?IzBoEn4MAuDroxq7r8HtN69OZH6qyesh1WEK6aQyRz/9jqSYqYUkJNqp1TWr?=
 =?us-ascii?Q?BQpo7+HzGrD+75XEM5ZU/xgDOmx54HT4lY/2c7jfzCxqx8Hn7z3NCHz2eXPN?=
 =?us-ascii?Q?XSOsFZRvRLOEiE1JhMJqp6QnRf7VUiAE0+08oM02KGAAixnrFJ97gXQxLO1j?=
 =?us-ascii?Q?Gb1CUVA13/AfQr19uw9oijS8P75ifZVxVzlE1ALeixCWEQY1R4pCQC2ZAltM?=
 =?us-ascii?Q?tocwPlXcWTHW3dz1Xv+XMPtiyaYybG7yKPuNVGLiBFS2RsaVuABdvv0+h3VP?=
 =?us-ascii?Q?+HY6/Vor5DE3XONBl+DoPHxNM7n7JmhiwKVXfqqwn72byldZYHd7yyOurN15?=
 =?us-ascii?Q?f4bMa03HRnMGgXM9FI1CGyZ6yTGY3cUWCJ5R91r56XggCiNQLayZT75HCWS2?=
 =?us-ascii?Q?Kjng7ig7kOylqrviPFrwxAeQfx2BNiNvZ2gw1pUMuDPuRTpg0B7zs+GUMenO?=
 =?us-ascii?Q?mxhus0kGCGNoZD31u8z7bTgf7srAcco8FWJchQtf+xonFalahU75epTqxK4f?=
 =?us-ascii?Q?FM4eP4N3F2AxWuvl4S3N+1LB2NhngQTIIjvzCYs+67BWow/hyiZcHV9gPCHQ?=
 =?us-ascii?Q?wGz/GdXd82mdvI4hDxESY2Cazbfk3nYyDGVZhEB1CRf+NDDYYaAg8M945Kxg?=
 =?us-ascii?Q?LPYMM7+zICGA089cvZ+TcHURM2CJYzp2FOdpVddK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3858a9c5-3f2e-4b95-66ff-08daefb04fc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2023 06:36:15.7431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tGBi7hZQw7JKM5UKHVfjTJAZ2Myj8zzBons70/gBICzOhNBe2ahpwnnmeuzNAL0BbzmSzaLkc8sYK5SBcTiD6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672986984; x=1704522984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CP+ux0rshH3yS05kKL1JtsYYP84wSjiBsIrE1UW5AGM=;
 b=ZM8L9HuEkNARk70oK50ZlklHtjSvfsvGQVsEzS1WXsAc7pWGahX/Mjg3
 8A6kLOwfxdBE3crqMYq4eKqJ4DJJFsxF61YZil/tGEZNyYAFlNaLdS3Io
 eJovfE1nw9Etn1s0OqbWnXdXjV5i91JahrgpgQ+Z0ERjdd0gUeSAWOll9
 n9OZRGelCqXndHr8DPByJlzErMoSpdR+KzagDwqO+Bp6iA8K1+LPCe5G/
 6YxuzSENgcrN+X4ntmjJKJ60/gXdWIQYedz5D5QY066VD356O/QzKrCcD
 t09NdDfmD0RbmRP3s5Tp7ZgNbrWWk3+fSnzFVLF5AEYqv3/DOcCDhs8J3
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZM8L9HuE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 08/10] ice: move VSI
 delete outside deconfig
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
Cc: "Ismail, Mustafa" <mustafa.ismail@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Mikailenko,
 Benjamin" <benjamin.mikailenko@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kaliszczuk,
 Leszek" <leszek.kaliszczuk@intel.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, December 21, 2022 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ismail, Mustafa <mustafa.ismail@intel.com>; Mikailenko, Benjamin
> <benjamin.mikailenko@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kaliszczuk, Leszek
> <leszek.kaliszczuk@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saleem, Shiraz <shiraz.saleem@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 08/10] ice: move VSI delete
> outside deconfig
> 
> In deconfig VSI shouldn't be deleted from hw.
> 
> Rewrite VSI delete function to reflect that sometimes it is only needed to
> remove VSI from hw without freeing the memory:
> ice_vsi_delete() -> delete from HW and free memory
> ice_vsi_delete_from_hw() -> delete only from HW
> 
> Value returned from ice_vsi_free() is never used. Change return type to
> void.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 28 +++++++++++------------
> drivers/net/ethernet/intel/ice/ice_lib.h  |  1 -
> drivers/net/ethernet/intel/ice/ice_main.c |  5 +---
>  3 files changed, 14 insertions(+), 20 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
