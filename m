Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C34AB96B615
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74BFA80AEA;
	Wed,  4 Sep 2024 09:09:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RcctlVWaHB0F; Wed,  4 Sep 2024 09:09:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD7D480AEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725440996;
	bh=FRbGfeO9AEzN+UIs5eR91ufxZfLvcJC0E9/tb/OYk8I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MTXm7rfgEaJQrGBNI/6QWqAZrH2depSPs9yI3puzQe1Ct/23HTlSVFOhDXA7zImXS
	 Lkn/qxcjCw9bKa1yV0qd8izuP3DjUj7fAeVY+qoRlRa0mQDRvgyJNuSrAF9LSiFZcY
	 kaUyD/VFAyeIQaE3Ky67HLoy8q7UZBGvUd3eFuu6QBXqvDlIyV3SoI8/m/6FnBQnzP
	 LlLdDYtCyzJ0Bo/dVSzMHPQ1y8KexcG4zxf6mKFoG6e20B2nGC06fKAbBp38skAJ9n
	 BzYx9HG0zaiFr6p22g52AdvItKbYswuxWG9+yZvSDTRGN0e4dJBPxU4Q3Q3sbYuE8y
	 Sl4AfKxcwFIPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD7D480AEC;
	Wed,  4 Sep 2024 09:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2801B1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2202A607F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fv7l6keYpSNC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:09:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 500256069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 500256069E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 500256069E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:54 +0000 (UTC)
X-CSE-ConnectionGUID: AOQ0oCKsQROciw+HvlsLqw==
X-CSE-MsgGUID: n6XSMQxpSmePM95pveeoFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24241288"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="24241288"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:09:53 -0700
X-CSE-ConnectionGUID: i+i7kmKgS8qR7PD0+LckFw==
X-CSE-MsgGUID: xCC2aBN0Q3q+lD1uJ5uYQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65724857"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:09:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:09:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qLxU1gp4n+Ujz7LY8vNcIjmTJPVwY3BvM4w9vk6WgMOHT1Ed2pYhv3rBilE7ZuFM/kz27nJRM1qusC1y/53oUf40qEymLerY8ojt9VzwOh+DLkSRlasc9LDR5PRrPQ2snKSGArv91euSXgLTdvw+LFwXBTnXBF0qES8CLUpb0V3pscy9P8hDGIvvd8xO6sJ6Iru88Ie7yxgYzhyFqrK8/R0VBkbZoxTFENpDaSNYoDRvzG0QDYV8jmHlkycaLtVs2rYmaPOg6pUNnnsGTLXzI9Kq/gkyJxA1dTl9p2l1vlEdqWqxH3J38M5WXSLHulpfEo1f0RIsArEtDiV53guiog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FRbGfeO9AEzN+UIs5eR91ufxZfLvcJC0E9/tb/OYk8I=;
 b=WOySu/ntduYn9zNTOzd3VHyuLr7aLk8xItAegZ6sbl6bx6nMFSF8201VvXTEMtqclaTFXBTlP9j16NdT/CXs+ZrGVLn8AyqGfYj3d7gDNGsCHzk4VdKpC6Yq70+sGEKUHIPV88dhHsqkGQlMjzOIHYfd5NXvI4rhYZ5Xc5Y9QzaWWMgAzhFY0oOvxsnc3k8lKkKPUqhMWcAnflHEwKflDqw5MvZ5qTCxM6ueO0CfN6kGWKZ+21r4nTlrzFz/oy6mIg3WoR0F6ZH0Hu5CYN4KTDmyILaE+AOj0n1OtoBjkLVvj18ACqAX5GvyUH4HLJBFqRhnIRiT/ET8seQu5WfYKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:29 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:29 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 5/5] ice: Drop auxbus use
 for PTP to finalize ice_adapter move
Thread-Index: AQHa88vazVJsJVgtSUeWysN1EEUWjbJHRhKg
Date: Wed, 4 Sep 2024 09:09:29 +0000
Message-ID: <CYYPR11MB842975E60F86BF2E1A5F78B2BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
 <20240821130957.55043-6-sergey.temerkhanov@intel.com>
