Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2118133AD28
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 09:17:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE69E8352B;
	Mon, 15 Mar 2021 08:17:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HvyFXJhAFJ_U; Mon, 15 Mar 2021 08:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95988834F2;
	Mon, 15 Mar 2021 08:17:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 260461BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 146014AD93
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5wp6sF4S1pWA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 08:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0F294A332
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 08:17:42 +0000 (UTC)
IronPort-SDR: z7MWxbu5Wj/4RzS2yf4qyJvnShdq9GAr22hHymFPeiDdAxAuj5L49hL3gBY0AbrTtNqvbXtHZE
 yEa3u4UipGjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="168966968"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="168966968"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2021 01:17:39 -0700
IronPort-SDR: Cp3zntuviMjkyciX4UpLgW8KX10snIULaQdmUheN16N2SlEbDiqEj5DksQNKWTUfd0OIcgH5dU
 jwSHDZo4dg9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; d="scan'208";a="439683231"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2021 01:17:39 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 15 Mar 2021 01:17:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 15 Mar 2021 01:17:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QeyjWAs7wC5VScjHvxtIs3VVaIv+sfkhp6LZyFXPgJ1RRBLo+w/U1jyrvNb4ZNIODllj0ht66pxFXNvMv/eGTsme5e0469R6misDiVoXSO0xCyTt30u4vMAfhZtmSSP80GNcLTRKh3QAEFze/HW78KQkshZnVOy5bRBVLlsK5zT3FEVQzsTcWWiTYlSl53mH98KoGC4iSnxzHp3lz1WR5Oea2r2UejcfL++snfc3tTkd/AP8vp32UicVrdW1PgjvEr4BP5ovSzuEnrXT1juxrVDn/8HjQCYO0XWsXTQsJgAXmRJg/riz/0AWthxTlV9YnqrK0ioun4hYFooY7Lx/Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pwe5qZrz4NsCdCdqXPoaBnOMRAs92lG0BY5JSZMQ1XA=;
 b=fehsT+tiixwcR2rjVzO8ISyAobrI+AnhHHkLf1ae0W/xoWE03NMe0PPLLKIlLxSYqemNjaNNdPk+lbF/vAWwrGnT3JfTpZykkRTadNQDd9yNEl9xxQCKkq1J7xlml5/PledNQvjl52TtcmzuHv+qeKGkT/BrP8fIzOVm7pwYLJCy+x/bpH956rli9FEmynhSeNdierHCEjVISodotQ/9yNTEg7P9YdjdGrhVFhqfV3uSvkZUmihoEmznuZpXZgWEUhQF559mc5CLfesWx/8hsIBzrxDsVWCAjx9TFhgxrKLwc+fvT8spxYHLqCvPu8VF8E5obRZIptRv6UiO21Y4KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pwe5qZrz4NsCdCdqXPoaBnOMRAs92lG0BY5JSZMQ1XA=;
 b=sNlvyAhH9HFt1ZivDsxwzUERcpvzlzhSVnR6rzrAFcfYHJmqj907xzYeIvigrn3x05MLLZ2zGLyuCW3oSimTNOZfuhVX8X9Up8Cw2P1GExi8DJDMOq6fT2JJXCoNMbAnZfKayqp5Bb13jiOnO84u9Bl/aj41JSnlWwADg+i4xdA=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR11MB1297.namprd11.prod.outlook.com (2603:10b6:404:4a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Mon, 15 Mar
 2021 08:17:36 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Mon, 15 Mar 2021
 08:17:36 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and IPv6
 flow filter
Thread-Index: AQHXFJQViNtE+WejkEGpTi1w0mty2aqEvg3Q
Date: Mon, 15 Mar 2021 08:17:36 +0000
Message-ID: <BN8PR11MB37950F0CA25E18DFD462BBE5F76C9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-6-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-6-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.46.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 098bb976-dd68-4606-c239-08d8e78acaa9
x-ms-traffictypediagnostic: BN6PR11MB1297:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB1297D1152AB62C500097109EF76C9@BN6PR11MB1297.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ExGVHz8R6ttRloimyxhW67ojzpEOUQ9YMt5N6H36GvopuhVOp8B0mpc40nu4YHHpQgwbrqB3srQKbxgZU6kod7zxOH38zhjAntCpsbkciQTq+esXjhSV/BhD6R9c3Zif4sy0KaBuZKjV5ZWOEh+ECkULo7TfHK2g0zkryIcpJABtuLdTQuToosieNT8ory/PLRziJJD72Chkrg0hli0YveUWWp8xvfNJv0PHGmPksTVeDAWUlFdUushhVMZvfoTWpHx+typsqEFl1thwknmZN5PwCRSvPs1NcDF+bVd2BuExNa7TEFYBp6XFiJlrtd+H8sdSR6mU/16F38ERbRZv62C/KHyiQcG91U2wHRn5ziXbmgUt3XN68fW96Erag5kpHjoDqRMSvIQC2qA88G6c8ASd1suqSD+1NmGzsD0ACZ6r75BH5PJK5gVhMW3L/iFXnTB978ojlTLAoLCWC5mSHVQgN0oSbtAEfelXTFbAKoYjWWYGuHvmmz5RekhEFmBmD/4Y+HiOUVFJxYSXvilyAFDP54DsvZVtMGJgDOj7JN9EgIRfxYIbSflpgrWppGl/nL48zHQQ2Av0d+IGmPfDr4tik7+n+kZXpgcXWfiqPZ2k1D1aUxp7WXFm02rSEINSy3IXzrf6q/heDzgOfM5ZMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(346002)(366004)(136003)(86362001)(33656002)(83380400001)(52536014)(64756008)(66946007)(66556008)(76116006)(6916009)(71200400001)(8936002)(66446008)(7696005)(9686003)(316002)(54906003)(5660300002)(107886003)(53546011)(4326008)(478600001)(186003)(2906002)(8676002)(55016002)(6506007)(26005)(966005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?9K1uZQM40lQpysHX9fqA3FiKck9XtVYWHaSEcuxKBzCr8gx8XOaeZX8EIlkf?=
 =?us-ascii?Q?+WRCvnoA5ENa7jwLd/UYztWVvcw6XMr2UhKait3lACjZbWNgG/peXUA6FshE?=
 =?us-ascii?Q?UVSloHwnkveASslIGBB5aoapmMnjJUa77r0eREJk9rBjAHbPrXN2xIIKAaDg?=
 =?us-ascii?Q?Gcv7+g0p+ZBcTM3HomlTLRaVApTm+5XBhv6XiONla8SOdWbqB5GQnvl5N2Z/?=
 =?us-ascii?Q?kjnLWDA6DVqNdLldvcbHA81tvlkVs/3u3ToO6zFc3cmXXhzitI69rrEIOi2O?=
 =?us-ascii?Q?vmO40bcmSq9fcxPGMes0eOV9Wgg2qmjHl56HggEK3UPYT808W0bPqJieM33m?=
 =?us-ascii?Q?QRHACsPa2FezD9GOirqykUj9C++c3mkvod93gs5i6dEEwFtJ8xPSv0bF4WOi?=
 =?us-ascii?Q?gcUXcjhBphbjmwdeN/GmRs1ZnDmC+6l11RvUSW4jHxxiyos5qZ9m5f02gCRx?=
 =?us-ascii?Q?6ak6nDPri/fSqmD87xjAVP+4kPXf8n9cNpAe1dObjI6bO31tYOOtbjeNRin7?=
 =?us-ascii?Q?QVLVF7avLa7sBDdy8+Od1lgjvX4sYBAgcVlfSC1SMiNLRV83uj8FPQmBcc23?=
 =?us-ascii?Q?jtwcucHEIUZmM64OsqFCs5Fl7GHde8sQ2N0ECtKzFIhRY0F5JhN1TSEd3gf0?=
 =?us-ascii?Q?swsK7RBW0qyTE4AfJVcLIlX4Qx9rayLE6PBxo4H4xeI3y6XLiAfsWsZ5ukLB?=
 =?us-ascii?Q?AQiyaqPMlIMrgStkn5+64vxWmKviqhqTQ7C327Ioo3Gw0XlW0VZL6zg/3STo?=
 =?us-ascii?Q?rG5uLb8e9OHhoHOzHr4SF9p+aCuU74rnr6RAdNm/JfMQQp/IYwf5i+sBlu0U?=
 =?us-ascii?Q?ICoQwh4h+k/sn7j0KLkSOhKsRyUZlT6V1qSE+/BJRkH+Pwst7Hkt29DTuyoh?=
 =?us-ascii?Q?+Jcnu6lCVxigXjWoEb0OVUgkuXchtrLIUD98mTXApG7sbt1wsyKMMKuH6n+J?=
 =?us-ascii?Q?psrBZGI34IyGJOLsOAC0Jqw8qgso+54maLrUvYymeugS0r81d0gv67Nz2Hp2?=
 =?us-ascii?Q?jVv9XuwT4OCcGq/yaoTwr3JmCeq1l15HLiESvYBPkFiYsIOXxPUdyyR7LbZn?=
 =?us-ascii?Q?fjumxptp3tlSzT+QdNognZPqIycGQRq2UIYXBpypvUvrxUnvPE4JYmH0ZrWW?=
 =?us-ascii?Q?tGXIL3AcRqwRGkrIWiKstusJNYDEUTj5l6PkKJfrXvaegFq5RqNGP2x928+v?=
 =?us-ascii?Q?FiCYSgpYZHgSO90OsoaWlRNY8HamF4Fwl4/WGegRcW2xsR9kJpXbCZaI5yIo?=
 =?us-ascii?Q?xRYR3MrpT3Gl9O6W3egKNta5tLlU11M3r+8FKGZm1oSmkj7VZapG1tQtn1Qp?=
 =?us-ascii?Q?tCs=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 098bb976-dd68-4606-c239-08d8e78acaa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2021 08:17:36.2762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 684kkSNq/rWX45ntcrKNb7Q3ZMiO+211hcTHwqzf9B+3AiOgKy6FFDRrbkQ31pu1wOkF/WxnHiaG5LJEh3HiEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and IPv6
 flow filter
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
Cc: "Nowlin, Dan" <dan.nowlin@intel.com>, "Liang,
 Cunming" <cunming.liang@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z
> <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [Patch v5 05/18] ice: Enhanced IPv4 and IPv6 flow filter
> 
> From: Qi Zhang <qi.z.zhang@intel.com>
> 
> Separate IPv4 and IPv6 ptype bit mask table into 2 tables:
> With or without L4 protocols.
> 
> When a flow filter without any l4 type is specified, the
> ICE_FLOW_SEG_HDR_IPV_OTHER flag can be used to describe if user
> want to create a IP rule target for all IP packet or just IP
> packet without l4 header.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 54 ++++++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_flow.h |  4 ++
>  2 files changed, 53 insertions(+), 5 deletions(-)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
