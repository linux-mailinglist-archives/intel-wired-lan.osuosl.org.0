Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E70A7BB7B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 13:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D3F881176;
	Fri,  4 Apr 2025 11:25:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eKic25xx8j7L; Fri,  4 Apr 2025 11:25:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34783811C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743765913;
	bh=cxDwL5VUlUKdJVcazrlrHXhOW3wLFH9dcyF17tfG6VA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tTLdfXfMttmZcBwRacTEgprqX/hrEU8ttvUvtT1GJ4TOXiHFNLQcuyjK4EquuU61v
	 pxKTkfn2QF54eqM5n4bkzZXZf73zrpi8Sfo73RpH7GdUHUW/hWfLx337hhPR1zUuvk
	 2dIINnPaXM05z0QDNjw0YNOIRpEw5hvb9OXWkjPFs18Ha0iha5SVDLeH8ZkmmYXaTl
	 9MSglD57G/pHmLXc9OYuDPj1VF6xx9D8NRSvV1LhQzTxvXqpy0/yFc2PlYtEXuB0Bo
	 5VPMtP6afYxe9H8rE3ae9fyILhMIaGAiLKVQ2kdRUlp42jxo39AZ6cnNGPRHCbl5DC
	 q2e1ga74ueqbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34783811C2;
	Fri,  4 Apr 2025 11:25:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A23691C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 11:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94075606EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 11:25:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-nQTVFYqXh8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 11:25:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1831C607B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1831C607B2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1831C607B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 11:25:09 +0000 (UTC)
X-CSE-ConnectionGUID: xZR5NGjeTaqe5i/aDB4ejQ==
X-CSE-MsgGUID: 21P2wvZsSnGHIhvADfD0fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="56189318"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="56189318"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 04:25:09 -0700
X-CSE-ConnectionGUID: zgN/tlcESHy2nKowYgrn6Q==
X-CSE-MsgGUID: 3EZdmmJPSfuyaptEWRm3sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127269197"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 04:25:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 4 Apr 2025 04:25:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 4 Apr 2025 04:25:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 04:25:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nK5/PP7oOrxMB355u6wAo5wcU7Pesos77DsySEZdlHvQWTkTzxQ5luSt62CaDRRwcWLSA06WDP1tYt/yLXBXZMMMCox7lv8est72o6ehkNp3wg3b01caCYgafQBBvIK7yvS+x9Ed0NXY3zqrXc9mUitzHURNfG3DArQKKehJ7H0XJvpPXrwmbWnq9/dFw+nU+kceHpIsNxIxVigPHLYAKHsuG5CN6+qoUsCOFsbn6q5gGDcv3F/J7Wxcewur1h7jrRdYO33CXNkr2aP2PwBZ9PWH7B0RfXoZ6sktkrDttbthW3rEr9yXbWajZdgZ+RYniN9lYeF/Nn97PB8ruMpUAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cxDwL5VUlUKdJVcazrlrHXhOW3wLFH9dcyF17tfG6VA=;
 b=EafBfmD2Kp+QjUB3cctjxX/cnEbUa4W/C5dPjVSFqkhHFdLSuVVCjWFgPqaI2YFYADbBBdAaEz0Isw65WrN4IHxXIJU5gi5UvqMG/14bEs/ilTHdd9hTpAsJaUaCX+vKq9W49V27k0noY5BPIq6stBxTxcI/XrPxgSmPuEzhvJk4scDmDbKYQc0pyikw841QpWorYFsbgA6b1o4o6iFsoW4ofVdKz5wUYF99nwvWSBra6yPUX+Ccc9chnnUfHbrVWwY/+AyB9DQRH/J5zlUSwjGryhdK1nughf/FnRbDEEEu7Tk3BVO4nciur9a5+cShPenUVWJl+9HHuRMJucPw9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Fri, 4 Apr
 2025 11:24:23 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%6]) with mapi id 15.20.8583.043; Fri, 4 Apr 2025
 11:24:23 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-net 6/6] iavf: get rid of the crit lock
Thread-Index: AQHbpUyEk2bUgHgO8EO4C5vufRaq6rOTXXZQ
Date: Fri, 4 Apr 2025 11:24:23 +0000
Message-ID: <SJ0PR11MB5866FA109D5237E89E396C4DE5A92@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
 <20250404102321.25846-7-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250404102321.25846-7-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SJ0PR11MB4896:EE_
