Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC938A26BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 08:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E4B541EFA;
	Fri, 12 Apr 2024 06:38:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id os-Pg9nr7QUk; Fri, 12 Apr 2024 06:38:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57D1A41EAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712903921;
	bh=Fg3lZFksN80LswvliAwMUzSzffCis4r/re/xLun9DuI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZsdvVYV3TKN7uV2EEiZCcdcgFssmTFt41pUWjaErxBHJhRCVFAPYiydrbj8zpkthy
	 Kz/903ELigsfO2fKWudht1D+asK3obaAzYWA8fZxm0Gb1ZALn9f8uH1rYBjoSGUtOs
	 7WMd4lwiHBdVT8YCTOOKU+O/0G30J6U2TnEtzU8gyoAfPp0m8tSQn4/bM6j7V4A2vZ
	 pu1GqyImj50KMu7MJ4+WTGJ9oacVl6yjP1kdIB058/iGsAuhR3YWmRho/o97VPX2ad
	 SMAk7BLpZ09WsUs98HNXWwCi4QGLE5yljBt3yoWPUNY0lz39BvjutTM8orpb0rGeZ4
	 qup3WZI4PrsIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57D1A41EAC;
	Fri, 12 Apr 2024 06:38:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1EBB1BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E004402F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:38:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ytu_XDQAd6aj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 06:38:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CCD4540433
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCD4540433
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCD4540433
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:38:36 +0000 (UTC)
X-CSE-ConnectionGUID: Ep2aaG/bSaeY6PNTEdGvCA==
X-CSE-MsgGUID: sXIbBuiVT/CJ0GHM//i0tQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12133571"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12133571"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:38:36 -0700
X-CSE-ConnectionGUID: qa/TkKahRsGj4Tzv+J2X4Q==
X-CSE-MsgGUID: bieOgazNT7OqinFi6z/0sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="52109626"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 23:38:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:38:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 23:38:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 23:38:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PnNy84+4CabA3aZT4F45hSjbIo8aXGpSvICnUSrtZqw3LE2tCgpAbXEyjPpzyT6n//jvkGHuzVcrNedbiJuJCFOZkUzRLQ6DZ/kBpfU5lo+w6vmYjtBLS5N5kIF+29k0KYWF/n+DCuY9ebjsRsAuKqnpUhpiwjWaLdnQWigdEpihM8pDfqYfldkqQrWXvz8L4Bq8scF+SrFfaEB753FQ1PelXhNjBOvbwY5peDxV9YZqPuoNXHlWYxTHIk13wF89XsRX8YIbbJDohoA7c0q0gBlKsMFBz7HWp/3y44bsunpEV0ygKahbiGeqjDl7/u6mo6Qzii9JGdxLdnpKG1tt4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fg3lZFksN80LswvliAwMUzSzffCis4r/re/xLun9DuI=;
 b=MONvqNbIFzmWxkey0ZGXbjutUUTDLxqGEaVjA8NlIp2v5HJtv3XUApsogsnYGscrnayDtH3neww+Dip3pufYhehaBB5P6lIhfnrnDe6vPvF1AbwNzMWa17gGXnSt4RgOkZgTzlyhGoAHy/jei0vZDxCM8+/7G8QpMwKnurFsja3kJEFCZZG3+hl4qCGwCP+8UFAgfUzTUcEeyF4Bd2j++Q51Xz0DWigcAk8UyKQXtlC9krGKkYPfy23oSCJ6nEpSXuT/FzD+1KQsT3ITmT6pTvB/8B7cKKd16h6B+EEF4H+Z/fGITSkkIOa2ZeV1kYZcWZvr75DZsD+9g1teCOEqHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7800.namprd11.prod.outlook.com (2603:10b6:930:72::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Fri, 12 Apr
 2024 06:38:32 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 06:38:32 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-net v1 2/2] ice: tc: allow zero flags in
 parsing tc flower
Thread-Index: AQHadsiKrmYLWTUtN0uArHNK6jxjw7FkWl4Q
Date: Fri, 12 Apr 2024 06:38:32 +0000
Message-ID: <PH0PR11MB50131A740EC2A008C36BB75D96042@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240315110821.511321-1-michal.swiatkowski@linux.intel.com>
 <20240315110821.511321-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240315110821.511321-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7800:EE_
