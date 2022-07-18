Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0A8578484
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jul 2022 15:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A10A24157E;
	Mon, 18 Jul 2022 13:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A10A24157E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658152599;
	bh=xYHv3c8XjfMfyXR6jgrly9uxjPQxm6tN229E35NWXmM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=48Y/HDA086tcQQQA7VTvTPYomOCYzUQPT1Twg5pyJY90IcNPe9cX6Xj+0Sp4Z5zQ5
	 PqF6hEgTTBhT4xr4Llf9ThCmO7P6uZf/+kl1Fa92XmI5mAf98mJgdGcr9DPXsuGYsW
	 Y0DuJ0tBKdYMITYF3QQRSg4sa18sknk2/+0Ly4SmSdh+nEaGyLIiQik1aC81vJKAcc
	 4KXcc6X5ktBI/uMjdP00C9VG7X3tys35JTFd3M/m2+spoOcGE4k20DfBIugTR9IqHJ
	 LnN7ojn75kRufKu/00MuiTlxnCNorlmJSkz8Ahtt5wRuEbhxba9fBiJfIjiRtFWMsz
	 N9SLP7nnD402Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kY-wI_Fh9mGg; Mon, 18 Jul 2022 13:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1946E41576;
	Mon, 18 Jul 2022 13:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1946E41576
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C16C31BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 13:56:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5A9440620
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 13:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5A9440620
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CdQIZnydN4Cq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jul 2022 13:56:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C348404DA
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C348404DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jul 2022 13:56:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10411"; a="286966105"
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="286966105"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 06:56:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,281,1650956400"; d="scan'208";a="624738664"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 18 Jul 2022 06:56:27 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Jul 2022 06:56:25 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Jul 2022 06:56:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Jul 2022 06:56:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Jul 2022 06:56:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HbmTENPYzN9BwpyBQYYr5aOn98AwVdQIkFvuViWc949rq9mTSL5OsE2n8jQwaWW7lALHMaoMV/l17aDbXVNT2C30o8RO3hBEXhhbihB2Gz/nRgEyowvGqhWj317yUvyreGhGruWKuSPYeTIGRei5Dz7CwArrsFimK1uo7tgYllBaVEadH70OhtuI44axPLFN43R1JNGoZA/VrOJczoWdlpC7Pch7UMQf/fAPfBOhr7SF6eJB+QcyWiCDJL0UZWOFka7Qd95xz4T/jk5iAJ1mGLD3zdYwa1fryGT2HV7Nhp9PPcNvUkTRrQsWMZ+aj/8rL64q2iUOCTMRcXYpqCCiHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lqgfMoUh6uQsG4wV8ft4LnpzJVI+BZcqYdWdETsmI5I=;
 b=UfUC8uiA5US2edCmAbpL+wrJKGEqGzDuaVrhl5gHuK+igZfOs/6+yjRlWNMwVV6hMg1s7iZPGULevN0aurIaELlPQArk5LWe9QbNvONKCKqkeQgX2Pbz/nuG2MBbrayrVkWx0AYGSGo60qoi7kCdfuv373ZFAXTmdd8MbQHrnrcGpTdVzY7ddoh1WBNOqgHwvK1n0g2rMpKJYm+KE99XXoKgeQUe18doID+XUcG3pTgK5EPDJEGGRBw1AgL+AAht5EDpSd7K4PkfFR87t4KwnGRwJQqlCSUdCXKnjSQGXeIfQi781GYeu2PnOEAcoTFMXHvKe+vBNvmUJLacjudcZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2582.namprd11.prod.outlook.com (2603:10b6:a02:cb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Mon, 18 Jul
 2022 13:56:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5438.023; Mon, 18 Jul 2022
 13:56:18 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 2/3] ice: Ignore
 ERR_ALREADY_EXISTS when setting promisc mode
Thread-Index: AQHYkgPhU5lYeLotJkmzNolNditNe62EOCrw
Date: Mon, 18 Jul 2022 13:56:18 +0000
Message-ID: <BYAPR11MB3367E53B0AF3374225AFEFEFFC8C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
 <1657199751-256188-3-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1657199751-256188-3-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2ce6305-5e47-413c-27c6-08da68c549c7
