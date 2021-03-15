Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D1E33AD3E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:21:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC6CC430BB;
	Mon, 15 Mar 2021 08:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kfbGBHGtHYsJ; Mon, 15 Mar 2021 08:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0B454016C;
	Mon, 15 Mar 2021 08:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2AD81BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0F064016C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O_tfejP4viE6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:21:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF96D40146
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:21:47 +0000 (UTC)
IronPort-SDR: U0S3HvkF6jI18h337p3biwcDi8gS6/WOfgI7FmUzlDXrELA/WvKsTBd1CBewwGPFwl2eKPmYHN
 e2zUbeIBaCaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="176183319"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="176183319"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:21:47 -0700
IronPort-SDR: pHgR5zz5GsHb5VonK+eRMo/nTOHdMP2dK4holeKODf/JsLo+kwp7VZh9gWGzlXABPrrmyxuPxR
 W48yTqqm4IPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="371556231"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 15 Mar 2021 01:21:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:21:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:21:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fD7ZvdpL5A1BxR25wb/uEDxdJtoqZRzk0c2Bs7yCK6C7L0hsgBzFmbFatsrxHYk29HAGLve9dq69kmGwrpeY6eQMQZXGidG6bb0U4WCHP6fpXkPa4/CaHevMSx6fzx7Y65G2pvF8+kbGsDmqEGz9B/KHMtruDWy5ERztZBTvQFY/kL9A/jRHErTNNCFdCLleRCuVdrIRmCfcjhkgfQno4o5GRjJqFZDN/srWuZn52fxLqEvVJAsYkmUKqnC4A16+P9v4h/K91bLo87KWqBJbemWQ7ef9vVU4d7GL0Aabu2Pbb7QlEKLU/LG0ABGGPulhRf/g32fgxsa/kurjl2Jm/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H7pSYI4arkw40JbkiibwMzoNfo5MDqEihRaMHdp1irw=;
 b=aWII+jDYcSDcQuEG4+X8Cgb5qWZTNjGXVSyMrwot5EYtVAl+bzNDdmHCnzHI2HfawgoZzZp0eV6UiTvH1Upj7hqXh+NTK7h9Lh+xjov1DIhVMtUuxeN2KEbKCV9d7WKOaBkqMp4G/2L/9s0+32xkuvWnLO79XIPy192iYtdWMphvwh+OqAHVwQ6uMDlYuVZW+n7+RtTKPTOlIXOoY6fZ9iEpj/b7rTfnpwFrVbyDBSrkDyugQ9mgf4enRCZsnarK1rtM1sCzwYZfRLrXDuHjDDY/Lb3gBYK61ap1XSLoQu5gefZnjPUXXAxUyIFbiZDyA5IzJUZOCAKKMN0rRj6Pjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H7pSYI4arkw40JbkiibwMzoNfo5MDqEihRaMHdp1irw=;
 b=rAFFSoD0Wzx0WiRQLkSLnpfGNvuaJPhjlCUhnA7LZZVXe7ifeUWkTl+1xHF94N6UvZEqnrlMFo00aoBKzh+wDoqhBQ3MpXcrM2qdfjTOhfrSnz7+g/2CPNMEbQ5LqB8+2ZTxJhRpkHWkK+1GgGpK6m9vvxHA4yvXfD3+is3ZPRA=
