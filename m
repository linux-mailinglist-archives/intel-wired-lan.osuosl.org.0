Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBE07C6AA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 12:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1C3E60D7B;
	Thu, 12 Oct 2023 10:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1C3E60D7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697105566;
	bh=zFGQzAgZhEnUR9+FbBaphq8Qx8gRab73PrWlf7PLtZE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RIO94Fao8okvgiyRnxfBXA96c0Y5270LNPdzu3XeH3koY4Rr0W1iM/51isul2bDuD
	 Mi3IcirJbImoUzILBRoSbCrH2vc2pW5CLNP0Y+xSFKHgPrgTo+o3Lx/TZ6ThNYFT1U
	 /0jmSgytUMfOfnqVZ53R2reLo47Pg23/QrstjZApU95SSpB9lELtD6C96RWpMs10iJ
	 Av9F9WNkpQJEALbTZuyk069hJ0/Eb+X/y2/mmA/hTIrKI3Fjqq7rtl4kGpQhtj+4Q1
	 nwcY+73ojThqy7QU7fxyQH6RheodYsiNvd6P2o1nwTU5UiGH640GGhIrbWaUxDVqZ/
	 CKvg/G21oTN8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w7tDpyG5sAKU; Thu, 12 Oct 2023 10:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1026F60BC3;
	Thu, 12 Oct 2023 10:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1026F60BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E8BB1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 15E1860F3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15E1860F3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwuLRoNlBrvz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 10:12:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D76E660E34
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D76E660E34
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="365158474"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="365158474"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:12:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="898036455"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="898036455"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 03:10:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 03:12:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 03:12:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 03:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cRE22b2/OnlM0dprXHA4KMBYF7+mr1F++YB6jZXOspbkCU4xGVrjwuE7v18Htq0amNyVVPirSJ8Yvi3zXpbmMa+owawxac/csyFuQ1N5q10VKMb06yl6PQPLGV09k6R5nZbLGIkeKBP2Ojg5sXNz/Lg56hwS8miIewIt1LHjXnOkIxM0zLg2L22fjczhSRoZ1C2usLcL1OcV/6TYg6czgbnySVhp2ELzU7AGeq/kfksuQzxdggZKwZHh3ZQMTdIZ+/ZE0Oj1PDXL3zvwQvqhRCj2H0U3mNmyGcOnUnCVwdkxMVeJpsd/BiiPdtVmben/ZeKM+7CA+rdUqhcdbKdNNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGbmscm2679FiOI4G6gSJj7NC70dkHXiIdJI787+/tU=;
 b=Mpr6+7fpSnVpqSO+2/JppLIPVkhYmppwF8S/2FRkFAZ3087wT1klet012Hz4x1EHbS1/en/5CJ8T5+K66CnRXoiLOxBfnaWqT3w/h44yRUXr3Aa6GE4D5cabCT8medlGygaWDv/0tmSHQuhrB8lLY6xrKwcN7ElzJcu/CLXD1h6Diy8Vpm1JXGBz+Z+MafJyyKb5T3DsUB3vIGxfP/WkwtQjI5yGbMgysoykC4li+qSp5yxI094WGPNPm/78DFMIifDL33rTDHotCvs3OJGAh+JM8kPdy8dnUUlyovsV3DTgFhk9dM/IW5/SXLRAuziIep6yZxsCqZhNTChVHVU7NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB8251.namprd11.prod.outlook.com (2603:10b6:510:1a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Thu, 12 Oct
 2023 10:12:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 10:12:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format
 warnings
Thread-Index: AQHZ9imWOmpOSesagUKJY+axTP6BBrBF+wZA
Date: Thu, 12 Oct 2023 10:12:26 +0000
Message-ID: <BL0PR11MB31227F639C8410929E9C5D35BDD3A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231003183603.3887546-1-jesse.brandeburg@intel.com>
 <20231003183603.3887546-3-jesse.brandeburg@intel.com>
In-Reply-To: <20231003183603.3887546-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB8251:EE_
x-ms-office365-filtering-correlation-id: fc3e3b3b-3be8-4b7e-c40c-08dbcb0bbc73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RKti7E/NIssirW4NZc+ajgra0yvIneDm6Pk8/1oB+9zV3vqdAGVHy1+veu60jUYTdvDsR9Jbm5pnUJwX1tVe/VmhNUY6dwBR/eBQz5K6olKZ/8+0XSm9K+VnV3pxjtrj2Bs62bFGoxIAV0jr5opuBvu90Cqa58HaBl9fkOCZ40RZivOeGA1GjtnBY8wpJAopwQQgvzSHW2fXmEUzShgobLVckGrMFOSDCmkc+61d+oyNHB/rgAW9m8SdTSR33aJgTnG+DRamTfcWcIJIn0k0gBf7ndf+uPQflP8yjY/wsqHOxMRREmpiBEN/XYS6WQlqYjG3plIMnh6CsHGIsFo4boRJoYbWNuV+p4XyH2IqVj0+dD4ks1DoLvdcJS3Gt00KTDb8HX+zQyc86KwhMvt1wCImCxFQRB7A1v7IsYuV3haa4lqJ9gE7W7boTzipoXzY93ZJjIV5tWsTFB1/NZyzwF5jGCM9POAZIJIVStEqnFdYh7yMeIBPgj2h/UUqTYvHQJ8JZ/4kM8UP4yY7uoayE+0bTk+EC8CAM61IIjmcLgSr3ALWORfDLCnoZGWiZtUtkv2DzCFCEIy5Fmk/3vlVPS6NiyRff7bMsF6W0SVx19uJ3zxS14U3JQjKca5WZJkj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(66446008)(107886003)(54906003)(55016003)(478600001)(71200400001)(53546011)(86362001)(7696005)(9686003)(38100700002)(33656002)(41300700001)(66946007)(5660300002)(122000001)(66476007)(66556008)(110136005)(64756008)(6506007)(316002)(38070700005)(82960400001)(8676002)(8936002)(2906002)(4326008)(52536014)(76116006)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UezJ1X3MSzjHiEdkUPvFXseJbRS3Z1DrhGF7/+QgSAC2i6mYF4QltnqLR/i3?=
 =?us-ascii?Q?H4gFIBIrVzhehnX2CQ+efl4RS/Mz86w8FIBCJudiSh5eJk5JFd3ZyJPU3tER?=
 =?us-ascii?Q?SzJ2iwMI9bsINgYpU+T8YN5AFlr/Qsi+YlzmJgCwiEOm24EUS7LRpMZB/gAJ?=
 =?us-ascii?Q?m8RUwLqMhP1QPFya8svCmyw6z91XhpXJosCLBU3PrgOVcEVkUVdXpy4L+EQW?=
 =?us-ascii?Q?Zcy9TI6VYWkucZZS8xvvnlFzO/p/d581ak/XJg7k2DFRo34hNSJbM+vaX/+O?=
 =?us-ascii?Q?ponMy7eN63NfIkq4arTR+ube3nz4cGCngo7e1HtxEGJwLLMtGVcVU/RC4c0L?=
 =?us-ascii?Q?Q5FXZC7H62PG9q1C3GxHd9pvpjIWqV4tB8NHBGCquBjsCznGPJBSZhpZ5K2x?=
 =?us-ascii?Q?wGhRxwQEPDnjYOtZ1Re1XqSxwp6DeMil9gfHbeDlc4SG+Ax36yIdszMjoM8X?=
 =?us-ascii?Q?Pj2rWMYuxIFF/G18GO4rE31aHeCFrPUsjFO5pSHDHjLB89Rtj8L9Pk3HMQMx?=
 =?us-ascii?Q?NG4XYhbMBjHgdgyytgHzLLnGWOYRlokPqRCis8MMxu7UE0bV8C91GrAUdQlf?=
 =?us-ascii?Q?uPcbLw+1l/Luxz6VRHxlszLP3IsYLBTrPlMjqnvUMOuGXE6BbiPLRWRFSiK7?=
 =?us-ascii?Q?JkZEFZPdLGZD1Fb+7tfspbTFIzA3n1dX2dPyCUYDso0C9Dxu9QEkuCf39qWx?=
 =?us-ascii?Q?G3CRbHa9NpI/9AhvDNcb1LV6kHwskc0lSnPni60md412G4C695NMlZSc5zDB?=
 =?us-ascii?Q?P7zvLWrxNSe+8oyf5Dn2uzLZ7Hz5NREeTAvSGYA95jghcgLqZTsP9Sw5Ab8s?=
 =?us-ascii?Q?aewMjqzsve3233U3xDMV6tZHdrlo9qpK1NKSgv5bjmc//he51p3ZaKoByfpt?=
 =?us-ascii?Q?8FHbGneKxiqmRQghldhrRqs218KdE1D0j/DWBvKH1cHq+g61uRbjRthwhHTr?=
 =?us-ascii?Q?S6ktbghZ4k6eKQmCC6tB3cR7Eusp6MQteIhBm+DcgU8mT5AyZDWPVas+ZILW?=
 =?us-ascii?Q?1gpTLNCbdBtoYbGrkbTdXOgOwtRkGs9MRQgm4vEvpIFLdrLLrIzqMLVB8r1w?=
 =?us-ascii?Q?cuON6/bBL2kbDzf8ThNIxVxKWuu4pw+niOH04pGQEoXdub0T9nkZPX+INgV1?=
 =?us-ascii?Q?tYgxc060XExunIOR39nStuvCsIQe6xpketB6T7stsPnuNHNJV38FjDE+u8vN?=
 =?us-ascii?Q?4/yK7Rqbphnt+O6tuLsMrF86jASURTBzHkUtrqZBdIxnqJepDa6V55i0Cngr?=
 =?us-ascii?Q?iw8NMN1RvWsKOWGYSkcEUi7IJ0873CAVCmhV5z53H75JXRUvI1rHn4Bo9biP?=
 =?us-ascii?Q?6BtG4uCfqftRiUtzP4OqR2Wfduq2itNKZWYEfaINifW6XGbbuqtvD3vpHX6J?=
 =?us-ascii?Q?Af1wAqApZ5yBhtEUThgR2Fg4QQtBBi99g2IAWw5JxkZwRnRuD7qv28COMDVP?=
 =?us-ascii?Q?L6oTi6aiy4VpUqvqtSfb74fm4fdqR8hD+LA9wFrKJh1MG1gNmo9qDCIZEZoI?=
 =?us-ascii?Q?AylE1RQeSNj1EqUUIDoAJ3WZXX6DpxHuUt3BXu4sqNDsFF+Yz+ZuE+hGzWs9?=
 =?us-ascii?Q?bnyOgvAmXhzPlDRGk60kNAFAMEciMwX300A20EeGymQSHyu6qIq6E9pITl6i?=
 =?us-ascii?Q?fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc3e3b3b-3be8-4b7e-c40c-08dbcb0bbc73
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 10:12:26.9232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +e/peEKCHiStwScdu5blSjblcmoESZdshhzPC5f65LrdO9c67+hsNnO70fFsn5LGkWfGZI8OD3Q99xilVyoVzy1ia0EFnQE9L6yrlWpPPLpePIHuQV41hmkBmHmw/UIZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697105554; x=1728641554;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UbL56/JSDVHuzKegpxrxreyNeqj2U9XpPT8jGyIgk34=;
 b=EVsUree7oXhr7ST/+SQcEJ+4AQkh7nBBiHedNjuAJlRGhJUxOjuu/WV0
 ZfmLvkP9FpNk2QL7NDYlM8Y7y+hToXuBWUhS08FvINEls29Jlm7fKoELe
 WiWXbUZOXrWvNomLpR+yTNW4sF8LjlMpt84idItxrP77Z54A4TePfLjBv
 bV6cWGwUoVTOfOkZmtMgEJIW2jlvtIy8Db3zDIMMvPHagEzynFlBcujr0
 TECI/EaO9mt7rlmMs1AUMXnuYxdZSjYodzTQGIueoKau/a5w96fVW6fmm
 NtlFz+czTjN+4Ju7ZN8uQDLEcpQfYB0Cz46aTF0Idi+C36J+R+8Y5sy3H
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EVsUree7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format
 warnings
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, October 4, 2023 12:06 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Christophe JAILLET <christophe.jaillet@wanadoo.fr>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format warnings
>
> Get ahead of the game and fix all the -Wformat=2 noted warnings in the
> intel drivers directory.
>
> There are one set of i40e and iavf warnings I couldn't figure out how to
> fix because the driver is already using vsnprintf without an explicit
> "const char *" format string.
>
> Tested with both gcc-12 and clang-15. I found gcc-12 runs clean after
> this series but clang-15 is a little worried about the vsnprintf lines.
>
> summary of warnings:
> 
> drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c:148:34: warning: format string is not a string literal [-Wformat-nonliteral]
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/iavf/iavf_ethtool.c:199:34: warning: format string is not a string literal [-Wformat-nonliteral]
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:208:34: warning: format string is not a string literal [-Wformat-nonliteral]
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: note: treat the string as an argument to avoid this
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: note: treat the string as an argument to avoid this
>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> clang-15 warnings before the patch:
>
> drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c:148:34: warning: format string is not a string literal [-Wformat-nonliteral]
>                vsnprintf(*p, ETH_GSTRING_LEN, stats[i].stat_string, args);
>                                               ^~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                         ethtool_sprintf(&p, ixgbe_gstrings_test[i]);
>                                             ^~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1416:24: note: treat the string as an argument to avoid this
>                         ethtool_sprintf(&p, ixgbe_gstrings_test[i]);
>                                             ^
>                                            "%s",
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         ixgbe_gstrings_stats[i].stat_string);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:1421:6: note: treat the string as an argument to avoid this
>                                         ixgbe_gstrings_stats[i].stat_string);
>                                         ^
>                                         "%s",
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                         ethtool_sprintf(&p, igc_gstrings_stats[i].stat_string);
>                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igc/igc_ethtool.c:776:24: note: treat the string as an argument to avoid this
>                         ethtool_sprintf(&p, igc_gstrings_stats[i].stat_string);
>                                            ^
>                                            "%s",
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         igc_gstrings_net_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igc/igc_ethtool.c:779:6: note: treat the string as an argument to avoid this
>                                         igc_gstrings_net_stats[i].stat_string);
>                                       ^
>                                        "%s",
> drivers/net/ethernet/intel/iavf/iavf_ethtool.c:199:34: warning: format string is not a string literal [-Wformat-nonliteral]
>                vsnprintf(*p, ETH_GSTRING_LEN, stats[i].stat_string, args);
>                                               ^~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         igb_gstrings_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2360:6: note: treat the string as an argument to avoid this
>                                         igb_gstrings_stats[i].stat_string);
>                                         ^
>                                         "%s",
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         igb_gstrings_net_stats[i].stat_string);
>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igb/igb_ethtool.c:2363:6: note: treat the string as an argument to avoid this
>                                         igb_gstrings_net_stats[i].stat_string);
>                                         ^
>                                         "%s",
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:208:34: warning: format string is not a string literal [-Wformat-nonliteral]
>                 vsnprintf(*p, ETH_GSTRING_LEN, stats[i].stat_string, args);
>                                                ^~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                 ethtool_sprintf(&p, i40e_gstrings_priv_flags[i].flag_string);
>                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2515:23: note: treat the string as an argument to avoid this
>                 ethtool_sprintf(&p, i40e_gstrings_priv_flags[i].flag_string);
>                                   ^
>                                    "%s",
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                 ethtool_sprintf(&p, i40e_gl_gstrings_priv_flags[i].flag_string);
>                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:2519:23: note: treat the string as an argument to avoid this
>                 ethtool_sprintf(&p, i40e_gl_gstrings_priv_flags[i].flag_string);
>                                     ^
>                                     "%s",
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         ice_gstrings_vsi_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1064:6: note: treat the string as an argument to avoid this
>                                         ice_gstrings_vsi_stats[i].stat_string);
>                                        ^
>                                        "%s",
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                                         ice_gstrings_pf_stats[i].stat_string);
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1084:6: note: treat the string as an argument to avoid this
>                                         ice_gstrings_pf_stats[i].stat_string);
>                                         ^
>                                        "%s",
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: warning: format string is not a string literal (potentially insecure) [-Wformat-security]
>                         ethtool_sprintf(&p, ice_gstrings_priv_flags[i].name);
>                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_ethtool.c:1100:24: note: treat the string as an argument to avoid this
>                         ethtool_sprintf(&p, ice_gstrings_priv_flags[i].name);
>                                           ^
>                                            "%s",
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c   | 6 ++++--
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c   | 8 +++-----
>  drivers/net/ethernet/intel/ice/ice_ethtool.c     | 7 ++++---
> drivers/net/ethernet/intel/igb/igb_ethtool.c     | 4 ++--
>  drivers/net/ethernet/intel/igc/igc_ethtool.c     | 5 +++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
>  6 files changed, 18 insertions(+), 16 deletions(-)
>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
