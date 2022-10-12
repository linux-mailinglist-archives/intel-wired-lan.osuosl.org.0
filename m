Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E635FC69B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Oct 2022 15:38:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5712961046;
	Wed, 12 Oct 2022 13:38:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5712961046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665581901;
	bh=9WfTurztqikpd1FPrO8Vy1Sk3NvpCOYgiccRpoINJQk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TwugIcCnP49takN1zrTvpHnWREvSjsAFdvZyRmAOJ2SPLVgROijciZNdzMgIMrdBZ
	 mTZjSt3Xn5TR9WItNc3iOM3lboE69fKvyk1PX39jgczJmfz8kcPbkVDaaFf6kt+Tz+
	 bvDus7tLrtPVx4RnVG6WSgAdQWiESvDpovilNTkC5tQqSZHk4cdu+DRULmp3+9EdR8
	 HZbilRoF1y/5TzmewlU8fhwoxKHl+eaJfT056NEALhSid4Ivc3s72Y87NhtLWntrK/
	 MDaZUCXfQBYh7q8WIlHrqvmDakXxp66CWR99sOtCk5cptRwOPmhCW4S1C+wjr1L/bO
	 q8GCVZZls+w3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fWTkOK7ldqoS; Wed, 12 Oct 2022 13:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32185605EC;
	Wed, 12 Oct 2022 13:38:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32185605EC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2E001BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 13:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B8BC40086
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 13:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B8BC40086
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4N7e3rjHGBy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Oct 2022 13:38:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8646940062
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8646940062
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Oct 2022 13:38:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="303532855"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="303532855"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 06:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577830685"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="577830685"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 12 Oct 2022 06:38:13 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 06:38:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 06:38:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 12 Oct 2022 06:38:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 12 Oct 2022 06:38:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wke+oejeJ4o7sj2Hr9ffCd3W3AFzAIG6P/oC9Z8LVR7L5XphebQrv793vGTLKfT5ZMim/Km9KQOnRJhssYACNx9YlZSlgodGUOU9xpTPruIkYQz3w96KahkoJ7vME9mksCkAw3NojIVybH62QK8VZb4muwOKbB4W52PFKdocaOO/M9I/4Wj+D0BW5SPLlfeH38qf6qj7dZZsopV9q00wMZWrc2ITh1nXU+Bn/sxmVqIEWPuT3jeDfAHAsymWhVWD0k+XHSLIkt+QI6l0yMgczFUuaBK/xsqKsc/G9crgRWgXT8d2CGJP8afImivzEVVNRYYgIrdWyFWFq/kN98WaKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UqDd76BxRNSXzUq/RAgKA1AU4lMhh+xFHSblTVy+uUc=;
 b=R9fPCkprBAJ06qtA0f/tQni7ebi0eKsF05GyoP7NVYukfWHTKqdZiPmQH5CRgAlg3djXl8PtyGt5IVi2xPxX75GnnnXJ+YvDt7okV/nWtMZW85pNMBGE78CahQbnoPB3/NYN2a6sAiDEZZU3JjauWCLcLqfED7BGGeI3mEMtxceqZ31uiPrBuTDQOAsFAvsyz/7URWzfDWJLObzkWDF/aSienYuVYdj5j1VUdBv2JlKTpXzECS/8TYeMShluE5aajib+BrAC2CnARyPpVRB8+fDgVET1BqVfIuIRmeG0Mp6ddx3GbL/aZidcabetXHMMYqTEwS5bDyBqeaf3KsRv6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Wed, 12 Oct
 2022 13:38:11 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d715:691b:4bde:7ead%6]) with mapi id 15.20.5709.022; Wed, 12 Oct 2022
 13:38:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v2 2/2] ice: Accumulate ring
 statistics over reset
Thread-Index: AQHY3OGvCkinHZnnTUWAezX9/U1Uv64Kxcwg
Date: Wed, 12 Oct 2022 13:38:10 +0000
Message-ID: <BYAPR11MB336788A1D41F50742CBCAE98FC229@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221010192223.916578-1-benjamin.mikailenko@intel.com>
 <20221010192223.916578-3-benjamin.mikailenko@intel.com>
