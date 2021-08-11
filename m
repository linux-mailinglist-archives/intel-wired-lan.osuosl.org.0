Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCB93E91F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Aug 2021 14:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED7624055F;
	Wed, 11 Aug 2021 12:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fa8UqclCwUtx; Wed, 11 Aug 2021 12:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E818D40502;
	Wed, 11 Aug 2021 12:51:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDF041BF34D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 12:51:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D73994014E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 12:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fgU2zLi2WNsM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Aug 2021 12:51:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 727CA4014D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Aug 2021 12:51:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="215141719"
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="215141719"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2021 05:51:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,313,1620716400"; d="scan'208";a="506930477"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2021 05:51:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 11 Aug 2021 05:51:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 11 Aug 2021 05:51:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 11 Aug 2021 05:51:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TDPmBYVGJy9pRg2/eQhT9f/5Ao1U78mg1nMcJmrPLJEsyIdUli5kQA4f4elkbZDPRxw4ckc21/P+r/YoVeLMT37XXTfravs6Z5KLSAvaMSW8qNtmYYbm0UyTT1NMJbRfFNaP9QMrFavo+T908x6rWWjQNB/ikqYATFFkf8VcPpNNfKsKV1y4wKnLwbTBan1+FYd/qZo3YB3J/9w7NhwsULnh8p+xDFDkDKJymbPWvx6aQNZBKPAeRmSpfeW2E4Q+4JdIliDz9YekrfNG3NGm7ERihX/zEkbPuADSUTO6f8qGudrH4FtIIknsL9ClnCWnIV2F7vP4+S1QSFmL316BHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wSHv89t68aGAO0q/2wsuVBNJBtOpGFEVuDtLcuCeiqQ=;
 b=IxSAEc5O3RVtFfmuUkT+jgf92rETxMUNHGRnUzfILFYUVcxLBYkQpWzQFZD5MxW9kGglXafW4Pdonn0nF0U7T3XqqsGWg24E1b98RVsntkHdNxas4ytTrAMzLsTsmMh31z3GbBUmjn9Q7XHAJuH8U9rA34p+vA6NEvW//+uDmEoY0hb/ac/1FVcuAY+su7clzjRTnCNosU7neOqs2oCY7PMr2Z5i8MLl59aV8IYPZUNE8N6e1ORWRtoVto/fwVUeShyJedZDUpBLWqNB7o0ias/IYNwsV/BX5tTtVP3uPs3gBW8GKJ3s6KXBxSsc/kh4e2VSwXeBHxglPpZ0idOIoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wSHv89t68aGAO0q/2wsuVBNJBtOpGFEVuDtLcuCeiqQ=;
 b=Jrsi4u3adOddrRXGeoZe0sAyzJNEHz0/7atAG73HxwwLZ8rZbHn9H0smDVwQpK/2h+CIxohiUkZmWX492mNtK9OxVi80GqwC8+1051U/ro2NHe+IPGuVVfz23vmz5Pyv6FcjsWGJtM3cjzzdYxIMNDLAdK/iqyMmRdDVjY1uRBA=
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by MN2PR11MB4583.namprd11.prod.outlook.com (2603:10b6:208:26a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.22; Wed, 11 Aug
 2021 12:51:11 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a537:c981:eea0:9306]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a537:c981:eea0:9306%6]) with mapi id 15.20.4394.023; Wed, 11 Aug 2021
 12:51:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/7] ice: Fix link mode
 handling
Thread-Index: AQHXepIShyVN3rgYV0qLSBU9z99byKtuaZwQ
Date: Wed, 11 Aug 2021 12:51:10 +0000
Message-ID: <BL0PR11MB33639C6CEE134C46C60794EEFCF89@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20210716221644.45946-1-anthony.l.nguyen@intel.com>
 <20210716221644.45946-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20210716221644.45946-3-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3ab5dd3-0708-4c6c-9ad7-08d95cc6b1ec
