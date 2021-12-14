Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDD5473C01
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 05:33:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36AEC8138C;
	Tue, 14 Dec 2021 04:33:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uglYrf-ATRKa; Tue, 14 Dec 2021 04:33:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21DBA81372;
	Tue, 14 Dec 2021 04:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC62F1BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 04:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8BD1401E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 04:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="fdOiyQko";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="BQXS6nKY"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NsYpaTySrnTq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 04:33:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08490401DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 04:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639456416; x=1670992416;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rajsp+ILB0QtOC8vs3wUsRN2Jfdrjum04D6WXw956v4=;
 b=fdOiyQkow6AoOBnagCR/5xCUor41kvn5tMlEI7sUxw8Whot7h8SDu68w
 8PUuqoz9lbBKD9qgGFiU2Xspc1Qsef4Nmk4sr669YbD1mds0T/38htcbM
 UGIWOIEEqQ4Z1/69TtKciUghzJsOm8UjzYsscCvZoLBaHVBWiC9FdmLpD
 SucVw9FK4fHXaX79g7RYyL7PPT2NaRAI2glxIszbGvXa7PwNRgPj83TPF
 CntTKTnogczTEV8E54pVVrLVPTrU5fAdR4n49s5tMgQCXv/8Jv6WexKtl
 tL1DL4oEtwEJTTTY4IupK1+MWASuOgIF2XFV1NexF7ftqWRRDNN1s4MqC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="302275231"
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="302275231"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 20:33:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,204,1635231600"; d="scan'208";a="752700100"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 13 Dec 2021 20:33:34 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 20:33:34 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 20:33:34 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 20:33:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bZe/ZlJBkUvWEi2OIbTLljbO6kSyVPRN5uDE/ij65FYh1C1X88Da/cAZ3szch3vWTpc0ZqY95CH8oNC6GCZXIhcwfUwTCJ/rk93ZAhnGSG5aVap5wVwOP9y+5gZFv3PAAfunSfMayn5y8y13QYIxGeFEuZ5JkG4iA5JSGxkSmw0Y/CFNPN8EmaE5NY4CJDiQd+RAQrtaijDpPECHzpH/ND/EQfoslhCGCf57Xc9mgf6KDKYySo7x/3DPLNjyR8kLfo5o3bkvsH4fLoZ4EwKZy0hozqdLVVWkfYYQW5X0KlUj4P7dneYktGl1VLIVqdBT3CAUSxuZvgKyNN0Mtl3m8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+Fa4ruvLhrkMVi+OtvnKR9yN9dUu8qlj4h308jCm7M=;
 b=UfnKDrwPykqt0X3SMLj5OGUv6AIBN8+qQnrG2dwc4LdiO5HvbzcHrmEYxTWYfdoeNxGlzn/6YO2WUIZYMUfZfov7yt3/EnpUc8rA4iqN60hcBZDJgqE8vacibJuZDObJvH1dzi7z/bSZ2p7IBm6FAhYewLi0kevrH8/evx1RmrxFEysMEjbgc4PXp2v8bMegh8ibQqQ38lFV75HJblJJ/ahlnp6iDqv5ih5VFYoEu+WdBUI+2W8haEjtYdwd/Ye1I506A+Togj5XgGZHS6msilXdEchYKiILhmgMZ0+xcTjDERRt5Qpe1+ruGwUHHSfpDEso4jzJO4TWkqr5M9HFgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7+Fa4ruvLhrkMVi+OtvnKR9yN9dUu8qlj4h308jCm7M=;
 b=BQXS6nKYCHPG+X7m+BhQ4RHlbxWe4CAkCtIIGPWzaGs4pSMwgJKg6XT1TbsMKxpT5kEPEa37mO/dm0U2v2RDYxiRO9BwhmsOci/+2h19XhTaeyxrcfktoLMmzfrh6C6PNis3SbQAG9A9wCjMc3urnC5d0Ww7XbNQajSpPYfJj/k=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3205.namprd11.prod.outlook.com (2603:10b6:a03:1e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16; Tue, 14 Dec
 2021 04:33:30 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.015; Tue, 14 Dec 2021
 04:33:30 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 02/14] ice: Add helper
 function for adding VLAN 0
