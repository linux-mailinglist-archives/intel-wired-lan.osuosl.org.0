Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B05538CFB4F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 10:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B84181D5F;
	Mon, 27 May 2024 08:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYv9MMcZMK-J; Mon, 27 May 2024 08:25:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0536781D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716798333;
	bh=s/rCEw4PdWYc7UZudG2H+l6eo9x+10Tk7PbKBm/qUto=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L8CHTlqicHOC3Xi4hoYhOu4URIKNTEBx+FEqJyAA3cmrzzBFOJihb+mULWpYELB7R
	 EuE3yFVKjeoG8L0pKyguIoA0jChlxtrAsrQeZ9s62p3NlG5EaE+7meMT5HwelENiDT
	 h72f3ycNxf02F1vNtveSawwUgT6ZPlYRU1exEFRQC50LBIHjF7kmMVTytToHltKFO0
	 cyap2GATnf3fOyh3FGacqFtA8TbDoDJGhULOyJVvT3+0kEczNvra9tjCUZhuuz/BoW
	 EF048Wg/7rvPuYmqhznsq8dcJ0EQ4Y4UUTYw4CJG9PLt/DZwBW1rQDDH5BlJU2r8/K
	 59J1R93TtMr3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0536781D72;
	Mon, 27 May 2024 08:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD2531D19F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 08:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4A084064F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 08:25:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pG-uigt75LFZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 08:25:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7350B400E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7350B400E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7350B400E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 08:25:29 +0000 (UTC)
