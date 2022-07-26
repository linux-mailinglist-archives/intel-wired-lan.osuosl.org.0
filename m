Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C843581984
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jul 2022 20:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0289E847BE;
	Tue, 26 Jul 2022 18:14:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0289E847BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658859285;
	bh=QdzEtGHUewMwNBNUJkyOo0bhNuI1TKDPYSoJiLUD0AY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t+nRr0lfzK3nnNdmXj6uSB8B4e3XlAMKT3InkDsfNW3E6F/msuyRzDgwLSD2KxOIh
	 LK7aIZG/x5/TQjoqM+ErWAuI3Q6OhXPHNJ9FNksZ34ppEuEn2eBVMJw7gxar9d6RxI
	 FKXjEmBh43QEJ1felSocU04LkVcXHi0Wn20kPkTLlZmW9EIj30efeLNPxqyrYVFe3I
	 OoiGWI5cgjndXwO8vrnGTuzY+wJU08Grl073rfBsjbIfDsJsZe/2/PjEOHrGu/WySn
	 HfDJxlQUGjDQi8/nRjuQ11WenMk+/CHK/cWLKn87OplZGm8X7NUfHKsRu1piL1HtCy
	 Jz2iuy73w/TKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1sh_griQ5va; Tue, 26 Jul 2022 18:14:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E64E483F74;
	Tue, 26 Jul 2022 18:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E64E483F74
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 186DB1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 18:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E489660E8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 18:14:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E489660E8A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLlDSGcUouiM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 18:14:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E78B060D9C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E78B060D9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 18:14:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288783626"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="288783626"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 11:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="689542608"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jul 2022 11:14:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 11:14:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 11:14:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 11:14:36 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 11:14:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrlLYlIjCHEJU+CQsvute/2thbNmlGJVusrG+B4eXZ2WTk08hxT05oPH6DkbCV6k4FETfy35TmHVGStPhFfFopVfd9wcE4HNd+CaKhanzkl3nFzruTB9zYl0xnAz88bUtfSIBKLeoW7Wt+ZGOM5Mu8XGLFQ+tnBqYI7DjrX90dfh9PXXdb8fXBD2fmT/a405zi/aakwhSyTaHiADkA53mRYAO+2uapPQ5vTaRjeUBq7Q7z03GxVADdGtBet+cK1KUAi1R8EG0/cVkGjx66XOyG1Era+z6DgDJeB7qIOpbKhEPQle7k1gHSfwKu/VVZkwNcvYSVJISKyLgYtzrPTT0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzUxmjhKS/BqnoqNiC27mhe6lQXqSp9eQnzUKRdy1B4=;
 b=G1zTV7CfHefZ85hhC8L2nGkbpUgaJvelvXRy1MqOJxnh1v+sbi+A/Vkkt51n7DmhNNTnQ7EVpraUZPPL8byzx5mxKHJtKr2KN1A/TfClWv2zd/85XN9N+fFYcNagHfV6xFru1O5bQRngGKx+D3iYwvH5EOL5RgaGwahfmGTwMKsw4ryFzyk3MAhtxi/ioU7Bvo63s0fFseXsxRFx4ORjxrxqmEune2DLcviKhT/kcGsIZN6aZ3A6j2gaUjpun7cY0x5Wp0dmduCtEF3uYuTbtYXc6u3Nh+kM45WrGVFkHWvMi3vOIEqFTK/c1aZt/0wLsPpupvmuAXKVyw6rMJPSgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 18:14:34 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::a0d8:c7a2:c336:ac7e]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::a0d8:c7a2:c336:ac7e%9]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 18:14:34 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net 1/2] ice: check (DD | EOF)
 bits on Rx descriptor rather than (EOP | RS)
Thread-Index: AQHYketLZTgRo2IYv0SH1EvqccqbmK2REfrg
Date: Tue, 26 Jul 2022 18:14:33 +0000
Message-ID: <PH0PR11MB51443780ED94392E02191A38E2949@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20220707102044.48775-1-maciej.fijalkowski@intel.com>
 <20220707102044.48775-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20220707102044.48775-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d62d84c-37fb-4299-8287-08da6f32b14a
