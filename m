Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4A59D5FA0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Nov 2024 14:17:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39CE2846FF;
	Fri, 22 Nov 2024 13:17:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8OGsonBWBF_j; Fri, 22 Nov 2024 13:17:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 857BF846FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732281450;
	bh=D6pv9T2lCcdFkD3+PVthNHnHcFOZLOVM6wMKnUYt1v4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CqBXuq0QMQ1Ut33y/lestfb1IVbMw9g5pmup9OoGx/CWohUedI8OM41SJHkA2RY9P
	 CEtOolW18AixY8IhkKX/AfRgaTFmaEqpKNjBFtwt66NkMxrbVBFbtwWOFt8HoSjtRd
	 oU9E/VQuIvltrojBFDcsznzw6G9SLNNMQNPf1MOP+2ZMsJ57dlFWpJS1LJlvC8DBC1
	 wWgY/Ifxny0mEPgZOk6sBLB3XbJGBcZBZxh617XiVJMPlctgvBhawu4yLsqw+hP1PH
	 6dc7VsbL3UFQVpbivfrl6L91ChSy5J6lMaxMc5XEL2WCdmgaPMk+VJsyMF9zteE4ig
	 Z7Zd33CF+oAsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 857BF846FA;
	Fri, 22 Nov 2024 13:17:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 253C2B8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 13:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 137A2846F2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 13:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DV8Z6wHxK_Ri for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Nov 2024 13:17:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DD7B6846F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD7B6846F4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD7B6846F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Nov 2024 13:17:27 +0000 (UTC)
X-CSE-ConnectionGUID: ip7oRKgkTfCE6+ueZOFyjg==
X-CSE-MsgGUID: n9/Bf920SCm4LnwEGiWFkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="20025527"
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="20025527"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 05:17:26 -0800
X-CSE-ConnectionGUID: F4xQwzF+SW+Y2mNUCi0X6g==
X-CSE-MsgGUID: DkT6QuhOSqSEuHHNLfFK2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="94658606"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2024 05:17:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 22 Nov 2024 05:17:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 22 Nov 2024 05:17:25 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 22 Nov 2024 05:17:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GxymBcKXWjyAa7p/rA2jgbLLrJVDk8ftShiS91G8PmJzu7iPnN+Ikn4brgEkT7jPx1kbUh4S9dRa6C5+At/zjNLVoGY1ZghMW/vgpM2auEZm8cM2Utl4sZwYQZW+I+mYjl7GQ2aA6+7svy5sCK+aXcKjiwSvQcKRpDFQ3XDb+F/fQrQOFNVHWEufzzB0VbzgTrmERM4hkpwOmcY8VRvB/uN3aLQA/qJn7xs4GFBYthRWA0Brg7aR5rWyBuTrac0BijPFN0/ZgCehVaB0IhNWBSTrCM5rY1Muj5zc6jt7tqdyvb19DtoFznv5IWwVfI7EXHI2x7HUtDis3rcKXdDVqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D6pv9T2lCcdFkD3+PVthNHnHcFOZLOVM6wMKnUYt1v4=;
 b=NNWm3kl7rRIBFk8Oy4KPKxvOq1OG0o4+yGW3CYQJZOYTU9lDvlpqW+jcB4gX+1TdZzcB/fCLz4T6p89I/BvWNz5ofweEZUyANuI9KAovMgbC028RA77+lg9grjvVWuGTalK0dQu2IWamSH1a6UPcEz+nWUUMOWjKQiul/i28M7GJzeGoeHVYeHs3DNFR7FNhwUfJ6K/G2I+l+1y1+aUITsVU82uqHVuLhwfpD7sqcYTqQ78QICoDHfbIcqBYDk3SL3p8ZZOO3AcLvnTptu8X9C+pVb7U1L0VbKTzHNKlnshVCDOT/iFss80iNid7QK8xsSsJbIjvD4P8KCm8mo7iEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by LV3PR11MB8554.namprd11.prod.outlook.com (2603:10b6:408:1bb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Fri, 22 Nov
 2024 13:17:18 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976%5]) with mapi id 15.20.8158.024; Fri, 22 Nov 2024
 13:17:18 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Singh, PriyaX"
 <priyax.singh@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VLAN pruning in
 switchdev mode
