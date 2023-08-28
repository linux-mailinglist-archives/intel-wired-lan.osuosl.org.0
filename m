Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFEA78A988
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 12:03:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3408C41732;
	Mon, 28 Aug 2023 10:03:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3408C41732
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693216981;
	bh=0qV1V4KzTYUgrGnSCSteMBjNIyXpu40wKCIWL1L8LVI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ahyEVpsV0pz4Ozqb8uGWtD6r7XvBo3wuon2lT2io/E1L3kXNNX+sAN4pDvy0QFSeY
	 6IoOgnkZzeOK3LjsmtAz0D26Q1TlPvlG7+ePUzthCqnmnQiOfVedDbI5w6OGb0MSlD
	 AS8UcUOVtjcOtxPhJIYmDvb7wZQXMrEeMO79/P7nxrQ3WevqNl86B4QE9VPw5qVlN9
	 6qbStjb9+JXKo94f9f1DtbvB3wABLyllTa3Ssw0laR3hzG1vV5EpEtZk9/nY3bZX3J
	 1dnFtn7v1BbpYF90SpLhDt1/Q9s5TTuuMbsj2jT028EzMASeCzLuWseRrnkEyX7DmT
	 Ip6fOHNe+xWXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82Mvr3dXeAKS; Mon, 28 Aug 2023 10:03:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93DD041715;
	Mon, 28 Aug 2023 10:02:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93DD041715
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 994FA1BF588
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C5CF60E35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:02:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C5CF60E35
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIBRFTDSxs-2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 10:02:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3218A60C34
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3218A60C34
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="406055036"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="406055036"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 03:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="1068978154"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="1068978154"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2023 03:02:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:02:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:02:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 03:02:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 03:02:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCBkz5lKB8S67cWpfRgM/BtoHQQDLXDoyvHew1LbHY90z6yWVxQ578htnxKrL/QPLXyi9vt7b3V24C7dSHmvBPAQF2J53W7UOo7EiRbHU6SRVVB70M7iI0GYMewhyk6F+5KyE4PUpQdaexWFY/9DyVNGpA0ASVloE18PhxNfLZKoy4xLwhS06j1ijBfPBxyJiXDLkP6HYy6Z1s1VxGpPtQGbdzwQ+G2710Ggs1xH+Y36ON/jRBOYNsufC7ypH0wXmoQ4SxAqyBCyxqV8mDmuMehXH5K/2ber3w39CmZsd2MH/b0G2AuTi4qlb7fkAkxNqo/tO13VOsZIHs2gFgkSPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6qsRZu2u7bfMNL2U2G+0KVVzSB1E2qAB0jWJiBJWxNM=;
 b=OKcJ0J06wJENiMGa2/5pp+BdDCxra67OJjEZgyN+qf7R7aAxNNr6vsS/F2o5vmoBumZq3SH7ma4Kgp21Ae4DtPT7Q5qb2SOGvXLyvlC9leYemchoRKbMhn4pytbBeTFojknwT9JBXYaLGPbXm2h/sASoOTsSG7rgXtrm90Inb1WNzJSaktLz27CP5aRnja6qo+0i2z+Lluq2OM3/ghBVPEzBSHP0qlPlYJCRrZ2l95LAfjQVKvdrgzudV6CczkakjnHr459I2FZb3RAZ03GzWIOpcRDK3AkS7F0ITI/5H7muauogTAZ23+1TEMFfIoSMEtbCkHoJe7pTEsIYb7lfIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5182.namprd11.prod.outlook.com (2603:10b6:a03:2ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 10:02:48 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 10:02:48 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ice: Auxbus devices &
 driver for E822 TS
Thread-Index: AQHZwJK+5NGV/pM+VkOJf3I2u/WpQ6//q6JA
Date: Mon, 28 Aug 2023 10:02:47 +0000
Message-ID: <SN6PR11MB31330D1F782183722B6F0D51BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
 <20230727135037.28472-2-michal.michalik@intel.com>
In-Reply-To: <20230727135037.28472-2-michal.michalik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5182:EE_
x-ms-office365-filtering-correlation-id: 4899bb47-6fa0-4916-52ec-08dba7adeece
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4F7gjtrr02JtiwImG8dY0Fjvh+74RSRUK0671vQKrajtJnX/y+IOOofIiwe6fD86uQccGXzUmSjHnWXsyA5xqmrWysQ2EPlPpho635dc09c/FM9Xgl2JtIHegKd4Ef7GDoCQt1tMIZmWVAfRxLisvyx3y7LMWCflgwidK15j4lRN+GwmWvNaTQNlIZcQjn/QTxF86axrjtlWFgb0WzT17y6gNdz2svnbjBWFvaIEgLOnV2uaEdbsJpGABsx7ZYHynUovTC9dmqhTyiaac/vd22XXG/lv3NrL47gIBBuoX2fMrrVJTIAs5xQbTHMSWzjn2bImuyLTN23o8twiDvfCb+SV9M+CWLAoyG0+MLmUjzMAH2FzxpGii/2zhSPM7uTlK0GB4AxWimRZiHX7WVt0ZDP7NlHE8mtO5HIRjaM7tHAzC4flm5qHhxYFGEdGEKJm5AENXKdpwr8xmYLlCZWeZri9TBkIAwpkLPny0Hg6uHkU/oyeveNN55DxVMbn6pft5iC4dHIidW98FHJ4THml9F2eeoNxlA44IbCmih+FF+viJOYRl8dPOyiDFtHRQslflnAJL9wEfZScqq2WKl+vsqCTeTPHQNnMteUcCkhigxzr+Rpg49CIj5vPetcz/uNS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(186009)(1800799009)(451199024)(41300700001)(122000001)(38100700002)(38070700005)(86362001)(478600001)(82960400001)(71200400001)(83380400001)(26005)(9686003)(107886003)(7696005)(53546011)(6506007)(55016003)(5660300002)(66946007)(76116006)(66476007)(54906003)(110136005)(316002)(2906002)(66556008)(33656002)(66446008)(64756008)(8676002)(4326008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7sE4JJO5m8asMo1QSV0I8p4qzEQWM6r5YDpAJyxHhUl3T/5dzkg6nP+eDpNa?=
 =?us-ascii?Q?/HcTj84aSdTrFqh0g3CR5L4cIkAmQxR3TgQkFYSYQyjphfRP15BCYitS90Du?=
 =?us-ascii?Q?1eV2V8Ey39r/RlUwbTB8Sjl0/0A0YwtOUQXDXi+dJ2dVdayYbjs/7sEq70mD?=
 =?us-ascii?Q?L7zJyF6SfPBmLhrS6bFUUZGgq+B+d1Teb1VOYS7OtMMD7G69jW+1NFqzd8sj?=
 =?us-ascii?Q?Y60waToQMFykuo8mtuelbctSfhJ71UQDqOJpUghi435ja8NoLgb7qwIOioTP?=
 =?us-ascii?Q?/fTMXhH7YS48eybrEX1YVZxJbO8LmFDO6hXXzvC9napnZfelHL6hikaVyA3P?=
 =?us-ascii?Q?wB5q8Vgqb2vLwOZQHkl1m5f4saLbewXCCpVL6cBgFKvHO/kWkWHIJdh0p4Fz?=
 =?us-ascii?Q?YO1vSgOG1Qw6biX3oORERgi0TojDbX/3iLstReHGPpcgjeOafnv8iEGQodXU?=
 =?us-ascii?Q?nvd3J+pYK824MTTsbrefrpfJhi7Hx1zDmYIgp5fs53OtG56JVol77gjUAyLs?=
 =?us-ascii?Q?c4krxpcZ6DFfnjzdT4ESwpTYqbP4I3R42hnkBZ+O9l+BqPDldl2/Vx6Wp1Lg?=
 =?us-ascii?Q?iP1Ek1R1oBUDy/0c2DCTUeBVqFfbYXcOKOdXorE5dGlhHE3AN9sL+QK+aKCl?=
 =?us-ascii?Q?QgLxzsYTHWnOeHmgVPc7qIETMKs5n06lQDoHc0KUhVK504ddFrA80ewjuPiV?=
 =?us-ascii?Q?sTrKuzLA9vfbLvTEwP03TazwyIbVt95oWXEzvw6Q7Qt11yHjmHbTMgV65hAp?=
 =?us-ascii?Q?QctUaYadDG5PoeYSet2n929XeF7J3WRup/JvW5D4qHpLxrlKeKi7CQHsZThs?=
 =?us-ascii?Q?aUT16XKO7H08qT8RAayv+kQDkK2LJPiUjdytbzz5NOrenpTsDZRGRjrXLdF1?=
 =?us-ascii?Q?CGMOwfKCkrYmIuloTG0Ek/Oz0ZiCc3eaWd78BszrwwIuDYwdyFKddhQubv4R?=
 =?us-ascii?Q?dB/9vRV0X37HXGtjIV62vn8xPHhI9qr1WCdtKTyrJy3mPJUfCNzapao2fFtd?=
 =?us-ascii?Q?ryQFRMKSoVWzza8dRQP8jIhxZ9awhiWOxUj5P709T/Rl3jBHRyEpAqq1QbiS?=
 =?us-ascii?Q?Rbk9nsWAo3Nz426VW6KSywJJ6ON0j/YV4oZvHE3R96psJ02C6vPAfCv8FXzN?=
 =?us-ascii?Q?iPrM15/+jWsrb0Qb2MP3rONnSBBLDEQPdvuqM/VPIx16dqR/M11j/z9ko9PJ?=
 =?us-ascii?Q?uG0w/8NwAuYi/qem/J9zpubaFgyWqBmXX+C+3jaxyH83rRCJd4rbXI97xROM?=
 =?us-ascii?Q?12aIcOfKU2ZaFvzmYu2m1Ive1CiGNxMpNCwgL5Omelu6KQd18K20C5wTZk2l?=
 =?us-ascii?Q?corvxxyhmP1Q34S282fBSXU8x+OffA6I+1x791nOmxc/1ujNpaHsxps+gvIn?=
 =?us-ascii?Q?Xa7OKXXvv0tIdiKB25cHnp1VdLH0+9aN0yyGOQTUaus9RJTwb9Pz6QhMGV8l?=
 =?us-ascii?Q?YuA4uAVws7gG/9cA8HRXqdzLTBan7M0/LcQFT2sPRUT9fpzWgV5APf28e/ga?=
 =?us-ascii?Q?mk9UfbxncmBJRLzpLs1kxruH/U2BNZ6XKVB7x71eGnwbmdcJFZB4pwovX/Ac?=
 =?us-ascii?Q?yI7zJ08QetYiOfPuCKdswsMJGkzfwhqCrQlHJrzESzZ8j1v2ZwMBYq5s7VkS?=
 =?us-ascii?Q?tQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4899bb47-6fa0-4916-52ec-08dba7adeece
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 10:02:48.0198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BVQg8tadh928UA57n8hl0NQMSVSo7tPsBFHD39VC1lF4XSxnkNa/rnGfO1bPWO95Arff0b3+fgw/NsFGgslWme1ecCVu9IUfoIKWg9ar0KgUbxw9Jyu77OYjAINbb9LE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5182
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693216972; x=1724752972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=inqlWMrRXO2VK4N3GxYnN4k83OCZ4kM3oZ1DDfyCMPU=;
 b=SKwdye7APe16cnNeB13glRpPmpfd2A5ZbnBwmoablelvr6XRF+J+7rQ3
 XjFzTRKLTqaTkur+1FbxUlTud80LMBrTHUJ67gWMki2YnEGOhFhcxu4Rv
 33m3ZHz1c2S6SL5CV5CzqP0xJYgy1qyfCMdYGxzVdP7MF05TEae0b33Su
 GJdcEP//zB53lPE9BwMnFxQhDxPOrSxFvuobHjqOjzypc8DLUQwQmvryO
 weW3Vyqsj0zI5WNKbc7Bz0+dcDLxo2PegkEmG81SwXdPiBCxkmJUZ1egx
 Fro4L70uciITkLkduRmkLfd6TFdKVVph5uvKLmYuswHHr2Nli3wt4BdqK
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SKwdye7A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ice: Auxbus devices &
 driver for E822 TS
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Michalik
> Sent: Thursday, July 27, 2023 7:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ice: Auxbus devices & driver for E822 TS
>
> There is a problem in HW in E822-based devices leading to race
> condition.
> It might happen that, in order:
> - PF0 (which owns the PHC) requests few timestamps,
> - PF1 requests a timestamp,
> - interrupt is being triggered and both PF0 and PF1 threads are woken
> up,
> - PF0 got one timestamp, still waiting for others so not going to sleep,
> - PF1 gets it's timestamp, process it and go to sleep,
> - PF1 requests a timestamp again,
> - just before PF0 goes to sleep timestamp of PF1 appear,
> - PF0 finishes all it's timestamps and go to sleep (PF1 also sleeping).
> That leaves PF1 timestamp memory not read, which lead to blocking the
> next interrupt from arriving.
>
> Fix it by adding auxiliary devices and only one driver to handle all the
> timestamps for all PF's by PHC owner. In the past each PF requested it's
> own timestamps and process it from the start till the end which causes
> problem described above. Currently each PF requests the timestamps as
> before, but the actual reading of the completed timestamps is being done
> by the PTP auxiliary driver, which is registered by the PF which owns PHC.
>
> Additionally, the newly introduced auxiliary driver/devices for PTP clock
> owner will be used for other features in all products (including E810).
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
> v2 -> v3:
> * fix the spelling error in commit message ('auxilary' -> 'auxiliary')
> * remove the unnecessary castings
> * remove the wrong indentation
> * use local dev instead of calculating it again
>
> v1 -> v2:
> * fixed duplicated docstring for 'ice_ptp_aux_dev_to_aux_pf'
> * forwarded correct error in 'ice_ptp_create_auxbus_device' instead of -1
> * simplified the 'ice_ptp_auxbus_probe', 'ice_ptp_auxbus_remove' and
>   'ice_ptp_remove_auxbus_device' functions
>
>  drivers/net/ethernet/intel/ice/ice.h            |  14 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c        | 395 +++++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_ptp.h        |  30 ++
>  5 files changed, 433 insertions(+), 18 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
