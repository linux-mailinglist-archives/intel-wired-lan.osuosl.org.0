Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F534F223F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Apr 2022 06:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49DD360C0F;
	Tue,  5 Apr 2022 04:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EpGqe6opLq-g; Tue,  5 Apr 2022 04:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3781860BD6;
	Tue,  5 Apr 2022 04:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76EA21BF369
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 04:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6430281DAB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 04:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ioUTOWs3Eeki for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Apr 2022 04:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7FECF81DA3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Apr 2022 04:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649134177; x=1680670177;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nePmA9gr52/pPJwTLKXXaFCrFXoGMPrikN449lqw6PY=;
 b=CMAmox/YH7Yzla3IBUKq57o60lnxpIqLbo0/SCM4kMh/rpl8MuSOkEF/
 O6j3JdL/4xaWvX50ns+AyPRCQElJxlhnRBU0qBcKnyyqCa3fCH/XBQeRj
 WlxnY5IFPTFgpQjikns4rG7nXy+zfIXEwG/fFq9bFxJRVd7XwevaMMzZh
 O+qn7mOomkI2F4M2O9X34U/KzctWYZWqSzdqFaXHEKHnYC2kTCo0I5EvN
 YUiOcUDQFtCppATHKKF7re/kIagO1UUa5vYG6M0Cu7Lxq9FjYNYHz5k6h
 pUQvHCbmvqqBMBL4xdUEVo8fdRLm1gHF9sCZkehR/hiy/qgy3IoyNX4W/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="260652617"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="260652617"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 21:49:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="721906228"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 04 Apr 2022 21:49:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 21:49:36 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 21:49:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 21:49:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 21:49:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJZZEM2UQio6WghmLGTUi5ILPJin5iwLnsd+vrw7TzooFAezezbqDNh/CybAaNPWJX84xeE45rAq0dv9rH8UPB5oOxBeW3RF4PK7GOx7CwwRgt6O4LMzcWvYNLwFcZcawDmLZIFosXb1y8x8tIf31mFC+7sWnRdBr+YIBIinKfeUCCvXRyxF19eHHxwHc4LXLLvbTPhMVCgKe17CXaK3oEs+B+fu3pMQRCOOaXJdXqiKQTKf9DmD05XUdWe/MEuCqKvNL5OasFCWhMXRMz+DMPoxDJpNqHcnF91wc7vfyTLVvhRQ9/+Q+2pkjnJsCuq7OKxxIyEhbk8jjFIp7kOslA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cWzv20s1sn79lVHkLRlotHS78Yt6T/Y708aEzYQxTlo=;
 b=HEPVUNdNh/mLwXzGja2AzaxhaDduPK0qfPyT9qDpVtccPDYPYegXhUfJLwiKcwlFVLLQ68ZBjrn6V/CjRSJ5SWc+iUgOpNJqevreQnbt3A8Ya36MQ84R2Cx/hiEmHqzZy/pX7LzVXID5ztUDhhxUpMtISTMfM0QogdsKBwWXM93MOPE/6idzqqo37eyNz05LPIHnJPwWFuawYvAMJtbA9SzzRH9NnoZ7YSU1w/n9eBXdvXHr7dQYo/rOePoK7DT1x+YFsWaBOok/r16xagn+ctYV7pR3YfBOZGyS6i0NqmWfqVM/jZNAqTKqgJwmtAmyZRLR429hIulw+RE5Qfujlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR1101MB2270.namprd11.prod.outlook.com (2603:10b6:301:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 04:49:33 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b9ca:a49f:aea1:7d13]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b9ca:a49f:aea1:7d13%7]) with mapi id 15.20.5123.030; Tue, 5 Apr 2022
 04:49:33 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "kuba@kernel.org" <kuba@kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [next-queue v2] ice: Add mpls+tso support
