Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A747C339A41
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 01:04:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26BA04ED49;
	Sat, 13 Mar 2021 00:04:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOZnaNaci4OJ; Sat, 13 Mar 2021 00:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA3714ED26;
	Sat, 13 Mar 2021 00:04:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 904831C1148
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:04:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AF4A445A5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k_Lcf2haiG1s for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 00:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6D3694EBE5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 00:04:11 +0000 (UTC)
IronPort-SDR: bJAAohfNhPtiG/idlJUzPXkPaTgxIAVA7sLeuoCfF1BrIbYYUX7cKmvztUYjtQjDDUjUlcdKH5
 lrtlHC9I8JZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="189000377"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="189000377"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:04:02 -0800
IronPort-SDR: UnknrtF2wT90FhnDYOSHa9zQPxeczrmgEqPwb64sK4D3tlj7dztfbVeraRe4Dg6gfFCzk18Gw1
 +f6ICNZxiAsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="604114873"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 12 Mar 2021 16:04:01 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:04:01 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Mar 2021 16:04:01 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Mar 2021 16:04:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctULzlsFk8MvBNZ/Y6O0i0KxuNa/dc8ARRcN/eHd6Zj9XZmV6hb9IySKqyPS0o/NkRRQyKJeEy5Si0yRacnkYm8XKdXbxN+SWVCvNGl4/VFQ8lAeBVNNBMBqKKztsppjr520gwaLqxgz7azDCXBMPM1B6xUJtCIhQfqeZsxoS9Fd+1hbOczfZTe/lhJW28+uNGIF1wnjhLWavht/rAIYAKRaN0V1AXQ0yzj708M85y1twXPL0U1V3PjlOP1CbsoH8PCzHjiCR0EpGGIdvsOREI5/DU66wgc9/TC/9JE3hxAdiEkh7f3c0W9VbtNTDjsXg5VAHBSlZ0VBLV2N7UYmMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Aq0IUN/4i2ZgCoPnCLHcL/yzA/haSMpDlXllFaHbd24=;
 b=U22lblpTde+DKSKLPVAQCJb9Xke/7a9P3pzM77Fv7sqjz3C/d1L/EzR/S0YsAD1eFJX3LNay79MCRD1wSyGvj3lqCM6JzhHn49PQMb16tsvJTIVmPgTSXOAlRKDznjEqmBqRGtwuqCm3Nd5ngZa/Ib14BNbpCuY4aoVOBzKNN6Lhaxf81VhwPCZQ5z+2nypXHMDOFadRIvb/NCWQtLr/El0ZEXLk6XdwTjQdlW8Rh3eFZAojn8Z5yG0HsxLpdBd5WwoPT4XISzGvzOhThcWUFncRXDytefTq+LQdjAc4qq1HQN6tTnE+X63P2mCdI9/WlpVktztu/8CJjwDmKsjnEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Aq0IUN/4i2ZgCoPnCLHcL/yzA/haSMpDlXllFaHbd24=;
 b=DAqsORgGdk67fYX6PV2LcSlWttVnRPi7zuzB0uXmoZ+GWwKsh0qoh2vnDNaIlEaYKofcAIlbmZObR0Mm7ZR4QtDQOeKdsBtTELd0bTsA4IGXR2lymT1pZs6HCaXCVXkzxGTMyN2XRXaFNoV6qYBcrD6GITGGOhRLTeqJQ9O945c=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4900.namprd11.prod.outlook.com (2603:10b6:303:9e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Sat, 13 Mar
 2021 00:04:00 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Sat, 13 Mar 2021
 00:04:00 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
 functions
Thread-Index: AQHXD5F5bqQp7qA0U0yhSgSbqnXsRqqBGXeQ
Date: Sat, 13 Mar 2021 00:04:00 +0000
Message-ID: <CO1PR11MB5105E7CC94DB5FA24962AF24FA6E9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210302181545.51822-1-anthony.l.nguyen@intel.com>
 <20210302181545.51822-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181545.51822-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5326edbf-ebf3-4545-1eb5-08d8e5b3813e
x-ms-traffictypediagnostic: CO1PR11MB4900:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB490089721036910D82DAF44EFA6E9@CO1PR11MB4900.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2k//YXUvmALBMJcvkyb7xCTpoA3W2ES/mY4+3CE48nUfcnB4oYM1GK1hkdWfmTi5ICVY+sRNj8/w9kxu3zOwVJqtpv8/n49bQH4LDnpWs0+tmSlTyBB/OuYR8OPotilu2s7rUO/Xr+W/vzptgwEmrjagIkRiEqYswbiZP8eI9m6mzYqw4lhUQOqj4OaCQRmZUps/cLkFI6E4S3Ct5FdnYX8KqSxBxQnShRohMU14+nVdj+CoPKrAL/lA2eLEeUcBqKFktYwQQJ750u68296R5jxcYYbwsi2MTy9Mq7MDmG1l2L5K5bcn+5LBQHj8kXsxxcgV13VY8NHcfSvBYcgirF3I2Xjc8VPKGW9WLVL47Zf/UPbsADXIiEiOEO5Pni9OOX2un+gsw9Q9SpjPsXagT/Z6eWiv1IqdEq4F+g1OHxsUyhHphaSnGlooK3BXLk6DB6Zx3ovQArN6fMdYferxyK9UGlyWQZY8nxH/mRKbZTTUkSwA1FNlKJUpIzHRN+mXjG8CY/GQwJoHEKJE0gYbrfXlLKYbwY50RMhvqzqLK6BUwqIRwHAc0Gc5SCiwOon0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(396003)(366004)(376002)(346002)(8676002)(9686003)(2906002)(5660300002)(8936002)(6506007)(316002)(71200400001)(478600001)(53546011)(110136005)(186003)(55016002)(26005)(7696005)(52536014)(83380400001)(66446008)(66476007)(33656002)(86362001)(66556008)(66946007)(64756008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?TNZl25bMICVmpYFl57vM7snnlcYblXUwkQgl1Y04vNqEYHf05BNkbw1NqsCw?=
 =?us-ascii?Q?xdwjnrepy+PhBVEzFnvgrgu84sK8N2LQY2+rhBAXqbDYRxY8uvnWPDqMKaWB?=
 =?us-ascii?Q?5HbLzhTpd4qO/nJiiRflT1XL20XDRCRwoBZC+SabOPx0ynhIWEJQdCstaOqp?=
 =?us-ascii?Q?DzPnYAIRAZYO3MjKe9HEVXrjQpy6aj3QNyc/evgT9NEtprJpqvvCyNtf/WjT?=
 =?us-ascii?Q?OAPqBhwyLfCcX1AG3Kh8GiB0ozwDqNacg96FB0AnlCkW/4ffCf1nGge2N5Tk?=
 =?us-ascii?Q?2RNxvofO2Z310em627Qb1HN9OPzUUFQOncgIsiG7mO6/VF3/3R4VHXrZ138i?=
 =?us-ascii?Q?a1D7o1vj2Eap6vneeB+cT4oDdvjApOR612/rLSLd7kraTRDa9AdT2CQKyyaw?=
 =?us-ascii?Q?i1yXPZVkL/woAW9+xjUdra5DaUvG2990PRI3JkVwMfIImyQKG6xhMOim9UlV?=
 =?us-ascii?Q?LtoVZxb0Nq/DenkGpw1IblL0d1lPQO+6HEy9Nk20Dueuyr69YFCOYQA5KU1f?=
 =?us-ascii?Q?7VhJ0PQAQlYOM+M0TtAMT7LEm37hU4GYZxxxitJjBoRdish4snvVVjYtuyzU?=
 =?us-ascii?Q?/4uVpyQTIDBWDqFnGYBn9LYYcUHFjZp2c/CsVJhFLBFk1I7sATV6yXvk0gID?=
 =?us-ascii?Q?BwlJn68+WkcbRaMZwBWwxIsX4G0qLBfqUuRP4gGJO/UbZ4VZv8vyqXJCyV3z?=
 =?us-ascii?Q?kHT9dipblVSyqJPcb9W2Z0qvn4/S1N46PVTXeUL7NG8FF5BePHxcYsPEklNO?=
 =?us-ascii?Q?pZIuCWYZeoEeT/u5XiGgixHUcJz0I0RonRYWoFOep+DAVFJd7/6PC2BDVVbX?=
 =?us-ascii?Q?Tu0eJI85sWqSlq+YSty96M19hNUHe/9cBXCaws1i0dzPs98hHo8TwuVQlhgq?=
 =?us-ascii?Q?gVi5PuVmcFn8pV13fa6ilxVmq9/Vcab/vqh7bPhnb+09G7rqwbxNkNPQutJd?=
 =?us-ascii?Q?E2s1qt1Yas+/EAwHgHBLRnR3Wkp8D5wuk1HFLJLi8jtCTO3hAKv9JP/G/1NL?=
 =?us-ascii?Q?LWL4yx3EqBt6P0/zLdXSMxielTNrmOHDuWLIDtezxhGbXIwDsBNWDgvnAkyp?=
 =?us-ascii?Q?uRmJWUvoU53zPJaMNAvYvmxS5G1X/FUiEz79+yz5ZZ/HQUeZPn4if5ilsIjj?=
 =?us-ascii?Q?oHjPi3OfN5v0a/otA0CJGyccXixlnnsv+CJf2P5DXFogJkpHjxJxxTeAeHcx?=
 =?us-ascii?Q?VljAUCXaTz2j7dGL4rLoDMdcJ2m+HC7LOu9mDb7aenxHId5K603WH2lvHiZB?=
 =?us-ascii?Q?eKyAeRmiOJlq2pWzY4UIqZYW16tGWkWNfYpPDf+q1tqo4WI/iQESCyKME/V3?=
 =?us-ascii?Q?EZlRdKuP6HUkpUf62w+2GuMC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5326edbf-ebf3-4545-1eb5-08d8e5b3813e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2021 00:04:00.2496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iCnm8hQ85KuBqmFvJRiGX0UZJrE0JID1B/FSK8eabY9vjW/pjF2gmLosw7POJ4CXU5zLr8OzR0jBi8oBrSaQzFd/XuGnzr9NDRrs+0QcnFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4900
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
 functions
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Tuesday, March 2, 2021 10:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S56 02/13] ice: Refactor promiscuous
> functions
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Some of the promiscuous mode functions take a boolean to indicate
> set/clear, which affects readability. Refactor and provide an interface for the
> promiscuous mode code with explicit set and clear promiscuous mode
> operations.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fltr.c     |  56 +++++++
>  drivers/net/ethernet/intel/ice/ice_fltr.h     |  10 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  51 ++++---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 137 +++++++-----------
>  4 files changed, 152 insertions(+), 102 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
