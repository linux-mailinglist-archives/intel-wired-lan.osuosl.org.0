Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45897734B2D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 06:44:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA16881F81;
	Mon, 19 Jun 2023 04:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA16881F81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687149882;
	bh=pz4QSSGCR9gNOQW5mEtEO+6+g66edWnEYxBo3Z+xXMc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6pAA2UMnRD0sodJBTrrXdq4blLmARcWOMWey8UXexQFU3fFEhIEZ+RaDrn6F230ue
	 FOgb8x+r1eO1hLVu4PbjoAtdkY8O4Y5Pi6H7bAV/kWS0NmM6YxcVEU/OuDOK4Xe8ln
	 htHVoRkbbc3J7argqqeTqlCHRt3LohfBy/t743Q5qfYQFS4lG1M+3DnwtJ68uSm3mp
	 0HM0+AMZAM5rTh41mtZlEc85+nUtgDyUJXp56BzV7L/Xdpyh1Mee+naUs5Zs0a77se
	 8Qjz+h6vKKoO/WqsvwSFhuu06xiip3zEchdFeFW0IFhREQmZvWl1AHQk+Eszo2hQu9
	 0qjKG2V8t+bsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jVVtTZ1b6lEO; Mon, 19 Jun 2023 04:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC33B81E0B;
	Mon, 19 Jun 2023 04:44:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC33B81E0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 853A01BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A739410D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:44:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A739410D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJJtuUdBi2dS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 04:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3E21414DE
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3E21414DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:44:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="423203691"
X-IronPort-AV: E=Sophos;i="6.00,253,1681196400"; d="scan'208";a="423203691"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2023 21:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="858079009"
X-IronPort-AV: E=Sophos;i="6.00,253,1681196400"; d="scan'208";a="858079009"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2023 21:44:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 18 Jun 2023 21:44:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 18 Jun 2023 21:44:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 18 Jun 2023 21:44:32 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 18 Jun 2023 21:44:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OlHuKPL1ghjV8+e9fyG78YT2AQ5Ao+WbeorkkbGyWQEFrQcLtOlmFIm51qCnCA89zUfU8gUuU9ltcPG7PNmVMUYMaCOwbdRmjF8Xf/myAduwMnHXVYn6oCOp36zVZGRAj4hVmaRhl4/PUiZaK8xlfIxqUsLF2tr8oIrZbowAcnNLV5+CjhmLBqFn03MrMmOsEhe4zoHDnbh14s7DvpONkheGsRZujaaqGa7ByaqzPAFeNcUSinUu+SnEkTKhEOvtGsp99qhQEQW0mjuCVMT5PZ3EfSUbleXYzT6tSMewPIgyiDJ0ozr+2C3/jHMZrJnrlBEOSIiiNBTB7K2hFa93fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBVkGAoFB0xmlIryL74/j/X0JmRekIggFGlx3ezffOI=;
 b=iSkWnSj8PR+ruO9lv6n/Q6bwxZ4qkqJ/zAZ6WJfx+QjnnfHXxqK3QdYptnlXnnL/8YmAduRe48V3LCKZxquFGdgTyer4NdasdZuC8RZIr6puY0XNeGp+OKZHyDWPdlGip+gN2hSazyOGHhJ444bKuYpMLnO5inySlWszRQbNp8jtplhBe/YTIog0EgiEJNrx8PvX0RY2Am3b4yjDHqWV9pNBQUombF3neXNKITmU81fh0MUspo6q8e5E9NkaInLV7+58WAHrwsHVjv2p8mTB6g/d/unYwgditTQ8/Xj45aM07HvzCAuHhQx8lIUtPcFpHVqL1+5vR9dfvlZFUE93wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.42; Mon, 19 Jun
 2023 04:44:24 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::304c:a71b:3375:5095]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::304c:a71b:3375:5095%5]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 04:44:24 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next] ice: use ice_down_up()
 where applicable