Thread-Index: AQHX55twoDasxrsCHECcRVuTNyEKhqwxeBrw
Date: Tue, 14 Dec 2021 04:33:30 +0000
Message-ID: <BYAPR11MB3367EAA2222AF23B6AB1BDE9FC759@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-2-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10d93821-ff6b-476d-dce0-08d9bebae1a4
x-ms-traffictypediagnostic: BYAPR11MB3205:EE_
x-microsoft-antispam-prvs: <BYAPR11MB320523FF29870B8AA6E726DBFC759@BYAPR11MB3205.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 680QfKQe64/9TTBxzZ6sNVZmVr0bZjARR3HL0g/ZEabTJtUkGxto2IJZxz7I9cYGsszQJl83kTbmtXmMEYfwx+Xc5BaLT0BC/XK4fpVov9cnFduplt1vDEfleKCg6fmWmaSG+jXSE04cYdYaylmW91HWljwO/YM/pqw58SyaWo7jFdIfF9HCNS9Z88ZU1TjifWwbupdJPctoQqTl5fyyp+jNxoyrxj3sCwF6u2ykL/1mMAaF5lM4oYaOypGrvPwqvlYKWPItOHU5KTc3gLM6YSkccLBRHwPd59xBtroR+511zo+xjB8FrGItgZ9GSwaHFOoQtkoslhhZYaJrPJX3yxkMPXQBI4fcczmEobYrnlf3hexh7i+HY7W/wBgXCvOUuxtWBuVF41OWY5Qcw4Y+4qHPNZNfGdY5TYsaP9v7jEREY7J+yYVggnYXvVf/ONqF1LQ7XWPpiZmgHyFWOekg85uLcZGavcELA93zqRe9smBS1ZDdahRlssnmEvmBKLrEKVZ1YUUru6l6txw531SysprTWwpF4coIcXwhkLtuFl9JlAReXh2BC25jlHOwu2f0dgUiT+UNunKYm/ka+QI/pGGTvd5KIBo2hvwbZqWVylACZrEGz56bGXfixED9nEQRNi1I7ArTdYxcJamDG2cEG2vkKiH4HOLI36h3VsuPzMcLkBjuvz2iYJc0XRpEvQbaU0PRZFaQGtYUFM9B1EPVsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(2906002)(55236004)(55016003)(122000001)(64756008)(5660300002)(76116006)(66556008)(4744005)(83380400001)(71200400001)(66446008)(6506007)(26005)(82960400001)(66946007)(38070700005)(53546011)(8936002)(110136005)(8676002)(33656002)(7696005)(52536014)(316002)(86362001)(38100700002)(66476007)(186003)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W7g1AcrBAUqdHVQEM0VP3MI7RBonu16fsl7hNkeGQW9hfzCotNMtIcBPHioc?=
 =?us-ascii?Q?RRrSsULCO5KRQRG4r+S03BGrwm5OxQLk73jaiz1Eomdp8pBrG+FoEg68w5t7?=
 =?us-ascii?Q?HAfNYjy4SZq0aQhO2gE7ymW2jVumJfOhk3kAb55xDLU/rttSI4z7Rl5EMDCO?=
 =?us-ascii?Q?+vsnIHUMixCmMsPucCzjRP8WPk86sDzN1h87vCvkv9BgCVHXfTZdBovOQyj7?=
 =?us-ascii?Q?bKUuqJyu+r65jNxtVehkJvTzbqLIf8SdO9Y+OYnt6P+RzG22g6X/amP0Ik4h?=
 =?us-ascii?Q?z7lpi1K1UB3VfEMsbqO2Jzs2Lme5OqnthsTSBmuUxdYQh44WXTjt7PHr5M6x?=
 =?us-ascii?Q?2Hcm3APVwKgX9djceEDSUq43haInRbiU187lNUJ58m2iwXZjfkeo3VqakoG0?=
 =?us-ascii?Q?3GpR/s0vzcxPjC4TEGTFz4dqFz2y/aYLQRAMOn589Frq2jnTPHAaYXOMgjf2?=
 =?us-ascii?Q?x2kckajzSiWHEEYqhni23WBv/IEDQGKkqa2B+YS4u6YWdxME59g8PQe57kQR?=
 =?us-ascii?Q?mKq1OFiJOyKGPcIJUmJCH3z3z36YlFbddmv1fDOzRV4eNRiygjUi2N2U0kSQ?=
 =?us-ascii?Q?k5X3K0uI3mQrf9dxeJM/9V0hhJ2ISACbT4g4YvYjgRzYG7UBbrFB1Oo9skqM?=
 =?us-ascii?Q?AtUE3LtDxTmRon/QTH+iQqLXZljS3uTnOnE/1z5Mm4ltQ3DL39oaVLZXe3Zs?=
 =?us-ascii?Q?D7M2LbZDXg2sanwXyxkGstOueGhqqoItIL5r/U2ltViWJQEyNlurfdRkP/BP?=
 =?us-ascii?Q?KqubAQjRxhVB1I3hv19rdVtNfs8JjBXeXJmb5c9X6j7e3cJqaHZkcPuV/BGO?=
 =?us-ascii?Q?yBLJWu5WDduMJqIj5W1QP1Pr9xQ0rZVCFDGQW6AP+G3/opEXTfFi0xNiH50y?=
 =?us-ascii?Q?Ay8gxqNgczYbThf0+G2gQ4QJihqkyboA5bSGBgTUoFO1AchvI0mz9ww7zU2J?=
 =?us-ascii?Q?x21AeDVVWAcnt9zSb9DxLRmFsfep9XYyPnbB35pBWG479szfBOhfQ3OMJWeI?=
 =?us-ascii?Q?vBvgJbihJk8nRtMTQOAuApXy2wcMyiz938cgbJOmHHJb7+1Hdxygq66UmS7L?=
 =?us-ascii?Q?PV9bSG4FwY4OcyMk/Yr73W6IExxhYp6V1Nt8Z4oTq+Mkevmvzr3+AeOGmb0i?=
 =?us-ascii?Q?51b5AuDIOBRm3Y89P0Fy4h8lN0sLiRKVe8y0s5ed2vgDNwGlCoY76ZWQmdcb?=
 =?us-ascii?Q?Jy3izRNdKMBgxUvbntFIOxlg/5T3NgaNoYkVQoUAFastHqwhSTXO8mjw0EQm?=
 =?us-ascii?Q?LfFsIC+h+1Xs1A1UTPNGl0OPy6wOOq9tncF2IWWZKcORg2wrDk0EqGClMhkF?=
 =?us-ascii?Q?PWtFB9ze48m45FjfBOtrUnqPSq3x9b7hZvuzPxpRgLU61tUIli5VxpIc9Lah?=
 =?us-ascii?Q?UKoDfNSvwkf7HFhX5a+93pdzmSwDjhTC2bO8M4o2qHrEOCN8wZ/gScj0prEZ?=
 =?us-ascii?Q?GKHq8aii1yD4kmwBY5yPB85NKdSj6a5ll7ISl8/3nz2NadIDUDKoD8NgcKPO?=
 =?us-ascii?Q?978dLYV6nsCRGL/5Z7d94p8xPMGTPXJg4PVtgDs9bgN6p2JAgb1sTbCDkir4?=
 =?us-ascii?Q?I/4RiV4LwB8zV0vjQyFc1xudyVCWTCvorUeZehpP+AAZJ6mTIDLl2nHJOBIG?=
 =?us-ascii?Q?nw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d93821-ff6b-476d-dce0-08d9bebae1a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2021 04:33:30.7414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WQznj+b2WosA5BXQj0t4MYPMwT9Lgp29+sxrs3qtNUGzprsp3iDNZv4Pr3v5TaBngyGsbQtsEZubSv10CVVAgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 02/14] ice: Add helper
 function for adding VLAN 0
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
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 02/14] ice: Add helper function
> for adding VLAN 0
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> There are multiple places where VLAN 0 is being added. Create a function to be
> called in order to minimize changes as the implementation is expanded to
> support double VLAN and avoid duplicated code.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c     |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_lib.c         | 11 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_lib.h         |  2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  2 +-
>  4 files changed, 14 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
