Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A41C28C8162
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 May 2024 09:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AF9D608A1;
	Fri, 17 May 2024 07:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tCh5wnSHxpGm; Fri, 17 May 2024 07:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD316612A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715930811;
	bh=ku+3/Pff6aTRgLs9biHYnRRX6RH+3YqCHw8NzVO4tlo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bfahQUaoa+URLF0k0hR8Ux/eNRz/2NaA8ztMloNZqIdUS6F6hRJDfnJ8Dedd8n83V
	 WaFhTTwcEkYg+Xn3/xzaLgUM2+A6QsyjPm7Sk1cS7Lh3OCQ9Uwu4Yi6UzBs+I/jxk2
	 iPfEHaH3o+6pr35ZnZolaOeHusY+kHwfJtK8UMPmiVdO23GFSEZsijeqrFiH1vemVw
	 abotU1DhYFdi20ejIOuhl0K2Y0mdGl1/ZPGdWPbv8GTRyDffVRFh2mJsziLz8izm3R
	 /Ck39T7REjW8hP71auUFHilet4qNmQu5BMi4hCInt65mWydzGT1rHuv00hwvFyHI4q
	 6ABJaIjChpy1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD316612A9;
	Fri, 17 May 2024 07:26:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21FD01BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E8A840201
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hPX3SvKDjkmY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2024 07:26:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E2E5D40137
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2E5D40137
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2E5D40137
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2024 07:26:46 +0000 (UTC)
X-CSE-ConnectionGUID: WVrck9TITWKbsUNjVSl/VA==
X-CSE-MsgGUID: ngfbkoW4RCi/ovpPIY7oCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11960058"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="11960058"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:26:44 -0700
X-CSE-ConnectionGUID: 6X8gcJsKROekA9Sr/7z5RA==
X-CSE-MsgGUID: nTGpmhWXSIyClTGjLHt9bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31842573"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 00:26:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:26:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 00:26:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 00:26:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 00:26:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oABG7xKmdTvvMKh50EXbZ1D3DaDTvMmS99/oS79FkeX+qDt5/dS5tur+HRF23jU4iNRKjnSdMhchKH+Z4NId+HNZVA5uGAMlBhisHZks1MgS3zeB4gXZBLLrngSbQchrCScWt/WQtlB5NMZk/9otBTXXIfK0e7Wf7Qxdf2Toc4X2ZiwJrDLuxL5KUdlepdBGbOdr0iyIZWlU9keA9cQ2yLFWmNOD0iT3QGoMdM+Xu0ePjpvkwKTLnWDv0Hf7GkXfYDUS4buLRU6nrvVcjsQcOe8NuxffUfQ1deA1pFYN3Dg1J+IMBBbO3PJayOXE3gfujyZPH6m0Ev3bjLdf5Vikpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ku+3/Pff6aTRgLs9biHYnRRX6RH+3YqCHw8NzVO4tlo=;
 b=OVCsfp82wOpwK7cBck4aeiwEXT3OTR0GoOqe7SL/D7VBBgOFUOpGRcQRIp/oXFdTZ1UQHRbmCvzTv6dAx8pv6a4EGVTShZP9U1KR1DnaYn7ybeoLwss2TET8JJFyFhZ8QA5pkNCW9/B0MllYetyrn5WDve9YOtp1/GKwChkBLPMnoY/msEGNZJ+d+/2kDfEyhArbBJV3mxIreDhQxpBL97i5DX0mV6oPAHAJMuPmXWFQ9TycnusYVdSefHToaUKDZZAe1QrODaQ8Bk0iVfpMDG3DHXJc5n3pzszJUKN2fJvc2sqONFRKfsCIvZ/bXofG76D7XrdpO3K7USxUiyKlUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5156.namprd11.prod.outlook.com (2603:10b6:303:94::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 07:26:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7544.041; Fri, 17 May 2024
 07:26:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 10/12] ice: Add NAC
 Topology device capability parser
