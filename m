Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4950C54073
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 19:57:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70A068268F;
	Wed, 12 Nov 2025 18:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aol014dbOfRJ; Wed, 12 Nov 2025 18:57:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2BD08266D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762973841;
	bh=iyPBJCCFsev22GtKkFfLSHHEUncAVlxP1TjVAkJW1aY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=L89Ftn6vojHyfjXuShFFjYXtwfCwO7Jcg/VZKlcU6He2PTdPOU0vcv0dRvVgOxwJg
	 thI5tjrv2ufTfgu1v40DZ77ScYBs3BWElo0g/WzPIsrdbGlCsrgtv1Y/4jGNg/+/QF
	 U/+uCh5KLxw7tO00GZTJk7oWEZdKyzem/jMdJk6DzdwMKhwmkp/NXNcVjN3rc2fcPc
	 VilpZhgJQpnQRObzgM7tdWtoeeshtp6iSoJV9XgNQYvOcxOjdunbXAaXnAEamixvdy
	 poGbk+YBt+tUey6+grS8rDZBy7+V7hHBGXywetNz3N805dzlf1NC30wL+D2GoiIKqt
	 dtWBT+LnWRxDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2BD08266D;
	Wed, 12 Nov 2025 18:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F13C230
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 18:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 451294004D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 18:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OkDdzXWRgoHn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 18:57:19 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 12 Nov 2025 18:57:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6D09F4003D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D09F4003D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D09F4003D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 18:57:19 +0000 (UTC)
X-CSE-ConnectionGUID: tat/oTOVQ5WcosMsUO25Pw==
X-CSE-MsgGUID: uyZBlpLFTQGG12KJyj9olw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="90516638"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="90516638"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:50:13 -0800
X-CSE-ConnectionGUID: 2cS8PDsyT1GttNBETUShdQ==
X-CSE-MsgGUID: hwWS2shhTfeT6j0tvRlKgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="190029653"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:50:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 10:50:11 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 10:50:11 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 10:50:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yKSF3fHykI6RQX0K37cbMsYzJbRArfLxsP5Rt3clvZ0cbDS5bwVK8zz4L7OQa9GEdnOYtMZwTqmTzwniiCPJNgafa4/bnegNBgTClt6pAC46XtiZOKM/szv6Haz0A36x4mw7IxdsdfJyMBRXp4pKPBSIeTSPxl/PwNQuXfWTOZ05ilcjgRgqZq3GYU6QvYYpCZ70VqkdH8o2ZJrehLUXMRH4/vaGuDK9LHM9vVH1xOHGkxBuQCpDhM+LvUz4OxInM8UPcgneA+eKLQZ6vQKyIIYSIcdNylppWE7yKVJ1gUupKGtxzU+5mokuWf5ouQxScwdogkpBDBP7/X5IsCKhIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iyPBJCCFsev22GtKkFfLSHHEUncAVlxP1TjVAkJW1aY=;
 b=sfnSY4CImDLoHHsb/coApRPYpMlMaaE6yxm2NNgSy9BVVhw3D9ZyOGNfUC3QKq8lvw7KLvsysprlaDYUNYRz06RZTgP0BtV8LHsx9EO/8SpGvkWtdox8hZamqvaLUbioI+yxt+bn82s2I5sBFlPt4KgfVEv3GN36owM8Xv4E6RZwxNWLm8i6mNhEpropc5c/x0NgMn716iMmLXwBfDCHD8Y+0aYIVV83WHvIZOswIh3h8voqcMyk96kdYBb7RWUzJDObydrQREAYC6Ijnb7wMJnnq60G0uZ8As3VV8creIEUoLubDUm17nM15J3E3gV7WGdp1HlCwhfa1KzoA/tX2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6502.namprd11.prod.outlook.com (2603:10b6:8:89::7) by
 SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 18:50:09 +0000
Received: from DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a]) by DM4PR11MB6502.namprd11.prod.outlook.com
 ([fe80::21e4:2d98:c498:2d7a%2]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 18:50:09 +0000
From: "Hay, Joshua A" <joshua.a.hay@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan][PATCH iwl-next v9 01/10] idpf: introduce local
 idpf structure to store virtchnl queue chunks
Thread-Index: AQHcUNP6wEUf9Df7502kpBCL6v2ajrTvZu8Q
Date: Wed, 12 Nov 2025 18:49:48 +0000
Deferred-Delivery: Wed, 12 Nov 2025 18:48:50 +0000
Message-ID: <DM4PR11MB650291959A827408C0AEE2B2D4CCA@DM4PR11MB6502.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-2-joshua.a.hay@intel.com>
 <aQ97z8ZZToGIxb3X@horms.kernel.org>
