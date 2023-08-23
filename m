Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EEA7851B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 09:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD1EC41750;
	Wed, 23 Aug 2023 07:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD1EC41750
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692776233;
	bh=5hZa0EEAiI1f1ore+0KDLY2UuM0yWmkrY61XsLky0h8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MgIUMJ4p9ZEGWhktq1y6dSVln8kKlCzfcCoXK2MDNZli4/OX3pRZ0YIqkLtAl2Jg+
	 Ku4wMEmDUh+WWNi5eeF9XbSzaCoStdbgM29SYPc39pZ7YGdXc0BIllCmG0C+RDp0oU
	 YgHy91dOYNCAfLo4pwv8HPIeEoW+fC44D9xk0Y065pJN35X3LK8TEhFkythXhGgStb
	 yEaQSVDRJ3ZCuHiwzxdTlBkyVCHliiD8RX54Jxv4ksONpmMvywrCVialDT34XJi913
	 65Ta75oxscXxM2QvFawcfnmm0ggNvAqrVUZWUE9hBhJJx3R+VMLeRg2Sx4Y70mRiwJ
	 eVewWvvDa74cw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a0RYC0DRsUyw; Wed, 23 Aug 2023 07:37:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6234041622;
	Wed, 23 Aug 2023 07:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6234041622
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 548FC1BF321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35F004167B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35F004167B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1W0OH83sCMQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 07:37:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DCEB4408DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 07:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCEB4408DE
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="405094213"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405094213"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="686340764"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686340764"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 00:36:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:36:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:36:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:36:56 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:36:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dzfl31+nTBVaHds03YzXw4tAqk01XL/xZ8OqSMfrB7JDqnNPg6MvbvZEyvvbom9NrVegscydduvPS3U/IOGNd2l50MqjDtBoWxHePSq0DxktugD+7lrBv0OIAe1vCX9/mvdVX/2PXTIIRypzd10XVEH95F9CzeQDc/ZAO7xz2wPzkQgKfIVlSWpsjXJQWHjVRBFEcxtOx60WKT1e6eCmv20kgmi4W/8mAFuqjp5QeR7c5Kz9YHeGKB1PIk8nZ50RhbQM61kx1jxt9eiylXGMOxStFFSqw/Min8ySOhKVwxx6jb3ktkT/ATHy3I8DPCHcZDF39OI2xQrVTqd5QNEj3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YMG1OC1iYpg0tic6aO6ZpEgkoT4ZvgXgLxAxUa5IE4Y=;
 b=JCTts4muaICb2VMIErboHxrdG+0z/NgImXVo0PRlZBQSzncoCRbKoKqUcb/ldeANkGRelT+13jenaHv3A44rE/kas+wN/IFooMzuYkkTw21yPWAX/kQTVsyN4NhFFQYsZV5RvTBMo/yojMkYI2Dejvehn/GmMiRXN8aWrDWuY7hKdTssxA4oJlV1igoMTwh7nVd3m20CL2F2BunADiSLPocKEHgmo5msOs/T2mGn1rynJyleD3M6KZRQU6UxLT47qa+SwsIzONhIN3ER10qgbt1mI3OJoMnYUro8cEg+hXOkBVeWdJ8l7xJOmoI9C3XgpQ2mBQz+EoWH3UL2Qzs8jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:36:54 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::7a15:68a9:57ed:b62%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 07:36:54 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: don't enable PTP
 related capabilities on non-owner PFs
Thread-Index: AQHZ0J4tgFJaHA5RKU6wIIo0IRzSLK/3gX+Q
Date: Wed, 23 Aug 2023 07:36:54 +0000
Message-ID: <CO1PR11MB50283C00EE31438E9E38B01DA01CA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
 <20230817000058.2433236-4-jacob.e.keller@intel.com>