x-ms-traffictypediagnostic: MN2PR11MB4583:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB45833ADD6965670424C4A7DAFCF89@MN2PR11MB4583.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LTLul/2qjcZ+dU5lDN64oYkKbIJCiP4lZb5GcXtKADlCowmPWCBt8bg0nXUCZzPc5RxJK2Y1gZK4nHWGfyNGM86AUgKE0vSVgCeV7Qsc1/zUVwuzwKrf0vFu9uKqRKbaQNh3hy1Q19ACZEpZj30QlRwA8EW7XZbUYOqdd/AFZNfaTCqdatdFPLbd1DMIIPlY1+JGtmpV1DbzFPbCWnN/6YpR6yMTnWzbcvyb74sVAPk3q2jJxIXyK4VaJJksrzRIkX+6Ml+WcqYm5MsO14i2wX0H2yuKrfuehh9DB2or6s0hgz4zOmDaGVDugZlMJeyfkAyGyAKHlFoVbO3bnhVPjGh64Wh4fozD3SA0xrgQcXBhQu1v7jySP30BPIJv2522P7/gQBUFiDWaGNQUfJfmZ+MQ6tMk8e+zvBdESSZGjZGmyH2bXf4VhCZJKcKUgT22tptfCX3L1/AWHdQCZZECAq0HUFXsWWQhvDPhKuR7SRGoQi8/MyRN2N9s5FCpTI14dsJyAJViFCDeTk0F33q2Fn38WomFzC+eFNHHQYVy4VhzGly4znma6gFuh21hf01wddQ9Ht02g6mUCZZgai6bDIfgnchGHnJyLoZd7hNoj2TTFEtEfFU4x5Z+7rhwSKfwQ4FaccbpXju5xeiHMJSYHwQUX9MGQ6l11ydwmNcvZJYniw+UT5RQlNU86pM8PMR28hYZX6Nh7VFw5MHQbnpggg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(186003)(2906002)(26005)(52536014)(53546011)(6506007)(122000001)(38070700005)(4744005)(5660300002)(38100700002)(7696005)(55016002)(9686003)(110136005)(316002)(66946007)(66446008)(71200400001)(64756008)(478600001)(8676002)(83380400001)(86362001)(66556008)(76116006)(33656002)(66476007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uc+5xpN2kfewL4AyyROKoR4Yd5WsMfEj1PzOZnCMnFEa5K5OqTgjtGyTM1HN?=
 =?us-ascii?Q?RS1Upw/W/39OXqXcObTgTsclO9OWchcweGOVqdiB1NlPKEyzdegkbmP4k+ki?=
 =?us-ascii?Q?N3alKIxtCbjFfd9S6Ai+qAKAPksP9m1TyEh83iosDtOc8FjkHod24+kXBTOa?=
 =?us-ascii?Q?AsUiUb8o+dQbnFaejH/SYmCiEpfKNkQ5Sbg3KZVT4D/rEkZARUtdV30DfceP?=
 =?us-ascii?Q?HqGmmeDC8w3V0BSC3auTTpIKIvR/NDvdc6oNp3Hw+VXku0cNXltFzEVSoXU4?=
 =?us-ascii?Q?oTTQH+yRvJwusRqIbYbtMsLYmJ6pw+vsVCo1UOE2HouEYg3u8VJZiHDArGm/?=
 =?us-ascii?Q?yILSJCnweUAoobZECGLTasQu4HEL2WYJG/prKWYCnC+/JMqRlnrKbe8smoVC?=
 =?us-ascii?Q?NLlzgVdeDYezvKKs3LQtFwMs9NKv0+l8Lipcj0rREsoTzVQ3KrB9imdF6lHX?=
 =?us-ascii?Q?h310tevj1QsVcyA5yeeA1Bi+tkfLrTYtO4f4UuwzjulOr3DeXlIXAKd7aiGT?=
 =?us-ascii?Q?23El3jFQ52axqw8IFsCRGqIGukGRBlNpzRiIKVvoBUTbAGtpoS+fneRw9ggo?=
 =?us-ascii?Q?wJJ0uHdU8THplfXd6VM2/dLHyJ1fEhuL7yDD9eJeTH0Vm0fy2Tgryf0hSYEP?=
 =?us-ascii?Q?vz4HsmYSxprZYEUiDvMgpqZy/WrPIHb8xVD+9doci5SA/1duy3U6SW7uYP1q?=
 =?us-ascii?Q?L8XK0Q8BSF1KIxHgTHF2AWbV8w/jLjaTB+u5NeyRocztqVUIp0eJJk0ltyH9?=
 =?us-ascii?Q?hLN3MYYbuxu5rGO3DzWoMhTMEPWx74XJ0odF/cET7QukOlh92xJpINIBgih5?=
 =?us-ascii?Q?h4T6vF53BBhbXjSbrXr9Bi6dyTsFonBRYlsqE4WLqGw8LaIv21+R+lkKMnbY?=
 =?us-ascii?Q?PSFyqO+pYVW1q+GkxS3mJ3BDzY8L51sG0x2fxtz0XOjwMRBcylJwlfJUPW/J?=
 =?us-ascii?Q?AZpyYRdf6YZM9htUzWl4FKYqi96teen8r+mrXw/ao729d6YcLkgNQjvaVCel?=
 =?us-ascii?Q?RkDzZ8FI98pm2qayt3N5DX1NHY1jicE8Fc9aAIdx1tYMvDg0yFHR98XWkzSU?=
 =?us-ascii?Q?VINal7Lzz9V2UF1GSh78bz+0jMz4Ug36VZ27d+txf5RYPsePfUd2uZzoXxfc?=
 =?us-ascii?Q?UxODRQmnT0GIS2zmWrhGZYO1Gi+e+kfY42KYLONQRK5NjvAk7C8i4Vmd1CyI?=
 =?us-ascii?Q?pabdHiH6IQ8oY63+xzGoW1gEecQowInHDD3cSocu/SYzxhfZkFZYqGM+lEK2?=
 =?us-ascii?Q?LBgncnNrN4I+h64ajY2yFbH1tV9HSxabQB6rWvxpWCxwFIp8nv/v2AP1eQMb?=
 =?us-ascii?Q?pZH31BPcv8WJWmveUH+60t3r?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3ab5dd3-0708-4c6c-9ad7-08d95cc6b1ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 12:51:10.6919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SY7KhhSF6kPklGLtlAss3h5qa1iNAnPdJ9PIpLPmqljMQxZSx0pJCRgmF7DIT6JQjuJP1IAqPbmET5qEZjH3hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4583
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/7] ice: Fix link mode
 handling
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
> Tony Nguyen
> Sent: Saturday, July 17, 2021 3:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 2/7] ice: Fix link mode handling
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The messaging for unsupported module detection is different for lenient
> mode and strict mode. Update the code to print the right messaging for a
> given link mode.
> 
> Media topology conflict is not an error in lenient mode, so return an error
> code only if not in lenient mode.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