x-ms-traffictypediagnostic: DS0PR11MB6375:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X1mtgYp7XNhPJQrM/49hqtzIrYx/lMAnFztuVKfh2aDN8n9BU8XJzJzvC8ZfoaXBYxOwVfvJWGyjimET0Gb+/aWHR1Qp5gOVvL5JMSBbQhj7OV4fAIgdFLzw1bFlgEM3rCK8n0/XxK+M2iMfPWrOlxCzozlzCVk2jpSDhZOg314VsGYoFiFKa66fZ+cWa16VYVvYXvYugr9T7tJplipSmdX4osGYL5cb5QHBG13zXeVwDCfvHWwDq5dP21qjOjNXUAgRf2GYLngaEPSmf95CYxYWhECfb41Y7oEKOsfwt/EJtQzTpCkalQY3deHnQNqvQYHdhq9Ms1N8QVvhyNStQIHl3af3+aXMXM3Cvy/PiL22aF55eTMSskR9rkcR+rP8jB1Huige9vVGHGvFxwyLnHw9RQkn/Jm2PES2lNN7abO+mVhdsnhfQaxwIQ6MtziPJZYrAe/HJoqFRRPGQht1fa6EfRz6oAC+ghSj7o8MQ2wCL1g65444qhAzXB5TD/8S0EwRiSWivaXFr8AbM2HAcC19q87iBpq8EoYzZy7J6ScixV9xTNxyJIQ89eb8Xm/cdPkgPa/6Rc7QJpGvM5tg+2cgyc9EeRbUN4OS3iNj2Fl4iDkxQABvnRB5Hk3p6x1JDIa68HHzNx44ZLF0uOh277kyA/vQ2px2RO2xTjCW2Ph8L29Phw8K1Vh8qz6pAmhVz4fYPo2j2ff70XC1s4cLYd3NhZCaTo5f8ku1IOOeivkllfBClm24FbrDOV8DBV2wqkP8KvG/u360Tk+mh97QOQYbK+m5H3AmtSuT//VfxY8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(136003)(366004)(396003)(8676002)(66556008)(66446008)(76116006)(52536014)(64756008)(66946007)(66476007)(8936002)(55016003)(38100700002)(4326008)(26005)(71200400001)(9686003)(478600001)(6506007)(53546011)(7696005)(33656002)(107886003)(41300700001)(54906003)(316002)(86362001)(110136005)(38070700005)(122000001)(186003)(2906002)(82960400001)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hVglB6+OgncvIoeIJxvSYYU4b1qmdNiNlr0ahTO8cmqs59vm02BrEtsmFuwh?=
 =?us-ascii?Q?yeKw7imSfGlDLIvf9V1tkCXoy7Z6Gqh26+/3QBKOI4Ep4r/NqwM5NfaXoTpL?=
 =?us-ascii?Q?H4i48ADLnHrmh7D21YOHy4T4BGSLdVubcUyQmGCWP8eyHQ0qDliTIq+KUtsh?=
 =?us-ascii?Q?CexvTlXZt6tHsvEN6XTlygW5m29gdSaEw5rxlPItjQ6tGWS40SW1nSZoZKyy?=
 =?us-ascii?Q?rn44y19XMFKQ9N6ouJCuaBjmHQdzKeOPjIhbi447K8x1eIgSdrR3jDfRt1xT?=
 =?us-ascii?Q?bPbgBiVNQELaeRUPpAm6SLLmjw3YISOe+zmUM5bO72zsfsuSDfmeAwNf30+f?=
 =?us-ascii?Q?r754JNsZyXpthSV+ZMcAqR02vhEmkIoRtrUphT0sLmlg6/6E5SCjjUjJk8HW?=
 =?us-ascii?Q?+Zolg7ptyPoyNzDvfKSxiwbadBGVhD2VEhb+fQZzzQh1lObbeonu6cEzS04/?=
 =?us-ascii?Q?PKVodpsMhhyK3pDkivz5EYH4bvIK1R0SHLsfAuclSYSwWEfYYJcy0cq6gt7f?=
 =?us-ascii?Q?onRvUo240dYhQWSHLRklqNwaDkGIjhmLaIuekDAJg54C1maYi6UQkDCg3jiv?=
 =?us-ascii?Q?Q0p2CKbMVgSrQKERuefzYJwHRYfnXpeGhayTOg2uJ/qMwsxFFa2laeHOJnDz?=
 =?us-ascii?Q?AdD6nBTTfTWgOeFms9tgs2BrGEJMlKA5XCMDN5FeuWrWdMaTC2bHmkKdljC6?=
 =?us-ascii?Q?pqmLXxM5SpAyZ/XXHl/ZDi79n08CzMNLRrj/C06pljw6SCEJAccVjR0QkTMe?=
 =?us-ascii?Q?VbEH6D+zuimqtfAR21b+88ft9ge0wymrdMO3QjUz0TwTf1SRwuWxEAxmQioW?=
 =?us-ascii?Q?lC3IjoTwmGg75BgqpH7DjJB4DfOmDJceupcEm4vDGeA1pw39PdfgnGAxd8sH?=
 =?us-ascii?Q?/zhaWbDH7Hzex/G0QYCSn5mE2OvMpIhwpxEzvm8Fu2NhgR5fwsDcjqL1EIG2?=
 =?us-ascii?Q?04Ly1gWyum7BRy/6n6SwaQpn+h1DrYn7yBFaWktRBWlc1qtNb7B/XQRCvSeF?=
 =?us-ascii?Q?52Ytc6Hc2Ooz/SfIuKjmMd5yaNFEuBqdkCDBtGv/yiSsDu7H80iz2zFLW/+S?=
 =?us-ascii?Q?064E0Z4fEXevlunABERYWNIOxnlZdvQAaCP6kKtKcxUwmlaZAw6e/F8l0udR?=
 =?us-ascii?Q?r9oRDZdy4v9P6aB/Wc9YJQ3urv4Xq3JjiGcPtzZmMC4lW+msCryyVuIRbPaK?=
 =?us-ascii?Q?hlC5Y2/K/yPtjzRqi9Ou8vzKNpdF2ug7VX2JEW4QEfBohM22XOIsrAxVWEko?=
 =?us-ascii?Q?VZlmhWbPnjKA3IHePZgwjID3p0W88uNXWegJhOA79AkWbbxE12jmyBsyYupY?=
 =?us-ascii?Q?Sv7NJvGPOd0f0YwreMJh94IZvGpm1n9Tj0gls6nBzghAXvsPLwtJqVipBDMc?=
 =?us-ascii?Q?HhjG42UtHmVeKbriLM5U4yqlzJhyC2GjRr0b7dxDH9KLKJXhZNORVnwtReQ2?=
 =?us-ascii?Q?0/Ys5uIKbIrN4033Qyh7+NsFs3nD4vOA+lEJUbePmbVQLM39Ob247uIHYwOQ?=
 =?us-ascii?Q?8Z+ZyxmBejcmzWqeKPXDhPRBhhyY4yRCTlSi3lxGpvFckE/pvK6UvQ3qLy3e?=
 =?us-ascii?Q?WqYhY3TyD45z6IGk/FvCHTTpTLuzi5+vgaNE1dnFTphM+D4LW1AOpuQnOHp7?=
 =?us-ascii?Q?3Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d62d84c-37fb-4299-8287-08da6f32b14a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 18:14:33.9532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y4dmnx+VJQS31FOqkV5FrOM52ax2lwsxjHXQ/ZCne3jznOFtlwpkbpKCt2p7q29yZ+SNgcnD64OvAoTxUttdjQXVaRYPuKRuM+l7g7D23c0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658859277; x=1690395277;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pi2jLma5IKRuFh26NDh/hjbcUoZQ4CPG0kDxTfrgrRU=;
 b=PDmQZWKCI3MJNjSCBcY2pouLCEdBYy2xgX8wMhIX8Q2okM0BgygRs4LJ
 m6ppvTQ893z2VL6jVC96BxizYCRUox/bNafdfok0/sxRRfLN7/xrAT1Lw
 Hz6yAA2kBebiwrVvD8JGFHnXK+ib6dyDiwzzDJK/g8ilt9ZhNWe3XLDU4
 EO3IW+M05xUZiZvCZeOEe27XFcnKwKqqTHan5RY2JCcWEABAL9/Sts8MF
 P5XdgbVRd3tpwUSXWsgKcOdcNf1y0Krc8T7jTnOvCAJQILeFewg7GwCiZ
 dQTuuNAmtioP3lqGu3xz9/OEBxZ6/93CKKNXEqg5c+qzwa+fsCvIe3Hbd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PDmQZWKC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/2] ice: check (DD | EOF)
 bits on Rx descriptor rather than (EOP | RS)
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>, "Gerasymenko, 
 Anatolii" <anatolii.gerasymenko@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej
> Fijalkowski
> Sent: Thursday, July 7, 2022 3:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; john.fastabend@gmail.com; Gerasymenko, Anatolii
> <anatolii.gerasymenko@intel.com>; kuba@kernel.org; davem@davemloft.net;
> Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net 1/2] ice: check (DD | EOF) bits on Rx
> descriptor rather than (EOP | RS)
> 
> Tx side sets EOP and RS bits on descriptors to indicate that a particular descriptor is
> the last one and needs to generate an irq when it was sent. These bits should not be
> checked on completion path regardless whether it's the Tx or the Rx. DD bit serves
> this purpose and it indicates that a particular descriptor is either for Rx or was
> successfully Txed. EOF is also set as loopback test does not xmit fragmented
> frames.
> 
> Look at (DD | EOF) bits setting in ice_lbtest_receive_frames() instead of EOP and RS
> pair.
> 
> Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
