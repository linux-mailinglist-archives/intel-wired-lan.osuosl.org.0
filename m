Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B227D7E67C8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:21:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB31B612ED;
	Thu,  9 Nov 2023 10:21:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB31B612ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525315;
	bh=IkJjWsUFJyizLxy85WSUOMQWk2CFVV8+9cbEo4Jkdi0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bgJo8gtxPTmaRaj9f1QqjfVXPtf0g32h1yb6yLJNmPyI7nGF8NKp/kXTLh/VQCZ48
	 FpGQPk/TtCBgdWxy/kquHkjCtNtb5DT0CAYghogizeGUrkAKwfeDC41YpEZEtVJ8Vi
	 JMdfoL0fIRerfGIp8TmH066/n5dGfnniQSkCwREPYOMhZqGQCzuqHLo3Il6lSvqOoo
	 o9xqNpOk6YHYIbsbHDFnUhriCP4FsRLQT/M7+PLSi7q295946VHeP/DzoOMnxDzsFb
	 8GqXO+clfJExETqLpU1FdzyE5TR1lnJ58NyMFJRTgsk0o53JSRLR5vfzg0IKMDioxq
	 duSiXSihPyFxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2sUvuQG6oZjE; Thu,  9 Nov 2023 10:21:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B78E8612BB;
	Thu,  9 Nov 2023 10:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B78E8612BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76B8C1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CAF6612BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:21:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CAF6612BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r4gh38SAOyly for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:21:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9CC7A60F1E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:21:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CC7A60F1E
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389761231"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="389761231"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="880552053"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="880552053"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:21:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:21:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:21:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:21:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YIaYHDYc83qF0ehSQVpWh8x6X9XZE7Bdt8UqEVNzkmDqJ3GupUZ4jX5ybtX/wStrEFK9tIrz8voLdu6ydvB8CFsZVeZegVggwwxgpI/KEDj48CaOsEh+EQw1BvY3I8h3EjaGYnIg7OpvYrHsWudufndy+ss3tkuc9Xkryx1aY1fNjLp4u6/1yAHGzO+nNwD6lnIN0OvozU6PVXKoe2U/mLv0ZP4gCH/eo6ENG2UA7cvXEqXmRcriIEp/YA0iFO9rf9xXMkxKk1I5pFKY2LLTNYPQCmau7GQVujCa8howHN/MayTI1PYBvUE6zt752cfnvJifN2P+hH49XmFyIfVHEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOhly4gV5YbXs5+ps8Pb5ljRh/K/a8ES9u18qZUxr6Q=;
 b=FOv6lMXzRocW+V269q7uT97TYcUqWQ8OUECoSRsBgLnuZEuHMWwozOK1Dxv04WMIQ5x39RfeiN4g6jUSYfRL/EKAAU8s4VhBQhLGMjYvu97NHgQpHC1fIOIW/TA+Gub895itdi7nNc1SbpiDBp8nlttG4vuj5D7ZNTET+vOzOwX4Wb4F0eIW0ZVaWpg6GVL0dDiH3714d2PaBJwbJ5UfOgU28BqZkZc/Racah3nMMuFQ/59yDq+Puu6JM4LvV9p8ysyGzA16ap6t8Xa+EpjmJpbEDrZuE2Q2NW9hUsLgnUg80xIZ8Cq2mKwY6qxEvL6nASxL57K7QKThB1ukpmjk1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:21:35 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:21:35 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 07/15] ice: remove VF
 pointer reference in eswitch code