x-ms-traffictypediagnostic: BYAPR11MB2582:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jlkzntxvzPQjOs6WVddT9rb1gKPVPKWt3VlFfhnZmmSlUPCZTyPcXh9Wr23RkIbdgtD9cYUiTzfrOMADSNOgH/CoTnsFpGUyK3TOBKpDGgE8QkzSyulCMNnpQtVUhyQKI+mBHj5C2fhXX+YvJPr4XP9WKP1DIUV1GP6fB6+cHv3IKLrHnfImWobHJdeuom5vqpNeHpr+RntpJ8wu639cdXHVgipXQqeBsp8/Yp3+QvokKGrjkJ0wkN0PMzb4kBUgZSZw82oXRKl0XC1gA+9tR2pihgZisS1NVOWSfuXW/7Lggk8Pdsl0uhJO5iW5iRjhLZcolfmDrPZ/nHNoVo2zX20OjxacnML2x0V99x50ucK7m5e3UGm9v5wotw+1mtlwms19/QcKVqWiCYdIPYejcHTIihqg5Xdb70nMZ/DsCofvwRfbRwCYUwpRJ3JgTKE1DCmuIHTDrEQDDOOi3HJc5bv8yAwD/Xo8Mf+Fd+IwQd/jvYIN3ap0zbJqf3Qh0YP0rIMN01EsnzqcF322bEMCdn6afSLsfLKiel3uk+6oBp+6zm49uv7qiSjHCO96kr1xBlSIryOb7gHbxAarugbVERlrraR5tqlUdtj9OLEIZF2t98YLtrFEkaaYg+Hlsv/yLBhvz3P64zSSo3R1Xkb5ZQxbyf5Mr0TPYOMyJI8cBvJ76oloCvbIetXOYrnLzDWFmqdcIQSWssy3dddJI2djsEljcEjFSWDEUHFAZM0UkchrfpgV9E20U9tG4QQNAaXBc8kkSgpL8V4+Qow55WuMnwXBvXKZBlopDoeOCh6heoV1/0q628EcZwJUJ3zfTVw4AbpYJLmeCaNuqAh58CtVig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(396003)(346002)(966005)(41300700001)(71200400001)(478600001)(186003)(122000001)(53546011)(9686003)(26005)(6506007)(107886003)(82960400001)(7696005)(83380400001)(66946007)(38100700002)(66476007)(38070700005)(4744005)(8676002)(2906002)(33656002)(8936002)(5660300002)(52536014)(55016003)(110136005)(4326008)(64756008)(86362001)(76116006)(66446008)(66556008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Il3pwyKM1S/XnVlxudM73AsnAik1XO7fhZfFDZvzWXYzoYamZXQEI/qlcS/j?=
 =?us-ascii?Q?/eQBr/XElwvvH5V4Yuz6glEx/XmVFOwm76iBgL+/CxdQeZSG7Jn9G5MQ+H/C?=
 =?us-ascii?Q?x2wkt/AeR+tbsng/yFKvzTBknEjGYXUh0gBweChGQxlQbJ9ut5feBf37e15c?=
 =?us-ascii?Q?4coZutUDEvUO3LyiPJ3VC9W+NN0h3xQdcGAqw/uHr0WoyrRK2N8PGWYh/DFR?=
 =?us-ascii?Q?d4J6OuJOL7fNngHvMpNryW/pLPh6VTDVC5OTy5ZoYkKWO+EAknwxqLbeq4tA?=
 =?us-ascii?Q?+WOfWfWSp3eYr9E1GdAFYpSubgN1cOH0oNynn8KqC11VsFJJWJ1BjmutkFqN?=
 =?us-ascii?Q?xscc4Ydb9NtCaqWIxTqdEi4cNaAf117OEbXDgG1gZ6iqXY9p9xaF4G1Zc3ik?=
 =?us-ascii?Q?GwYHsLVnlNoRTW5VkU1m6O8WNLXHlnhFt4Dh2aCD7t6vgEU9ktUBmXWY1IRN?=
 =?us-ascii?Q?vDGPwK++TQNvIpnsrtaS42RR7wxO0linM4cW7ltfONC2eaErV3qU2dOUWcjA?=
 =?us-ascii?Q?+7C7r0Cf2ajomVPeWAKO0I6lIVS3ry8OLwX+Vpznp6xZ4IRsP+WXiKgdeO/W?=
 =?us-ascii?Q?L1JR437gH2tYkhugieBZvjEWR648tJBvOLRuu4uebvhfiGFZnYcCRFlMUtjG?=
 =?us-ascii?Q?P6ovKZ6taLkHCf31ndOYIZtlGoPNVVBvYkoZvx/5wOc/pEqpOWvBrR+rHfPY?=
 =?us-ascii?Q?2jiADJj9+18W1Za5P2Ey6GPv2aTclZnsl/aGgFaiO1JhNxz0Ef4j2BNHEQzN?=
 =?us-ascii?Q?2dgtIy+mvoXK+GTAreDrBS5uYXh6OUjBzBcopDB+EMnMZ0FWCacnA+7iOZjX?=
 =?us-ascii?Q?Grxhj4zL4Tl1hQ1k3679WEmwT/jSULfrSJD9O+wtiD/EtJ/iQ8J6Dep8aDr1?=
 =?us-ascii?Q?BeSps+4EnNIugKE59QYy7IWTwMfpgFr6m03cFcBMLwN2CKnY2Mb5wRFEAfzs?=
 =?us-ascii?Q?W7/NrhBYYh4CqcV7cMa+t8iGepTGmtOni+smNba9S3p/xK8via645R4fTsiS?=
 =?us-ascii?Q?trDvu8yUp9iolMYImstiXQMWABSd94VSbMmH+6fP6uCS0Mr977jNMkvGpzXX?=
 =?us-ascii?Q?wztdk5r0F4g1T7g37Ssd1hvhmBp8p9ZQExjrkvBTU/cI6QdnyYFsq8O8sb4a?=
 =?us-ascii?Q?X3Yx1pSuqlyIsWFkqIioS0iTq2jIp8ReMMUck0BxOICuidwU+owRIacwQ/lJ?=
 =?us-ascii?Q?ewscxJxFr1TGAZqYJZqppizL+CPxQ2DJDJ1Rl0EFBTYQ24kjpFfa/wNUHofg?=
 =?us-ascii?Q?4UJfVw04dzOhuw+de3yoPJzNmqcnR1lBtZhTNjoN8BEuFIs1cxjvRvtr7Kh6?=
 =?us-ascii?Q?uG6/F4Ly+5jEV0B9LgV6R0RUIPyKuJRMnTE9EqhVjrFwrQLCesJl7sCXi1Ds?=
 =?us-ascii?Q?YQTBtwyyG+MMcu/zlUbuVw15elguX4NDkmlmVm2oDSpVG8SpHmrKQMqRtaAV?=
 =?us-ascii?Q?nQFY5QCZEY+NmVr+7kRLdprjnOeW8BMZP6UIsIYNiD6N/Z8S+jdO1hf6MFuO?=
 =?us-ascii?Q?hf7Y0rsZ8ya5Q9tT8Ub9eMzW+bP7/qoRRNHZ9WxRH50uV/rAeO/J+cHbz3YV?=
 =?us-ascii?Q?Q9IX8sgDxUOdEPVtYyCuvyOKIsDCPhAZwd+ThYrj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2ce6305-5e47-413c-27c6-08da68c549c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2022 13:56:18.1512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tHGfRfp2vtDx2kTjrNz2++9Ce2KmiW4waLXGT5kEqIkREjMikV68tdMEyAMB9yWaFxemXzAR0Q8pZ+ULX7152Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2582
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658152591; x=1689688591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SFRec+stVSFZ4zr44vusTgN1Dd1WbiaE/bpP4Q1x3Vc=;
 b=lns6sb3fFz+SIJZ5+lGVW4nAX9FB81pxKRwv49ZIrLB8FsT9p0LpSPtx
 Ic8ORBIp7hD5IoD4N3gvRWmmIcJxv6k8sRaQYqRmemzyKQ8DYAWYKXGcS
 9LuQUv+UZXg8c7e0EA0AMjEIUJ5bmvOqF2/QIzKDyBMG6hLWcNDDuCFfY
 aVe4dpnzd/pzd3ujDmo2rQY7oBw4DS9OtuPrU5GQUL2lrJE0wuFBe95Vi
 S2M4z9Gf7AWVHwyhlokS8bdpca7Y035CymivAYTEoP12NhthW9R8WXSRZ
 JXEXOxtGrhIkJriJqixIHomIu9YDpHnaq9LR6L+JaDyp6wqF4rZTiFyih
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lns6sb3f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 2/3] ice: Ignore
 ERR_ALREADY_EXISTS when setting promisc mode
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Thursday, July 7, 2022 6:46 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 2/3] ice: Ignore
> ERR_ALREADY_EXISTS when setting promisc mode
> 
> Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
> This fix is needed because the driver could set promiscuous mode when it
> still has not cleared properly.
> Promiscuous mode could be set only once, so setting it second time will be
> rejected.
> 
> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Tested-by: Igor Raits <igor@gooddata.com>
> Link:
> https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