In-Reply-To: <20230817000058.2433236-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: ec534d28-3791-42ef-8a9b-08dba3abb8fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YBPZD9Kj0xYJ8avvdQPFlQE1UrGXbSTkuq8tM2NW3HN81rC0zeC9jcOAXR5kpKNXCV2C7o7VpN4J4mAdhuxhPnznhOwth4orH8AG8qmx2sk6uj2j7TS3SkrDtduRuGBLVFBAunLVuopgqSxjtp8/K6FPTfrrPdulCpulKJn0epvqNGtb/uCNPg7FdhOxrMRUWN/6iJWbuh6Rm6rRAXkxKworBK89WqdT4oAou42TSXPlGKyaiQ0WWqlfaFoWnl14mcSg1nUCx8oAza6jKjrDx+SVGAKrWBntrUP+9lF+o2h/yCt+k068DjrPMzcUoTMKglrUCKqaoUXXOEvVNsEkqcJUNKJbBmXU8kNsALgt2PwRmYbOoVM0XKAc53voplAy30quVOW6OBEceinwUatIRYud/ZPSVglrgGpefSqvtyJnh1LEHBgq33+rOkOlm8AmBM8gd8vF2eQS5jipI9ji297iUE5n1vnpMyEGGjHm3kSx1XVC0SwkUs/Hka+Dvn1mCnRjPKM0zT++80l9EJyaZn0o8ghiYAXOjo5D+MLUKG0eCnsQSvisqX2TGAm8xTGTuCtq9DDM/scRC58+t2rTzQqM6BUY37bF4guxDcdMJ3F8oqRsZXRUstJndVQPHU65
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66556008)(66446008)(54906003)(66946007)(76116006)(9686003)(316002)(66476007)(64756008)(110136005)(8936002)(8676002)(107886003)(82960400001)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(7696005)(6506007)(53546011)(38100700002)(4744005)(2906002)(83380400001)(86362001)(38070700005)(52536014)(5660300002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3ooaXJ+H55dBg6KrrLgfqJq4uEQ2LbWgh4n0fuHZLWxhR+MFS5evzKNg4Y2Q?=
 =?us-ascii?Q?kWMS/iThY1qU2MzafODn0o5cHXl2PoHl5mEzhA7aoZdOiNHavPYWPbuBDDxD?=
 =?us-ascii?Q?LH9/ruZEA7hm3SSTSHSBOP2Dxg5MLQXaK1ystwHLADTdbQfnZO28Tww3lTJx?=
 =?us-ascii?Q?kWRxH60AXM3P+70LFRiWdD7SEV7p8wwv1ZbWUjbxyHHBWz52e4LRNcz5I1rP?=
 =?us-ascii?Q?g7g/Amv1D1HepZ7CKI2avX7w/u//jh3ly7OZVCtiFdJErGfo66aUjcb6J+Cw?=
 =?us-ascii?Q?MAw0NFNlOLs/cLVJYtbihcaCFNGDXO5Vk/nnyNKwd6Y5Pa4IEoLWUo30mOZL?=
 =?us-ascii?Q?PL7glxCEz5yt0on/g0b7jzNCCoLMHofOqsIKMJaWNv46eWhDI81HKdf83T1u?=
 =?us-ascii?Q?t1PZfzQ+Q9SdVc4TS/6uJVOKsr0JmaEDsYAeK3UU6lu8FXDIB9PgeXF8h5h9?=
 =?us-ascii?Q?QnW2LczwMaqwnSHem5+PwK82Td20OOW5qrST5Z6slCkF8jwPwdGz/J5DGkMi?=
 =?us-ascii?Q?bQKRQp3t1nOaEr2bqzv3HUSt6Mrnl73peh2dl8EecbbIYECiJKEAOlKMxAXH?=
 =?us-ascii?Q?bPFLqRfijL40TMxcm+E8IyDV51P8t9APepxqNFsnlZRRHKzVfgD+kTqThCoj?=
 =?us-ascii?Q?6LN2NWDjsnOhS/ydiHeY3uAcXA89L8sUrur2dl/TB/uucqv7SOHQu1g61C6Z?=
 =?us-ascii?Q?TvFxSdjztXB5nB2cxYpaamMzqM8pnCSuLpqOnDuxEmdgJCjYpbQ8d4CppJj4?=
 =?us-ascii?Q?viNoE6VBxYtmHDNOb8NHreWSNQr6ZJz462aJzbAm1aS47clVR2Fqgb6oLZxn?=
 =?us-ascii?Q?RpnXjqMr54suQVSveoCavaG+LnCaHIQ5kNfBymLF7ei/SldarxY10M03qUZ+?=
 =?us-ascii?Q?SSSZKyGGpNSY4xjSLAg+vb72+uzzoQFZVLgsW28YhPk51Qk5W6lTgja9xU4u?=
 =?us-ascii?Q?LlQmjkUENARNmLqSueKQPD1hY0IX4IDmAeHPHjb4xyIqHn7Lojzw8OaBv2Oc?=
 =?us-ascii?Q?nG7BhxEib6Ty2xxwChtjb7z3irFBLptCtvm8xTi+kXhTcJK4RWhDlckYA0vz?=
 =?us-ascii?Q?/grx5Iy0drijZCuyc66v1xNlLVCtU8RoxUxP82pUn0eSEAQ6PaDJC9yBiLL4?=
 =?us-ascii?Q?BN35h06CVITYx+X4uieUtXX87RD1ghhved1LUJIp8ZUCVFXW/1Elg/Suw3g4?=
 =?us-ascii?Q?rfiJZVhhND5iechy2vjuvur5gaEbGA6TA5ObLpGqOEAeB5s8tk6rhww/2mpP?=
 =?us-ascii?Q?9FL9rs9ESXl47e9lIykzvZh8jfEMUvhXznOn3Xz+hktdlm/YCl7LgPlwlSzx?=
 =?us-ascii?Q?W9bvLskB2DSiX5451sLF+tQiA4R6eVhi/drHAe5G4eVryVgJmmpCdHCMHo15?=
 =?us-ascii?Q?iqJJ4JXETKl+JnZACG3QA9DqmBahj8gFEGSVynyulwYNzPu3AvWFoiun4M2R?=
 =?us-ascii?Q?zWdmEVHrjMeVKpzWnVuMVgfGzfZviNJAPAtU+bW12CeGNZ2sZA1Zt4B75YmW?=
 =?us-ascii?Q?VfzsRSDq+qfkbbtvVwJiZraNSDMFZTbhluezK/2eX4Oq1GVXzz0P/qB+A/Wy?=
 =?us-ascii?Q?zmHJFXtUB5tzn8ctTcghgNKQhIcNhwaiAROr0hrlmdgLU8JT8f3Ak93evk61?=
 =?us-ascii?Q?9Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec534d28-3791-42ef-8a9b-08dba3abb8fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 07:36:54.0982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cchEdQdXPR8jokwno1mq6Vl5hOWCL6XMCvvK75uJ8W/QWT+LlmQVbL/xV3oioFzD+tKaNOKVdXWaOMjNAxeBVawkeFnT62Oy+OhNugTkawg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692776224; x=1724312224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q25JCHh6J5mLM7bY2rIFzzTwlKzk2sR5CQTAgP18KjA=;
 b=SlkvFendoRBI+sGI2WLulC3P4t1DTLaLHOQoQaqt/7ZiFCKkBZr5DlQr
 WFtQJ8HaKvUmCNMk+jF66X1Fy6WMqjQIG7T8gGDoAWtSVBOcfaTZ1Ujmw
 cskdvPECBZ0+OsPNYQeLPCuIWtfftHxOfq7pjhwoGrPsVMM5ghvvnarLy
 wLjBf6XVsHMIYPts6OrYLY/2GtTLPUfV7AYAwsGQ+4Oh66iownUZwJg0R
 FarTvV9x5PDH7Uhg7CYnn4kRuH1G43wAFrE093HuoEjKy/ZjJfnUCeWyn
 6gWUHsgcnGUM7BL5ZKZTAwLYS0QTttLKwSgM1xmS0pERDv5LAN9OtYMA2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SlkvFend
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: don't enable PTP
 related capabilities on non-owner PFs
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, August 16, 2023 5:01 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: don't enable PTP related capabilities on non-owner PFs
>
> The ice driver currently sets feature flags for certain PTP related
capabilities based on whether the device has support for the feature. Avoid
enabling these capabilities except on the ports which own the timer. This
ensures that the driver never attempts to access the features except on the
ports designated as controlling the main timer functionality.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes in v2.
>
>  drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
>  1 file changed, 3 insertions(+)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel) 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
