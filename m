Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2312D76508D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 12:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6DDD4048D;
	Thu, 27 Jul 2023 10:07:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6DDD4048D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690452479;
	bh=v2QcUcwAlXWv0rzSIWzYD0DwSAm7390gKS5G+dk9At0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T7HxYtl0xoxbA5AKeQw86kqMS5oytgNo75EnEnaTtky1xHmBj+Xq5vWSkFHZ9o5fZ
	 bticZJrGcoVsJhulH6PNXfMTgduVLUuQy7+hWs8GY4niSlqN4KMW3uNjnjXyXI6ZAD
	 Lpng5NT6/MYP4ukuxmUIDB31ATBY3Xh5SevMlDnwdrj69cnZQVB2FllDZUT0EXxyoJ
	 18BBIbERgMvUe+TgbiJc2QQRG8wHjn+26laLxNiJmAGx9lUZpnL7+A80wy9UL2EmyP
	 EwczVUi5b2/132W0RZD/7a9Onp+TnlXZ08k3QfmraoA3TgkmFJBsZCXW/QzEuVtG4b
	 eS7XbxfA0qM5Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dUnWaqHZoOpp; Thu, 27 Jul 2023 10:07:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 836F0402A7;
	Thu, 27 Jul 2023 10:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 836F0402A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8BC91BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 10:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DA1F82F3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 10:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DA1F82F3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0jU_rDVtk8u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 10:07:48 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Jul 2023 10:07:48 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C50380C81
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C50380C81
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 10:07:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="347879166"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="347879166"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 03:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="762110732"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="762110732"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 27 Jul 2023 03:00:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 03:00:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 03:00:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 03:00:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 03:00:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jr6xRQReECwHq3gw3V0z/jM59vNREEgQSacVWndY/ozyYjFVId0aMTCtiTZzrLhjSbxQ1zatLLVLMcZaJb0dWeO8dTUeubn10/Yaco8P9Rm6UzzVUTcufRpLnQsayFcK3s1a/Hm0hrEXQP2Ap2zJVf4ukl1N9/5uhCGnYf5DsztB726o4j12vq+S/n2VxZkrHGmgYgQEJCXs7BVW5ZvDaxqopl+wQYcPNqA+XGCBizTRQ3GKoRu606oadBU4pbMeRaBBDiaXXgettm3/7NFsAKKRdp8+DyUuoH5vxIRzDM7J+kkB6Q7mtRozSzcrBscsEOnxf8K8SheaioaPUysD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3dReazszCAewtC532PRwjn1bdg4zssac6Hg8yo2zfqE=;
 b=Zhhi0mITb/c9Co3k+saiOUkdHl7rliXU/8Sxqh7wG5NIdb6rB9z88JLFEvH2kjc+Avyl0w6nTdFaEiDJKji0CyKhqjh2kV7rI80Q6Q4HnkjbBDiQXjE62+4yHcIF8c4PP9u8llC5/LQqnujNPt++UjL2OZvJUWs5+LqH1MWE5ziprRm5Ngb7zXnPGO3d9RvvLgl42xDMyDGxipGQFgIRz1rRj/kcfQMLwTIJAWSSRTyw9GMqJeQcgRXyL10BHqPnHztkDwTKBTxelk3IPf6QfutaF4vUMpvV9vsV3e7TPw41ml+UpAXqJ1Pahek/U+jMEJSFZiPG5qACWrEnInVSfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by DS0PR11MB8764.namprd11.prod.outlook.com (2603:10b6:8:192::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 10:00:17 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::c477:5ec7:d71:6d87]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::c477:5ec7:d71:6d87%3]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 10:00:17 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix RDMA VSI removal
 during queue rebuild
