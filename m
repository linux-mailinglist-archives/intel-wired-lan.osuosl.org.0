Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 622434B23D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 12:01:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05ED4404B6;
	Fri, 11 Feb 2022 11:01:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hF2UiuDpYWz7; Fri, 11 Feb 2022 11:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08A22403AC;
	Fri, 11 Feb 2022 11:01:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6F71BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 11:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B467833B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 11:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cwE2uwm2vrSI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 11:01:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93BD782446
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 11:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644577294; x=1676113294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mhT5I7r7149DnETezysWF/ss7wnRt36bCGXiEu83Las=;
 b=FPWSRy0QJ2GPiImA3X5S07w/olWN8udm+i6fRz4SMa751EYJyNyC+dYL
 vtpxJEkBgZunH2g6vLw68C0PiuYrsa9gfYGDSDt6d+MP1LFvzFWIEAMZ3
 UOhGsBmUxNW26Xz7O7sfJGmX03JEf28RcZxjucDoMVIP62jnBemap5Tf6
 bYR1tOGvhegrFPIO11gUqsOZRKLUjAbNbvt63Y/GUZvO30hDfom/4Qxfd
 11FTfta8neK8P2zAfAnFgRnAuGCr6fv8fgFF7Tt9AcP4UMLB40YYOnBdu
 y1WOEyW7zYh5Yl3pmrKsyTBrUPKcLRgybfO5tLkhr53nWpO7xoLQFr+o3 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249920408"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="249920408"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 03:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="569008597"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 11 Feb 2022 03:01:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 03:01:33 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 03:01:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 11 Feb 2022 03:01:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 11 Feb 2022 03:01:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BsRdG1Ihhskb7DbjrETeLAM9cS2Zg+MJ38a6t+8u4ZQsJMozAX0V5TDTUjrHsQmUqySTr3xXd6fgzpJPFOWpv4EpukuUACSSXB6ctNabBmaKJvUzJW1kId/3ylMMRe1nqBtRWnUVG1w/u4Yq/PmcknRZpYxCxxzJr/4a17XTVSBeoGFVlfp/uG4TTH9yGpWEY0d9tAVezcgamTugvk2pxa0bqEW4x+2DlSILM243SB4+BB5OsCodtBhHKTsMOgx/w5nVcQfYsY+7IMS8ZwSeNXLGHpK6b72FAn6E+Szvcl4FiQeBIW23j/LZ+nKGJH+OIfj0Oqt0y4Cd8GFEBEdWGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlvCcykAE0LYm603mIB4y9ptJLLQkcHOBH0JCi5S9YM=;
 b=NzW3N5Z4HjLdv1i5U55bb0B3XvvhdzdkBCjruBdFFsJuzvbk+LHrtZHqbUom9595ouM+dGmigEj0KoVMptSIAtxkLkuS9QBCogREAaPe7I2t51SueGNCKmH61arTnUuFm3mgbMfOwK35BCWcgZGJOCitiqW7zWQTogxjE/SwrcQq3p6PCb7TxdqxST6ggit2eYnwu5g6F/WajzZ6UH7gqvt69EZvfJGVFaO0sCxRaJpp8uuLxSCYx3XKjQjG+GSYIbMk++ZjdQ1ijRDpqGzvdCvRWmqbPhHAeblMrocOY3rKGSDLJWrZ6eZIBgPobhbSMBbMV2gFeDt+9elkYyPzJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CY4PR11MB1336.namprd11.prod.outlook.com (2603:10b6:903:2f::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4951.17; Fri, 11 Feb 2022 11:01:13 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%8]) with mapi id 15.20.4975.014; Fri, 11 Feb 2022
 11:01:13 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5] iavf: Fix handling of vlan
 strip virtual channel messages
