Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE9843C93D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 14:08:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 466DC60669;
	Wed, 27 Oct 2021 12:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGrCB1tR5iYX; Wed, 27 Oct 2021 12:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D3E8605EB;
	Wed, 27 Oct 2021 12:08:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAD061BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 12:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5D6580C04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 12:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XUeD82BheIp8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 12:08:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0337A80BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 12:08:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="290979998"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="290979998"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 05:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="724981479"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2021 05:08:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 05:08:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 05:08:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 05:08:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 05:08:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c2TiXy966q6estJIeTHb36mW7tLNcJaw/kkM3bk1sVQCLZsIBEsaSiJw1XyokwZa0pI6G1RY6yiMY9s9iTXyw+K3IO4Gy6jMqI/AgzAr17dMwhgtJG+r1DfuJ+mKNvSfRHDGelP+f5lYkON7cK38958/uiP9qU+f7h9uZslpy61X6Y6Fj+yNq6moyQlatNQteQ+yl6xZ8zEbdM+xTt9vMs++PtfGOk2CRXUpS7ymCqt81B1uZLbPIaC6FPzuNaeDew6ppyzbYyXr/0awMiVyvMtq10m6r01dx4DizrRZ+8hjvCoIvl+DKzXZXopq5ECNQUaH2fuLOu5o0saJF0edIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKGtW28BTVnc6NkiUX8Tu+LTHz3PHwsivEeDLykfxwk=;
 b=C24fBH7pm3ur3RCkTJW3FtFW1/nQnIft1tEFFxHkWkd5PTuJprEp89b6gYGJhETuML2Tauap/erCPuWE8KKOb/FVMVj5Jqa/n7nDB7SiaTRsr+4bXjaO/PrTqAwY64Ict/YZBqREW59UvwZV3YLC5uJirtIlT9Pdx4O+6+8YunPyqQpWOuF1kWxCqgnVuXhSBIMqUENpnUbEy1/6sEyLZ/WGGsIyoiMOD9ZWDpisrX1ZeNTxS8twX7eqhdf3tRuobyajyYu1kq5CqgrQ+rjeUaeWZIf3uSai195mOkpLPnsjKjrICishDlygsYcoXb5ED/f+2ymSBYOw3DwavfwDuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKGtW28BTVnc6NkiUX8Tu+LTHz3PHwsivEeDLykfxwk=;
 b=XcA3XnP3apcBFxGaeUSbA5VohSaALlcyf8a9SUWc/qSLxDfSFKraWDvFIJlPGI8MR53sc2BhCtnUCJ5SUSp6VDv4rlF2RN7Exjb3ERc4CRJ29CjeU4nvv0e8mYS0vWiQaWZrwU79SNHyvQMLkOxfhJ9rvXwfTLWXxUOgMrg7uyE=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3830.namprd11.prod.outlook.com (2603:10b6:a03:fc::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Wed, 27 Oct
 2021 12:08:28 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 12:08:28 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/7] ice: Remove string
 printing for ice_status
Thread-Index: AQHXu+S5XFXeBR1iuEOR3JRKxOp4v6vm3qpg
Date: Wed, 27 Oct 2021 12:08:27 +0000
Message-ID: <BYAPR11MB3367561E57B4EE820BE6B7ECFC859@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211007220127.70514-1-anthony.l.nguyen@intel.com>
 <20211007220127.70514-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20211007220127.70514-3-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c429ee9a-9cb6-4359-667c-08d999427c44
