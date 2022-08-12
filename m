Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0DDE590BF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 08:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32C3C833CD;
	Fri, 12 Aug 2022 06:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32C3C833CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660285630;
	bh=32Y7MxLDGylHpjVmOGgF02D5tC0F0ejzZY0w+zi1mOY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3TgQuCMRZUQOQeYs9l5XygXP0ZqEi0j38GPBEPWC0c6EdQPz6mB5EN7xZF6JYRLPy
	 +HY2zU5N7NvnDcNHtxVTxtuO7X4AS8bDzOjLcALSheDLUgXaUY0owy1HkvSTCIphIC
	 wsruRf5EJP3zuM31ImxZWUzO5hY9pVJE5bG2WuiKUi6ilH1rOw74giwCBUKr8OEPIf
	 ymfMipx9TinWSu9STBuY4qnLbJ12boVQP2wgAzKQ4s9FKDHSiPPK2N4+IzaeNkJbTK
	 7nk/u3FUVYLwSkxlHZSFosNvJ0WBdTlTDhqqGh6A45x3/vG/uusRp35x+xIGOefQ+7
	 245bsgHXMWPCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Roa3Istp8I-5; Fri, 12 Aug 2022 06:27:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12FF483276;
	Fri, 12 Aug 2022 06:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12FF483276
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5295D1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2350183385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2350183385
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xuRQlmX9unxR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 06:26:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AA2183276
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AA2183276
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:26:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="353276124"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="353276124"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:26:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="605815794"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 11 Aug 2022 23:26:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 23:26:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 23:26:56 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 23:26:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CMAJByQ/w5c1rXAkFfvjtRcJ0KWBskNxTyrnWcdnr1jpe02mbj1lN4vb+tp1OhBi1ejcChHfl/EFgo9i82kpIvgzk3wxBjSLdH1tcoEXiCBbpOjv/jlmz4EIhz+TfZTUECE85qs+K+GaEjXKUbBvjHNv3iiVgspHCsllTmwMfBKfj82vHPV/wfmtilxB3OfFMMq5a8nxA60mOPZY8mjl6umgmGLjuLvlmUSmevqV8fqqKvxEc28m/1hpJFMeBijin3sRqYjSuUix87rDppraE6kk2NzBirGF3m5KCKb6l6KEFrcSMKodyOm9O4FPgg3goJ+g4/Zl96zq46DJSaMIXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jqytw4r4F9EEJnjxfmxpmk5ZzurjHqeVeX2wMdKgxt8=;
 b=SuAB+QKzhklGboPFM8Jv8fSnJoO/ge5h9YHLHN8rRihcWvf12mch8t8H2QVbnmWrGY8lay0jlWK52Zusvk6oSxgF/tzuFYuLf0ElwpTi8OxnnMQSP+OywWTPhGooFobr4roor2aOmkYJheZ0nlCX1+denpK/o5luCsh/9SaoegyVIXFAa6TSM0LD17LiyyU3gtH8gtPpSDsWjqWYDodmQ6URULKtjq8K7QQo/Qgza6Z2p7j3ns3O3i28iRWk4KzcyoQDRQgjYVVN5V3x1PeG6EldUpoDgfbivuBjM/qEoelNPDEEazVaUxoICkqoQpLpjcmFAOW8g4j1Y/PvbtgRYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SA1PR11MB7015.namprd11.prod.outlook.com (2603:10b6:806:2b8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 12 Aug
 2022 06:26:53 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 06:26:53 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: Add 'Execute
 Pending LLDP MIB' Admin Queue command
Thread-Index: AQHYplq9YcrqFjlAmU+7zDO5VxYkEa2q27Ig
Date: Fri, 12 Aug 2022 06:26:52 +0000
Message-ID: <CO1PR11MB50289C533A2D0D3C0F35039BA0679@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
 <20220802102618.31303-2-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220802102618.31303-2-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80deaeb2-c1a7-42ad-9d47-08da7c2ba58f
x-ms-traffictypediagnostic: SA1PR11MB7015:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xr14rZQlF0KIwKXYnWYynivOqcL+LvKZDsofdajcw9nH6zhTt0BYWNFXqI7UFR5IKGk62B2IAsoTqGveF9E4NWredldpKEjdpK3zl79pDaPMrLHTh5SMmEZ4Uz3H0ug54GvFTzjFAX5J69yH5JDub1Iw6s8JjuCNqV0lA0Axjx0OKrDNK7eQkm1BVd217ohUhbKbmvKbvieKH82tEabkfQ51TbTfVKdoGXbCnBa+1Zw+2uo9NrmgGmPEBEJnkkMPkBFE9ImZpaIFWY31JJs1WH1rCwNPSXR5DoHw6wAKOPl/wH126Ami6vOuPGsPEX6Na+0CDtan4DdwyeO9YrBfveV1iamS0ANiBe3Mj+E4vEPrs+xgm1HOokoOBP+wIyAeHqoIQiUzRT+wI1I6auwtP+RfBrQV1KpRd36nNXMlH+abtTIXadbuM7udNzI7pybJrmQdezFUbriYssyQom6oCx+gC+gSA1XIsUez0s4SWCF5Q8vWkSXgdLsOE7dFnBct1zYe+gdGfW6CYtjzAhpPuZrjOAZUW4JjvuitfT9JwKGp4eSebtTFIf7IhyFD3Rq6voaUJejuCih/lVkFL3EQdffbKVDAhKA5KyBC6cyvtLqZbvSxEZ/BJDlG/7MQKaWP5s0NHvhp8mQc9pkXZ/xkorzb0gk6K42HOC0rh2d6pgdmQu3dc6nikrsgzlYiolf2ibxRRuwNNA4vP+WTjyU4x2JxA8Zct5ih8P0w9ILNiv3igovpaMPQ6i7z5NVCqaTft2Nr48MYWfIE4RlZlPErlDbvxUfX5WpBPRdEzRLbLOrcO0qrBqkAloCYvZTi2GZw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(136003)(346002)(366004)(9686003)(41300700001)(26005)(71200400001)(7696005)(53546011)(55016003)(83380400001)(2906002)(82960400001)(66476007)(8676002)(66556008)(64756008)(6506007)(54906003)(33656002)(110136005)(38070700005)(5660300002)(4326008)(316002)(478600001)(8936002)(107886003)(186003)(66946007)(76116006)(86362001)(38100700002)(122000001)(66446008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6pVXzsoATwv/DoU66QasowLTinPW+gW4Uw4J1lBE7xMknQbIayMu6J/d8L0z?=
 =?us-ascii?Q?R5rT7rCHCxzaOpADknYEBAI6WnyWYqN+VO8F9dr82LO1kQbhXTmHvlbX3smP?=
 =?us-ascii?Q?lW+tcUrF6Icie9bVufQdl9H88DcB5NN6uI+iJczeCL1+cqF1ekZz9qF0R2g1?=
 =?us-ascii?Q?DofDFG3oNJ+t98TgrUnJkmyZlPqSXUKL9vSeNPU0urPFhvlRFufd7DAjY/9E?=
 =?us-ascii?Q?OYMdykeGocnVamvWwKULKkKLgI/Q95tPoiE1mRiCqTFSYZtehaKWRPhy2Yb6?=
 =?us-ascii?Q?0XDhP4hECt5Aal2eUn1U/z66MjsBODITqsprMru9xV1/pcBJdlZQs01eHy88?=
 =?us-ascii?Q?r2T0Rzj3UG0JLjlQebUPWP1NWBEF3MPbvlJm0YCUBn5eJNDzJiYdQHnPWjH3?=
 =?us-ascii?Q?ZuBlKcEePdCQiSxfalr0lehjJyWq3rgu3on73TfOwr9Rh2ke0uMTHohsJ+xJ?=
 =?us-ascii?Q?OUAsxJI+T4tfhlChO2zdIBvV7pZ4bnZsc0t8X7/AKWVlxZmrY+hO7hkwmxBl?=
 =?us-ascii?Q?kBBy3nuFKgUNocXUAT40BcLnocC/is4tINNKm3pSMKsB4w+9EXvPH5W3AxkJ?=
 =?us-ascii?Q?Jqbv56rfg5kWWxLtfoB6GlKtT5WdIks1j0Q1xc9hLKHwdrd1E1IMB/jRRtWz?=
 =?us-ascii?Q?3Rrv4aPdj1AYl8GUrl9gBxC2oVSQ7z2hCrFf6++tbyitujMEAHCxvcCt/n2a?=
 =?us-ascii?Q?Hqe1T10MLOQTh+S0QFh+/BdjNUtLahanZWxEjEtRCxYI5TMarcLSDnzO/pfZ?=
 =?us-ascii?Q?YyZJeOKwDKiUBb4upU/2vxM910NgOzvpiZ/TugUNzE2A7cBAHuHT3PcwzeDk?=
 =?us-ascii?Q?GHoYbg2fMe1y8pXOS9ECbNWMamRfGmKHwpMoAQzfYow+Hv1X72hJn1PMLruY?=
 =?us-ascii?Q?NZTMxXTuETtZPsfe+fbz2Y8afFyQomSAurM+Ksja+otFSEInFua904T16jaK?=
 =?us-ascii?Q?wZKmw2ZW38iNWJhAz6G8YsaV1AB8jBquxkCmlOj9AnMfEyY1I3A3ozKg8H/y?=
 =?us-ascii?Q?Wu3bfQmNwS9xwaV4E+uz92dP7K7Bzr8PqPL2PrRqbkFmTjtJPx3ngCjs43QK?=
 =?us-ascii?Q?DgawNKTgyu+UyWAtmlfSP5z46OyhI5zJRPLd2yhE7tGT4NXulcNHE7/B9TR4?=
 =?us-ascii?Q?bRNOjhOW7/tKmwdj+PJGrrdwm2qbNyCH5fgIcuu0nh8pu+dZ7KzpM0rz5iE5?=
 =?us-ascii?Q?ijKnUCmkwfFzADRfVoRQepgBLVXvMenFmCaVOUB/TvsJamsx5GXSwlE9t8tv?=
 =?us-ascii?Q?LdMFHvFvwPE+0o31jrAF7dGZUdwlf0qiQ5XHEcAjE402myF9b4NkzBpPXGhG?=
 =?us-ascii?Q?fetYYaoWK13EXtio8pTcSwzYfMBwXoIJ1+0Bz2eRQ+vu6MNjAm6GKkdId5r5?=
 =?us-ascii?Q?hXYRzYtW6nUjxbaTztmgeNadtD06/vGf8GBBGR00eIhYseE9lOkQ8L1o7A0D?=
 =?us-ascii?Q?C11G266M1Zeqj0BzmQhPrGIgIPIw1qNuQU9wnlHdW+QGCN2zpm7g9RZnMoDU?=
 =?us-ascii?Q?G0ERkT9RQfqFnMhqPcJNCrnsaT0GFYfUvYMTw95oPho5I6sYPcJTTzSq4Mef?=
 =?us-ascii?Q?xdFo/Z+DjD53PHG7T4IEiXWrImteOTOSolBdxWClacCnhqFUXLACgYTywtJx?=
 =?us-ascii?Q?iQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80deaeb2-c1a7-42ad-9d47-08da7c2ba58f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 06:26:52.9123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HRBxg2jzgEBLplVQE4xRAAp5CT0d3/jGt5wXfl6CnHKztdgCQEsPfDY9tRtUXLx30AP2NlHYkXZEnQ7tIbEwmUIj7m8XJJQbUTA/jdICNUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7015
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660285618; x=1691821618;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lpoyr4i0JSYzhU/bFYU1jNFlwKm98MalifJH3TkFLsU=;
 b=XL+WD8KIzCwsm0DCJTcCq4lAae5JR3brDt3m5If8O9nq+atL1R7N3Rin
 jrr27c3O/8HJJZydQIPLkxbXhgxWHsEgzHzOTIDrjUWTGje70nrZb1Z+W
 YKN/xmTiOeSS1oiHRVAQ8gIOLgmdg9FMv76Xm991g3A9d9QWpPOaQNWBI
 L/ySd1+ivpdmHg+ZUZIxySnD+ZJnnwwAL8UHrZlQR2NwcN+X0y7bzeNOU
 e/IHW/A/XkSMF6d/WuPSVObEqKVBEBIMWFWDSkRR3jWLKSFUAXZMDj5wI
 HV8Kjc3FOay8mhuI2tVytiVk+Uj9qj7YsqxTyp/aRqk1nxJSFr/yueJO8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XL+WD8KI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: Add 'Execute
 Pending LLDP MIB' Admin Queue command
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
Cc: "Chakhvadze, Tsotne" <tsotne.chakhvadze@intel.com>, "Arland,
 ArpanaX" <arpanax.arland@intel.com>, "Sornek, Karen" <karen.sornek@intel.com>,
 "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Anatolii Gerasymenko
> Sent: Tuesday, August 2, 2022 3:26 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chakhvadze, Tsotne <tsotne.chakhvadze@intel.com>; Sornek, Karen <karen.sornek@intel.com>; Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice: Add 'Execute Pending LLDP MIB' Admin Queue command
>
> From: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
>
> In DCB Willing Mode (FW managed LLDP), when the link partner changes configuration which requires fewer TCs, the TCs that are no longer needed are suspended by EMP FW, removed, and never resumed. This occurs before a MIB change event is indicated to SW. The permanent suspension and removal of these TC nodes in the scheduler prevents RDMA from being able to destroy QPs associated with this TC, requiring a CORE reset to recover.
>
> A new DCBX configuration change flow is defined to allow SW driver and other SW components (RDMA) to properly adjust to the configuration changes before they are taking effect in HW. This flow includes a two-way handshake between EMP FW<->LAN SW<->RDMA SW.
>
> List of changes:
> - Add 'Execute Pending LLDP MIB' AQC.
> - Add 'Pending Event Enable' bit.
> - Add additional logic to ignore Pending Event Enable' request
>   while 'LLDP MIB Chnage' event is disabled.
> - Add 'Execute Pending LLDP MIB' AQC sending function to FW,
>   which is needed to take place MIB Event change.
>
> Signed-off-by: Tsotne Chakhvadze <tsotne.chakhvadze@intel.com>
> Co-developed-by: Karen Sornek <karen.sornek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> Co-developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
 >.../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_common.c    | 13 +++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h    |  1 +
>  drivers/net/ethernet/intel/ice/ice_dcb.c       |  3 +++
>  4 files changed, 33 insertions(+), 2 deletions(-)
>
Tested-by: Arpana Arland < arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