Thread-Index: AQHaBm49i6IRE8uvDUG3wHrFxU96E7Bx3/lg
Date: Thu, 9 Nov 2023 10:21:35 +0000
Message-ID: <PH0PR11MB5013119868170906711D87D296AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-8-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-8-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA0PR11MB4527:EE_
x-ms-office365-filtering-correlation-id: 4213c626-55a9-4d03-732c-08dbe10da6b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SlvaPfalrigeS8w7k6z5yOh/R6ifmDXjo1zCo1/UqdSE+ZXCHKlt3Ki9qb6Lcv1x3fPZv7ZDkHAeGDtn1u1jU5ZLV+JQjcW885n2R6a8iarEENYgtvICe4mATMTVOCphsAmtzaw8zB7Z0MWpq+yWCBTbZuVUObqRFSHHLT/vMlistR1xdtLgmXxsoqZoCgpdGzgjuTIR8E/Q+VQWQCs23+XVBayOu2Rqyb6lEo2w1kSHmmFrccNqgKIwzCdQNTTOfS0/wAxJjsq+cgCYkQhnaFX+fRXedTVrU1UWbnIV0jfU0GEVB9yQCeF5XpAgxZDtnEFCJvHZpoeA4yeJanJ/eoxb49LRpeg/Fyp/IgQS4j+NfOYNArPnYmQLxrxXiDIUlLK1bpmsLDuf2HVlMBAD6KGL3hOMXKq7GDlz+kbKNt1lO09ornISvT2UTa/JdhQg/znYC9J2cIFagpsh/Wlamvt4NpZmqtAh7xphtVD8pyPzOtzg2M+dQ5hZPuOv2z1xr7Q8rmJ1TfaZ2Zp3XPQ3O5mLEdyoSC8VANS44n54D01BrmTDRhpT+gwaGI0XD0r6Ns/+syBpQI0GJuw42R0dihHl4y9WaYB+EXH9tpSp3b9V4yhPXf+s/AKIqsBPGAgC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(122000001)(41300700001)(9686003)(8676002)(82960400001)(66476007)(26005)(478600001)(38070700009)(33656002)(8936002)(66446008)(4326008)(52536014)(66946007)(5660300002)(86362001)(316002)(76116006)(2906002)(64756008)(110136005)(54906003)(66556008)(53546011)(7696005)(71200400001)(38100700002)(55016003)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2ZezneBuS65y6Mi/dq+A1U/tx7+Cn/vA6q3/V1MB59VsDCPR05qsDfbJpFGo?=
 =?us-ascii?Q?k0KHEnsJyNDhimYoSAPVFNy9BarvJfbAfjjWx3eP/ph7gj7+LRAbCys1amwI?=
 =?us-ascii?Q?MkrnB7xi7WvYMzJubCt9ElAYLdhnTJLStZtYaP9aOkuzQ6nyIoeQ6pBetPvy?=
 =?us-ascii?Q?oEs6vnClWz9re3fB/zAIlwKUv/B4YBok3oQJIEIa7QV+eg+uLurG0c7qWKS3?=
 =?us-ascii?Q?EpkkHgiYb+E2trrJlNIcwhJuUdQpMymQ3YERLr8ZPF6fa/4LceL0GdRL8hMR?=
 =?us-ascii?Q?CecARI0S+/Ic+Kqno1B+DT3MDMa3zxMcBjhjFtyRxWbLvdEscQzOd7VtoAqf?=
 =?us-ascii?Q?75juiEGrKcxzMDNLv4L6/w09q+nsBrYzP84Q4el44EOinniB1TIgjstliKF+?=
 =?us-ascii?Q?Qs2Ne8iqQA4Evc589Pynkwzbm4kIGnYqQPj5hCod1oSGFn7vzb6baBZeuAkW?=
 =?us-ascii?Q?wZhVEbOZ6CZoO/nArK7kUoqiUiwwDYf3ofQ0M5RYV93r+/LdwNBzEmKR51OA?=
 =?us-ascii?Q?A8AXHfoj6dAllIzdEYV+7s2o4RFXQ008btbfX/IWvW1m0DWs2ws5Deq8xnR3?=
 =?us-ascii?Q?I5oGm8BnPyLNykexiL8OGnnQx23pfjpobxUo29HNDKtIVdOvIwvMXLvv5wTR?=
 =?us-ascii?Q?YT8mdn0PfxkD0+y6HGXNcW5fIcvjAYqlz0ObA0T31HzdiGQx2+ZLCtCnnEC+?=
 =?us-ascii?Q?iCNogU13Ys085kovsxStYeLtOAHWbadZa5QTlpWs3m2Igwll2Qht6krNat9H?=
 =?us-ascii?Q?KTFrzmnEDvxUCzzlHBvepN1kWCoVauvCuCf2WTJqwqaLwVYPAvpTIhsKUWKv?=
 =?us-ascii?Q?gILLJ82p0Kmm7KgpzGL6NBWHszIpqL/LS7kXdeRMck6eXsVzh0wUWKO3IPeF?=
 =?us-ascii?Q?hQyB29eNQxlBbbF7qqnQgmbAchwIdhYR4CuO6u9AG+zvAwYzqxURjYTeq7Bn?=
 =?us-ascii?Q?Sz3YmplijddgDaXMt7XEXMJrA7rFhBs7lflHbYw4D5ktmnU0NWYIhb74qu3u?=
 =?us-ascii?Q?DoG5TC2yS7DpxeW9R3gmmr5SN8RuHrtFi5n/Uh/xedSVdloYTnRvaEKSbcA+?=
 =?us-ascii?Q?9gyyBLMiV7gT7pxDcf27eu1bzpelRlfpATLBg1XItGnbyePVnB6fVL7N6kgM?=
 =?us-ascii?Q?/4NEGm2bVQaoNy2Z5dzEVm8GjjIRstSQWuzwgx0kuNjrRrC1NjGxcsEEu82v?=
 =?us-ascii?Q?AoKyiRBbsTN8+UslXUyJCs/7COmvB1COkFrqtjlCJRS2aABC1NVs6xYTaWQp?=
 =?us-ascii?Q?tsIZO+2EOD5wFVBoX3/3koW6rm2CypLP73CvFn8ECkAD3JzWJxk1i6UBOKGp?=
 =?us-ascii?Q?1wi6VP3oNp3QmhqMVshJjD4wgTfYkQrq20t1vWpw6sQfgRSOoB8C/W/jYauA?=
 =?us-ascii?Q?O0J9IVdsJYAMtvYG7VHl4TsHoRMwg9GsYXp9zO9tgGtkjajGaW6g8AKxtZ4+?=
 =?us-ascii?Q?baadRCC72602BMl/UuFd6CfDyZnyAztQWCxLAkIQgPSJ1J83UJLx2GTWHLPO?=
 =?us-ascii?Q?Sk/IeR7GJV3n0qM3kPmbX30keTFFo+MZvLIkbcLuToBhnPkQALz2l+BW0+XZ?=
 =?us-ascii?Q?o2lI8an0DknpqDuGsditEWTaOtAZ3Daa/fyW8esR0eKzy1DYPgdbMtfk1eQt?=
 =?us-ascii?Q?LA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4213c626-55a9-4d03-732c-08dbe10da6b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:21:35.0325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E1Jbf2CbKyPT3WN36R1LcFraBDdiQjkbOgbEedq2Af6qgINsOkl88LmnQs7rmst2h3NtVmnyxcRtIgJ0mJU+fDyYFD9EVfA195IYuZloixw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525308; x=1731061308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r5x6ljwvsRYuRyt85LYq3Vhwu2bg8BMxMtsfqNgc23s=;
 b=m40iswYh8Kz30q31BLIkRbwfcGSMFZEfNEyAxOYUkjpDEZPS37TvzrTu
 YeYF7YvOblL6hC2Iz7lMXlHAzLCZfglQS4tRANyASyKWp9+c2MpNuB07U
 RFyzXZ9QRT1ZfZ/nFWC50cKpvHIIXRlx0So0H4xymMPoqKmKnrT9b1MUZ
 UbZ8hnOkerU/6TO2L58bs64lSBvHl2de61fgY1WggawhJnI55m+spUD4e
 73aGmVw1dbwvKpGqWf39GD0nP3g72o4yPoSiE6RagBC50bEkYLUjIrEF7
 FScegFSpkjbWdTiY8ejpPuY88hCXecK5SFTRvrt0uEYluRMmlmUGG8rhW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m40iswYh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 07/15] ice: remove VF
 pointer reference in eswitch code
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 07/15] ice: remove VF pointer
> reference in eswitch code
> 
> Make eswitch code generic by removing VF pointer reference in functions.
> It is needed to support eswitch mode for other type of devices.
> 
> Previously queue id used for Rx was based on VF number. Use ::q_id saved in
> port representor instead.
> 
> After adding or removing port representor ::q_id value can change. It isn't
> good idea to iterate over representors list using this value.
> Use xa_find starting from the first one instead to get next port representor to
> remap.
> 
> The number of port representors has to be equal to ::num_rx/tx_q. Warn if it
> isn't true.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 39 ++++++++++----------
> drivers/net/ethernet/intel/ice/ice_eswitch.h |  5 ++-
>  drivers/net/ethernet/intel/ice/ice_repr.c    |  1 +
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  2 +-
>  4 files changed, 25 insertions(+), 22 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