In-Reply-To: <20240821130957.55043-6-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 839e40af-aa6d-42d7-2b1f-08dcccc1488d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?aqJc7P+50dT16uZ702CjdD+sgOKhJssurcJ4GTgCgjPIwKjtnjkihvr4WQ74?=
 =?us-ascii?Q?I69loXG7P7J0+7fFG40XSOPSMbAiN8kI1bePWqySdYFM/4POI3NBj+gre4Ff?=
 =?us-ascii?Q?o4QHskb4QaNwVimqWEE9UvoU7RVAh22FR2hSN0xKRfpRCwTrCxaEv4PwYqty?=
 =?us-ascii?Q?DY+WWixNvCRH9AUO7uf/ApHLw/wOwRuF08tXwZi0UCv1g534ATsOBxLM9YeV?=
 =?us-ascii?Q?uvNHw/kV79dZ/pMLy2OYT7fr5z+qUuRSK9sQzNSK2DyIZVCzloRVcer0TTNz?=
 =?us-ascii?Q?FhVYJz/p7g2A3NZW9JgAguvpqGRVS0kdTWKFjGc4EbAPm9aiN9BsSgwjOnPX?=
 =?us-ascii?Q?wi69xtrGCoT5ztSdjJFscxH4ePvVP0yrSageZmfErVe4fKxgXCORfIdT9OVQ?=
 =?us-ascii?Q?fm3z6INxSZb5QF/C+fUhTGJ75tVw08d/MUhYOM15htxYEqFoKOoR1JkwVzHr?=
 =?us-ascii?Q?2spqtccf/TvDbuNB0wG625Dl2cie0O6G8oPTqcjfhecgB3NGZvIvT+fqVxFX?=
 =?us-ascii?Q?6ticMzFIHebFQKOxFWQ0YSTyVGtgm1fVp/uM1QHA3+nPFhm6WL1CDfQkfES5?=
 =?us-ascii?Q?RuGtWJT5Ck1ZPC+siz1ZYNyk67LEAPdH6LvEN9htDCNMdaSWCnTkbR77aMVm?=
 =?us-ascii?Q?PCuK1jb/GFq9DRX+Q5SU+3jDg53hC90oFSC/2xvJxp1Pfo3NlZ2r+oz45KHf?=
 =?us-ascii?Q?wyB1asvzwDuiV2DUT7Jn3Y24FDJKmIGxe1xF+SldNSjP5UwJzOiMNuVMJw6I?=
 =?us-ascii?Q?rlqmhZtQbLQw5L2TM6xwgsJTDIiBRl17PcGQLPImafyU+NsnJhICLiKBA91S?=
 =?us-ascii?Q?NEObuojanJhQPKAAR6LTLXKNTDL3cmYVTudLUHZh9T3u4DjZU6kDruxFrjLO?=
 =?us-ascii?Q?u16guwW4FsHNbXEWZOi5j8vLP0SiyEoQJOsYj2+X/ll4yWll6FZ8bDXJKUzv?=
 =?us-ascii?Q?Td1+N4bpcq7eQ6W2QldERBBfVX7Nx77XWTkHhXG48KHIBRr+5jdxkEw4JsQR?=
 =?us-ascii?Q?o2olamFSOH4x5U2sCZoNIPFp0W2izwE2JE1fUFWDe3L6ERty+LbtdgPhh2aB?=
 =?us-ascii?Q?eD68sLoauWhKT19A9dgDGC4cjYtCK7qil+Z7DII8ryLXpHDytT7/IVpKn8d8?=
 =?us-ascii?Q?BSlM1iHKhZ18z48YOZxCMeZz2esG7CcQqKWG9o4/2tRDPkcDWZJ5kJTV2De8?=
 =?us-ascii?Q?t+k30p6OXOf8qX3mWb7aa3yJu3eGjnjBmARm8LPWGED2XyJM4v7FXJQDo/0u?=
 =?us-ascii?Q?unWwEaFYw7sNMcn9MKWESrKn63i53wkTIxQEpyrqCknYSgVXFVJCPQcbxmV4?=
 =?us-ascii?Q?iX2gMl2MVCq8FdrTajxTBCNO2Ehd1ZiqWklZNtDprm52VYZLmti6s2K6Uxyf?=
 =?us-ascii?Q?q2w6WfOXn04QhNcGd66UsniVcNUJ1s9vi7lfs2aWduwEJP/4KQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wq8REpWaCGapJNhChLk4gKjGkxS9AxsBxMt49f0qvTn4xO7s4fM8HGiU+nWa?=
 =?us-ascii?Q?TKpR8MQi+vEkPt7sxkEUFzESYdNLE+ukf7l/NFjd/h6SJoHGiV3s+CSvpXL6?=
 =?us-ascii?Q?zla8zoml92o+bSQ/bTc2SB6Qy+IlCdbLGNNLx1XZf9VS80QnsasBDEaM5WJx?=
 =?us-ascii?Q?+Kkau7kCsBe4Y8M9pDXojf+JIKRp/g846KcJrj63CU3G/ppRJZxzZD8gTtA9?=
 =?us-ascii?Q?TuodApo8xuv3AIDZpIyKlXmcWTgi9nVn9MVIRFA2Ao+ADTwyh5xFKCzHbhaO?=
 =?us-ascii?Q?Gmv6f4xWHxqHFPMvwDnvzL4emd105UB4pNLvviUZnUoLaoBBeTyN3s/baAez?=
 =?us-ascii?Q?hBRLRCR2VSkVzRTD0NGYjEXgwWWpq4kO4WwjpBTCepx2QvPFK7wD4KoD8zJs?=
 =?us-ascii?Q?R+s3H6oHrOtofpde6+yoGbYSSoMQ9n4QuwH66NX6v77DFo0sLMPG7CFldnfn?=
 =?us-ascii?Q?dTSwgfWqczLb5ZPxC+MRK9UAobV/sk2dNHZWk+lrU3GEA7CkEyhzdw+dbFUW?=
 =?us-ascii?Q?PYDJTI1OcYmTtktf4E1oKvRgGN3y6sCqStlk2VOJsuWjyc2fPEsLudOtFln/?=
 =?us-ascii?Q?dbvjAkus49aLBabOBGsMIXFEj91/R+XrKRwwlR22NaFK+jaWGAc/xfOIxg7R?=
 =?us-ascii?Q?dCZWRb5zhzK1knsGPCO+eUXPBQMGS1CwbpGaQsgDCtbvuKjB7gBkrLI51wg+?=
 =?us-ascii?Q?GN00KHNoW7uoUiZ1KnnhrpcfD0ZXpntA8XkO+lmFJLxe49hpcIIBLLG2YD+C?=
 =?us-ascii?Q?QX5W/ZfQ6ubzeedxnZLE5AqkHLsPrtRLGJODgR9WgT8DOjETHKWuYSxeh/Sc?=
 =?us-ascii?Q?ww+cJo2qAEVG0FVQS+gT2YJYPCEo5bWS2/uWKP9VvD1w1xREAl1AFk/NBSfY?=
 =?us-ascii?Q?pzoadRdL7MJI7jp/oFDieQA0t1+pdoZSEGznMdrf75q0YCPldLJo2lpb3UZQ?=
 =?us-ascii?Q?INmw8sGkhlcpBy986tckFgVsZzHZvmC8NguMacDlv48b1Xg9uLzw11XmLXzx?=
 =?us-ascii?Q?Cul2azPG5E3wosp+7Ejmc0NB12FS3BM9nnFQoAVfld6Sj/Mivt0YZkGpNjnL?=
 =?us-ascii?Q?aYoa8htzYlGa0uc00JFxtg6dCM1PrFUSoLaqshD64c2e5cICbAz5B6O/0pS2?=
 =?us-ascii?Q?sM/NAyMljNovT2EHoMvsMOHLPoDefTVd+TFxB9Wv+Y1n/LqEYKNb9PJnYya9?=
 =?us-ascii?Q?j03h6MwBYblvLMFM1UhMlZby0OPwvr7l4e0/sApSmohrKMlFv9zRDS205ur0?=
 =?us-ascii?Q?X6TbNq0G3g2yFchpqpcb/khuygN9Yqr6qVjmh2O4Rit5FtRlPIAidrQd8iRW?=
 =?us-ascii?Q?zkSk2CixMehBmc2qcdQvJOV9gC7mmgTQ4FaSKUAbV4XPPXdB6hA7ahOlD1Bb?=
 =?us-ascii?Q?SAbnpAFNlP7mcBRqdMQ6moMBIbxrHlhM9/OrSoY9yj44p6Ru9jytoFsBoOun?=
 =?us-ascii?Q?tRVhktN3mCeaYVHz96NDHrccpTxl9DY6ln7wgUXGkPhPCNmyajbpe5DvtWjk?=
 =?us-ascii?Q?QG1MiOwmyBMF6g6IzpaZiMU9lgqY2dWQf2XsndE5n1wvK7T+NOAW4rpRAlcO?=
 =?us-ascii?Q?CkRruHd8JdzROGsQ1uOICmxm8i9/3UjmQ4A1/eiCLqC+X5X40GugwkFnmhrt?=
 =?us-ascii?Q?5g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 839e40af-aa6d-42d7-2b1f-08dcccc1488d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:29.7200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BWTBvC2gc98fjtPgUx1AzbEWvFByXwpzkZvhjlQY0OJnbz90SJ0Sn/lPyENg/0+bImVkJcCu48BUpvR9XtVQzP/2KnqcvYii68W4Iwz/1QSqMQqKpi5s7HV6o8eWJjwZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725440994; x=1756976994;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QPrUDBh7TCYs/xmc9eQAjwa5CTqYC/e0C2wg/KfmQM8=;
 b=bcGlCVy2HeZFEPwd24qreix1kWZ53pDlj/ted218Vh6zX3fa0uE+cpPB
 uoXPro6P36f7vAkj0yeCSsluxC0kPXI6ZqMVucOIrwe1UvWwYICZFfmlF
 lAuccCSXL9PIeq+2fDHy+qQi8L1oGqi/arEi3lKWU2hwNvGkYznPQnhaH
 85H1T1iMGqvstCiiTBPmFY6JhrsVHjwVyPPzNS3Ls9YzTXK2f5104nr5b
 asMMXxf3n8hxnkHq3ZqfZOOzuoaVgkCXMPSdHn6vci7o/yFArRBR2Thd5
 PRMMGaF7rBvgjg4GubreBs2TUgbzYJAiWBgR1oW3ou8oCMyzSkaFeY1us
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bcGlCVy2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 5/5] ice: Drop auxbus use
 for PTP to finalize ice_adapter move
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Wednesday, August 21, 2024 6:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Simon Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kit=
szel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 5/5] ice: Drop auxbus use f=
or PTP to finalize ice_adapter move
>
> Drop unused auxbus/auxdev support from the PTP code due to move to the ic=
e_adapter.
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 252 -----------------------  =
drivers/net/ethernet/intel/ice/ice_ptp.h |  21 --
>  2 files changed, 273 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


