Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAC0502E78
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 19:53:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76DE560E3D;
	Fri, 15 Apr 2022 17:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D4YZaBezUt9H; Fri, 15 Apr 2022 17:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6262E60D87;
	Fri, 15 Apr 2022 17:53:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF311BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 17:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65D9283E13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 17:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqQGM--COYOi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 17:53:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95B2383388
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 17:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650045228; x=1681581228;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=64mk/k3hd/wbjG4FCB548sr+OgH89khJR5qM2RiqACI=;
 b=huEo2q8EqIGMDSy2YlNoxPfyB/60LVvdlLTist+lWA/0rDp1K6vg2vqF
 6l13THOXjoF5MTVmdWKeoTRDCH03IU9h1D0+fh7pP0PGZSjMBDIGtgtWa
 2bunL0ZPq/MqNha5a0gJ8rx6wvCWUqfwiSghmm4ez+aRrtTr9JER2UWam
 THdP3Plni/JrM8prUf7bfmIQOLm0pUa5RPKnqrJXFrzr/CwmhG5joA883
 tPo1NZHKpibDmhJr9D3GkYfY6iYU1SxvDETOPtePxyV2OBiSGuj8Dfoax
 nhVT+2NAtBrStpvprLmVOVW2+pNj7DcBt/qiUOZaMfOMZvOi6qKbxYJOB w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="262052581"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="262052581"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 10:53:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="856292187"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Apr 2022 10:53:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Apr 2022 10:53:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Apr 2022 10:53:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Apr 2022 10:53:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IPQlapWs5rNMVXhT6f8S5sV2ybkCpGzUKivwdTnq2Nb80/bj3M/qVWFcjiAZ+u70tpR+71U8F162MDk2DnNXjYwmkVV/PszHAnk3u6jRVc9Qo1LV/RJLUoR07j+Pi6KgBEuKYoiZd9AhfjVdASVrsas5KNWktCYxqUgNuqW9Oz4hZ+AnUELrrqt4LOtVY6ETFiR35dyZYykWjHIRx/v6udOhlfJQTotjGFIlHNaSlZ1TGWQJjWQq8k/TZZNTYgYkBSI3Uo2rE0Moz8+V6TKnXA0lE3Psu5Rjo2fiK63CkoBi2orlWBHIo4f+7M+jHA5hOweHo1gNWgLELNg4Ezn+3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=56IW/EU5kk5Pv6von7NC/xv+wGDumKRZ9r3nh9lDr1Y=;
 b=imRwujWGmjx14xiAwYIyUrg5yyKYfuAgdqAfCAGbuOEToDxgKOR2ZirZCUZML93ViKUfj03wCS+wihoEyeH/mfjlJPp4SQ7qVhs++VH2iT1B/9z/mDePs69pumUDTaHKJ3sdS70UE6/Kh4girct4VSC/bth2NF3KiV6HmLI7QKyiqgQm1g6x5EkKmhmDtfyAzSu7SIgqfOU2pxJ1jqu1hjaZJLJnOEyyOZELVhlfIOJzfS2O8MlM7QvTq5wbx2+WbihPE8jzGmQqXFYovW35+4dNuYq7EdlvWrbJEJVWwW9DQNDp55Ar4D7fkJZDZrT0/3D10Frfd3JDQaUl1VtOWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by DM6PR11MB3100.namprd11.prod.outlook.com (2603:10b6:5:72::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.29; Fri, 15 Apr
 2022 17:53:44 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::19d8:9867:6d4a:3ca0]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::19d8:9867:6d4a:3ca0%6]) with mapi id 15.20.5164.018; Fri, 15 Apr 2022
 17:53:44 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: ivecera <ivecera@redhat.com>, mschmidt <mschmidt@redhat.com>
Thread-Topic: [PATCH net] ice: Fix race during aux device (un)plugging
Thread-Index: AQHYUB40uNYOIOS5/U2OD0pQhU2OnKzw0wiAgABNhwCAACCwkA==
Date: Fri, 15 Apr 2022 17:53:44 +0000
Message-ID: <MW5PR11MB5811D6D5245206C5A37B803DDDEE9@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20220414163907.1456925-1-ivecera@redhat.com>
 <CADEbmW3eUAnvn4gvNxqjCMmO333-=OdObGhDXkrTbDwn0YkJDw@mail.gmail.com>
 <20220415174932.6c85d5ab@ceranb>
