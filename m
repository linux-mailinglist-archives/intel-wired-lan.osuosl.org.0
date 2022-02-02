Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 051E84A7B45
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 23:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DE0B60C15;
	Wed,  2 Feb 2022 22:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTjuRYW6NLQ8; Wed,  2 Feb 2022 22:49:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D8E060C06;
	Wed,  2 Feb 2022 22:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1879C1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF7914035B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PdeiBDMczj7g for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 22:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEEAB40359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643842135; x=1675378135;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FXxj42iRcvDBlkyAoYoD/1iUQNn4RmZ4t+tkIp17gBs=;
 b=RmTQTpdEisldlgCYH3mfcj+0Sli9gf29l6pOa7okJ0tsLOLVrYiD6R2g
 zPEKs17vk8yqhkgoRwORebo8nmA5Yx4ciC63nsvOViRzN4upoXNOhIToY
 G8DFNrF2zFIrJ12PyDXI4H12p98aZVrxDyg7RV2ECTbh0RhftwbpmMbqc
 0NSBQ3BuHET0HwBEvwH3fA+mjoNPRPn40aqZEt++hQO4qCkluf/tpsqWR
 pV6xqcCd+9DMe6aVHTfylpDS9O9Iy7pT7czMMUXB0kG2YIW9eupCqanq5
 /VKfDGXtYiQbbXyC4VLV6A8snEfXnQUXr2hF1HtgACv9tXJxW3dBWx81W w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="308763803"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="308763803"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 14:48:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="538506501"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 02 Feb 2022 14:48:53 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:48:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 14:48:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 14:48:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IlcOXgzvAcNOPz/YHkVW+2D2noO5fnTDGPBFWFtlOTR8tJND0z+hbwj99OnF+ccqQH0S9Tk9egS4EhPadyDQh+73mXxBQsXSt1coVnuECpHLhjKCYQUKyz/li0A5nz6EYUMcYEjBnwKyRtLw82F7RGBrzAOW0Xr/bXZUEFwcrAouYVqCVhYc/b4ihn9A+7na5Hreql09tNPXXtkUwkio5dxs0mPdPigbKvrjt8Zmaq7RhEIrwHFm1l1J9flb/f27x28wGAUKIfohjbmg73cc9RU++l8zN7NoDgdzAsQ4tGxf+TwUVxFn22yEMGn6PtT4UreMvv0m4oPxJcNugmjWzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2dqreN6Vo/jmLDFYGrxayZEa0io5REjiTDZxARt0xtE=;
 b=PLlGaUGXiVVJ92JftVmWbQXHvs+Opyfv9RRRcpA4ypsqZwwR1Puc0nmcsAcDX8vDMluIYx2cqeAdZfnQPyYSyFZl+116RIsEytpXmNbP+Mb/ZIgCgXg6SsLNl1dzaAvLpBbfwf+KCdE+blDBhlcxRB0sGLLWDCoCibZBWn/CQ4OqHQpfPBv/XZjy7DG/IQbutlBoUWh9axjgdoy2q9Gwtuhkoy401UpsJG9Yo6/pQxyfsrPGnN7nhXtxhMbBh/KZdJtsFpGPGvgiXW1r0CK66ohokbWvKEnsdEzDRaDj4jaNq/SEp7XmRUrKpMowgQHJVx8egQh8JjDDsSHJ4v9JJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by DM6PR11MB3676.namprd11.prod.outlook.com (2603:10b6:5:137::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Wed, 2 Feb
 2022 22:48:49 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 22:48:49 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 06/19] iecm: add virtchnl
 messages for queues
Thread-Index: AQHYE97UJbn5nLI9g0aYwwtXHVcY0ax4ZwoAgAh4NIA=
Date: Wed, 2 Feb 2022 22:48:48 +0000
Message-ID: <CO1PR11MB518643B8F1CBFA248A9E45768F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-7-alan.brady@intel.com>
 <20220128130306.21674-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128130306.21674-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: e07adeb4-ebd8-43ba-7e39-08d9e69e2d68