X-CSE-ConnectionGUID: hOVTCnopSVam0xr0wcqZQw==
X-CSE-MsgGUID: kbQorXSJT6ywTOCCQiweFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="13277047"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="13277047"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 01:25:28 -0700
X-CSE-ConnectionGUID: CT5sZDQRRrKyWnZInsxxUw==
X-CSE-MsgGUID: RLX9fWjPS0enEkme6LMvxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39462111"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 01:25:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 01:25:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 01:25:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 01:25:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 01:25:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M7fw8vfEYte7g/8JlD5eZw/YbRVzSUi4ZgOMfoIPtcXZ93D1GkI8TPnMVJbyI3E1Hc1LOleu8naiEwnehE/aeRyIM2cuMMeZCOzIjzgHdU6vIOfaurlXxc4R2XGiF80vbKnumfAV8I5JispP5EWUrIfL32AMJP81IDAWW4u1qfHG+ctqNulKbNtClQvbw5jSXmw5BbUZ2DqIwjd24g1h5XNQ/NjDf7OJmODEnPJxK3Vg/Ljsm16+YZFX3/Mc3mHRbXSq2/VXQKCEFzpmpUb84JEtm3maPXEaFaoXkQY+GnEV0qIw03sKAvCSRgyvMtWQiYJNty/nd3tLYm7EO1e5JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s/rCEw4PdWYc7UZudG2H+l6eo9x+10Tk7PbKBm/qUto=;
 b=ZqWMB21WQJofybNBI8DuA+d38NEsHlzUSxLTMJ0m/7ISGRmdmZoPq+RaFbcPnpPtL1FM5VcWHBObp2o2DlzihwvZziLel2fHkKrT6JJeKB9f8crQQwKy03mT+GvIgNFoazX3HcQMf/QB+Q/ovbSPfHn2uxJ+cY4lC1Qjlm2VY6n8jnJavdLoictmBVIEl7G8jdHJYKmCQHkDB4nvzCoUdGjEifnegpwsNSRLwcjVOnGDgn4RlGPKBxxFPFLWqWMEEHpmo4bW0qYL6g3zWjwriEWjvzKHj5d50s7/dNLbwAK3eWkVhrF3730Qa0FqmwnTu7wNJh++Hl+vvzDeuq1UWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7902.namprd11.prod.outlook.com (2603:10b6:8:f6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.29; Mon, 27 May 2024 08:25:25 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Mon, 27 May 2024
 08:25:25 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: check for
 unregistering correct number of devlink params
Thread-Index: AQHarVRsVIOYFs9eqE6qmI4mNb3nirGqwVlQ
Date: Mon, 27 May 2024 08:25:25 +0000
Message-ID: <CYYPR11MB8429C231F5AC5FB3B1880C33BDF02@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240523210424.2883960-1-david.m.ertman@intel.com>
In-Reply-To: <20240523210424.2883960-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7902:EE_
x-ms-office365-filtering-correlation-id: 52a645e6-b41e-4579-eaee-08dc7e268f15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?BM4fQa20ouPnoI5Q4haf8so+O999PQPCZWlugRjLcKNi5wDAYLreoVSuala7?=
 =?us-ascii?Q?BcAWyR/IVdNH9Tl6ew9aoEL3SwcP1XU22vKJgBXqW+M7csCWlqYviifh/ChT?=
 =?us-ascii?Q?GC+mIVbB89TdO8knBBwydVE9LyEHG9kI3GXInIhVadf8ip8T/drEEn60jU5X?=
 =?us-ascii?Q?9FRAycrpKyL16I7h5ID4DSWfGpUVhKYudz8MG5qi9cfwKJ2G4qrJlOraaau3?=
 =?us-ascii?Q?uDfqYmb5Gddpgbg5/6ezZoKTfdyjCg28DJFd9Cs4mZny7TA1ASq2exLOQZPG?=
 =?us-ascii?Q?KnsZi7hyUWZ4Awt4/vPT1zlZZ8S3YYkRnV5I0oXqax/vCSxZs8HJUwBfOfaa?=
 =?us-ascii?Q?awJ86nR1q3yezJ5y+VZZDjtyROsXL99iZeiR4y5jOYSdFalNBo6tt9LUHk41?=
 =?us-ascii?Q?5PXZFDFKOnbwxuSavNAk9evB34AgxaQmzaQk5Ofii8Uzc/0kbsTEffjsg4cm?=
 =?us-ascii?Q?IFC//+J5P2gZZrLT2ume+5uou3CBVIpPdiESDBuGNCjFrlTbE4z9g2gybF3Z?=
 =?us-ascii?Q?cTc9+IbGMWHXy60Tr9Mvs5gY6TtMepgdF2IcEB3cJyPgh+qfVPoL3leG4p/9?=
 =?us-ascii?Q?Y+8ucwDYlciQG+9GbST9AE7zNPM4XEzthpNmR04k0JBdDbZvSG5htNFwYvCw?=
 =?us-ascii?Q?oSedrbquchkWeBEKb5KnUAInxay7dltuSSOivlIG/KPl/MwG69ndgIHknF0+?=
 =?us-ascii?Q?AEklMJAY5V9cJOJ+7ZOWZiZk6YjdSpUdhV6LkHiV6fXwWCTLlD2dB/sHlHqJ?=
 =?us-ascii?Q?xFd9VJH0+TalLbskrUNKKzrpn5kejFyMkahx5fdPaoCZu4X/koZl+3npQt9X?=
 =?us-ascii?Q?Z8HIM3uTCuqjtX0b5FDmIKSQQ/qzfBG0jb7/vi4lp9vwRNbRAQksOaLj4NqX?=
 =?us-ascii?Q?Ekl8nWd0c+kKHAZGOHwLUZ5adz+GPXKIJpCnbUFdRmw71gXMWBDPS2SVpoIS?=
 =?us-ascii?Q?ZDzO2Awlo3CtmACJ8fbv6ypkSM0pb2wdd9SDphxk1kLnP11vw0xrCzg1/JnX?=
 =?us-ascii?Q?c5gMwZ3UH8XRvueobfjZte0Ic/XQBCkmdAjl7KkU3zBe23gHBDrC8SMkvIOt?=
 =?us-ascii?Q?INv5n4wg9sCnjCBtyr5pmt6xT5Mf41NVWtbMIdM41TykIM2AEg81jUWDakb/?=
 =?us-ascii?Q?Ffbvu2FC0iR1hJl1Oyvsf6yCHdBTubxQUc3RKk2G0BS2TxNqI870e50ivp+3?=
 =?us-ascii?Q?tGEuwVVLK2pNCcEPCk5zJYQs40NbBdmtlFE5ekLl6xEPC0UeIPfiIhkgzLH2?=
 =?us-ascii?Q?Sr916hyhLIrUB9K2GTPNU/WFM5nFHLfjedrP4qphdMzj0LDd6iQlrsI9WHoV?=
 =?us-ascii?Q?i9BaHik6MPUTmhf4SDaVhX+D36omRu/e+Qtqhhcdqfwdnw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NwIK9HMmVWnIVQmE5v/DSMG9i6QUusQM6JsXE/MgkdulJZigkok83NBKGW1q?=
 =?us-ascii?Q?O55LicXLJjpX65u6+u2GJKAY7PTIMOmtVNMdNRMzTuYISOsYCANOBVAVye4S?=
 =?us-ascii?Q?Zb3c64F4vXpOtWE4b2BxhWq0CiOwUoewl7TM7SxvzLIo9xvRdMCCdooYkVRV?=
 =?us-ascii?Q?k/HdkS+sSX2cpsK9t9Y3bhbdeD5U2lvBMkHK2ix7x6bK8LeeU0Wq0t+rm81Z?=
 =?us-ascii?Q?CKGoCRrKTHn9JSWK/Rk+xK0uOxt/MvqKkG4adpNyYC8D/8aabS1ibZXx9Odv?=
 =?us-ascii?Q?hSvnRtfC2m95hhiLPm3mDrd/SuWB+h2f+oT1axlO4zmtyGansvA/7h+mrxiA?=
 =?us-ascii?Q?sFwMlXwFz9g6SRS3UiMpV+4kj1/0a0C8Na0rPJ/J1aWkZNb++rPNypx42kFw?=
 =?us-ascii?Q?yGzzZukxCziknI0E2ciCRw+p48je2ukdbNnLciWBU6Bb87iCgCheJBkOVAoC?=
 =?us-ascii?Q?aOtA6+LxJuSNTOJfG9WIBZUV6ATkvBbFzDgkeELt0O+p8tvnDvoOUzxYRi5W?=
 =?us-ascii?Q?SnXZO6uxepCFK2WKEr5bw/oNP+BYHGyqReC2iY5++cmAJLeAKyLJrEYbHwQp?=
 =?us-ascii?Q?7UU7wrka8lXZcPp9nlLb7JctWHsHApZXSURkgvGECYHRSsGMJhP4CQekv99b?=
 =?us-ascii?Q?+h+1ot6M2+462dTeWjz5kFi5rx9WvaWWON5upK4/s69fe60tHgQu8a4Auo0R?=
 =?us-ascii?Q?4uep8V7HWukomEs++1ezZ/VMs/laBVCQ3F7BLZr6IRok7Q5EwPSZHPrG0Xl8?=
 =?us-ascii?Q?n1bPnO1R11iDq/oQIb/bfPClzI91+Tlyy2uj5RTNHul4Pke7KVf++1mkK9Lx?=
 =?us-ascii?Q?o8+/UCNJIWYdVgWNWlIF1WKC1tPSYZXzrx/JjCF2QEhYgM2zuNeKWJFeVeOy?=
 =?us-ascii?Q?90da/NJx2Dz7eVUmB9xVfNOQ0xxyxvh44Q8oIUTid7sHHg8ZVOPd8htNBf0O?=
 =?us-ascii?Q?kzn6lwPf+wWgvmyRWbbSNb8cU6Oj0pxnV+hRvxPXy6t0mzHgC76GrBnSq/lF?=
 =?us-ascii?Q?w3jFw8muNmowp7yEEq87x3ln7hMn0cgyHp43MRnIoQzEdRyNS2yc16hduKSX?=
 =?us-ascii?Q?gGGH6g/atNFV+quxsk9uuGhZL5Prs4fbSXtcpzd8ZNqjtlOZs8MSrqrm3/Zd?=
 =?us-ascii?Q?76KpIm/ZJe6bwCMei7YUArnwvG+TD1c3TvWiskiuNeQ5AdiAXOEMP2RJ2H/z?=
 =?us-ascii?Q?cJtTG8NM7sYYvfHjqMGuhsnFYIK3ZaPb16F/45OW/W5o70qJT9ultajtsXkd?=
 =?us-ascii?Q?UNnTA7hc2K/ouJi3QFfuvNgAMMCsOPPGbF4Kpa8PmkTDri6jHzC++xXkWmKy?=
 =?us-ascii?Q?Lt1T1QUzftTQEtlk9P/RHxDxFW63RnB3HdEF9IosB+J3U/U5mHxx4+qMy093?=
 =?us-ascii?Q?IgN0qUUVKeDdn5+8r2dTMFiC++oQJKMcFCvdyOZrfKyox4Iepm4PPSkQGx3t?=
 =?us-ascii?Q?DlaLlfjsvMdgexPLo8le37HxzC7vYCaoSW4sN2EP7ptE4sKhR2h7KDoxTCnz?=
 =?us-ascii?Q?vhFLMwtNkrYKj7LC+UR6MFYUsboCc+Eh5WSbRFxlHo74mDSqIoDyeNrPA6Nb?=
 =?us-ascii?Q?wP2ACfqme0ZuxEMVSMtg1ZKZbq2irPooAnaKGdoEksvwXYn6aj9MvEqYrO/O?=
 =?us-ascii?Q?ZQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a645e6-b41e-4579-eaee-08dc7e268f15
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 08:25:25.3814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aykFCmnC3ItR4K1n+AaCWqZfPS8pBvvQkKCLzy7rdSzff6kg18gYjZcuGc3/mumhO9gSa54lMItVI1YcCe6WnOw90mhjuhDLMmtnxnzcQN5Bfoh0riHZ5FonMGr+lx8+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7902
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716798329; x=1748334329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e9rbtgf5S1p02YvxEVC2AOPtX6v95YGu7BJuJZLf4kQ=;
 b=aPqG2XS2ABW7VgxlKPLQCFSUZVQ96Fno4g2MwFUWEqM4ru9JP4urZaZc
 dJZo3X3qZpJWDIcKZ+5Bf74Dpfb2iv5eEAVxx2ebHzE/xlaZZKVA/En77
 La6vwZA7TWzTMi9S/YeKc8hm94FoBERMH6zS7tS+ENgUdCYs0tKPX+rP3
 kL5Hnz8fFz9mlNyQ4KmI0RhhAh+8ehl/v410mMuV+Ry2Ar2FqrKRW5JWS
 6RijBo+O2fAUyK7ZNgmptxqthlYILIDJyHNEXUcHOP4m1wu5qZTWGLfRM
 BF3QdJeeNagn0+9+ga5g6bMaHSrp4AuIbbGgzZK/zJlQFd0S7STMlIQ8s
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aPqG2XS2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: check for
 unregistering correct number of devlink params
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
ave Ertman
> Sent: Friday, May 24, 2024 2:34 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Czapnik, Lukasz <=
lukasz.czapnik@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: check for unregisterin=
g correct number of devlink params
>
> On module load, the ice driver checks for the lack of a specific PF capab=
ility to determine if it should reduce the number of devlink params to regi=
ster.  One situation when this test returns true is when the driver loads i=
n safe mode.  The same check is not present on the unload path when devlink=
 params are unregistered.  This results in the driver triggering a WARN_ON =
in the kernel devlink code.
>
> The current check and code path uses a reduction in the number of element=
s reported in the list of params.  This is fragile and not good for future =
maintaining.
>
> Change the parameters to be held in two lists, one always registered and =
one dependent on the check.
>
> Add a symmetrical check in the unload path so that the correct parameters=
 are unregistered as well.
>
> Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
> CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>
> ---
> Changes in v2: break params into two list clean up variable usage
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 31 +++++++++++++------
>  1 file changed, 22 insertions(+), 9 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