x-ms-traffictypediagnostic: BYAPR11MB3830:
x-microsoft-antispam-prvs: <BYAPR11MB3830DF597F55E00D29908A3BFC859@BYAPR11MB3830.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DX1cbvIv+lFXCpaYZi1U3Nec0sHXoMS6zrf1lDuV8fgA/iSbqXKtqCpIFe7Nypy73QfJdmMbcLl4/fXoWSpDnlhnIFB8Nyx3oNFgvsF4J5fBcsASBgST0fjmG5ErtDJGqg4SPNaiLi8hqijyxIUwpmQ0yiXrVqN9jfbCQx8VRL65d3fAVWeFz1FPCcYXGKNdXS36izHZy0TnNHW5C6lBOs4ydWXB1qzhWrp7PJLjWdeLhp0FPrh1WK2wdCCew96BgCgH/dQIoPja6LpMlx9LCQ3Rh8WJGIUCufna8oO5IA5WKQ7OxGET0mI0R67KcvVy2HuFNjHjDnHCXlue2PWPs7XitDI+o0MRBVa8KpqGHMiPoSRGAsyXC9DJW82UDZH/zeaNSlKs6caCEmXMX8/2kXA8LDfou1It6OKUqyY8pbSCtMCU/vJYHYeFUDAlIfLlBCHgjcPGZSxU+xe3gMnIbVK9cAjuZ0+bFAbN+kFa4X981uyOB3KHJmEuHekKaU8zJMIOch2nlX4bs8PTqE02GLViEYpwuH796qYa/93C++6egzW0nKVSp1fFwT4IFVesO6Yuyw6cJrFsQffuAH3kEwXLtqkxyBs1/zda35MiZN4orCF9PfLRq0haKXbtoLuLNjDkFRXyawshAFQStGwbhqfWo8oAzfXteIs6ZQSNo8ALqOioOX4SJXuH650Zy/yie05015qLi7jZeHyeWws1YA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(52536014)(508600001)(8936002)(26005)(38100700002)(110136005)(83380400001)(86362001)(2906002)(33656002)(71200400001)(53546011)(7696005)(5660300002)(122000001)(38070700005)(66476007)(66946007)(82960400001)(76116006)(55016002)(64756008)(66556008)(9686003)(66446008)(6506007)(186003)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MLZ2KVJP/fwo2wwR0nW4TYrZFzmg2utPCk2gr76TREc2NGFSCvK3zkptcpK4?=
 =?us-ascii?Q?+2a3WEp0iQ11slMkAOpgBc271gG44/vaS6jYJMwuvr0nlNmQvOzAd3zEwg7m?=
 =?us-ascii?Q?flsriTEbKT5WpxFnXCqz+hAqMQX3Ebvwg6Kr5QOTJOe+VY636Ylazx9Hqt5q?=
 =?us-ascii?Q?aJv1TuRtGxxCqgo0rSE7Irj8vgYF7Uf7SrLCiIAEbpL0beodv7Dhp3X7+hSL?=
 =?us-ascii?Q?PRQ2rswpDQ+RjJfj673WYc4mFEKdu9mWl2++js/p4MDZjRUC/QYk1inj8Tq/?=
 =?us-ascii?Q?pMmqSht6JKrQjw63PRyCiFOST8+F6QlltYph6XHMynbU/sGNGzVVGi8qyyEs?=
 =?us-ascii?Q?qYd6EJntNSH/biGDLUdWneLsz8HOCLuN4Eza5k9CRl22q1lKuWbifbl6j1Gl?=
 =?us-ascii?Q?Ie0wMXyKWdOSdjkRm/sdeKANfMgOA6xx5hziDHXWNzTsV4SnmsCcQQewgxXz?=
 =?us-ascii?Q?HlI8ORUOtUGu9IbcnNr0PTNzpbz7/XoDe7D7BYccvFEUg/I+LgF/oT2LEJ8J?=
 =?us-ascii?Q?GixiuXJkwgIO14BrjzUJaNq6225goSSiKiBXkwBsCHbkgQxz3c6D16uaZzji?=
 =?us-ascii?Q?LE06qVqRY6Nep0hFTBMeVlMTlCwpwZWEZvNu9A25C6mm7dsImguzePuIc22x?=
 =?us-ascii?Q?Opo+Ahm53sAhfBA/9lekWg6+e04VPCQAUorFf9zQo+uwWEuHeoazTMK7zRA1?=
 =?us-ascii?Q?2LkWIYi1oeN7MUW/RfR9Kw8DRl3lNKC0ptS2qVoMQYNSS/K1o9WNpDFpjeN4?=
 =?us-ascii?Q?iYw0GnoD+kGr83T5idZcfaHAi1M839tpkrAw+laIYpJht9WyEbDKBmdM7tJs?=
 =?us-ascii?Q?pn2YivNJ5QZVy3fbUXlpfaYLUJBLict8kLwVf9yp1jxfYzP3VE1Aw8zzjexS?=
 =?us-ascii?Q?4JbE2REasKXAQForlbPxH2BbtWFUjSORP9CTQduziY4bQlIXOPiJJ8HKOrBr?=
 =?us-ascii?Q?PnGbjR60hXVt3+GstZgs61zJ2MSo5Lue6wlzO3B8/8R0A6htOtehYUxgb9I5?=
 =?us-ascii?Q?STKw65USf84DJQr0wiN3CfgCtlEWBVFf+4Xd87oVhXwQqekup1irzbnf5TRZ?=
 =?us-ascii?Q?2fxhML+MvKBJ/NC+ibeYAkygHUVHLZG4I0V62OqSroinHPgNqDssR0FFyPHT?=
 =?us-ascii?Q?rOgWsoDY0SrQIg7X+058HCSYkt29OSDUkinrEes+djkvaTwG8cFjwGaWstd/?=
 =?us-ascii?Q?voQIIQw0P7p1LhCgjFUSYGKgwrMU4iS+fv2GkaKvagG7kzV4kI0KVJ3pa8Ef?=
 =?us-ascii?Q?yIwT/4JpcPzBNmy8q0Id3V0icrejrqi/1LLeRPqT88DkPVuGgRDaMckuiNqt?=
 =?us-ascii?Q?iA1PLKE8QbleQQxpcBqeYN5W5xMxMcvV8mmi4E0deMRVeU6WW+hIP5a6N04s?=
 =?us-ascii?Q?w1MYLJyWc2SuzIH3iUhxiqtqNwowKm91s0VUpbU1OAsJL7dgnalARfjkUqk5?=
 =?us-ascii?Q?4G8V693d/PudjfmgwZk/jLXwdLsVNUaoyyg587ZxiNabRtU2aa4nfb/8MiLB?=
 =?us-ascii?Q?wc6HHe7JIF9660+bt1MItq0x2u+HkgoLaUaZjdEtLmhG0z9P2JCVPnuIe+tW?=
 =?us-ascii?Q?rooOeEFfJd0fI3loi7B8sKq3/Kj45sMUF1lFGSsuohSzXMvscA6OjsZsr/ab?=
 =?us-ascii?Q?eKYZvKQ/UWharX3vSVAfq4A=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c429ee9a-9cb6-4359-667c-08d999427c44
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 12:08:28.0585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W9x8oBIpyOw8EqyCxzi8Mo0jQBPpiZbZa5MjYL5cXDGloF/0bC5A5EzFFFf8MFMyQdr6fFb7QI1UYT65mMoTFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3830
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/7] ice: Remove string
 printing for ice_status
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Friday, October 8, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 2/7] ice: Remove string printing for
> ice_status
> 
> Remove the ice_stat_str() function which prints the string representation of the
> ice_status error code. With upcoming changes moving away from ice_status,
> there will be no need for this function.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   1 -
>  drivers/net/ethernet/intel/ice/ice_base.c     |   8 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  24 +--
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  28 +--
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   8 +-
>  .../net/ethernet/intel/ice/ice_fw_update.c    |  24 +--
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  96 +++++------
>  drivers/net/ethernet/intel/ice/ice_main.c     | 162 +++++-------------
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  48 +++---
>  9 files changed, 163 insertions(+), 236 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