Thread-Index: AQHZrZHjyrNAuGcHzUuWQ/VUEK9sW6/Ngl/Q
Date: Thu, 27 Jul 2023 10:00:17 +0000
Message-ID: <MN2PR11MB3614DE0580C3B19A1C81781B8E01A@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20230703093546.74984-1-kamil.maziarz@intel.com>
In-Reply-To: <20230703093546.74984-1-kamil.maziarz@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|DS0PR11MB8764:EE_
x-ms-office365-filtering-correlation-id: 0ecee95d-f612-4083-7671-08db8e8847e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rtwKKNB8hN58PwxdjHoaki25RVhN4yMo3trb4JT1NYG1wyAC6sXFs/E1TrN50kA6obsDN9C2AiK7SB3vtYyXAdEclGv7HTgISVvLQcXh5oc5BVguhdLp/sTvv0x31EyIwKU2/9lKAYLoO0MhmomaHHY6a1aYDZtjH4f/eLIBSn6RHkHoaRIhMWokIHEJaXrffo/4NQiwCUjI5yAZsudiyYZIQ4fkipv2m/8gAwdj9Y0ieZ3+rKUjNGitc3Ag8NNInyA19c2mr7w911fiwS0WDcoyye+p2oHIEfPCWtofT7O5+hjsniSFpxfsY525bcPzw1nl7n6CsG/UVS6p/tX44mA46KmfxXG9SIZiVfMdtHsiBslRb/FHgXPjbnbjug6xNXy8E+mKVRROVXg6PvOVWsgO+tR2rJ6KCIWFOckTblROcqCCCk68WjvtqMyD4RqFnTdG5BPhSAEvh8troVFG5iMvKF/7dZ7uZkwlLSKtBAYwhSsSu9eER0gy90TJnJ+YsVsXR3GpP/owUP/PG693Mg1+6Dh9vX4g1eL4kD41WnuKEuH3D2+7/21Qeqbq/BABeeE92s7sM1jH6tGoRGLE6yaejnEMeZCsbH5trfRCjaOqHA0Ncrjar42hV6dw+8E9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(39860400002)(136003)(396003)(376002)(451199021)(76116006)(66446008)(64756008)(66556008)(66476007)(122000001)(478600001)(38100700002)(55016003)(82960400001)(6916009)(9686003)(71200400001)(7696005)(8936002)(5660300002)(8676002)(33656002)(2906002)(86362001)(53546011)(6506007)(26005)(66946007)(38070700005)(4744005)(186003)(52536014)(316002)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SrhCoxoiidv3QamT/G+52SMW/F8+fxJhAVpokntMaA5bM9tm8qz3E4BdK3CZ?=
 =?us-ascii?Q?zsRTep5x/TE8QbYGSS0ZNHQux78XQmPOzN06SLmpo5jkZUVIc1CLKd2WHThh?=
 =?us-ascii?Q?YKV20WPCIs8HJO2my7txOCZC5J5q+74nKP2UH0LakzFfJtFzyXlcnbrJxmuU?=
 =?us-ascii?Q?DfnQJzf4u5oTaDiVdGqPAxbclR9uxCk118dUdvM1l7pxQ/xKkq437DjWLRlx?=
 =?us-ascii?Q?jywxXABPG+Vb8lcCawVjBkgH5xl2i63HxBuL/XZ83TDEHyP45As0qThZMJkI?=
 =?us-ascii?Q?Wptj96GFamIWgVXfb82u7eL9d6sxWAlpASq9x0nCo/YotF0EQnTYNWfOsdN1?=
 =?us-ascii?Q?c599i6FYVoIYGaEA9N/hnI1+XN5WVabyA/8874uYTNhSPEjYrybhwFr6ZDFm?=
 =?us-ascii?Q?L1rSBO2bQO+bKS73B59LGXKkZo86LXg/gmRZtHECd0sQyyp0kCn7AKHnzNud?=
 =?us-ascii?Q?NtSZJ7hZpy+AJOoLPnvWR+h8uKi9WZ9iJJE3vo6envPLnNLLOipPuXFya3x8?=
 =?us-ascii?Q?fS//gkBBHD278NiJhnsw+xEc/zjFDyeBBTwcm4dA5assPKtdLXGQRkuxq767?=
 =?us-ascii?Q?eFbRMCBjmQ3ZrS+MDRiihiTWdm4m0ayNngWLBbR73ObnZEcDAS5VAmgh2j5i?=
 =?us-ascii?Q?bkeJP2+QsC7My2brR6lEaS9VgBduBtQOoH6g68HqbOkxs4P8mQH9+46B13rp?=
 =?us-ascii?Q?J63Pst21mwU4pySeDqPyD/zkqAc5pgKOUUAukX/mc7gZZgyJ37Im6yQnc6ts?=
 =?us-ascii?Q?OzEJeTSuHFxT6sdhHd+yYQt9CpyjCRB9udq5sQegUBa4nc/Ff2T/X2bs2qnv?=
 =?us-ascii?Q?7G+Mff6K3632L9H+Ruaqoy8pBIGTeqjV+kTLqbNT3ifNaDXgL80IOonNEw7V?=
 =?us-ascii?Q?lbj4yCv9RRztW6HXRhA/jNvQJCi6L7YfbAUhkSKd2IqqmKpJwxnCsDUrdUFU?=
 =?us-ascii?Q?igpypbBC6GqyPHcuakl6ndhoyOpSIjJVWo6+5oV080Wcu2pkNBBh1e+lJbXf?=
 =?us-ascii?Q?51JES+T0pplqGirUyzzbnKfLdaAtdl3CH5Gzj1i3Qp/ECY4Quf8vJo/8V+ux?=
 =?us-ascii?Q?9LA0TYQYpGr5udgeZcCJkS+/OFUgKPigepFGikzAw4IGZYyAertigAaZ1LDW?=
 =?us-ascii?Q?hafZmos0w73L19yamRkVUVoeAZF5Y6+4/a3beeqDQcowkjy28SIkEag9qdXD?=
 =?us-ascii?Q?RBmCECeSqotB8OHaHBY8ZsZDPp7Jiwn59RFePpFKpz9TtSDTJWQepDgu9fLs?=
 =?us-ascii?Q?SrAZHeCGLL45MXZ0xyQsudnSHjDe0oV450V9BnwMDYRMi1UJImmeJsj14fRJ?=
 =?us-ascii?Q?4o2rfLKnRNUAfk/N8hsHrUwC+dMcIbH0sZ6sJ6KSJGYmguDr54sYj0A8OAE9?=
 =?us-ascii?Q?YS3K6bVdnJHXLVbBSGyn6jHIUVam+lHfAs7DgXHL1YVAUSqd9t00LHr9SYXo?=
 =?us-ascii?Q?F62Nmdce0n9MYllIWg4rQD79zLyuXPA1zMF3VnMgBr1Pv+9GWSwEfXEIWXNU?=
 =?us-ascii?Q?dCdxvayUILRqdg/NW+Xo+o2OYXHTBpYWRskYuUv5v5R4NHje4+PWkgLF70b7?=
 =?us-ascii?Q?GB8IOAmVF9Ch3BH1CphbJfj3Zm5w+V9oXoNYXSzRaOIhX+Dsp1pi21fEYvjm?=
 =?us-ascii?Q?LA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ecee95d-f612-4083-7671-08db8e8847e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2023 10:00:17.5564 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uULQnL3XYXKF6YiPlBjYhCgZtFB9a8T8JFrbK3Abiw7mbB3Q9per93EpvdW3RY662mhWt4F+jLUjt9BNJpsaJDuR1o1d9yjZv+RIyXP8rl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8764
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690452468; x=1721988468;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=X1kIdgY6M6W2TW7/UIFM3n/Y4wo9TrUf/LovDbeFrJQ=;
 b=aWBKkVtw1iKAuPG/rQFm9H1n/vcVsvqWHqZl1BsxpEMHf+lvNdqzzZWH
 uz1SfFJcFiSGED6X3xnKC1HDuB2EL6ZA9gJ3XiphfTP7P78TrfELUadDV
 uRo08VGSwY6ZHtnBE0J1cYPBBuaxYMAEVmcr4ZV64092mPKnOCAi62Sbd
 2L1eCArBizg/GR+EinrwELRoTkdxuAVxrG1b6xS22o7lXQfmuzBknXAqm
 /oPr2Vd955CFC8DehsYniHL5S62LP5ymylZUMX2egVirZX2YSYU1agFPR
 VaZYLMezFWHTihdK3wBeVmmiqDeGR2xfuirvVyt+NqAVywc8oVLZ+irx7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aWBKkVtw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix RDMA VSI removal
 during queue rebuild
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Monday, July 3, 2023 3:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maziarz, Kamil <kamil.maziarz@intel.com>; Rogalski, RafalX
> <rafalx.rogalski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix RDMA VSI removal
> during queue rebuild
> 
> From: Rafal Rogalski <rafalx.rogalski@intel.com>
> 
> During qdisc create/delete, it is necessary to rebuild the queue of VSIs. An
> error occurred because the VSIs created by RDMA were still active.
> 
> Added check if RDMA is active. If yes, it disallows qdisc changes and writes a
> message in the system logs.
> 
> Fixes: 348048e724a0 ("ice: Implement iidc operations")
> Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