x-ms-traffictypediagnostic: DM6PR11MB3676:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3676FF309F0A2D895FE0A84F8F279@DM6PR11MB3676.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HdkzNA4aMH8nFkNwq+J4MC9UgvKu9JIs+QryJmtIxNmnEsn5bz+XPtUvPv3q1kWojVN3+NCN4GQav1g0EB4d4Ln1ni/UvVbCqdv0jtMLyyMQLAnWnu5TgiABF5tg4G0MnKNtmXi0ej880j3mfAlkH8k8yxQcJglZR8ONH6H/aMi6W4vgOB81znBPtzREOx8/Ggu0SjNKPegTsN5D2lAz4lzYAsZWipPg7F15Jz783+JqPUSOLG7ywplxbyb4cECWL+uo0h6dayBIPnU44DGden60vUM1mceYUldfnKTihmqsPavoDzha4POIc720eAjYR3CMQgRfO45MYdf2keYePv/m+7xn+IZ3qVJlV0FcCaH2MQveVWCu/hwDdJrJfhg3Z4qN2QvkKDGWV7wn6cXORmhG9LOrXVVDir9JrcQLE0fzq1Yvdku++sQlPNBOlMRMegaCCGknBDhnMDHrnd1JAlarTyvYZC+MDdkGOl9v4cM16uON9Tx430IkVNjTVQHLkRGP79tEMEcOuczuGZ0WHiF3CBgGk7/Syo0VZ5FhsJBuZVRa7OQckNa/+BZkp7BYa+PgcGj6p+qHKrlOLWR1afTZmQe5pL9AN4mv+V50+c/o7236uwVhkraOFKEEzblVjnOuhgObpdZH0r2hdZZfdqU+FfaxfmytYMRwMv0pGr+jUP6FXTgomEbnpirsy4zxOq827TxNLl5CMyfY4kB8Uw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(30864003)(186003)(8936002)(5660300002)(26005)(71200400001)(6862004)(15650500001)(9686003)(8676002)(76116006)(52536014)(66556008)(66446008)(4326008)(33656002)(66476007)(7696005)(107886003)(2906002)(64756008)(66946007)(6506007)(53546011)(38070700005)(38100700002)(316002)(83380400001)(86362001)(82960400001)(55016003)(122000001)(54906003)(6636002)(508600001)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L/KIbwh5HjNNPhaL1qII1LYMYv7glfVokrFDwFXChQF1U1XBMl8AQaOKFwpO?=
 =?us-ascii?Q?A7O7jimVK5Um1whgD+LJB55EzE6xkmGlC5deDEdsBmJxNDX/d7igxi0tM+1l?=
 =?us-ascii?Q?UHoQBshgG+hEcpQ7rQu6VlmYkFC1Bpy3pTcv+wdylOmd3AJMLyrwsZykwm/f?=
 =?us-ascii?Q?9crHJnM/AVLfLKyURReDRT1VNFG7q9TzYHS3iVM3EqC42GqYk3g003i3b4vG?=
 =?us-ascii?Q?2qg4kEXE8BZwkk1sfZbuksuaIK8EL8Vw1lwAmweHhrYXadXwOmnwkNcT5rEI?=
 =?us-ascii?Q?5lnqlIBGFuAcCKuAYa7XFMnIWsYqEMf34I0j1jjm/3PWIwU1JjOY04QzUkaQ?=
 =?us-ascii?Q?VFrXdaWJ/r36X8VE508F8q16VMIYk7EQ60ffiY8CJQgPC2r4/N60qwcOE7oP?=
 =?us-ascii?Q?7EQmOFyt41NUomNkzzYDa3cVW0g99SNudigtOEAis+Y2M5tH1ik5FEpg9OMN?=
 =?us-ascii?Q?3mECXy84G9+NYEFZwNOlOThldmywnwB9zkdjUrFc7VWUZN1CkWK0l85PTvLS?=
 =?us-ascii?Q?lqvuIMJBQRCWRzkS0VQsPDOeVeIBbugEu23i5O8c8Ij1Khtqv1KbBEoZT1OV?=
 =?us-ascii?Q?uEObvc7aqlE+iG6J/BkUsEBZwfHJcnmthSzZxuvBbZao885QTaQO28ms7yYx?=
 =?us-ascii?Q?8tIw9zjTCqcFy0TUDUSwcgApZXWxu8zlzRRIobi3lPV5js9OYmMY62JdcpOL?=
 =?us-ascii?Q?AGUlAAtNhWcq5Oie80N1IAXwoLeUxoIqq+Q2mJZ2ifRPmgkmquL4NMeZiVR0?=
 =?us-ascii?Q?R6QOGe135GPWAI+H4zCHsv4WGnNVoMhdHwVyO/mmCQbGt+oWTWFcKzm8pMXm?=
 =?us-ascii?Q?7aWgZ4LZ4//Idysu1DpVvtfEJaJ+9cDG8+L6fIw5a4hnP9W0d6lU5XdLFhwq?=
 =?us-ascii?Q?uADf+mq76yJJnsMfqtG7U7+zaAamS/nxD+PCdkgHm0dFPOdGshLbPqPdIfue?=
 =?us-ascii?Q?v9mgbcwIMUziQ629sfzIJ1dSz8NY7z/mMIy7pG8v2BRmsY1cRa5LkqCkJsa/?=
 =?us-ascii?Q?WeDgyRUkQMWCP0BJqKJCvxzerZABxLj0nPidAIWh16ycurXSBzu66OeA/43o?=
 =?us-ascii?Q?EEmMSsZBOSpgf24Hnm4QElJi2EJ4e2yCL/2SI7mMI42KsXf9fpogEiEukVzL?=
 =?us-ascii?Q?dvL1abTm+210yr/8FR3lUO9K7rQFNnbnf1b/r8OILg0gr9YNyrJGFZM1Px+/?=
 =?us-ascii?Q?eTkSIMqJ2JH3sTANN7VyI5vEmY6Fy/xYMgmDdAi6k8LD9AFez+qzxTRRnrA/?=
 =?us-ascii?Q?+Xcg1p/ntyvpORQqI0f+/IGkvy5plrgKNQvs++/wkqOUhx4Os0qFk4B01Bgf?=
 =?us-ascii?Q?4sCeA3Izukam5Zddn4cCxcdC19NK0CX2UGmIM60FIo6qS07XGJ9xiNc1+5K3?=
 =?us-ascii?Q?6fLoywIvxaspln5RRX7Zmqf8htq5BbMyk7kvv6Z4cWGadUPRcLf+BuyS6PvQ?=
 =?us-ascii?Q?BrOa2EpAgujO8WRa2ma/UhJ024JKHaIkvALzNUOv+ijadOn8VnofJfTleg8i?=
 =?us-ascii?Q?DiBCio9DB9/JhKtdlgvDA1Cj8ft9JqaPEKI+cPXn2UPDxwEulgkbulT2xKuE?=
 =?us-ascii?Q?HM9RuDSaxPcZUq+qfJdOlZX4KXLWBYVBN6+49xLgvdn60DP8Ne2qkHF9QJA7?=
 =?us-ascii?Q?MoJBgHN7WgIQRdkE9S/Ml7U=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e07adeb4-ebd8-43ba-7e39-08d9e69e2d68
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 22:48:48.4263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y5pApYH5OUfZ8ogVX0soJcpEtDq5Ibk6OpSw+tWtFAuA7ukPUsqxDgQtTitzhwT1dNq7wMro7iZlqpZuYdQX5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 06/19] iecm: add virtchnl
 messages for queues
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
Cc: "Chittim, Madhu" <madhu.chittim@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 5:03 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Linga, Pavan Kumar <pavan.kumar.linga@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 06/19] iecm: add virtchnl
> messages for queues
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:09:56 -0800
> 
> > This continues adding virtchnl messages. This largely relates to adding
> > messages needed to negotiate and setup traffic queues.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alice Michael <alice.michael@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |   14 +
> >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   |  161 +++
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 1127 ++++++++++++++++-
> >  drivers/net/ethernet/intel/include/iecm.h     |   22 +
> >  .../net/ethernet/intel/include/iecm_txrx.h    |  196 +++
> >  5 files changed, 1505 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index e2e523f0700e..4e9cc7f2d138 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> 
> --- 8< ---
> 
> > +void iecm_vport_calc_num_q_desc(struct iecm_vport *vport)
> > +{
> > +	int num_req_txq_desc = vport->adapter-
> >config_data.num_req_txq_desc;
> > +	int num_req_rxq_desc = vport->adapter-
> >config_data.num_req_rxq_desc;
> > +	int num_bufqs = vport->num_bufqs_per_qgrp;
> > +	int i = 0;
> > +
> > +	vport->complq_desc_count = 0;
> > +	if (num_req_txq_desc) {
> > +		vport->txq_desc_count = num_req_txq_desc;
> > +		if (iecm_is_queue_model_split(vport->txq_model)) {
> > +			vport->complq_desc_count = num_req_txq_desc;
> > +			if (vport->complq_desc_count <
> IECM_MIN_TXQ_COMPLQ_DESC)
> > +				vport->complq_desc_count =
> > +					IECM_MIN_TXQ_COMPLQ_DESC;
> > +		}
> > +	} else {
> > +		vport->txq_desc_count =
> > +			IECM_DFLT_TX_Q_DESC_COUNT;
> > +		if (iecm_is_queue_model_split(vport->txq_model)) {
> > +			vport->complq_desc_count =
> > +				IECM_DFLT_TX_COMPLQ_DESC_COUNT;
> > +		}
> 
> Braces are redundant here since the path is a one-liner.
> 

Correct me if I'm wrong but believe the guidance here is if it goes beyond one line with line wrapping, it is optional whether or not to use braces, even if the statement is 'one line'. We have generally preferred to keep braces in multiline statements. However you do have a point that it is not consistent in this function. Will fix.

> > +	}
> > +
> > +	if (num_req_rxq_desc)
> > +		vport->rxq_desc_count = num_req_rxq_desc;
> > +	else
> > +		vport->rxq_desc_count = IECM_DFLT_RX_Q_DESC_COUNT;
> > +
> > +	for (i = 0; i < num_bufqs; i++) {
> > +		if (!vport->bufq_desc_count[i])
> > +			vport->bufq_desc_count[i] =
> > +				IECM_RX_BUFQ_DESC_COUNT(vport-
> >rxq_desc_count,
> > +							num_bufqs);
> 
> 		if (vport->bufq_desc_count[i])
> 			continue;
> 
> 		vport-> ...
> 
> -1 indent level with that.
> 
> > +	}
> > +}
> > +EXPORT_SYMBOL(iecm_vport_calc_num_q_desc);
> > +
> > +/**
> > + * iecm_vport_calc_total_qs - Calculate total number of queues
> > + * @adapter: private data struct
> > + * @vport_msg: message to fill with data
> > + */
> > +void iecm_vport_calc_total_qs(struct iecm_adapter *adapter,
> > +			      struct virtchnl2_create_vport *vport_msg)
> > +{
> > +	unsigned int num_req_tx_qs = adapter->config_data.num_req_tx_qs;
> > +	unsigned int num_req_rx_qs = adapter->config_data.num_req_rx_qs;
> > +	int dflt_splitq_txq_grps, dflt_singleq_txqs;
> > +	int dflt_splitq_rxq_grps, dflt_singleq_rxqs;
> > +	int num_txq_grps, num_rxq_grps;
> > +	int num_cpus;
> > +	u16 max_q;
> > +
> > +	/* Restrict num of queues to cpus online as a default configuration to
> > +	 * give best performance. User can always override to a max number
> > +	 * of queues via ethtool.
> > +	 */
> > +	num_cpus = num_online_cpus();
> > +	max_q = adapter->max_queue_limit;
> > +
> > +	dflt_splitq_txq_grps = min_t(int, max_q, num_cpus);
> > +	dflt_singleq_txqs = min_t(int, max_q, num_cpus);
> > +	dflt_splitq_rxq_grps = min_t(int, max_q, num_cpus);
> > +	dflt_singleq_rxqs = min_t(int, max_q, num_cpus);
> > +
> > +	if (iecm_is_queue_model_split(le16_to_cpu(vport_msg->txq_model))) {
> > +		num_txq_grps = num_req_tx_qs ? num_req_tx_qs :
> dflt_splitq_txq_grps;
> > +		vport_msg->num_tx_complq = cpu_to_le16(num_txq_grps *
> > +
> IECM_COMPLQ_PER_GROUP);
> > +		vport_msg->num_tx_q = cpu_to_le16(num_txq_grps *
> > +
> IECM_DFLT_SPLITQ_TXQ_PER_GROUP);
> > +	} else {
> > +		num_txq_grps = IECM_DFLT_SINGLEQ_TX_Q_GROUPS;
> > +		vport_msg->num_tx_q =
> > +				cpu_to_le16(num_txq_grps *
> > +					    (num_req_tx_qs ? num_req_tx_qs :
> > +					    dflt_singleq_txqs));
> > +		vport_msg->num_tx_complq = 0;
> > +	}
> > +	if (iecm_is_queue_model_split(le16_to_cpu(vport_msg->rxq_model))) {
> > +		num_rxq_grps = num_req_rx_qs ? num_req_rx_qs :
> dflt_splitq_rxq_grps;
> > +		vport_msg->num_rx_bufq =
> > +					cpu_to_le16(num_rxq_grps *
> > +
> IECM_MAX_BUFQS_PER_RXQ_GRP);
> > +
> > +		vport_msg->num_rx_q = cpu_to_le16(num_rxq_grps *
> > +
> IECM_DFLT_SPLITQ_RXQ_PER_GROUP);
> > +	} else {
> > +		num_rxq_grps = IECM_DFLT_SINGLEQ_RX_Q_GROUPS;
> > +		vport_msg->num_rx_bufq = 0;
> > +		vport_msg->num_rx_q =
> > +				cpu_to_le16(num_rxq_grps *
> > +					    (num_req_rx_qs ? num_req_rx_qs :
> > +					    dflt_singleq_rxqs));
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_vport_calc_num_q_groups - Calculate number of queue groups
> > + * @vport: vport to calculate q groups for
> > + */
> > +void iecm_vport_calc_num_q_groups(struct iecm_vport *vport)
> > +{
> > +	if (iecm_is_queue_model_split(vport->txq_model))
> > +		vport->num_txq_grp = vport->num_txq;
> > +	else
> > +		vport->num_txq_grp = IECM_DFLT_SINGLEQ_TX_Q_GROUPS;
> > +
> > +	if (iecm_is_queue_model_split(vport->rxq_model))
> > +		vport->num_rxq_grp = vport->num_rxq;
> > +	else
> > +		vport->num_rxq_grp = IECM_DFLT_SINGLEQ_RX_Q_GROUPS;
> > +}
> > +EXPORT_SYMBOL(iecm_vport_calc_num_q_groups);
> > +
> > +/**
> > + * iecm_vport_calc_num_q_vec - Calculate total number of vectors required
> for
> > + * this vport
> > + * @vport: virtual port
> > + *
> > + */
> > +void iecm_vport_calc_num_q_vec(struct iecm_vport *vport)
> > +{
> > +	if (iecm_is_queue_model_split(vport->txq_model))
> > +		vport->num_q_vectors = vport->num_txq_grp;
> > +	else
> > +		vport->num_q_vectors = vport->num_txq;
> > +}
> > +EXPORT_SYMBOL(iecm_vport_calc_num_q_vec);
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > index aae06064d706..d8152e657e24 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -859,6 +859,48 @@ static int iecm_recv_get_caps_msg(struct
> iecm_adapter *adapter)
> >  				sizeof(struct virtchnl2_get_capabilities));
> >  }
> >
> > +/**
> > + * iecm_get_reg_intr_vecs - Get vector queue register offset
> > + * @vport: virtual port structure
> > + * @reg_vals: Register offsets to store in
> > + * @num_vecs: Number of vector registers
> > + *
> > + * Returns number of regsiters that got populated
> > + */
> > +int iecm_get_reg_intr_vecs(struct iecm_vport *vport,
> > +			   struct iecm_vec_regs *reg_vals, int num_vecs)
> > +{
> > +	struct virtchnl2_vector_chunks *chunks;
> > +	struct iecm_vec_regs reg_val;
> > +	u16 num_vchunks, num_vec;
> > +	int num_regs = 0, i, j;
> > +
> > +	chunks = &vport->adapter->req_vec_chunks->vchunks;
> > +	num_vchunks = le16_to_cpu(chunks->num_vchunks);
> > +
> > +	for (j = 0; j < num_vchunks; j++) {
> > +		struct virtchnl2_vector_chunk *chunk = &chunks->vchunks[j];
> > +
> > +		num_vec = le16_to_cpu(chunk->num_vectors);
> > +		reg_val.dyn_ctl_reg = le32_to_cpu(chunk->dynctl_reg_start);
> > +		reg_val.itrn_reg = le32_to_cpu(chunk->itrn_reg_start);
> > +		for (i = 0; i < num_vec; i++) {
> > +			if (num_regs == num_vecs)
> > +				break;
> > +			reg_vals[i].dyn_ctl_reg = reg_val.dyn_ctl_reg;
> > +			reg_vals[i].itrn_reg = reg_val.itrn_reg;
> > +			reg_val.dyn_ctl_reg +=
> > +				le32_to_cpu(chunk->dynctl_reg_spacing);
> > +			reg_val.itrn_reg +=
> > +				le32_to_cpu(chunk->itrn_reg_spacing);
> > +			num_regs++;
> > +		}
> > +	}
> > +
> > +	return num_regs;
> > +}
> > +EXPORT_SYMBOL(iecm_get_reg_intr_vecs);
> > +
> >  /**
> >   * iecm_send_create_vport_msg - Send virtchnl create vport message
> >   * @adapter: Driver specific private structure
> > @@ -869,8 +911,36 @@ static int iecm_recv_get_caps_msg(struct
> iecm_adapter *adapter)
> >   */
> >  static int iecm_send_create_vport_msg(struct iecm_adapter *adapter)
> >  {
> > -	/* stub */
> > -	return 0;
> > +	struct virtchnl2_create_vport *vport_msg;
> > +	int buf_size;
> > +
> > +	buf_size = sizeof(struct virtchnl2_create_vport);
> > +	if (!adapter->vport_params_reqd[0]) {
> > +		adapter->vport_params_reqd[0] = kzalloc(buf_size,
> GFP_KERNEL);
> > +		if (!adapter->vport_params_reqd[0])
> > +			return -ENOMEM;
> > +	}
> > +
> > +	vport_msg = (struct virtchnl2_create_vport *)
> > +			adapter->vport_params_reqd[0];
> > +	vport_msg->vport_type =
> cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
> > +
> > +	if (test_bit(__IECM_REQ_TX_SPLITQ, adapter->flags))
> > +		vport_msg->txq_model =
> cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
> > +	else
> > +		vport_msg->txq_model =
> cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
> > +
> > +	if (test_bit(__IECM_REQ_RX_SPLITQ, adapter->flags))
> > +		vport_msg->rxq_model =
> cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SPLIT);
> > +	else
> > +		vport_msg->rxq_model =
> cpu_to_le16(VIRTCHNL2_QUEUE_MODEL_SINGLE);
> > +
> > +	adapter->dev_ops.vc_ops.init_max_queues(adapter);
> > +
> > +	iecm_vport_calc_total_qs(adapter, vport_msg);
> > +
> > +	return iecm_send_mb_msg(adapter, VIRTCHNL2_OP_CREATE_VPORT,
> buf_size,
> > +				(u8 *)vport_msg);
> >  }
> >
> >  /**
> > @@ -884,7 +954,25 @@ static int iecm_send_create_vport_msg(struct
> iecm_adapter *adapter)
> >  static int iecm_recv_create_vport_msg(struct iecm_adapter *adapter,
> >  				      int *vport_id)
> >  {
> > -	/* stub */
> > +	struct virtchnl2_create_vport *vport_msg;
> > +	int err;
> > +
> > +	if (!adapter->vport_params_recvd[0]) {
> > +		adapter->vport_params_recvd[0] =
> kzalloc(IECM_DFLT_MBX_BUF_SIZE,
> > +							 GFP_KERNEL);
> > +		if (!adapter->vport_params_recvd[0])
> > +			return -ENOMEM;
> > +	}
> > +
> > +	vport_msg = (struct virtchnl2_create_vport *)
> > +			adapter->vport_params_recvd[0];
> > +
> > +	err = iecm_recv_mb_msg(adapter, VIRTCHNL2_OP_CREATE_VPORT,
> vport_msg,
> > +			       IECM_DFLT_MBX_BUF_SIZE);
> > +	if (err)
> > +		return err;
> > +
> > +	*vport_id = le32_to_cpu(vport_msg->vport_id);
> >  	return 0;
> >  }
> >
> > @@ -966,6 +1054,920 @@ int iecm_wait_for_event(struct iecm_adapter
> *adapter,
> >  }
> >  EXPORT_SYMBOL(iecm_wait_for_event);
> >
> > +/**
> > + * iecm_wait_for_marker_event - wait for software marker response
> > + * @vport: virtual port data structure
> > + *
> > + * Returns 0 success, negative on failure.
> > + **/
> > +static int iecm_wait_for_marker_event(struct iecm_vport *vport)
> > +{
> > +	int event = 0;
> > +	int i;
> > +
> > +	for (i = 0; i < vport->num_txq; i++)
> > +		set_bit(__IECM_Q_SW_MARKER, vport->txqs[i]->flags);
> > +
> > +	event = wait_event_timeout(vport->adapter->sw_marker_wq,
> > +				   test_and_clear_bit(__IECM_SW_MARKER,
> > +						      vport->adapter->flags),
> > +				   msecs_to_jiffies(500));
> > +	if (event)
> > +		return 0;
> > +	return -ETIMEDOUT;
> > +}
> > +
> > +/**
> > + * iecm_send_destroy_vport_msg - Send virtchnl destroy vport message
> > + * @vport: virtual port data structure
> > + *
> > + * Send virtchnl destroy vport message.  Returns 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_destroy_vport_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl2_vport v_id;
> > +	int err;
> > +
> > +	v_id.vport_id = cpu_to_le32(vport->vport_id);
> > +
> > +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_DESTROY_VPORT,
> > +			       sizeof(v_id), (u8 *)&v_id);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_min_wait_for_event(adapter, IECM_VC_DESTROY_VPORT,
> > +				       IECM_VC_DESTROY_VPORT_ERR);
> > +}
> > +
> > +/**
> > + * iecm_send_enable_vport_msg - Send virtchnl enable vport message
> > + * @vport: virtual port data structure
> > + *
> > + * Send enable vport virtchnl message.  Returns 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_enable_vport_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl2_vport v_id;
> > +	int err;
> > +
> > +	v_id.vport_id = cpu_to_le32(vport->vport_id);
> > +
> > +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_ENABLE_VPORT,
> > +			       sizeof(v_id), (u8 *)&v_id);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_wait_for_event(adapter, IECM_VC_ENA_VPORT,
> > +				   IECM_VC_ENA_VPORT_ERR);
> > +}
> > +
> > +/**
> > + * iecm_send_disable_vport_msg - Send virtchnl disable vport message
> > + * @vport: virtual port data structure
> > + *
> > + * Send disable vport virtchnl message.  Returns 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_disable_vport_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl2_vport v_id;
> > +	int err;
> > +
> > +	v_id.vport_id = cpu_to_le32(vport->vport_id);
> > +
> > +	err = iecm_send_mb_msg(adapter, VIRTCHNL2_OP_DISABLE_VPORT,
> > +			       sizeof(v_id), (u8 *)&v_id);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_min_wait_for_event(adapter, IECM_VC_DIS_VPORT,
> > +				       IECM_VC_DIS_VPORT_ERR);
> > +}
> > +
> > +/**
> > + * iecm_send_config_tx_queues_msg - Send virtchnl config tx queues
> message
> > + * @vport: virtual port data structure
> > + *
> > + * Send config tx queues virtchnl message. Returns 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_config_tx_queues_msg(struct iecm_vport *vport)
> > +{
> > +	struct virtchnl2_config_tx_queues *ctq = NULL;
> > +	int config_data_size, chunk_size, buf_size = 0;
> > +	int totqs, num_msgs, num_chunks;
> > +	struct virtchnl2_txq_info *qi;
> > +	int err = 0, i, k = 0;
> > +	bool alloc = false;
> > +
> > +	totqs = vport->num_txq + vport->num_complq;
> > +	qi = kcalloc(totqs, sizeof(struct virtchnl2_txq_info), GFP_KERNEL);
> > +	if (!qi)
> > +		return -ENOMEM;
> > +
> > +	/* Populate the queue info buffer with all queue context info */
> > +	for (i = 0; i < vport->num_txq_grp; i++) {
> > +		struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> > +		int j;
> > +
> > +		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
> > +			qi[k].queue_id =
> > +				cpu_to_le32(tx_qgrp->txqs[j]->q_id);
> > +			qi[k].model =
> > +				cpu_to_le16(vport->txq_model);
> > +			qi[k].type =
> > +				cpu_to_le32(tx_qgrp->txqs[j]->q_type);
> > +			qi[k].ring_len =
> > +				cpu_to_le16(tx_qgrp->txqs[j]->desc_count);
> > +			qi[k].dma_ring_addr =
> > +				cpu_to_le64(tx_qgrp->txqs[j]->dma);
> > +			if (iecm_is_queue_model_split(vport->txq_model)) {
> > +				struct iecm_queue *q = tx_qgrp->txqs[j];
> > +
> > +				qi[k].tx_compl_queue_id =
> > +					cpu_to_le16(tx_qgrp->complq->q_id);
> > +
> > +				if (test_bit(__IECM_Q_FLOW_SCH_EN, q-
> >flags))
> > +					qi[k].sched_mode =
> > +
> 	cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_FLOW);
> > +				else
> > +					qi[k].sched_mode =
> > +
> 	cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
> > +			} else {
> > +				qi[k].sched_mode =
> > +
> 	cpu_to_le16(VIRTCHNL2_TXQ_SCHED_MODE_QUEUE);
> > +			}
> > +		}
> > +
> > +		if (iecm_is_queue_model_split(vport->txq_model)) {
> > +			qi[k].queue_id =
> > +				cpu_to_le32(tx_qgrp->complq->q_id);
> > +			qi[k].model =
> > +				cpu_to_le16(vport->txq_model);
> > +			qi[k].type =
> > +				cpu_to_le32(tx_qgrp->complq->q_type);
> > +			qi[k].ring_len =
> > +				cpu_to_le16(tx_qgrp->complq->desc_count);
> > +			qi[k].dma_ring_addr =
> > +				cpu_to_le64(tx_qgrp->complq->dma);
> > +			k++;
> > +		}
> > +	}
> > +
> > +	/* Make sure accounting agrees */
> > +	if (k != totqs) {
> > +		err = -EINVAL;
> > +		goto error;
> > +	}
> > +
> > +	/* Chunk up the queue contexts into multiple messages to avoid
> > +	 * sending a control queue message buffer that is too large
> > +	 */
> > +	config_data_size = sizeof(struct virtchnl2_config_tx_queues);
> > +	chunk_size = sizeof(struct virtchnl2_txq_info);
> > +
> > +	num_chunks = IECM_NUM_CHUNKS_PER_MSG(config_data_size,
> chunk_size) + 1;
> > +	if (totqs < num_chunks)
> > +		num_chunks = totqs;
> > +
> > +	num_msgs = totqs / num_chunks;
> > +	if (totqs % num_chunks)
> > +		num_msgs++;
> > +
> > +	for (i = 0, k = 0; i < num_msgs; i++) {
> > +		if (!ctq || alloc) {
> > +			buf_size = (chunk_size * (num_chunks - 1)) +
> > +					config_data_size;
> > +			kfree(ctq);
> > +			ctq = kzalloc(buf_size, GFP_KERNEL);
> > +			if (!ctq) {
> > +				err = -ENOMEM;
> > +				goto error;
> > +			}
> > +		} else {
> > +			memset(ctq, 0, buf_size);
> > +		}
> > +
> > +		ctq->vport_id = cpu_to_le32(vport->vport_id);
> > +		ctq->num_qinfo = cpu_to_le16(num_chunks);
> > +		memcpy(ctq->qinfo, &qi[k], chunk_size * num_chunks);
> > +
> > +		err = iecm_send_mb_msg(vport->adapter,
> > +				       VIRTCHNL2_OP_CONFIG_TX_QUEUES,
> > +				       buf_size, (u8 *)ctq);
> > +		if (err)
> > +			goto mbx_error;
> > +
> > +		err = iecm_wait_for_event(vport->adapter,
> IECM_VC_CONFIG_TXQ,
> > +					  IECM_VC_CONFIG_TXQ_ERR);
> > +		if (err)
> > +			goto mbx_error;
> > +
> > +		k += num_chunks;
> > +		totqs -= num_chunks;
> > +		if (totqs < num_chunks) {
> > +			num_chunks = totqs;
> > +			alloc = true;
> > +		}
> > +	}
> > +
> > +mbx_error:
> > +	kfree(ctq);
> > +error:
> > +	kfree(qi);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_send_config_rx_queues_msg - Send virtchnl config rx queues
> message
> > + * @vport: virtual port data structure
> > + *
> > + * Send config rx queues virtchnl message.  Returns 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_config_rx_queues_msg(struct iecm_vport *vport)
> > +{
> > +	struct virtchnl2_config_rx_queues *crq = NULL;
> > +	int config_data_size, chunk_size, buf_size = 0;
> > +	int totqs, num_msgs, num_chunks;
> > +	struct virtchnl2_rxq_info *qi;
> > +	int err = 0, i, k = 0;
> > +	bool alloc = false;
> > +
> > +	totqs = vport->num_rxq + vport->num_bufq;
> > +	qi = kcalloc(totqs, sizeof(struct virtchnl2_rxq_info), GFP_KERNEL);
> > +	if (!qi)
> > +		return -ENOMEM;
> > +
> > +	/* Populate the queue info buffer with all queue context info */
> > +	for (i = 0; i < vport->num_rxq_grp; i++) {
> > +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > +		int num_rxq;
> > +		int j;
> > +
> > +		if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
> > +				struct iecm_queue *bufq =
> > +					&rx_qgrp->splitq.bufq_sets[j].bufq;
> > +
> > +				qi[k].queue_id =
> > +					cpu_to_le32(bufq->q_id);
> > +				qi[k].model =
> > +					cpu_to_le16(vport->rxq_model);
> > +				qi[k].type =
> > +					cpu_to_le32(bufq->q_type);
> > +				qi[k].desc_ids =
> > +
> 	cpu_to_le64(VIRTCHNL2_RXDID_1_FLEX_SPLITQ_M);
> > +				qi[k].ring_len =
> > +					cpu_to_le16(bufq->desc_count);
> > +				qi[k].dma_ring_addr =
> > +					cpu_to_le64(bufq->dma);
> > +				qi[k].data_buffer_size =
> > +					cpu_to_le32(bufq->rx_buf_size);
> > +				qi[k].buffer_notif_stride =
> > +					bufq->rx_buf_stride;
> > +				qi[k].rx_buffer_low_watermark =
> > +					cpu_to_le16(bufq-
> >rx_buffer_low_watermark);
> > +			}
> > +		}
> 
> 		if (iecm_is_queue_model_split(vport->rxq_model))
> 			goto here;
> 
> -1 indent level for the for-loop.

