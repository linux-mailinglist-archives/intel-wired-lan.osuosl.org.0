Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 060D862D84D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D55680C33;
	Thu, 17 Nov 2022 10:43:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D55680C33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681831;
	bh=GzaA+XA17dNcajPn4evDGvDRpB8QaIgGkDxZFcMZjS0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H5WS7cIVzoBlYnOgn6iAAkNAljPy/YoYqfiWsT2eO3IxVjdR0rweEqrORUhQQOqBk
	 H2FC3XSwBwExU8CVNWX5YhxwYNZYgmyUTeoauLPPIZkDF9b00B7fq40oAlw/lw3vaw
	 HhtdZxkVyap18eLljHBkAtsWzNAwtbnufR8xbi/jfhEAH1vhnLN/vnaLbbwsCPO4+o
	 pU8AUWT55ZTq7LmxK9ftPah7qDJU2rysra2UK5PHHNFaaVyEohibtdriLDCMebct1d
	 YIc2kMLCcrDICP5K+5pjJw1kQmUGIrRAPJjnBG0eksYuaC25V+crMI0T0nJiBTrfy6
	 bt1qaavp3E2Lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rruVShyUZQ65; Thu, 17 Nov 2022 10:43:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C36B80C50;
	Thu, 17 Nov 2022 10:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C36B80C50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E40AA1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB6994184C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:43:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB6994184C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZCLnx5K5k11 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:43:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D01B54183F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D01B54183F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:43:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="374951369"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="374951369"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:43:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="639757490"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="639757490"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2022 02:43:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:43:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:43:43 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:43:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:43:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NuDZiLQzYzHGQtwFSAMiGSeF9LtqbpP08k0eENLMDThbO54nZ/W2KZ+zgkdE5H/XKMB12UcgRgRBf8ttegSRKyRiN7r41IOabCggXFRPvCtSuUWjrQcf/QCZ0IQJglpYvoJ1f6dFVcz1/+EeiYEFV7cGSSlbGP9lFrl1euCYdeLImFAo/f+qkrRJlERM9zYL0mARKMhUJieDFBYuT9QwNnm0hZZorl3B1uWQktx0ubi0yxp31yfy5h6/qGJWUnvoAAZGI7UKuNhjCbcTfMFeZ9s5SacAMbQ1xOA/tm1r5v/OTTUNJNKAd61xwG8nAGFHxw+WwkN+fOFfqHDXxu82qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btNk1Fn40PUOBNrGPK2ktyCzKdcBNAVV1W9BhKr+iik=;
 b=T5rabjX5FR8wfIzkUcuPQ47qM6GSVVnxeR3yYC9l12vL4jJmgF813sJWmef3YpZvBh30dhs7wrLjvLz/uOD4sXd27mtDAYvrMmwhCTT/oDm5+5cbuz7i9p4EqMJ/hX7doovXUwct7Q+awtqbVFjrVfmwFQWnHM7ZC1D/PJqWaAqbIxfUhz9vdzq8KcxR9WnfkfISW+XAM8aAaVKGMBPIxZoV+NZxImYfAP9xkSsa0fzeGwkUlRi3d0zBxe+C/30CuLvmxrtp0P24D5X5FUAl1iAMSwPgvHRtDHJ/0EoIPXUfv+OsuTfMWZfJcQ09/Up3fs/1S3Tzogd3GjaIV2B35w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:43:39 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:43:39 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 06/15] ice: handle
 discarding old Tx requests in ice_ptp_tx_tstamp
