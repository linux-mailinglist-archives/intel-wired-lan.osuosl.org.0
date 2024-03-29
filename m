Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3729089130C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 06:03:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F4E260E7A;
	Fri, 29 Mar 2024 05:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JtXwlaKXPn7I; Fri, 29 Mar 2024 05:03:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEAFA6078C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711688607;
	bh=muPgCUdxLuQK/25v0I5QBWVfn15hmRIFHxGHI7ErpRc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7+lJnj64YkIH3oxsTiHl23U73IbNX/tiCZgoWqbRHuh59wbKybfVUotDZ+sAz5HRy
	 zOYC2o7E/imq6JhlapjycA8viELjBMmTiG4uk/rakRpF4Jjk8YX7DvixTPDJN2eig3
	 e8cyMxstzYqZs63xw6B7kef3kn1rlJxOOPxhcS7NKx9rdUGVtBZ6GKE6SVc7GifIZN
	 mDN1eCvgKfnqvZRgzQSKdIVfMet90Q8mCuZVjmJ9AblhQ1GoX/P2YbJKvrjtkNQ1xM
	 kYBxMbv9qWJykZgfRLi4KuZQbqT7rj0GsDHK3MmJs3xDCna/rhc9vEnarSZMGszSmd
	 LaPTHn7uynKVw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEAFA6078C;
	Fri, 29 Mar 2024 05:03:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5CC81BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 05:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE214826EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 05:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lkjazHD17qR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 05:03:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1CD7A826EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CD7A826EA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CD7A826EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 05:03:24 +0000 (UTC)