I'm afraid I'm not following, please elaborate. Where are we goto'ing? The for loop below needs to be executed for both and if we just tack the above for loop at the bottom of the function and goto in and out of it to save an indent does not sound great and makes the code harder to follow IMO.

> Braces for 'if' are not needed since the for-loop has their own.
> 

They're not required but we have generally preferred to keep braces on statements extending across more than one line.

> > +
> > +		if (iecm_is_queue_model_split(vport->rxq_model))
> > +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> > +		else
> > +			num_rxq = rx_qgrp->singleq.num_rxq;
> > +
> > +		for (j = 0; j < num_rxq; j++, k++) {
> > +			struct iecm_queue *rxq;
> > +
> > +			if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> > +				qi[k].rx_bufq1_id =
> > +				  cpu_to_le16(rxq->rxq_grp-
> >splitq.bufq_sets[0].bufq.q_id);
> > +				qi[k].rx_bufq2_id =
> > +				  cpu_to_le16(rxq->rxq_grp-
> >splitq.bufq_sets[1].bufq.q_id);
> > +				qi[k].hdr_buffer_size =
> > +					cpu_to_le16(rxq->rx_hbuf_size);
> > +				qi[k].rx_buffer_low_watermark =
> > +					cpu_to_le16(rxq-
> >rx_buffer_low_watermark);
> > +
> > +				if (rxq->rx_hsplit_en) {
> > +					qi[k].qflags =
> > +
> 	cpu_to_le16(VIRTCHNL2_RXQ_HDR_SPLIT);
> > +					qi[k].hdr_buffer_size =
> > +						cpu_to_le16(rxq-
> >rx_hbuf_size);
> > +				}
> > +			} else {
> > +				rxq = rx_qgrp->singleq.rxqs[j];
> > +			}
> 
> Same here, but with rxq = ... + goto.
> 

