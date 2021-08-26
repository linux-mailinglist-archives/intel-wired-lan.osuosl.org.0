Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37B83F8263
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 08:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01D8240517;
	Thu, 26 Aug 2021 06:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tl5h-h9BR-Zx; Thu, 26 Aug 2021 06:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98131406CD;
	Thu, 26 Aug 2021 06:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B82D1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:23:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8368B819BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h6FCK8YnBwAm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 06:23:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 765B081947
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 06:23:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="197914793"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="197914793"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 23:23:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="537208780"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 25 Aug 2021 23:23:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 25 Aug 2021 23:23:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 25 Aug 2021 23:23:48 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 25 Aug 2021 23:23:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FlSEJFqNpQVf0a3Y0NZjyov+fcuojkYJWDYTFdj+f6SK1PUW7i37X0X0//s7rKijgnMkrUtHPXheduaUIQ/iu6A4wR0MMnoNnJUfr23MPsuAEhNFb5BKPHhUs8hMVIEHphMzLLV0AS9nWqZygAvMILTEL9FmcNBDe36YTuHJjgPovlLPw+aziGYvWwll5AaUDpeNVwE4pLSmOB/VbrCNPBvvH7yZouMsxk3hdkAPg15iOLBh0B8Gdqv2jp+i+FmNvT/5eoaIHjGuqcBXfLA/CzaxWi501iito7Pfsw6/R6HXqntn05PYFq607E57Dh6O5Mky4okZqKUzlg/Uf6wZxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TRyq1OqxCuJGHF4IXx4VSKwup8d7qCB1XYl8pMfgEY=;
 b=KL4oJejRCof9SMPwJQ3RQiT63PmlrivKQ7nT07yxa51BYBqvOvn+661aYI+ii3/UlO16mjfljggZp7Vv8Nw2Dh2kUcf2xV9gfVXe1RL9CIA8klQ1PTgFKVlXHEfWAZEuDy6iTfLyaAaCeAPLG8eIokGa/Eui8GX514tXjc1HPpq1cMTur2KcLFPIoXGkC9E42BZvbUVYvplqIs5uZWTlJuKZ1e+j7QZ+ZqcShnmYL6tc2x59kj4ofIX/J5FAecDL0i8sBhAzBPEavqht3cAkHN6h7i41IV5UfWm1FZ4DxHF4+s6r9A9SQ73Kycz/dk1MrJq40M2QzmqT9Jr6+wb4YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8TRyq1OqxCuJGHF4IXx4VSKwup8d7qCB1XYl8pMfgEY=;
 b=eNy/vQCB473ixPn3eYPCDNq99VDsRvrRTZChgke7RfaVNHelGsidIfGnxKIdsrpvqYFBWt9L14wa8Z4yjKvxqdSphhusVyvv/Vus3FlPIwaF3MttPFAdslfDJblTx3RZ409bMABO/aMvuoo6Xf3ecDQc1T4NujQgFlQsjxfAOrs=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by MWHPR11MB1358.namprd11.prod.outlook.com (2603:10b6:300:23::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Thu, 26 Aug
 2021 06:23:41 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::50f7:685a:e222:e003%3]) with mapi id 15.20.4436.024; Thu, 26 Aug 2021
 06:23:41 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next 1/4] ice: Refactor
 ice_aqc_link_topo_addr
Thread-Index: AQHXkqP9Qnk10mGy0EycM5di+tP/26uD7kww
Date: Thu, 26 Aug 2021 06:23:41 +0000
Message-ID: <CO1PR11MB50285501AE9176B77D46E379A0C79@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210816102729.1266522-1-maciej.machnikowski@intel.com>
 <20210816102729.1266522-2-maciej.machnikowski@intel.com>