Thread-Index: AQHalky9K2qAETrPtUy2KjV6jAFherGbKi7Q
Date: Fri, 17 May 2024 07:26:36 +0000
Message-ID: <CYYPR11MB84297754FC79EBD5C7C2907EBDEE2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240424133542.113933-16-karol.kolacinski@intel.com>
 <20240424133542.113933-25-karol.kolacinski@intel.com>
In-Reply-To: <20240424133542.113933-25-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5156:EE_
x-ms-office365-filtering-correlation-id: e08e0f70-47bb-408d-6efe-08dc7642afac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?viM3/sewpgQKHlsaagPTfpNnfLC20oTR1LOjUYFm00OyPskuC+9sWinFTe9Q?=
 =?us-ascii?Q?8kE/ZAXMbkK/Wi7mkraVchhQQ8kR2ig1OISgnBc34T7FYowb7XLT9+J5m8D0?=
 =?us-ascii?Q?h4M6TNj0x6wdrKR+JFM1TauCmdZE6xKVfdT1PPYRup9dA8izlI8kA18e5w9Y?=
 =?us-ascii?Q?eUP0QXJ2gEB05cNc7IwXjVw4E2sygU3YmjpRXFlUlv+PGdups2x75N2JoZ+q?=
 =?us-ascii?Q?TqSvcJUhdB6JAoyVCKdbsIDu142RjOQBMLaYidcEE4r4JT4ATg+t+aNkRLia?=
 =?us-ascii?Q?3F7USng23Gozdoee3yYPMeyvPS24YqcBqU9KjMdNkUTSNHfNlNvegrTLoBcZ?=
 =?us-ascii?Q?6Fk4NYmpSgAafuNppOOhZeDxuN00fbuEfxY1aun67ao79hqiTPeNPyZ1RgVT?=
 =?us-ascii?Q?foRSb9pux/7SCXckbqio324Lxh0gQiErs6lJNAknkyX64TI9NOs4eUGdHkQG?=
 =?us-ascii?Q?nIRcIuFZfAmeyCa/i+OL5Bn9m000zi+9QF/yHP2gG6gX6ZFE3parYbeB+001?=
 =?us-ascii?Q?KaCN+llXa2Qfk4mBp5Y9cvYGfram+COc5Jpc3iAelr/blYPf94a+jeOq/NC1?=
 =?us-ascii?Q?P2CH4nKBZkb7+lDrqfVesjB3g7nif1X147HPpsY/kvb85lFJxi1APjXHRaRY?=
 =?us-ascii?Q?lZ4qumzf7DyiAEvdQu8AkhciiFkk6Pfy8wtotNiO4Vsq2dmXz0tE4HcTGKVf?=
 =?us-ascii?Q?EpmaoYEferqv40sAIDn0mM6bJ66X+KEQR+xZO4ntp4ZzPr52TcQHVqQ3FfuU?=
 =?us-ascii?Q?4rptRWsBXTBCQlWAYKV7xo3e1P9BHcYuWwlbBQBBpXnzoLBI/G/IR8Batguz?=
 =?us-ascii?Q?10sVXfqUCF1HZ1JIcv37MYt56J88gAAMT8o8I/Iny7M/4NOeAHWQ71RYpHtA?=
 =?us-ascii?Q?zrGQEUYAHFytR/vp7DAeOdVd33TjwlyuJN7emTtRmJb4pXbEzvR5rwTfkJuG?=
 =?us-ascii?Q?+nX7g6pKnBKcPk44YiJDX98EtBZ2CA8fYVxnb8rZ6/MJwf9811Wawy68b2nO?=
 =?us-ascii?Q?gFFUeDatRcdDhGtKYPW9HBlxJJUozYIAWg4OyBPjXg+riaUxz+Sfqk7toqvK?=
 =?us-ascii?Q?ZINwUQeOpTmgYUXvYoOhRV0Umz0R/xU1KWf0Euw9S3w5bpZ3zFcNnYkkcoTp?=
 =?us-ascii?Q?+qdfvV2goNa+cy6sbVuDGi2ngD/JJ6e23wJAyx4kS0OdD1/h3BQjTukRJRbg?=
 =?us-ascii?Q?AIOPzw8zzJFOXMH+fSy2ytXWL6nQPMf9z2+s/RuDfgyllRgdzJNkMxp0wRYn?=
 =?us-ascii?Q?5mkm9lfEORmJtT+c5Uy4dOEbyazjGZpyq8NvAXN0eiECM4AZT394noRvDpkM?=
 =?us-ascii?Q?6gY9J0zyviDn3mI1o4xVdV8/t1heBp/wShaQ5OZkKlfW9Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qIye9cU7RbIjajOenzADNc5rAfT8PtG1lFMh95+6dBdAC+eB+OjCn7QNpvVB?=
 =?us-ascii?Q?pmVR47Nr0DWsX9F2CcLxavT1dNwwK5XMo45lgwD0rrQXEyOZfGMTB2Why9Yr?=
 =?us-ascii?Q?Vv6QsnVrolK9Nqe3W4dnGWWeffQ2E2ZvtCsw2u+7zRPeF//zLmDJ+WAmQNvC?=
 =?us-ascii?Q?xvLeqWUeUTAH7OCGuu3UtLF+zQsfTKnA390trxe9cnPNdoK2Ayna/xdSxuE3?=
 =?us-ascii?Q?6RV4fPS+MDddXwpZhtTGF2A+471BmKCvKPWW2OrGPX90W+93hLg04cOtoqU5?=
 =?us-ascii?Q?Yo7orDrdFD9PgvjBY0aFFIIOZizbS7TQoHzEgDXRyOg5iYi3R4dDSZMxJXyf?=
 =?us-ascii?Q?J9HSxgGfu97qYS2c1L+rrTl76tkjoOXoUaIhrsK19qukzIdoIPUYKXLzOo0M?=
 =?us-ascii?Q?ffPJdWsBerS+zozAKgUSEdTk1M2g3BbUFchDo4YRLR8HXfhK377oqS9mffyf?=
 =?us-ascii?Q?FBuL8bioeFTVTXhL6k+ztUKqsSs4OXa8BSeU7q0JStXfPxX08kh23q0w4Ctd?=
 =?us-ascii?Q?9sEO2a/mQHpwU+IsorFvazf28Esferzyb2lPBvOEwQf/KwlSbWjIW+0lvaES?=
 =?us-ascii?Q?ZYQIMfPp442JKxgEdH+ZhZCkFVlujqtjaejv0P2jlUGWjU5ugTOzCTvv9TrU?=
 =?us-ascii?Q?xYgXahOJkrERJ+5nX/EAOBBnDD143BtWKGFVsh8pv8rBp+nGAbr20VXAa8R5?=
 =?us-ascii?Q?WFD53sLMLaYgqIzoi6oIFL6KT1x8W2UMNX/cbDx790fhOT5fywLWlOGFXDAS?=
 =?us-ascii?Q?bzAuGoW7VsSh3A0ZnjsXElUC+cftEesksLQH4fyTup0loVA2MZCnMbzwEHq+?=
 =?us-ascii?Q?kE+e4UuVr5jeSDSkkhVI3Bh1LUxPoY1GYxNX1IjzuWtn1Sgc6TtADbhjX5cT?=
 =?us-ascii?Q?ckexsn6BOFMPvNiRPk9bj1beCxs0Ha4raQw6DeBXRkW2hDaIKA2PRo255TBi?=
 =?us-ascii?Q?cWiPUI73SP1FsFkwnRtPnZ/v3CkIii+YMeSSxMgfIiqsoglh/voR1tpLBJoV?=
 =?us-ascii?Q?JHAnSPm+03qC90G9UyhYkKkevk9ihXCU+Urko2ggGsMVVot0hOuZZ1mVoPlY?=
 =?us-ascii?Q?LvAA878Z6AZjTQXy1PpS/K06pegucT97wVL18oqeUHmdsxXe2KO7f5gSfPiL?=
 =?us-ascii?Q?V3K8HJ6iu6Nw/iAIXY2PWv3MiMQequURTM3MWx9QkiMEmO7ZZbWtLpmroT7t?=
 =?us-ascii?Q?7sXITWXcibz9F37YaqCMQPQSg+UJ11pduzqegh6mrIULmtVyBgc3A+bLjI1R?=
 =?us-ascii?Q?KZuZWod0aGrEtQALcH+nid66dFpJ8o+kGTk5YEMHIidWO2EOoN+yPgdfeX70?=
 =?us-ascii?Q?6Oa4aaYxu/zo3fsJkdoHMzcnMWyOY2zPUZLpOo0ornBq4N2dtPeHd6PsdEJg?=
 =?us-ascii?Q?VI8V1GHVBXDG00qPugFDN4ay1LF8bqX3KQfeK8xKxiaR/+xcZFrZ1xqfxqfy?=
 =?us-ascii?Q?lbl32wsTPh2sjAaT4rMzWPitBi4uDX4P9R6NCsaktGp0WK2MLcrTqMMsKiCt?=
 =?us-ascii?Q?tsCU5pFYIY460qmYH3NGryYIAi7rnj+IgaQayK9xghyEEWHMl8DRHmT4pj2x?=
 =?us-ascii?Q?XUdsAwxGwBmXuLsmcjJml9X/MezuYdgv45bHR3nOmd9R08Vmcr5OMf6Rp2uR?=
 =?us-ascii?Q?rQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e08e0f70-47bb-408d-6efe-08dc7642afac
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 07:26:36.6627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a236UJDUB82AkYpYHIsHJ8msTDsAty3pnI0LRfvYyQBOiIQWWqIVCAKpBdtLHgVQRfVvevJ0ce5ZktKjemv726GmJiZ3fI7/tH3R1qZz5AOIu429elKXUhvVEzHw9VEt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5156
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715930807; x=1747466807;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a+nZYd6G7fjp0E8Oi+NVIkJwj7g9j1vmQxu6zXczMBM=;
 b=QZIjADIUasldRy98iPwkFeKcuZnKs0UCsuCR3nWYof32vltP6qBC+yig
 B3/JYy03eAn1sYI9ijuh30oisF6Nc6CxuR+QPs88qj7IJhH8LTTlEaAjO
 +3qeT+JW+UAWxYNZgWcz7Jdg3sAMg2bsGGD/v1oOykLcGYb8KZEzxX72l
 jhi9gGDoUJYmJDRnKiEvBH8cjHyVu+kVTu9Oa63VbvniNopRWgOOOQ3XZ
 7YSSVbsaeb4CbSjEGqv9XT87qLnBJ7H4998ptC9vruyKXwW0z/XQE9hrx
 24yliwGC/Jpbfg/VtwEhGFNP64N3P7sAAr/Q9w6hsj0gZct8aEhhUZulT
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QZIjADIU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 10/12] ice: Add NAC
 Topology device capability parser
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kaminski,
 Pawel" <pawel.kaminski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Padmasanan,
 Prathisna" <prathisna.padmasanan@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Wednesday, April 24, 2024 7:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kolacinski, =
Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@int=
el.com>; Kaminski, Pawel <pawel.kaminski@intel.com>; Polchlopek, Mateusz <m=
ateusz.polchlopek@intel.com>; Padmasanan, Prathisna <prathisna.padmasanan@i=
ntel.com>
> Subject: [Intel-wired-lan] [PATCH v10 iwl-next 10/12] ice: Add NAC Topolo=
gy device capability parser
>
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> Add new device capability ICE_AQC_CAPS_NAC_TOPOLOGY which allows to deter=
mine the mode of operation (1 or 2 NAC).
> Define a new structure to store data from new capability and correspondin=
g parser code.
>
> Co-developed-by: Prathisna Padmasanan <prathisna.padmasanan@intel.com>
> Signed-off-by: Prathisna Padmasanan <prathisna.padmasanan@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Pawel Kaminski <pawel.kaminski@intel.com>
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 31 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     | 10 ++++++
>  3 files changed, 43 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

