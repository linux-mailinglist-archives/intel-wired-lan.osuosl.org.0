Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB6D84346F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 04:16:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF73C61403;
	Wed, 31 Jan 2024 03:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF73C61403
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706671012;
	bh=hfav11Pt2HIs72YZ6zQTAcMkfIa1o4vL5gM1OeYjR28=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=niV7zEnnkAJPh+uj6siUKipb+XVIfRYIlYrv53qfZj1ORZ22+fsf+TGwzZMnOecnX
	 jFL9lACJyTJrWfcTFvQnTcrfFqeghe99XO1kZY0yczWQIefOQQyDC4r0Kq9VFCj/xP
	 0YdkoTZEiZbq2wlIFVNpZODfcbXucFogEOHdHq2W5KDFIYZZRK92tSyFfcTUtDseHA
	 7AmQKF8cOwhCI0ijb4uRZtYN270eB70Igkhw4/O4QnSDiV2ctVV9WxIbxQp7jVk8Y9
	 KL9nX5Ym2T3+RLyZ6fNk1D3Tpy27hCAk2QxoNBaTFPLnIDQw0SYTw9bUKf5cu2ztBY
	 rm46CF8v6FoIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lpuBKITgxJXW; Wed, 31 Jan 2024 03:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B00D8613A5;
	Wed, 31 Jan 2024 03:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B00D8613A5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 631C91BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 03:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45C1683F8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 03:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45C1683F8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVR5a1J4JwIk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 03:16:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B59683D15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 03:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B59683D15
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10571570"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="10571570"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 19:16:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="3895166"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 19:16:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 19:16:38 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 19:16:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 19:16:38 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 19:16:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDEiXQ6BOw3nrXxkvlSFpS59Nm8Eh+yIO9dEhDXjMpW3gbsu2sp2x+W4i20DECCLBPMt87zutORiCXD+/dYcUoHny4CeLmVqK4o27O9OqDstzWf+OMkUYXdBUWtpLxtDd4jWZlI9Ga4tZg2BFh28NbYqUHweo+7/3edDJ/dSsaC5vdG1c5ud7yAHz6nVspPihk/AV1Kzha1cTmGBgtoWmyLVjKYwy5T9yFktNRv2q7kg4MgUMyx9Zn51uCCiJ4O+GylYUWG0BWy4lUvviHib20Ef26e3uTZPavebeZtpG0wcYLu/g6SePU1J08Ma1zsfS5BRoAxDGKxlOVx5ZA9ooA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hfav11Pt2HIs72YZ6zQTAcMkfIa1o4vL5gM1OeYjR28=;
 b=NmwDuyFJ54XtyPBI6TgaKn1Mh1MEl009IDE7Hbuq5AuwxUSgZD41ivWYhnoDLuhnbrQgFEOmjMLlY3cKq9PBOjY9+y52DcQMVafz1tN6WJufYLIPbL9+cOthUkYUHeSeX1d+TNhR9MxSMCqFoELi3X/BMTv4k3/T9iRpTdY7LtLAQt30MBv3KuO2hIn+rO8jpjih81N5RliW7ATQCBRt19fmg12vdRAvxD1m6E4fjH3Gs/RJ3KMxT6+9GEEGI9CcHEcdeswNbBWU/ZU2DwA70ISB0DDygbl3BVRD1ju8MgSBN17gjrI6Fdw7HO54wbiDK05oO0Ki5Lnq/le6iSQewQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by BN9PR11MB5404.namprd11.prod.outlook.com (2603:10b6:408:11d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 03:16:35 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::42fe:dbf5:e344:f60]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::42fe:dbf5:e344:f60%6]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 03:16:35 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: make
 ice_vsi_cfg_txq() static
Thread-Index: AQHaTfOmYWZ9VOqHHEObCaIasVV93rDzSuiA
Date: Wed, 31 Jan 2024 03:16:35 +0000
Message-ID: <CH3PR11MB831373EBBBBB792631610427EA7C2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
 <20240123115846.559559-3-maciej.fijalkowski@intel.com>
