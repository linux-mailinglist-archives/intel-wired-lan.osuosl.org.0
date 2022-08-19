Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E33E059A2CD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 19:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 214B9416B7;
	Fri, 19 Aug 2022 17:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 214B9416B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660929162;
	bh=SEbrNPGHSbvW2y95iZdN9uV2JCEcDVUUrGAmpqUJV1g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IMfbgQTxhRSGlaZYN0W+a2CGlEXvZ10oV2Ex7gAWTzjChbOvB0ipRIwJ8ntZ+G5wy
	 VGCCXnkwWNB/mPLT1Ii6AsOGrw/Gj5EVi/CDILY4TBIq/v6IRQ+47zLnjN9GBaZyso
	 QZwogJIiQrnv164xKkyWToW2vIUwyY+ohS1cVSPdEdSsWv4iHyIsapRKSJ61yccP5G
	 sdOL8bWFomdxcEpODhlmHgq1jrj9Q3l7oxBCcPIDbA6Xs7mCvwH8DKlEbqBSqXjgjP
	 3rdY3f0ShCqDJjTJk/+fhZaxK8QmGXlyEafxYWubZxqMxTPLe6m3sst1h1ScjNNo1I
	 Z/U/tkTEBP7cA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQ25i70_JmMM; Fri, 19 Aug 2022 17:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBFB3401B2;
	Fri, 19 Aug 2022 17:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBFB3401B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E34B11BF366
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BCB16842EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCB16842EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uXYldgNZ5uMn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 17:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65C28842E7
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65C28842E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:12:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="293854787"
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="293854787"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 10:12:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="936288710"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 19 Aug 2022 10:12:33 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 10:12:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 10:12:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 10:12:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 10:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QMCA9wCeaUlfMSKT4kPVJ56Ctfx/znAAO82LjISrWk7OocRwY4JSfP/nk4r4/Msf2n6NEngOo/0eU8c+lkATrqDq3BA1YrbiJFlgxyBwgP2inKb5V4fvUpIdR3wx6DlZdg/FfILxI0/8naeYvWzoiqqoLuMMxuRekBKt6xHEDB6I6avspm0OHWJuczXlmcro1k8zgt0FOoMWnHZM0ww6Bs5bUavZzWj4bBIFQbkf9fYFCKiWsf0bkJmlwJ9NKUKDp/leVHVXtBpQ7XNJq9/kpOpxg4cNk422O4hok+wVnadMrtv+EzYamFZhza7tyRXlY9vNozZ3YRTU8VmfAABCCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E9CeRPvDiCkOXuxWwguxYZUdE24DgnETFJY5rWgSVXo=;
 b=aIQacSNAl2iICJicVHVsOGuJNLRg7AlwcAOTQ+3oNGkzuE2M7foC8NOhADZhcg3UnY1Wcvfv0PUhT+gIYGZuqog4CbFn2bbysp7Ewcx3em2nt+/P30WoDx320a3udyi5UL6V+1MBOXQAP+DTHO5aFPzWew/OmxK5DSGBvJ/HRhiYjn+CHY2uqJrOhXTPEXL9TosW1yZu2uFnSEkCI8jib800jF+76746NP9yiIteBusDgepBH5F9Un9dGC47CWSbKrLsS04NwywCFKGXf0ESnmrUdHw58D3Qr2zeg74fG5RyWvqqP6BnQwLdlKSNuNCf9esOyVAbXjl/ND0/YeHhOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB4048.namprd11.prod.outlook.com (2603:10b6:208:153::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Fri, 19 Aug
 2022 17:12:30 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.018; Fri, 19 Aug 2022
 17:12:29 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: Handle LLDP MIB
 Pending change
Thread-Index: AQHYrj4sesbUXAdvS0ypF2AnM6GIgK22gR8A
Date: Fri, 19 Aug 2022 17:12:29 +0000
Message-ID: <BYAPR11MB3367125CE617E25CC9919BD4FC6C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
 <20220812112422.1083684-4-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220812112422.1083684-4-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 506ebbdd-486e-4123-6cf3-08da8205ff79
x-ms-traffictypediagnostic: MN2PR11MB4048:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F4gkTSNl5J5CJoPfMF5Q8+Jvqv4QerY5O5j8zOQc9ZA1/m0AjDcdsA2kFFOu5Tx9ZKkOVVaZIqqJnXUybufqq78x/XiQFaxCT3L8iKyXU3Kw3VWJkbiXPR9FXzX8wtYcrAePmeyYD5YdGw6u+buZDi74AAABBnTi15QmIWCJCqLznBZQFKL2gFSHipgoI3tIZ2FRbG3cF0j76W0obLJnGbiCbMmVJxf+W3hk+df5ulTfcLRvUJbwdUONaZK15dWAN0FLdeHRwigyTfjl/0IW2JJ2Siqq0lKQt+cDuTknc4Wu/Yq0fA9pDZpLUfSA1n0lfBTULkyLA66rhhqTx71q83NcemjrxZ8ddynwcJrvqNg2XYztRpZ6c+hMm88Rh0XF672a8xLj94F1Cf6utKFlc6dDDixPKYcDMxxgNZMkA4xI46T7XAgTTMdKs35KQH6CX1NVnGxOvIlv7xsmqHXZxViEoyKeAAXcQz67P0+N2vYzJah0hLRpk9/PRP7EAPIbAd2P0U7dPW8gb6beMZJgVoMxVau2jpRx9WiPVcIhjpzsdj9TtO5oF0X8LtOuo31OIEsVQ8CK+nWKMxgQvHhVFzXvsztPVfkSjhd24nbEg/Zcmv9YwOlqhcZadyeYY4EDZypIM0tH94oqehPGrM+ACyLNNL+ViLnH52GyKFMndnVITufmFi8jV8ukTubh5MyMXprVpxI1veYiW1V3YUFchaSYblc17ZtiSsnA/EIVNtSZ7N8cmP+p1dnficCOgWWNmX6VODEr5vwjcx+nQ3KCRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(39860400002)(366004)(396003)(86362001)(478600001)(71200400001)(55016003)(2906002)(33656002)(110136005)(38070700005)(107886003)(316002)(41300700001)(82960400001)(7696005)(53546011)(55236004)(26005)(186003)(9686003)(52536014)(6506007)(5660300002)(4326008)(8676002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(8936002)(122000001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DnVJXWluTTv6DXMhoer4MQy0uVtt6pTeDKrn4Ww/4QP+FuSj2ysky3DG58q0?=
 =?us-ascii?Q?9JwmrFy2RQPQCHvVgtL0pBKB6HbJwFUzYMS4iNdo3ccSPcIhfx5IY9dasVrY?=
 =?us-ascii?Q?KQC0FRSX9sZK/9UIcnTLW/prKYH2NVMAMVvGQbfP5LxyQtT7yuVLuKPHuyAR?=
 =?us-ascii?Q?mCD2+Ld3htrgi6EytDKMnlzZbLLY4iZ2bxbS7DHNecuzoR//icC8XgFIzhSl?=
 =?us-ascii?Q?zGC7bpDmlS/4hCM9jh3L7aQoS8QC3vHRGafSzvmnY5GrZGbWU39DvR2B6/Qi?=
 =?us-ascii?Q?Bngo4EXYBLGrZUJ09A3Yxc1VQvOF3MADFQL4PN5Q7nMaG+xOS7Yc6qLzeou/?=
 =?us-ascii?Q?Tn53vBuUH2xDXMcg0BhszlRcMjT4zpzqmJPPsLldQOwrSwJ3XkrvbHFFoKxd?=
 =?us-ascii?Q?Hkmg8+ZUU0HkDdMhwpkACkZv5tY9d8N+pm/aOAnGT2UibBqkAaKU3VZKSvUL?=
 =?us-ascii?Q?/0+kj5wF3e47A4JfR+winp3o802pdBGe1f6JjsrsGCkWV5spaVWyBhx/rtju?=
 =?us-ascii?Q?6DboVincCAd8zM/c9W8zvdx/YdgZD3eO6Hr277RF9wbW2iAFuQDoKGSmYLtw?=
 =?us-ascii?Q?5d1iFwV1mfVFeIPE0rMO9v1gGI9+QYSgSyiLrygjNsJfO6cWFGRBh6t77/bb?=
 =?us-ascii?Q?jfk4NEyHQ/lxEvyayYD779beIRmluPMhWFoywicFLH+058nEHmOs63HQsXXW?=
 =?us-ascii?Q?sKeJP4zg8lKLv4sDgYILp3lpg51BI7VmXXhbkeo3YkBjh3LAvICECFNVrE/b?=
 =?us-ascii?Q?g8JePzBfveWqm4V9wfZ6CghAkp1EMHVJWPREeQw6Gc1XYWIXaMbw8rio9AV7?=
 =?us-ascii?Q?45s0tsmDDO/ziwSPgT1pVWDaUUrTnYMZZTuNpU7SFmgVpgTdhrh1i77+ggFF?=
 =?us-ascii?Q?AxWnCmyuYFkZZd8WMd40ebFSljvgv3V+xUlPcldPi966C8XENb8XgnBuktVY?=
 =?us-ascii?Q?87bewVtAvTrG8m6O8czixBeGl3G+j+Mi740SJcU7w5rveMT4FNs1MIZVpIq9?=
 =?us-ascii?Q?/1JefKbDsJm39BHgd8iEg+4gnSmP8fjw3harE2M8tXOJN6JnY1a6uY4YsjDQ?=
 =?us-ascii?Q?Y56KBpGXP85SXe8P+9ysxOIBt25r4ZRONeQi+piNFDd1bnj9ZAQ/wXmpdpFz?=
 =?us-ascii?Q?i3/fvzs2kwepOYQZAQ53Xsb9nn5IFmNDx74h40IHoQ4+bFKankGTT4FS1/sc?=
 =?us-ascii?Q?7f9UpO1GOSSezUwLNJOf1gMw4F7BaY6GQeaUHAGuOIN+xzSdPv0pvZyKFE/X?=
 =?us-ascii?Q?u0JLVrDL+MC769KqjdHug8R9B39LeHECCDL4Lh5qScFgmhlPK0pq1y3LIgb7?=
 =?us-ascii?Q?fKbwptkeBmg05yEaetc73o1dIOjSRHXFzfloGQdQlZ05NXtDkVpD0QEb0yJ0?=
 =?us-ascii?Q?eqFWqx68MgyNrQFRHm4b7fj7pFZn2V+svyIJDW6YxlnBR2UqDua8YFl5QUkk?=
 =?us-ascii?Q?shW661rJF7SLu++OZG/7/h50z2cnEyyMNNe/3KeXPgTojYDAZbjwC1Ck5fP3?=
 =?us-ascii?Q?TDjwGX1oy1RH/e9UCwP8OrpFs/4X5c55w2RbBfkf6W5N4QCjV99xAV0NO18M?=
 =?us-ascii?Q?c/z0Vcf2xg6WeWfsZy0L/3ZLLVozD5Kp1MrD84XS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 506ebbdd-486e-4123-6cf3-08da8205ff79
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 17:12:29.8785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2KBvqjtA6n4MvC4RaHDny6o9vEFmooMJ3XSstRO8wHlTdOY1XgZBKDWngb2S5wga6MeFq1eFN/4qjdxLWiB+LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660929154; x=1692465154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LTJvenjWjeL95McZk8HuyAQEwouoiQZEfSN1STJxLT4=;
 b=jr9oeH1dQsXXX+lP2OJ821cNvDNi4mb2h/tZ0ulxz45HiX4hWqfAidPQ
 OPkg0TGyStd/zVgPSUdG4dkdZaqOM5zyh8NXpjbyU/00gJOrsotu6ab8t
 4gToKoxegFkOjjh6Sk6/y1caNr5DgVJ2qmkz3WpZ3zlAKTIqf3egSXdP8
 4/5qraBbtNkU1lcaHZphscSfVD7lg0KRSMogvAU82leVI3X7hmvcrfItX
 EZORSaO2Xyv5fuGK99CdEIhaKFNjG+Nvx45zl16mm0rfraRkwnx8uG732
 aS/RyGEmX0oNT/geeF+ouLyQ8JHaYn75FKfUVJiddQLVU1/alv3Nn6HM2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jr9oeH1d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: Handle LLDP MIB
 Pending change
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Friday, August 12, 2022 4:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: Handle LLDP MIB
> Pending change
> 
> If the number of Traffic Classes (TC) is decreased, the FW will no longer
> remove TC nodes, but will send a pending change notification. This will allow
> RDMA to destroy corresponding Control QP markers. After RDMA finishes
> outstanding operations, the ice driver will send an execute MIB Pending
> change admin queue command to FW to finish DCB configuration change.
> 
> The FW will buffer all incoming Pending changes, so there can be only one
> active Pending change.
> 
> RDMA driver guarantees to remove Control QP markers within 5000 ms.
> Hence, LLDP response timeout txTTL (default 30 sec) will be met.
> 
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
> v2: Remove inline hint for ice_dcb_is_mib_change_pending()
> v3: Handle only local LLDP MIB Pending change
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 21 ++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
