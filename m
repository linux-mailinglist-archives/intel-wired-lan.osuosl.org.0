Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D13B4D03F3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 17:21:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC20083E14;
	Mon,  7 Mar 2022 16:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i1o6jo2EWnjT; Mon,  7 Mar 2022 16:21:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91BAE81B84;
	Mon,  7 Mar 2022 16:21:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCB061BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2992416C2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07Kl5qN3uYjW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 16:21:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB477416BC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 16:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646670109; x=1678206109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iBnwVb07F6eGbD5kPH5BLgQSdM4cn1HEbg0ZcRx7kxI=;
 b=gQXcLFT8419u+Q0q4PGgIJc4jSO6ei1H5EUsR5Nr4LLYrlPz1+tTOuJL
 Ib9bngh0AcqliMC8qabCwiAc5GR4wUiYubogjm5+WgH7MQNi5WoC1Em7L
 3lwzf/9A83JJV5/7ygSAql8LYDM0FA5JCbA14gKB+lumUSZ7U8iXwqm1e
 Jz1uGAE+/cAYrwS215pzk4aqGzNwaQGAVx/88y+4dCa+8ifFcBsuia9w1
 FoGKix3AfrXs04kpfnPjMruvfYsR9u6eBuHNM569dCkrBv0hku8s3+xBy
 2x/w+CN+owGyRT9vSyHrpNfLX5Mou+zhAHLf0+ib2KI5fQ64roZ7N5DcQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="235040711"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="235040711"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 08:19:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="512736620"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 07 Mar 2022 08:19:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 08:19:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 7 Mar 2022 08:19:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 7 Mar 2022 08:19:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJCbiPJilshFoUKR3mjnMM6ABC3+Fmx54xLtoUS3/nbL5WwIhHNGBZQ35bKGMhustjg988TV0ulMYfSZcBD/bN0Z7pdATsqg0QI3CtTw3/P/YZX8y+GXzK0LLhvlsPMbVawAe5w57KfMhWPxuZN+TuT0WtrGiVcCbyTXzBUNw/md+Mkw9HrXhcH16gj44xeGZrtaBIfdL0CX8Wbn7wYS1JQRue8+Ygdpe/9+2L3p9gOI7LBrcx15MPjTCVufn3V6D43KHZXgwwy/pJDZ87zn54kdK039BHWN8CDphvw4DeOnVogRmhrhEozyoW7PyGoEqND9tX+wXtkgo7uHCW8dcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2rbUMpvoDEn2LKqdEUR6aziheCHErmizN3rrF1gEJEg=;
 b=DX8K3zfm3zurn3PsIQh5mKocPkAUn/aMNH2WhWodmdhOKvvEGC/oyuK17ovSMOF7aA1gkiunu+tgfMJrXxqhGIgo2Gy5g9+Av9W8p9H56BQz5sADYsKckKwaQuyaSZeOCCx9b1FwOGwjm+ykHrvydjbP0RI+jh4E3+8g6fKv7gxeVhrLHoDPn1pQUHIvwI0KXMO/Vlzi2A9dxe0Fe9cU3r6RP0pFyPHEL5Juk0FIGo9yE9HYdmsvYUixEC+k7rTdkMc68wo3OBuhWO+j9QcKEa5ysBltD+hsGnTFqY+6Bcxk5ifQeLt5TKsZc4QdUjtHXeU6lGDo9IaFqU3F6YyLvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Mon, 7 Mar 2022 16:19:24 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968%5]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 16:19:23 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 3/3] ixgbevf: add disable link
 state
Thread-Index: AQHYLVD/2Y0kVtCIF02AX5x8fn3F5Ky0I3pA
Date: Mon, 7 Mar 2022 16:19:23 +0000
Message-ID: <DM8PR11MB56213CAA0567C77DFC88D3A3AB089@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220301114010.2676-1-slawomirx.mrozowicz@intel.com>
 <20220301114010.2676-3-slawomirx.mrozowicz@intel.com>