Thread-Index: AQHYESdpcUEUWS6ZJk2oNfGUQxLBg6yOSviA
Date: Fri, 11 Feb 2022 11:01:13 +0000
Message-ID: <DM8PR11MB5621049D39301AEE22F0B52CAB309@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220124133543.274845-1-michal.maloszewski@intel.com>
In-Reply-To: <20220124133543.274845-1-michal.maloszewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78bb619e-c737-4def-612f-08d9ed4dd1c1
x-ms-traffictypediagnostic: CY4PR11MB1336:EE_
x-microsoft-antispam-prvs: <CY4PR11MB1336BB25FEAA497F29672AE0AB309@CY4PR11MB1336.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kmv0oS/m8LA2sXzgvs3nEgve8zko3Zln8/Sy9JZFZrRE/TPz0bAcjC8qStuahoCOyBBNErHjQ1c4v5cYrQM73pbe+bcOC9DmQ1FSVh4jlOHo3PPDOtepqaoqoU4Z3bEMsc//4v2lxHXpFxAI7h69EuWxXOl6jLRfBJrjcHrUnDGhRthiDRy23VMcX5oy6xXDBlbekF0Lh7LYkcTNkJQrUQ+/zvDItJ2kYvFfx++aOa/ieR85mlPr2gy4v14Mt1m5ntrIbV3rc7fI/hLHRds3y05Cj5dqlJcZmeY6ky13gj7uxpn++I8Ew27YGtlGQtUcfvbCszpHN5QDIXMnQl2U4KROirHXNoitxoEGnC4Bgn36Ww/xgNaI1RHVNUxKrIWSy99Pnv225kCRhtzQ4yTxvw5acsMhMEG7+a6H0c31BnApdJZ6jnQgZuk38LEV/iBPYNDsfi73equO7xDDdSdHgjpwofyO6QKhIoAH07oeyKx3Q9GFh0LqUkS6inybtNT/7/fu5dB0j4I3FLhybrqs3slYBSh9ednQaBzeAeeyjCt7a5B3eBdstWcto8OJrLpgSi3Ug9A/On5kpHsLbWEq/agYsSB6/m5ZYcqmjtLzugLsptUW+8zqDQzYh59e6J2AlackTb3onRZ8aH/DkqkeWjQYDFIOxIk+avZWwysOetWe2IttGMeqs+CNUFAYo55EK2pf2memruiNud/RS+p1bA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(76116006)(66946007)(66556008)(8676002)(83380400001)(5660300002)(53546011)(7696005)(64756008)(52536014)(2906002)(186003)(8936002)(26005)(55016003)(66446008)(33656002)(107886003)(9686003)(15650500001)(86362001)(4326008)(508600001)(316002)(110136005)(54906003)(38100700002)(6506007)(71200400001)(122000001)(38070700005)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XZ3V41EImpIVpRuAPFQqIOaxqszKI6qgLZ2yIfkhS7vArSx2hi1bbqCbpQkx?=
 =?us-ascii?Q?9Mduibfc0dNY2maO6Tkkt31f8Ne+ZtQ4WcKQhLOarjg2K4JNClSKskBQOR+g?=
 =?us-ascii?Q?Ivcx9oGmDsU9UtlnLKgdaWKAQxcl4ezJQIEffzZM+nwe0d2jFv927vjTJ0/i?=
 =?us-ascii?Q?BXQMMBOC9dvan0xll7V0eaz7nAZMsyuaG9mOCdQpLD6BHwM8xKubR3Zkt2e/?=
 =?us-ascii?Q?n4fy2TOLeEijUbxUcKXOb/V7ep94Hz1K9TJvFX58uI/7h/RirYMxMZ0RSPXQ?=
 =?us-ascii?Q?FYLVsPq8L9oULFeVY+tcS9FaaE/GSeQVQ8SxwwvsptV/ZS66tCrVne/TAhB8?=
 =?us-ascii?Q?CKW3VMKC96u8GkX2/UGgHBCFibflmwUmOUODPWAYlUFsIam7pRuweWD+k2uz?=
 =?us-ascii?Q?5FNeiiroCvNi++bxGiD4RVEVAN3ZGTDlBh4CT/LmGS7s98bhTlsLOGeiu6u9?=
 =?us-ascii?Q?D10WXmD4TdULa2Q8zIGEu8J1MsNxp8iJwwL4jY4TNOzppSZf4NTtBC3TQa4L?=
 =?us-ascii?Q?HG3/9baX8MUceRki3VfZn+VM7+XDCgeFyLJJeWaTiUD7mizLFoUkWN0/GbdW?=
 =?us-ascii?Q?xPE7rKzaBQA1COv1o2LL7TcedgMGxoRnZvRhD8iC8hUHr2o1KSfw+0vkFV6A?=
 =?us-ascii?Q?QTUY4Z3JFk9BKpn/xx9FUv6XeGkumgOWlWFGgWXvn9Z4PK6Zye5253JtNFcH?=
 =?us-ascii?Q?iR2KPtZuZ7FWJZU5/V4pVEcc/tzSnJMjR9wLXnkanntc/Ak0sc1AZbVr39G4?=
 =?us-ascii?Q?Twvc/qUtYo/XMwc8lwjO54sXum7c4ss9x+6CiMy4ZF73dpE9QNVbCOqJe3Q1?=
 =?us-ascii?Q?eEGa3kmBsrCtQG/iIDOtp9cQvpklr4n0IkBUEakwY+mWEOU3yPWrwbbQlww+?=
 =?us-ascii?Q?p9oS07nwNpFhTvBGA/R3GbmA3O0tOcNjF2x9GGOrEDrqJgHvI+A+vA1LV1cd?=
 =?us-ascii?Q?R7dUEMmKJtmHezXK6QtsHwC+JwNr/lswKwK4+1E6di6tIUYvpJuk/ZEgGoN9?=
 =?us-ascii?Q?rnrqayAK+4llkBbRzhIaloQf3eHO81mWd/sLYyZ/OqXB1O6/lSZ9JYxCjmLS?=
 =?us-ascii?Q?uG+UKM5vpGVhlXimzn00lg419ilQ6mIY4rmi4x2xT/+raKHKKlXo18bocpSn?=
 =?us-ascii?Q?z9Zen/BpwrnZZrbod3LX3AaKWbM0veyfhMqHiNIl2d5/0ndSlpf0cCJ2B9SH?=
 =?us-ascii?Q?pVlMjGVg+f0Cm2MYuBHW2ts/s468wnKus4LO4YQT16aUn2WjxVuJSXQQNwl6?=
 =?us-ascii?Q?5eT+xxnR/4ItTG63DSKNDrsS2qDtdN4fHe1EU3EYxA5/bBaYCGzFSKILtw1u?=
 =?us-ascii?Q?pTloY98awMMq3K2W3k8ZquTB+g4ta4S3ZZtCyFMx5s4k457TPcelCYaEC45N?=
 =?us-ascii?Q?/8taaiQswUoR2scY86fG+9WiZimisFGR/qtnVZHLmiQu+CFykw8Ww/axYC9J?=
 =?us-ascii?Q?mRXHeBAAtxgEUoZiloN99V602MR+2dhguV1O7DoZkpxGVujMGhlqbeNf9fn+?=
 =?us-ascii?Q?Znck1iSQwFd9LXNZPXMyZU8CCXCrSXRWnJYL9SBEsEvDmz9DeoawyUdKUH5u?=
 =?us-ascii?Q?Zv98d5I3qqxOn4PLZiCqfl9vWrxqufYi3T7oAbWadJM2IG/FGuoKO5QqgNlm?=
 =?us-ascii?Q?z2SuoPO0YDvMPSOoktBL7RBvA5c8cmLUQacnrFuM6Mof+T1Fy4mVaS/9Wbfw?=
 =?us-ascii?Q?qv1EUg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78bb619e-c737-4def-612f-08d9ed4dd1c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2022 11:01:13.5918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J3Y3OvYxlA4NSQ/NcmTENi4MsuJxPJ7e/H0zL+YjO3ix0qDPB2LFTTCLqfCKGS3SsKlUyXYWugj0U5bXKRi+dVnxFms7TUnPwHsEbWyJQhc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1336
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v5] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: "Maloszewski, Michal" <michal.maloszewski@intel.com>, "Ciosek,
 NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: Monday, January 24, 2022 2:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maloszewski, Michal <michal.maloszewski@intel.com>; Ciosek, NorbertX
> <norbertx.ciosek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5] iavf: Fix handling of vlan strip virtual
> channel messages
> 
> Modify netdev->features for vlan stripping based on virtual channel
> messages received from the PF. Change is needed to synchronize vlan strip
> status between PF sysfs and iavf ethtool.
> 
> Fixes: 5951a2b9812d ("iavf: Fix VLAN feature flags after VFR")
> Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
> v5: Changed fixes tag into the proper one due to missclick in pervious one
> v4: Changed the same flags which occured in statement and did not have any
> sense.
>     Changed fixes tag into the proper one
> v3: NETIF_F_HW_VLAN_RX changed into NETIF_F_HW_VLAN_CTAG_RX
> because there's
>     no such definition since Linux 3.10. The code is the same as the one from
> OOT.
>     Code successfully passed inner review. netdev_update_features()
> function is not added
>     because it causes infinite loop.
> v2: Changed fixes tag into the more probable and accurate
> ---
> ---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index e508122eddb7..6378d3c216f9 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
