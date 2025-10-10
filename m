Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE51BCC6BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 11:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E991641383;
	Fri, 10 Oct 2025 09:46:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RBm0iCGbTVz; Fri, 10 Oct 2025 09:46:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A3AB411DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760089560;
	bh=yEFIloRmxHF2KmQ6NwARtSrTEN2OMhdaJaIH8IqISJw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6Wflq/wrndp5xtXEfhUkedZAFgMZhPc/sDqFu3IMQhES7hK3y0VILDgU9rXGhdizY
	 z/zFVu6qBUe06myKjUW4RJzZ/VN5x4a4ee4xN/0+z5UQMJBLoAqaoKwq8idHfuopOz
	 ALah8DK1jcR25PNSrJOlXT2CUrHJZNZ99SJToJ4BkFbIWKftTSHD+xYiwSbQDA0Cub
	 nsjGH8bx+nlk8ef88nyUl56MIOQQahebnoDM3IPK6WcZyrmPvXbf2RTHVx7Rix0d3R
	 3aZKi4IErXSv5Ye3kSUBs25Yn/jXAqOKmKfNDo43wmI5VjGooT9PGno5bW+0PdmMsB
	 r48SlizLpWIXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A3AB411DD;
	Fri, 10 Oct 2025 09:46:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1519A14B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF34E40A8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:45:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id srb9XY0uufqU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 09:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DFFEC40679
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFFEC40679
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DFFEC40679
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:45:57 +0000 (UTC)
X-CSE-ConnectionGUID: Nz/k4M4fT2CIx20HjGbcNw==
X-CSE-MsgGUID: oIZ2xPwMR/2DcOlFN6nBlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="49869726"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="49869726"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:45:58 -0700
X-CSE-ConnectionGUID: AUFUvL+MQSCBNkV8NlBDAw==
X-CSE-MsgGUID: RjASBljDQx25nukSYL2dKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="180525689"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:45:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:45:57 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 02:45:57 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:45:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EL2oo6VBIFp5IaveLl1rFjG5OEK1ckn2VOgtQ5BexkoX9XVMVFyzTsqyWhzC+vUUGvJBLIimfJ0o0rMUiHfLHInAZsuYbqk233RjlaKusxtfqZlz1wgyj0mF2S0kg467H7JdkH2azKKrEAIPdAAHy1AvNuB/GDbqjnJzsuRNG+VXrz3VHYPWfy1WlIK4rz8HKaflMB1Y6qBQF1f3ZitFlJvfJPnSQajK8/Hl0wK9riEv1E9U8xjA7IL/+bV5Q6NFaEjJ3ZoXkYnhPs+8sOBZeUoL72wRYK9EjQfbJXQbCV7c/Q4xigukdtH//hKfVoQ+gozdxJew3w/I8b9y5IXCrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yEFIloRmxHF2KmQ6NwARtSrTEN2OMhdaJaIH8IqISJw=;
 b=tRZ04Ff72gt63Iu8jwtVF3/4U7uawV/oG9/BhtyK4Mpo5m73uOxIMZlLuYXrECJyvzwLNcHgpIjbG8fI/6fOAIq/Hsk044NdeHlVHWUiN+hzsb49IsVCyZzseEKnMulGa0/J1gdOo2/UBdz6Ph56xxn2McpNVrB9betaax7Fg0jWJjnc19Lgo6c+dfZaGLtuqU3EvDKZj6oMsKhPBjPHHsCL80YZocCKiNs1JMCxnmGfThfF/WwCtESxaAalr0WL1manrKiUGl09u4BdQ+0SHzflov+vxV8em3Mted2Mu5wYVic8ObSaz5vOZigv8LdZAb2mwZcbjeFpiHSzcfO/SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 09:45:53 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9137.018; Fri, 10 Oct 2025
 09:45:53 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Schmidt, Michal"
 <mschmidt@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nowlin, Dan"
 <dan.nowlin@intel.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Extend PTYPE
 bitmap coverage for GTP encapsulated flows
Thread-Index: AQHcJkY9e60YAwlxNkmcp9OETBvMXrS7SK0g
Date: Fri, 10 Oct 2025 09:45:53 +0000
Message-ID: <IA3PR11MB898579CE147365A15715BF808FEFA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
 <20250915133928.3308335-5-aleksandr.loktionov@intel.com>