x-ms-office365-filtering-correlation-id: 6429041d-e4cd-4404-539a-08dc5abb2c48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JItUbBN45fYplrQCPXlGyPJQrE+bzqfFprKloy+kfl5iNX8cW+NAFOW0lmDT/FULpOO27RjYZp84hDZvuLR4G7kgE/73BeW4mqbGBuTDMB1UpPvrSxVPDXhKGirlJuEkF2fEdNBtzUflZhBDw9iN9j3fDkZ0O9t7V20gErLOgecZ7VpK0AxS+TtA0E2milqUTi946A4R4gtyHv2R6IfaQj8S4oP1pF00yg5irYQT6tAnaLdOXIhiBOgjuuj8MloA/2AnDUYaGgEgEWcMK6kr2/jlr2+FdtqWEO0H4K63qh+n0BfRaNOV4NIIzeUHv5Iii92i+azEjFEca/nFO8NmlLu2INC7t8BOQeGjM2aZDPDCPgcn0QeTHL0M1ZSqF7rPSpX+3iMbGlKI+sZmnCv69fXfvfDRkpHjNIiyCSSkqEDVVlf/uLeLxanCXaXnoSoOZTCJ+9/IHSy5VD8lCttsHlzqJYMie/keNLExllClgLXFeR0NH594DrtCSZsLSiT+hjg4JFls5onPMEdvG3+xqUqIWCEunoUeQ92sVKU/+golfXghHXedRBp5Smh6Brxcp6K7s9f9+nk0Ls8Ly14s7N9zpmFcYedS6GhiJAxOHRFKlYXNObuJfjfMh0306GWkpbJsrlKB2eSf2Rx77KujX3d/YkpMMHJ6xnBLHB+DS6i1O8B7BUMKh47s5+jACBQ+/4A6DT9n7tWpCEz3bKnW9H/hBcW24/g6MIZWU14mAQY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J7iG9NczfBpFoJcvwENydXIz6mml37dc47nNguGxcE3SnRblC4xQiURnB6t9?=
 =?us-ascii?Q?+DGOOhUd583QJP7+GeohjeA+j92ZIkaPG8Jg8xQRZU8G0CqP0OMivoBTgMo9?=
 =?us-ascii?Q?5Xgy3ResRUxOa09YQR4mIoMphIuPgKRMMaXUq5CmDfqnLwyCBqcI+yp7Hi2X?=
 =?us-ascii?Q?OpeKmRO3lnoqJbOK1l6eINTEScSTnW85q2cdN2hL4rZZSFITrCgF/Eif27LU?=
 =?us-ascii?Q?9KMs2NyuMmd89DZgUPJjoRJUi7UxCADTPDrpGToXJTQqEKplVYtG3y5cQlaD?=
 =?us-ascii?Q?Z4IryyLYAufDJ9dqk72d7pTOYz+quaGpM0qnlZGJ+4kdWMr2xrwPkQS+rMGr?=
 =?us-ascii?Q?8S3dEICVPaX7s15qpRBL79UThSe+LziqUYHclV133dZdbve2zq3RUbLKohJ/?=
 =?us-ascii?Q?evtTsemize1qeFCYflGacbGYC+QLbY1x/PpPOOp2p89adZhFcCulCDSk/CY8?=
 =?us-ascii?Q?6pc3VE8/OWUshA5lcVjxTYx9snrT143/s6BpVEQDlRDOLwIEmTUDjHo0nEcc?=
 =?us-ascii?Q?R2+8CMdK9fqJf907Q///7Hb5h2+Fy2ZpiUnzJOBp96km/3Nz6ZMK4P9Q/JdN?=
 =?us-ascii?Q?a2WRpjLFx9n9ExElYky6iUM3dyWGR33udfNOyssMJY0u2/Rw9TJgQpgcjxt1?=
 =?us-ascii?Q?AX51A2OexfSN3LRCqxUQUU0JiLwFalDtL6Cwj0T5UKec+L9hzUFuAV/6VDGA?=
 =?us-ascii?Q?YIvYobBe1WfjYN8UX6VN8cS/0g/fftV/N8UMXpjqM+VQb382a8dl01A1XN2/?=
 =?us-ascii?Q?noMIfe2lPIChQG03UmDzitNutz8VamadGFhLagTHBf41UL6IyE2UPFrbfEfH?=
 =?us-ascii?Q?vl3ngycqcbC320xgWx5jiCIz7OKje8W2wL80Zr6VJmX+4GAbeo63lgIXPQyo?=
 =?us-ascii?Q?GgAbtUHrUrcM8ksXPsoQneTgN/C36D8eOgVE1AG6MoT3DVgyWmRuXLeu5juw?=
 =?us-ascii?Q?dy+SHsSpCJ9pK+V9c3m/hQ9JTioOot62mvJSfN2T3mz2FNoQeqOx0/yQHEvS?=
 =?us-ascii?Q?nHn6f+2tOTRMsfVVTDwbxVtxFKb+Ca4iWVCmtVsAoPP07RvObip1YSXxHGPi?=
 =?us-ascii?Q?2wUytaL41x6uEY4NvnxAbZVhyDLzY4G5pkusbwK1WJl5aB6VzBxgEQCvr9NU?=
 =?us-ascii?Q?oDsGT55C2FFyVIgFPHBnHtrpxw66BK1ITf/tEHhOH98IXHM2SC1Yl4gFdt0R?=
 =?us-ascii?Q?RHHl6vTyVnE43idUf0Z8hT8g/8olj94nUsyjGnUv3g8SjvxDkhypZ7b/9phb?=
 =?us-ascii?Q?TmraM3MAix8u29aBwDy0fA3AMUEqOK/8Sr9BURzsmGtL5Ml5iRzTYVxAaqiL?=
 =?us-ascii?Q?SuLWSkA6P1GDN7Km0bKuuvtg3Pnc+lU9/HR0kyAEWYGnGMYttHMrlN7RSMhM?=
 =?us-ascii?Q?h/pks+THnt2xSTR5EuhIQ61YkrzsjHceWUQn0VB0Jji9eoKhiPqd/fk9hmaw?=
 =?us-ascii?Q?QCMLsW1+ZENECCJmV1eyHyWZomTrDDOjY4ku05Nj+etU/dLxgbwyP8OKCnCn?=
 =?us-ascii?Q?umavORzTAalKDySZljugfEhiQemIU+DGMD0ZWbj5zHM06nm2rVeCneY+ZYAS?=
 =?us-ascii?Q?Fy+uA5gj336rCP+yyKsvZM1TQYUTOZNN04nEMD89iJZIi63ht+fPw0SvQ7dp?=
 =?us-ascii?Q?Lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6429041d-e4cd-4404-539a-08dc5abb2c48
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 06:38:32.7825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9k7DMqrPMTHPZaC2HC+GNao7nyqhWysX4zDiAjOVqNkJsNzCCw0RpDrNARtwEQlcOaW6JjA1lcBJ8sMwDzpqGOu4HfdSIP40AKufuqbTQn8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712903917; x=1744439917;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MPsTK3koR+1Fpx8/lz5Gg7gStD/YBIT9//TJGHye/LE=;
 b=eoBn3SoFSP7PAV13qCVm1ulL4m3c72leea5Olj7AydzSQyjtktUVEwwe
 AZio/Pid3dCQNTbqG6xfpYwOTuoqsCuvSxLbz+YbYXg6aO3QUok/PmZLZ
 druos3P0tOjFDaVVOiQOuMI4oloslZ42VddPNalABGIsoJGge4WsxOUBm
 Jjf+dno5KL1PPVHI5Bv4qUDJrmYwh69O3RIhKs2XCbqVeRA6p0ejK7/ve
 +ls8zNMC+s8QiWgMiwh59zob/VTm5eRmvMXPbdLkUTOppKpSt01ocNAUH
 uisMq5EuOb8+l5RNldqdHp8BgqseaEw1TqP9q1F2IH2lOISdsVMIaIHc2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eoBn3SoF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1 2/2] ice: tc: allow zero flags in
 parsing tc flower
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, March 15, 2024 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-net v1 2/2] ice: tc: allow zero flags in =
parsing tc
> flower
>=20
> The check for flags is done to not pass empty lookups to adding switch ru=
le
> functions. Since metadata is always added to lookups there is no need to
> check against the flag.
>=20
> It is also fixing the problem with such rule:
> $ tc filter add dev gtp_dev ingress protocol ip prio 0 flower \
> 	enc_dst_port 2123 action drop
> Switch block in case of GTP can't parse the destination port, because it
> should always be set to GTP specific value. The same with ethertype. The
> result is that there is no other matching criteria than GTP tunnel. In th=
is case
> flags is 0, rule can't be added only because of defensive check against f=
lags.
>=20
> Fixes: 9a225f81f540 ("ice: Support GTP-U and GTP-C offload in switchdev")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
