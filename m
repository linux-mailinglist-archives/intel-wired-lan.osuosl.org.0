Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 901666E39A4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 17:13:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A73D140096;
	Sun, 16 Apr 2023 15:13:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A73D140096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681657987;
	bh=1WuZaIbkswwktHtJRze3Pi0PR9r0enCR3ly+kp8LMHE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hb6vRZePFJOGEOtOfMoAq+EkeOjnXPHZ6FevTSBzWzQr6vjrgpjAEuyO3QT+Ev1GU
	 kEOHyi2+Hh1cptHOWqPlnQn6tshCZ0OGQ3+UrqByezpSvKuiiwciY/i8PxF24oMFLl
	 V4+5yrZgInBZPIWmkbEkTKjcgJDf4F/lG9Tg+Ux1eAjDp/1tGiuITA7fbDvIJy9wEQ
	 CDRDL3h0IrBu4ckZbwZR3vwOL3K57lHwiXGSR1h9XDU7bMeETQD9TEfiR/DBlo+jV3
	 x3r6KgW7dkzZDnq90oofozjriiCQUerb+jxgrS2/MeX4syYPPP5OM0sOgt01v3upVT
	 j0fvjo0okdlYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 87a56a38vNcd; Sun, 16 Apr 2023 15:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4178041B8F;
	Sun, 16 Apr 2023 15:13:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4178041B8F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 714411C40F9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 02:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F0F840C2E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 02:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F0F840C2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gr1oD0vJv8Yn for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Apr 2023 02:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A5A640132
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A5A640132
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Apr 2023 02:19:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10681"; a="372571733"
X-IronPort-AV: E=Sophos;i="5.99,201,1677571200"; d="scan'208";a="372571733"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2023 19:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10681"; a="690258380"
X-IronPort-AV: E=Sophos;i="5.99,201,1677571200"; d="scan'208";a="690258380"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 15 Apr 2023 19:19:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sat, 15 Apr 2023 19:19:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sat, 15 Apr 2023 19:19:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sat, 15 Apr 2023 19:19:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sat, 15 Apr 2023 19:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZRzwYq/g8H1Gk08Or1vTmb6n8D74b0OeGDXnzmQgQ9MGhXrGhqCqlWWYRqG1i+UutHa2PYXykdP5GPWLp8sauRo+4MXUBFQNwITNwdA7CLlltVp5qOcqy1x7ve2cyAMwEyUiJIvhwFEmxw7+lUGXWDy3Aabva/e0Z3F58pJi1fjbMUZBFnUVn4UG0HYHqTBc2k4PSyOq0oKBWusuX3E1FY98pLaMKhMgP82qzVX042p5wq9Pvo1U0lail6Um73UPGviZh88pUC8G2oy/acLdoKdlPipcycH5J6YqfDy2Fii5lDeUU8+xmrEnHmPyWqFJyZmeLYelD0jY7I9EFiEog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKD1UOJuatQpubXWeizwbaVs8yUswmSPdYNKZ65U8Yw=;
 b=LWUKNDupUGteoDnzRrBGFJcQsYQfb1Jj6X8Poga3+X796SGVGUl7HW0elomvUQ6FUKoLOkr6uzuCA1yDdk2ydZsj2DYxih8veFmtGQxFTJSIS2nk4dQLkAItO6Xz6OHPWB2nPETpOKNCfwPDXXs5utEVnwpgZMtsqSggs49VX43kmXFxIlfBJMvPViqIfkKK9fZuVHIxrK/OcfraSM01zjuZBPKKlurJ0c4UYDkXU6Z9ZMkFi5b/Qlx+vn4BGVOzIcASpdm0jgzKh8Ff8RfhUgoFSh6xQt6crhgPvhRBG5Hz3F7I/w3hg3jJKIvFKxKwmwHhxn6eaeQt9Xn9m3dbWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 by CH3PR11MB8383.namprd11.prod.outlook.com (2603:10b6:610:171::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.49; Sun, 16 Apr
 2023 02:19:26 +0000
Received: from PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee]) by PH0PR11MB5830.namprd11.prod.outlook.com
 ([fe80::1c4e:86ae:810d:1fee%2]) with mapi id 15.20.6277.036; Sun, 16 Apr 2023
 02:19:26 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Bezdeka, Florian" <florian.bezdeka@siemens.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Vedang Patel <vedang.patel@intel.com>,
 "Joseph, Jithu" <jithu.joseph@intel.com>, Andre Guedes
 <andre.guedes@intel.com>, "Brouer, Jesper" <brouer@redhat.com>, "Stanislav
 Fomichev" <sdf@google.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 David Laight <David.Laight@ACULAB.COM>