X-CSE-ConnectionGUID: Y1BCli/bRmyNx83jycVqtw==
X-CSE-MsgGUID: RmoE2Vg4Q5W/VHliJAT4qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="17502941"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="17502941"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 22:03:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="21582584"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 22:03:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 22:03:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 22:03:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 22:03:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 22:03:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNnfVsldrZ7NWEoFgbq4mhDyL31AXUZnIQojScOHZdzlXmA+sR60/I7N3PsROYmCDbOpPgXpOar8t/l4h11dh1/BT1ELZ++6gy4uifoFoYl+UBm+pmNC3yAUaLeMJ7RfhC+Nwf5HoyCgvuEMLoIh/+e5/FZTui5ZBSiLbkWv5uuf+1grkwKzIksnOrGv9EpxZ+TsIwdlVbxxJK422gAnyvk3QMPFJThjescfM+RHQBECMbeOlatW8dXlAgOTpbDi7FQx/CDhSpNEvhrS139ShmPiT+Xvgg50Q7m7w4SKtWMd872b6vtBia2P5G4/mkGULsStg+P3PAhhxlT1YXbi8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=muPgCUdxLuQK/25v0I5QBWVfn15hmRIFHxGHI7ErpRc=;
 b=aKA/+k3pu9ihbFZzXcdFDxGPuWz8CuGe4WJawOm0JuhitHzk9jI/VzY937xZp2lrmNNFq+rl5GoJOcAPRV3gv5hWSxrLij4Clt/T4Q9RBnKZMxJOCnDkQImPxzBYCx0ata+OkIRu0Wy+nLBIz/w6H2WyOf3S+W0xFDnJ9KA5fvQiT4aWE3Tr2yes08HJ2VnEE/+c8qj1i8QDZ1T0U4kNW/J1hhf2vGiMV/2XL5fs0GpU80JQd9xKg8of0EdI5KN0qI5tkr19is2OhPNRIGGs+Coga8gIiMvvS767PCrp7DEc9n7bCLdyuglwI9VEDcr6ahfkjm/ZqhBANtSaH8K1Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB5247.namprd11.prod.outlook.com (2603:10b6:5:38a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Fri, 29 Mar
 2024 05:03:21 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7409.031; Fri, 29 Mar 2024
 05:03:21 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: fold
 ice_ptp_read_time into ice_ptp_gettimex64
Thread-Index: AQHafws+G49Cr20BNEu7xoRbyMNNibFOLn8g
Date: Fri, 29 Mar 2024 05:03:21 +0000
Message-ID: <CYYPR11MB8429601629FB616EDC7CD2D7BD3A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240325232039.76836-1-mschmidt@redhat.com>
 <20240325232039.76836-4-mschmidt@redhat.com>
In-Reply-To: <20240325232039.76836-4-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB5247:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OLiAPTSqOWuhv9RO7kQUfhUwtzTcVslrYr8+DUMX+1uMwrDq/vB1ZVMYUpC8PEIgXm4WQ8agcd/zG76cWtxqdMg7Nh5UtEfn6fm6r597PtxUGojnIViT1oy2DJTp3oAjtnOHGuEVjD+q5l51R2poAoOCjUFIYcGU/fKS/k/Ed1QTKkyP8QdFan50l8lL/QfnVrNvtLsiQnjaWrrliED6/FW9GJVFA6QeViDSP7yEuBtOqSr/Fr4a8oK3vLWuNwWwvYd3XQJ8oX5zzdh9+f0R+bQtN8fmfLk9U+9wgWf9FSz8oxgYC+ZHpXDDn5O+/YbW96ZfoASjaYzXGJJsVmbvpEnLKEvYQU+LB7y93VbJRh++zqEwd7sXX6XgzY+t9lCtLLsX6eQB/8mitKMwoFlcyJ/c5tlM2G7aQYMdXjnY1pWg8HDgctF7/ShDT+G3YT0PuIgUctxGBJDlctklkLwVyCQ2LdtI0tmrM8VKNXsOZJAc1Ad0mokAmS7ki68tYVbNcn4xsqP87Cq9gx3PKtu9CG6avFh5itM1qJ/TeblLhckTvNa5+I4h4075fKSu2+2+ufXMrgshEN8IDk5WWdnQwvlXWY6CsE7lVelC1whR76cCWrvWUM5tAh/TPC8ZhmyXLqVkjTy/okT97LaaxndtB8tVs+jlw+w5TymNS/QXnAA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dLisPUEjTlPhZMWKavaHYnhQfuh40xoVRFf0X8j3TQPhoJZY1Pr3LLYtDqMG?=
 =?us-ascii?Q?/KBm+UlupU3e4HWWzTToUqSZvAc2VmYjdSknvjcp95JP4AyUBZDK+zrnatCX?=
 =?us-ascii?Q?3TJV+iiKQzLNzdFxD+JYPD/5AfVqshSsgd9fdJXilGNY1pCB2tnQGNln0L2a?=
 =?us-ascii?Q?JpoDnfILcQHXAfvYUg41amyDcxBOx9HwzQqi55mR88LSRQXIKL9db9Nn9Y6T?=
 =?us-ascii?Q?BGq7f8kxL7wtHmem/bD6A7PL42nP8RspkToUHZvO9kDmberp6RrIM0fvCLoI?=
 =?us-ascii?Q?w7gQCVV7Z8d5Dm94aqTzL0aovniLbtfllxxF0tyoF4o/RMTdp1gdAPEWLM2h?=
 =?us-ascii?Q?1q7/CbtEaHonTVHzCAu5tQp92oFyGG9gEcC9A6Lgfzhsej3yj9NqmEjK4FnU?=
 =?us-ascii?Q?gX9LNUH7mm9yd/yBsxMwzIdHObEjNDCkzkMAWQ+ahJc6K0HbmWjD54on3G6z?=
 =?us-ascii?Q?8CsaofhxUJyQZQq+LwjhTndosfrdLdZO2Qmd5h5gxQ8BQnMBhCvWQHnd5Tgu?=
 =?us-ascii?Q?Ju+4MzAGe8Jpx6rUTB236AOLBvqGvvvmlUNZzQTPGxi7qFVEXYYk6tkeluNO?=
 =?us-ascii?Q?eenBnoGB1f6RgX4ciX1f8y3X/hcj9Div35FqWAeK90wtfpisWiSmKlprMrDC?=
 =?us-ascii?Q?lAcxiKUttx8FlYeNvPwGq4EiSCAeGYavrBOiqxY0GCIA89CqclHEslQjzXnW?=
 =?us-ascii?Q?eHLQSw306/nvjaBPFCwdfcZT7sjx1JcGn/574K6wYM+kR2RV7JQ6Te045Kxi?=
 =?us-ascii?Q?X2kGiM/fzwfzwXpUClb3IpiIXdOxDIIrqDcDhKgS47kQkpTfHUqWeeRyqqwm?=
 =?us-ascii?Q?0VhoGq4dRD5E97JsO85CKx+6h3npeWyCDJ2RlQW5eqZ9RE0GNmZ6aT/VKQhc?=
 =?us-ascii?Q?kfN+ZFxS34becFRi3J5gi0lvQ0dn0PS2I+3r0HsX+32Mu5qrYxexHIblmcd+?=
 =?us-ascii?Q?jjDrAWAGhHaOwbrMNje1oaYkFXIUh6MNniInvY4fBKnKUJaMsumKilEWYLGO?=
 =?us-ascii?Q?qn9E/asCOmfzvah9ZJiZEF29GBDuz2QR6V6B8b57f3xCllypnKMoSf+9f8nr?=
 =?us-ascii?Q?CMYr55WPziUKey3+GIxJpmxRBdnH2y7DzOwUV8EjaU6pik/mlEq8DLoaTRkN?=
 =?us-ascii?Q?3MAfuZVQ4o79vjz7oDOi3vVwkUU6ob+cDxce0mSuoli852F3ItbXXTs60NuJ?=
 =?us-ascii?Q?ha+Clbx9kLNSRACn8i7hWErT81/nVyvN+bUHGQPrIJVAclquESX2pclTlR/t?=
 =?us-ascii?Q?ESBlxvt6SA9M5GCHmO0knVZfe8JDx0FJ91hUx7SbvmBtcr7kHwJ6ltgo+EKb?=
 =?us-ascii?Q?q/PLckNvVuWJHW3hIl63MNeHgOQV8pijHqNuyaPhjy6ctEb6H/0E1bAhqQdf?=
 =?us-ascii?Q?CLK4W+buFiwovY02bjg58CTorW3Wd4/tDt7iwzwaLGFSrNboR16lb1tdIhxN?=
 =?us-ascii?Q?XPE1TfsTrBVDcA7lcbIAn1btf49WDAbfIq0EPSgHb6x9yMXfSU3HHMHubMdX?=
 =?us-ascii?Q?v/OF7gTK73xEiblLpSG0Ce3txIDLncOCVoflaAHj7crPA2/vBaqtD4oXRCMp?=
 =?us-ascii?Q?SbG0Xlfwl3l1o/2rl8NoijYfLGA95Kmh4rlceXYAMXtXUoJKnPW7vPCZUrYA?=
 =?us-ascii?Q?SQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2ec9e80-3b53-4fd3-c7c4-08dc4fad8e10
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2024 05:03:21.1058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HfiMul6PKgvIIGGoXdC7Wz7YyZ+PopO8O8zLyUVtn1I+RSyWkw/YHMV21Gp33Uddh0AEax59PZwsBYHrHS9akF1zOKhcEPTsc9DENEeJMwRQDmCVIkCGuFPCBbMo/U2X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711688605; x=1743224605;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aFL85csqpb3a3+ir7eu8K3a3iIJjADmR6PFrlc9WT1o=;
 b=AaleNU/skmolkMro4TQ5MXanDJjW/1iIrovvNtjE76/A74/zn5wBvMCr
 vkUISxQFl4CluNMU6rqGyKMSoRIEglPEoKSdqRT062zZl7Po0jwz/xGke
 a64u+2OKBXMn6RIvTvpkql2SgeQK87FimfH3kpAUs9lZucCaSK/31nLpm
 8DxxDHQVJaOriLijp3QFvloGGx3tntsUYwsS1oFHFZHWZ/4ZPOjq2KagE
 QMkzcIXqi+4YZRmUROB3YeRNMuzWhIf4HZCUUA1v6Y5qMRVzid7bHzubt
 rDhK0hQIc6Tz6m9MG7zz/8wtpFXZedStBca30kMpwe1aPYYe2jrqrJlmn
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AaleNU/s
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: fold
 ice_ptp_read_time into ice_ptp_gettimex64
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Temerkhanov,
 Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Schmidt
> Sent: Tuesday, March 26, 2024 4:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jiri Pirko <jiri@resnulli.us>; Temerkhanov, Sergey <sergey.temerkhano=
v@intel.com>; netdev@vger.kernel.org; Richard Cochran <richardcochran@gmail=
.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Kolacinski, =
Karol <karol.kolacinski@intel.com>; Marcin Szycik <marcin.szycik@linux.inte=
l.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw=
 <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: fold ice_ptp_read=
_time into ice_ptp_gettimex64
>
> This is a cleanup. It is unnecessary to have this function just to call a=
nother function.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 25 +++---------------------
>  1 file changed, 3 insertions(+), 22 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