Thread-Index: AQHYOn6HmQTS4w07zkagFnpJeqdpqazg27mg
Date: Tue, 5 Apr 2022 04:49:33 +0000
Message-ID: <BYAPR11MB33679027CBE4CEA415B9615CFCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1647576732-46414-1-git-send-email-jdamato@fastly.com>
In-Reply-To: <1647576732-46414-1-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 926adc2b-e231-4029-f0a1-08da16bfad96
x-ms-traffictypediagnostic: MWHPR1101MB2270:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB2270884852DD1AC29DAE5F7FFCE49@MWHPR1101MB2270.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y0vll9yUCBlSpuuGTDsSQpq832blMsZwM4yoFMtdeDFgC9k23OHRcnhSx3bfPlK1RazZIZdnQkIN0RM8n01FgeWuEdcJ3WNOizswy5tm4cgRVqzCaqhbaoGaZgYt6FEmVrPaGBmEO7iMaV36zsuSHpaS8Q78Uf9a4VHepx3fJjpVnHQMf15efruHjSt+3eptm7X+5DNDIQ8lkdVLPWvqwBrqr1bG9dajHcQX2EC8ZxRnJ9oj/RdtaknTYJTV8Fe/CICzDuRPqldEgDdLP4/H8wGAwiM+9nDM8cxbBhTdDSAaQqF+hmO4tHCXUCFSip00Np79xYbiMhd1yRDpJUJllwZveAy8upo9xtu9c3MyA8nt4cQ2a8bxI4ikU/32pQeBPdaUAV3iUR4pVDSSZY2+5m6ebl5LV6izHZ7evjotKR+xllmG4j0Fao9mBvgDrCAV+5oCNqXgk39op76mg3nqrCFf1yclqhyU8316xvDebuKm7eVSilHErmKnta1HhJ9RK7qTfbuWraAd/nk3YCJ3oOVxkD8OOQgVnsq/aHgovVNAnhp6xdI5P43SZseCUaU1YMRkl1VjwawtbTPHdYEV9pfOYETmftOaY7bI7XX0IeDjSR/PZdyp5QydsqTG87n+lHA8S9zoEZaia96skpmfs2vJcIIjjhJxOKTW6CCWFTx/vFMyaz9hCbrXbANYqeweGAo0Qx0x9TxWIeeDpjCIDw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(71200400001)(76116006)(7696005)(26005)(66556008)(186003)(33656002)(9686003)(122000001)(55016003)(53546011)(6506007)(5660300002)(8936002)(316002)(6636002)(508600001)(110136005)(38070700005)(83380400001)(38100700002)(64756008)(66446008)(2906002)(52536014)(66476007)(82960400001)(8676002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z+SOV9aIoq//0lO6Ze/smc5g+j+Vf6lTo88hWW+xH96hPqfUJGH3NwhyGysx?=
 =?us-ascii?Q?sOpNifzxhbol/ZtQrZ/dZW1qE3gxxrfIbiMg9jKQ/wkHe3QEqhmvML2RZqFb?=
 =?us-ascii?Q?iGU9Xm6qYO7xrXedEXpNv6F18Yw6pNlvXJ/kjTBhG19V9kP8TlZ4fm6EEhtt?=
 =?us-ascii?Q?Yyt8Vaw6MpnULa2cNaquN4yjWTiNn/1+Feb2gTVYdZyT8UWVtlIamAXfI7p0?=
 =?us-ascii?Q?CuPus3HzTxJEtYom0zlQ1Ek1LtL43oK4GsbEP38ONsxe2zvmi6BpFDZ+rQHz?=
 =?us-ascii?Q?jWdQ80jHRKlYr34bbLfeHh3H/qHkec/cZwNArZ4V/MHOwEWP5BtqiMgsE5Rt?=
 =?us-ascii?Q?p56Y9o2+bFXz5qc5srHhqyTkE6FWXJaEhuaiatp72fQcfHzH5dcHJUDEb0KH?=
 =?us-ascii?Q?7fBHLSc1N0v+c+RtuMjxDu2dhp/z2s5rNtfk5G7Rgb73txuF1RZwwX/QaGt6?=
 =?us-ascii?Q?AbrtE36vJTA2YtOLIgMn4eClzpgAmG/RTfcsVvU3GjV/I6AlPVfDUjMrBQ8L?=
 =?us-ascii?Q?w+sBi3ERoC8Wlz7XV+Kp8ct4dZswdlRhMicy8QWmkZlaKfqbAMhPcbn9vbok?=
 =?us-ascii?Q?XqFH25akclZ8J1pl4Xvnm6N0gUP4FDLYZazcanmNJRFZuDQTwJOMhJUPJBxJ?=
 =?us-ascii?Q?8izwH8bp0bCOZvaZxpK/X0ILx0z07GLr24NMcenVfNjjpHS3oUbM7LjDWM0V?=
 =?us-ascii?Q?8bckodVNS8We1x69NeHR4R++7CGc1i9LMOVNwweAEFYeibF8Nl/Gk/MfwvwU?=
 =?us-ascii?Q?6PJJZKJdWj9YUFYEndD6Zu9p/koGSesWQH0B4pMeV7VbSR/X3NbqSe3Kh7EN?=
 =?us-ascii?Q?pCWHdxKanSDEVNbJS4B7rdG/jwdU32JV2+LmxxkUHYidgmdKeTcWnxYUkEsF?=
 =?us-ascii?Q?T+Oulrp91+2HfivsGT8V0nvgacJyzYbsyOxWZSDBzv2h8QsmS4ZrqfStZqVf?=
 =?us-ascii?Q?/hUSjZgo5qH655RaxGEk0rrZZ+plAFMDvFbYP3smXmhJk270aiEz0UL38gZk?=
 =?us-ascii?Q?ebJRiW+vqQqCnwduVT9AAA7hdoZmR73Stl0USO/lZGeKGiqpNLcYveFBl6GO?=
 =?us-ascii?Q?mk7fqroB/+uQJ99N7hyB98OIL1EtuRgZT5wODWTydzSSLiHdu6vMrmkTDSL5?=
 =?us-ascii?Q?Aalac4TTcF8RPiUa68T+AIOti+s6anWIqbYb0SGc/cIdsQAMT7S4boUNnVZG?=
 =?us-ascii?Q?w/YwIBi4rlyLTWu937/raxOrCCeV7hdKHDr+jtRPJDhpWq9RMvV8POW/D7r1?=
 =?us-ascii?Q?xnClTx0y6zEUtRCcQ0vGJs+2ETb6jGLk/fjTnnwK7cdE32lPeggIHTizjZ1L?=
 =?us-ascii?Q?5ifv44NSTXkbKsTFslVySExucY9sRJR4mjTLYQpvOAOIGL0jPRFXApU9iGvV?=
 =?us-ascii?Q?8GZCg9xJx/epKiws4MPC7w+ba2j3wQ0906adU7wjuj8URJi5tNRMbkmsIKT2?=
 =?us-ascii?Q?hbyzc8JAZWIoRNZalN1EOjNoGYka48bpv1I2HVD4qpA+/lJU9zXnHoiH2VKW?=
 =?us-ascii?Q?fVRTXLzrHNYIDAI09EXL4+PhNPPEKrXm/+4L5JumVyg/PRbT3f0PsWXGGIUD?=
 =?us-ascii?Q?ercItJ7iHF0LZSOqmH/P0v88pteUwmXknxPH5vSG1zmEdLi9tCPHbPd5L85N?=
 =?us-ascii?Q?G0s2bVIUWr+eQm+1i94oGO5K8lrVzFvrguPSzLTfW8KF+KPWXSwuL81xLysb?=
 =?us-ascii?Q?ZfWBHmHLfyn2PyZJ7Kz01Yb2NsyN9VJdBHVvTvMujZIOKFOGuKp9Sk+b9jH6?=
 =?us-ascii?Q?ELXksyJy+Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926adc2b-e231-4029-f0a1-08da16bfad96
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 04:49:33.1855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nv4XwzM91gcRF1ul5612RN/aUvTL2L0aClKK+L7XQtaUtDs1QMrEEnlBVvprxyYnBHQ1tPO/CQ0NoIk50niwsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2270
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2] ice: Add mpls+tso support
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
> From: Joe Damato <jdamato@fastly.com>
> Sent: Friday, March 18, 2022 9:42 AM
> To: intel-wired-lan@lists.osuosl.org; kuba@kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>
> Cc: Joe Damato <jdamato@fastly.com>
> Subject: [next-queue v2] ice: Add mpls+tso support
> 
> Attempt to add mpls+tso support.
> 
> I don't have ice hardware available to test myself, but I just implemented this
> feature in i40e and thought it might be useful to implement for ice while this
> is fresh in my brain.
> 
> Hoping some one at intel will be able to test this on my behalf.
> 
> v1 -> v2:
> 	- In ice_tx_csum, only set ICE_TX_FLAGS_IPV6 if ip v6 is detected
> 	  explicitly. All cases other than ipv4 or ipv6 leave first->tx_flags
> 	  unset, which allows for ice_tx_csum to return -1 to indicate that
> 	  csum offloading is not supported.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  4 +++-
> drivers/net/ethernet/intel/ice/ice_txrx.c | 29 +++++++++++++++++++++----
> ----
>  2 files changed, 24 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
