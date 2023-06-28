Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F37C7414A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 17:12:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13DE941D81;
	Wed, 28 Jun 2023 15:12:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13DE941D81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687965175;
	bh=XQdUT215tmhDzcrAC7m+oVGBlFJWxTW0VQF49sFtvKg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GfIQ3bPCvaFyEWwmPHAm2zO8qEuREOEBzuBOrJd06fhPgp7uK0quyGZiKp/hsSoKe
	 LDiIfOHuyfu5OIqVy2celdAFDpvXRGbbzecsfoOqveBKF0kB7nDU3NMSzf8SMRcpYx
	 oX3tYwJUmo4XjeRAyMDlH+VUjJK2czQi7xanIlVHgtjK5TRRHTIkmCvFrjC7AnD0Hq
	 5q2I+2SuDURBvf9TnHT91S/C1ehPWZSCH5UclwbM+jZtsno3n2Zs65E9GUruW6GOPO
	 5Sq3TrSXbIW0cRVB3Z7S6m4mc394btq5c3v37ZhNNwZjp5a5WXwm1nSw06HmO2rJH3
	 UMx9cmqZdjTEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uHAT0Mq-0D1i; Wed, 28 Jun 2023 15:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51E214195A;
	Wed, 28 Jun 2023 15:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51E214195A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E01DA1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 08:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C21CC408DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 08:12:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C21CC408DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7TEX11YUVTQK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 08:12:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43127404E9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43127404E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 08:12:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="360633506"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="360633506"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 01:11:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="840978800"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="840978800"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2023 01:11:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 28 Jun 2023 01:11:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 28 Jun 2023 01:11:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 28 Jun 2023 01:11:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGDXsf6gPA1rtZNK8CHuoAWlciEG/cQoc1D1wN1AHBqPo8eECkFe0myryy4zo1/Fjp0iXWd717+82yWus/DgLjb7Xw+Owvo8U84abc9gmy4vSBH0snTVJlirE1NwqInkI/tsfPQ27QseA0h34XMxVC3EkShVKK5pWXQFwhT/77qR99bLoEHMFA7VPCpiIcQF8lZt2joaAWAI3aB9tSi04A4GM3Hm77y3qeAVDo7FgoTcNNOPG2zaEZk9XiX5Dk124NKgIz/1TQvYgDE0CfKRKEOWC4EIoMKp8aTITTf7RgmzVQf7h5Cx+iDYBRX0cYGY9eGXjUmnUB+XDBAYTrikLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXB3H/XlekubvDIooconuH7D7jJsloRD0Vm7pqde++s=;
 b=jLBZ3Z34QQqB8CNtZuhttGr3+ZwMfz7NqMInYy8eo+0+wEaj+wfaqfIrjEfT8oN5orKau8Q7/GY+EYLyL2fmfz1vqp3yApwIb4JDgOhm4kl/fNgcyDZXy89wE/Igplci+wmreUWw/uFW1gcfsKmqZG2EW093niVdiJqJijPtU0FGX+yWsm70YL1XnCatBrAH0x+CJSfCX6JDiAaoYTJ/Pc22JPQY+bRIK+I1Tnx0IpJvkjRFzPZeo8aV5b7xUBPO+Vzkhkl6GgV7HBZ5xqe+/h0UBr9AVsA206bPslDuNmyXbPMfOihXr9h/fzKZNLJ1RcUmbq5Cfi/hCD622X/8FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20)
 by CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Wed, 28 Jun
 2023 08:11:07 +0000
Received: from DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::e7db:878:dfab:826d]) by DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::e7db:878:dfab:826d%3]) with mapi id 15.20.6521.023; Wed, 28 Jun 2023
 08:11:07 +0000