In-Reply-To: <20220415174932.6c85d5ab@ceranb>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b455c40-c21e-4cf6-3fe1-08da1f08e256
x-ms-traffictypediagnostic: DM6PR11MB3100:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB31000E3EE80BE315C9C6A11CDDEE9@DM6PR11MB3100.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +wDlSkQOXKDNA4aZHp+psQGqNZeAJvMd0M3GJMkKy5Ftg9jbOf5xurYToSuGi0J9fXeMJ2w7pjW3es9K7zwYGTDkyBEJR6D6HNan+VWZduJ73uOM9Pn00qQSXGJxrpsGRMUhus0FF2s2Uyk23bpoH9ft9ytG0ym73uhf7hJ7LMdT6EpXNL3enkh7T6B924AugB5IPP40Bdurn/IEyCHxHQOem3DbNLKzQlMqZpJasbiob02qsAdQa8XUTYlxUNhM9fdvnc68cEZR0zmKAVINNam4TJi3L0Uiq0sMWNsLYXTKITTsaLzt1DWmb6cwy0wViD5N8XqSJ5F1yRPUvdZzjDnzvCDLLirUpNUIFLTRgZw0fhnDzdvvFdEYkxauC/CngiQyxcstOhd1E5d2D3X5DlNsyLirJREJT2J8MOlFRRsViulOAtdxk3p81QHaoGRIcTiiEIau8Xy7KGZ2cOw/ItDfsR2cucXvY6DjCXalFYUkhH9NfSiAnyTDxn9Wu3XDxlmt+o7a2h4gDNKxdsW0WixKyq6fELttdFj+xrs7b6zvCRoKG0PUz/9f7IGFTgqPuSrN5hgOmbf4cfV5MjWE+BhD3ogonbachULtBTdXS82b8ZxVCN//SCwmtTZx9zTKtF09aMxxsUQkJHMucRR8hgbd2uj38ZSIWDevUPUHbCbaimtjWfwZw/ImChZfU4IClV/hUwILuX4mJHNNJU5rfQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(54906003)(6506007)(7696005)(508600001)(86362001)(38070700005)(122000001)(5660300002)(53546011)(9686003)(110136005)(38100700002)(26005)(82960400001)(2906002)(76116006)(71200400001)(66446008)(4326008)(8676002)(66946007)(66556008)(66476007)(64756008)(8936002)(52536014)(55016003)(316002)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4KfeuYQjQ3VaKd1Ozv3RBRJ9xS1JwD7BltgE6nNIdbytlzG1HHgrOST7ZZwC?=
 =?us-ascii?Q?Ov5zM8lVq0XM6X6NPMdS0cWMDUqVqXS9cXpKGY58Fj5VKr5D2dZioAtrKZyJ?=
 =?us-ascii?Q?gatTvEoHH5oc+dkCT32wZjb5lRr4OjYy/M3RPHfV5x9MsC9UI7gEELHJx3S6?=
 =?us-ascii?Q?EApNYJQpAcFbjyhX25xZBXoJegxq4uy/onEzTI5yNPR9LrJE3t+/UjbPtbDH?=
 =?us-ascii?Q?xBMmmf5A/iHO5bIeOF0qXJw6bfPGmfUkZWJcm2K+PWu2OlExb0J840w4BFuK?=
 =?us-ascii?Q?3yHEoKTThYL/LUvGksTgnjD85C5k6ez5tpU6Bl3SlAvzSc8jNXTmv0HdEDrh?=
 =?us-ascii?Q?fd1BLcbllooRJ3wot1SyW0COilbmyspE9P19LL4+c8faYmMERfNLLaxSq9FL?=
 =?us-ascii?Q?CBdusb8LgMAeaasVOWBheGv20midnxU3/1Z3su3DeHkO5eR36hHEmADBfta/?=
 =?us-ascii?Q?BgZw+6N6sipGg0Hr92xAy2m+YyUHgPcl6zNFbmmk9iAmudPkR3OWGLEE48N8?=
 =?us-ascii?Q?u3/NH0TOR8Ph4l0bttSels4WHI3jsB6Km5auV0Jf0NN5bSVeHKe5RFxgJD8e?=
 =?us-ascii?Q?aH2oxnNyZvM5F2QaBZ0tsGfADQkVQ2jBVtm2VRzABOAhblCe0OEXLg0Gny7y?=
 =?us-ascii?Q?zHBSP24dayaqOkEofBsn8iHBNFpMzqAUx2agQnSEqAoM5tqwbW6DOWEG1lbV?=
 =?us-ascii?Q?KUpCjeTXOMQ9bMjHE/lvspVfgCyohvIbTYWr+4o/pJDgD/aNDObhi1Vz5lgr?=
 =?us-ascii?Q?OrCVIkCFsjyuDwrtsbavPml7kTcTr3UBJjf81IJofmxkb/yvD6XMveFHDzb2?=
 =?us-ascii?Q?f4a2hrxJFv5ach0zrIi5Doe2XbxpQOfng3RPu9o/kxfhe9vrbz589zM36oki?=
 =?us-ascii?Q?5piEk8RF1vNMVSvYv3H+k/j5HATJti0BPZAuzSWb86SK5Q2/SHwWggxkmvCh?=
 =?us-ascii?Q?cU5HVKb8p9fiSZ9QdmJvp+OZ0zYpLoUe9hz+PsjmpnnEouEKBmaQt/k+0afe?=
 =?us-ascii?Q?OzowT3wMd4pXWMB/6+EOBmDW7jptanjhLGFCikR3KbEX6B8rwsVi0UJGsjsS?=
 =?us-ascii?Q?PstdK1jUPwdAcEDoGVTf2HDAUGYMWCEgmgpVdzvMrhWeXR0L7zBD4+/A6W1O?=
 =?us-ascii?Q?AX5E7Uljbj0y3iaScDV2QK7hkTIRnl+HhceoF1myZqAIPMTzlSVbTW29z7PW?=
 =?us-ascii?Q?pvgPeK97HZlFKY3+t1w0qbhOsFFHWlsNYZb4eNQY6ttnNhp5PI7zccdmdrJi?=
 =?us-ascii?Q?RaTke2aD46SJfUM6U3NrK3QTV1+6r7mkNNPxZu9d4/vVTxMYaL6kEg7G6+ba?=
 =?us-ascii?Q?ihDuhHXIRtizvLWXzrWB2aGFlsV48bHFDsNBQ2ive6GHNgdaCnVnNBuNrcOP?=
 =?us-ascii?Q?ZX7UL6sIhhIweMcnDziatIYTouw97dbxl74P0NOaRczp/+Z40UxPniOfT6Sz?=
 =?us-ascii?Q?YxuGw3y7zq7aw+N+anRqZq4189D5kSJ7pSHtvWZzL0oMZZ8AsYDcRoyBZMA9?=
 =?us-ascii?Q?EE3RMQrHH5Wf+Lb8YMYWk6/dZ5ikeAzzmQC8nSOT9XyeDNRzNBQjTDn7PVJi?=
 =?us-ascii?Q?D4K7jjhjaBj+iFXssK0QOWu6N7K46Sgp39Q04NVplSKVFiRHFoeskuzacxGE?=
 =?us-ascii?Q?dfI3Wnb7J8SLiEdxjPG+TzRw3BDrzNkpaYQW0Rcu78YgVpWkqcaLq0x/Ln2r?=
 =?us-ascii?Q?YTkU+UYT1rac4yGNEkUFCkJuLJFG7XlNKLIgID603sHKsr4a5vs4pYsmaB+4?=
 =?us-ascii?Q?L1aDusPeTUsexXJBGTH0MEy3qeMm1JQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b455c40-c21e-4cf6-3fe1-08da1f08e256
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2022 17:53:44.3380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A5y/2Op0sqmQvN+nfM0eLsIOPQR8MUGzI9GtiKv2tCMbKn3UrR9YY+jBXXpnJGfeOwynAxhBfK6tSn0eM+mMTxt3/YIEErZIlw7bPVYCyvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3100
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix race during aux device
 (un)plugging
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Friday, April 15, 2022 8:50 AM
> To: mschmidt <mschmidt@redhat.com>
> Cc: netdev@vger.kernel.org; poros <poros@redhat.com>; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Saleem, Shiraz <shiraz.saleem@intel.com>; Ertman, David M
> <david.m.ertman@intel.com>; moderated list:INTEL ETHERNET DRIVERS
> <intel-wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>
> Subject: Re: [PATCH net] ice: Fix race during aux device (un)plugging
> 
> On Fri, 15 Apr 2022 13:12:03 +0200
> Michal Schmidt <mschmidt@redhat.com> wrote:
> 
> > On Thu, Apr 14, 2022 at 6:39 PM Ivan Vecera <ivecera@redhat.com> wrote:
> >
> > > Function ice_plug_aux_dev() assigns pf->adev field too early prior
> > > aux device initialization and on other side ice_unplug_aux_dev()
> > > starts aux device deinit and at the end assigns NULL to pf->adev.
> > > This is wrong and can causes a crash when ice_send_event_to_aux()
> > > call occurs during these operations because that function depends
> > > on non-NULL value of pf->adev and does not assume that aux device
> > > is half-initialized or half-destroyed.
> > >
> > > Modify affected functions so pf->adev field is set after aux device
> > > init and prior aux device destroy.
> > >
> > [...]
> >
> > > @@ -320,12 +319,14 @@ int ice_plug_aux_dev(struct ice_pf *pf)
> > >   */
> > >  void ice_unplug_aux_dev(struct ice_pf *pf)
> > >  {
> > > -       if (!pf->adev)
> > > +       struct auxiliary_device *adev = pf->adev;
> > > +
> > > +       if (!adev)
> > >                 return;
> > >
> > > -       auxiliary_device_delete(pf->adev);
> > > -       auxiliary_device_uninit(pf->adev);
> > >         pf->adev = NULL;
> > > +       auxiliary_device_delete(adev);
> > > +       auxiliary_device_uninit(adev);
> > >  }
> > >
> >
> > Hi Ivan,
> > What prevents ice_unplug_aux_dev() from running immediately after
> > ice_send_event_to_aux() gets past its "if (!pf->adev)" test ?
> > Michal
> 
> ice_send_event_to_aux() takes aux device lock. ice_unplug_aux_dev()
> calls auxiliary_device_delete() that calls device_del(). device_del()
> takes device_lock() prior kill_device(). So if ice_send_event_to_aux()
> is in progress then device_del() waits for its completion.
> 
> Thanks,
> Ivan

Thanks for the patch Ivan!

Reviewed-by: Dave Ertman <david.m.ertman@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