Thread-Index: AQHbLunavCSesveoQECORtgxT0m5jbLDY4XA
Date: Fri, 22 Nov 2024 13:17:18 +0000
Message-ID: <CO1PR11MB5009F426224EF8CDF80B0E4D96232@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20241104184908.632863-2-marcin.szycik@linux.intel.com>
In-Reply-To: <20241104184908.632863-2-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|LV3PR11MB8554:EE_
x-ms-office365-filtering-correlation-id: 329c2e4d-8356-4bcd-36b3-08dd0af7fdc9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?TG5r/FQObWNwqJowHOT7SElYLP17hoKg6rS4j5AKrfyV4nxyI0D2DVD5q2a5?=
 =?us-ascii?Q?cNm3b5+Owk/OartdPcF+OoouzLx2tdMcZ9q80KEx3ozSySMwuC17lQpBNGxF?=
 =?us-ascii?Q?5iDsexV1Eov07iKW+pJEg4jft9/Sbeqybkjh7b/uoJ793MxC2t2b+weQ7CJ3?=
 =?us-ascii?Q?/sKTqhT0d4wgy1zTfwjzicRTM7VLHD3oP91InaPsVp/Vmdh8BZpgF6UEvZj5?=
 =?us-ascii?Q?fbu/80AjFRsTQwdOtUvKwdpJJBp4Wpb3I028BsHrsn+lbh5VpdpiqVgg/Fn6?=
 =?us-ascii?Q?NkaFGfU2zMBkNqBm336VcprNT11PtRLMzQniCmaJuKijC0qxxF+fe+AzoOCS?=
 =?us-ascii?Q?IZ3TkFJT873I4YLvYvbxAjzNqXQVo43FTgjU8/e83wa/kOQhhFc9vGqZEuk2?=
 =?us-ascii?Q?Ay3R6iY2Rjd6KQWuL90e6ZVoWkJ9FH9IrK7rqM8fXSLWoRH/MTaRXPcEL+ql?=
 =?us-ascii?Q?81b5xb8Qv8DlTsck6vNEK8svrmUTlPwYQgQX7ppL3AMMYJZ2rrw+rBjF9RHy?=
 =?us-ascii?Q?aI4tbdVFfDcGpO0QZ9m2nXxpGSjKYKnc3aZF8G8I25M0DHiPm5s6j1EpKK4Q?=
 =?us-ascii?Q?TGBSuIQLoS5hKC+SUUuIjLHKDUYee7ITkTrDECfCzHN7xhTiQ9LvuvisrTQN?=
 =?us-ascii?Q?0tO2De4RU7FFbcGWOwHNmrkSioGDemxrC/DGd6A0gcJDyEkLTny8nthRmk46?=
 =?us-ascii?Q?JUqCsyGBOlh5d/A/9sOStJpUUva2Gv5CurZumV5vlL/Jlxes19kojP69SG3Y?=
 =?us-ascii?Q?JgNVmVboHZsPHqvRNakwdrRMdiC3zJNSYH9u3tQ/gsO2tAtureIFaJylV0Xa?=
 =?us-ascii?Q?IBiL3/9YGI/+6Ks+1EnJ7Ax4ct4tHBLBQWCAQXftNshiBItFZzjY/zOGRsj1?=
 =?us-ascii?Q?0Yx6qJz592hmPGqAe2qgoYkmHElvdRqfzom2cnvCVjJl/HZTSCBt/4cEf01q?=
 =?us-ascii?Q?wzg+9A4BA1iX0Stc9RS5WwMkBXc7X3jMXgoaGUyjesjCzCmF4BOJR7et9P/W?=
 =?us-ascii?Q?cXE3BIzZDiPU39FtWWJlJVfnOTk8kyEOZU3UipfW+mClWJGOKGghFc3LDZyJ?=
 =?us-ascii?Q?CbvRoADqqJatFP/SKgeGrFrXghdKidEZoSFuQwRi6QbPiIfAq/8ArP2VhrY2?=
 =?us-ascii?Q?nYuEpHnvj6oecgc4RypRRaD0txOSxlbF9Srh6kWVrNhQYJQMUY+pdzvndnIU?=
 =?us-ascii?Q?o/ce0ZL1ZxliYDYp54Namqn/rGaQWDsRk/PL68C2ww2mFXvs4W9HZrlgiG1d?=
 =?us-ascii?Q?K2zI/ryP2ySAbP+vwaTHZ8cWtWNXaWi4805ifwjWOM59X9REvaZJ+Rd2fZCr?=
 =?us-ascii?Q?Ik6H8au9ZtTWenhVWw5ec45/zqPmmi1N+lqHfsTxtqXOpulEiwtuR1JmrlO6?=
 =?us-ascii?Q?w5PWXX0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nbP+YIeki9P4cUrYFti3WwFs1+6i1B/adfzm9fyP7EgCFgLaV4ble+OqSdIo?=
 =?us-ascii?Q?sAqNvcj+eXyW2SKIaPSOPoLk1TywuEuTDO07K5VgC+wF3guGv/d76xr6Fdu5?=
 =?us-ascii?Q?wUqjuK2Mh/Q7iZfE/4U6NpKiUlROH7xavQ0c0uQkWr626pBBLsf5uCHVRN/F?=
 =?us-ascii?Q?sjP7HKXFjPbaZl8mQkaBQmSDtTSCUGuIwUdmQZvzjTS1X1EChwsfY+vHY4qe?=
 =?us-ascii?Q?hQ65/BI6suVUk+rDbnsW58Xd9kmEcciXeh8dhzURdgOgc9B4mNmfU6PqQgZn?=
 =?us-ascii?Q?6ZXowBB0AcBrt9tg90Kmy4lCj2o0fHtbzrI1ZvBo0SjXCt0CgqhkY6Lt9yHY?=
 =?us-ascii?Q?ZVzyKTul8eXLvscUVezhesRkLds9OnGAqke9E9YnPZTnkJjKJQBGvbkgqOq2?=
 =?us-ascii?Q?ES4Qwf7RATnRXAvXu7y9qxrRz7TmTqBEcUoL1Hv/HQn4U4u3UZMH2ipLa9qb?=
 =?us-ascii?Q?IimdK/80EblHbmcvDnav81174aIrIjyBitBANQ00n3+qiy/rYbZDur0I+8wD?=
 =?us-ascii?Q?tduFX5wrLlxkEg5A0RYDk8syQgJLE3fkmYdyZ7LiDzIt7tMzkqJl5SZyd7Zi?=
 =?us-ascii?Q?71l1CJT3/JjM0LpEHlYBZDP6S6EoV+IzkoK0C687MLh6CLk9FTaaxjTlGrZ2?=
 =?us-ascii?Q?RP925koVdiAJ0RbM8Dvf1n/MR+iNmqexZtQqPvrN40ukT1o7ocNsvlvKKPrb?=
 =?us-ascii?Q?zRhTyPRlhgrnsu+ROQHO/FfLHM91Jv7TlfjDN7Ic6pVgJrjdkHlk+FM4UfLi?=
 =?us-ascii?Q?g39A6Hi4EyzLfxe1fujlFHqFAY9KyPyGJYRiiZe8/0kUyoyZtMyo+4gZuEew?=
 =?us-ascii?Q?FqCG+sPGuCQf+3075eTOB1tU4vcWeQpWc4zc4zm6IbnBe6J4DCmTDUpM99RD?=
 =?us-ascii?Q?3RwEw9t2S8KYBENhPfD2F7c6GsEm3N/YGLUacjkUoU68HH8U/uTZh4JEfxbS?=
 =?us-ascii?Q?5JEZUxaMLA0oPCG2uWbcTNwmQXw8Pajm6iYPpAIH4sdDvphvQ3nvgsCQsNz9?=
 =?us-ascii?Q?KjsL6YLrSYExJQrkF2QUX31MdraOzfoxr/RbFP0Fa78tFXz0r/p/eL4/cN3E?=
 =?us-ascii?Q?CRiBBeH+C4umMzOM9XT14riGsYz1KISbW8khvLekQR8Y6uOHr2ggh7dVmxc+?=
 =?us-ascii?Q?0a46BAaJfm228iaGdLquj9uy8fPXO5o7PBrTPB4GFXXFXxn3StXaWhnfpNrC?=
 =?us-ascii?Q?vDV01xkm7DMp2VQe+e8a6Vq9rs3WlsPWknk84HDCsYTYuzCxOy/e+mA2v61M?=
 =?us-ascii?Q?xtB6zfsPxYHLP2vIQjjp9JY+HkJbjyHd95KjdB3Ldy8Wp54XOKUdlq5sHswW?=
 =?us-ascii?Q?cwUas/pwQ9d34hRC+a1obV1ql8clo2VeCY2DbdeBm5E7ZCrZP9UTj7vO+ONI?=
 =?us-ascii?Q?ZfkwE9/xNqsrNmvG9hs7lCk9ZtBgYgezu59OvIcLCFWkbYfqjD3zlTuDiUtm?=
 =?us-ascii?Q?WXi2KfNaHrRmR2Xl8ZnN+XIxoZwgJd+H7jnWMje3QKbs8jwiisxP5NPJM57p?=
 =?us-ascii?Q?46f4yh8eSCzvKCb5IZxeBCKdsErGM5dt2kjio9lAYzz/xKdvlpM+kfj9ZGF8?=
 =?us-ascii?Q?gKR1ArldtKWD6MxKsXcYw4oJneezM7dxV/oWVr/Kk6MPRvTArS317PQczg28?=
 =?us-ascii?Q?jA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 329c2e4d-8356-4bcd-36b3-08dd0af7fdc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2024 13:17:18.7426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 90jk9FIVym1bH2P/i4FtBi8dqVsroAOMMU0i8eMYVLs1bcxmWT9pFp1JTgtOiL8bcA90qwmzXLTH45cqrrEGzllem/z/Aj2DhT3e0hKEung=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8554
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732281448; x=1763817448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2PyGBVTz71tTCGWOPICeTwtu60xtcKvN+u3r+FHgYRg=;
 b=bbAOf/kqy0Vkyb1UGmhaVlONIKpqdHdWd8+yb4ImVUi+AYS8/ZNqcfzd
 hwybmndW0R2SWuQug0uM3nhFre8YFAG/Y+xU2Fhnh+69ziMmBjsochvkL
 DSaNroO42pUE2X8gNfezzoczU8+iqhVr6G0PtOcdke8X+hMjrder4S5yC
 FZ3OUUpz0RUibf2reDL8Kp4k9sroxhjwTEtJNZ+OUX6hnxPYa4xE4U+bL
 dDIvR4UokiRx/1vD07FpJugF0JnI7l1KRhgkzn+PfFJlrwdmicTO5yVmr
 /dw2D8nn0MYbzBX3qH/A1MNQOrQhTWD64fM+fWYGmP/ObYixtb/eUmN61
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bbAOf/kq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VLAN pruning in
 switchdev mode
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
> Marcin Szycik
> Sent: Tuesday, November 5, 2024 12:19 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VLAN pruning in switc=
hdev
> mode
>=20
> In switchdev mode the uplink VSI should receive all unmatched packets,
> including VLANs. Therefore, VLAN pruning should be disabled if uplink is =
in
> switchdev mode. It is already being done in ice_eswitch_setup_env(),
> however the addition of ice_up() in commit 44ba608db509 ("ice: do
> switchdev slow-path Rx using PF VSI") caused VLAN pruning to be re-enable=
d
> after disabling it.
>=20
> Add a check to ice_set_vlan_filtering_features() to ensure VLAN filtering=
 will
> not be enabled if uplink is in switchdev mode. Note that
> ice_is_eswitch_mode_switchdev() is being used instead of
> ice_is_switchdev_running(), as the latter would only return true after th=
e
> whole switchdev setup completes.
>=20
> Fixes: 44ba608db509 ("ice: do switchdev slow-path Rx using PF VSI")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Tested-by: Singh, PriyaX <priyax.singh@intel.com>