In-Reply-To: <20240123115846.559559-3-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|BN9PR11MB5404:EE_
x-ms-office365-filtering-correlation-id: 605d7099-dec6-4f7a-fd0f-08dc220b07e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PPXhjgW9uFbxM6hmJl/SkCsV4JsYjFMEgSB3q19o8OoNZE7y/OH1j9jC1GVJRU9DqRwsnxlEMgMkOtmSRsVrAaxhGA3w5qCeY6/C4SMqM1MX+W9yGYqcxFxTs5hSZMzDw7W95IFDgLDPX5zJzaWnlU+mtDnHn8vdUuyJcamthzdALnkpdNTIXRkbA5rITmEf0sDU5lQjghn4GwZ4ooTZehgELV++r64V6fVGdhmgSqqigCSniQGtj5+1dr8J8rb+9DHDp1MyWC5Q5TJZMNufIo3i2Cn7MymEy1GHgcU7xM5Sg5De6yy9mNmr/7x4iZwBNH8q/VeR70Bv4GpPpI9UCqF0cZs5kXv0dg2a0cUv/LT8uWnKQAL4Ec5KSsWhSx8/ZBgL/0FUnnFtLR5xUa2JbqZI9dfU1B0+et9sUuB6gW7LpWk1o/4JOrSEGv+lsh0COs7xrxgsu4JYSwwg9JlyTUcdOVv92piaI7sojy9tYChNj6Go6Iwv8dGrkpqLtahTUx55lMpOhYFh8rQNYt28/Ns5YW5MOYDAmc53CarV/mxACc3kreSJac/ZG/D0gc2XLWEFfWIBwmF8rIRxG8r8E8S0aWYKhBIp48VDt6C+wDnYuQPyxL2ifYvVkAi/Tc19
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(396003)(346002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(7696005)(6506007)(71200400001)(82960400001)(83380400001)(122000001)(38100700002)(55016003)(9686003)(86362001)(33656002)(38070700009)(5660300002)(52536014)(316002)(8676002)(2906002)(4326008)(110136005)(66946007)(66476007)(66446008)(64756008)(54906003)(8936002)(76116006)(66556008)(26005)(107886003)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MWi0n1z3hCWXiPypr2lW6EpakRF4z0DFoI5P57XNoH44yrfGlM4Hg+r3OWZn?=
 =?us-ascii?Q?3BucSVeYsZEDVZQfXklFWRaOcML0x7nMe2D3xnvnOmgxhoXCYt5o6TR27opW?=
 =?us-ascii?Q?DNlLoj5kIeMOjkeT82XRqk0j8soy9+wAY8Vh5Gna+R0BbvVe21QSaLslMMPA?=
 =?us-ascii?Q?CCirRRpYjjuAMn+vpBF28q2wlcL/aQdUn53NMczUp7eiTdKHbGxn3CHw8bXo?=
 =?us-ascii?Q?4QhuS+I3btuuKJK9DxuCJiyuZ3owUrGYmzG8HT5/ioRbT1/YU2uBLLEoFYFN?=
 =?us-ascii?Q?nnzFgA63XGthyu8mt+1ASktBWipC6ksw9nCY5rw0mbhnn6RbwBnGgl+sMA8o?=
 =?us-ascii?Q?aaj01mavY3EPoNA36fI+CBiqI1JsHM724oX+HZWKFjn1KHNkpDUGytS+X8EN?=
 =?us-ascii?Q?YotTh+lxGOGi5hz8RLEnsIu3+EYsJ+lvpyldBE0oqigllqIbqsGs4BTJZc6f?=
 =?us-ascii?Q?bij41Z7cWLz9M4eXnewawG5e9L/iBW9qTL63GS3jZ80Iepwdi9VPL2gYOKDf?=
 =?us-ascii?Q?1EK2tgPTUH5UhcKqAGA6bFITXTKJ2gFOXocsvVGMeHVHg/DyqQ886nXWELXD?=
 =?us-ascii?Q?y0W1LEa53YwdbXYHIPrKWSMy6apD7deRh20eNe0itYGjSB5mn0u47aEGvH3q?=
 =?us-ascii?Q?uN+ZA96l7dtrtVNdq6r4uzFJJMNw8IwU/L+/l873IGOHJZEJEtX1YPnRlNCz?=
 =?us-ascii?Q?DDyQBJwvHto+42QqElYsvLBTJQPmXRQl0TChi/L/C0Utn4toRcAtYSlsZMjz?=
 =?us-ascii?Q?PoWbb9uBoA017ZbhOeS9DR7bFwIX2XI2drrzgdv0IiUcUtc95iaFQiEPMsTI?=
 =?us-ascii?Q?oYR+X79zunL1Xs5uhArc8qjBrG0kOSoinov4bL6KZde6O8uRFLGf4SbJtovP?=
 =?us-ascii?Q?9zu/BBlJgiL7lm8mU4omPN5WrPBo2UF6UYojfBnkkE9aDdEGZGtgpr4VR8p8?=
 =?us-ascii?Q?DVHzl7kQxA4Rt9vdvpBUX2lRy/rlHjs5s5lBtp/K+LlUpvRR8YjyIveMnoDP?=
 =?us-ascii?Q?rOwiBYP6WZjZgQTtHzV2sc6oBnttXNG5f8j4NwPvRLtMtLDuEIiv4ZpUwbIA?=
 =?us-ascii?Q?Lwi6uYREGxmusBN4KeNe/1liCPOV9gIZg5E1AiPtenMvLZyCRDSXUEr8p0l+?=
 =?us-ascii?Q?kqISDfA9vvTww9XYOtLPIEADhTFkHvvshwJicW3MsRxzfALwbU4/isiNj4cU?=
 =?us-ascii?Q?avt1ARuSvv47bv7rpakJjRkKdeDZBvwAYY8XwifcyaIEWUoM9yjr63Ritsxt?=
 =?us-ascii?Q?IivkiPL9o77faDHVS83ldGpHqg7S2NeVR6WemOcNkK32Uj2zp4uIKueFFUha?=
 =?us-ascii?Q?sQ3dd3z7bbpSRmlUCKZwd4Aj95twMnJCwvtU3eVv6fqilZRHujZTjh8XE9GG?=
 =?us-ascii?Q?xgnnus2/xnAoiSQYupUFkM+QAjVPjdIEYjnG0eyOLt0UDiP3TFORDr7D7mdg?=
 =?us-ascii?Q?HzTZP3OYp2ouY9hvWSIeHHmlxgeGL5mIAmM+CwjGifwdXkUO1Dqrk/umAPVs?=
 =?us-ascii?Q?CLUQbpihsxFw2Rlg9BD9l7M0PjqPQYPEbCyLmHtwqmWYI8V4aUNT9nnl0zTj?=
 =?us-ascii?Q?m6F9Hh/xMhIlcGaay2ewCUcvmTXNHVkiQ8NiowES?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 605d7099-dec6-4f7a-fd0f-08dc220b07e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2024 03:16:35.1994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0teiz0v6eBETps4yCtxytY8dn6ToGPG7c/5+KG/GeM75CCKnnOElVTrtylixlTjRD1WTPiu7e1s+d1g49PWLAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5404
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706671006; x=1738207006;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z5ksI/L4BxY3ni/a0bbLO296qs6p7whLj3mLNGssXn4=;
 b=LoUb8yRlCBF0VgVQfg+Epyosct1pwuCjTsl0vOoG2LxjXEp0YvgNCeF3
 PJLOF/75kObQZ9TRd2bUiVE2ncZ98AXIK96/+/X2Q8JLOZPZIJqc2on7D
 98R1x5cvUmz7pq+Dhl25HYEnZ0f7u1ZF0TzuQ6CSsy72WDrm5O1t81hoY
 FfuzsErID+mUktw6Do4/HTS5TYZwgU6CUcJCAanI1m2y9+0fXtU6IkebJ
 2a2iiYWdjCELqdOPXF8+eelvE13gj10NiS1iR4Yt9sHp9K1iV9hbqLDnH
 ot0fEJn5nr/SYGv96tO+uvCZxS5HR23Gp2OPBaPdzAbqVCrREwsTApXqi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LoUb8yRl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: make
 ice_vsi_cfg_txq() static
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Tuesday, January 23, 2024 5:29 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: make ice_vsi_cfg_txq(=
) static
>
>Currently, XSK control path in ice driver calls directly
>ice_vsi_cfg_txq() whereas we have ice_vsi_cfg_single_txq() for that purpos=
e.
>Use the latter from XSK side and make ice_vsi_cfg_txq() static.
>
>ice_vsi_cfg_txq() resides in ice_base.c and is rather big, so to reduce th=
e code
>churn let us move the callers of it from ice_lib.c to ice_base.c.
>
>This change puts ice_qp_ena() on nice diet due to the checks and operation=
s
>that ice_vsi_cfg_single_{r,t}xq() do internally.
>
>add/remove: 0/0 grow/shrink: 0/1 up/down: 0/-182 (-182)
>Function                                     old     new   delta
>ice_xsk_pool_setup                          2165    1983    -182
>Total: Before=3D472597, After=3D472415, chg -0.04%
>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_base.c | 76 ++++++++++++++++++++++-
>drivers/net/ethernet/intel/ice/ice_base.h |  7 ++-
>drivers/net/ethernet/intel/ice/ice_lib.c  | 73 ----------------------
>drivers/net/ethernet/intel/ice/ice_lib.h  |  6 --
>drivers/net/ethernet/intel/ice/ice_xsk.c  | 20 +-----
> 5 files changed, 82 insertions(+), 100 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
