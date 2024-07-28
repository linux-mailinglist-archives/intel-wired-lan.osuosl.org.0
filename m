Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 928AF93E737
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Jul 2024 18:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4413980A82;
	Sun, 28 Jul 2024 16:05:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PUsSvVFx380l; Sun, 28 Jul 2024 16:05:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5487180AAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722182718;
	bh=jCtFeT+X0/EMAvU6e0YUnBDhoyut8o3au/OKr+3FAqw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T7ICWTLeOBL9nmH4GtQog2SItF7afrHfqjRekERRd7JNKpl9UwZWZFVmTYNvao6rl
	 WXtHH4hihwgB06nnXjjmOxVHQ1zFvNknKXEZCGPdCB9gLtGdvqRmVyP4Q/F263mohl
	 2rsw0wRU4M/1DUjgbNW7dVPoN3DL3IE/ar/u1zv46mNhF/YBKascDfwJCDbgFp2RSw
	 VgAHaqFD0C+YGadPY8Yr8c5rOtjjgDNRiAYA8B+JYSHsW04fti7a+tl8zCC0KDZTel
	 6IV/WwAUMdLdKaeWoADkUoxHlupYcHvfcqpvhvfJUFax3tSRhHh2U54nOXOcPzdN0c
	 JBKFkv9CJa0Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5487180AAB;
	Sun, 28 Jul 2024 16:05:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 136DE1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jul 2024 16:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3A99402F5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jul 2024 16:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jdOm3TdKsLu6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Jul 2024 16:05:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C306A403B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C306A403B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C306A403B7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jul 2024 16:05:14 +0000 (UTC)