Please elaborate.

> > +
> > +			qi[k].queue_id =
> > +				cpu_to_le32(rxq->q_id);
> > +			qi[k].model =
> > +				cpu_to_le16(vport->rxq_model);
> > +			qi[k].type =
> > +				cpu_to_le32(rxq->q_type);
> > +			qi[k].ring_len =
> > +				cpu_to_le16(rxq->desc_count);
> > +			qi[k].dma_ring_addr =
> > +				cpu_to_le64(rxq->dma);
> > +			qi[k].max_pkt_size =
> > +				cpu_to_le32(rxq->rx_max_pkt_size);
> > +			qi[k].data_buffer_size =
> > +				cpu_to_le32(rxq->rx_buf_size);
> > +			qi[k].qflags |=
> > +
> 	cpu_to_le16(VIRTCHNL2_RX_DESC_SIZE_32BYTE);
> > +			qi[k].desc_ids =
> > +				cpu_to_le64(rxq->rxdids);
> > +		}
> > +	}
> > +
> > +	/* Make sure accounting agrees */
> > +	if (k != totqs) {
> > +		err = -EINVAL;
> > +		goto error;
> > +	}
> > +
> > +	/* Chunk up the queue contexts into multiple messages to avoid
> > +	 * sending a control queue message buffer that is too large
> > +	 */
> > +	config_data_size = sizeof(struct virtchnl2_config_rx_queues);
> > +	chunk_size = sizeof(struct virtchnl2_rxq_info);
> > +
> > +	num_chunks = IECM_NUM_CHUNKS_PER_MSG(config_data_size,
> chunk_size) + 1;
> > +	if (totqs < num_chunks)
> > +		num_chunks = totqs;
> > +
> > +	num_msgs = totqs / num_chunks;
> > +	if (totqs % num_chunks)
> > +		num_msgs++;
> > +
> > +	for (i = 0, k = 0; i < num_msgs; i++) {
> > +		if (!crq || alloc) {
> > +			buf_size = (chunk_size * (num_chunks - 1)) +
> > +					config_data_size;
> > +			kfree(crq);
> > +			crq = kzalloc(buf_size, GFP_KERNEL);
> > +			if (!crq) {
> > +				err = -ENOMEM;
> > +				goto error;
> > +			}
> > +		} else {
> > +			memset(crq, 0, buf_size);
> > +		}
> > +
> > +		crq->vport_id = cpu_to_le32(vport->vport_id);
> > +		crq->num_qinfo = cpu_to_le16(num_chunks);
> > +		memcpy(crq->qinfo, &qi[k], chunk_size * num_chunks);
> > +
> > +		err = iecm_send_mb_msg(vport->adapter,
> > +				       VIRTCHNL2_OP_CONFIG_RX_QUEUES,
> > +				       buf_size, (u8 *)crq);
> > +		if (err)
> > +			goto mbx_error;
> > +
> > +		err = iecm_wait_for_event(vport->adapter,
> IECM_VC_CONFIG_RXQ,
> > +					  IECM_VC_CONFIG_RXQ_ERR);
> > +		if (err)
> > +			goto mbx_error;
> > +
> > +		k += num_chunks;
> > +		totqs -= num_chunks;
> > +		if (totqs < num_chunks) {
> > +			num_chunks = totqs;
> > +			alloc = true;
> > +		}
> > +	}
> > +
> > +mbx_error:
> > +	kfree(crq);
> > +error:
> > +	kfree(qi);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_send_ena_dis_queues_msg - Send virtchnl enable or disable
> > + * queues message
> > + * @vport: virtual port data structure
> > + * @vc_op: virtchnl op code to send
> > + *
> > + * Send enable or disable queues virtchnl message. Returns 0 on success,
> > + * negative on failure.
> > + */
> > +static int iecm_send_ena_dis_queues_msg(struct iecm_vport *vport,
> > +					enum virtchnl_ops vc_op)
> > +{
> > +	int num_msgs, num_chunks, config_data_size, chunk_size;
> > +	int num_txq, num_rxq, num_q, buf_size, err = 0;
> > +	struct virtchnl2_del_ena_dis_queues *eq = NULL;
> > +	struct virtchnl2_queue_chunk *qc;
> > +	bool alloc = false;
> > +	int i, j, k = 0;
> > +
> > +	/* validate virtchnl op */
> > +	switch (vc_op) {
> > +	case VIRTCHNL2_OP_ENABLE_QUEUES:
> > +	case VIRTCHNL2_OP_DISABLE_QUEUES:
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	num_txq = vport->num_txq + vport->num_complq;
> > +	num_rxq = vport->num_rxq + vport->num_bufq;
> > +	num_q = num_txq + num_rxq;
> > +	buf_size = sizeof(struct virtchnl2_queue_chunk) * (num_q);
> > +	qc = kzalloc(buf_size, GFP_KERNEL);
> > +	if (!qc)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < vport->num_txq_grp; i++) {
> > +		struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> > +
> > +		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
> > +			qc[k].type = cpu_to_le32(tx_qgrp->txqs[j]->q_type);
> > +			qc[k].start_queue_id =
> > +					cpu_to_le32(tx_qgrp->txqs[j]->q_id);
> > +			qc[k].num_queues = cpu_to_le32(1);
> > +		}
> > +	}
> > +	if (vport->num_txq != k) {
> > +		err = -EINVAL;
> > +		goto error;
> > +	}
> > +
> > +	if (iecm_is_queue_model_split(vport->txq_model)) {
> > +		for (i = 0; i < vport->num_txq_grp; i++, k++) {
> > +			struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> > +
> > +			qc[k].type = cpu_to_le32(tx_qgrp->complq->q_type);
> > +			qc[k].start_queue_id =
> > +					cpu_to_le32(tx_qgrp->complq->q_id);
> > +			qc[k].num_queues = cpu_to_le32(1);
> > +		}
> > +		if (vport->num_complq != (k - vport->num_txq)) {
> > +			err = -EINVAL;
> > +			goto error;
> > +		}
> > +	}
> 
> ...and here.
> 
> > +
> > +	for (i = 0; i < vport->num_rxq_grp; i++) {
> > +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > +
> > +		if (iecm_is_queue_model_split(vport->rxq_model))
> > +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> > +		else
> > +			num_rxq = rx_qgrp->singleq.num_rxq;
> > +
> > +		for (j = 0; j < num_rxq; j++, k++) {
> > +			if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +				qc[k].start_queue_id =
> > +				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]-
> >rxq.q_id);
> > +				qc[k].type =
> > +				cpu_to_le32(rx_qgrp->splitq.rxq_sets[j]-
> >rxq.q_type);
> > +			} else {
> > +				qc[k].start_queue_id =
> > +				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_id);
> > +				qc[k].type =
> > +				cpu_to_le32(rx_qgrp->singleq.rxqs[j]->q_type);
> > +			}
> > +			qc[k].num_queues = cpu_to_le32(1);
> > +		}
> > +	}
> > +	if (vport->num_rxq != k - (vport->num_txq + vport->num_complq)) {
> > +		err = -EINVAL;
> > +		goto error;
> > +	}
> > +
> > +	if (iecm_is_queue_model_split(vport->rxq_model)) {
> > +		for (i = 0; i < vport->num_rxq_grp; i++) {
> > +			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > +
> > +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++, k++) {
> > +				struct iecm_queue *q = &rx_qgrp-
> >splitq.bufq_sets[j].bufq;
> > +
> > +				qc[k].type = cpu_to_le32(q->q_type);
> > +				qc[k].start_queue_id = cpu_to_le32(q->q_id);
> > +				qc[k].num_queues = cpu_to_le32(1);
> > +			}
> > +		}
> > +		if (vport->num_bufq != k - (vport->num_txq +
> > +					       vport->num_complq +
> > +					       vport->num_rxq)) {
> > +			err = -EINVAL;
> > +			goto error;
> > +		}
> > +	}
> 
> ...and here.
> 
> > +
> > +	/* Chunk up the queue info into multiple messages */
> > +	config_data_size = sizeof(struct virtchnl2_del_ena_dis_queues);
> > +	chunk_size = sizeof(struct virtchnl2_queue_chunk);
> > +
> > +	num_chunks = IECM_NUM_CHUNKS_PER_MSG(config_data_size,
> chunk_size) + 1;
> > +	if (num_q < num_chunks)
> > +		num_chunks = num_q;
> > +
> > +	num_msgs = num_q / num_chunks;
> > +	if (num_q % num_chunks)
> > +		num_msgs++;
> > +
> > +	for (i = 0, k = 0; i < num_msgs; i++) {
> > +		if (!eq || alloc) {
> > +			buf_size = (chunk_size * (num_chunks - 1)) +
> > +					config_data_size;
> > +			kfree(eq);
> > +			eq = kzalloc(buf_size, GFP_KERNEL);
> > +			if (!eq) {
> > +				err = -ENOMEM;
> > +				goto error;
> > +			}
> > +		} else {
> > +			memset(eq, 0, buf_size);
> > +		}
> > +		eq->vport_id = cpu_to_le32(vport->vport_id);
> > +		eq->chunks.num_chunks = cpu_to_le16(num_chunks);
> > +		memcpy(eq->chunks.chunks, &qc[k], chunk_size *
> num_chunks);
> > +
> > +		err = iecm_send_mb_msg(vport->adapter, vc_op, buf_size,
> > +				       (u8 *)eq);
> > +		if (err)
> > +			goto mbx_error;
> > +		k += num_chunks;
> > +		num_q -= num_chunks;
> > +		if (num_q < num_chunks) {
> > +			num_chunks = num_q;
> > +			alloc = true;
> > +		}
> > +	}
> > +mbx_error:
> > +	kfree(eq);
> > +error:
> > +	kfree(qc);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_send_map_unmap_queue_vector_msg - Send virtchnl map or unmap
> queue
> > + * vector message
> > + * @vport: virtual port data structure
> > + * @map: true for map and false for unmap
> > + *
> > + * Send map or unmap queue vector virtchnl message.  Returns 0 on success,
> > + * negative on failure.
> > + */
> > +int iecm_send_map_unmap_queue_vector_msg(struct iecm_vport *vport,
> bool map)
> > +{
> > +	int num_msgs, num_chunks, config_data_size, chunk_size;
> > +	struct virtchnl2_queue_vector_maps *vqvm = NULL;
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl2_queue_vector *vqv;
> > +	int buf_size, num_q, err = 0;
> > +	bool alloc = false;
> > +	int i, j, k = 0;
> > +
> > +	num_q = vport->num_txq + vport->num_rxq;
> > +
> > +	buf_size = sizeof(struct virtchnl2_queue_vector) * num_q;
> > +	vqv = kzalloc(buf_size, GFP_KERNEL);
> > +	if (!vqv)
> > +		return -ENOMEM;
> > +
> > +	for (i = 0; i < vport->num_txq_grp; i++) {
> > +		struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> > +
> > +		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
> > +			vqv[k].queue_type = cpu_to_le32(tx_qgrp->txqs[j]-
> >q_type);
> > +			vqv[k].queue_id = cpu_to_le32(tx_qgrp->txqs[j]->q_id);
> > +
> > +			if (iecm_is_queue_model_split(vport->txq_model)) {
> > +				vqv[k].vector_id =
> > +				cpu_to_le16(tx_qgrp->complq->q_vector-
> >v_idx);
> > +				vqv[k].itr_idx =
> > +				cpu_to_le32(tx_qgrp->complq->q_vector-
> >tx_itr_idx);
> > +			} else {
> > +				vqv[k].vector_id =
> > +				cpu_to_le16(tx_qgrp->txqs[j]->q_vector-
> >v_idx);
> > +				vqv[k].itr_idx =
> > +				cpu_to_le32(tx_qgrp->txqs[j]->q_vector-
> >tx_itr_idx);
> > +			}
> > +		}
> > +	}
> > +
> > +	if (vport->num_txq != k) {
> > +		err = -EINVAL;
> > +		goto error;
> > +	}
> > +
> > +	for (i = 0; i < vport->num_rxq_grp; i++) {
> > +		struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > +		int num_rxq;
> > +
> > +		if (iecm_is_queue_model_split(vport->rxq_model))
> > +			num_rxq = rx_qgrp->splitq.num_rxq_sets;
> > +		else
> > +			num_rxq = rx_qgrp->singleq.num_rxq;
> > +
> > +		for (j = 0; j < num_rxq; j++, k++) {
> > +			struct iecm_queue *rxq;
> > +
> > +			if (iecm_is_queue_model_split(vport->rxq_model))
> > +				rxq = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> > +			else
> > +				rxq = rx_qgrp->singleq.rxqs[j];
> > +
> > +			vqv[k].queue_type = cpu_to_le32(rxq->q_type);
> > +			vqv[k].queue_id = cpu_to_le32(rxq->q_id);
> > +			vqv[k].vector_id = cpu_to_le16(rxq->q_vector->v_idx);
> > +			vqv[k].itr_idx = cpu_to_le32(rxq->q_vector->rx_itr_idx);
> > +		}
> > +	}
> > +
> > +	if (iecm_is_queue_model_split(vport->txq_model)) {
> > +		if (vport->num_rxq != k - vport->num_complq) {
> 
> 	if (iecm_is_queue_model_split() && vport->num_rxq != ...) {
> 
> > +			err = -EINVAL;
> > +			goto error;
> > +		}
> > +	} else {
> 
> Don't forget to convert this then into `!split + ...`, either with
> 'else' or not.
> 
> > +		if (vport->num_rxq != k - vport->num_txq) {
> > +			err = -EINVAL;
> > +			goto error;
> > +		}
> > +	}
> > +
> > +	/* Chunk up the vector info into multiple messages */
> > +	config_data_size = sizeof(struct virtchnl2_queue_vector_maps);
> > +	chunk_size = sizeof(struct virtchnl2_queue_vector);
> > +
> > +	num_chunks = IECM_NUM_CHUNKS_PER_MSG(config_data_size,
> chunk_size) + 1;
> > +	if (num_q < num_chunks)
> > +		num_chunks = num_q;
> > +
> > +	num_msgs = num_q / num_chunks;
> > +	if (num_q % num_chunks)
> > +		num_msgs++;
> > +
> > +	for (i = 0, k = 0; i < num_msgs; i++) {
> > +		if (!vqvm || alloc) {
> > +			buf_size = (chunk_size * (num_chunks - 1)) +
> > +					config_data_size;
> > +			kfree(vqvm);
> > +			vqvm = kzalloc(buf_size, GFP_KERNEL);
> > +			if (!vqvm) {
> > +				err = -ENOMEM;
> > +				goto error;
> > +			}
> > +		} else {
> > +			memset(vqvm, 0, buf_size);
> > +		}
> > +		vqvm->vport_id = cpu_to_le32(vport->vport_id);
> > +		vqvm->num_qv_maps = cpu_to_le16(num_chunks);
> > +		memcpy(vqvm->qv_maps, &vqv[k], chunk_size * num_chunks);
> > +
> > +		if (map) {
> > +			err = iecm_send_mb_msg(adapter,
> > +
> VIRTCHNL2_OP_MAP_QUEUE_VECTOR,
> > +					       buf_size, (u8 *)vqvm);
> > +			if (!err)
> > +				err = iecm_wait_for_event(adapter,
> > +							  IECM_VC_MAP_IRQ,
> > +
> IECM_VC_MAP_IRQ_ERR);
> > +		} else {
> > +			err = iecm_send_mb_msg(adapter,
> > +
> VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR,
> > +					       buf_size, (u8 *)vqvm);
> > +			if (!err)
> > +				err =
> > +				iecm_min_wait_for_event(adapter,
> > +
> 	IECM_VC_UNMAP_IRQ,
> > +
> 	IECM_VC_UNMAP_IRQ_ERR);
> > +		}
> > +		if (err)
> > +			goto mbx_error;
> > +
> > +		k += num_chunks;
> > +		num_q -= num_chunks;
> > +		if (num_q < num_chunks) {
> > +			num_chunks = num_q;
> > +			alloc = true;
> > +		}
> > +	}
> > +mbx_error:
> > +	kfree(vqvm);
> > +error:
> > +	kfree(vqv);
> > +	return err;
> > +}
> > +EXPORT_SYMBOL(iecm_send_map_unmap_queue_vector_msg);
> > +
> > +/**
> > + * iecm_send_enable_queues_msg - send enable queues virtchnl message
> > + * @vport: Virtual port private data structure
> > + *
> > + * Will send enable queues virtchnl message.  Returns 0 on success, negative
> on
> > + * failure.
> > + */
> > +static int iecm_send_enable_queues_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	int err;
> > +
> > +	err = iecm_send_ena_dis_queues_msg(vport,
> > +					   VIRTCHNL2_OP_ENABLE_QUEUES);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_wait_for_event(adapter, IECM_VC_ENA_QUEUES,
> > +				   IECM_VC_ENA_QUEUES_ERR);
> > +}
> > +
> > +/**
> > + * iecm_send_disable_queues_msg - send disable queues virtchnl message
> > + * @vport: Virtual port private data structure
> > + *
> > + * Will send disable queues virtchnl message.  Returns 0 on success, negative
> > + * on failure.
> > + */
> > +static int iecm_send_disable_queues_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	int err;
> > +
> > +	err = iecm_send_ena_dis_queues_msg(vport,
> > +					   VIRTCHNL2_OP_DISABLE_QUEUES);
> > +	if (err)
> > +		return err;
> > +
> > +	err = iecm_min_wait_for_event(adapter, IECM_VC_DIS_QUEUES,
> > +				      IECM_VC_DIS_QUEUES_ERR);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_wait_for_marker_event(vport);
> > +}
> > +
> > +/**
> > + * iecm_convert_reg_to_queue_chunks - Copy queue chunk information to
> the right
> > + * structure
> > + * @dchunks: Destination chunks to store data to
> > + * @schunks: Source chunks to copy data from
> > + * @num_chunks: number of chunks to copy
> > + */
> > +static void
> > +iecm_convert_reg_to_queue_chunks(struct virtchnl2_queue_chunk
> *dchunks,
> > +				 struct virtchnl2_queue_reg_chunk *schunks,
> > +				 u16 num_chunks)
> > +{
> > +	u16 i;
> > +
> > +	for (i = 0; i < num_chunks; i++) {
> > +		dchunks[i].type = schunks[i].type;
> > +		dchunks[i].start_queue_id = schunks[i].start_queue_id;
> > +		dchunks[i].num_queues = schunks[i].num_queues;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_send_delete_queues_msg - send delete queues virtchnl message
> > + * @vport: Virtual port private data structure
> > + *
> > + * Will send delete queues virtchnl message. Return 0 on success, negative on
> > + * failure.
> > + */
> > +int iecm_send_delete_queues_msg(struct iecm_vport *vport)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl2_create_vport *vport_params;
> > +	struct virtchnl2_queue_reg_chunks *chunks;
> > +	struct virtchnl2_del_ena_dis_queues *eq;
> > +	int buf_size, err;
> > +	u16 num_chunks;
> > +
> > +	if (vport->adapter->config_data.req_qs_chunks) {
> > +		struct virtchnl2_add_queues *vc_aq =
> > +			(struct virtchnl2_add_queues *)
> > +			vport->adapter->config_data.req_qs_chunks;
> > +		chunks = &vc_aq->chunks;
> > +	} else {
> > +		vport_params = (struct virtchnl2_create_vport *)
> > +				vport->adapter->vport_params_recvd[0];
> > +		 chunks = &vport_params->chunks;
> > +	}
> > +
> > +	num_chunks = le16_to_cpu(chunks->num_chunks);
> > +	buf_size = sizeof(struct virtchnl2_del_ena_dis_queues) +
> > +			  (sizeof(struct virtchnl2_queue_chunk) *
> > +			  (num_chunks - 1));
> > +
> > +	eq = kzalloc(buf_size, GFP_KERNEL);
> > +	if (!eq)
> > +		return -ENOMEM;
> > +
> > +	eq->vport_id = cpu_to_le32(vport->vport_id);
> > +	eq->chunks.num_chunks = cpu_to_le16(num_chunks);
> > +
> > +	iecm_convert_reg_to_queue_chunks(eq->chunks.chunks, chunks-
> >chunks,
> > +					 num_chunks);
> > +
> > +	err = iecm_send_mb_msg(vport->adapter,
> VIRTCHNL2_OP_DEL_QUEUES,
> > +			       buf_size, (u8 *)eq);
> > +	if (err)
> > +		goto error;
> > +
> > +	err = iecm_min_wait_for_event(adapter, IECM_VC_DEL_QUEUES,
> > +				      IECM_VC_DEL_QUEUES_ERR);
> > +error:
> > +	kfree(eq);
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_send_config_queues_msg - Send config queues virtchnl message
> > + * @vport: Virtual port private data structure
> > + *
> > + * Will send config queues virtchnl message. Returns 0 on success, negative
> on
> > + * failure.
> > + */
> > +static int iecm_send_config_queues_msg(struct iecm_vport *vport)
> > +{
> > +	int err;
> > +
> > +	err = iecm_send_config_tx_queues_msg(vport);
> > +	if (err)
> > +		return err;
> > +
> > +	return iecm_send_config_rx_queues_msg(vport);
> > +}
> > +
> > +/**
> > + * iecm_send_add_queues_msg - Send virtchnl add queues message
> > + * @vport: Virtual port private data structure
> > + * @num_tx_q: number of transmit queues
> > + * @num_complq: number of transmit completion queues
> > + * @num_rx_q: number of receive queues
> > + * @num_rx_bufq: number of receive buffer queues
> > + *
> > + * Returns 0 on success, negative on failure.
> > + */
> > +int iecm_send_add_queues_msg(struct iecm_vport *vport, u16 num_tx_q,
> > +			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl2_add_queues aq = {0};
> > +	struct virtchnl2_add_queues *vc_msg;
> > +	int size, err;
> > +
> > +	vc_msg = (struct virtchnl2_add_queues *)adapter->vc_msg;
> > +
> > +	aq.vport_id = cpu_to_le32(vport->vport_id);
> > +	aq.num_tx_q = cpu_to_le16(num_tx_q);
> > +	aq.num_tx_complq = cpu_to_le16(num_complq);
> > +	aq.num_rx_q = cpu_to_le16(num_rx_q);
> > +	aq.num_rx_bufq = cpu_to_le16(num_rx_bufq);
> > +
> > +	err = iecm_send_mb_msg(adapter,
> > +			       VIRTCHNL2_OP_ADD_QUEUES,
> > +			       sizeof(struct virtchnl2_add_queues), (u8 *)&aq);
> > +	if (err)
> > +		return err;
> > +
> > +	err = iecm_wait_for_event(adapter, IECM_VC_ADD_QUEUES,
> > +				  IECM_VC_ADD_QUEUES_ERR);
> > +	if (err)
> > +		return err;
> > +
> > +	kfree(adapter->config_data.req_qs_chunks);
> > +	adapter->config_data.req_qs_chunks = NULL;
> > +
> > +	/* compare vc_msg num queues with vport num queues */
> > +	if (le16_to_cpu(vc_msg->num_tx_q) != num_tx_q ||
> > +	    le16_to_cpu(vc_msg->num_rx_q) != num_rx_q ||
> > +	    le16_to_cpu(vc_msg->num_tx_complq) != num_complq ||
> > +	    le16_to_cpu(vc_msg->num_rx_bufq) != num_rx_bufq) {
> > +		err = -EINVAL;
> > +		goto error;
> > +	}
> > +
> > +	size = sizeof(struct virtchnl2_add_queues) +
> > +			((le16_to_cpu(vc_msg->chunks.num_chunks) - 1) *
> > +			sizeof(struct virtchnl2_queue_reg_chunk));
> > +	adapter->config_data.req_qs_chunks =
> > +		kzalloc(size, GFP_KERNEL);
> > +	if (!adapter->config_data.req_qs_chunks) {
> > +		err = -ENOMEM;
> > +		goto error;
> > +	}
> > +	memcpy(adapter->config_data.req_qs_chunks,
> > +	       adapter->vc_msg, size);
> > +error:
> > +	clear_bit(__IECM_VC_MSG_PENDING, adapter->flags);
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_find_ctlq - Given a type and id, find ctlq info
> >   * @hw: hardware struct
> > @@ -1217,6 +2219,13 @@ static void iecm_vport_init(struct iecm_vport
> *vport,
> >  	/*Initialize Tx and Rx profiles for Dynamic Interrupt Moderation */
> >  	memcpy(vport->rx_itr_profile, rx_itr, IECM_DIM_PROFILE_SLOTS);
> >  	memcpy(vport->tx_itr_profile, tx_itr, IECM_DIM_PROFILE_SLOTS);
> > +
> > +	iecm_vport_set_hsplit(vport, true);
> > +
> > +	iecm_vport_init_num_qs(vport, vport_msg);
> > +	iecm_vport_calc_num_q_desc(vport);
> > +	iecm_vport_calc_num_q_groups(vport);
> > +	iecm_vport_calc_num_q_vec(vport);
> >  }
> >
> >  /**
> > @@ -1316,8 +2325,82 @@ static int
> >  __iecm_vport_queue_ids_init(struct iecm_vport *vport, u32 *qids,
> >  			    int num_qids, u32 q_type)
> >  {
> > -	/* stub */
> > -	return 0;
> > +	struct iecm_queue *q;
> > +	int i, j, k = 0;
> > +
> > +	switch (q_type) {
> > +	case VIRTCHNL2_QUEUE_TYPE_TX:
> > +		for (i = 0; i < vport->num_txq_grp; i++) {
> > +			struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> > +
> > +			for (j = 0; j < tx_qgrp->num_txq; j++) {
> > +				if (k < num_qids) {
> > +					tx_qgrp->txqs[j]->q_id = qids[k];
> > +					tx_qgrp->txqs[j]->q_type =
> > +						VIRTCHNL2_QUEUE_TYPE_TX;
> > +					k++;
> > +				} else {
> > +					break;
> > +				}
> > +			}
> > +		}
> > +		break;
> > +	case VIRTCHNL2_QUEUE_TYPE_RX:
> > +		for (i = 0; i < vport->num_rxq_grp; i++) {
> > +			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > +			int num_rxq;
> > +
> > +			if (iecm_is_queue_model_split(vport->rxq_model))
> > +				num_rxq = rx_qgrp->splitq.num_rxq_sets;
> > +			else
> > +				num_rxq = rx_qgrp->singleq.num_rxq;
> > +
> > +			for (j = 0; j < num_rxq && k < num_qids; j++, k++) {
> > +				if (iecm_is_queue_model_split(vport-
> >rxq_model))
> > +					q = &rx_qgrp->splitq.rxq_sets[j]->rxq;
> > +				else
> > +					q = rx_qgrp->singleq.rxqs[j];
> > +				q->q_id = qids[k];
> > +				q->q_type = VIRTCHNL2_QUEUE_TYPE_RX;
> > +			}
> > +		}
> > +		break;
> > +	case VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION:
> > +		for (i = 0; i < vport->num_txq_grp; i++) {
> > +			struct iecm_txq_group *tx_qgrp = &vport->txq_grps[i];
> > +
> > +			if (k < num_qids) {
> > +				tx_qgrp->complq->q_id = qids[k];
> > +				tx_qgrp->complq->q_type =
> > +
> 	VIRTCHNL2_QUEUE_TYPE_TX_COMPLETION;
> > +				k++;
> > +			} else {
> > +				break;
> > +			}
> > +		}
> > +		break;
> > +	case VIRTCHNL2_QUEUE_TYPE_RX_BUFFER:
> > +		for (i = 0; i < vport->num_rxq_grp; i++) {
> > +			struct iecm_rxq_group *rx_qgrp = &vport->rxq_grps[i];
> > +
> > +			for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
> > +				if (k < num_qids) {
> > +					q = &rx_qgrp->splitq.bufq_sets[j].bufq;
> > +					q->q_id = qids[k];
> > +					q->q_type =
> > +
> 	VIRTCHNL2_QUEUE_TYPE_RX_BUFFER;
> > +					k++;
> > +				} else {
> > +					break;
> > +				}
> > +			}
> > +		}
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return k;
> >  }
> >
> >  /**
> > @@ -1425,6 +2508,20 @@ static bool iecm_is_capability_ena(struct
> iecm_adapter *adapter, bool all,
> >  		return !!(*cap_field & flag);
> >  }
> >
> > +/**
> > + * iecm_get_reserved_vectors - Default implementation to get reserved
> vectors
> > + * @adapter: Private data struct
> > + *
> > + * Return number of vectors reserved
> > + */
> > +static u16 iecm_get_reserved_vectors(struct iecm_adapter *adapter)
> > +{
> > +	struct virtchnl2_get_capabilities *caps;
> > +
> > +	caps = (struct virtchnl2_get_capabilities *)adapter->caps;
> > +	return le16_to_cpu(caps->num_allocated_vectors);
> > +}
> > +
> >  /**
> >   * iecm_vc_ops_init - Initialize virtchnl common api
> >   * @adapter: Driver specific private structure
> > @@ -1441,16 +2538,16 @@ void iecm_vc_ops_init(struct iecm_adapter
> *adapter)
> >  	vc_ops->vport_queue_ids_init = iecm_vport_queue_ids_init;
> >  	vc_ops->get_caps = iecm_send_get_caps_msg;
> >  	vc_ops->is_cap_ena = iecm_is_capability_ena;
> > -	vc_ops->get_reserved_vecs = NULL;
> > -	vc_ops->config_queues = NULL;
> > -	vc_ops->enable_queues = NULL;
> > -	vc_ops->disable_queues = NULL;
> > -	vc_ops->add_queues = NULL;
> > -	vc_ops->delete_queues = NULL;
> > -	vc_ops->irq_map_unmap = NULL;
> > -	vc_ops->enable_vport = NULL;
> > -	vc_ops->disable_vport = NULL;
> > -	vc_ops->destroy_vport = NULL;
> > +	vc_ops->get_reserved_vecs = iecm_get_reserved_vectors;
> > +	vc_ops->config_queues = iecm_send_config_queues_msg;
> > +	vc_ops->enable_queues = iecm_send_enable_queues_msg;
> > +	vc_ops->disable_queues = iecm_send_disable_queues_msg;
> > +	vc_ops->add_queues = iecm_send_add_queues_msg;
> > +	vc_ops->delete_queues = iecm_send_delete_queues_msg;
> > +	vc_ops->irq_map_unmap =
> iecm_send_map_unmap_queue_vector_msg;
> > +	vc_ops->enable_vport = iecm_send_enable_vport_msg;
> > +	vc_ops->disable_vport = iecm_send_disable_vport_msg;
> > +	vc_ops->destroy_vport = iecm_send_destroy_vport_msg;
> >  	vc_ops->get_ptype = NULL;
> >  	vc_ops->get_set_rss_key = NULL;
> >  	vc_ops->get_set_rss_lut = NULL;
> 
> Forgot to mention earlier, any reason to not declare this ops as
> static const and just assign a pointer then? I don't see any
> alternations here to e.g. fill callbacks with different functions
> or so.
> 
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> b/drivers/net/ethernet/intel/include/iecm.h
> > index 994664dfe419..8dd6272db7d3 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -432,6 +432,8 @@ struct iecm_adapter {
> >  	u16 num_alloc_vport;
> >  	u16 next_vport;		/* Next free slot in pf->vport[] - 0-based! */
> >
> > +	u16 max_queue_limit;	/* Max number of queues user can request */
> > +
> >  	struct delayed_work init_task; /* delayed init task */
> >  	struct workqueue_struct *init_wq;
> >  	u32 mb_wait_count;
> > @@ -510,6 +512,12 @@ static inline bool __iecm_is_cap_ena(struct
> iecm_adapter *adapter, bool all,
> >  	return adapter->dev_ops.vc_ops.is_cap_ena(adapter, all, field, flag);
> >  }
> >
> > +#define IECM_CAP_HSPLIT (\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L2   |\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L3   |\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V4 |\
> > +	VIRTCHNL2_CAP_RX_HSPLIT_AT_L4V6)
> > +
> >  /**
> >   * iecm_is_reset_detected - check if we were reset at some point
> >   * @adapter: driver specific private structure
> > @@ -530,6 +538,8 @@ int iecm_init_dflt_mbx(struct iecm_adapter *adapter);
> >  void iecm_deinit_dflt_mbx(struct iecm_adapter *adapter);
> >  void iecm_vc_ops_init(struct iecm_adapter *adapter);
> >  int iecm_vc_core_init(struct iecm_adapter *adapter, int *vport_id);
> > +int iecm_get_reg_intr_vecs(struct iecm_vport *vport,
> > +			   struct iecm_vec_regs *reg_vals, int num_vecs);
> >  int iecm_wait_for_event(struct iecm_adapter *adapter,
> >  			enum iecm_vport_vc_state state,
> >  			enum iecm_vport_vc_state err_check);
> > @@ -537,6 +547,14 @@ int iecm_min_wait_for_event(struct iecm_adapter
> *adapter,
> >  			    enum iecm_vport_vc_state state,
> >  			    enum iecm_vport_vc_state err_check);
> >  int iecm_send_get_caps_msg(struct iecm_adapter *adapter);
> > +int iecm_send_delete_queues_msg(struct iecm_vport *vport);
> > +int iecm_send_add_queues_msg(struct iecm_vport *vport, u16 num_tx_q,
> > +			     u16 num_complq, u16 num_rx_q, u16 num_rx_bufq);
> > +int iecm_send_config_tx_queues_msg(struct iecm_vport *vport);
> > +int iecm_send_config_rx_queues_msg(struct iecm_vport *vport);
> > +int iecm_send_enable_vport_msg(struct iecm_vport *vport);
> > +int iecm_send_disable_vport_msg(struct iecm_vport *vport);
> > +int iecm_send_destroy_vport_msg(struct iecm_vport *vport);
> >  int iecm_vport_params_buf_alloc(struct iecm_adapter *adapter);
> >  void iecm_vport_params_buf_rel(struct iecm_adapter *adapter);
> >  int iecm_get_vec_ids(struct iecm_adapter *adapter,
> > @@ -546,7 +564,11 @@ int iecm_recv_mb_msg(struct iecm_adapter
> *adapter, enum virtchnl_ops op,
> >  		     void *msg, int msg_size);
> >  int iecm_send_mb_msg(struct iecm_adapter *adapter, enum virtchnl_ops op,
> >  		     u16 msg_size, u8 *msg);
> > +void iecm_vport_set_hsplit(struct iecm_vport *vport, bool ena);
> > +int iecm_send_enable_channels_msg(struct iecm_vport *vport);
> > +int iecm_send_disable_channels_msg(struct iecm_vport *vport);
> >  int iecm_set_msg_pending(struct iecm_adapter *adapter,
> >  			 struct iecm_ctlq_msg *ctlq_msg,
> >  			 enum iecm_vport_vc_state err_enum);
> > +int iecm_send_map_unmap_queue_vector_msg(struct iecm_vport *vport,
> bool map);
> >  #endif /* !_IECM_H_ */
> > diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h
> b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > index e1348011c991..448cae0bf6e7 100644
> > --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> > +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > @@ -81,6 +81,22 @@
> >
> >  #define IECM_TX_COMPLQ_CLEAN_BUDGET	256
> >
> > +enum iecm_queue_flags_t {
> > +	__IECM_Q_GEN_CHK,
> > +	__IECM_RFLQ_GEN_CHK,
> > +	__IECM_Q_FLOW_SCH_EN,
> > +	__IECM_Q_ETF_EN,
> > +	__IECM_Q_SW_MARKER,
> > +	__IECM_Q_VLAN_TAG_LOC_L2TAG1,
> > +	__IECM_Q_VLAN_TAG_LOC_L2TAG2,
> > +	__IECM_Q_FLAGS_NBITS,
> > +};
> > +
> > +struct iecm_vec_regs {
> > +	u32 dyn_ctl_reg;
> > +	u32 itrn_reg;
> > +};
> > +
> >  struct iecm_intr_reg {
> >  	u32 dyn_ctl;
> >  	u32 dyn_ctl_intena_m;
> > @@ -122,6 +138,186 @@ struct iecm_q_vector {
> >  	char name[IECM_INT_NAME_STR_LEN];
> >  };
> >
> > +struct iecm_rx_queue_stats {
> > +	u64 packets;
> > +	u64 bytes;
> > +	u64 rsc_pkts;
> > +};
> > +
> > +struct iecm_tx_queue_stats {
> > +	u64 packets;
> > +	u64 bytes;
> > +	u64 lso_pkts;
> > +};
> > +
> > +union iecm_queue_stats {
> > +	struct iecm_rx_queue_stats rx;
> > +	struct iecm_tx_queue_stats tx;
> > +};
> > +
> > +/* queue associated with a vport */
> > +struct iecm_queue {
> > +	struct device *dev;		/* Used for DMA mapping */
> > +	struct iecm_vport *vport;	/* Backreference to associated vport
> */
> > +	union {
> > +		struct iecm_txq_group *txq_grp;
> > +		struct iecm_rxq_group *rxq_grp;
> > +	};
> > +	/* bufq: Used as group id, either 0 or 1, on clean Buf Q uses this
> > +	 *       index to determine which group of refill queues to clean.
> > +	 *       Bufqs are use in splitq only.
> > +	 * txq: Index to map between Tx Q group and hot path Tx ptrs stored in
> > +	 *      vport.  Used in both single Q/split Q
> > +	 * rxq: Index to total rxq across groups, used for skb reporting
> > +	 */
> > +	u16 idx;
> > +	/* Used for both Q models single and split. In split Q model relevant
> > +	 * only to Tx Q and Rx Q
> > +	 */
> > +	u8 __iomem *tail;
> > +	/* Used in both single and split Q.  In single Q, Tx Q uses tx_buf and
> > +	 * Rx Q uses rx_buf.  In split Q, Tx Q uses tx_buf, Rx Q uses skb, and
> > +	 * Buf Q uses rx_buf.
> > +	 */
> > +	union {
> > +		struct iecm_tx_buf *tx_buf;
> > +		struct {
> > +			struct iecm_rx_buf *buf;
> > +			struct iecm_dma_mem **hdr_buf;
> > +		} rx_buf;
> > +		struct sk_buff *skb;
> > +	};
> > +	u16 q_type;
> > +	/* Queue id(Tx/Tx compl/Rx/Bufq) */
> > +	u32 q_id;
> > +	u16 desc_count;		/* Number of descriptors */
> > +
> > +	/* Relevant in both split & single Tx Q & Buf Q*/
> > +	u16 next_to_use;
> > +	/* In split q model only relevant for Tx Compl Q and Rx Q */
> > +	u16 next_to_clean;	/* used in interrupt processing */
> > +	/* Used only for Rx. In split Q model only relevant to Rx Q */
> > +	u16 next_to_alloc;
> > +	/* Generation bit check stored, as HW flips the bit at Queue end */
> > +	DECLARE_BITMAP(flags, __IECM_Q_FLAGS_NBITS);
> > +
> > +	union iecm_queue_stats q_stats;
> > +	struct u64_stats_sync stats_sync;
> > +
> > +	bool rx_hsplit_en;
> > +
> > +	u16 rx_hbuf_size;	/* Header buffer size */
> > +	u16 rx_buf_size;
> > +	u16 rx_max_pkt_size;
> > +	u16 rx_buf_stride;
> > +	u8 rx_buffer_low_watermark;
> > +	u64 rxdids;
> > +	/* Used for both Q models single and split. In split Q model relavant
> > +	 * only to Tx compl Q and Rx compl Q
> > +	 */
> > +	struct iecm_q_vector *q_vector;	/* Backreference to associated vector
> */
> > +	unsigned int size;		/* length of descriptor ring in bytes */
> > +	dma_addr_t dma;			/* physical address of ring */
> > +	void *desc_ring;		/* Descriptor ring memory */
> > +
> > +	u16 tx_buf_key;			/* 16 bit unique "identifier" (index)
> > +					 * to be used as the completion tag
> when
> > +					 * queue is using flow based scheduling
> > +					 */
> > +	u16 tx_max_bufs;		/* Max buffers that can be transmitted
> > +					 * with scatter-gather
> > +					 */
> > +	DECLARE_HASHTABLE(sched_buf_hash, 12);
> > +} ____cacheline_internodealigned_in_smp;
> > +
> > +/* Software queues are used in splitq mode to manage buffers between rxq
> > + * producer and the bufq consumer.  These are required in order to maintain a
> > + * lockless buffer management system and are strictly software only
> constructs.
> > + */
> > +struct iecm_sw_queue {
> > +	u16 next_to_clean ____cacheline_aligned_in_smp;
> > +	u16 next_to_alloc ____cacheline_aligned_in_smp;
> > +	u16 next_to_use ____cacheline_aligned_in_smp;
> > +	DECLARE_BITMAP(flags, __IECM_Q_FLAGS_NBITS)
> > +		____cacheline_aligned_in_smp;
> > +	u16 *ring ____cacheline_aligned_in_smp;
> 
> This will result in this part being FIVE cachelines long for
> 3 * 2 + 8 + 8 = 22 bytes, i.e. 320 bytes for 22!
> Just making the entire structure cacheline-aligned after its
> declaration is enough, these ones are not even an overkill,
> it's an overslaughter.
> 
> > +	u16 desc_count;
> > +	u16 buf_size;
> > +	struct device *dev;
> > +} ____cacheline_internodealigned_in_smp;
> > +
> > +/* Splitq only.  iecm_rxq_set associates an rxq with at an array of refillqs.
> > + * Each rxq needs a refillq to return used buffers back to the respective bufq.
> > + * Bufqs then clean these refillqs for buffers to give to hardware.
> > + */
> > +struct iecm_rxq_set {
> > +	struct iecm_queue rxq;
> > +	/* refillqs assoc with bufqX mapped to this rxq */
> > +	struct iecm_sw_queue *refillq0;
> > +	struct iecm_sw_queue *refillq1;
> > +};
> > +
> > +/* Splitq only.  iecm_bufq_set associates a bufq to an array of refillqs.
> > + * In this bufq_set, there will be one refillq for each rxq in this rxq_group.
> > + * Used buffers received by rxqs will be put on refillqs which bufqs will
> > + * clean to return new buffers back to hardware.
> > + *
> > + * Buffers needed by some number of rxqs associated in this rxq_group are
> > + * managed by at most two bufqs (depending on performance configuration).
> > + */
> > +struct iecm_bufq_set {
> > +	struct iecm_queue bufq;
> > +	/* This is always equal to num_rxq_sets in iecm_rxq_group */
> > +	int num_refillqs;
> > +	struct iecm_sw_queue *refillqs;
> > +};
> > +
> > +/* In singleq mode, an rxq_group is simply an array of rxqs.  In splitq, a
> > + * rxq_group contains all the rxqs, bufqs and refillqs needed to
> > + * manage buffers in splitq mode.
> > + */
> > +struct iecm_rxq_group {
> > +	struct iecm_vport *vport; /* back pointer */
> > +
> > +	union {
> > +		struct {
> > +			int num_rxq;
> > +			/* store queue pointers */
> > +			struct iecm_queue *rxqs[IECM_LARGE_MAX_Q];
> > +		} singleq;
> > +		struct {
> > +			int num_rxq_sets;
> > +			/* store queue pointers */
> > +			struct iecm_rxq_set *rxq_sets[IECM_LARGE_MAX_Q];
> > +			struct iecm_bufq_set *bufq_sets;
> > +		} splitq;
> > +	};
> > +};
> > +
> > +/* Between singleq and splitq, a txq_group is largely the same except for the
> > + * complq.  In splitq a single complq is responsible for handling completions
> > + * for some number of txqs associated in this txq_group.
> > + */
> > +struct iecm_txq_group {
> > +	struct iecm_vport *vport; /* back pointer */
> > +
> > +	int num_txq;
> > +	/* store queue pointers */
> > +	struct iecm_queue *txqs[IECM_LARGE_MAX_Q];
> > +
> > +	/* splitq only */
> > +	struct iecm_queue *complq;
> > +};
> > +
> > +struct iecm_adapter;
> > +
> > +void iecm_vport_init_num_qs(struct iecm_vport *vport,
> > +			    struct virtchnl2_create_vport *vport_msg);
> > +void iecm_vport_calc_num_q_desc(struct iecm_vport *vport);
> > +void iecm_vport_calc_total_qs(struct iecm_adapter *adapter,
> > +			      struct virtchnl2_create_vport *vport_msg);
> > +void iecm_vport_calc_num_q_groups(struct iecm_vport *vport);
> > +void iecm_vport_calc_num_q_vec(struct iecm_vport *vport);
> >  irqreturn_t
> >  iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
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
