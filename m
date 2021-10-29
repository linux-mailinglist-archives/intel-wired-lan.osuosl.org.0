Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E10440468
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 383CF80E1E;
	Fri, 29 Oct 2021 20:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kMamEFUZPUKQ; Fri, 29 Oct 2021 20:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C89E80DA9;
	Fri, 29 Oct 2021 20:55:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 02ACE1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E516340200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwP4HgDB6U7a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:54:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 814E5401E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:54:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="211520731"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="211520731"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:54:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="636937811"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2021 13:54:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:54:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:54:54 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:54:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3oydNUbZsuB6TxQD4CeXthxNqP5Mw+FIt+tvlDeUghUgnYqDaD4eUpwTLvcedQP4+wBwjwSHVmMtY997hpjNKoIkambT3xW9Ej4JEjjMLKU9ewVoTkBjcBUvrsdA7fs9uDlYN6WvxoyIzYIRKWyaaI2ENUqRgiuKQTnqcpdsNS4I1aQ2OHhI2YuWe9FSawwBVFGBbClj972kCu3sxvJHFz1svLW3FC+AujgkyGW8FiMsDJ6nfSM41VARo2/Xy+5v0csaQ7HDMFLVG1JwruGKGJ5G5YsvMZyDL9wg/UeHHcm+zsbjKLzOofkN3JJucFYDuz5JHXkKQCw/6njRWgM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=By0rzbs6PrWh4GnRGcalLGbQs9TqfxoOWBMiEYCSbjQ=;
 b=Eeq236/LXtpc5BSWuyvhtKAdDNBTCWW5UDYKrXqGhWM3i6P9ZqvkoYLELzk1T9Cjn5NzjzMji7kQhjDJQ7aU7B43EiSbZANaiC0yR4diE+H3CZCutZ2qD21ygEzL/fET9y4jaL4iq5+dnG51cQdoueX37FC+bxcmZt+DJkT5VLbdpj7wj6adEP2hIr+iKWYykzs+VEXt4p/PQ1TeuAIIqUrmXKvQk2a/RbEva+ItpzGd2c2OCpg0g+dxCvJLo89OoXOXOPo+jMdS1IxqZ8oaPgTTW+s7trBeegFW6vn56jen3sNy2VqvR4OENLLRFc92JKyrEHUtTFy66o3RNoh8ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=By0rzbs6PrWh4GnRGcalLGbQs9TqfxoOWBMiEYCSbjQ=;
 b=GaEAHAbRwEoygc3leajkJn74NzuLN3PJbYq16lNfQR9fC2pK+2pdofa5rEbLUeWihrQzgxJiepkT9T7BJWTpmBQhoE2VY+XqP6/0RwKt7Khv/w5tMacvjIazfF1c3j2B5PutKqYf1ctdJ7H11b/SRfJycCyIghV98pUBTy/7agU=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4302.namprd11.prod.outlook.com (2603:10b6:208:179::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:54:53 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:54:53 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] virtchnl: Remove unused
 VIRTCHNL_VF_OFFLOAD_RSVD define
