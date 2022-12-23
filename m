Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63179654BCE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Dec 2022 04:48:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBBAF418AB;
	Fri, 23 Dec 2022 03:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBBAF418AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671767330;
	bh=24x2McBQYydcQqs2xTYEfrVI/J4bFSgwrOJu7/TwbqU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WPvBmCUI9S18ujle/HleMFUM/9IciIsgZ+pj+WckXTlM2Eo9DCedI2ZCVQqXFMvfy
	 zXHHFLX+Ae9Z/PoTotViYG/aEwISa3IkqUIGXQjY4a8A4pHkCF5obyQd2o8ntnrWeS
	 /rFYkMHYxnYUDLna3cKOnHha4g9oLeK4KHJji/guflSaARsoHFbIZaf+ZIJyKf0DvB
	 dGj0r/0jfVSSPttErhLgFcmtkUQEaeJOWM7lh7+tflyqi4Ln3NV4H3FW1sGWpgVxr5
	 r8JmWLyftvPAftzU6Xl9M13STMAKCxoZkFGtxS9iY2mZe4IvaqTO2pwnzUak+/O+eM
	 wHNy3QnhEE11Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOCUMR6AovHj; Fri, 23 Dec 2022 03:48:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8258140241;
	Fri, 23 Dec 2022 03:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8258140241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6DC51BF909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 03:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 941FA41829
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 03:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 941FA41829
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IFvcltkQ0AZK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Dec 2022 03:48:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1C1E41813
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1C1E41813
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Dec 2022 03:48:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="322208761"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="322208761"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 19:48:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="682608771"
X-IronPort-AV: E=Sophos;i="5.96,267,1665471600"; d="scan'208";a="682608771"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 22 Dec 2022 19:48:36 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 19:48:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 22 Dec 2022 19:48:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 22 Dec 2022 19:48:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 22 Dec 2022 19:48:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fca3lmHBVJ3jKLHad2Iboht8ON6qi65n/hr2h5VwOqQeSgNoEIh9GA8dcicFcgAqmaOEVpI0qyqNDDvb2W2rJDFehv1smx+r65BdghrwwumsWIPKKkbHI9EurJjFUGm7Lk+BOMa8Q0I9Ns24OSR7Sg5+2voiatzUtNsm1aOuw30aRZAgi5B9ttCrg1AwOmM4Kih3qeOtzIKtARr3m8ImzQN9Azy0eDvLYHAGDq3t8ApG68FtVstMCPuIwJc6No9ACar0lsRgfJUkX5jASo9KtmO1rykSth1gub8OdpwgwQrdh9BJt+oHXCXplQCMOLKrcGZmtiJZAjKIvIbM5w0y+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZT4mN/7DfSIRr9FE2j3/mFnHN7aM+SZQn+bOoIHla8=;
 b=nj5XBZ8o+MbAK0U5vZVXId1sjkuTafwKwh90/TwNHfdhKDJVfgDKauGdv4HK7HWob8lAYbXsSgrNZkvvERZhMTJ7zp2xeBHg0SOrE7mniSVMeFukJc6NDv8y52QS77j9VFEyBzdBH49q9htSdFCxCgxt/qEeyosK7k/7HHZ9c5wDzr9DOJ6Y0egW6BZyM6Fhz6Re04W2ixTdauMO6cTzVbXl1fesH2CslK/VQZygDEgd0n4aAYDfZ+fue69229zecFq2wbYg6rs9XI+JFhBWiLmmq2lr2NoqgMcoAQkYkAuL5srcTZ3g6lMmXiHoNqa1rlfkaeNxV/ZWMsPyVHVwbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN0PR11MB6181.namprd11.prod.outlook.com (2603:10b6:208:3c7::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 03:48:34 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 03:48:34 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: add missing checks
 for PF vsi type
Thread-Index: AQHZD09afa1AfhyB10GwMlA+laczn6565BLA
Date: Fri, 23 Dec 2022 03:48:34 +0000
Message-ID: <BYAPR11MB3367FB19DCB9FE88F04D105BFCE99@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221214000131.3676447-1-jesse.brandeburg@intel.com>
In-Reply-To: <20221214000131.3676447-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MN0PR11MB6181:EE_
x-ms-office365-filtering-correlation-id: 0d3378f9-ba49-49d4-632e-08dae49890c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FMdplP4/B/C/eAt4jQ/kLPc19Zon6XMSxD4E0pEtjbqo/8VgBVcxOChaTJ8FtJ37HVYweVgc20IQDfiBY/FQQyHd2Ebd8UIs6yApoADFPSHOeWCLbTDgvUVW3X/x9c4RrWvZeiUA9nFJzjmTJdJP9Y7Mw1dRZulmO2YMiFfIwylWdRWhPyiL5Z1GUYhGcCMrv5w1I8wU45GFkBVgqHMKB87YU7g+Rn0AM1o7RJ10Er0X2YjZ8SybpI1TS7lpit2viIrxbnqdfVCFdi3GiMQfTIYzKpm4kzS9hNx7HshrNdmzokmQ0ZokHzJfSQ4bVMGITDEj+FnvY7Z3zTGbJ9NoyGr/xJTC/+yrfxmXe+nLMFeYeK9MVQ2GTN0HfIDg4utkXlP/609TIQooGKp/REhX0yCb2cT2kO0gEefXnG3jNHEqMVkd6HJ0mcSF0uqGrdZgRyvEXHssbpHUNrr4YMreCeafde0UEUDANfvAjkj8hHoNiOhQIgNCQAwCbV5NjS35vO4ZdqsZ/fj1OJybLLzQzDiNF5Xaj8DMRc/Ls+AXUYhkmXgwRi2Vl2kDEh7hhLtfjzwkyXvRMUwGkvrJV3ji04ChTYYuwiJQnIGxjl3DCP6WUug8fNcVAI+/0V+q1eoXuVhfss5134kGJQtxevr1ymP16Eai2T3UzDgNkzCm6+CN1tb/oMCao8wvePXEglCMGrdiyhZHE4grjrwhytzqLw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(396003)(376002)(366004)(451199015)(6506007)(2906002)(38070700005)(7696005)(55236004)(53546011)(82960400001)(316002)(478600001)(110136005)(38100700002)(8676002)(4326008)(66946007)(66446008)(66556008)(76116006)(86362001)(71200400001)(66476007)(64756008)(122000001)(83380400001)(52536014)(107886003)(4744005)(33656002)(8936002)(9686003)(55016003)(5660300002)(186003)(26005)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?u/EPY/KRhNSMJdKBy2KsRydMy55C8kKpE5tlJoe0aejTrA41CIMyEyVJqZ52?=
 =?us-ascii?Q?JBL/gE8bacMtUZJllKm1suB7q0Rt2xJ+cjylpaRtCXI0L169S/nOQqXGfJtz?=
 =?us-ascii?Q?atZP5tFBAPIaS4tJEiz/9GBX4vRuClQTE4f9AaNrEcHQfSbM+OoAsHEm6syf?=
 =?us-ascii?Q?019Sl25ed6eD7ne7yrTopfWkoFg1zlp1uRQrdn7csEVAIKuyfcwAsG8ojFg4?=
 =?us-ascii?Q?wrh/yzL4aH8cg71MHzJ6NxHjwDkPov3PED1sdLHk1MXKDYoYLJtF6kpHQJBY?=
 =?us-ascii?Q?qtSYAK9qhIqNCWkgPHDbE5GPx/DvMPnRD45irESULhXmIN1wGpHfca5idkig?=
 =?us-ascii?Q?lzW0ht5IIC0ukORjeW8TkJeEN8Zfm1o7FWPQp9rZXPeU0OfqUXkriZhSklUP?=
 =?us-ascii?Q?bouE7nQqBdf/dcoyWKhV+sXAKZg9VSwTXT25Uv3JdIFvta9xzgpTiEvFgmF0?=
 =?us-ascii?Q?lgu/uBC1ZHwNLE4i1Dl8hZoH77k1NRhlXTcrNrGbxDsiQzSHEbUP7uA3avNK?=
 =?us-ascii?Q?18gkif2nWDABwnffyW4ZW5m4IYLxPp+4OV6L+5G56r11FWnJb4WbFyTbunJX?=
 =?us-ascii?Q?ro39nd4PQK8b8q9/VdCqC44Z0RFzD+2grE+5Q426oXRzN4BQVGOcU7OGGETP?=
 =?us-ascii?Q?hB22RpUpz3IYhOCjKEExzY68X/X9z4L68NBvjbckHxsa5A2lTe+3A4lZCdO1?=
 =?us-ascii?Q?okia3T/Z9n/Qs1CUOfHi2bQObEaD75AcqcN5+PI7zg/1RJEuKnmn1M4aceN4?=
 =?us-ascii?Q?5cZhtQhl6vXXEuGpyxFc59Mj85WRU0k6Es/Etr2vp9p9detSwk7X3e9QAh+G?=
 =?us-ascii?Q?7elfl0hfhZ6Ox9PcZBsALusUugszaXd3790SVjMhtQT+zbG005Mz0uTGuVCy?=
 =?us-ascii?Q?LsqS9ZYbZFdpt+ifi63gnuJcfRetFBwXhiiry4VPwsZN/PpbxZQa5MnsaxEb?=
 =?us-ascii?Q?noaLLwsRX0YjKmdKRwUTaO1vi6LNH3FlU3ZQrbn22YIh/RK1hvN+YhMibnWl?=
 =?us-ascii?Q?GKII2LgMcxkznzylNDYgIEmSCsBWToNfqMm14i84XO6IDCRHYske4DNTrKHl?=
 =?us-ascii?Q?n+I9ecREZW7VA+r/fHSVKAgsZAKF+3c75QH9xXNJkpcpJe8PJ2xS3wXbnNpu?=
 =?us-ascii?Q?M7MmBULbGCeoKl/JJl4ti4auNg5pCL0LY/67IKcJxdmfv/MfA4gydP4aDKCf?=
 =?us-ascii?Q?m2kQBx7WV3p4qP0jmJYaxP2ZuHmJBlNDUpgDJuh981OXjdT9Kj2F80uAu3qw?=
 =?us-ascii?Q?Oeao7vjarB9V2I9aBnTTh+EpF0HlyZUSw15RSFdiQT8yK0Zp3JFAw1nLwnZP?=
 =?us-ascii?Q?P0jN303RzNbOvgcXI19b0KO5szOMnMFySicKdSRKaV5Q6vDZiDGo1skORzmN?=
 =?us-ascii?Q?L4ZOgI8jb0/89Xw9aUEjlvsXvUY6n5aDRZc4vDjhrBFxQh+aWSlVQ7ahRdDA?=
 =?us-ascii?Q?ieisrNrLQXl+zdLWiJJvcV2+DlnyxabY4KNAHQ6kHn9J8Kb1k6NPl90kG6EJ?=
 =?us-ascii?Q?zK22zsZ2IrQ66Oi4fXrBFNcqepuB24Ss71nhPcnU+b0GdYu0xehPhPEeyFlw?=
 =?us-ascii?Q?UDf9tvDnp/9CcLMcW1bpWCJWjqa35q2+rAaGv2XL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d3378f9-ba49-49d4-632e-08dae49890c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 03:48:34.0476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: naOHFMJjyilk/wsbOsUTMMkqaq4SYURfLgpkKP2BofbyU6YuoWw0boSIXXC15dVOiI5YXAnCvgf3MHhL9lbfrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6181
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671767318; x=1703303318;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0YNnLsmSeiv/dOkW1S833/dEPn9bQFVJMgca2ANfP10=;
 b=K/xQVxb6p8irFt+TCtuh2yZtso0+M2jTXNt4XLdg/GbRZLPbQdVyHSHl
 SzIYTO7pyk6JMlIJJ6+T34LC4xEZjga0yU7zxfh2xRiyvOfSlYuzXBk09
 GPVCoe94VjIRGszvk+E2PXKsMCyinijonhaCaFjhVlBt9paAfTEwKNQQc
 DH4QdXIjqmOY1AhyhcTZ4KMYw57QcwByOI61Q03Ynop74qaJY9EGOYn/k
 Jmk7bkAudu8WRwYq0ID7hfmVbuSMdgM/jfHhoqw+vCpxarP6KbqPBgWvu
 J/FpFI4wzc+Z8SNLyzUYYTcI4RrNfPiS/c4DzBiHQqu4lJY++xDz3FTNB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K/xQVxb6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: add missing checks
 for PF vsi type
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
Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Wednesday, December 14, 2022 5:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] ice: add missing checks for PF
> vsi type
> 
> There were a few places we had missed checking the VSI type to make sure
> it was definitely a PF VSI, before calling setup functions intended only for the
> PF VSI.
> 
> This doesn't fix any explicit bugs but cleans up the code in a few places and
> removes one explicit != vsi->type check that can be superseded by this code
> (it's a super set)
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