In-Reply-To: <20250915133928.3308335-5-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BL1PR11MB5953:EE_
x-ms-office365-filtering-correlation-id: e079f9e5-7e88-451e-661a-08de07e1cdb4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6SduHqK90MG+mUIV/K1rUonFvqcVzjOBXJxo9GRFaPRQK5rOAQtKnUuZrTql?=
 =?us-ascii?Q?QThNaueFCDGDzFu7LOwjBeroRECYPNq00HvMdzGmBaUk7XIpdSY+L1UzA6UC?=
 =?us-ascii?Q?7hyy7H9e3I6Jv07EtMMenAfPViLckb9qmUsggttyW9Pjkhsb77aHwPcKcBXA?=
 =?us-ascii?Q?9e0+8xBw6ukopP0bL50w3iM7Oxzc+Uk8fLzXqvt2jbclM1s2jujH1Wrd3Auy?=
 =?us-ascii?Q?UNAyNlf+fCXKuCaliJRBRUo5MNRqQEHzFP2fKvrhXdG9AEbieeerXMTbbFIT?=
 =?us-ascii?Q?xjNhevixZ2Rr8AGEINfz3+CbL7ZBbPT9G7LYWtxes9+YM5AD6uv4mtI62xIS?=
 =?us-ascii?Q?4+j/67G7a3MC7porSUMgJDhpMzuwaxOP63oIbUsRQ7wdX9qWCJIXxkYAxat2?=
 =?us-ascii?Q?GdVbM7g3LbkS0GQeG8dkWItgJ/FdmqfGOsxbRGz5+gbTCtJbqzx85dbah/rI?=
 =?us-ascii?Q?4ZYAZsM6hvVfxKj20E2bxj/DIsHlXMqWWlLPh0cWjXWT8fuxF+j17a2xQL7Z?=
 =?us-ascii?Q?KKpArslc4zwF9nvT2SVRk5gYqmGGUTnw16y5zTWD3ZHFSWiNBkOwro0NJYRW?=
 =?us-ascii?Q?8zory+W9xMiwOzb1Q3GeIhh/UML1RL6hflM7a5ZrWXfV/ptnXOrmrlktV5gf?=
 =?us-ascii?Q?LSMcM45c5Sp4y7qlAZ/uXPepnuoVVJlJa4AwJSOXUG6sDz5H2tm6Cr0d10Nq?=
 =?us-ascii?Q?lr/fJw6gctyireCHZE/t80Vdc8siBbbvqzdhuGNLTMxWIjaJTEZk/9KebYhF?=
 =?us-ascii?Q?DENNAn9fRYTIYITIbuS13jcRhZsMblvM63CZhdpxpCYixm6TnfkOAGFdmGR6?=
 =?us-ascii?Q?g5Z/uSqWEMEyX3V+XkVau7gBSw3bQZtx3PF0f9svCdXSCoGL0kugR0PgelPH?=
 =?us-ascii?Q?HyfnlyN500fTSOp17MUth6JBwNsdCaDXJzeXIv5n0Bvc+uuU6RYY7OvHDbm/?=
 =?us-ascii?Q?D0aw8nSp+bGKunPIRB9fVRjpT+/Kj+gsp9Kc8PHS3r8jJp7yOA/Xf+Q1PFvE?=
 =?us-ascii?Q?ph+Oxm/T7bJyhU3nHqEV4Cgxp4rD0srzXmTODbbnSLnORFJ3M9Wdfup3m6WS?=
 =?us-ascii?Q?MmUHXC7IuZ6fE4d45GRijLNwFgdp0C41l7GWEh6LAQctia2G1pBo0mSFqVmb?=
 =?us-ascii?Q?hlRCicRd24lCMWMFRSX0Be8ComaYOognnHN2Q32o553RpjJwFL6uiUPIZnaE?=
 =?us-ascii?Q?4+KpU4rfLMLyUPI6ln8d03j7EzyA2nceaODp0nzNZYvenx84I4aeY76mE4MT?=
 =?us-ascii?Q?YLSwDXFGcpXzY49q/y6Seut9J033FiXvXUx57i9ovvCW4jB1LAz3CkqTTXF+?=
 =?us-ascii?Q?2mYF26Fe3Evgyxp2bjObnQVHcn4uHb4P404PJfcsWJ8LWP7LYbYEVSLg12re?=
 =?us-ascii?Q?MAfopc4H4xkqaSGTV5vyUwOwhnFdxrMqxXDMa7L60L7pGhgIheiERrKI01GW?=
 =?us-ascii?Q?/aExJDL9ihb5rjbA0P7cAjbjwp17C+9mgBp/VR6mJfTJcwiZQUAn10HNnm1P?=
 =?us-ascii?Q?lZuLRIhfxzmzsu15+vfps8kD+s3WSeNg46sbc5MOGErE9DAJZgKU1bV4wQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?S4xsJ3dhWn+I3nxDkfQwgyvb6RPYeSZN3rAUBq98Q1iwZhCCTtXQMFmiWA08?=
 =?us-ascii?Q?sfPLg9ItwXbPt/OfgpKnr0HRqmC/0up36fIaHVrjGcr1IU5xG5KFKc80hwc9?=
 =?us-ascii?Q?4jRME/cDuzLbE6aqcbMWDrOPb01txSGglk17CUjKaxaXHMqAyZqj5uEWuHpC?=
 =?us-ascii?Q?rR8UFrrxEAfyIdJXwsxiqNa4TOBNNLUaO9NxKZyQlW9MRdrk5flijvSWwgwI?=
 =?us-ascii?Q?X4QgSJYBE+coyG8wdQUdAVzyXKTLXKO0bI117Ol4GTl0d/deJKnvnYnxmB9J?=
 =?us-ascii?Q?Zao6y4YmLkXKysKcnxAdAG6bBrDhg9F2nlopX9GjFdb00iRwKuLf+wE3yNEf?=
 =?us-ascii?Q?639f0AL4+pESzqINBiA1ZQ7PXxr2sAA//GJzcNCqVBRwAvWNx5md4SbAc/iq?=
 =?us-ascii?Q?bbd/y8FybGkdJRkdAECRt8O7ZJ5PpQR8Uz0WFUvDpuerQsP9ufUvnp9dDtnf?=
 =?us-ascii?Q?tWTPFnZ+bdhX7t0jaKSWjv08PcVY1mYwQ+HK+BL7l7YEot9v9CFewhxSJPIb?=
 =?us-ascii?Q?u36nzsSoCCLSMBCNNDDK83QCoG3gGm68Rl0gIYoK7vp12eUpolc2eSCAu5nU?=
 =?us-ascii?Q?qYA4Vq3gaAu0eqxNdKks+P4TuNJ1VLjnSYEM0enL0jPn98IPr5lOCIVBzsyC?=
 =?us-ascii?Q?e2MINcGbUsl3Ly0U3AV+qsNVxWmwu3v6RXEirqK1KfJ/fnndmGKxf5G2N9qv?=
 =?us-ascii?Q?TMlmxTYS/q3B2TgXI070li88e1zPZ5658JHL6+d0aEaZhDC/0VdvbGCLhhGx?=
 =?us-ascii?Q?L1SkX7ZtFgVeCed1LLVmrGIhelUHkMzUhK+CdqUWxPxZW8rlSkobMRsa7QAE?=
 =?us-ascii?Q?cnKiW+jaYuHUo+GiAZ31tJ/7z9JrhP1KOFlHRN0yYGQV+0bEbWRsOwxaaABZ?=
 =?us-ascii?Q?/K5bGq/yIH4JpEI0wnnPbRjNQGBacl6Hrcy8LUdnnggIN4b4QNNLBIWSoYv8?=
 =?us-ascii?Q?fFo04D2esO19fKBMOdrWWarghyRpU/hJhFv2HeJbxVkHhLyYmpqL54m60y9E?=
 =?us-ascii?Q?78uQeSeNTxO09ptWOG60tNgk1JCW+N0P5T5gI7fqGZKbpcqKpemV1SHXLp7O?=
 =?us-ascii?Q?AeGqQijWVtY4mGrtl1wdQBe0EpIwwslMm+JC7Nq+tKFFc/9kDbYGxBu1MXyP?=
 =?us-ascii?Q?YwNAMbrVqpz6VhhPwWNDRLtwNKlGRbRdQhlYObe2cgaDHYyQQIUNZCzHiS++?=
 =?us-ascii?Q?JFMS7fsMrscJxupOvZ9WNIfJoJe6SHyi6WUlNRa6YLajkZ3EVAJJxl37NIDO?=
 =?us-ascii?Q?KMqqWVybGVqXtk2JNeCLKyifSXEHqcSppIpcijOi3G5wOBuwZukUjRM6fpfS?=
 =?us-ascii?Q?ofDhu4ERCVKGvZ5a575ddw7YkF8T42y77MGFtGkd+L2AwF6O7X1RcdhRuDgM?=
 =?us-ascii?Q?PyKYmJtMMMZIpehICVTrnqsPKL2KrVZ+E2RaSy6Z+4PM7Bz/x7/mi1xreWIR?=
 =?us-ascii?Q?FuHwDEBaBy+zmibb26T//sne+OREPFTnUC/aEJGxnkmTx1DKIUC/nT6s7T3Y?=
 =?us-ascii?Q?2v2p86C4bKA1ojgBzlBcvAJcv2baNrTHP1spquKuKr17hPbRYYoEzlAa/it7?=
 =?us-ascii?Q?6cqGj5nu66iHcZAsU0UxaoYGcDXt67yqzFskrMKVz+BPX0uJZ6TUY1JBVNa2?=
 =?us-ascii?Q?qQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e079f9e5-7e88-451e-661a-08de07e1cdb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 09:45:53.3164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JHyogFGNs3PjZ+obgZY147mnmS2UvCvaFcD49XeaN+0s6sEJ3ZYzN0epBNmNdmaQZnJRUNwaCDBFM/Bjyvy0B84WJ6mcojSXoY13oejLnPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760089558; x=1791625558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ArRCGC/EIuGlhK6J4ZBeetfLhKCRPyGczZXPFecKkzo=;
 b=mxxENqTweipob70fSloibFWYHXsg1J69FjtqHEIOd4p0YDSWkHTYHwO6
 ZL/iiNzgQNB39ZvwKSsSftWczj9zAwpuA1HFNOrE22buWtVK+UZVDfYLF
 DU5yPcMoifB5t/Azf72gpLm5acd+E6nwPk8OmofjQhpY/J3emTYFGhrpw
 u1Foe9Exb8esyLIMCxAr8enQEsVvq6mZgE3g0cMEimfIhPQ4/TaQVBSsF
 sOlEnTmUUq7YjIzG1a/Keg4BVhtgpfhXOHRCYXzxFhw4hk0+ikFAGWE5A
 Xwt80XKXY2boM2MqZspIz5gexJFv56oEUhBtjpB6BokQHvSBhajwWcpso
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mxxENqTw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Extend PTYPE
 bitmap coverage for GTP encapsulated flows
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Monday, September 15, 2025 3:39 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Schmidt, Mi=
chal
> <mschmidt@redhat.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nowlin, Dan
> <dan.nowlin@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Extend PTYPE bitm=
ap
> coverage for GTP encapsulated flows
>=20
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>=20
> Consolidate updates to the Protocol Type (PTYPE) bitmap definitions acros=
s
> multiple flow types in the Intel ICE driver to support GTP (GPRS Tunnelin=
g
> Protocol) encapsulated traffic.
>=20
> Enable improved Receive Side Scaling (RSS) configuration for both user an=
d
> control plane GTP flows.
>=20
> Cover a wide range of protocol and encapsulation scenarios, including:
>  - MAC OFOS and IL
>  - IPv4 and IPv6 (OFOS, IL, ALL, no-L4)
>  - TCP, SCTP, ICMP
>  - GRE OF
>  - GTPC (control plane)
>=20
> Expand the PTYPE bitmap entries to improve classification and distributio=
n of
> GTP traffic across multiple queues, enhancing performance and scalability=
 in
> mobile network environments.
>=20
> --
>  ice_flow.c |   54 +++++++++++++++++++++++++++---------------------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>=20
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 52 +++++++++++------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c
> b/drivers/net/ethernet/intel/ice/ice_flow.c
> index 54e259b..10b9203 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flow.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flow.c
> @@ -219,9 +219,9 @@ struct ice_flow_field_info


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