Received: from DM6PR11MB3099.namprd11.prod.outlook.com (2603:10b6:5:6c::16) by
 DM6PR11MB4506.namprd11.prod.outlook.com (2603:10b6:5:205::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3933.32; Mon, 15 Mar 2021 08:21:41 +0000
Received: from DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f]) by DM6PR11MB3099.namprd11.prod.outlook.com
 ([fe80::fdb8:bfa8:ff9:b29f%6]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:21:41 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter
 type for AVF
Thread-Index: AQHXFJQpfVX/bOcdAUmqktZ6dx8eAaqEvxJAgAAALuA=
Date: Mon, 15 Mar 2021 08:21:41 +0000
Message-ID: <DM6PR11MB3099045BD668417BC5C4065CD96C9@DM6PR11MB3099.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-13-haiyue.wang@intel.com>
 <BN8PR11MB3795A3D1D3751B0BE0CCB47AF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795A3D1D3751B0BE0CCB47AF76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3dd4549-94c4-4bb3-b8b6-08d8e78b5ced
x-ms-traffictypediagnostic: DM6PR11MB4506:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB450697DB3FC6106B6E07F1A7D96C9@DM6PR11MB4506.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O7WN1j6OTSd8jKKSSckPBappJwiNjPmId0JAfWHpqF/YuL9eaXu0jKidNnYx2P0H5W3ZJdKk/Xw/hlVjFT3XGK9YFtVop1ESl7xsYOgxo1mfOXfQqVP9Fg9h3JmkJ8LyuZvTh+McBbN7d6ANdzErrjsoR8FLG+0TAvL0XHVKMdHyzprjul7DQ1XsRDei4fBy+8i5XO3dSUt0TK/YmsWKK2B6wTZL3Nn+r5LXaNthg7wuegqntxaUKIGCGqJCF3v+J3jIvAxGA0yIJZK/lIT1pML3SQ+X+hQURmLz5zMDkPnYUV02uGIALvxe7q7E9Z3c1XSrvvwYcQ+4gSZqwUDNPvmLQ/mTH3vCitNTRFInXOqgmuyH9vN8rWgSPrao2ChLhZ3XxpQy9A4i7pSU/CyX416jGhGoZs5fWfDS301+VigzS2gSwEVtwha8FDugcmE4icywGBl6MBvhXcpUdKMyRGUB0OQbeXpWScag/VrkrEtZfiFBL8Vs1j5H/d5plkrVwFcR9DTPIY4JZ+fwHHBh+4vfauIG791vKjD9GH2T4/Qo29mL0otjsW8KeLo9sV85lwHCojFQoVYsztjigE7UiG9oTA2PQYjf7XYdhI/E/BHZGOcK0gUl7Jr4kRVL7T9tEgWEirRAMnyQLrmqUtoBCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3099.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(376002)(366004)(136003)(8936002)(5660300002)(55016002)(86362001)(966005)(66556008)(64756008)(52536014)(66446008)(110136005)(7696005)(478600001)(66946007)(53546011)(6506007)(316002)(9686003)(66476007)(4326008)(76116006)(2906002)(26005)(71200400001)(33656002)(83380400001)(107886003)(8676002)(186003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7sm/cs0jUvArwP+7ZQLaoAQjcs7EqMsFG5s0TzWRGf/2vl2QbbVyEDVjrjE4?=
 =?us-ascii?Q?1q7x5maSqO1IcamxmNsbKCYbUtq92ouQCM1SrH6gjbn0o+Uj1sslMNyMyYrY?=
 =?us-ascii?Q?hEsKPE+jaS0hmaCUXCmDCnD4Cwn2YHSbtFR/GJ1cGG9Jj9YOU0bjuR3uwQa6?=
 =?us-ascii?Q?9xWr/pOPRl8KMRBfqgKI+iIbZXnJRKcrqb5TIMW1rMa4jT3ZGC9LmbMoz5az?=
 =?us-ascii?Q?7jbjt6leM79rMvu5/RiBIEENKafkLtuqix0JKP9Vt29bzs8T5ax5AJ06kiyR?=
 =?us-ascii?Q?SUHSDcYShPBFxcCtymefUIa/G4vhvWcUgGpwswe+mJQkDajTCvydbATFXOQc?=
 =?us-ascii?Q?LSSqvMMU6DMDq5C2GUqBpHVzJyhcsyksCGq1QCqdR3iRTWPZUOwFyhoeID+2?=
 =?us-ascii?Q?2IljWFog1bx4Uh4HNSvKvkRR5FtflJNSfyIi+83YylugjeNicAshYj8QJ6LI?=
 =?us-ascii?Q?gJTcEIyKiSWbnRIfKLRO51XrsUGH04bb1Xu20z8Jmb61VIhyxWlIyMDVIXnw?=
 =?us-ascii?Q?JIH6yGqXy4qNf/AhaCPbvZhmWcRrxPz7fEQVP5PNE1CWTRO9IDx0+ROEzJUM?=
 =?us-ascii?Q?LeCQ+O33tbZlmyBkWzyH1QtzG89J4AM4XE175Pxqu0krg21zPXC+s1RZ8NzY?=
 =?us-ascii?Q?KcRa7t4czMlxj4opRFIuPzpQVmWiq49NjjWhnJ82TGHms0hqf00podm7S6cR?=
 =?us-ascii?Q?VtTSe2oQN7Aj9DSGxs0/diD92iPO4HkikOKPdMEciekRBeM5LEwmOddQqjD4?=
 =?us-ascii?Q?7AO0OuMrZkcwTDaAFIU3/9lJrUZs1XxpFv587rQLD1LpzTdw2ol42/aNaX5h?=
 =?us-ascii?Q?yjHKmtNNlg7lYV+hHTiT2cK+eHr4a9DNeLCIZGGYveYFd9Jr4Cy6i3DN/l1r?=
 =?us-ascii?Q?l5qqOh3crPFbSSI9QveGcjkJLt1vZFHGw3Lxd3if9bROVBZTpNvgwgtsLgWr?=
 =?us-ascii?Q?M4oTRLxh/sD3yCYBgQzydCYOWDDf/M8ad8OMM5JCPKzoqmhm8BkuGeXlG3Q4?=
 =?us-ascii?Q?77J5IjbSLc9HqknMvjEoh9l2ErVcj7XHwKeOF88Bh+wtqEz5gLEJ4URQ5aii?=
 =?us-ascii?Q?mw5Cu/5kR7UZzVw/1Wqh2+qmKfTouROjhGTHA2iig5Ui5URFPsmIFMGhNIRm?=
 =?us-ascii?Q?/pFYCUEuCcMbWbs5F6hvzuxLS0pA8zPVZfQRftG7ljf2DDF6EHT1c5Usc2Jn?=
 =?us-ascii?Q?D498hhCX6pD6a3iRfY3TD3oWeTCu3dOYXSjHaVYG5s2KQ1iC6EFwHFCDmivp?=
 =?us-ascii?Q?KT+gkllEA+A3LmjSjTNdPRptI0aqxPzhVFLl3qVDtqxN6ELYQ8JdDEemcxiU?=
 =?us-ascii?Q?cHo9JGbcGG+Yly2R+KmTD5Z8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3099.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3dd4549-94c4-4bb3-b8b6-08d8e78b5ced
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:21:41.6899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RM068uwdZr0sAaji8u2ok9jAM3/43k9c/wOeC1LFmae16CvRcd7DG70UmAaajofaeU0IIWUfWKAWWR270zIakQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4506
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter
 type for AVF
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Cao,
 Yahui" <yahui.cao@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 15, 2021 16:21
> To: intel-wired-lan@lists.osuosl.org
> Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Chen, BoX C
> <box.c.chen@intel.com>
> Subject: RE: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter type
> for AVF
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Haiyue Wang
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Liang, Cunming <cunming.liang@intel.com>; Cao, Yahui
> > <yahui.cao@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>
> > Subject: [Intel-wired-lan] [Patch v5 12/18] ice: Add more FDIR filter
> > type for AVF
> >
> > From: Qi Zhang <qi.z.zhang@intel.com>
> >
> > FDIR for AVF can forward
> > - L2TPV3 packets by matching session id.
> > - IPSEC ESP packets by matching security parameter index.
> > - IPSEC AH packets by matching security parameter index.
> > - NAT_T ESP packets by matching security parameter index.
> > - Any PFCP session packets(s field is 1).
> >
> > Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> > Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_fdir.c     | 254 ++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_fdir.h     |  15 +
> >  drivers/net/ethernet/intel/ice/ice_type.h     |  13 +
> >  .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 281 ++++++++++++++++--
> >  4 files changed, 545 insertions(+), 18 deletions(-)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
