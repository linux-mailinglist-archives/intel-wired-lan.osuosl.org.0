Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2454D44CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 11:37:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E161D40B42;
	Thu, 10 Mar 2022 10:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c3ckMdjl9O5v; Thu, 10 Mar 2022 10:37:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 611C540B3E;
	Thu, 10 Mar 2022 10:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8024C1BF293
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 10:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BCFD84375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 10:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PflE_g38DEed for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 10:37:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B076184368
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646908653; x=1678444653;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IAFErGnKRjMbI0x4kuAUYyys99NvC/0OqZn3Io2PD0w=;
 b=WJUvxFDk4/rjQEC/y6H3tEh9/zOE7U466ri4MNgPzauQ8QCk2TeXgTIm
 +W9yJovNszvEHBh/whJJD/JMYo+NpYU/v5c05AXy8QcBAZd56U5W1xwxA
 XgTuP0XQqTE3dgyaWDU0eoNLE1iP955Q/TDkrQXBA2N/8FHn572eFmgXd
 WwouIBteN/zva/pNgXUWKEkKJsGzfo/FOfA9xqZuZTSVAwDTF4fhaGZ+3
 6utaZGoG7z187pyhzUQlAMcudF1tEi+ME+/xcdpaExv26uik54w8S/PZ4
 TBTFQRgsKemNeOuh+XU+KNEKbbHcECuUX0Ex4ZOaJT3qFwXms8qhTDgLj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255409706"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="255409706"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="596618675"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 10 Mar 2022 02:37:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 02:37:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 02:37:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 02:37:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ezj0jNIfYvw5rYw8tCJ4Tvc3AjppUvEW6gPqknS8n3MtDIMZ6Z+VDBvYpe/o4rmxE/Z9YsNFq6xpe1K4wPxZb0a7meQDGCYRK3tmhrBas6ZSK8fPyBdWtwkMts9Hu3JU3PTrnFQuwxbLT3p/5OAAM6SNsrQfgue4cyzVLPFWZ82s+OKabQaPnprYwHTVQptr4YMHU/pX2WDgCNW6yWu9rqRaG++Qlinr8a0txorj/x5W9kUJFWwDjbsEdJHjENYlKm99g2iBEA59lNuQ4odLykcSldX321v9XWgpkBJWQHcXvHlNKBLODO9LAyPMMlQGrKLaM/yEJe6Z21MczoLeEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAOtfwnNibx35UTxDE6QiJLAI9MeusXOWkXUYDj8rpQ=;
 b=aoyIrm5ua8A7UrtcO+TXAavMc2c5JEv37VmwFMSvcPumNzbZrGD/IeeMo509Arm36Vs8Au5DEUtlD0DxZ4YX/ID0PfMw67eHGaXuDsqcH5cwbDgPH3mITZ8CeeaG24TSUf+kdd8Ltp0yODhInpBn3f/fFWAxx64N3iDcxIEteC9YMrvSwAK4yfFJWcRNsWuv9Rv/oHMDSEVK+AZaytgJ81AKKf13/18ditGKMexprvQ7SWa0dKRADu0jNBAKnpwqXsVK1veLyM+6W8gnrSWyyMLjGB3BbbqHr99wDzEXOosOanhbUQQRd64inikTUst4OfplZsfWqgvSLk8TZxnL+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BN6PR1101MB2212.namprd11.prod.outlook.com (2603:10b6:405:52::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.23; Thu, 10 Mar
 2022 10:37:09 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%6]) with mapi id 15.20.5038.027; Thu, 10 Mar 2022
 10:37:06 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v10 6/7] ice: Fix FV offset
 searching
Thread-Index: AQHYL+a8rM+mieIyrEOF7+b8ewY21qy4dZzA
Date: Thu, 10 Mar 2022 10:37:06 +0000
Message-ID: <MW3PR11MB45546A2306F39A3647C94E039C0B9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
 <20220304164048.476900-7-marcin.szycik@linux.intel.com>
