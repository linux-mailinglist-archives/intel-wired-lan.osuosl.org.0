Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5900AAC0065
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 01:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 079EF821EA;
	Wed, 21 May 2025 23:08:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4QCHWMVb6LRE; Wed, 21 May 2025 23:08:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8403F81FBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747868919;
	bh=dD9mtT3omzsleyJDXdGSdJ35+EpzmBjloud7u1ipiRM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uem1QomDlHPRhrkf3FlvXgydK1ea8NUJsGYmTcUyefyWJGReBD5Bvag8FuOHikUIo
	 YuNtF+CkbxzYSavRo+LTa1kBFzpU9+KBsstsMl3yTgAsDFVn6lvlml/QAGS36nut+n
	 C/GM/7v8vj025vQCgwb07rplr/yt6j3Om5ghMZ82Fsm5rky5MmldoFnLt6dU0UTyqW
	 dBA8PkYRiagSKQk98gvNIDiV5JUhjvXLj7aBV8ae3LydKdK5r9M2iQ1lGtHrc1wv9v
	 YklhgmY+WQ2Yldka333goHjnlIFQHA4vtOxOPzx0PTpblIITOqpx74m0A5CTqKn6/0
	 Cv41+ICaoKY8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8403F81FBD;
	Wed, 21 May 2025 23:08:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 23B7617D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0883C819CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:08:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxGrW1QvOPse for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 23:08:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5D89581934
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D89581934
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D89581934
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:08:37 +0000 (UTC)
X-CSE-ConnectionGUID: yPw6MMgkRsynzjo6WyV0ww==
X-CSE-MsgGUID: J6Eu7CF7QYeY/o3zO9Mk7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="60509719"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="60509719"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:08:37 -0700
X-CSE-ConnectionGUID: PQI9aYi8SYWaFxoc+ZlHUA==
X-CSE-MsgGUID: yiELT3HqTuW/BS43uBa4PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140142534"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:08:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:08:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:08:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:08:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eF1++qecLKfOFBW6T5S+oLgVSQ3upWz7ufqMsqmwliZhdG1l1y2AGvy9Vqs+zu26UfvIIZSAuj7Qpl64DsZ1C6dQOPfCeh6sO7khgWR66hQS1Yv2VutaX5kDL3kvpRSkfsw6yKD4cURG70AaFMSrUMuZ4zKaK3AZGCcT88cNHKyyoIqtKyTFq3wiAOWCNNtJZA3uKzK5QwlvSEGkPu5Ye24sgCgrs9pjM6aBYVv9ub+8iSBHvcOo1Dxs1Jt5DRBrpVy7BzRxIzeK5PNNVvhTozXiFpgE0LkN1wPU0LxbbFcC2awCOlER5DweXpB9FYrujwBA1cqAWr4gSVC37aRlCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dD9mtT3omzsleyJDXdGSdJ35+EpzmBjloud7u1ipiRM=;
 b=bVLAMb0Yn6Vzg72j+y3sp5seapzIxy7WWWfxb43ezeEMOSYNEHCut3mpgdpLp0Q5k20MzoBuYpMm73TmCCyjFPOld4FKkZTyDpj8BKcze7CYn/+sFIG+x+jqxevhGZusPp84bfDjnvRKmSWyi5OYVWzvVNQGaynGKGzI+lqhDorZGNMbgRwTeiKauZrPrImRt1RPiFMA2OPkel17cr7eRZtgsgiUMmorDb6pN/GxP5RXcvsWgD5MEMGl5wcIMH1gUy0jRf/9vWgrPJaXH6jZUIUy+Du7+Sm1itZV75CNaxnbk3W8ne4SJJQdrbUg2ZZUjB8Rtc7CYCF4gt0I2miY8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by BL1PR11MB5224.namprd11.prod.outlook.com (2603:10b6:208:30a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.20; Wed, 21 May
 2025 23:08:05 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 23:08:05 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
Thread-Index: AQHbwGNcpRnHAVc7gUaDQiO/Gh6VabPdxcUg
Date: Wed, 21 May 2025 23:08:05 +0000
Message-ID: <SJ1PR11MB6297ECF44A1B0738F39C26BA9B9EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
 <20250508215013.32668-9-pavan.kumar.linga@intel.com>
In-Reply-To: <20250508215013.32668-9-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|BL1PR11MB5224:EE_
x-ms-office365-filtering-correlation-id: b75a7e2f-28b7-47d0-38cd-08dd98bc57ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7CbJByqIGz/smg8ROj9yFTEr9gum691+aVPpzps2+plRvWgNuXFy0hcKNF/k?=
 =?us-ascii?Q?nkktkxe0ASzT4Bq111Qdv67EOOkvPqlRZbfs8F1kHIxSFWkHmct9RSu8JWAw?=
 =?us-ascii?Q?f6NT+CPLt11sBzKNICI8EAN4Wrw0KTnfLr3a1P+GdIo6pLZkIDPG12rRS3ZJ?=
 =?us-ascii?Q?Q9EXEj3jOwlI8BhwkqyHLuTtDee0o2YFl5uH0QuADxlQ2eZ4GfvSWKjrR4J7?=
 =?us-ascii?Q?jNtLH0TN0ZHRPOa4IrVUJVo7x6x6x/cG8wcGUEYfIhGu6UpVPvWE6TD5LK2H?=
 =?us-ascii?Q?G4+f04ct2UfATiJWpOghhrfrkl6XgvzZRw9wO7NwngdX54VOAPchERHL2I4m?=
 =?us-ascii?Q?YgDLxMwGFFIf+6MoNUKvWfAm0StMJ3f1Vh9qPtLx5Z+qBg3Xead0YPxml0Zc?=
 =?us-ascii?Q?tZHiRsOnjhQPuYvvyROkzqRJtwd9ZfBTTPVcWcR94G/6SdKd+dfv+p7Elxqt?=
 =?us-ascii?Q?33fmspHzlHwB3T+Yi4In0pHBh98IaxoEZN6G5CqTzYbcN2u/+lkvaibo6B25?=
 =?us-ascii?Q?/IZZOTAB9LwxHHxnKMqmLqlLeBDd8l6X2a+fGHYIN/anSte/QO6zawlyMCkG?=
 =?us-ascii?Q?azMtL0y+gKeY9zaSGHRPDmQ6WZ1GY0h86XWGdqxU/4PM+RfU9pkfKu6lsL+7?=
 =?us-ascii?Q?UHAvwdZPvgfEo76ysyVqRKBjZ+BtKWvj3oVo1O0ssz51X3/4BWXYCzEMIDfK?=
 =?us-ascii?Q?qFCmyJ6G2ss6lI5A8hcM71xoHej9GpCmkzWtkSo7GBtNGPBdee+/+YK6X8tW?=
 =?us-ascii?Q?tugTJA+xP/3Uqs+bYYpUrXXNK/4GMwJm0+ug2xIAj0nAp3LCkY4rhJGW6sKP?=
 =?us-ascii?Q?Oav/Q4z75G+xZXG9DCU2Jb9ROXTOv40DxULwXy7PFwrqkghDVhmEYppxvl9f?=
 =?us-ascii?Q?fKEQ7Oxx2BK6h8RiEhl2aoZvpddhmmwvXyT5UqtLXXA1zz1RVGhNO+2eKRQL?=
 =?us-ascii?Q?XxUKtxTEJYxJMOhpkPrxHxsL8shFQBKDZnfkeWHmd+SoJEc1HyjhmSgYzQip?=
 =?us-ascii?Q?1Kb3yQuOCL/s6MVUUtCwoFx5JrWp41e7dCBTHJCmiu4kJ5JP0gvUv+7qNYkt?=
 =?us-ascii?Q?YuPgShs4F079hgPX+C65smJn+0RfjD2DVH5sJWpQ6RORgmmEydxIye32KrmK?=
 =?us-ascii?Q?9u/Slz+xXctll/FlXhl7U/exFE58gZiKqE5JK5NCeNHS9hXq914789noNqzl?=
 =?us-ascii?Q?LgHWA0whQZjRV0a//QbICx2flu75aSg3TSYsloXIiaA14hEFU3VRxR6lxInp?=
 =?us-ascii?Q?voqZbWUPkRI8r4G3iVTYiMbvEA31TfhV8eMYq7f6JB6UYRQqwI2mu6biZ4g2?=
 =?us-ascii?Q?qB3pJ2HrtL1tv68m2+5q9NyOLykfDhXAMWpS1RGgpBw56Ibg6G3o4CE/XV05?=
 =?us-ascii?Q?zrDXTOPYkC66osFo3GyJIobwc1bOZXWGzzl+ox7Q9g97yrFDBgTJvW+imKSh?=
 =?us-ascii?Q?oZ39xzhpXai1l1zEU91sgWK3rQMsXgKK0NTeF0czDhBhh+Tbwp1nyg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RxhkqkboYYdzBkaBFY1lpO/tGA+dIpfuSElENWP02NiA4WZEPowlCWDInTxr?=
 =?us-ascii?Q?27JubNNL0CUAOWh5HCmeR3sQ+f0na83tPk6pIG4gO64NRxIsvYehNqjrStF4?=
 =?us-ascii?Q?4HNSUJwIPOFRv904XEsgRtI7amLWlaQXkxIb1KXe5+Ir2SPudaz5kBOuRStg?=
 =?us-ascii?Q?/Ymhjx5DHZ85CM++bak2TxjODLu/vVHwlZXBwxZSP0h7Mno5B5aG2b/ldWyD?=
 =?us-ascii?Q?lqU4ua5cAJl9N2HZp5VtpisGya5Gw5zDHxChg0RVUHz+afjp4I/O9+GdLbyW?=
 =?us-ascii?Q?Ymufs05U1WtySIMPbzkv8bmyA0O9ZugDzJS/yO1n0EVJmX/uJPHRoXiVuJig?=
 =?us-ascii?Q?VYHzRvXSlLfUy4w4XfTCKtVa9h56JVTB/44gVLpmmmGPl0JvkrYjql19zHSV?=
 =?us-ascii?Q?SRkVq7E/vJ/GIB/MjQZ/cW3m9XLlhoH4DGKiXS+mTyMpT5SySNit2Azvffjs?=
 =?us-ascii?Q?xsre62EPGHGW0pcwNLQdTZib+x5Zhgfl2e6+yeipYojY6R2FJCbndmzw3dPD?=
 =?us-ascii?Q?PhoadYjCg6GXDJwqTro04s3tQJ8dDm6AnCALVZhKcxgljh2A19uLt0kjrtD8?=
 =?us-ascii?Q?MfMA23Im1fxUeF3VVx9FiPSPi2cSHwTEavVJb1C6sSAXwUn0aSqXpCbC+HG4?=
 =?us-ascii?Q?vQFyWktZAnyn0WUC7H7LxRlyY9oRlDYRRw8v6zw66bXNmUNK7qX7RVyyzK2D?=
 =?us-ascii?Q?/BFlr6lgsUyJXAmK12aK3h7/ukKHWZSgiUv4ns5RcgFDSCJ1jPnA2qEsurML?=
 =?us-ascii?Q?TKjIJuF4dUNdGBk7jTR+0aVZeh/qcGsvG/xc14l0IxPOHfki3QAt7y+PltWU?=
 =?us-ascii?Q?W9KQz3RExlNNGZL5wued0QIZuZhhZM5fHSTTgcj+FYIewWdwZ1yKrFGIfyhO?=
 =?us-ascii?Q?kFaw40kPXKSNE2vlB/2jNJZmai3o94qJqbRyarGvzjDPw1/z8poErm755SHO?=
 =?us-ascii?Q?ie3sH95ybdmWbhSWqU1Gp3jhgpNErf62RjlUvnWzhzOGEApAV9ouh4eFmEXZ?=
 =?us-ascii?Q?KXisIoQRHrr80/g9sVP0HL0ICG3VqZwCORGXRcEFdBBKJ2M+6vxsi+bPp7jP?=
 =?us-ascii?Q?Ca929piO//I8om5xDFTE7wcbAbB9jcyWxKUjlQW8hg/oxrPI8lyuwYiPmKhw?=
 =?us-ascii?Q?7sv2awd1uknkqgsD3XtVHYyvidIEZJRzfbTlFA8ZnDB1gB8gV0pBrhuR0M1U?=
 =?us-ascii?Q?BW0A5TrpjG/vDBuVe8xo73cmtAWtxJFeagGnbP5VFyjuP7CORkb2LjnHqBVM?=
 =?us-ascii?Q?p80SKtq6CcI7zMZfkrCt1NmmbrYn4SzO378fvmzwfmu/boVxlYOcchD2dBqT?=
 =?us-ascii?Q?wqH4GZ5wauYXFrXLJOawvm3P0prXSbgSA6BQZQCE3hVW0ak1zHeTjGSEaQ26?=
 =?us-ascii?Q?xh1Y/e3FhrIrr12vvAgqDOVI4hq9I4VFpbIhFw5WzwCqFDhuN1CMYczR89xT?=
 =?us-ascii?Q?ZlwvxOuyqI/2Z8bfafR/AOriWXfv+F/4eIgTRd1AAreibfpij7bjCejlSFAj?=
 =?us-ascii?Q?RfDB6rSIQcn/UBPcxFAuRH9nDZfqnpv+mpfJ42aL7Uw7kTZDbfYWtBhAIDND?=
 =?us-ascii?Q?TIEOhly3FAw8JtdIQvPsqdDrNzI1hOmhos2ht4hU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b75a7e2f-28b7-47d0-38cd-08dd98bc57ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 23:08:05.2787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G/D945VZ1OZTcJWS5k7ry8EJSRbqcyy36628AaFlJOsc5fJVYG50a0exIwmNrDglqw7WsNtALv3j9R7CV7dRwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5224
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747868917; x=1779404917;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dD9mtT3omzsleyJDXdGSdJ35+EpzmBjloud7u1ipiRM=;
 b=nHlJYY3N8h2F4VYgy1LzOA+qbG4AfIYoAoOj04H+A+ELRg5pXJHmaM6s
 iNaMSXR5ZNzlOEYPHpMmADhkitOreaH5liYzv0RQpjOmtF3tfq4Wy8QWK
 T+WqTT3L1+bgrz48IA+u+ypzhr9WC+SYJ70bwuD17Yr5Wr4gASdmphB3V
 rwI7g6/x11VdoznzGgpC/QM0DuCbCjfZy65j11aEAzaPrwKcFXn1T0bJ5
 OBaKbsTHoW/mNnrJpC+Xw1H6h2dicfr29tbUzFR7KaDs1Uvs2lbEByD2z
 0g7l3XVTN2nRBAP0zDXTSgh57EezY7LQQxHIZDD86rtklGimuQhnjaOP3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nHlJYY3N
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 8/9] idpf: avoid calling
 get_rx_ptypes for each vport
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
> Pavan Kumar Linga
> Sent: Thursday, May 8, 2025 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 8/9] idpf: avoid calling
> get_rx_ptypes for each vport
>=20
> RX ptypes received from device control plane doesn't depend on vport info=
,
> but might vary based on the queue model. When the driver requests for
> ptypes, control plane fills both ptype_id_10 (used for splitq) and
> ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response stru=
cture.
> This allows to call get_rx_ptypes once at the adapter level instead of ea=
ch
> vport.
>=20
> Parse and store the received ptypes of both splitq and singleq in a separ=
ate
> lookup table. Respective lookup table is used based on the queue model in=
fo.
> As part of the changes, pull the ptype protocol parsing code into a separ=
ate
> function.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