In-Reply-To: <20210816102729.1266522-2-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 268a5290-e67e-4c13-9c4b-08d9685a0c5d
x-ms-traffictypediagnostic: MWHPR11MB1358:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13586462BD42CFD1678EB021A0C79@MWHPR11MB1358.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QD0zqu6rINR/D7AjuLbuns3++igVawGCjswRjuS7vqKDEmuKhN4F6SfrMo5B1wYDA0KKvCpJeRF3pnoJ7/3TDMhmwl17k0AFGMjuuWLKAJCpmYM30Pegbor/oOPQVyZXSwPkjAQTgiFkd1BzulvaQGAk+M6rSQjnC6W1Zqoz7DNRO59QoaYlmRzzdS8/8PBM6AbtQo9FkcKNr0XZitW5bnINz2jIm0U+OMOmOsE8/MLPalfvyj6gXStIKaps5847T3Y6zdBt/OiHNV0vm3BEXH/n1+Kt10f95czUFonnbxQBYzxSOAu5UQdI3Rv4orQ35pE5gypTNpZtJYWxb+XlRk4VQcvvKqDyIGu07rFJ6Lm/iWMz4WpxQ2MRwLjunKdmw1HBbZgF0LCidFhKXoEUppxHNgHUJhccBHdNmPF+vkYxbwxVADRtRpLt2l2Sy3pc3Cc70UsXI/m2h+m2LcbOPsXKHXn/9jhBFF12UgO+0vy5IG49CcE2n8N90GPabTlTRYZ+LSHqfsUJffMlWzN+tNfli9EBL5CxgkLPC38iZpb9ni5WSzWCD/5MqvvlYHIkMoclojHQ+ijzgVcWhbgjlBcS+E7xGyyF/rp/xo0gFIMk6ux0ON3GuZ9Y2KlmtniTSGznCYmFPpZRElM8Za6qcPlxVaKTu+/IdRo2Gw3YVzo6x8ww3lHszY5HqmuIs4e+yYPL5nWOVWLYIolozzqDRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(107886003)(4744005)(54906003)(9686003)(76116006)(5660300002)(66946007)(66556008)(52536014)(26005)(71200400001)(55016002)(8936002)(8676002)(110136005)(6506007)(316002)(83380400001)(38070700005)(122000001)(2906002)(38100700002)(86362001)(508600001)(66476007)(7696005)(64756008)(66446008)(186003)(33656002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V+nodHW09+8j6DExie60HotDfV7cdrKxrcgfVsGSZAKNn65SQ2a8gm+ESbEz?=
 =?us-ascii?Q?R5wbEdFzmlAMPXTyzlAeTOYUc0aaep23OjEm8yn4Xe3W36MiFh2brRGa6nXV?=
 =?us-ascii?Q?7qZ7iwu5Bt7UpU7MkJppjZQkrj4MGVYqZY6EI/yX7UuDYXaoHF2OSg+6sXMb?=
 =?us-ascii?Q?RE7zonrFZnKw5SJecX3snOLznZTKH1rDsjHBE/QfQG16kw8SIZGwZk6wCtKJ?=
 =?us-ascii?Q?PlWVNU7fwXpboVUvUbypr9u/F3U4DVDG2qWUJy9PdjXk9Rh8cIkqdMsKU7QB?=
 =?us-ascii?Q?um1pgDpG70nHQD0tkfRzgQhrWKK6QxxT/WJhBxqZX27if5hwiBJ3iJBdMA2J?=
 =?us-ascii?Q?OvuL9fbGPKGwJClhwjkjQufM616vzGCwNF/EshUxQ5PGFsexxFepzI6bxIrs?=
 =?us-ascii?Q?KwwAanFWPqJlp03HRmmNo1u3ddF2PVMOTFUCoVc9z78wnV73Q+VJ3Fllse4Q?=
 =?us-ascii?Q?s3hl6v+jxrPi2CSgKT/XEb8UU/NzH+KYJYgDJRbZKL2NNaaYHFee5YeM+USF?=
 =?us-ascii?Q?r/5lFPNRNTh9swOj9HGkT7KJCUKGwMHkzfv+6i4nZRfFjgU+To0P0y6b4Ccc?=
 =?us-ascii?Q?W+nX7NdOPayuFE+rtRDPaCIBeyjtIRi1uqKXz6wG+irxhaF36dxkHvjNhnU/?=
 =?us-ascii?Q?EtOQthRrSZzvyPlb7eUHR4RYT+u2523JMY8Z7AQSs6WGx1OvoSl5hJy4Yv37?=
 =?us-ascii?Q?b4IA9YLXv3bus8jdK6UteLzFg6fKLtDoBen8Zmltr/NBHAihV79M173unL0Z?=
 =?us-ascii?Q?rHrvSGrDWR/ocXf9pNa6stLzLWOpGbGQfnalUef3uQzPrNLnJifN/7tLR87R?=
 =?us-ascii?Q?eFbXrJn0yzRXs+0yvSLKnr2cQrvjeyIn3+ElPSlF7l+kzP1xLfgIa6KfSLQ7?=
 =?us-ascii?Q?NGNS0FE4vMryW1UYirJ7A6lLVaKBS/j5zXQXY6OKr/sps+v5c9CNltrfSlfS?=
 =?us-ascii?Q?EOr4/40V8geV5/Z2RxZgrG2DyEs07qVNUy9x/h5Owm2RRwjEMVCymcLlVej+?=
 =?us-ascii?Q?G4JU3SfTR4Gwb+z1p+4KmOAl9XPkwja0dwEmxUrVPgxGpfhkwBzqqK0MLCKG?=
 =?us-ascii?Q?v5UF+nQUsVDgGfI1czlgbFU0dZMpuq/FMplV87zi1oyj4yKzvyzI+ZT6oCom?=
 =?us-ascii?Q?5XgSKmMovVcYfu9vL5kQ15KeenawQKEIB5oBup6ChmXOXKiUn1yIf19LbW//?=
 =?us-ascii?Q?tekF4VX11SkuOA9dtn2YjFOi+j3amnYb+TmSmtCxvXR5CBxjeejElk30VeW+?=
 =?us-ascii?Q?iI2CgQVmRbudpUAoLJf0QOSiVliPsr05TQq/7nvUrRbKoXZ5o9fge+omRrC6?=
 =?us-ascii?Q?qs8TwwZIw5BnSyYoTVgQawZC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 268a5290-e67e-4c13-9c4b-08d9685a0c5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2021 06:23:41.2208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sww/Ke4/MCoe/9RP1E+wOxsbyWRVeds8v4N7BTVBd5VrYMxqFf/yHkADJYm0kVyfs1Ma4luY57LAxNe4iYLnVZljIFpKIsJqtmogZsC3SsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1358
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 1/4] ice: Refactor
 ice_aqc_link_topo_addr
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Machnikowski
> Sent: Monday, August 16, 2021 3:27 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-next 1/4] ice: Refactor ice_aqc_link_topo_addr
>
> Separate link topo parameters and move to the ice_aqc_link_topo_params in the ice_aqc_link_topo_addr.
>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 6 +++++-
>  drivers/net/ethernet/intel/ice/ice_common.c     | 8 +++++---
>  2 files changed, 10 insertions(+), 4 deletions(-)
>
Tested-by: Mekala, Sunitha D <sunithax.d.mekala@intel.com > (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