x-ms-office365-filtering-correlation-id: 77afeb24-8f47-4d9f-7df6-08dd736b403c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vwZ9awkaQTVZ5NNkSFh4UnSE9q3ujh0H3NWBWSjlmgRhNCZhe830dNaB6h+a?=
 =?us-ascii?Q?Ejin60Jmv0izGV+52c0DvjTlYx6vu44lo/GAj8Szu6cGojie2Cz9uq4ofw0I?=
 =?us-ascii?Q?1R2uKpp7N+IOdkyyEVVcGhd1nAlMXLhTc5oFEXRArOZlzyUus6kB2/QX/itm?=
 =?us-ascii?Q?X/XzYV6c4fkSVViDLniqf3OvSWdV4aRJwPvrClxpw58fLcR0NnT1sXPfEwG+?=
 =?us-ascii?Q?FHrERVm6KJVtRP0q0aKVeQNS6nxELaxFKi+EEq/dXq+8duBXN/wZCUY4fUFJ?=
 =?us-ascii?Q?loK2IHNM48hkdJW9E98E/cFpCVz/gwEciDEKrqV/I1apWOeEpfC+EumBnv51?=
 =?us-ascii?Q?86NlYOmCTGfhkal3R4+Lr8nQTwq7i+OgraJXjX9zeIr/auC9Z3PsDjwb+/fr?=
 =?us-ascii?Q?+VhjeTP24HiXyWFBEDMmphl5r8wRrVPy7vXua9yXEqcPS93Vll9jGVEZgE9I?=
 =?us-ascii?Q?E3PfRa8d8ivewhb3yGrfe++yNbjPTEsm1rTIx3w6rgm/QEx4WBoWHlhRsLcJ?=
 =?us-ascii?Q?9QREyQDoiREDwuQU2NgKrcrwdWUC8SO8OXGtHLKxlmncrRt7BA00uEQNRcTD?=
 =?us-ascii?Q?d0XuH5tBkd5BRxq4IZXfvq5111WBPJBucqj3VYM7NGSAr8mvWy3vCXS8g9Co?=
 =?us-ascii?Q?SNU8g0cEzluuYIHgD4BUtwMV25SQ0DlD1RPk/bQpVZP0bANotWczmU+e9ecu?=
 =?us-ascii?Q?4aDdrvr0jLsAfKBmbtAf+GmTkhY7eJcb1zGrS0MA/i1optStF63GLf8Jrx0x?=
 =?us-ascii?Q?faxrEEzg5TfrM65tSkz1pQ7LvK9VoXY2F8bzglZT9sP3o/Mcf2t/dAC4He1c?=
 =?us-ascii?Q?TNQcvhgrU7I4YYZOSVEVkEKsXbdlLe5/fhp4kpMmo6EkhIzKr8XBWXPZSSJG?=
 =?us-ascii?Q?UHJd8RrbULloygopf+xTOSZoiw//xkxGmtxhyG/BYirmq9TnowcuQM4F4eyT?=
 =?us-ascii?Q?7nehdDD/TZfGWYGZbDbQdtkKIfhvXk0lVpW0vAgMj5vVLBcgB7LHvp1EO/3l?=
 =?us-ascii?Q?AK3bR+QKe94Tdo8mdlERbFz+fsRR9uMUVq3K5fxDg0lPLKWzDIYJTK2b4I/H?=
 =?us-ascii?Q?LpAaeD6tOysY3Yh0D2A9JjGUXlIZZVk46JdrGLi59LTwXeaVu+ytcNIS8mUV?=
 =?us-ascii?Q?o5VMnBTbzrc4uotJYbB12g3d0HzYJQjozwcb7uZRxktwwIQu1NiGrz3wGIbw?=
 =?us-ascii?Q?RiptNMyaCDrkU8iWm/5cgF2Kvw4nThVBC93EmIxsGo6aV60UJwN+W0pZz4Wb?=
 =?us-ascii?Q?Erx4lgaOIY5mtC2A4R+L5bPBYlmlRsC2iiFVMTbTDWk6EAu0TEPOsUkbdlPP?=
 =?us-ascii?Q?xh8v3663SZQBtL7uBlkruhsYGyG5ETmBiLHb+yDvy0b6RzZxNLzU6kewfPdE?=
 =?us-ascii?Q?j7yoeYhjk7Ls2jSI9f/1SSiNrsLzonuiCqKioA/oafSb3eMseA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?knixXooTiq1jFCMT4VfovvQb9acgB/0zgAtPLlt88ZclHB399SqpoMN+1Xo7?=
 =?us-ascii?Q?ahdRw8ke4HcpeeYyoGhdvtcnzn//CAHaiS+phoXSjZCxikonokZVs5eihJ8x?=
 =?us-ascii?Q?iy1blvEVTjUGCZ8IJgd9Q5wt2s5FQR6bcQC5qUdzL6RsPNrnXomazog4R6La?=
 =?us-ascii?Q?2JaGQYx8dewc6wgN3s+HvMC8ZXHJSV2AXN8A6YCjunEVzsP0sdUxtmEQQxZR?=
 =?us-ascii?Q?xV2lSkpiMG873gthic3jPMEdHqvoKdNWCIg+TpkVOR9EhlwGAFMzAeH2BfxT?=
 =?us-ascii?Q?/dzGp2YI35dPNS+337rVHuGE/1wFGoAApEKpvAxI+1Nn+LAa6mpGUWB3gokt?=
 =?us-ascii?Q?sNM8cIofuHDUZU3aRi+4cKyy2GX9rZr5M3eLWKMZ3DEprwXh7rB9ywTFFKQ3?=
 =?us-ascii?Q?aKYGg4v6y08vzfOaboK1MJPTzb3NZKgU/x6R1mnYgWS+yM0lbN/ACCClCmDd?=
 =?us-ascii?Q?NbDIuO5ygjzGPQJ8gQkjI7M4EmmXyN1DnOZ1I3AJpzfTcBFKYHP+wJAM16la?=
 =?us-ascii?Q?gU9HK0nHDkShWd55guLw85rgUgV+pOVV6Nz7+hEVQKmrkJdKbhWALWjcAAX4?=
 =?us-ascii?Q?IHx6S90L7KRJTAdtGrIxkcsk3thXYNgdbtvTrasR7AnNVN0gEKbj4klG6VFV?=
 =?us-ascii?Q?D3N+1ARF1fu6v6TVigtvzgIMJRq6VHwCXMYoA5CeCVSiE0CmXtvezztHVU15?=
 =?us-ascii?Q?aVrc+GtY4MIib1Nh5ZqHXZ+6X/SzMEGnswlN3C4a5QJ6D9iND+AwCo5Z42S4?=
 =?us-ascii?Q?TLykEgIbH63W5W60ZcqOnKier83HqR7GsXfjKHhdsTPMHBl2eP2eOGBGyowv?=
 =?us-ascii?Q?7DjJ7DCj5S1JuMa52gTLsPeTahDgeyVRkSRuo+VDJpl8o8dxFXkUQIQHakde?=
 =?us-ascii?Q?OzVYYF5K6RrJEfQ9IxyVB3w9s4iOgJcXQwf+Yl5I8dPW+plkV4erhZP4Cw7Y?=
 =?us-ascii?Q?mZY8HlmByGmmyYCi8yXXCcDFURjq4WGlGPpIq4i86VaHYdlJj4tQnlBBT6m4?=
 =?us-ascii?Q?pLKPKPjCmmuxtlaaa5k49cgDPQX6jysaLRrZ0rzwdDEHB7R3JK5+MYhv+M29?=
 =?us-ascii?Q?NTYivJtakTBnwKRglWO0pc/vwG3CzpNMkXydJ6h4ks9E6Pcr+g2oQw/Q3mdF?=
 =?us-ascii?Q?p3Uofni7mLrFbT+r5uGy96V5kj2XNfb7b62uoXMslKory53bu/kiPQPmDhEC?=
 =?us-ascii?Q?i87XVvyB/hsvJXCRmYduuMGEGXzyzx747RETl5RBxJ3kP1V9uuLQ8I5scEIw?=
 =?us-ascii?Q?hnH0tnwaWvlA+0sga0z1yciAygvbF/N4WD25r17jlBOzH/+2Rag083ZLcTJW?=
 =?us-ascii?Q?zYHMmUjAMgZeG7nKUa6thJSs5AvjJN+qzj8JazyAjSxOJ+6bQLnJz9yHKw+R?=
 =?us-ascii?Q?VgM9q1MEiiOVNYpTMPUIXzqQsu9ylq2Q3QfjYRT6SH9LET/DN0oC9IyNu+uu?=
 =?us-ascii?Q?gc1EaJZSU7ZFMl7m1h4E2aj7JqIjroWtPB+VHWUC1oGcHvCw4ON8gKlZJEE6?=
 =?us-ascii?Q?hxY+hy7gLtRSZ/5TWAIx3wNJ9+NlSkuRfgETqSkcYUp+CXgFpayGe4omR4bU?=
 =?us-ascii?Q?m9si9lELlDLruVCXFD2zB3RfkRLl41IaJjkLORY1vhSZFDBFcJW1Wm70tTHM?=
 =?us-ascii?Q?uQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77afeb24-8f47-4d9f-7df6-08dd736b403c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2025 11:24:23.2414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lTwMMedgJGgGUyK83gaRETiWUcmEflcSzeLfHSv3opq+ZB3kBWAqq27jWEHDJh+4hs4ScqrQF3wP5p/M264KblkwdDri52eOreQV29Vsp0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743765910; x=1775301910;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hivPi1VxdAdfpeqzK0rhBiTFa8KsWPCn10DwviOltrs=;
 b=fh7oI1JCKXh7DeoPpp+wZssN5puukMYm73T0NRfmNer9zdsX2M5E0n6i
 k5xQV1nKZwmdCZ8dsVLsRBOAvQ6TD/V3UrfUr2sx/HFKlFdHpcvtxVM3o
 fD2EXRRCDuKom1Yz3UyPTrra2QF/8nUdZt25ySdaNktyDMWxtOqoditm9
 Gx9tTTrW3xokujnd8uLSfJudaXi2SdsNsD+4Fv3vf3HWG2vILhy1vdK0G
 m1Y6PVikahgCqtZdRbYFgwf/pmSaBrD8ZVr+RmmQshWkkjepuLuBU90Ky
 fc72pkZllOnywjr0VnmgoaKUvfk76H2k4xu97WS2iMDf1XGmG0jvo8KzC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fh7oI1JC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 6/6] iavf: get rid of the crit
 lock
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Stanislav Fomichev <sdf@fomichev.me>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Friday, April 4, 2025 12:23 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Stanislav Fomichev <sdf@fomichev.me>; Kitszel=
,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Zaki, Ahmed
> <ahmed.zaki@intel.com>; Schmidt, Michal <mschmidt@redhat.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [PATCH iwl-net 6/6] iavf: get rid of the crit lock
>=20
> Get rid of the crit lock.
> That frees us from the error prone logic of try_locks.
>=20
> Thanks to netdev_lock() by Jakub it is now easy, and in most cases we wer=
e
> protected by it already - replace crit lock by netdev lock when it was no=
t the
> case.
>=20
> Lockdep reports that we should cancel the work under crit_lock [splat1], =
and
> that was the scheme we have mostly followed since [1] by Slawomir.
> But when that is done we still got into deadlocks [splat2]. So instead we
> should look at the bigger problem, namely "weird locking/scheduling"
> of the iavf. The first step to fix that is to remove the crit lock.
> I will followup with a -next series that simplifies scheduling/tasks.
>=20
> Cancel the work without netdev lock (weird unlock+lock scheme), to fix th=
e
> [splat2] (which would be totally ugly if we would kept the crit lock).
>=20
> Extend protected part of iavf_watchdog_task() to include scheduling more
> work.
>=20
> Note that the removed comment in iavf_reset_task() was misplaced, it
> belonged to inside of the removed if condition, so it's gone now.
>=20
> [splat1] - w/o this patch - The deadlock during VF removal:
>      WARNING: possible circular locking dependency detected
>      sh/3825 is trying to acquire lock:
>       ((work_completion)(&(&adapter->watchdog_task)->work)){+.+.}-{0:0}, =
at:
> start_flush_work+0x1a1/0x470
>           but task is already holding lock:
>       (&adapter->crit_lock){+.+.}-{4:4}, at: iavf_remove+0xd1/0x690 [iavf=
]
>           which lock already depends on the new lock.
>=20
> [splat2] - when cancelling work under crit lock, w/o this series,
> 	   see [2] for the band aid attempt
>     WARNING: possible circular locking dependency detected
>     sh/3550 is trying to acquire lock:
>     ((wq_completion)iavf){+.+.}-{0:0}, at: touch_wq_lockdep_map+0x26/0x90
>         but task is already holding lock:
>     (&dev->lock){+.+.}-{4:4}, at: iavf_remove+0xa6/0x6e0 [iavf]
>         which lock already depends on the new lock.
>=20
> [1] fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation") [2]
> https://github.com/pkitszel/linux/commit/52dddbfc2bb60294083f5711a15
> 8a
> Fixes: d1639a17319b ("iavf: fix a deadlock caused by rtnl and driver's lo=
ck
> circular dependencies")
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> CC: Jacob Keller <jacob.e.keller@intel.com>
> CC: Jakub Kicinski <kuba@kernel.org>
> CC: Ahmed Zaki <ahmed.zaki@intel.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   1 -
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |  23 +--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 165 ++++--------------
>  3 files changed, 38 insertions(+), 151 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 9de3e0ba3731..f7a98ff43a57 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -268,7 +268,6 @@ struct iavf_adapter {
>  	struct list_head vlan_filter_list;
>  	int num_vlan_filters;
>  	struct list_head mac_filter_list;
> -	struct mutex crit_lock;
>  	/* Lock to protect accesses to MAC and VLAN lists */
>  	spinlock_t mac_vlan_list_lock;
>  	char misc_vector_name[IFNAMSIZ + 9];
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 03d86fe80ad9..2b2b315205b5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1258,7 +1258,6 @@ static int iavf_add_fdir_ethtool(struct iavf_adapte=
r
> *adapter, struct ethtool_rx  {
>  	struct ethtool_rx_flow_spec *fsp =3D &cmd->fs;
>  	struct iavf_fdir_fltr *fltr;
> -	int count =3D 50;
>  	int err;
>=20
>  	netdev_assert_locked(adapter->netdev);
> @@ -1281,22 +1280,13 @@ static int iavf_add_fdir_ethtool(struct
> iavf_adapter *adapter, struct ethtool_rx
>  	if (!fltr)
>  		return -ENOMEM;
>=20
> -	while (!mutex_trylock(&adapter->crit_lock)) {
> -		if (--count =3D=3D 0) {
> -			kfree(fltr);
> -			return -EINVAL;
> -		}
> -		udelay(1);
> -	}
> -
>  	err =3D iavf_add_fdir_fltr_info(adapter, fsp, fltr);
>  	if (!err)
>  		err =3D iavf_fdir_add_fltr(adapter, fltr);
>=20
>  	if (err)
>  		kfree(fltr);
>=20
> -	mutex_unlock(&adapter->crit_lock);
>  	return err;
>  }
>=20
> @@ -1439,9 +1429,9 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter
> *adapter,  {
>  	struct iavf_adv_rss *rss_old, *rss_new;
>  	bool rss_new_add =3D false;
> -	int count =3D 50, err =3D 0;
>  	bool symm =3D false;
>  	u64 hash_flds;
> +	int err =3D 0;
>  	u32 hdrs;
>=20
>  	netdev_assert_locked(adapter->netdev);
> @@ -1469,15 +1459,6 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter
> *adapter,
>  		return -EINVAL;
>  	}
>=20
> -	while (!mutex_trylock(&adapter->crit_lock)) {
> -		if (--count =3D=3D 0) {
> -			kfree(rss_new);
> -			return -EINVAL;
> -		}
> -
> -		udelay(1);
> -	}
> -
>  	spin_lock_bh(&adapter->adv_rss_lock);
>  	rss_old =3D iavf_find_adv_rss_cfg_by_hdrs(adapter, hdrs);
>  	if (rss_old) {
> @@ -1506,8 +1487,6 @@ iavf_set_adv_rss_hash_opt(struct iavf_adapter
> *adapter,
>  	if (!err)
>  		iavf_schedule_aq_request(adapter,
> IAVF_FLAG_AQ_ADD_ADV_RSS_CFG);
>=20
> -	mutex_unlock(&adapter->crit_lock);
> -
>  	if (!rss_new_add)
>  		kfree(rss_new);
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index bf8c7baf2ab8..2c0bb41809a4 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1287,9 +1287,7 @@ static void iavf_configure(struct iavf_adapter
> *adapter)
>  /**
>   * iavf_up_complete - Finish the last steps of bringing up a connection
>   * @adapter: board private structure
> - *
> - * Expects to be called while holding crit_lock.
> - **/
> + */
>  static void iavf_up_complete(struct iavf_adapter *adapter)  {
>  	netdev_assert_locked(adapter->netdev);
> @@ -1412,9 +1410,7 @@ static void iavf_clear_adv_rss_conf(struct
> iavf_adapter *adapter)
>  /**
>   * iavf_down - Shutdown the connection processing
>   * @adapter: board private structure
> - *
> - * Expects to be called while holding crit_lock.
> - **/
> + */
>  void iavf_down(struct iavf_adapter *adapter)  {
>  	struct net_device *netdev =3D adapter->netdev; @@ -2029,22
> +2025,21 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter
> *adapter, bool runni
>   * iavf_finish_config - do all netdev work that needs RTNL
>   * @work: our work_struct
>   *
> - * Do work that needs both RTNL and crit_lock.
> - **/
> + * Do work that needs RTNL.
> + */
>  static void iavf_finish_config(struct work_struct *work)  {
>  	struct iavf_adapter *adapter;
> -	bool locks_released =3D false;
> +	bool netdev_released =3D false;
>  	int pairs, err;
>=20
>  	adapter =3D container_of(work, struct iavf_adapter, finish_config);
>=20
>  	/* Always take RTNL first to prevent circular lock dependency;
> -	 * The dev->lock is needed to update the queue number
> +	 * the dev->lock (=3D=3D netdev lock) is needed to update the queue
> number.
>  	 */
>  	rtnl_lock();
>  	netdev_lock(adapter->netdev);
> -	mutex_lock(&adapter->crit_lock);
>=20
>  	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
>  	    adapter->netdev->reg_state =3D=3D NETREG_REGISTERED && @@ -
> 2063,22 +2058,21 @@ static void iavf_finish_config(struct work_struct
> *work)
>  		netif_set_real_num_tx_queues(adapter->netdev, pairs);
>=20
>  		if (adapter->netdev->reg_state !=3D NETREG_REGISTERED) {
> -			mutex_unlock(&adapter->crit_lock);
>  			netdev_unlock(adapter->netdev);
> -			locks_released =3D true;
> +			netdev_released =3D true;
>  			err =3D register_netdevice(adapter->netdev);
>  			if (err) {
>  				dev_err(&adapter->pdev->dev, "Unable to
> register netdev (%d)\n",
>  					err);
>=20
>  				/* go back and try again.*/
> -				mutex_lock(&adapter->crit_lock);
> +				netdev_lock(adapter->netdev);
>  				iavf_free_rss(adapter);
>  				iavf_free_misc_irq(adapter);
>  				iavf_reset_interrupt_capability(adapter);
>  				iavf_change_state(adapter,
>=20
> __IAVF_INIT_CONFIG_ADAPTER);
> -				mutex_unlock(&adapter->crit_lock);
> +				netdev_unlock(adapter->netdev);
>  				goto out;
>  			}
>  		}
> @@ -2094,10 +2088,8 @@ static void iavf_finish_config(struct work_struct
> *work)
>  	}
>=20
>  out:
> -	if (!locks_released) {
> -		mutex_unlock(&adapter->crit_lock);
> +	if (!netdev_released)
>  		netdev_unlock(adapter->netdev);
> -	}
>  	rtnl_unlock();
>  }
>=20
> @@ -2924,7 +2916,6 @@ static int iavf_watchdog_step(struct iavf_adapter
> *adapter)
>  	u32 reg_val;
>=20
>  	netdev_assert_locked(adapter->netdev);
> -	lockdep_assert_held(&adapter->crit_lock);
>=20
>  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
>  		iavf_change_state(adapter, __IAVF_COMM_FAILED); @@ -
> 3044,38 +3035,23 @@ static void iavf_watchdog_task(struct work_struct
> *work)
>  	int msec_delay;
>=20
>  	netdev_lock(netdev);
> -	if (!mutex_trylock(&adapter->crit_lock)) {
> -		if (adapter->state =3D=3D __IAVF_REMOVE) {
> -			netdev_unlock(netdev);
> -			return;
> -		}
> -
> -		msec_delay =3D 20;
> -		goto restart_watchdog;
> -	}
> -
>  	msec_delay =3D iavf_watchdog_step(adapter);
> -
> -	mutex_unlock(&adapter->crit_lock);
> -restart_watchdog:
> -	netdev_unlock(netdev);
> -
>  	/* note that we schedule a different task */
>  	if (adapter->state >=3D __IAVF_DOWN)
>  		queue_work(adapter->wq, &adapter->adminq_task);
>=20
>  	if (msec_delay !=3D IAVF_NO_RESCHED)
>  		queue_delayed_work(adapter->wq, &adapter-
> >watchdog_task,
>  				   msecs_to_jiffies(msec_delay));
> +	netdev_unlock(netdev);
>  }
>=20
>  /**
>   * iavf_disable_vf - disable VF
>   * @adapter: board private structure
>   *
>   * Set communication failed flag and free all resources.
> - * NOTE: This function is expected to be called with crit_lock being hel=
d.
> - **/
> + */
>  static void iavf_disable_vf(struct iavf_adapter *adapter)  {
>  	struct iavf_mac_filter *f, *ftmp;
> @@ -3183,17 +3159,7 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	int i =3D 0, err;
>  	bool running;
>=20
> -	/* When device is being removed it doesn't make sense to run the
> reset
> -	 * task, just return in such a case.
> -	 */
>  	netdev_lock(netdev);
> -	if (!mutex_trylock(&adapter->crit_lock)) {
> -		if (adapter->state !=3D __IAVF_REMOVE)
> -			queue_work(adapter->wq, &adapter->reset_task);
> -
> -		netdev_unlock(netdev);
> -		return;
> -	}
>=20
>  	iavf_misc_irq_disable(adapter);
>  	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) { @@ -3238,7
> +3204,6 @@ static void iavf_reset_task(struct work_struct *work)
>  		dev_err(&adapter->pdev->dev, "Reset never finished (%x)\n",
>  			reg_val);
>  		iavf_disable_vf(adapter);
> -		mutex_unlock(&adapter->crit_lock);
>  		netdev_unlock(netdev);
>  		return; /* Do not attempt to reinit. It's dead, Jim. */
>  	}
> @@ -3382,7 +3347,6 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	adapter->flags &=3D ~IAVF_FLAG_REINIT_ITR_NEEDED;
>=20
>  	wake_up(&adapter->reset_waitqueue);
> -	mutex_unlock(&adapter->crit_lock);
>  	netdev_unlock(netdev);
>=20
>  	return;
> @@ -3393,7 +3357,6 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	}
>  	iavf_disable_vf(adapter);
>=20
> -	mutex_unlock(&adapter->crit_lock);
>  	netdev_unlock(netdev);
>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> reinit\n");  } @@ -3406,20 +3369,15 @@ static void iavf_adminq_task(struc=
t
> work_struct *work)  {
>  	struct iavf_adapter *adapter =3D
>  		container_of(work, struct iavf_adapter, adminq_task);
> +	struct net_device *netdev =3D adapter->netdev;
>  	struct iavf_hw *hw =3D &adapter->hw;
>  	struct iavf_arq_event_info event;
>  	enum virtchnl_ops v_op;
>  	enum iavf_status ret, v_ret;
>  	u32 val, oldval;
>  	u16 pending;
>=20
> -	if (!mutex_trylock(&adapter->crit_lock)) {
> -		if (adapter->state =3D=3D __IAVF_REMOVE)
> -			return;
> -
> -		queue_work(adapter->wq, &adapter->adminq_task);
> -		goto out;
> -	}
> +	netdev_lock(netdev);
>=20
>  	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
>  		goto unlock;
> @@ -3486,8 +3444,7 @@ static void iavf_adminq_task(struct work_struct
> *work)
>  freedom:
>  	kfree(event.msg_buf);
>  unlock:
> -	mutex_unlock(&adapter->crit_lock);
> -out:
> +	netdev_unlock(netdev);
>  	/* re-enable Admin queue interrupt cause */
>  	iavf_misc_irq_enable(adapter);
>  }
> @@ -4180,28 +4137,21 @@ static int iavf_configure_clsflower(struct
> iavf_adapter *adapter,
>  				    struct flow_cls_offload *cls_flower)  {
>  	int tc =3D tc_classid_to_hwtc(adapter->netdev, cls_flower->classid);
> -	struct iavf_cloud_filter *filter =3D NULL;
> -	int err =3D -EINVAL, count =3D 50;
> +	struct iavf_cloud_filter *filter;
> +	int err;
>=20
>  	if (tc < 0) {
>  		dev_err(&adapter->pdev->dev, "Invalid traffic class\n");
>  		return -EINVAL;
>  	}
>=20
>  	filter =3D kzalloc(sizeof(*filter), GFP_KERNEL);
>  	if (!filter)
>  		return -ENOMEM;
> -
> -	while (!mutex_trylock(&adapter->crit_lock)) {
> -		if (--count =3D=3D 0) {
> -			kfree(filter);
> -			return err;
> -		}
> -		udelay(1);
> -	}
> -
>  	filter->cookie =3D cls_flower->cookie;
>=20
> +	netdev_lock(adapter->netdev);
> +
>  	/* bail out here if filter already exists */
>  	spin_lock_bh(&adapter->cloud_filter_list_lock);
>  	if (iavf_find_cf(adapter, &cls_flower->cookie)) { @@ -4235,7 +4185,7
> @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
>  	if (err)
>  		kfree(filter);
>=20
> -	mutex_unlock(&adapter->crit_lock);
> +	netdev_unlock(adapter->netdev);
>  	return err;
>  }
>=20
> @@ -4539,28 +4489,13 @@ static int iavf_open(struct net_device *netdev)
>  		return -EIO;
>  	}
>=20
> -	while (!mutex_trylock(&adapter->crit_lock)) {
> -		/* If we are in __IAVF_INIT_CONFIG_ADAPTER state the
> crit_lock
> -		 * is already taken and iavf_open is called from an upper
> -		 * device's notifier reacting on NETDEV_REGISTER event.
> -		 * We have to leave here to avoid dead lock.
> -		 */
> -		if (adapter->state =3D=3D __IAVF_INIT_CONFIG_ADAPTER)
> -			return -EBUSY;
> -
> -		usleep_range(500, 1000);
> -	}
> -
> -	if (adapter->state !=3D __IAVF_DOWN) {
> -		err =3D -EBUSY;
> -		goto err_unlock;
> -	}
> +	if (adapter->state !=3D __IAVF_DOWN)
> +		return -EBUSY;
>=20
>  	if (adapter->state =3D=3D __IAVF_RUNNING &&
>  	    !test_bit(__IAVF_VSI_DOWN, adapter->vsi.state)) {
>  		dev_dbg(&adapter->pdev->dev, "VF is already open.\n");
> -		err =3D 0;
> -		goto err_unlock;
> +		return 0;
>  	}
>=20
>  	/* allocate transmit descriptors */
> @@ -4579,9 +4514,7 @@ static int iavf_open(struct net_device *netdev)
>  		goto err_req_irq;
>=20
>  	spin_lock_bh(&adapter->mac_vlan_list_lock);
> -
>  	iavf_add_filter(adapter, adapter->hw.mac.addr);
> -
>  	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>=20
>  	/* Restore filters that were removed with IFF_DOWN */ @@ -4594,19
> +4527,15 @@ static int iavf_open(struct net_device *netdev)
>=20
>  	iavf_irq_enable(adapter, true);
>=20
> -	mutex_unlock(&adapter->crit_lock);
> -
>  	return 0;
>=20
>  err_req_irq:
>  	iavf_down(adapter);
>  	iavf_free_traffic_irqs(adapter);
>  err_setup_rx:
>  	iavf_free_all_rx_resources(adapter);
>  err_setup_tx:
>  	iavf_free_all_tx_resources(adapter);
> -err_unlock:
> -	mutex_unlock(&adapter->crit_lock);
>=20
>  	return err;
>  }
> @@ -4630,12 +4559,8 @@ static int iavf_close(struct net_device *netdev)
>=20
>  	netdev_assert_locked(netdev);
>=20
> -	mutex_lock(&adapter->crit_lock);
> -
> -	if (adapter->state <=3D __IAVF_DOWN_PENDING) {
> -		mutex_unlock(&adapter->crit_lock);
> +	if (adapter->state <=3D __IAVF_DOWN_PENDING)
>  		return 0;
> -	}
>=20
>  	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
>  	/* We cannot send IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS
> before @@ -4666,7 +4591,6 @@ static int iavf_close(struct net_device
> *netdev)
>  	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
>  	iavf_free_traffic_irqs(adapter);
>=20
> -	mutex_unlock(&adapter->crit_lock);
>  	netdev_unlock(netdev);
>=20
>  	/* We explicitly don't free resources here because the hardware is @@
> -4685,11 +4609,10 @@ static int iavf_close(struct net_device *netdev)
>  				    msecs_to_jiffies(500));
>  	if (!status)
>  		netdev_warn(netdev, "Device resources not yet released\n");
> -
>  	netdev_lock(netdev);
> -	mutex_lock(&adapter->crit_lock);
> +
>  	adapter->aq_required |=3D aq_to_restore;
> -	mutex_unlock(&adapter->crit_lock);
> +
>  	return 0;
>  }
>=20
> @@ -5198,29 +5121,26 @@ iavf_shaper_set(struct net_shaper_binding
> *binding,
>  	struct iavf_adapter *adapter =3D netdev_priv(binding->netdev);
>  	const struct net_shaper_handle *handle =3D &shaper->handle;
>  	struct iavf_ring *tx_ring;
> -	int ret =3D 0;
> +	int ret;
>=20
>  	netdev_assert_locked(adapter->netdev);
>=20
> -	mutex_lock(&adapter->crit_lock);
>  	if (handle->id >=3D adapter->num_active_queues)
> -		goto unlock;
> +		return 0;
>=20
>  	ret =3D iavf_verify_shaper(binding, shaper, extack);
>  	if (ret)
> -		goto unlock;
> +		return ret;
>=20
>  	tx_ring =3D &adapter->tx_rings[handle->id];
>=20
>  	tx_ring->q_shaper.bw_min =3D div_u64(shaper->bw_min, 1000);
>  	tx_ring->q_shaper.bw_max =3D div_u64(shaper->bw_max, 1000);
>  	tx_ring->q_shaper_update =3D true;
>=20
>  	adapter->aq_required |=3D IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
>=20
> -unlock:
> -	mutex_unlock(&adapter->crit_lock);
> -	return ret;
> +	return 0;
>  }
>=20
>  static int iavf_shaper_del(struct net_shaper_binding *binding, @@ -5232,=
19
> +5152,16 @@ static int iavf_shaper_del(struct net_shaper_binding *binding=
,
>=20
>  	netdev_assert_locked(adapter->netdev);
>=20
> -	mutex_lock(&adapter->crit_lock);
>  	if (handle->id >=3D adapter->num_active_queues)
> -		goto unlock;
> +		return 0;
>=20
>  	tx_ring =3D &adapter->tx_rings[handle->id];
>  	tx_ring->q_shaper.bw_min =3D 0;
>  	tx_ring->q_shaper.bw_max =3D 0;
>  	tx_ring->q_shaper_update =3D true;
>=20
>  	adapter->aq_required |=3D IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
>=20
> -unlock:
> -	mutex_unlock(&adapter->crit_lock);
>  	return 0;
>  }
>=20
> @@ -5505,10 +5422,6 @@ static int iavf_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  		goto err_alloc_qos_cap;
>  	}
>=20
> -	/* set up the locks for the AQ, do this only once in probe
> -	 * and destroy them only once in remove
> -	 */
> -	mutex_init(&adapter->crit_lock);
>  	mutex_init(&hw->aq.asq_mutex);
>  	mutex_init(&hw->aq.arq_mutex);
>=20
> @@ -5578,17 +5491,14 @@ static int iavf_suspend(struct device *dev_d)
>  	running =3D netif_running(netdev);
>  	if (running)
>  		rtnl_lock();
> -
>  	netdev_lock(netdev);
> -	mutex_lock(&adapter->crit_lock);
>=20
>  	if (running)
>  		iavf_down(adapter);
>=20
>  	iavf_free_misc_irq(adapter);
>  	iavf_reset_interrupt_capability(adapter);
>=20
> -	mutex_unlock(&adapter->crit_lock);
>  	netdev_unlock(netdev);
>  	if (running)
>  		rtnl_unlock();
> @@ -5668,30 +5578,29 @@ static void iavf_remove(struct pci_dev *pdev)
>  	 * There are flows where register/unregister netdev may race.
>  	 */
>  	while (1) {
> -		mutex_lock(&adapter->crit_lock);
> +		netdev_lock(netdev);
>  		if (adapter->state =3D=3D __IAVF_RUNNING ||
>  		    adapter->state =3D=3D __IAVF_DOWN ||
>  		    adapter->state =3D=3D __IAVF_INIT_FAILED) {
> -			mutex_unlock(&adapter->crit_lock);
> +			netdev_unlock(netdev);
>  			break;
>  		}
>  		/* Simply return if we already went through iavf_shutdown */
>  		if (adapter->state =3D=3D __IAVF_REMOVE) {
> -			mutex_unlock(&adapter->crit_lock);
> +			netdev_unlock(netdev);
>  			return;
>  		}
>=20
> -		mutex_unlock(&adapter->crit_lock);
> +		netdev_unlock(netdev);
>  		usleep_range(500, 1000);
>  	}
>  	cancel_delayed_work_sync(&adapter->watchdog_task);
>  	cancel_work_sync(&adapter->finish_config);
>=20
>  	if (netdev->reg_state =3D=3D NETREG_REGISTERED)
>  		unregister_netdev(netdev);
>=20
>  	netdev_lock(netdev);
> -	mutex_lock(&adapter->crit_lock);
>  	dev_info(&adapter->pdev->dev, "Removing device\n");
>  	iavf_change_state(adapter, __IAVF_REMOVE);
>=20
> @@ -5707,9 +5616,11 @@ static void iavf_remove(struct pci_dev *pdev)
>=20
>  	iavf_misc_irq_disable(adapter);
>  	/* Shut down all the garbage mashers on the detention level */
> +	netdev_unlock(netdev);
>  	cancel_work_sync(&adapter->reset_task);
>  	cancel_delayed_work_sync(&adapter->watchdog_task);
>  	cancel_work_sync(&adapter->adminq_task);
> +	netdev_lock(netdev);
>=20
>  	adapter->aq_required =3D 0;
>  	adapter->flags &=3D ~IAVF_FLAG_REINIT_ITR_NEEDED; @@ -5727,8
> +5638,6 @@ static void iavf_remove(struct pci_dev *pdev)
>  	/* destroy the locks only once, here */
>  	mutex_destroy(&hw->aq.arq_mutex);
>  	mutex_destroy(&hw->aq.asq_mutex);
> -	mutex_unlock(&adapter->crit_lock);
> -	mutex_destroy(&adapter->crit_lock);
>  	netdev_unlock(netdev);
>=20
>  	iounmap(hw->hw_addr);
> --
> 2.39.3