Thread-Topic: [PATCH net v3 1/1] igc: read before write to SRRCTL register
Thread-Index: AQHZbujC4ewv1e0L1E6tM68Rf5TZ1K8sGQAAgAEWu5A=
Date: Sun, 16 Apr 2023 02:19:26 +0000
Message-ID: <PH0PR11MB58306BDB63286338EABAF61AD89F9@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20230414154902.2950535-1-yoong.siang.song@intel.com>
 <ffa2551d-ca04-3fe9-944a-0383e1d079e3@siemens.com>
In-Reply-To: <ffa2551d-ca04-3fe9-944a-0383e1d079e3@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5830:EE_|CH3PR11MB8383:EE_
x-ms-office365-filtering-correlation-id: eecfda88-841d-45b0-ad29-08db3e21006f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: smhoyYQeB7K/FMb3zy5W0ZhAlgXpRP+JJ7mocmzvzYBpjlYQkELEgsxkqJEPEpL2FyLVSdrXMl1w+MAd120+JaiAiUMbnRrMqKDWAdTEijMkuYaRzFU4FQjBBNKyJbD5eXyHMSGIxmbsyQ2/29HR9SZx7xJ/uRYtnEkUxpFOAz0cs2tGGt5GoZMDZE9tbaNPSE5KJRvd1hNnnuX57wujbJXVRtTTfXkRfvIjlCD+sfg5vDr6AF4R1nhgbHWdHbti7CDSELorf7z/provEnpvt05jbF3G1bKeKsaHtJJlcGAioAXJy3iOjSIl2s6x8uqAEBEeDCpmHsYWZwqXnNQ+AVkTt03g0Vhon1Q0tERH2ITs88eAbGD0nLXCCgVnACZPRUoejRIgPTlA6ebDn57yYHtqVrTQYZ6EMNwiaV9Kjz/PGXqUAVH7J/57crkLnbU6+U0Zfr+MYsHTTBDH2/XOtOuxzucaU/jKUNkvIjDid8IsiNH2eoYAo8jIZgMAaVwwLg+Nt6UhKRdsz/PgfH46vsq6FZW1dThlfYgt4f1q3FXd8CjeaAiFTYEhuMOMjCG/K0gVL7/TXyIJvYfrlkc6/L36LXxo3WWvP9vDiiV+IQri4tvFDb7zlRRkexxhdNZ0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5830.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(376002)(39860400002)(366004)(136003)(451199021)(41300700001)(316002)(38100700002)(64756008)(186003)(66946007)(110136005)(9686003)(86362001)(66446008)(76116006)(66476007)(66556008)(7416002)(6506007)(8676002)(4326008)(26005)(55236004)(53546011)(38070700005)(83380400001)(921005)(122000001)(82960400001)(33656002)(8936002)(54906003)(2906002)(5660300002)(55016003)(52536014)(71200400001)(478600001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzFsbm93ZlNkTzUrQWozNktiWVNaUXV0cWFOTGJCTkM4bnUydVI1dkZZZzVP?=
 =?utf-8?B?WnU4OU5hWS94bExJUmM0S2JjMDVOUVgrSTljTHRWL1Rtems5RHlGR0lnbjN4?=
 =?utf-8?B?Mjd3dzlSbXNhTC9UdktxQ0sxa0ttYUVyblFMcmlVQzlPWWxNai8wWm9STU84?=
 =?utf-8?B?T1JFLys1VWJ3YmU0RVBRQXdRSk1ZQVFGUGRaQlQzeEJDWnNFVzFzRWRXSVcx?=
 =?utf-8?B?cjVYeXBkMVl3SFVyWTZkOTlkajVhVHNLTmFJVXFkNXVJYVFoWEdyUTFqMXVW?=
 =?utf-8?B?YUl1WUV0dVhFUjYySGhSaGM2Vm1xa0M2eXM3NHd1NXViWEVxMFMvbHFHZVRx?=
 =?utf-8?B?MStjaysxWURUYWt1UjdzRkFqM2FKK0ZEWnV1Vjl0dWxxT0R2MW85OW9yY2g3?=
 =?utf-8?B?QjhaWmlyYlNhcHdzUjg3NFpQU2pNczJ0V0lXVjUvMWpqVWRkaGpYQzg1MTF3?=
 =?utf-8?B?UnAzaGVjam5vUWRSeXhyYkd0WStSNVhoV1lCcjE4RUZINmY3MU5aZUJQd3pZ?=
 =?utf-8?B?V3NYUThlNDIvNEtBYTJGWU15WHVuUnNvTzJSdk0yaENnb2FGbElzZHlIZmo0?=
 =?utf-8?B?OXdVY2h1Zzg4K3ZYazloLzIrYll4WGdSWUNaVmdFa3ZkZXY0ZDhCZWRoRVBm?=
 =?utf-8?B?MmNueWkxaGhpNkMwK0JReEgyZ0JPSXlaS2Q1V0R1bWU1MmVjVzFqdks4eHRn?=
 =?utf-8?B?dW9vSnM3WUd4dlZVY0JtaUlMMkgrd1MzRHFkMGU4WXFIbmFhS29vOWxjMEpC?=
 =?utf-8?B?K1RMVGRPeGZXUXEydTdheERkVUF6bUNmdHB6cm9UVTdVZmRmQ2phQWpYaVVT?=
 =?utf-8?B?T0JFd3hQMUpCU05vcmZBQVRGV2x6cWdaV0JsRFdmWGxJU3dGL3dEY1IyMVFp?=
 =?utf-8?B?WUt5dmR2ZXk0QWFGZjZaSjNIOUpUWHRwdkJuTzJkL2FIdWJYN1ZzUm4vZkJS?=
 =?utf-8?B?SzJ3VDFteloxMTgybCtPZlZGUlBmRnplMEpZQ3BIOSs5akdCQVE0em1ZVEhY?=
 =?utf-8?B?aHlqWEVrM2lhV25ZcEZqWEpsbzRTd1RCU2NMeWRxYm1IVWIyT3M5dnQzOVVv?=
 =?utf-8?B?cDZnYzRKU1J2YVdCWGRyeFVkMmtyci9wbTdUUmZEcE5NQ0tSL2VOTnFmSm5J?=
 =?utf-8?B?ckx3Qm5UT2loQnk1MjF3b1R2MjUrUUhOMWlsNEFtMVZsWlhFa1FrQXdweFJk?=
 =?utf-8?B?MitlNDRnMmF3Y0FvU05BT1IrNlowWjZRdW1Qd0ZSMmVScFZ6dHE0QkVYU3Z1?=
 =?utf-8?B?OEJLdmptaGlvajQ5dXFXUU9aQTNWOUR0WmtDOWdWYnJua0NRTE9tWGxCNm9B?=
 =?utf-8?B?NzhGbHVYc0Y5VW8wSkFjOXhaMWZ1QzdPR2psK083bUYyMWN3aElyTStDQ1lN?=
 =?utf-8?B?ZXgvcXl5SE5nNlB2SXhTa3duWTNmZXJQamZKNUMveDZMbEVENGNjdG85T01r?=
 =?utf-8?B?cHp1VkVva0ZzVWVGWndHRjk3OFA1S29XSExpdkVYZEgzTmlETm1NZXpsRXdv?=
 =?utf-8?B?NHNDcnB0NDNqOVdFWExmRlpJY2ZJTXlRUnJCK1FEMlFTSmcvSUJqaHpsWVp1?=
 =?utf-8?B?U29peXZHS2xHTTB5K1Y0ZnMxRUg2NkxaV2x1L0tKNjdUcGRWL3dtYzExamda?=
 =?utf-8?B?eXExamk3Vms2T0pQa3pHdUNSZ25HUWRsMC9mMnFBZnZobGJhWWV5SmZ6ZjRo?=
 =?utf-8?B?OEVPYjNyZk84Vy9RQ2MzeWw3S2ZnbmFkbFMyaUthWXRjdjAxV2E0bUVJemxx?=
 =?utf-8?B?MHlsT2pQajh5dEhkSVlTZTN6QmxPWWNRaGtBWUk3MUlrTlZvQ29QRkh6M21t?=
 =?utf-8?B?OU1zbTc4YmNoejJaNVl2TDlRSWVqeHUvVUdiMGlaMWRnZm1KbTdYZEpyM255?=
 =?utf-8?B?TlFweVViVFNXejRvNUV2MUxmbmtBeWJ1b3NWeDlZUHZrb09PVzlzNE9ocFoy?=
 =?utf-8?B?NUNyalZkWHRwd1Y2RGlqSzhMRjVDM0hzVTM5K0hXUGZsY21HUVJmdkZ5dllY?=
 =?utf-8?B?ZnZrTG12M2Jsd3pZTmNEeSsyQm8xb0dKMVVaNnlIVE1vNlNzMWpnb2hwR1Rx?=
 =?utf-8?B?UlpGWDNoOEJ1dkVWbjRtWlhyeDl1Y3ByR0YvNjFHQ1VuWk56cXVxZzJMTExu?=
 =?utf-8?Q?hYTg/RLW/mqaOz57JLlzQnyKK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5830.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eecfda88-841d-45b0-ad29-08db3e21006f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2023 02:19:26.4781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AUMlsaQlr87C8HSJX/0mnzYuwhK1gHjtmTSlTMqavE+cjfHhPNpjyh5vtt/jcWE00Wjjwz4GiOKP9HsEjVKbom7hy5Vjczu4N0N1i9cG3j0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8383
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Sun, 16 Apr 2023 15:12:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681611574; x=1713147574;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QKD1UOJuatQpubXWeizwbaVs8yUswmSPdYNKZ65U8Yw=;
 b=nZs+0fYHJPnr5vZGDHxcgj01rJ1AhFw4KrB01CPHmhEgZL5qOfUwzOq4
 Q8c659HeCVMRda5ktjjpqu5sjT1uXXYaRexa7O5orIpDmM8/cZb/+4NAK
 IwHsfGMZbv1fpqmbkBj+pDfZzWq1H8BUxjvTGj75zkajkSxxJUJWLwuDm
 K1plNb4sgSIYiaJtLD+3L0988e2EoHXyr/YrONFEMpANiasSgUTsHCi3J
 kW6Rqun+raCVs16tWg0jjNJK9hkJwWvmvCbQAyNXZViqAjaaKIj1ajvcc
 0FUM3QenbAsP9R5AcIrbt24UpioySKJZj65RS/N1qEsy43CiozSZXU+pT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nZs+0fYH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Saturday, April 15, 2023 5:20 PM, Florian Bezdeka <florian.bezdeka@siemens.com> wrote:
>On 14.04.23 17:49, Song Yoong Siang wrote:
>> igc_configure_rx_ring() function will be called as part of XDP program
>> setup. If Rx hardware timestamp is enabled prio to XDP program setup,
>> this timestamp enablement will be overwritten when buffer size is
>> written into SRRCTL register.
>>
>
>Hi all,
>
>I'm actually searching for the root cause of a similar problem (RX timestamp lost)
>that I can reproduce here, but the setup is slightly different. The setup:
>
>- igc driver
>- i225/226 network card
>- When starting to transmit frames using XDP with zero copy enabled
>  another application (ptp4l) complains about missing RX timestamps
>- Loading the XDP program has already been removed (not needed for
>  TX only)
>- ptp4l is using the traditional socket API
>- The RX timestamps seem to come back once we stop sending frames
>  using XDP
>
>The "zero copy support" enabled part is important. If ZC support is not requested
>everything works fine.
>
>Any ideas?
>
>Best regards,
>Florian
>

Hi Florian,

You means this patch does not help on your issue?
Need to understand more on the setup and behavior to tell.
Are ptp4l and XDP ZC Tx apps running on same queue or separate queue?
I suggest you to run " sudo hwstamp_ctl -i eth0 -r 1 " multiple times in the middle
to check the behavior.

Thanks & Regards
Siang
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