Thread-Index: AQHXQ43x53tnEX5lQkecOpkZp3PpgKvrhzbA
Date: Fri, 29 Oct 2021 20:54:53 +0000
Message-ID: <MN2PR11MB42249E6063F76A0AEB11E63682879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210507220911.116361-1-brett.creeley@intel.com>
In-Reply-To: <20210507220911.116361-1-brett.creeley@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10744710-6aa5-415f-cddb-08d99b1e5b76
x-ms-traffictypediagnostic: MN2PR11MB4302:
x-microsoft-antispam-prvs: <MN2PR11MB4302D6D3B501D5948BCFDECC82879@MN2PR11MB4302.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HK8zQxPsyOeAnmw9odYPabVHPkVkQW+Nst6szlJ+jbzQW2WtYzau9EVPk91mIJShWFNhXfFQ2OhX8dZTjn6zeqsy1BbEJAXvxTdwp+QF70cAX2lCJT8N9Qccod1x3y04PAGos12AR8Dt07/VNqlierC8UWw9EZAHVbtMOiGQgFXgSWn9VngAkBlXNYY/JGYYJgpw/tBfu1K093VcFEgSeBcCQpMXmX2QlbtvsK+oN2ijZa9gJBR9VEvoQgCMUT7EG8EwZRXjDPNDLGXn5voCe0gtZBS3t0qd45jBxXsJ4pPy9l9PL0KuDfpTOkm3Qz67V7BP/8BogqnjbwPIAy31FHubZjtwUmzYbnSyUKapmMCbDxSM8+OZBCO/4YwWaAt/Zy2mqbnIFlCRR6RJuNcvLPp8Q/3twWjoDbvAdsNthXavRAv3/lCrE3kL/q1gjfpIcfVSTHeOsOxGvWbI/YAADVmOiGp3yK7JoWE6YvMP6GbEYrOOfvxJbxLRu9l6nlzGQWKPMpN0fmd8hI5Aen2ywc4RXm8koaPR77J1FZdT5gWjB5WKAJrCObA7geIG8EZYceqMi2xo68Xkne/aFhfEY5fvNPXRPgsprPUguitsZe8oyGioQAZQ4GsGeQEhWGf6rByiSZtCsCNpBBYuO5WbMqPzUpe+M1i0fZLXGsxt82BqAUgCzhne03o9DL5+0QIO0PHY8HH1I+zc+y5vTC8wKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(55016002)(9686003)(6506007)(52536014)(71200400001)(186003)(26005)(53546011)(66946007)(8936002)(2906002)(508600001)(110136005)(76116006)(66476007)(64756008)(66446008)(66556008)(316002)(4744005)(5660300002)(8676002)(83380400001)(38100700002)(122000001)(33656002)(38070700005)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zHCStDwLD6/BZEUy01WqezBPLy6JsWTuM9ypDsjEi1WCpahnyOMpN+hvwtOj?=
 =?us-ascii?Q?Hpta79vPe0TDOqutrrQfSjZ5wLA/Unm5Cu7k1gB9yPc1aEd3JM07oPVmKHzY?=
 =?us-ascii?Q?7sjBu+uUayZYXbSREkqh4no+EBFKTaNZHWgrrOQK28wcblohy/ZcyHb3tK0Y?=
 =?us-ascii?Q?k9Qei0s/LalKnBxKFa1YTLRtnzluNme5ulIaoQP2+YecdWdOnggy4itJVnH7?=
 =?us-ascii?Q?pShUgax1NSheVb6OLWPKd9siXlgoodBxAoLXjGW6bTHMo+aBMTtvks5n2eBl?=
 =?us-ascii?Q?PoK2bzi73IdmHU9OCFBDAq0iW3yisHlT3R8md/IzcoqhbeLsjmkVg3l8PmYN?=
 =?us-ascii?Q?n/MArn/3uUnh9PtgGzmvOMYgtxInfLRwXFS5MKC9k/W/hV6l4FumbGLTg/W6?=
 =?us-ascii?Q?KAzM470JQOW0bsxpD2IwkD4Z+Ow0eyuReBxdh0+wtZ5/V07Fpx1jx4vR0a6y?=
 =?us-ascii?Q?Eakw/vGva4KS5b1Fsljw/rQ1ET2iV9K6McNTOrae+mu6XsNsKzqldva9orp4?=
 =?us-ascii?Q?KMY7wy7AjH5/dQ/lE3xqdm+Q6fMof9c3TtAeUPJ+ImXhxsbU4tfsanz8cPT9?=
 =?us-ascii?Q?resJYmfnnwLKKpuqk3qtlpPeXZQ3PC+yIM0KLxwjpRrQp+qovbOjlGUHHSII?=
 =?us-ascii?Q?YCy6AfRJx8oSUmovMeR1xoGxxExHxmcHp7U+r+vytwjC6ldz0qLA9UhiU5pP?=
 =?us-ascii?Q?9AfQ1lkDBoDmRkfwxzkGI1hv4AcxyX8FiR3Bxuya3aSj92sVnLMn8TiI2edV?=
 =?us-ascii?Q?K5NRk9kXkIbwLoJuaWYZki6JYa4vjDGIrD6SwxlAXoego9lzncZt3MjJNXYC?=
 =?us-ascii?Q?2J0rbMAElHGwrseZBxMZ8K3Nfpx5R7PfwRG8HvQklI26VJIVw/Ie7voodY23?=
 =?us-ascii?Q?b1pjwjNMuzYV6laEBIdWtjQGONxLGpVWWP8qHAlePjenWtKlHRPATOa1nsYx?=
 =?us-ascii?Q?HCqCBtibd2dEwQaIlyQ0MieoS5aHztS/TnOfmYuA12LKt8K7MM2EcqwZ2FM4?=
 =?us-ascii?Q?28IowwO2ftIjflRj3CrJFk0DvE2q6pj5R7ABrNjaDQFEVlUo7hhMz4N6yv3x?=
 =?us-ascii?Q?1dcL09wKqVi9YSO/qcc9WTPRRqPDxWQwJzcAM1y3ZTp2VLDc3oE7W/GFZEIV?=
 =?us-ascii?Q?mLiTa7jmAkqWDTC1KQ15PtHkNwIfGm5R+N7WHWB4BVIDDm0uFOpWrOX8oqFf?=
 =?us-ascii?Q?KhI39Qco3WBHDf7nIbjo7Drg1eu/vdz+CLbFMbxyHMx3dOBsrUMa/VzzFZ2X?=
 =?us-ascii?Q?XewA9/BBrCmXmWG2Y2W+kyFWDqqG6uxxfedHGktyj6Y3LCXtjWKIw9EpHnnP?=
 =?us-ascii?Q?otmivbOBteaIWwUOaexP4va9LA5LwvRoAcm7JIMwsPxIvpuceE6KoyoVAesj?=
 =?us-ascii?Q?KOGouPXrPIB5d93iY8nxNuhvvl0/JZEPrjWe7FCKMsJe3jXN0rw4r4b8ovZf?=
 =?us-ascii?Q?IpJ2uzbTDgdjoEB9h5+a0yPgX3wLyVyk0ZO0MaFuA6/7Xl7tVQ6jTmVPjXco?=
 =?us-ascii?Q?4RZ0S8QIeJR+kdVv2GO3IuAPewxzEu5KnN+cZ1NvY6uFsfYYn0A5KsPfGfG2?=
 =?us-ascii?Q?ttIP84XYBO2h8RBjlNuy/h7mUXfQMTAF8w4RhMj2QjF3iztxwD2VpVt7OWFq?=
 =?us-ascii?Q?LWUiGYhaIouvVaZKw/agMsvcYRbcTwVcAQdrcRT97ZAJDH7hGGPGEfxSIL/K?=
 =?us-ascii?Q?tjLdww=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10744710-6aa5-415f-cddb-08d99b1e5b76
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:54:53.5192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 96uVB4npQBZk0a8eAvnYybdSFiRokdubmRhwLrovZFds2WWQIbNiHj/+zlKJOnGmwvMZIYZ19KMEyS8e+Wptd9Gy8vZuk6b2sbCqxI7tFhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4302
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/2] virtchnl: Remove unused
 VIRTCHNL_VF_OFFLOAD_RSVD define
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
> Creeley, Brett
> Sent: Friday, May 7, 2021 3:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/2] virtchnl: Remove unused
> VIRTCHNL_VF_OFFLOAD_RSVD define
> 
> Remove unused define that is currently marked as reserved. This will open
> up space for a new feature if/when it's introduced. Also, there is no reason
> to keep unused defines around.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Suggested-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 1 -
>  1 file changed, 1 deletion(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
