Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B18054B2C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 16:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 784CA60AE4;
	Tue, 14 Jun 2022 14:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ek2QBrxVZ8f; Tue, 14 Jun 2022 14:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 731FA60F42;
	Tue, 14 Jun 2022 14:10:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C26F1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 14:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 665E0410DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 14:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id no8jQ6Opi1-v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 14:10:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C2F14187D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 14:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655215813; x=1686751813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z1GxHrAExhuuyqIYuEUgtugZ2PoZFHh4emE6t2HKDXI=;
 b=CrfvrOJE1tUoVqhHjz7/+Iv8IgFf6tROcbYAkiHiLjSfdZ+QN51gYpk1
 1jWGkcSsmunqb1UfHzoHpr7Wvpkn17T45sraCOQDyR2qWqTQ19RPm3bFq
 c6Hn1dceMQE/2q946MEZ9wZvUOFbLzrh9S7VvEG3bQuxx+KgFUFRclI4N
 UHrDiklkmMUgnr7unTVgFveSOV45ghC+VEiGOiBXOasFQ54TBNcyqftcM
 o+tVnfKSm7wnt34y90xhGRaK+a5KC04wSMNTtWMY7apPOc4q/gQOb/DQ+
 H0CZ4ovhaGlU3AI/U69CFhCBj5o+uxPExmO8N9lFsE+JaLkKmEuzBJ411 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="276170445"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="276170445"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 07:10:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="569997026"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 14 Jun 2022 07:10:12 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 07:10:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 07:10:11 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 07:09:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqkhJZBILO3BgndpOSMaC2fBhe2ODie/DVKNXHcK3sN+GiypqqLHS9ashliGoQwvJq8fhUWA10X3/9EDwxfi1GKR40IqAidxrpw73eAkSV0AFA2VF+r548V00Y7wKyQ7UoUHo4hTVGJi7rQd31+4YfsN88jIFLI67aztcRNPQnQPAM7eH+GDsGE+yewIAjpEwa/OiU6oq+21TEVRoDWNEzv4lzSFCxtQozOAeS4cPeunP1sn/5a2DAtoMVB8UT9R/4PGUMqv5ylKSYfPzhKWOWnD1qb9aOcT4AoWA82fz1ve0W3wtV9aWIENr25aiAB+Q/dfftLqavrTzjlx7fK9jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAFbUB5oA/3+HBy8zWH0jAvX50KE5OqGNK6a+an6CHw=;
 b=Km3zuG81cYlOmBjQOGcS2NW/4sUfz8rw+9Li1jXrhrZtQIReiZJU+xCqmMCZCivWvEoBrRS2RZV7/yCcf6wlrewxMSEZdH67t9xR1sfk0qyvt1+rzV98BXrcB/1IS/rzkgjuBVx/gvNWw0ACYv9V7/2dQ0nKCitzB98ZdbXIdtj8Iq0zkNaz4+Zpc+U11C0hFWfTHi42NVXPWQVmGvhmNpLis3RFgmDO37SlnKdHjb48hLs6q806JymES4xZkdt7A/8IKETHgjhnYV0/ekd6TZxF8Qkn/wJJ6D1AKLThVnUX+3QGmFt3bkx3gm3nxO+Z3Dofp5p8xLakPGVafQaZmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH2PR11MB4200.namprd11.prod.outlook.com (2603:10b6:610:3d::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.14; Tue, 14 Jun
 2022 14:09:55 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 14:09:55 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix dropped jumbo frames
 statistics
Thread-Index: AQHYdN0mX+m/ITXr2kaloeorqqhlS61PBtiQ
Date: Tue, 14 Jun 2022 14:09:55 +0000
Message-ID: <BYAPR11MB3367D31CA072126EC24501B6FCAA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220531105420.2567792-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220531105420.2567792-1-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c94eb2f-53fa-402d-c6ff-08da4e0f8eaf
x-ms-traffictypediagnostic: CH2PR11MB4200:EE_
x-microsoft-antispam-prvs: <CH2PR11MB42007A514CA702DC2D83272AFCAA9@CH2PR11MB4200.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tDoVQd2JTOEoz8dm+WT513zQBO+csbxBokL/KyudjOD0ABhnDC6TfQCNVAWGfYQWEoUe0Qb4/SayyqYheQLZ0b5WS+pzd9+UcYQArLTq+IVS22om2Kcw+TwOQY2uuGbq4dYgvdZq7hRKGlMA06JmOtqPsHvVo1CvGR6HgyCCdP2J8p9D8h0DSg1oAmdv/BdRl2fDvc4AogaL4dLshk8muXV9owcDyWOjLrnYMjVigBlqnAHlj1WYONZRrMxcFvFWwJGN4UCZv/cjsNzv9868/DQjjbREnY6KexLxYk/rYsazbovItAxwSRB94AlfxetyVJ77ajGQKtV/4nLHcT6cSQhxNKThdINcChWo48pYBOWEDnzdZS5CZzgJqyabh0wWwiUcfg0pV0T4/PJ7wdka4nxSDMXL30IhN/rRUGJCBWna/PAdTyqKW8/8K1toul0gqgswZM0GjCWN0x93kGl2gF4UNl+kDVTl6ot0lygZgAO2JkmkRp0p94r6Drihp26woUJWZ57jf4C/bgccU4Ms/8LAqkRUTnz8j4eKBI/LwFKlqnsVgWIA3XS4i+ribOlyMFrFNJQUY9UR7XM4g1Wdr/y/+Sbv9lS6U4fIVx14hDTHrLu0WnLEBUHnAxuq31Ta8y8n9NoCc5LZtY9f4B7YKNod2cgj+YSvOurjnWhZj2ohFx12fcit/cJx29jh6lUZn2m0slFmGwElOAjjkp9M8w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(508600001)(38070700005)(107886003)(122000001)(186003)(86362001)(82960400001)(33656002)(55016003)(6506007)(7696005)(83380400001)(26005)(9686003)(53546011)(2906002)(316002)(76116006)(52536014)(5660300002)(54906003)(8936002)(38100700002)(8676002)(4326008)(66556008)(66946007)(71200400001)(66476007)(64756008)(66446008)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y86ZmpQSXRtIQgPiU+ltc36O74kDA3KslQWp1R4BYDPRyKL7Z4rVO0YzSulb?=
 =?us-ascii?Q?MAvJDKB4goriXdzEZzWxpnGoqevWH6PoStxxysD6apJ3E+WFB7mGlJE80uf7?=
 =?us-ascii?Q?QCoe/aGdk1zIpEHcLmTdoq8oYFrsuvB7+eR+qMmMHP42BnHbjv3X4lh8++eM?=
 =?us-ascii?Q?FzeZBQ4gRZL2XHZx/JKOGHTvLqPLNsVSvY7ObxiXSJYuVGh9JKWYyxwHBgeK?=
 =?us-ascii?Q?7ToXJtCQW6m60l7UGjCgq43b49eZzlEnChHklKesFo1vBoBcB9TYNWn9PjPJ?=
 =?us-ascii?Q?wB75IJgBmof0uIttn2bWGbPwG2ea+hUZkec4Cval45BWQtVp1CDI6hmnbiYA?=
 =?us-ascii?Q?UzzuOQg+eg0QfvOktlVyi3YMTsnmjJYXeOYvx+SgsMdeWtABC0yWbbtvFHP3?=
 =?us-ascii?Q?+kgnO2SbJfaYpaogXFSy3DBqToWqeMAf7Cjvr6/l4QfmgZp6EVI3hsJPwn1V?=
 =?us-ascii?Q?xmEreLjUbBaY4yrWGvbmszNcv+siOJLXCSRGhhCllwkiCbylGixlbO7l6FE2?=
 =?us-ascii?Q?X3EM1wmmV/5CXxbvL89LVYT+QCQFMx7jtwDVKHHzcpixUwTcz8neUM1+eNLF?=
 =?us-ascii?Q?8InptWRKCdsJ6VYeR6gq0iX6Ch19F2+R7MIt8nqCZLy7AR6xHrC8c9W/0YWK?=
 =?us-ascii?Q?G+nkKbK6+vNWgO2LNAeA3LQFXR5NPwUpXedrIzYJ5U8vgbt2pTV2/7/qnDnQ?=
 =?us-ascii?Q?htigN/vFYPcGUILia7+501LuNcHTf9FmRDbkeiWV9pBarqqq6sePAk8eONB0?=
 =?us-ascii?Q?dGoNRu1novzTd34OuzP+E8DXePbuEtuQZBaC+UVChxNodejfuTZS68H6+sf4?=
 =?us-ascii?Q?C4oxB0jzlCoPtsaSui3UkTUhlT+9t2OTksVr5qPcZ81wCfiJkifhd4mRGhEW?=
 =?us-ascii?Q?tllTMQbCZEpLRNqKDYkCCbDypMyQxxfP6MdjGk7FpkcVaZCouy9Mv65P2TGT?=
 =?us-ascii?Q?Nk6ccSj5Y6ewUPEsPlZUWO2K/YKRKTrlzYx8w5EIoauo3e8RVgAG2n9bXQGx?=
 =?us-ascii?Q?EG1v+eSw0r9K2RGcoaIaBohtNUL9T4u7z9V0C+BvW3kGMr9RJyrgCnKk148w?=
 =?us-ascii?Q?qYbmOr+YSQ5vlynxkmws34OW4ECRH+Hxl/0hQR66S9znEDwitigj/8diVKmQ?=
 =?us-ascii?Q?lgdw1BpfR856I7mZK32jRwvw4Q0z2NGP4B5pXFponpTv0R6TntVnpyXJ+LQy?=
 =?us-ascii?Q?ksEwe0kLU7Fq/55oU2V2G4HZwVLGQEYmj9RO5VxAQzQ30mc35lfXM336cXHu?=
 =?us-ascii?Q?D9IxzsunJOZHqBk2iBw13bI5qV4CQvrZcf6Mt9gcp9TFSXLA6MmGbi39wsJi?=
 =?us-ascii?Q?4fx1MxhgdO6KuOzWVxVXnNbPsvoF73zeeJTebVo1320atZEDJSfjB7t54OlU?=
 =?us-ascii?Q?0FuMxNlv5Vkgc7KtWLlDzcY0JdNc9sNJTVOxOhPqfdz9WrGk1bLooeXmAteI?=
 =?us-ascii?Q?K0+sClmPc7y0+Zb6eYktUDivdi8oYZPIMGN4FEv+s6KCF9TNvsSO8SiaNBky?=
 =?us-ascii?Q?hiJDcsJE0I9297vbOmG7su7dfmg7cw2CQUiMR9Hu5ZOGdKs4SBz6l0CRpC6R?=
 =?us-ascii?Q?HM29IF+lt03vRCJ9GQyWCxIVnu4EvPsMaMzzpbh8YVsA8se193e/TKexiQRu?=
 =?us-ascii?Q?umNYsr+YuV7gaB8F/c/ZEN9KCwxPANEwPj88ZsYGNgQZmtBmOiepRyjDTsMr?=
 =?us-ascii?Q?fuu/1mhVe0QgC4aLbs7uzhz9e9nBjehSkTstBRWSFrMfr3jGYICztivRp8x/?=
 =?us-ascii?Q?cGWbxRTCLA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c94eb2f-53fa-402d-c6ff-08da4e0f8eaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 14:09:55.1394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +P1Q9LIzibCDURp3Fp23wGyOLnUDhDYBS1Birhm0j+73e17h7Xb6P9FmOPPGsWzBbiVNHpz+W830RJPNGjRJKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4200
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix dropped jumbo frames
 statistics
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
Cc: "Cieplicki, LukaszX" <lukaszx.cieplicki@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Tuesday, May 31, 2022 4:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Cieplicki, LukaszX
> <lukaszx.cieplicki@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix dropped jumbo frames
> statistics
> 
> From: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> 
> Dropped packets caused by too large frames were not included in dropped
> RX packets statistics.
> Issue was caused by not reading the GL_RXERR1 register. That register stores
> count of packet which was have been dropped due to too large size.
> 
> Fix it by reading GL_RXERR1 register for each interface.
> 
> Repro steps:
> Send a packet larger than the set MTU to SUT Observe rx statists: ethtool -S
> <interface> | grep rx | grep -v ": 0"
> 
> Fixes: 41a9e55c89be ("i40e: add missing VSI statistics")
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: amend commit msg, change returning types and provide little tweaks
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        | 16 ++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 73 +++++++++++++++++++
>  .../net/ethernet/intel/i40e/i40e_register.h   | 13 ++++
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |  1 +
>  4 files changed, 103 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