X-CSE-ConnectionGUID: LR8P9DmCSrekFnY9Q2Dw/g==
X-CSE-MsgGUID: ywBmSmo3RJGxWcPvF2skNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="19805002"
X-IronPort-AV: E=Sophos;i="6.09,244,1716274800"; d="scan'208";a="19805002"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2024 09:05:14 -0700
X-CSE-ConnectionGUID: ZN2VpnasSGCod6KW8eql/A==
X-CSE-MsgGUID: cJmLzq18SZ6SbqLdWhmwmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,244,1716274800"; d="scan'208";a="53645991"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jul 2024 09:05:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 28 Jul 2024 09:05:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 28 Jul 2024 09:05:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 28 Jul 2024 09:05:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 28 Jul 2024 09:05:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GuxCVa2WuED+gyDXMVI0iPRhMT8t5nuV362BJ6Dnqj0uJf/ACiIDDvNxW/Dyw7Roa6CW4IF4dIBrRE3dzcnKwBT0Mi4RsD0i+VfyWC6zECkvxVkLkJu8ou6ftKvQEdewhYNrdknPQ2bFjQWT6LYWiui4jdYHJlzZgpVswKKSvB83HWGw4BTxnXZpcjf3Dy+d5NpLEMbfg2Fn2LuiPR1ejBXz0ry+zM1keT0flrvVMr6NCiXhBLNYbBLHxByTsv1GlKmE0HTRWPKAPauaMxU9Z0gWoCje8YMDR9KdDR6/ziCMXIkVCRC0YgSKIENr/ubOA31KIMi56vzUz/KME2ARVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jCtFeT+X0/EMAvU6e0YUnBDhoyut8o3au/OKr+3FAqw=;
 b=vtAf9qGsW33CCUh3kjIXZoVWjRvzyXUjC/bo7PJtMEWP5tYDfo2/Dkk2v1uQ1UFek23kIMK+nzi5RahScSShdd81VyReolsF9+gJACaFs1Ajz4W5VKfsUgDqZjFAq/ucnJrPdLx7/Sna0RssU0cAOzSrpfuk6jJQmnUI0d1/bij+TKGm44n/LWPF687S4REUhnB0L/PL/6OmnMMM6uKoIINdFCr8AalWfHc182Oq5kRqPAGaN1bAuFX1LESqobrg8nOFWxB0t5XgLredf9nF2wTy1OaiesRF6proM7BHJ8ffY6wl46gHFBMOLRTay4PbPleyRr0WWsmuZZzvMuCcuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8533.namprd11.prod.outlook.com (2603:10b6:408:1e5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.32; Sun, 28 Jul
 2024 16:05:10 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7807.023; Sun, 28 Jul 2024
 16:05:10 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: Skip PTP HW writes
 during PTP reset procedure
Thread-Index: AQHa1s1tzL3EkGa9a0e2dNQA/D1iq7IMYeqw
Date: Sun, 28 Jul 2024 16:05:10 +0000
Message-ID: <CYYPR11MB8429F25FD3701D71F2B75417BDB62@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240715153911.53208-1-sergey.temerkhanov@intel.com>
 <20240715153911.53208-3-sergey.temerkhanov@intel.com>
In-Reply-To: <20240715153911.53208-3-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8533:EE_
x-ms-office365-filtering-correlation-id: 1f20f5d2-ff79-4914-e4a3-08dcaf1f0e8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?lHgqrpyjDH3LDcwgpLPRHohE98RvZS2pcSaFJcT3dkBm3vmOaIlaMNW7KS57?=
 =?us-ascii?Q?g9Fghc+HaTNrql2ngQg9PBHvE61VxqRyucN59x6RBh+jrxGx7PdHPfpdBdAz?=
 =?us-ascii?Q?eYilOzGi4zldBztTp3xh6g5Gi0a4sl7jxPfhAbvm2+h5czq29AJN1aNGsYsc?=
 =?us-ascii?Q?M3KMoFAJziZowNFlNK1AOQNI78qMhWRma03h9ACCGiCbKI+Can0cCydTq+xD?=
 =?us-ascii?Q?LeWv9vVatvaWoApTiM97dh/vjkRBT7h5cRbrtYnmEjgPY5QdsGCWewWoyI9q?=
 =?us-ascii?Q?vKnjryRxTgXDypqiuELgmHVbJ2aHXBpTfCladM3toVzrnxqNtlKviK/9tjUY?=
 =?us-ascii?Q?0i/gmWAKiWG+mp33JdWXBU1JBA8L4snIwNKX8+2TYRdUbVR+MFPvSJ0Ws5Dp?=
 =?us-ascii?Q?y1XfOZgrdK6uOWAobpHKFHczYqKk1MH3rMieN+7tROe9scOvCRCIMBFPt4vv?=
 =?us-ascii?Q?tUWNQwqdUGKCWNMgVddE32k6Ivlxu/8fUNMGf0O8Q+ocjxeC2aVKKxwkOUG3?=
 =?us-ascii?Q?2NrRruzEaXE1UZt8GF47iQqnUH+YOA1CTNn5bPH3n86YTCyO6B+hCA6bhQsc?=
 =?us-ascii?Q?1QVcLmtUYwkZ2h8BAYvI9IEr1l9AiyNrP8cTl7M/Grs+qN+0+VGKoUVPe6Mo?=
 =?us-ascii?Q?bG3FxNxVrGLmrvHLfv//oREYdrIKqsb73L7SE7PblPShji1xjxwnro94P+wJ?=
 =?us-ascii?Q?vReeT0eyezZpvFr5wT7dwh5OE/soDJkMxygr9zVBGAd3yQPOzin2cXiuh2Lg?=
 =?us-ascii?Q?+tYMyHY2yeyApgV9qTF2nVKD/TBNLKEGHzu8rwRAYI0bf3zdRuNnkhTEqtam?=
 =?us-ascii?Q?v8Z0JB25uFMmGqTu8hfQx2EI5MBnSKKl0Fw+7hylK1OHA3Ecr+Qc2FOIQAbV?=
 =?us-ascii?Q?qz1wrqGHvOAqmYS3rs9YYwLLNqxQGWGutMDb/EeRiKx00W+3Ch85hwcoUdAZ?=
 =?us-ascii?Q?fnDauO2mmWg9f5by4dbD1dJ6HVVRZuuriT/+eFMyBvkE4Zu+dMugfDTk9qir?=
 =?us-ascii?Q?vlz3dc04b7PMUBRX9QUTlbu8f9vdN8XXc64fhzHEtMGOkMXJPDgipO+oUPEr?=
 =?us-ascii?Q?Qt5uwyJ0xdeMp0w4LiBRFArIb/6QMl+Pyxz3/P87KlBnxMWV9K54nAcmQZKW?=
 =?us-ascii?Q?EyYHEDipz08hHI7knnizxNtVHetGIQnKAUkMIgEnj6VT62fpjwLsK7xL3Ih2?=
 =?us-ascii?Q?DnouCdDMTxJceoOPwzVfBnOjnGR1iOrY7AAId9ARtjSsnBFboRZG+v7e+tep?=
 =?us-ascii?Q?zV3DnpP9dyacdKdrXK8mHEevUcOY8qeW+C2/o+V5GDgi9YyDXWsBHrXXO3Wa?=
 =?us-ascii?Q?oyVvQ4W0yiAa5P8Dl4Y007qGPWa2/atOBLUrX36YmJ5BjFAt2dZMpUdtONrB?=
 =?us-ascii?Q?m7q4Y9cvtZ46DDz44ejEbHo5LHzR4x+jyhuTModpgSBBedZwTA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XczSHaGxrFsGthbsD6TN+kPbRJ7eriUeLa4rMNaMI3deiWouzlaZnCH3KCpb?=
 =?us-ascii?Q?nKRMzMBYjex4XOOEdMIiOmPTZ4b8EWObkylzZMhZg8HbpJsfpdzP+15ZL8rf?=
 =?us-ascii?Q?EeQzel3shrRvGvz0wasyaGxPn9MdsUtNrzRUHiNFpyXPY8E52CKm9PmOtggT?=
 =?us-ascii?Q?c1/LES88IaFvw+FXfa67plK2evCnn5uMpj0BzGyqDj/vIFAlkBdCmhgAlCB/?=
 =?us-ascii?Q?TmUnpEXKDefObS5UG7jctXVaqSwtZBI/S5tIj6QvNdYjX9luZNwhDP3NB52K?=
 =?us-ascii?Q?olqyjmIPrRDgMQeU8lh9f96GCoONbzKgSwOr75VpqqewqAbELDCPaNTR005W?=
 =?us-ascii?Q?LZl0uEakTsJDduscnE81ZEJLF1hwBpuQDJFfm33m2PFXdIAJkm5ys7uAZ71i?=
 =?us-ascii?Q?xQfI6nUqVTCWWwMNVRLXpwuUUetq5sugrBIr/tO8M153HGpiXS/XRTTUdnND?=
 =?us-ascii?Q?8vX1LdzROybqETQKl0cMjIE3faFEE1K8k5w85lWFtpqxx532essu6AIfh6by?=
 =?us-ascii?Q?jHYTMrXLwxnHrn52WpA1PSKpJ1r6ZeIovs9AoOhM6v/uj5lEEPs3IAbrOwrx?=
 =?us-ascii?Q?xqECyuLjZRsQ9MDvBrK1WansuhH+1RRmPhqtnQWIf3jgTNd7NsnJ4QTvsG61?=
 =?us-ascii?Q?GdnqQEeEOEHhZp1H7USrXNNGhk1Y93IKsF+ejWGFlyIVHqVSNhsbz1bHTpSJ?=
 =?us-ascii?Q?rkGgY635kfxObZkBiPd95qaaNfx8b//px2oOkLUsM5KgQRgQJ8IOzq20RZC4?=
 =?us-ascii?Q?4lpBVlLr+rQOuG3ZWdXQD1ce8SAXR/YFAVVAkSLOQaVvfGxQ56TGRxh2Zz8j?=
 =?us-ascii?Q?5SThrfHTCR9aVn9DLK49cOQZ6HO2tfNksgAPQvB5/ui7oa9yH8qleU8eTp1O?=
 =?us-ascii?Q?pSDaafRYxNx75/nJkDG1AXauC9A17oxlJiWGltobGcfSrud+GvVq3JdljT8J?=
 =?us-ascii?Q?JRkkMFYDJm9b6dlAzf4xHaMlNeNN2wZSVmf5xr48/PBNBFZXEWUBIbx/RWu9?=
 =?us-ascii?Q?56SZr4Es+8iTHO5C8/WW1mIXMB7e7tkFuoOi6XYITvwMZ3yBCyKXzoWkOdQ0?=
 =?us-ascii?Q?kagv2yctupHlObAtyAm5APuSP0nUNhtBSjeNixUxvCSCsEyW9Wb6Dy+j7ZWP?=
 =?us-ascii?Q?lvBdI2hTEIXeTDLwutM7R1aNPYUDy1AjPtfqC35GzHsr+jxwuZnHo1kNEndT?=
 =?us-ascii?Q?Zn4EPv4dGR8PkXQE7/ooae6fdBOqhdhEOB0LCVZkz3oJSsUIBQOSK2EiRPZ9?=
 =?us-ascii?Q?yla30ukSFSE/UkSOeMT5a7FnMWFq0RgXhBDI6kgzhs8ak9+kYxNf7u32uMMT?=
 =?us-ascii?Q?3rURMdu2pjmWfQGhKY4j0IS3ECwXt/TmWlR1f9zjTXkwcLlI3YA3hQSC30AU?=
 =?us-ascii?Q?5O8rey2eTWgnlePlKEuqAOA2KCDbO8bDn0JLMPzgssoxyo0pi6V5XTOWy7IX?=
 =?us-ascii?Q?jLDX5eyFyrPpY0M8N97R4x3XrLCDRep85iLTMYs7GEMN52Owhr3vK2h8U71w?=
 =?us-ascii?Q?Wxt4x3ogyRPRhCiZQPrrBj80jGZOQE+pXf5NZgZn+ifBu0zz7jYyvjZExg4G?=
 =?us-ascii?Q?Qr1fL6XbPY+sjVEEHVNnQT3vrsRRh9PO89fBbwhvVpQFuc9TXUyAVRY9gR6R?=
 =?us-ascii?Q?mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f20f5d2-ff79-4914-e4a3-08dcaf1f0e8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2024 16:05:10.2623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GPxHN5w00vKALJ2RHwTw+JAn8CXRNfmHm6LSTr6hhQHM55gN9PlJ8IQPI5Tz4Fiuw2TLHXpPyPLzqdC1q627TgVlo6horqBuAJqVmE9bknFwdnAG+9Vm7Ydpu74qK4D/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722182715; x=1753718715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wIhNjHBxUmxz1T8X1YNoPjkz0I4m6vaO9vnjCvgZU/Y=;
 b=QV5j86J7sFC+OY5fZxivyajt61fpxQ2tsBM8GmpyomWB7w7/0bQfoVpW
 3irJRQi4+wuv4m/Qj0eYPr3dEvvbW3fr+RgJWn/WmCO6iX9Ngm1kNPIlb
 ED4q8kQcseyGX3M/CIIlqKq7LGmgLcURBCQm9yE1j7flWdDPbMtGa2QwZ
 MNPXQrEW3uuohOk6jmN8bge4i77oU71PGQQqgkEwSpDm+xIYjUBqJ+W2R
 OY3FoWOORKO8/neWVON7o9gFJnH+g8AKFQGE+PrBpcuZ8i7y61jRWQMQR
 oqGz5DcPmk4hZVYbvlo03RLc8KnT1mFAO4wvAlASYfdBNjF1OfKBgbrTy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QV5j86J7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: Skip PTP HW
 writes during PTP reset procedure
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Monday, July 15, 2024 9:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Kolacinski, Karol <karol.kolacinski@intel.com>; Kitszel, Przemyslaw =
<przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: Skip PTP HW writes=
 during PTP reset procedure
>
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> Block HW write access for the driver while the device is in reset to avoi=
d potential race condition and access to the PTP HW in non-nominal state wh=
ich could lead to undesired effects
>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Fixes: 4aad5335969f ("ice: add individual interrupt allocation")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


