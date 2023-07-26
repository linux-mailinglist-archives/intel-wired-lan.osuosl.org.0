Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C05B762E0A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 09:41:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5BE041C2F;
	Wed, 26 Jul 2023 07:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5BE041C2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690357258;
	bh=/DGS8wnptLZH+Ce5sko6A0wqzlUX7bA10lN7EpDlR+0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IWFBONfoQVCI3L0F2j51UyxrmhNzzM0+ZXMdm7Rul8aJPls7DvjUTesOM7dRYUGz2
	 q7od0gxHHVhy4lKsZCoZz/3T1tRXmPXd/EjBkgXQXkGPYVBGAu2ZKDL3XumB+TG3qO
	 3cs+oZIxs7U5PFrfVbFC5ik+ihVCghbHFp6ZkUHKhzwyd8W8EkIwGP3ANfxvt4CkRf
	 8IWTGatEruGdUGSDX0HHUyCrpIF01EhaGZKBOxtCfyhMf9x5kk83mG8jTARKNcrja5
	 llNFAWhWrAV55pEvzi2avPeb/ErXHt38RRexaNCZzD7VFAJr6W9iM5zG3/Fh8F5DDT
	 finLmGsjVE8NQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8yvCI0_H0lb9; Wed, 26 Jul 2023 07:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 913D140017;
	Wed, 26 Jul 2023 07:40:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 913D140017
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1CBF1BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 791AA611D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 791AA611D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O8DINJA2CDWe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 07:40:51 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 26 Jul 2023 07:40:51 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B023360AC6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B023360AC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 07:40:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434201398"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434201398"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 00:33:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="850357977"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="850357977"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2023 00:33:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 00:33:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 00:33:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 00:33:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1Q2rehB0e38LhnO7TAebCsEkTBUzSbL52vI4H6ld+pJT9rtw6/MivcAdQu+iMy7PzEodbm7Bd1zy7sSj6815uqNCRwNTN8YM8DSIiUwZfqyeRVf/X9YS00Vc9hMGd2JMv1RkU85j7Vgs4AA5rTTuMX/PWH7kvdztdpJKvrzZAT4MOFYbx4qmqFoSmZPxj5Nbk/kFV8z67DsSE36gbbUTPeLi2fOPfyvExp4zz8FFzexCo/EdqktDQ/o4O3/D2PazKI54J60fGkn5QXR0rO0q1LL2EionG95TXs/Iit4kwwCnMlLQwLnXsiKDZgrHF7iFRCHn6+sSPyOqPPd0+Hghg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J6ldfEQAQljBvlt12VF2zlKpMRMHv9A4ENGvgmw6R78=;
 b=haZ5owCPO/aJaGHa5de1mSyBNX6f77KAE36K00+ig9s6D8cBTCu3xvKuP19PYyQIHm6jTdzbnNxg9eB+ISA6kJUHcKeq0R/khLkW6OWCwjX+/NNAL+HKozh84lj3qY7rYtpNB9byaJR7CwCWdZgJ7ZU3anonItafpsAU2SoSB5jLXhzHXssqfp/Tl5V12FN1M0z/ob93b1lD9PR/1gGpuyu9dTYMhiIqobaWmrBTJLEPYCUd/QGbEhZOAKd7cSPSnbOOkfBM8jquUxhimDABv2KcCY8/Oy+cdcHFspDWv4RCzk2uaiTMTHoA3YsJdeOhUV8OpJMqJP76zp2zMMEIGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB6606.namprd11.prod.outlook.com (2603:10b6:510:1b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Wed, 26 Jul
 2023 07:33:40 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 07:33:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: add FW load wait
Thread-Index: AQHZtZJCvKYOxuiJ2kOvKYf9xYfBCK/Lu35Q
Date: Wed, 26 Jul 2023 07:33:40 +0000
Message-ID: <BL0PR11MB312244BB4754B0700CCC05D6BD00A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230713132124.1514647-1-jan.sokolowski@intel.com>
 <20230713132124.1514647-2-jan.sokolowski@intel.com>
In-Reply-To: <20230713132124.1514647-2-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB6606:EE_
x-ms-office365-filtering-correlation-id: 78fa94b2-646c-4c19-1ba1-08db8daaa22c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PiBe0ox8iCXg+Q0MdnlTYQVzx83scnEl+Y8gO9LvN85SMGqfACAac7U6HodpoGzAEb0oKaGcU3JN+aCltiq60OpTgpxFWl8AKlLBsvAJNWI4TA3YouYvq3ZX2X81+EtKbJMGnQkH7XxxbXNw5CprvGppqJAfeIJn+B0eftaQVGlA0a5+kkXgg3jokkrEC8v0WAvt7bJpafBEm9AWhrVzgiXqPNgaf2TMg4w+agV1c803t2zwwfTLynXEn6HrN3QVv+PWuDAcKSRdyerxNP+LPQDfI7JkiHClp6NB6l5T0GUth/KX74FPHUMPVGcHGdAnslFknWVrtqXxURTR0+7wnGS1y75936WFGfr/iWPek2D2maHuzGhlb21UEP761Yc7wWCL4+9NS80gQS/61SHZlmbcTgEDGCFEsttr/U4dxMozDOrWK0m1c92ZGIP44Z0tUqiInoieDdXRQojY5WQuoAP5qHzJ5zRgzEAqCC+Ww9nepL9jvpl9uLz5yQ09VedP8eIN09KZZAPokjcf9+eFZsJiiXpp3cHEH25C1AZybyHHNDYlYnSdfrvG6zhhcithJdmTbXPc9qVS8aT6YZH0h/5wFUY89H5N0/60eGs3mHTgF4JlVZ77rN+t/sYExRnj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(39860400002)(136003)(346002)(451199021)(41300700001)(316002)(4326008)(66446008)(64756008)(38070700005)(186003)(55016003)(82960400001)(66476007)(76116006)(66946007)(66556008)(53546011)(6506007)(71200400001)(2906002)(26005)(4744005)(107886003)(86362001)(9686003)(83380400001)(38100700002)(7696005)(122000001)(33656002)(478600001)(8676002)(110136005)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3unAF7nQ5e5nfgftmi7FQmAtnqd0S+m2ifk5oJoNq1HXj6tlV4FfdtZOzYbA?=
 =?us-ascii?Q?RLRa0L+1X/ex1I6/gzvxfg7oQR3rU78XTRDcskmQYx2Cc6A7/J21oyRxuf5j?=
 =?us-ascii?Q?l4B8YuylZX+pBg61EQ8DQWtgmTTLLeNcWvCc0sgvVLrtlqPLa4OR4aLQLY6F?=
 =?us-ascii?Q?09SEdoL++5innIypN1eorAp4EsojCZjKVdcBE5rvUfkI7j4sKtf6gBe0swrA?=
 =?us-ascii?Q?vCLTOjbZ7ZX1Fo6SKYcDrrj2L38oZEuTjoifUyAXiFj/BXnVja5bu2ELKjuo?=
 =?us-ascii?Q?x1ttgVn/jmCWSm3NTW6LQYtMYJG1HIJTPoqRUYQTKTRP1e66MDSRxu4I2EVa?=
 =?us-ascii?Q?xf+NVK9lqR9+HdTZP8gWzkqOHCJO5/602jvRJJmkngMyZHFBwnSRSuMmu104?=
 =?us-ascii?Q?V9PVOfIxXL392xhTKUHwWA1wybidnkhmbxi7uQjTUvs3Mjpi7Wi4wZUaqzui?=
 =?us-ascii?Q?RHN407a9K3mZ/x097inG+ShX9XEw1rZeAD+BlBKWYAAiVXldW3q6g/jmTKDL?=
 =?us-ascii?Q?hw463PD89/8ANjc392BRKtfKY7r9bVnPQ4j/d3vre2U37ygzTtgjaYvzKWud?=
 =?us-ascii?Q?MzZoMDnwHpGloAqPPZVp6apxWNg9Hr/bP5MdLGnxefZbbPm+Fc6qONPbf/SP?=
 =?us-ascii?Q?2C59OiC8V9LSzidkUsPXo8n/M/J16mCLoKipj6jC50PavM942iWC1op11K9y?=
 =?us-ascii?Q?13cao/1o+I7MbKPnel+bTC8Y0FZIDm6ebSYp+rVxiAsQOyNnCkB7HUWUsjjp?=
 =?us-ascii?Q?BYuhjvDCENEItY6I2/G9F/K5we71mGeDjUKDndMVHYXBjQc5c50RHLXfH8Sv?=
 =?us-ascii?Q?uZPRaCrq/9IqfEY8Mccun+A3xfBsO9I+tFVFkl4C79+b4oQlqRSDhd+o7WEZ?=
 =?us-ascii?Q?TY6LByq/lsDO6Dot00A5rvNXGshSmJmKHoE33Ahdd9Di3D9SPtQGgMLEGV49?=
 =?us-ascii?Q?stwnQlfrYM6AK2eJCDKv4gFoDaE5fr9xgCL05pAJ3xrALb4fzoFxhCwdyXOm?=
 =?us-ascii?Q?5UvODK9M53g56HmzM/5MoPvdJ70Xgl9QNvloChHiagV19rPDW2agk0q3Vaph?=
 =?us-ascii?Q?5O9SYymls4hJwu9FfpgT51jDAs2xsWufLXd9ZdpeAf29Ban9C/xIYGp4XV3H?=
 =?us-ascii?Q?uirJeMu3WBsbf1vG8dP4mg5GJt8SCNaoeafA8LgPqegz2ttjLfQvBM31v63i?=
 =?us-ascii?Q?uizgdqaLdAedfB2wcYvtoTygLNoQi5TlLGDlgqbHKOzh7qY48wYKSXlT2Rh9?=
 =?us-ascii?Q?/VjB/mEqPKdcO1G9yCTtV6zxxVkRBO/XY0NqK8W9WQO2DiUY+cNuWwsHPny8?=
 =?us-ascii?Q?fMsiwjl9uCh48M1OLTJ1Q12GtPf/BdrQ8lqlHS2x1rvtqEiK1QTtwhTSqEE8?=
 =?us-ascii?Q?czM9kQ1JoNIg9QcO3HWZtSGi73nG31P1k2Ti5PwFUmDaO8eGT4TCiqVAyUVB?=
 =?us-ascii?Q?UlZD695X1K0bhd0rlPHAMsIhFcxN1QbZR38NrdMfNp7WopV3PbDUGEGfSF4L?=
 =?us-ascii?Q?6WmS1zA7fqqEhcxpABFXu2dp1DQ3Aep1SpHMypH/gyN5dSTr01/F24jSLf+/?=
 =?us-ascii?Q?TP7qWtd+MenHpIGUwHycIe2dX6agMsUB5v7rivDR8cAC6JvtuCXrcf8i3KNm?=
 =?us-ascii?Q?XQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78fa94b2-646c-4c19-1ba1-08db8daaa22c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 07:33:40.7568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vjw9/ZDtgm/EZUkGnBNh/fSmkuMH/Oa303zcUk/cYl4vkRMMt8uuSIHJz483qffiXbILE17qay3PC2pSDoJUcDPL1FQMyEyUUjUpJlGL5DI/aW27bct4jMPuAcmRCQfX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690357251; x=1721893251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1gjbfwgnMKNDJJeGIoe/oC3Mr/jYKLYpJNGGTJw/CC4=;
 b=iYVvxhnYxXlgHk3y9YgA2hCzMXf+7oB+vYxRWrfM9FD6Rz3A/R0WOIIp
 aU4WCHECeezh6XZMDolsh2+CzRbhoq8diYX9Q1TRksedQqSWWsbM11TWf
 Sg6LjIE0IYWps/3OZi+MHgtY8ywm7wDdRSFViQmCcT4/f9Q0jvqVmDvWq
 XzD6LGyhFuHLzzcuPxMy4TTUcPdTT4MvZ0HIHi7O235eUUS/JUtBlu927
 k/KjMe8TAxbuqseIV0cqm49Ub7SIVWjRZ5GP7+VYiP9PNtJuWSQQ5F3R0
 98BMHy8VjbzzP+f5HORhbijCVOerAuHyhB+4SjdjJ5fpJ6rdX1i5PWDGb
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iYVvxhnY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: add FW load wait
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jan Sokolowski
> Sent: Thursday, July 13, 2023 6:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: add FW load wait
>
> As some cards load FW from external sources, we have to wait to be sure that FW is ready before setting link up.
>
> Add check and wait for FW readiness
>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> v2: Applied hints received on v1 review on IWL.
> ---
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 37 +++++++++++++++++++
>  2 files changed, 39 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