In-Reply-To: <20220301114010.2676-3-slawomirx.mrozowicz@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3c6faf5-7fe2-4cf8-6a5e-08da00563e5d
x-ms-traffictypediagnostic: PH0PR11MB4934:EE_
x-microsoft-antispam-prvs: <PH0PR11MB4934A496F98075D2251F2BD4AB089@PH0PR11MB4934.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OrUzsPzE+Kf2ypk2/PZjsCR5GKAKhk0pgm4Q29EWywC3WvUXLF+5zdvHLu45wBZL2v4Gh19nvkFAP0eF9UEmK29S8DISv8fck8EsY58HtiZDz/HPOokYOgyoN+xKMQ3Se2ArYMJiH7QL00+Hx/tgu4B+sYhFHakOQcTiA1YUB9tBLNiHgVsEAGm9l/znivVB1jsQ/G8jdQoeRpXRHL9maQ4P57RToVklc1c4CLQtL/A/T6lxINyjY1uX0Sbv6Vv6GEC8a7P5dbHmTKojSP93hzWKY8hBqsJy5bBxtWOcRd7KsQjQB3+ahHPeRBmewNcZHk/Vgfcv8hywwzWcLjuzIeWJqKPRE5IVZHlYv3serNeSqDpIWKc0iWaIQS4CUvwAtAvPJgx6356h0gYRFBWlu+aXxWSL8kCWFakYHdanh6vJGerq4Kl8BrPV0YTPr/s+P2SsDjoHlQOZegJG9zB7pnB1F/SZ5mXAOyhw7P7nmJqlj+dyhzZ7IMEw0W5qQvEqtTRldjyWvD0JtJi4c0mxW1Gmqoh9kMTLHnQgyLgGSHpmfcNo4AZAD279xrLTlkzgTcHUYSje8lxQvHPPRUCgZtef28M4ujODSSA2v12nezdNv35B/njS4tklenmU4rQc1Pu4G8hLVbnltluW9WzX7//+i/867NE8EUoHQ87Pe51qyUuJauX+LQlAkeNvd8W4Bz19yTB1781+JVbkyFKzoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(508600001)(66476007)(9686003)(38100700002)(122000001)(33656002)(26005)(186003)(53546011)(5660300002)(7696005)(52536014)(82960400001)(6506007)(107886003)(8936002)(83380400001)(86362001)(316002)(55016003)(38070700005)(71200400001)(110136005)(76116006)(4326008)(8676002)(66946007)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vvrw70x6hXGDQ46i/oe59RJssSi5xxyg3LzlN7Y6BunUhFiSfUA0VaL1ayXa?=
 =?us-ascii?Q?dB4627iXAvSxu+FnHsa+BRKnQsbbcw6lXGMel5cFsSXcjxHhWTC6V1l8zNwH?=
 =?us-ascii?Q?Z+/TMC5q4Mx5HwZttFxPp1jpUIPQczH7xuBHOs8XxKX9snA9RvSaO5FzHKiZ?=
 =?us-ascii?Q?sKvF/9wM3QN0eCQmwpVMm/L4ymW21OQu+8XyMDd9PPiJoY/vd2mzvkYN3bxL?=
 =?us-ascii?Q?Ga+H5yv/h2RqwjoaUOhBOV5ddJbaxf45Ojwc8ngfjhfiQ4JqbpEQAML2nUzX?=
 =?us-ascii?Q?4S4pYEmAZO/Md3mcLCsFTX+c5sZIsZQYzf9QJCwBebUh2mL80z0ygNdCs/vj?=
 =?us-ascii?Q?ao93phND1AXIiqUWGJewbIXTy+gNxfkfaeELIO5y71WlPnU23d3QXEivI3sO?=
 =?us-ascii?Q?cjTYZBCsv7uVA6QHuzES5xeGmoWPISoI97B3nCUH0haHrU/CXgB9Y+/QiioJ?=
 =?us-ascii?Q?vf6iR7IxPONXejc6DmFX3UzsReycFHVfrRJyyrirPzfYBm8Js87ujKybMBDE?=
 =?us-ascii?Q?QqIuGIdTHcqT7mPWSirC9WNas68VrfarpVpoIsSHixYimnuiARvwDVrJe0yO?=
 =?us-ascii?Q?RFYsiYsXGRR2rYULjHw4IK6Fj17qOcxnofOgLY4ng3GscMlOpGMXstnS5AL2?=
 =?us-ascii?Q?fZRwnRpH3sYFS5DBuWZBqGtwNrCAC7WAExO8VW8WK3z70Wk7z6vwsizcz6bs?=
 =?us-ascii?Q?sgECCgLPL+QiI/FZ38Sr106TeQ4y9jMqueLFxfTuE2Dwjx4NMo9wdD3UWrhA?=
 =?us-ascii?Q?GOGh/Uv95o9wJVRYvbMs15IZzNyYFcbdJhx2XSefBi1JVmzzADaPrzhSk4sR?=
 =?us-ascii?Q?ycoSo+Fb1+P/kwO6NWURglG/z9pZI5umbYpqWe/5MEA4dCiq4tNCVS9pmIEQ?=
 =?us-ascii?Q?G7oCfOLFIIU4Y/9CjlYvwZt8Y7ZZD7d/QkN7JCBm8RCSkqNcnMD/h6aANRkd?=
 =?us-ascii?Q?/mSQeSGisE3g8tKzOXSyOeLbiVILUZdW1ZYwASfQmCR4I7mhIaW9uByTB3Bs?=
 =?us-ascii?Q?6cFMYMmlw/OiwQZ77YLbygI7pLslJRa7D1NijsJoZOaO9+9Xp3npYXZc3ltw?=
 =?us-ascii?Q?ajfJ7u4vfq0y3T/gH4eDISIAYlQ9vspvrHf4LI3dDUyYhowQTmiVLNkpu8Bt?=
 =?us-ascii?Q?4W3XpaKLe/RRVoKAFBSxcxc6nFC/HXeNgE56VPtwxR62j+U4O3XnuthHjwni?=
 =?us-ascii?Q?veauezvXrMcXJ+uxr5D8mFIMlzOjlPlLgwFZpvz3972PnQnTindE5d2dTwMH?=
 =?us-ascii?Q?Kv+7z/RioJHN8kDJpBSoHYWDYLUGlbmJo+rajRG/VwtEA3gcmduwmQBvqFhY?=
 =?us-ascii?Q?26hIAuSYz4HfnFUaNEsv3gg9R7XQTSIyvQEJFwELMD0276ZjNMdAlK5XR+jd?=
 =?us-ascii?Q?BFJACc2aMBgWsaTZheVb0ail5ZfO07OV9hh9p7vz0J7b80FvYH9H4Y1w/yUY?=
 =?us-ascii?Q?qg7hFebOP2NqzdSqgyNIJ2Kt+OE7CM/NyxdRivW+Bls3RGvOHDyiyYdc8Nl8?=
 =?us-ascii?Q?F7ABDeQsBaiFEXs1zHwozJdLyFbeVgU7rZPJmBkcdwfbAGPcoIpCPaXQDqUS?=
 =?us-ascii?Q?3QpJ+qZkmHXYCfMgW/6dnHhRZIqS87LS7/8VvsKSfe0jx5oQ7QWviSGSj6VN?=
 =?us-ascii?Q?32LNC/GHplLmFb+sOgfHXcsN2k7nMH9U1ortCdXSCy+p46OVvzZugbBPCumE?=
 =?us-ascii?Q?GJ/uAA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c6faf5-7fe2-4cf8-6a5e-08da00563e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2022 16:19:23.8593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XzNcQ8btt87JQhQ3YDI05dRlwRs2Imw6xE3ZD/sxNdCoEtUKtdVNS5521s5yxREQJ7aPh6dYzkFQ5ZSvimA8dmNyQUzfNvJylkimjrvUPHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 3/3] ixgbevf: add disable link
 state
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
Cc: "Mrozowicz, SlawomirX" <slawomirx.mrozowicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Slawomir Mrozowicz
> Sent: Tuesday, March 1, 2022 12:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mrozowicz, SlawomirX <slawomirx.mrozowicz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 3/3] ixgbevf: add disable link state
> 
> Add possibility to disable link state if it is administratively disabled in PF.
> 
> It is part of the general functionality that allows the PF driver to control the
> state of the virtual link VF devices.
> 
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  2 +
> .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 11 ++++-
>  drivers/net/ethernet/intel/ixgbevf/mbx.h      |  2 +
>  drivers/net/ethernet/intel/ixgbevf/vf.c       | 42 +++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbevf/vf.h       |  1 +
>  5 files changed, 57 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> index e257390a4f6a..149c733fcc2b 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> @@ -387,6 +387,8 @@ struct ixgbevf_adapter {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