In-Reply-To: <aQ97z8ZZToGIxb3X@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6502:EE_|SJ2PR11MB7597:EE_
x-ms-office365-filtering-correlation-id: 5fb6a952-62c9-46ce-f4cd-08de221c4db5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?yFj8PypGsenAUQ2cr3kVa0ryc85SnIG5f8FH0MgrBPDePyK7WKesnEjB/1I2?=
 =?us-ascii?Q?xH+Qc1+esemjIPL+NSnP3EDGeRRyi+LB1IGPX5OCuHNuKfDM7QWr2LoWGgEO?=
 =?us-ascii?Q?gpD0XWVUGXIVFVkH40olWyr/5ocVQZ5ClSo7c2UyVQM74fyQ4OTv8Mc8dtYH?=
 =?us-ascii?Q?P6bG25ecOQT74ULczArlYyosJn0AgFf6rGGg5ZW7xW4t2bFpBdD6+TlrzQ80?=
 =?us-ascii?Q?hN4meCamBONthhGUhu2KCg+AyLb0slU/PgxpgNabKjQnpbXks7QbywxK0d1I?=
 =?us-ascii?Q?JL/kbAA8heW1UhlzcmauFPNXQfkC9V/+qT8KHnLrpROWGfxYIXjgBuv0Ir9o?=
 =?us-ascii?Q?0ZjPZEc69Iqgb+whrxLboLe32MAgLQxt22GdvOHuT802eXT0XCvuiu1aWQQ2?=
 =?us-ascii?Q?QsjMP51RV5nadhi6MIgBGKxu+QqzJWmy9//k5MmQVWIlJoYegajcG60Bb5aI?=
 =?us-ascii?Q?FahNXzEXZQCXI13kc/Zk99SYTEfun8oIPYEIzWNuA5YMGj3o4mvc7jy9l+KR?=
 =?us-ascii?Q?x0uW8ai8vrpJJWqpqFTarPydxiGiQ7cclgBxZ3+633cgrnFIfaiuYvBxAyMP?=
 =?us-ascii?Q?cAnw2T1nVA/9iB25aTRtSzzV8S9vg30l8pasTmsILufKsKthKYsBSa5sHBZ3?=
 =?us-ascii?Q?w/xyMukn6ujVtU7js7wCQl8tX/B8/RgWPaOGEvmvJ4tHxQPatR1dZJcqyG1R?=
 =?us-ascii?Q?YWNqrnKhx92E7hFK3vCM6BEt6/3u8n2oD4eXBNohlAEnOzdSHxp1RaXHbImm?=
 =?us-ascii?Q?eo+q+EM6d+GdMmySu0wd7Mn4OLgLZ0SWfmV79Nf2y960UD3yuX8yA139oWvQ?=
 =?us-ascii?Q?X/kGY6Y5G0YV+/rc3w5fThzb8Br+Cn8ySy5pAhGi842QPPr/GT9vH62moRnT?=
 =?us-ascii?Q?8H6MyuabcuOStRpPx8StwQRSpW2X8NPzHiq1MFxDEXyoMIAY5mO1azPfV4Y8?=
 =?us-ascii?Q?HtSWrEYk9yUGCnqyg1KY4V3homgG2qUjoc1lAXCtWgzXNbJJbQePykjiOrsu?=
 =?us-ascii?Q?/hRZhbEJTMV1qaj89fGsmCNeFd/XTL+IE/OqCP4yHHI7gv1C0hqkiGQi+n30?=
 =?us-ascii?Q?dBghwzR+aXJfRQv8a2idfWoldtzLqAKFGivaCPRMdiRiUVM9QvvIZPgHb/jv?=
 =?us-ascii?Q?q0GYmPPX5KfB70xNL8voQo8QQyWKvnvTONhqkTCa1poXJA91YAh5EkbnrF9u?=
 =?us-ascii?Q?R2j8MHxd4RoR58Y8wjRrNwAh2HFxVNRfx5oALGWZEbz9bwAFaUtgI2Oe8izE?=
 =?us-ascii?Q?x4KJX7lpum5NJUWTmipUxIZ/68OBbuaWmZI2EVxKe2nqJKgXWhd6UsbW3exf?=
 =?us-ascii?Q?2AuWduuHvozhajsRL1oa9D7cCRG+XrFocqtC5ZNWwL7v4YiHDSEL+3JFErbR?=
 =?us-ascii?Q?qNlaqDqJ+Oqr6Wa/ZR5fRXToP21CyGhaVE1MEXwiQtIWO9jOGhgQ+CoZobVo?=
 =?us-ascii?Q?36j7Yt6S24PqV3T5JeCi0q/4V/98FAY+CEu3fklnHxkanxEat8Pa0KfaeqR8?=
 =?us-ascii?Q?LqYCLRlCmBC5F8HKfxLpz/dRixJ5ru9MWef7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6502.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ySGZpaFi9+djGsIVIWyX2gXM21qx2OoT2TSRQbeypOlhxB/Vkr8TAVBSf18x?=
 =?us-ascii?Q?p1XBmomVBCjOkZHjsl2DxPVh/hQvxOw1dNy9wDvrvz3+C7zHsbMgPu2OnuEB?=
 =?us-ascii?Q?PcDDfsVGe7RafTpXUB2GqgjdaSnQ0W8qrupAwYQcaHw6Je+1wpEj9eEm2UDr?=
 =?us-ascii?Q?d/9+xFDjMY9IjWzt7ocDgx9ofDVGDUhhgm9kSsya1tiiVsNXquhYtwT4Kvrg?=
 =?us-ascii?Q?Icie27/Mkxr346RDbcd/1vYzQ02wH70EMsNENhLhK50GVc+J2ECqDp/7zlCE?=
 =?us-ascii?Q?B8EpcsOmOot1mPpFZ6aodPBBWuZowhcmw20nCWiPDBYOfbrd4pWaym7GErXO?=
 =?us-ascii?Q?6tPEv5Rs2D5MdtoeEygD/A0GGpM26hFcIELIquuetDMb3nE6V0thASOnbZzV?=
 =?us-ascii?Q?Dqbl6ZoefsGlHw52HtATrgV/zP+U0NTJND8TgvtDP0+AJF4hudz06llgMT+w?=
 =?us-ascii?Q?BFObWjsrNBj9As39EUu2erQm+m3rijcFVpqklK6Z4LLn+HRfVHqx8CIremgR?=
 =?us-ascii?Q?AuxrEB7PBe8c4bGDy7rjXEkLMJh1arfhkx5s3I+18/dXyYD0ShOolfiq1cD8?=
 =?us-ascii?Q?qpHfPLJz9mINj+RKknk8zRGjWcXj57AhdWh80h1Pwo6uCuY9wHT70xSbsPHW?=
 =?us-ascii?Q?77rKdeFwahY9wNQRpH/cB8KVMvnJ7GAnffP3siP+6WDkSy8fD9O/7K+IJvLc?=
 =?us-ascii?Q?E32OPVouaibxXRy7e5rFDA4Twtxt9I/4IsteH/4SAKlgOgJxmvFnHAmbGyOP?=
 =?us-ascii?Q?WJgtr4l1PkCWQ+6LyRgShDEDDdYy0CLRe5Mn9qju1DUVkd8wE6ejxMTIwjQ5?=
 =?us-ascii?Q?PdwifIpzBAqN05p0iPHVuL3SpEtFp8tFjD5e8+ePhWDf54F/R6c1CfNBmPUU?=
 =?us-ascii?Q?Yyxov6g2i8NqxS8hnjyILMEn7JNE7zZCRUj4CtDyridr+R7RTfMJbiEp8xEX?=
 =?us-ascii?Q?zSLTDYmeukaluk07HANEh3CBagW1Bv8GV1rDQMcjdg8S0F7/exsoaTVpoaF4?=
 =?us-ascii?Q?yum5r5jlrWeVvc38HhJnQa9gK1l7vml/jBdWsas6S4hjkV0D7addZhB4W0bO?=
 =?us-ascii?Q?P07wlumF6/LUVjAfdQpEJtgMahXesTlBQTBj9aimdSURDj+/0admXPKBf3QS?=
 =?us-ascii?Q?1e0bGUbFmvAG8iA/ao5cNaCC0e9vilXayjW2zwbOU0nM7S+2OB8lLTlu7m6Q?=
 =?us-ascii?Q?8hr2P/EekUWRajTmY63cxNc1jMZ8j3WXgwm7vjdrHnGq+BxVkNtg9CsEALRw?=
 =?us-ascii?Q?dzOHUyPL71jF0GhTeFhX7AlNZM4JM0izZiyV4ztH7CRRAyvEJV8S32paKTL+?=
 =?us-ascii?Q?+adYLUQKItT9/H1R+7CvhKU/KS1aun00AulROLT/B5pn+QTkavkMqAkGYCtP?=
 =?us-ascii?Q?rXFWN/qv+xDJ5v6xXWBjwcYbBfsUy64pPr00trmkbrXEl0oxgJNgnqAyuxy1?=
 =?us-ascii?Q?7stAfWllA7G/q0CGbVhnJ5UEC9QzdBVsHEn2+MiIRtMM1uuslvJnX4n5RMa3?=
 =?us-ascii?Q?MHcRoRDHZCkbx6oe1OOonkanbkaOy5i0EqoCAfiMDVMs1MshzJPOVRAJPgmT?=
 =?us-ascii?Q?ZoAFw3ZeCfqQXeQc+saM6S8m9lAj+bh1p8xp04bp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6502.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb6a952-62c9-46ce-f4cd-08de221c4db5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 18:50:09.0796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UoYoh95zjeJe1T+KnD0N0thowAf81fMMxwHxwdkY68OA3ln4bLys3zZ7R6Atil1QTQSNakR3fXr7DVp7oSuydQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762973839; x=1794509839;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MChxS/EueeiJRdtVIuSNf53mMGWPiSXitq5PIjrQcaA=;
 b=UkeU6lF/FK/tRz9LiTGWlOXX2/xVsq9KrpHmFsifw0fkZeW9XTJmWxSz
 spBjz/42w1bPzGnMT0Oal5t1TA207SUpgDyXfLtIYE1JBxfZ1fZ29rZaX
 IeaX3Tgb99jYUo8Rki8WiJjtlcEuODmHQbqw7CGIz/3Joq2kR8iwrGvBr
 j1FVYCLvjDidv8pB9L7UzU0m+39zm9M2lKcUjNnGjUrs9mnVICT3FPZNp
 oMLbPQXuH+wrjHyVk27brZofxLrcNEPS0v1bJzyEGM0s2KDUhcVBcLjxP
 erZXAmsVqQnhdBvo31FQGMsJbs2iQIIV2PawcPXVNFjywNVj7/qeNhRc/
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UkeU6lF/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 01/10] idpf: introduce
 local idpf structure to store virtchnl queue chunks
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>=20
> ...
>=20
> > @@ -1237,6 +1242,8 @@ static struct idpf_vport *idpf_vport_alloc(struct
> idpf_adapter *adapter,
> >
> >  	return vport;
> >
> > +free_qreg_chunks:
> > +	kfree(adapter->vport_config[idx]->qid_reg_info.queue_chunks);
>=20
> I think that the following is also needed here, to avoid a subsequent
> double-free.
>=20
> 	adapter->vport_config[idx]->qid_reg_info.queue_chunks =3D NULL;
>=20
> >  free_vector_idxs:
> >  	kfree(vport->q_vector_idxs);
> >  free_vport:
>=20
> ...
>=20
> > @@ -3658,6 +3668,11 @@ void idpf_vport_init(struct idpf_vport *vport,
> struct idpf_vport_max_q *max_q)
> >  	rss_data =3D &vport_config->user_config.rss_data;
> >  	vport_msg =3D adapter->vport_params_recvd[idx];
> >
> > +	err =3D idpf_vport_init_queue_reg_chunks(vport_config,
> > +					       &vport_msg->chunks);
> > +	if (err)
> > +		return err;
> > +
> >  	vport_config->max_q.max_txq =3D max_q->max_txq;
> >  	vport_config->max_q.max_rxq =3D max_q->max_rxq;
> >  	vport_config->max_q.max_complq =3D max_q->max_complq;
> > @@ -3690,15 +3705,17 @@ void idpf_vport_init(struct idpf_vport *vport,
> struct idpf_vport_max_q *max_q)
> >
> >  	if (!(vport_msg->vport_flags &
> >  	      cpu_to_le16(VIRTCHNL2_VPORT_UPLINK_PORT)))
> > -		return;
> > +		return 0;
> >
> >  	err =3D idpf_ptp_get_vport_tstamps_caps(vport);
> >  	if (err) {
> >  		pci_dbg(vport->adapter->pdev, "Tx timestamping not
> supported\n");
> > -		return;
> > +		return err =3D=3D -EOPNOTSUPP ? 0 : err;
>=20
> If a non-zero value is returned here, then
> the allocation (of adapter->vport_config[idx]->qid_reg_info.queue_chunks)
> made in idpf_vport_init_queue_reg_chunks() will be leaked.
>=20
> I think it should be both freed and set to NULL in this error path.
> Which I think suggests a helper to do so here and elsewhere.
>=20
> Flagged by Claude Code with https://github.com/masoncl/review-prompts/

Thanks for catching this, will send out a v10 with the fixes soon.

-Josh

>=20
>=20
> >  	}
> >
> >  	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
> > +
> > +	return 0;
> >  }
>=20
> ...
