Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B530A77F00D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 07:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A2E783BDA;
	Thu, 17 Aug 2023 05:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A2E783BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692249046;
	bh=yvgSnPE9L8RyhCaK6BC7IHYH9P3ceyJ0NP3KlMghpOs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LatJZR9a4vu/YRqVHHD+PkvvpgqRZo1Hg7KmCA6BCgwAeMKz7yJOIsPMj88JHO4dW
	 URhSIN5FQqNscPHCkFBSYsvZfB7S06yBDz+VeD4WDO2aSVC2FM4U7CymHJVOOY2PFH
	 h3yQT38teW22IBxA4EjIqYK8gDD4LTuN0hLumBQogVWdLUuzfZ6+MQKRui1c3KgQDO
	 nZk8DHnSecjhQ+SCYaKAeeQuaubIzO3Oo6z6Oz3Y5gnnvrxlGjHiYfurIjsUbLKJGC
	 UGFX6VC0gvbvS9AWi8FT5RjkacYYdALOiBARR3qtfnOK1C/jC6TQFevKGeJx4r32Qp
	 /Pb7WSVENi0BQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBDbpwcSZ3gA; Thu, 17 Aug 2023 05:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C403F83BAA;
	Thu, 17 Aug 2023 05:10:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C403F83BAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0721BF419
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 05:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B93A83BAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 05:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B93A83BAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1T9m0eQQn8xM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 05:10:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4EB783BAA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 05:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4EB783BAA
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376449761"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="376449761"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 22:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769475283"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="769475283"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 16 Aug 2023 22:10:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 22:10:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 22:10:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 22:10:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 22:10:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRLJ8cx/MF3aly7OU1SyNBVGTNWIAKCxr9XbWcdMXcANpnxn+9GV+f+qBcpki1pdIwEbQgUqzBJ6r61nne3fZtsbSuFxJK+ost7EaTaoKNK8XIrODBXx6GS5kcN1/W0Bj1S5kPXPmiOkf0PFgcMRE0PoOGXk/J0R3cOMFJW/A8nafp4ZmInj9LsFTKSXsFu9wwWqVe7lyOxbwKYjxRlbtXIty3+iaY7riCczIOLCRqSIWFqG8//1ptCTrxu+bjK88ZC3vLDQJiSNRqGJ60DGcuhaC4/QrorU2jgSCN2pc8iCOdnbdllMywp1pdPMw3ICL8w3K6HqCKcvaPjU2wbp+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t3Z9a0/hrG0Mc6rpnoFsUNjzv2xtQ9szXmLJ2HAniDY=;
 b=ZSgyGzCM230c2od6VIS2gOWs5Kj9uRkk9R135ruTgKzPsgyLoxrg2BeJGp4WqT7jwDE+3SFBqEYP0LbQUO9aG+TJ4Mrwx2I1DXnGc8OoCwZxV2+Kdx7urrRXGYEzD2306qXDtJRnlOU1LL52lT95sAKXpv9qo1o9j8N3vR+cUtBGNAcbuTDJz+4Dj585nrdJTsiRUO3knVxsD0bC534MvCph2DOzXRE5KfBnliYIHzo8eFJLjIpYweL415uO5ulwnaxQ+9b6Cw4XMriFZ1YsqtJJyBwKJqZ9YspXmUKa4obdFwHRw+yI9s8+7+H/svvoiWCc9RM1QxBRDDO3K47r7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by MW3PR11MB4569.namprd11.prod.outlook.com (2603:10b6:303:54::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Thu, 17 Aug
 2023 05:10:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6678.029; Thu, 17 Aug 2023
 05:10:26 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix receive buffer
 size miscalculation
Thread-Index: AQHZy+Wqr66GwcAVaUOC2ZJFFDTmA6/t+e6Q
Date: Thu, 17 Aug 2023 05:10:25 +0000
Message-ID: <BL0PR11MB3122F337E59741C09009166BBD1AA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230810235110.440553-1-jesse.brandeburg@intel.com>
In-Reply-To: <20230810235110.440553-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|MW3PR11MB4569:EE_
x-ms-office365-filtering-correlation-id: 4da7fc0e-352b-4bf6-0661-08db9ee0445e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vfnghIWHdTgHdz7bLAUR8/OrKN0Xcx78BPr2kp2ZzLIYJEnEneKS+wTvJyyW5cF4WUJF5tFR1nvLiC+dhYzYdxnETgG+/7ftw6kXmha0FsDkpqWVmdrrDTTvaURgCFP1MkDN1SdoMClG6sLbi1aaSB8sWqEdqjftR3HcobBbzNBxEqLRo8Er3ILVjRg2mAuIOypwyVGZqwEjDFYsePUBv7wAHi7CLvLD/VZs0qKSDqV0ZuAyZKynUsgJHFADq13CWryRMuFT5Oo3OISJEB4GVV/g8yYuuQftRu1cer0cEHF1aEqdX4LHg3Li/W8U4iZJODeEsmH9Ci8SbBk8JTAICDfDrTtR7IMkZLGvMeORw8ZtgQT36Li+ut42VwP6iHneaPJNL1ZNV+eJZvwA/GT4fOSdimUcwo/7Pf4uCJlt6rupVveCxb72AcnZrRPTC3T5FtGhgwN2Qfl3s6ZZXE1JggIiADQQvgN9V+qgOuqSHVRic+aOwCL1RElmg6HbJ/a6N/hQSqC9lpJeNwr7bj80MXlh+vw3GZ8qV8eL2i9NPcUKztTwtpBoGDPWKGWy+D0b4uO2paR9nsyi/1+UXWxYh/W7gu71TuDDPMOxc2+fxTfZ/HfmxbjyVq6XhjJbYqdO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(376002)(366004)(136003)(1800799009)(451199024)(186009)(316002)(110136005)(54906003)(66946007)(66556008)(64756008)(76116006)(66476007)(66446008)(122000001)(5660300002)(41300700001)(52536014)(38100700002)(38070700005)(4326008)(8936002)(8676002)(82960400001)(26005)(2906002)(83380400001)(55016003)(478600001)(86362001)(53546011)(9686003)(33656002)(107886003)(7696005)(6506007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mXk0m6FZYHNsJ399caviieR71A7xC3xZeve2IlXfEcem/YixVnr76nsk8nHO?=
 =?us-ascii?Q?A7irl93a+PuRcAqN7kgeVy+GvHmZaAHlkeaRgg8oWC4+G5trn3lRdR3Cr5PU?=
 =?us-ascii?Q?5elRJeLsHt9hzfc5k7LceXxiyVGD+ns7/cFUa6BpfcKZYf3IEcOvCR98Ba0q?=
 =?us-ascii?Q?5lPnXKPFxosAYLZ3M91P1ln2KTfWR0Ck0zcTsFr9W8CfkQu8jdknHQhGhltE?=
 =?us-ascii?Q?Q7+LIvZHatRZh49mh/3J7J5fkpp87BGlmwipPoiLussu11k36Kht/+pQDtCX?=
 =?us-ascii?Q?Lx6IspjDIpCEKSoipoSopAtS+u1aaszLDRLVkj7Ga0KqzJFox3k1nxHCo0uk?=
 =?us-ascii?Q?RzfqDmnQxw7Jruk3gne5c1wkMDin8yCUQoL6PE9ia1twjBPRdoHVCgR4jihq?=
 =?us-ascii?Q?TR1ZpctoReA3iccmMyW3Y0r2AztqQaD0U8KyNCr4mxMdWx7mGPW9HYvozoMl?=
 =?us-ascii?Q?TrkSKj6YSJTqkaVPdsOvCfu6KPTCmkTyNDTTZV7sgjNH3OONNoWBFa58+fO2?=
 =?us-ascii?Q?EywGTrQB60ZdsESaUFS09E4IfjXUT3cZbN/DtsSQzqA774CpkweYbMQJHoju?=
 =?us-ascii?Q?845aJT0BMOvUvJHLa/Pruk3nnxHmprhVXABJKYSiDzsm3Jz26iBKjcCNhFPQ?=
 =?us-ascii?Q?mKdU1YgjX1NPUyyiU45JP1zhlDaLl+G5uH/jZ02nEtyn0y+SoZKbjfswEKIm?=
 =?us-ascii?Q?VVFjniRXtAdEnCN8jIDTUMk8l7trzj654r1fRwDrCWfoIV5DOu0Cj2CPTACn?=
 =?us-ascii?Q?duHXa+5drzCJnDRfq35R+1IeS6Hj9Nm+WcgGgq7/WqjZjOnNWbSL4gcWUnh8?=
 =?us-ascii?Q?xSAM8BioUh1U8ruTs3DJGFTJRyis48urJuZYlUoYXvLQFjsMExvoMIaihPY2?=
 =?us-ascii?Q?mi7TdcAF4o7WYu+1aj7HWMVBV/HiWNsMEGan2fzORWwpxqc+wntg1rN4MVIL?=
 =?us-ascii?Q?MBKbpdKlwsGIjL/+Va0xAHVB4YDQaBQSulU2iDjAo3OVHv+daARXgw2qrbiO?=
 =?us-ascii?Q?X2Blc74Ts8uhckhQpSmP/cTxssba8mk/VzC6Fgu+DXfJEGWHCZhqGIF9e9qM?=
 =?us-ascii?Q?i0MJLKF0+MH9xbiNJvfNTDvaGGpXrXyLIfY1A4zJE3V1SojNeeQquBnGE9Ae?=
 =?us-ascii?Q?UTOYuZ5YsLDtIL5kRTwkuPVi2Ix3pGk5gvyLdtyaAvMaz1kaTAnO9cV7AD7V?=
 =?us-ascii?Q?1BKZRM/OxrAOn6otMerw6ZdchgGvjxiOFO/q18WDyP522b6TVn7cgBwKdt40?=
 =?us-ascii?Q?F8FrP2KFRZ24t3b64/Lu2G1Jkv7GwpS5DWBep5Bx4X8JEajDwg5YqPzu6cvj?=
 =?us-ascii?Q?bKpbgzGTd1sdiUc2iKGfzxXLjE4C64YA+iGxz28uDc1tfmN0EmDZUu7CV9Vo?=
 =?us-ascii?Q?XoPI1OgkOKdohhG98IlE5NTPxZ3HeFBIj4f6Mncg60AdM5HJz0r39JIm+Rno?=
 =?us-ascii?Q?T7evMSaBdFYHiqkseZ3Gj7fg4iwbpd3HdjXHXnMiu45VdAxf86qtB/Ufyx2V?=
 =?us-ascii?Q?WzpgD7rUhwRYgGOqGHJ4BYjiRSfkJqXGvIcEI3FJV9gB4eViFMWaEvL89y4+?=
 =?us-ascii?Q?a3gBaU/oo7ZBTHAqBOf5C5FIQKll1+IaC/raWaLbqT8mguXKEfZy7Pwrl6vr?=
 =?us-ascii?Q?VQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4da7fc0e-352b-4bf6-0661-08db9ee0445e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 05:10:25.9694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gCHI8fvtgTDaxCw8F/li/Q2Z5VR70tRU1c2pMpVfUvr9LfUzzgsOQgWDZzH7JFvljuG6TDEi/5xUmdXaRxTKQgnCnimhTuRAafNZoRkgfuKfE83lWQDYXzw7QXnc7+ru
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4569
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692249036; x=1723785036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=s8ic87QOokGeM9uxk7i4XNNiKZjOffu90+9Cn5D8MXM=;
 b=C4HO5qB/jm5yTdw9GDfaecpWO3oomEju2wD9KQioiyTT48buojDyBuP3
 3fYndLMrDgX2V+3VSVlT9CA4+Xx0ob0hOkJqPOWUR7QjUf+nnk1jbXvJ5
 EbLaukApObHo2O67mdN43OtO/UlM8pRYRCa+I4/RgDfZBiWrxINPHoRus
 zcHiZ0sj6FwNw5egnLqdlR4+9dystudGbepUKhT7HCCvG0FPOi2AF5M1r
 PpeRx5FgY104I47nQKN3Dfk8JjHxib69SmRd8EX/mgAUf6yQ7CIMYkJ+7
 yXzVyWNsMVg4b4h12OblKre172V4+hZm8eeDtzW7X7fCFwz3C+gi5/3Xt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C4HO5qB/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix receive buffer
 size miscalculation
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Friday, August 11, 2023 5:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix receive buffer size miscalculation
>
> The driver is misconfiguring the hardware for some values of MTU such that it could use multiple descriptors to receive a packet when it could have simply used one.
>
> Change the driver to use a round-up instead of the result of a shift, as the shift can truncate the lower bits of the size, and result in the problem noted above. It also aligns this driver with similar code in i40e.
> 
> The insidiousness of this problem is that everything works with the wrong size, it's just not working as well as it could, as some MTU sizes end up using two or more descriptors, and there is no way to tell that is happening without looking at ice_trace or a bus analyzer.
>
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: added fixes tag pointing to the last time this line was modified in
> v5.5 instead of pointing back to the introduction of the driver.
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