Thread-Index: AQHZnetSLPfZUF95p02TkDlAnkBOS6+RlSvw
Date: Mon, 19 Jun 2023 04:44:23 +0000
Message-ID: <BL0PR11MB312227F75D24CD3BDA12A3DFBD5FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230613113552.336520-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20230613113552.336520-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: 676df659-9591-4b16-ba2a-08db707fdaa7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G0OU1CoPkPwWVerANL0XolCv4CFyl+s7yHJAkovBu/bat1XeOO0oVjOD+gJ92MpUWcTLShBdajp3VCSsdduAoE7MlWXRF3KWnPN5cO0LNghNDc/53o40pI+fa0hgI3ySNb9RruEHCeICNE8f9/MWoBgml7M829ISXaSjR9M8IxYyL1Fe9X3+kZtDWsYinf9+ZmmNE/32SBoWToGyobc8L1lPiU2xD8Cf4affqDQoxoyhghEWbK3Yv9iRx9PyDoetJ/D/fzhaCn/KUlfcakZBCP40teF4PKnZ4CzC8ywpMPVVR3e74ubGRgyfBm+PRY4Z0X81tHlLD2n6fxF1PeGVhzIdxB95ian1wcbuoTAq7On3VaOmgdgj4vT6DgQGIM5GwWdzUJggMjgnnSGbt5ZCN8BjI3aHTy7zDsnaJs0232hhI9HdAsbmt7DBi1AqrtNn3Po0FCvUKZ1ZvINSm3FZkaNwdZ807HNh0fy5Yoa8KHBcX70atRGlneaRaLtrKg7+GJIrLXibZk6aEFscKuiRpoFY+/Rd9rgTpXmhz0/fJLC9f1Sw+MX5r62WqsBPZ3AMHL/VTWRB3R2MLq2iN1cNx3ETQSZvxPop6YDu+GJx04jA8whwTNJ4oQ2DIX5rX+jT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199021)(83380400001)(82960400001)(33656002)(38100700002)(55016003)(122000001)(38070700005)(86362001)(478600001)(4326008)(110136005)(71200400001)(76116006)(54906003)(7696005)(4744005)(8676002)(66476007)(66556008)(5660300002)(52536014)(66446008)(66946007)(64756008)(2906002)(8936002)(316002)(53546011)(186003)(107886003)(6506007)(41300700001)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iBxgGnyxDSOPRqOP3LMoU4EPpEJARH1egO2udifDr2/xeg315jTG4MvIuY5m?=
 =?us-ascii?Q?hlGxr56JOfnB5mPLNqkCzSf+XlqjiYj+ikUTSVrLXwJ5LoaWD1fKpyE1ZstA?=
 =?us-ascii?Q?NVDoiMDO7lTObJxRKMFUAmJIsIk2YcAa5qag8nROF57XPJK2g6vTsvX0+YaR?=
 =?us-ascii?Q?UOparnukf5O2Plhaqwmcw5otxw+E/ZRBCaQ2UjOvmbhKsFevAAK8fOixjeiK?=
 =?us-ascii?Q?KdFxWolKxDfJ7gnF49OYUt2Cv2hD2W9/yaoCnq5gJwZzkPdaS17+cegIHgtY?=
 =?us-ascii?Q?HfokYwPAV4y/8G8s57+D+QVz7B85duDi74J8Rs+ZmMT/ryh7CWx8IPoxURe7?=
 =?us-ascii?Q?z5BQLKx7vYFj2l27yqWgqc3tL7A6iiNzhJGjj24joOekDAYVQIlMGJ5//vPd?=
 =?us-ascii?Q?MCarrf8bUq0j0TdNmvrNyG7p8nz/74OdFLQNHzAx8wR60z7cJ9JaqHJMw1Bs?=
 =?us-ascii?Q?6lgNxCsA3JR7hL9yQwyjkBSTUDyNWw8eLqf2pPu3p3y6QbUxc/qnL3GVOPwo?=
 =?us-ascii?Q?WRVns2g2WvD9Xi9jEx6NabHGMeWLY2TKxyBNp17oR2BAm9i3zlga1qfZvDsW?=
 =?us-ascii?Q?D/jLdZ4CPNpqxV800uXLtrUnnz4e794jV6V3FXR6hLXLaNfA6ZNhDDSEldBd?=
 =?us-ascii?Q?RXytZjwX1YcS1cRgLOXAqPFXlzfAGY8x8RgjGxS4gisa9JvjcKJDWm8IJa8L?=
 =?us-ascii?Q?PQpeNeymXF2Q8wnzntWThpWHw9mtIin10pdYKm5kX3WZx5q1eUGUOsBY/Ujn?=
 =?us-ascii?Q?2NxK6heQk+bAxJ5fRR4Z4j0wtHo2NQ5p495ndMNVgNuJglODeSdpZ35U0kTj?=
 =?us-ascii?Q?R9fkiiwXvIvZLbnFO4jsnPt+VJbTFjPhj88w6ZSLAZ7Ra3AZflxis9zq4NFt?=
 =?us-ascii?Q?AUqf/esfxUDybqRYVe6yjL807r9k90paUMGWcrCTRVsJdLf1KrBbpwrBvHIZ?=
 =?us-ascii?Q?YzRypCQw6cQ3Gj4r9i2MiGFyq5u0Hh+UDl4op0SksCqmdBN+nJGNwovF/0Yj?=
 =?us-ascii?Q?4Ynxk0VqEVr5xmegJUrVWcZVzbQpoo1OBXXiQxJtcvYg85XxhJduilO9/Lfb?=
 =?us-ascii?Q?brbAy/mjd1PDn7vUDm9+W+dCSOzuhvJOs8QUbJeGB4EIOUhNX1d7KkzpmDud?=
 =?us-ascii?Q?lcM+MKhpHJOSy32vsEQfU3AJbOI1Ltake7yFCJCdoa3j9vx3Q6CyOM7uhzhV?=
 =?us-ascii?Q?nOfliCETmgleW0Ov336nGWUxUmM8y5HvohNXF0O5xf9jJWcU/2MFYjZamL0j?=
 =?us-ascii?Q?Mn8r+nha52NIrXPHhFvAYxgniMEJ1G7NKfSCjOyGkjzJ55RUs3N1DCs/xJLO?=
 =?us-ascii?Q?/S/FJhUFQJm3Qqpab16OJ1L76NCEIVs5tH2CLHMWSQlWrFM3izZ8uYdw9+na?=
 =?us-ascii?Q?lMUwLLfwZ2sLRes5N2hjr5Q/61znYXFClk/69QaoRGX5wfa7QSHEZMyo7Ab4?=
 =?us-ascii?Q?96+cozTu/HIlXKigKODkdwhnYHc46imnLmzEHKQwmLkh+Y1XaZu0U8mdAGWL?=
 =?us-ascii?Q?jUZUzEuruz6NdEQibfh8oCd2BcPoNsnBK9hA0LcM0/rp696D4j7w9mp3dNW0?=
 =?us-ascii?Q?zzMaUY97nSMm92HJHNvgLpnpFhjOKoqePjAoSAvu4pKlyZkZzwcQXoPxNKYR?=
 =?us-ascii?Q?fA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 676df659-9591-4b16-ba2a-08db707fdaa7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 04:44:23.4082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sl2RWzDCJjZ1JfZ/chTWGrQSacGXi2dz45+mxWxYeSn3PgrKESz92tJPuV9ZjfWrKlLeDa5DsYCSn1z8h6pxvJAIuOwvFhEit0gBHsnqqvsuRYlV3eX/ws96McvpuGFX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687149874; x=1718685874;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GBVkGAoFB0xmlIryL74/j/X0JmRekIggFGlx3ezffOI=;
 b=G0OfDprVX/rFei9b0s6OU39fNDgTPJhDtZPJyLfC2l+FNDIr0Ref7B31
 dbKfZXnkIcWsYHolC82sCkDjKEjhmUxiLmbQVWccOSqcZTIVW9hTV25eK
 q4HioQVjQZ4qbLxr02ueavGd3hN81S3DaiZCz1UVBQ0EcfcsvkZ9RCNzM
 SP5P7NARJxYvFT+FDXJIZu2KVRnUzfEzImMH8kQGG7NjMYOkZkm3Q1tkF
 rlUJ481f/nHKntn/nr+358QlK0OUVUpjyTHrUnnJ7iUD81KK8fB00A7I6
 fcyQBkIFOcD9y3SkFRMPSt1lVSyrwGtROWNDgYLnxSAr4Na4dbSMyT4s1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G0OfDprV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] ice: use ice_down_up()
 where applicable
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Fijalkowski
> Sent: Tuesday, June 13, 2023 5:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Karlsson, Magnus <magnus.karlsson@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next] ice: use ice_down_up() where applicable
>
> ice_change_mtu() is currently using a separate ice_down() and ice_up() calls to reflect changed MTU. ice_down_up() serves this purpose, so do the refactoring here.
>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>
> v1->v2:
> - avoid setting ICE_VSI_DOWN bit as ice_down_up() covers it [Przemek]
>
> drivers/net/ethernet/intel/ice/ice_main.c | 18 +++---------------
> 1 file changed, 3 insertions(+), 15 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