From: "Liu, Yi L" <yi.l.liu@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, "Liu, Lingyu" <lingyu.liu@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
Thread-Index: AQHZpCB1I+bc8si9JEaVbiHzlN+PhK+VU4CAgAqSm1A=
Date: Wed, 28 Jun 2023 08:11:07 +0000
Message-ID: <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com> <ZJMLHSq9rjGIVS4V@nvidia.com>
In-Reply-To: <ZJMLHSq9rjGIVS4V@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7529:EE_|CH3PR11MB8496:EE_
x-ms-office365-filtering-correlation-id: e124737b-d202-419a-2174-08db77af39cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MaOTqUBNGhGC0V1mxXPBdveyEKA1SAqRWlzVYfb1vIv74RkPBRSpcURb2wL4SErkwrM1gxsko/jFDcCNxf/TkdCdat5Dm+PlyLuui2EUBbzogmh/rUysq86iJuN3eDrGvwyFad3V3HbmY7ipFhYwVfp8yg4aQ7WI++dT7C6jwP4iyA3FXnzWn1Oz9/fkcTN+6TZYN/NEronJbYzKRzXWyGDs4gt0Mpxjas8sQVeZ7lB3rUTN8xyyp1m2Cdewgygi/wcE4R133gZp/x1ZUoExx8AxdiwrGmqSSlxqfexRQ9FfHWbmGsKpoHIBhaWmvPrELG4kiuEuYpZrRdPTvEZVQVYTFTJKX9jfBvdaYqeYjp1/beevOfuOrYjJbyQnEMYNfr77JWJjBYvUxGZC9CgZO1grMEyIrFBFyXapN9Skt/s9B7mWlTTgWqXJYGWmlHgsEmplbjsr4beST53iIe3V071fxKh9U/O9W3mvfna29GfMmUXoky1qTtJPrizHndpxXPUT0PZHSW8OMMWM9JhbB9KnCUuBxiXI1htaQgDugI7XD+kxkBHEwvE3DGvCxXufZy2XWQC0IPtksefLxjIDrTvUz3B1YgWfb+MCmO2Di3c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7529.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(2906002)(186003)(7696005)(71200400001)(122000001)(9686003)(107886003)(83380400001)(38100700002)(82960400001)(6506007)(26005)(86362001)(966005)(55016003)(110136005)(41300700001)(38070700005)(54906003)(478600001)(316002)(4326008)(66946007)(76116006)(33656002)(66556008)(64756008)(66446008)(66476007)(6636002)(52536014)(5660300002)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5fiXpEfXte5pYSXecAHkgKCrbnvbfK7o1KOfJ9HuquEhJ4au6t38HzqD1NIQ?=
 =?us-ascii?Q?/VGOzrm6i037mIDG1DH8u/cWPxCpAr5Usrhdg0KiQRM0OcPgj/qtayEQLe0t?=
 =?us-ascii?Q?A5RnG0A6QRIF6efPcYck7SROJbmxa1Uz9CBQnrQLmwjMN9IfQn3KYRbWXasO?=
 =?us-ascii?Q?i67+k7XQ5BF7y279N5hX2i7mAi4WZVWXl8G3nhnzeDYer8TGbLLDrjJe4a73?=
 =?us-ascii?Q?QgNlXMCEwwZjUACuja6Rb/BQuWYjtPmFzfNQPU7JyY9rOa1IV1HPqysOIYH3?=
 =?us-ascii?Q?i59kvHbe3ebbYmwXbf6ylm6bdZlZzbxYA87ybRSVNUqBI1I+RdQ/bKxZACzo?=
 =?us-ascii?Q?155lnAXt/qJi29wn/oy/As0pv4zZc63kbf4YGltovxP2Nggh16hjBjy1sNqB?=
 =?us-ascii?Q?vxM/YSqk3cCZEoeReqcymtBbBhaYP/xOVa1dR3ow8CQjF4EMGhEo1gO8z6IB?=
 =?us-ascii?Q?K30X4phPO5yJ9TUq7xoLBZXimlRo5SXJsbiTUN7W3nERd3eLZrpko1RvZaqB?=
 =?us-ascii?Q?I0Fd+ZgDAi1BDuMBVO2d9npZdkE24Rb9NTDIrNtFeTja25WLxMzYQSj8t/wB?=
 =?us-ascii?Q?p4PgmYZ/SNki4DefzdsnyQQZ4OHofB65HywwgG1Gp1kTrvmdJQcqxa1S/nPF?=
 =?us-ascii?Q?TqiAvSZT40skuzT/YbgsE2fNcYznTpuVQyeBqZluxQZrMpPtaQXg5Z6TEBPu?=
 =?us-ascii?Q?ZqidxhrGE0HvTQkNKfCTGZJ9EeHkXYnnBzwof/JFGh+G5mw3Yu4o8i/H2Jr2?=
 =?us-ascii?Q?Z+RwLu/SIWvno35lB2PMbT03O2qzKI7KCz5mOdq4GY7wo4L3bRE19DO4RBr/?=
 =?us-ascii?Q?k602V2xQgTfOoXCdeBCTFLo3/pNh8FZ96Wk8sMEUac6MXSJ6CVBtyODy+zEJ?=
 =?us-ascii?Q?PHeGhWcuAJiLaN4xIFMZ3LB9nu1jTpiz7XSnJ22K+I/zNqdbUPcSNj8htDK6?=
 =?us-ascii?Q?5dShGyWLDPYfzRAs6l7pHoYypjEOA89gUR8AeHOJmTAoeIZl/GQub5AfVqQ8?=
 =?us-ascii?Q?li58GqIJ5mk7ysQKaI1kVi3lvOwbf5IRDzkiJikZ23ebgdeU+2or7yvTTTRl?=
 =?us-ascii?Q?qxYLFYMEqJh19KUaYFW103WtR6PJt+towEmm22r+0atM+uf3C5X/iIh8Svzz?=
 =?us-ascii?Q?XXJTfoAB94UjmmXPUSGWHou0+VIddIe4lsehGpiiGytOHo/Rbdo4NbWfgWsD?=
 =?us-ascii?Q?OSN2S5RWs0RFu9n8/zbfCMoX6bCF6PL6CPkZofFyE4fOqsvXvZEgtoPfPGKk?=
 =?us-ascii?Q?BqcWgomMEc0EKBqD+e8tdQ+8En/x8v7Izrw37FO+WsppW35SF9S5mDc1BwKe?=
 =?us-ascii?Q?4KVk2MHoCyySh/8ZRvUiB0zpC5JhWsjMNFKk//kkhqFDk0KtY7KFb8IBuSlz?=
 =?us-ascii?Q?sS79nK/go8gILxfrybqzMP3iFMGLndWBeO7DZf2YD+PkQTNZ4IzQFqDQEa09?=
 =?us-ascii?Q?CnTiIQQlDMnvDjYiOaJ/V2BKmyeYNJtjuxTG6QM5UQR8xWpHdk7I37ESPXTe?=
 =?us-ascii?Q?bWjqbtYWX2mRJy33Ab/l/M+TJjVfVPdKax8xJGp9wCgnNWdzQBsDu2QJhKeI?=
 =?us-ascii?Q?9tfqIyh5uMcaKnRmhUyd8TyDABRxFrBYwETTpmyF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7529.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e124737b-d202-419a-2174-08db77af39cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2023 08:11:07.5639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xz37wvLrlBrpBIL5oAueKCkEL0koySDQpWJ9d0AWkyH+Rd4rZ1vudeRGE1I2WQ8CMhpQCHUfjWfwfP0se7WUhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8496
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 28 Jun 2023 15:12:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687939930; x=1719475930;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FaDz9KDYQuNKzA3onRUwp/ttgZNjhJcHSq+9jon8KBg=;
 b=IpAFbHt5LrgU7uUBC29+T8Eh9itJtJdQezY4TpmRw6AFV2fD2vnDT9lO
 djOrTaBhzSFmAkHRVAFrEwPJPfTVQL2dRq/sQa4qcDvSf6TLrqJHlNL6H
 +BJqrCbXSP1nzggtwU6ChZ9PIciYo9qI7tZwK+AuFegAYb1HtYCfXdW/N
 xtJHmWMqOxfdiBLU1T5tAiZ02T6QC97TAM/gPnH4ghOkAbn8kB4jGyrnY
 hgDQcmglLqS/j18nBPuKB1LNz7YScau/5jwLzuKfI8epAeRmMPTuCDCFk
 mKwweChO5/fnYcUHLup3fljt3Hvx8w8ASLZz0UqmKCkDGGiB+hvbT5dfu
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IpAFbHt5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
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
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> On Wed, Jun 21, 2023 at 09:11:07AM +0000, Lingyu Liu wrote:
> > diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c
> b/drivers/net/ethernet/intel/ice/ice_migration.c
> > index 2579bc0bd193..c2a83a97af05 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_migration.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_migration.c
> 
> > +static int
> > +ice_migration_restore_tx_head(struct ice_vf *vf,
> > +			      struct ice_migration_dev_state *devstate,
> > +			      struct vfio_device *vdev)
> > +{
> > +	struct ice_tx_desc *tx_desc_dummy, *tx_desc;
> > +	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
> > +	struct ice_pf *pf = vf->pf;
> > +	u16 max_ring_len = 0;
> > +	struct device *dev;
> > +	int ret = 0;
> > +	int i = 0;
> > +
> > +	dev = ice_pf_to_dev(vf->pf);
> > +
> > +	if (!vsi) {
> > +		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
> > +		return -EINVAL;
> > +	}
> > +
> > +	ice_for_each_txq(vsi, i) {
> > +		if (!test_bit(i, vf->txq_ena))
> > +			continue;
> > +
> > +		max_ring_len = max(vsi->tx_rings[i]->count, max_ring_len);
> > +	}
> > +
> > +	if (max_ring_len == 0)
> > +		return 0;
> > +
> > +	tx_desc = (struct ice_tx_desc *)kcalloc
> > +		  (max_ring_len, sizeof(struct ice_tx_desc), GFP_KERNEL);
> > +	tx_desc_dummy = (struct ice_tx_desc *)kcalloc
> > +			(max_ring_len, sizeof(struct ice_tx_desc), GFP_KERNEL);
> > +	if (!tx_desc || !tx_desc_dummy) {
> > +		dev_err(dev, "VF %d failed to allocate memory for tx descriptors to
> restore tx head\n",
> > +			vf->vf_id);
> > +		ret = -ENOMEM;
> > +		goto err;
> > +	}
> > +
> > +	for (i = 0; i < max_ring_len; i++) {
> > +		u32 td_cmd;
> > +
> > +		td_cmd = ICE_TXD_LAST_DESC_CMD | ICE_TX_DESC_CMD_DUMMY;
> > +		tx_desc_dummy[i].cmd_type_offset_bsz =
> > +					ice_build_ctob(td_cmd, 0, SZ_256, 0);
> > +	}
> > +
> > +	/* For each tx queue, we restore the tx head following below steps:
> > +	 * 1. backup original tx ring descriptor memory
> > +	 * 2. overwrite the tx ring descriptor with dummy packets
> > +	 * 3. kick doorbell register to trigger descriptor writeback,
> > +	 *    then tx head will move from 0 to tail - 1 and tx head is restored
> > +	 *    to the place we expect.
> > +	 * 4. restore the tx ring with original tx ring descriptor memory in
> > +	 *    order not to corrupt the ring context.
> > +	 */
> > +	ice_for_each_txq(vsi, i) {
> > +		struct ice_tx_ring *tx_ring = vsi->tx_rings[i];
> > +		u16 *tx_heads = devstate->tx_head;
> > +		u32 tx_head;
> > +		int j;
> > +
> > +		if (!test_bit(i, vf->txq_ena) || tx_heads[i] == 0)
> > +			continue;
> > +
> > +		if (tx_heads[i] >= tx_ring->count) {
> > +			dev_err(dev, "saved tx ring head exceeds tx ring count\n");
> > +			ret = -EINVAL;
> > +			goto err;
> > +		}
> > +		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc,
> > +				  tx_ring->count * sizeof(tx_desc[0]), false);
> > +		if (ret) {
> > +			dev_err(dev, "kvm read guest tx ring error: %d\n",
> > +				ret);
> > +			goto err;
> 
> You can't call VFIO functions from a netdev driver. All this code
> needs to be moved into the varient driver.
> 
> This design seems pretty wild to me, it doesn't seem too robust
> against a hostile VM - eg these DMAs can all fail under guest control,
> and then what?
> 
> We also don't have any guarentees defined for the VFIO protocol about
> what state the vIOMMU will be in prior to reaching RUNNING.

For QEMU, vIOMMU is supposed to be restored prior to devices per
the below patch. But indeed, there is no guarantee that all VMMs
will do the same as QEMU does.

https://lore.kernel.org/qemu-devel/1483675573-12636-3-git-send-email-peterx@redhat.com/

Regards,
Yi Liu

> IDK, all of this looks like it is trying really hard to hackily force
> HW that was never ment to support live migration to somehow do
> something that looks like it.
> 
> You really need to present an explanation in the VFIO driver comments
> about how this whole scheme actually works and is secure and
> functional against a hostile guest.
> 
> Jason

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