In-Reply-To: <20221010192223.916578-3-benjamin.mikailenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SA2PR11MB5162:EE_
x-ms-office365-filtering-correlation-id: a112ae6b-b26d-44ec-5ad2-08daac57013c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jNah8JuSlx/w75yYYeFOM41KB0Kms1RhDimqf0ObRSPEss+1onA+4eOWf98wD5TdcuQf5w1jSa1TVS1uiy8Q+J480Hq95WsIxspQoGYbdsfGUPkeFlTxMQ6BLAsnIeX15aE266uS68yqRFo/nm+aUju/ZOsEUlpBLZjmnyZ5uBqJHvNPiMY0k3sTIK9eBTSJC7M5909tyYH5XcdZWJmQrf+miSn3JMwFng+mNTSmae7I3UbqTZp5mQ4Gk6AtC60PI0Ijp+FxZ3D/8HfQ1xjI3tL3PMBdRDqn0AkG9CLdE6kJW2StsnIqt1vqHANHfdMZpZIw9fF3ptS4Sm+pPBJ7NYo5qbJn7uNNyrTQF4JWtcWYpsgr2jsi8yXdvUod1igl3hpm1/Ze0QUTO2oDr0RQrk/44KCgUozhfEKWCpQHzUHwYq8Q9QJbG4wjlSmddDqeAPP5XzpkUZJnukbbNzcda+gHQUESAL5WZxRJfTFhPyVRHkFTe7Krmb4xnX6mm50JW0Ocrs7kXE7m6dbmH5alTeCp6fdvGVVOXO95y+Zm0rnLt6AxN11NMaPDyJOsoNZiKA6xk2tdTSW+Hg979AMvaBoPWpGjm8O6y3mQKy6freUh1FSWQ6xkXm65s8GlnxNj0sjdPj6ykbMe3gm1gfeL1+nSMed2v0NJ3QL317iEy9XsvbrdnTSmux3VjSUI3tpLkcAuFmrO6RBeMIggEui53VjTf/pEZku6wJ0KfmvoenVy/gMuk2qwREwGsyZO8I+4iTmggAe70P6rmesQ1jF9uA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199015)(38070700005)(82960400001)(33656002)(55016003)(86362001)(38100700002)(6506007)(41300700001)(53546011)(107886003)(4326008)(26005)(7696005)(5660300002)(52536014)(8936002)(110136005)(9686003)(8676002)(71200400001)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(316002)(122000001)(478600001)(2906002)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N0eLsaioDYA2UGtyXlJ8DAGqX+RVF7uXhM6MtMPOoe4F3z8DJ99TmezYEh7X?=
 =?us-ascii?Q?tBAZZN1VffswivrRv2UOCJhknfGocOeMkmieX/1kqwMquMcOOU8V0ICTMeA4?=
 =?us-ascii?Q?4iDGXL919REGWnDUm+k01HDYb4ElJINsNZUD1rYPhmdCM107u8lLEvXa5dxW?=
 =?us-ascii?Q?e7Jd0qR2BWdPkh5Ja2hnkf6OKiZ8hW8rZx1OdacIv13DnfgUddHADgxWB6Yx?=
 =?us-ascii?Q?KCx9+0fzSpOhDCBJ8QNgv/4Sd9Af38LA5JUKOXVDarKrOjATQnr6a4slZAmE?=
 =?us-ascii?Q?+/jN4EWLAld4EUs8Caokp0HcP6b7Zil6Vt6W+eo8hcwpP+Ycu1UW/DA3b2FC?=
 =?us-ascii?Q?GOxogACrDdlw9VrzOQDkoicBKzxyFDtDjs1vIojpHrCMfDbf0GshpFSfyGBX?=
 =?us-ascii?Q?f1+rakkhfELo7kQ6uNjYwRPf9JUDqeNPBIU7Cq9iUAJKJe94Xiouw0L0IYkm?=
 =?us-ascii?Q?mJKpdfY3YxtV0k8euRfJfsnU7uwV4BCpna5KLprfJs1vvIIiPyEinNLtRX/0?=
 =?us-ascii?Q?B7J95P+sHWjHpw6eSNOJdRujk9MJt3VTZH5lS2jpjdLC8GjQc9TlwM1c2ovl?=
 =?us-ascii?Q?fiYUuGLju4elaDg270Vkwdp6WXBtsUpFA9XFpFzWqzTVb/mtva093l8W8k4R?=
 =?us-ascii?Q?pkT9cMt4fPftJ+2gE2yFO5lJM8f447o542G3rz4E9xX55Zd/mRTml7v2C/N2?=
 =?us-ascii?Q?+jdKeTcoMqcHcSwnAkgBYXTJP2n+2aJiI0UEpnYZgDqQtdD2m0R2HhADPAux?=
 =?us-ascii?Q?+JBjsbSfTXSdgZHntSFHAzBnhWlVDjPTv4if6NuFeaMBjopkykRrl/iHfbHv?=
 =?us-ascii?Q?y46hcJQPaGIc2ZVwLnhSF6zwzcS7elFnU7mBV3zuC68WyYGISFtQ661MPG+o?=
 =?us-ascii?Q?2VIB7XHWfY7n/xLWtIXICu8hn7vJzeF9aHQRzn21FDPETeYTp5sdnwQMxKYc?=
 =?us-ascii?Q?34pTbJYhHf68rrUSQpEFCveb6KcKugEc00/okWZdFXTPVO8KX9mg8Blt951/?=
 =?us-ascii?Q?t0W/lOR9A9M16lo6CcZtbpnye5B4Zv0O4x10eGgMpygcpIZa/lM1biFLbyB+?=
 =?us-ascii?Q?ZBUR7wsdbeXg6bZpNhMSIZ0k7Ph9DVbDGlzQcw/wJf9KF2cjv5pUjhQIWfV4?=
 =?us-ascii?Q?hd/AOrTjwEa9TEhvIFv9kAtapBqp0moEeKN86UXLneiQySQIA8E+km2hI6gF?=
 =?us-ascii?Q?KmwseAU5Cxu8NAwI0brLDqZUidtKC5oStadXus9Pi1GYNBuTIL8kI9O/+evW?=
 =?us-ascii?Q?0Q6PPEVY/BWRAne1Udo4ejuE/WAtJ5TC5Emtrt+yELmSaRx47hS6SvD5Kkh/?=
 =?us-ascii?Q?DaiVkNo+wyTCOhpI4vbs+i5mTxyMErcKoIrJJSu+2ZxWYbrm6oczS9DgNsIP?=
 =?us-ascii?Q?w+fbYm027UpIJun2vFZsxNwJTDIygEuj3MBa/OHwJu+phVS9v2hgjpAcAnSb?=
 =?us-ascii?Q?FjGwMf491a1hXOkwm+JSCIY1poD2uAwNjx6/9P7qByDun/eJl2QlIPIo4udg?=
 =?us-ascii?Q?epI94zbp/tX0EOR+oadG5hgN/HrExJK3vs10QsDgW/Kj0cQHTUxEeSZuA3LY?=
 =?us-ascii?Q?lwKtVEreXX0H9Yo1o5aD9OsjZ3QtdXKCxWsDlkBJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a112ae6b-b26d-44ec-5ad2-08daac57013c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2022 13:38:10.9055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 609v6PerDhiUXaPelpFTEpJ28ami9mTVoLw+LMFDKYFMLNidY4huIR8nML0iY15rePSWevU2ByzhEqVw7/5vHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665581894; x=1697117894;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QocLXFbktGpnbSyh9jOtH4cIB623EW4Oyu3fUXxa+q8=;
 b=OO6ZnePQy7KeX95l+jBU43zMWFty1/gaDPVavHsY9WtcK4FU096t1+kJ
 ZvVVXCOg/dzP02ZWOi62f72b/mqQ8hawYtGMOqo4kfchyKqmlFYcrSt1N
 K/O1bLuahn4B+ostL7lK+9w3fVkS9ENr28R6m5JPrXrGvIA9HDpDbeLR4
 llnvYfniZ3AQ08UBd41ts8hD6cqK81HzPZpKHddTgNdtLeStpgZoaHKwn
 ajDElXMwwXprWRCU7mJTQDhZNENkm5rK58P1sQ3S4P/cW5gPrhXmA/S79
 5SP6j6snB/nWTo6q2LpY914V8eOxJ1BtWYMfjUJlAk3+rjVelsCRoAlF9
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OO6ZnePQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v2 2/2] ice: Accumulate ring statistics over reset
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: Tuesday, October 11, 2022 12:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [net-next, v2 2/2] ice: Accumulate ring statistics
> over reset
> 
> Resets may occur with or without user interaction. For example, a TX hang or
> reconfiguration of parameters will result in a reset. During reset, the VSI is
> freed, freeing any statistics structures inside as well. This would create an
> issue for the user where a reset happens in the background, statistics set to
> zero, and the user checks ring statistics expecting them to be populated.
> 
> To ensure this doesn't happen, accumulate ring statistics over reset.
> 
> Define a new ring statistics structure, ice_ring_stats. The new structure lives
> in the VSI's parent, preserving ring statistics when VSI is freed.
> 
> 1. Define a new structure vsi_ring_stats in the PF scope 2. Allocate/free stats
> only during probe, unload, or change in ring size 3. Replace previous ring
> statistics functionality with new structure
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 256 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  48 +++-
>  drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
>  9 files changed, 359 insertions(+), 58 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