Thread-Index: AQHY79AOyP4TmPdzgE+ybqlPQLyZ7a5DAyjQ
Date: Thu, 17 Nov 2022 10:43:39 +0000
Message-ID: <BYAPR11MB33678386CF9933BFC8B2AC6CFC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-7-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-7-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: e4b5ea75-fe92-43d1-0545-08dac88896ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6gUkixi0764zHfwQ/JDN4G+yur/UAT48jUpwz19axR0L5DgXQ0b1+rbw90CG9QzvK7sPx8P0PncdZWuZP/FVb7QCs37dmI8BLrvffotczTvDyHkhy3We1giEUW6bJiiza1aELVJwMbmAPk50nFbYTIIyzMR4C4dOntz4ci8oRtd6WIPQ5y54y1ONX5Sa7o3pGpAR3j771WktDxkfR8NAtUEUQfi8v95NL2x67+sUBephICkN/JuvojPsaUSBi/YRbnxq5u80AZPGHNe3z6/uGASyktMmE8Dj0Q42ZrO9wU8toPPjQXe7LSmLBMHTF2LTwZJMuhuF8SfiJx8tuauhXqYG9CFyGkFQAvQFc/BSyw78/3J1NujKBcFB3wpQTPpi3oFzagoV2vghJZZxhfezFvyN95iUjpR0KqobzmxhJ/SD9/d5qwoIAEwGHKHTW9yoKJi0ydOX0uF3qBm6kBP/1RqK2hrEXydTJC/k2DhCf/JxOjPPZwEggFyrVdJzYRQN04mhuTK2isI9XldOggHFBsG8yEd9JkvRaixWNrOVCZvYKf3lB+Es2cCc+VRganjyQwkc1wczSAWMCPDAA7phXXbmRvdoLsviiMqOd3CagXcfKJ9zoNGB0pmm9NyOBNygF+YODw08IgmtlAFb3aI+cLRVXZCDTZGOBIQ0/VP4Q4uVt/Psf62ensIpwwha0fShJMI16uzbfDx4cyAV+eLfFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(478600001)(41300700001)(26005)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f49/FGGlf3ClypOPeYmcfusu6JAKP0XDNK8C24y54xZAGNTRtPrfG3ODjALT?=
 =?us-ascii?Q?EFAZGH6rmDC4T55fYJRqvqcG0afk0eiq/inZd0bbfvDNU9D9cDnsYBKvsYtD?=
 =?us-ascii?Q?8J2r2OmE0dEF9ffW/R3HdQiiOGnYuZQ3+bzE7yKUWZstY0cDvoiB93GeGpgk?=
 =?us-ascii?Q?M8/wYFNa9FQXKYOyW6+umaH/XFvUYkEZ6Wm5FzmXQPq8HVJAWGkr20lpiSaS?=
 =?us-ascii?Q?5ShkGtlwuqsgwIo0noCvpEv5ebPLC5nllJlFxq7Ls4en5efC003cOvmPhWcU?=
 =?us-ascii?Q?uzdhnErRV7F14pJ8muEl8xOP1f+Ic5dFNcHfojS9CW5NhcfTSm0i3uUU/sSF?=
 =?us-ascii?Q?Gl1sd0CHMYRq0kDhxrPGjlfwIgTBWjynkxekx03rlecQXqZlcCKsbuhn/JLL?=
 =?us-ascii?Q?OVGewaHQEGlxwhjSO7uadtKDQP76mOxDPkkM8v5yx/Q1aRJyV1QTvot2qXvt?=
 =?us-ascii?Q?X9kQnJCCgKN1/RVM2j7zrY87W236rEM7yhD/JvHcgIBWI93E+6T2KoH38Gqh?=
 =?us-ascii?Q?9up/Br6qP38qs1Z+f+E5+ieTATW5chNnkXUPE0fOtarSwKHqMaYFepWiYDr/?=
 =?us-ascii?Q?wn9Z1o3Ygh74QJ1XqmbYCV9C5bsYvH8YBdvHyV4AZ0DE8d13l1NuWW1JlShv?=
 =?us-ascii?Q?gBPeNminWrB8jEBdxQrs47Q5hBCGQH2AV4kpj76dS8lowLeXvjpuTb05anZj?=
 =?us-ascii?Q?DWWss/sY30RueHBlY8DUrZdk6Pk1v5X/C33vM7ghW5yErhgqAsYfP3A7hBXC?=
 =?us-ascii?Q?5vfFG5jnNs41Tpn0WOtBx+vQFRfvpGacJhXCUVXP1PDP5HEJYenlmFIPtf+e?=
 =?us-ascii?Q?3a6s+tmTLry5Dm0t9JrusjVexolESmvcxsxGDc6FCXcjckNbtTpaOBHGid0i?=
 =?us-ascii?Q?YYvWHyl4nUP4hy95NkeI6P9N9QD4coIOtMlizz+f4Pt+u00ruowtgZsRHGzD?=
 =?us-ascii?Q?e2tGNWglj27rDnxI26mmul5DjHQlN5WYSKFgpOc+yVTFv3jEqXsfycO7t2RZ?=
 =?us-ascii?Q?2fdi1EiUbqUmM8mLqPIKfo0hjQ8YQzt1t3R9mKpp+934R3iNoxi8UzwF9b+S?=
 =?us-ascii?Q?UuJsHwa2x1OlrcY5jOVldm6/IxWS8YULkqxx4NHhOCTpyJvp+7CiPUWWb/EP?=
 =?us-ascii?Q?Gy/mJxGe+PHGZERXFpH30Gioc73Gh58cCLCkhGK3gowLKBBx+R1Cxv84ogqu?=
 =?us-ascii?Q?ZHVFqJPstWJeb6xFTTtORt5gT0E8NHK6wKIsqX6z/YziOP9AYXhpL1QqpkMW?=
 =?us-ascii?Q?F2e80/WzNY3W55nm3kZNkTc/b5TA1+6WLNCQwsFiz3WKIoQwT1NXSzIoHRqc?=
 =?us-ascii?Q?q+sUBHq73dydLtODUsJZWX8OvWvZwqocVG/0ubnvx/FHplwvPVY4w3ewD6r5?=
 =?us-ascii?Q?Np16y6s4YM8g8xN21WWq/Nxpdo46OiIVXd0Spmbj8XLl4mJMjupMOhDQKUQz?=
 =?us-ascii?Q?FWWyKqPez1lyyq5Pd4y1tPUk1gH4HrZzROtlTxU+H51ugi36m8er9jJLc7LA?=
 =?us-ascii?Q?f3hED89akOqhGc9cxeDf977+b8TmQL3/DbgV6JSt4NdwBENEq1vFT4XlLl8J?=
 =?us-ascii?Q?WF3In3K1v1KbnjC/ByMEJY4GrBBNCav+R262+Jxh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b5ea75-fe92-43d1-0545-08dac88896ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:43:39.5088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XsRh5Sonkjr/EJNxo967Dc2LwrXFX7xkwYAHyMRtk68ZGgEgjBlap5bODKUnmNIrD+IU/LCScaSCyzjWi9NcrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681824; x=1700217824;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=saSjweJi1m7uDgoDvwd44G6n1LbRGh2GLVvs/Yntidc=;
 b=mfJTKbV++TRX3c1b9KfBdi+QwXMZWSsU8+pMF87g53p3pBZgDaLkLZUW
 3cYjTNseXcY/SMuNlwJSaBIXhb1K0m0yN4LZiH0dO6i41SbKWkl4tCNhe
 vj8pO7g7dwN+g/Q51tHC+2PqWpw248p+DY1BAk66L+3B0nClC0iXYM9po
 7MH5K1B8/MwawyFLyRgrpH8Ue40368Ij8t8IJYjBRDP7grb5bMrEJmXVC
 oC3Bquns7E95HTh/GEI+vylOdWFqufcgXISPEb8RWrxx4Ek9QZZeaPgyj
 Jg9E1ipWEl4Kckq9rMBItj1BTLeVC1GTTuTs9B0o28s+rNyQXb5GEHXTt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mfJTKbV+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/15] ice: handle
 discarding old Tx requests in ice_ptp_tx_tstamp
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
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 06/15] ice: handle discarding
> old Tx requests in ice_ptp_tx_tstamp
> 
> Currently the driver uses the PTP kthread to process handling and discarding
> of stale Tx timestamp requests. The function ice_ptp_tx_tstamp_cleanup is
> used for this.
> 
> A separate thread creates complications for the driver as we now have both
> the main Tx timestamp processing IRQ checking timestamps as well as the
> kthread.
> 
> Rather than using the kthread to handle this, simply check for stale
> timestamps within the ice_ptp_tx_tstamp function. This function must
> already process the timestamps anyways.
> 
> If a Tx timestamp has been waiting for 2 seconds we simply clear the bit and
> discard the SKB. This avoids the complication of having separate threads
> polling, reducing overall CPU work.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 106 ++++++++++-------------
>  1 file changed, 45 insertions(+), 61 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