In-Reply-To: <20220304164048.476900-7-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62d687e9-2372-43ab-be6e-08da0281ec76
x-ms-traffictypediagnostic: BN6PR1101MB2212:EE_
x-microsoft-antispam-prvs: <BN6PR1101MB2212BBD6F9ABA68295AEEE619C0B9@BN6PR1101MB2212.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: htl24Kw++6j/qdnqj/VfSpwRu/S1z1jP80ZqNBxVdi2881j2qKdc8LAYngaCbyEP1MT9CBxKB3Mogju50/H9Ubf4eA6FisnxBzSRFMKIf2lYIm8aj/20CcnkJHpK9Tp/1Pvhx9h8kBn81wZU+5fqRbTyNGMyEvBnKnqLEymyD4qaCOUDhJDey0JqTmEG7Knf5t8GDVn2TFkAEiPpldQyJIrVXEA20AWEdhfns/ygSMBt2VMX5flGfKU3yb7B5e5sL3NG5fSjLrFZOyBHrEcYsVXjKjJUMaMRT/qUyzDbcTFJXqjeWZufD+fZgOV1lwPW6GiPMlr8YObcO9YSgJU8LbowRv9/CM0Yf8xijSzLhNj+KwzHmF0xVD7jA5pByATu9o1xArV8GzTP5T5TxD4JKQiHAl9iHAXXDJskA3DZaEpvZz0wdfW3YaT5orU8k4jaP71bZcsqpQmTBsd/V8MoHbv1kqZfwJFUCZpo3571jxLtbqr76dkYyAe9uSg7LHVXGPlw2tSw+txsANAvxb4ORt9lXHVl9lEVq7ucAd4/GPC5m42DpzIT3hZ4E6OWalHU/0b+X0hQLU5VLk9l1ed6G5frh0N5JS1aRbX0FxciQ4wjMlftt8N2sMlkNk2lIy5W0FEPV7NKvfyyw9qYa4+7FNh/WwyP0HzAjasNy1vorhyxD8yDbCf5bbqn59JUrmSItq9K4pk0l9chaD8Oj1b2UQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(5660300002)(54906003)(186003)(52536014)(26005)(7416002)(8936002)(33656002)(508600001)(8676002)(82960400001)(83380400001)(71200400001)(86362001)(9686003)(66556008)(64756008)(66446008)(66476007)(4326008)(76116006)(66946007)(7696005)(316002)(6506007)(110136005)(122000001)(55016003)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HjL2HRelCVp09nHH1XUNYGEGOTMQfm60ajux8akXOX8fsc0MucRG8KKsIAvP?=
 =?us-ascii?Q?FECkOMG5P7zWy+jzJfFB6to9KQWnVZ7wHcb1n61Vl6tqUddjYmJwtE0dzb+c?=
 =?us-ascii?Q?yoTG87Sq6tBmODwJIL+yIDH2eXgmMyMnghiIiPN1Rp0skDy/LVcjClujLZcy?=
 =?us-ascii?Q?vBfJpHZ083u9UmcJUC9GF7b/pvw1RYlRYY38lbH2/pjWqPeR9XymJXEfb0b7?=
 =?us-ascii?Q?06HKkejTwSO+8+vDxBeIPwr7qczYZE5caF+Sen9L7IiIMvZG+YFgInl2kbYz?=
 =?us-ascii?Q?Lx3klxrJ5y7nE1bnoBGdUmorvfE5AsvPX/BH45n+x9zKlFg59yH1XtMurFwB?=
 =?us-ascii?Q?IZVdxc1xLLR/YZ0EWN80kFRl+q+CvrnbGFwcpPHioCo42+yLL3LUngg9iGBS?=
 =?us-ascii?Q?LNB/Lq4pjDLHuWimz0MRoO8BFg2MeXYeUWeUmMfPCA97MEfrgY/UNPUwcUkB?=
 =?us-ascii?Q?0EEdORygodBiGGLFZ0h43t5qDzWXW6Ro2sYQocFr36skmHuseLepgcSP0K8W?=
 =?us-ascii?Q?eDfarERzxjKHmbKUHV6PBlb7JIweLRW+xKa9fS7UU++/4MykPE7l6JCv3POG?=
 =?us-ascii?Q?evKyZh/wlPF6cWTeC2mc3MI3lIdkQjCWgoND1DYq2FW9SZVEN1rCA27uJ40E?=
 =?us-ascii?Q?D8L0hOkUunWB1vovxKyyrXt50NeReSs35axliijqkk+f2oT39ziYFrkQoG/r?=
 =?us-ascii?Q?2yswsYZ+3khgPJR8ApDYzTqmVcmewT9Tw5wHYI+Wq9oTxCoIC0iZMQJs3yNg?=
 =?us-ascii?Q?komPEBidrjFGpdd9Pn1Mvo7CrztqjVxfiknMhqTrIxDhO9LvBuDZMyGUAU4F?=
 =?us-ascii?Q?QJRj3pO1EKxmoIIHfmPy8jMArVliKky0a0qWlonu0G6HQPktPipNaVLr08/v?=
 =?us-ascii?Q?nPwAbX63NffAVZHM8bknpcKJ7ztTsYhUe1U0JXS1OuI8wcGGx9g7CSRPa5qx?=
 =?us-ascii?Q?RHr+STInIQAA8hM+IGigpnrsxbJyb90Fi7DvK8XUCLCTE3WJ7NswUaHV7pfB?=
 =?us-ascii?Q?l1BcqD0E+XKHNCK0L1NnlujZRwbPKqjub8AymE9Oz7ojKGrrOX/DosYSXthq?=
 =?us-ascii?Q?eTS0peVq8f78TfNrfk7F/IgBgZfRrKspux0Uxa7aL+OLYZo0+CIhiMPvYO2Q?=
 =?us-ascii?Q?j/aSep8EKdVypHh74dldJH1CWcObd8dQboS2DqaprREWyKeAMPN/zlcbROMA?=
 =?us-ascii?Q?mucqRebUgPYklnfDLbb2bT7khViz188YfrCJh+6953N5yoR4sRCAuBz+mHCO?=
 =?us-ascii?Q?fEWb7GqL/opcBcOlEqE/fl9YhWZwdRIGfsaCJA0cOS9sWenxcW/RV/Y0ow04?=
 =?us-ascii?Q?x0a6hjKnDsaGRvIOQDw+goXrOzWiIG6Tkfhl+RdEFwuiTNRBUq2i8tpm2g/G?=
 =?us-ascii?Q?joXDh2iC4rlcQe05hGgQOg8NYb5xDPepHcgN3rCgdx4irv6UWu1jKFfCXyKP?=
 =?us-ascii?Q?B3wc38gOSUvlHsqm5yuonf3Jy8IaIWRFbMRbMjhnWLV38c8KctcwKdhVAYtx?=
 =?us-ascii?Q?OzZXWm+OlrsqVEquzC45ux58mpgr1cv9rJEHegeO2iooDfzJCad69nv1raOU?=
 =?us-ascii?Q?lgHmYy++KlRpgq9i3eDtw2enelz33ThpRXEJXqsgOT2P75dAXmoU0aSzL4Fr?=
 =?us-ascii?Q?jFXp/mcUo7WI1AMauby1TQlrJiZwa3/KAenTk5Bfe5NCsVVYJoCLc54BnWIl?=
 =?us-ascii?Q?rCWPbA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d687e9-2372-43ab-be6e-08da0281ec76
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2022 10:37:06.6494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mpigm3k0i7qXZpYU9gdERk0yYkoxJxDhp8GIaCVvHw5Y1g1uaSH1AnvYJgK3sxOCtHfQB4vAa2KV9wz53gNTCr3SedQgLT57EN59V53Xj5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2212
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 6/7] ice: Fix FV offset
 searching
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "osmocom-net-gprs@lists.osmocom.org" <osmocom-net-gprs@lists.osmocom.org>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "laforge@gnumonks.org" <laforge@gnumonks.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "pablo@netfilter.org" <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Friday, March 4, 2022 10:11 PM
>To: netdev@vger.kernel.org
>Cc: jiri@resnulli.us; xiyou.wangcong@gmail.com; osmocom-net-
>gprs@lists.osmocom.org; jhs@mojatatu.com; laforge@gnumonks.org; intel-
>wired-lan@lists.osuosl.org; kuba@kernel.org; davem@davemloft.net;
>pablo@netfilter.org
>Subject: [Intel-wired-lan] [PATCH net-next v10 6/7] ice: Fix FV offset searching
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Checking only protocol ids while searching for correct FVs can lead to a
>situation, when incorrect FV will be added to the list. Incorrect means that FV
>has correct protocol id but incorrect offset.
>
>Call ice_get_sw_fv_list with ice_prot_lkup_ext struct which contains all
>protocol ids with offsets.
>
>With this modification allocating and collecting protocol ids list is not longer
>needed.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
>v7: Fix ice_get_sw_fv_list kernel-doc
>v10: Fix 80 char line limit
>---
> .../net/ethernet/intel/ice/ice_flex_pipe.c    | 22 +++++------
> .../net/ethernet/intel/ice/ice_flex_pipe.h    |  2 +-
> drivers/net/ethernet/intel/ice/ice_switch.c   | 39 +------------------
> 3 files changed, 12 insertions(+), 51 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
