Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A327C6AAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 12:13:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 084ED6103B;
	Thu, 12 Oct 2023 10:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 084ED6103B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697105591;
	bh=eKrfo46p1nNulmvhRYGuRzkl3ym3eiMzr6Xj15+si04=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Uqmz4LJx5begzDNcr/pZZHO8Tvl10yd2wH9f47YfBcQvoFuG5tun+yFyYaCfrMZRg
	 J0igyu49kWOtPYf9yX+1Xf8CQqvLdAwZMPecgIH0T4xpYGprtd6CVHXd7QI0NMi0ko
	 6IBF+XhJLzJOy9ntMCmzMutcWTuYVlRXIPI+VhAD/9MEk0H1Y1HqVqB6TW3BVVDlE8
	 37lYrTVEedOXtlky8jjYkGoPChcTm2WEo3V2jn01Xd1aHXCSJL9VzqsOE+JbO2b/q2
	 4izMs5Tk6o67GiKQxPWgRt6MbbE2gHQkpkccIENJJci17GDYg+amJUm5IZENL7J8FO
	 JrG3u9/PlmCEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dR6D8ywm8Dp5; Thu, 12 Oct 2023 10:13:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A18860D7B;
	Thu, 12 Oct 2023 10:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A18860D7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B92C1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13DAB4037E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13DAB4037E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgzHsY-zOP-I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 10:13:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57D2B40370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 10:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57D2B40370
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="369951468"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="369951468"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 03:12:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1001499425"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="1001499425"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 03:12:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 03:12:57 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 03:12:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 03:12:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 03:12:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X0OgHhTxiVmUAH68jo1C9T0HfmbSriCyz+fkbUW5WxVXu70lRZKyqa8wfj1jew7yji4ft2kQ4J/2lJNEwv/+fUBqZHdYa0ytUUNmhUqO42oNFeyXJgDO6Qvm3IU40j8TtAhcKeKz8j2NoLVe0JAWZ0qsgV+1WNUeykcMAY/E1bw9z9vZwyDGQrYWWgKzy3VTjVv9nC5LBZpdOs/8Zi4ENvFbfyUv8I9rZvJeRVNCFWVJqRV+Zv/gML8gavnQaWCW7WWsU20w/KC4kPDceptOaR568ZXTGq3R82v+l0U5PL//eMqTSkIDeXkNssxRDu1Eqn3ETEpB3bUBO9ybliVG8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/VQj4vVBpyfIxI0kF7vOrOomq6acE6lgOo5uyYkO2wY=;
 b=JAY8HyAcIPvogb2cDvT3bZFBPxqxpUnmNQV4Om3TpeWoZMxbjVdiBD/rnGTYY4ijNe9bV1CtHrYjZK1TDH+IdbQzapSHMXt/se8IMXkU7OpAHknqPgtAYlzHmpc3Cjjvfqr1BAddr2VLT5lNustvxTWyalql5gC+Ebl326cEgAeg+iDpYRLd+bFBe7wGLpHXTVpsDNNGfUsjAIFn7nJFPXKQDUn+T3/8syWvC24skmoYsKv2BwR5NrrI0HuVKDM2uhAo7cjZqj11q0E4mKDPgL7N4lPjazFZLJd4OvnwkmqG1iuuz5s+Dv9UNecBAA14URZRZUvVM/CdyntkeEH4Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB8251.namprd11.prod.outlook.com (2603:10b6:510:1a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Thu, 12 Oct
 2023 10:12:50 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 10:12:50 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format
 warnings
Thread-Index: AQHZ/PSnA7dkI/WGmUO3WOnGs27wcQ==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 12 Oct 2023 10:12:50 +0000
Message-ID: <BL0PR11MB3122FC0D4ACFD55CAD921091BDD3A@BL0PR11MB3122.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB8251:EE_
x-ms-office365-filtering-correlation-id: c43c9d43-6b01-4a84-4500-08dbcb0bca67
x-ms-exchange-recallreportgenerated: true
x-ms-exchange-recallreportcfmgenerated: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iXxIyBbtYt+soQ4YFZhH52mjWQr0wMgrhbgoDm2z3t2XURfERKmmGyONcqJpQ0zc0YEpbaomalBl8NFfm7c2nnR6E7hVBJrB/6v2ICNFRcQ8mB3H08kQmIGT3oT69LYkQzqwrWXMgSrEZzvShwIT++L2IDsY7k/AekIjfsNjccVlRtOURnsYXe0Dd9O1rmHsVlDxF9hpiqUJZy6stPtJt/rc2M5VoOIzN17PLL6esu0S3hnlHRkG04YKv1iMDQiF/R+YuwG/uyIgArKSfP8GbgPG0jVzQRhjBsMLzZJqM8P7mwtKtZHz8iMUFjGvwbkBq2W+8bayPMt4XnWhV52Z6lqWOIT2m4GUN2/GoBNE4DYWYWL1iUohpRfMWitnIBK43dNU9HGALRcEGyBWHdR8DAstawn8+g6aWD3zYXpUhuJ4HdbV6eaGdvBo1S2BqaTu8Yq4aURDP8Q05ObUYzq9F1rG1dh76IP+ExWeplLJbZ+bOe4olN9S9QEUB2cG/E8tuH9WJL/Yl1E4fQCN1YwZHhgyxCLKM29izNaRSoJsYPQrUwOmB0H1vQAg5tcke7TyVRrOX/usp4RzXzeYHckY01StjhWgM2e1sNsOgAyh+9al82g3x5vqpotvd7U9uTqr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(66446008)(107886003)(54906003)(55016003)(478600001)(71200400001)(86362001)(7696005)(9686003)(558084003)(38100700002)(33656002)(41300700001)(66946007)(5660300002)(122000001)(66476007)(66556008)(110136005)(64756008)(6506007)(316002)(38070700005)(82960400001)(8676002)(8936002)(2906002)(4326008)(52536014)(76116006)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iA7L4hBdH4OXQVfEOB0xYPEVVOmJD2BmAu+O+QPxtyaM3s3mC03mZziBnuSL?=
 =?us-ascii?Q?uFiHy3KNAEg0YUonTwxzlXVyveNM+Rxvb0MWkPopa8fWV++C1jQvLvOMkJ/U?=
 =?us-ascii?Q?Q52HkRERax0caiHs1sEvzG77V6f5LP936TZY+O2jG/PibZS9YZqPyD9UhXTf?=
 =?us-ascii?Q?bzzGBWRBoTmZqWlbK3tH8fLJdzZQZvh4WM/mbefn/6Y8AOdzlrMa73E6Ljhj?=
 =?us-ascii?Q?3cVxNHMF+v3FLI+000iM4K0MxX6uZ/kx3cCs3UnanSiZI3zCG5GpkxKAYHoS?=
 =?us-ascii?Q?HbNyy3WSMN0fuI9Av03Mn0ASSDcS0gdkts97nVILg0Fq3G5p5Lmg7cpvk/Hz?=
 =?us-ascii?Q?Uf9WYqHrXEOg1rM9JDlIuBtDHcsBrCDS5+LjULzG56ffWj8Mrc/0PJAVAuU0?=
 =?us-ascii?Q?cG0qLZ8RB1SPLiDUH1JQHeFm3JNYFzKp96z4NRPyGLhMGZoSxW1l0cVEePHL?=
 =?us-ascii?Q?ak13/N6rFJLo2zZkP002xd0T1mlsyjKpKd/aqJP4B9dEhbKBlyu27Am4dHIY?=
 =?us-ascii?Q?sGbS859RIGcgC8QYuZot0xIEBu8fJSopw7ttOuVG49wKWCAzttyIJCcx2TqO?=
 =?us-ascii?Q?xA77Fw+T9UjCoNsEL48l3RzN9yrsQR6j7uIP5imPsTfNiNETfzjaPIVDCSZM?=
 =?us-ascii?Q?srujbugL0HHSCLwJRvcIMkNZgfd7V25AKjZ4BdpteBPOodynQlccHZf02zQt?=
 =?us-ascii?Q?m4WcgMFitBD1yX235RQqwy6ck9OfBE92NOQeDVHHSa8CCgT575oBIcTsTPAR?=
 =?us-ascii?Q?2in55xEtCcdHogzUiP6n8PLxiMOrgGqSaPhFmMGtF/KUFHfi9iw1fKxIJmJi?=
 =?us-ascii?Q?Dfn2rQthtvE2vkDx/Q6TZLgwB2pGdupM4I554CkiAGK1/v1E9JqBLxupR8/m?=
 =?us-ascii?Q?SZWpKHIcCCLIe/9JNoMxPjcAkrfNIPuv3eNcO9lrHWli6dcPpIp25Fntuixk?=
 =?us-ascii?Q?mmoz/qtOf6DBfwol2GYjsnCpDaHrvxR9L+oMPZJdqweQaRkuj5YiGdGksiD3?=
 =?us-ascii?Q?OAqTpaidIostzyDAR1IVm/HcopgBJdyrCkqU2zIi8Yh6cBNEkUlJDTiHw8mL?=
 =?us-ascii?Q?gpHWcgh074RB++djWJ8Fi69SlQU4Nh4H6+GPuJMzeTQB18G55VUzC2iYny84?=
 =?us-ascii?Q?AAQI7nyJOBRvnRuuDiH964HeOl4jmThCQd4i+0vCN0PJ4NNK8+nC6qqSsqGD?=
 =?us-ascii?Q?2jvOhIK23NE4XxvTX7+se0xSe13VUdGDuHLTSKcTN5nNoAIJiPHMnQ6qgxIx?=
 =?us-ascii?Q?drGkqipmi0Z+o1oJ9hbVOudmpCzSHWWp9RhewaEo6L9xDuUWOZQOBqfKO9ZR?=
 =?us-ascii?Q?yr84Lv5PpXha3ogCMGnd77t8af/D0ag7J4jkMzSSajDnNGWxYs3dj/czaTHe?=
 =?us-ascii?Q?dhbrhZsmjIaQgcmd4ZXnPzXIPyIuCAjWFPEM7Az+prIrvUdQ/ODNUN7TpULW?=
 =?us-ascii?Q?J7BzE+rFA6+4Zn/xi+wGpvIeFu0gy5+6Z48W8eb0JQB9KP20Bu8Oou1RAY5t?=
 =?us-ascii?Q?FmzALZENnoUlGc+gGQuHD4kRYMUn2yjyIkhsyarLX4vkgNH+dHE0R3KfrNse?=
 =?us-ascii?Q?KWNYFPb/J1/NOmK+oQJYYC1N71tK8aZWwJ3gxE5AoW6rEx0GqRXG46w1Btrz?=
 =?us-ascii?Q?5A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c43c9d43-6b01-4a84-4500-08dbcb0bca67
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 10:12:50.3560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oDHLkZTZ/MkJ7i6Q4hrUfRHYkeZb4CEOtqyiVIfyPK2ZTDT6KtG9/egNFJEcNiLSzUGaaEcOD5seJIknNyCVbi6YrDir84cT0j8m0sN7TL46LFVQK6xXwEgRlKNxAeHx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697105583; x=1728641583;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=/VQj4vVBpyfIxI0kF7vOrOomq6acE6lgOo5uyYkO2wY=;
 b=doUULKWlPCl4XjjkBKp46fQqR3DwaNaO1zbC+HBth4xsi+kwgkCZ9/e6
 g/vfmlSlxw8FmysErhOoIUH8qk0xOdfgh2oTat751dv2nZXKKH4vObHxK
 k/Zc9Hl98zu+BJUVMARzww3kzAGbOTKuqB3eQGZD5AMVaNum2vmjaOU3F
 RvnCgZ0KeeHSv1XxJOy0YqWZrgwvH5sDTUCWiChlsS5UmBgtmI6uecdzP
 qZDEyKSgaNsfoTHNNVrMGe76K4hFtxtaBgUJvDQqIL5fMCPROQkhXSRBV
 oLPiwb5nl1Z4oPrk5Fdl9M+yQzCzuh2Z2LQptuQ+GiK9g3Yo3kxlQEkL/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=doUULKWl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] Recall: [PATCH iwl-next v1 2/2] intel: fix format
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

Pucha, HimasekharX Reddy would like to recall the message, "[Intel-wired-lan] [PATCH iwl-next v1 2/2] intel: fix format warnings".
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
