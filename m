Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9301FA565E8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 11:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F5C5607BD;
	Fri,  7 Mar 2025 10:56:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9wOX_r536p6D; Fri,  7 Mar 2025 10:56:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80B94607E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741344963;
	bh=aVBJjUQZ9j0VpR/ZwvRkb+c8Ujj8H8ZAKP09O9uy+rc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iacUVR0PcE/8qhZmSrlUaDfGgvXboxOBR6rS0z7zpK9tYWQdiwqBzkcq08ei6pkyN
	 524Dm8wbrlzfFmO+KGWEeJYjOT7QTmew7+hyJwenXG6EpUqCIjYkzgHwT6nZabmuGF
	 f+SA6JpM5FijM2jIQaa1YXbWyS2in5/KONMs4NukNQX/G7R3A9VYvDvAudp8zoDqe9
	 Jyr0Z5/a0xGR6gc6DcKysugyJhfBwgOjELjC8Sp2lcMfjxPV+ozfRrziJlmI+lbHJM
	 MIaATMpL0chhBXpDDR8PUz1PaUuFF+Awil9ffhJYLbNUMBZ6l9oeTFEngGxOMz/qOk
	 yE1PYom4enJuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80B94607E9;
	Fri,  7 Mar 2025 10:56:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C86041C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ACAB5837BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:56:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJIOX7glhB67 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 10:56:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1062882FE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1062882FE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1062882FE7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 10:55:59 +0000 (UTC)
X-CSE-ConnectionGUID: qBRJho/0RKWS9TwwmbOECw==
X-CSE-MsgGUID: jxSIts8FRFqz0jQTC0EIKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53025939"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="53025939"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 02:55:59 -0800
X-CSE-ConnectionGUID: si/mkSABQCO9WrcoQJBOGw==
X-CSE-MsgGUID: e7vahWz3Q9KhZbNG+n7Bhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="124211294"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2025 02:56:00 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Mar 2025 02:55:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 02:55:58 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 02:55:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xLz1gHrHh0i9pOgG1Og5LvmM8uNnA/icTJK1eNLorh6CQElnR7ABPcA7c0H3aDfLOsmPP1gPum4M8oScuOKCeMrJDtRbp6u97O1pg2G0aVcQk541SkW4zkFc/wpr49U0kplPlRquEipznGbeCJ8Aw2l2r1/M7SWoung3o+6Nv2Ew6LTp6IPLzNn36RviumpVX6cmcDYVJ4Hs+DzZpjtHaJ4l5xROz54FMy1xqgfw46ki/05NFK7q+EkkAsVtgosvvyCI1kkfZIQMCs0eVjZIDYSFiJ7ruXOxz5hWz5ydQofpMWGiXCup9qUk6DtjxCFK5D7aDaZvwLZz3kSFWcEHIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVBJjUQZ9j0VpR/ZwvRkb+c8Ujj8H8ZAKP09O9uy+rc=;
 b=BphQ7pTA9GRdJ3lSTeZoMGMzHblFLm9cxhmGwwgkgAlHNas+H8wPNpYCchf5OaCxgBOqc44HVhaMgvA3fr8LoQ7tCImz3XrrZr9+BKLsC5FSkwbg9G3UnYYD/gPjyhrnRNop8bmhpSIoO6dG9465TGqXjG6JXxV+XF0vviX4rHwrzWqgxL4C87xMxd+6XUluoy6zWVP8ZIb1zMSufLdSR3pbzs9QzL1GXQbiESvYKtanR5pl4YsV76Yu9L7l/ehed26Dfaiu8HmjMYX8P1rcISWCtb72x7NcvsJqVLaQ/KQ3NuxFAXQJdDkNxdHfkTr07JWxR23ZQ1hZSxGegeYcwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Fri, 7 Mar
 2025 10:55:53 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 10:55:53 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ixgbe: add support for
 ACPI WOL for E610
Thread-Index: AQHbjDa0SDP0NcT3skygapHPyvxPabNnhlmw
Date: Fri, 7 Mar 2025 10:55:53 +0000
Message-ID: <PH8PR11MB7965C0356144EA7D4DA0D4A8F7D52@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20250303120630.226353-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SA2PR11MB5034:EE_
x-ms-office365-filtering-correlation-id: 6402200b-9910-47fb-19fe-08dd5d66a149
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Jn8SRa4fUx/bJlhEj/bOAEVoVneKecm10TPDPitlTvmnRoQnZDS3FB8U093v?=
 =?us-ascii?Q?tInqH33R8Z3Q77m6GL+yipM+SXNimRYLvbAX6enptOn0Br+KpgyO5IPpl31N?=
 =?us-ascii?Q?ilQ3pDPPtOnmihPoEao4bHcvE6MGKE3KQ+1JGpwtyZD4E/jK5hb8NKWI3qlm?=
 =?us-ascii?Q?oKhpCAmBsCnXK8GjzrD+0N65w1fu7Yb2rH0ud3/HM/ja1k+1P6+yYts8Ux2G?=
 =?us-ascii?Q?yOYnJUr+8fhMdZXglBPj0WtXHt6EqZOz29TXq5hIE0cezlSVO5dKKxW7/e9Y?=
 =?us-ascii?Q?QQrZlPhT8bEfbe+3gbriR6CVSYf7vZ2XJfvubnOZfgcg5/NWh//zslKr6J+N?=
 =?us-ascii?Q?bEZXE0c9aGH7pmsJMs4sjh+liTRoHJ8ZKr6Klj//GKoR1pxopuiW8Jqt6a+C?=
 =?us-ascii?Q?1qlQCXDSUb8NIbOCDbAvAS9vNCisLtU3+hLV8qwI/dOK/8bYS5qpPN9pffey?=
 =?us-ascii?Q?PBrzNC8cFyMV6hEgK2KTr02Iwcq5kJ/3zVBSQs0+ksq5r1GdDvIJjp1Od9mV?=
 =?us-ascii?Q?s+wVUX9qKXefjulZgetsV/sFMsoAu3alX4EaEckm13Q5GMunneSNc01GLAmc?=
 =?us-ascii?Q?vy26r692jjCxc9szJACTJAS1wK9oBbn4aU9vhQcpmN1bTnE7rrISkHflzo7L?=
 =?us-ascii?Q?FNLKJ3PL3+8K4K+sEr9FLXRtp3xqaiS3h4MdzNOQE/1iPWuCyQoyTsAJ7Dxl?=
 =?us-ascii?Q?c8VzS/V0g0pOO5D0UP0LuVWp79hQgqov41trPNk3OWyjk++Sh+/DbVZtKenK?=
 =?us-ascii?Q?QlU0FrloDJW2o/9kg+aUZHMIPXtB6xJx/bDxIdBYRMn+Z5vO951eQGrygDRY?=
 =?us-ascii?Q?jM8jE3Yfq+dtxKJvU5F/mwEfavlPgx29Vww83xXgmDSKd7qLMF5shovX/CnN?=
 =?us-ascii?Q?S3IF6ErONKcTgshQwD9wMWZ7/85Puae2mt+P06yNSzG2tWtnP9Cz3Uj2KNYP?=
 =?us-ascii?Q?4giyXaIsIRTMJXrCbuMeIb/KFD9krTq3Ot3pQo2MuZeeEuH3fQm02o7tjQ84?=
 =?us-ascii?Q?KJREGuGB1wwbwx6EXA7xQoRCGhUWugPgp9ahPuESSvGMsf9oXhCpOWdqmWKJ?=
 =?us-ascii?Q?oABUC0DNM6lnyfmXyZPsnE2qhaHugyYQ89qGzM9ObdtQ6h5XtLekuCEUmSVN?=
 =?us-ascii?Q?wuvEDLG4c41FJTc4/4y/xtGoR5EZj+P88/4+1rZu/uCXQBVHVraIW+xAx171?=
 =?us-ascii?Q?YAAwEr7jo19EC2iKA8k19KZ7x0AX1c9t179Jzh0fLArxhvJc7mG4hYXZ7qhg?=
 =?us-ascii?Q?tR+acwP4fpr9upgj5CwJjrgyMr3Iza53DlJ/jsnT4JpbUkORkKzfnyZFhiBh?=
 =?us-ascii?Q?YgWdAg3gvS+BA7on2WOe0fyKGoLvEUSbFCQYHlnQeKoYfAv1bZSP29VPyR5r?=
 =?us-ascii?Q?O+3A7PwgP1h3TuLrOM4KRLnoK6K1YVIoP0PHl44B13FGWIuFqdUsmxZF2009?=
 =?us-ascii?Q?a37Em+DJoRjZrKqoyS3lMJUiUd9QgMne?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ao7hPuTFJGIwCQWk1nOwLWusmrvzsjgtu1xekQ+qdfLs4dthpQDatIxRAN7R?=
 =?us-ascii?Q?Rg+469hRD7HUAcErklI54oHmtQ0Xx3fv6MSd6+DDPlc+zYCHcMxT2PvwUlqm?=
 =?us-ascii?Q?puK1q6xOQ7uPGDj+jOR+lMcnUPMNlrWTz8DLHgCh0ZaFaZ9YTVNFpfIIgX0P?=
 =?us-ascii?Q?Ajc4UxyB+XrGMoH74tfXLNCO7zS4K76+EWKF71Nb8uQAQVW8TUG/UTKcSanD?=
 =?us-ascii?Q?RDWH3QwreoS8FJtwDPR72QcccuggihcWKiWbBGWbVs2FcEMraPQFepbA7ypV?=
 =?us-ascii?Q?s4J4N3ifmsOC84p9gj3kEsVEP53Vbgux402rZ0RKSfASb6TLtnViSRxZ0+1+?=
 =?us-ascii?Q?tLTsFHRwEPoCG9y2GfWhRfLI3EHq8dZnqrboh9DOc4vLpX1D3XXS5rww5DBu?=
 =?us-ascii?Q?huYJFQhHh9ynX9F915/cKW47DZVycaAKRTOtAGOBgfn4yVijKTnKaCBrYWcN?=
 =?us-ascii?Q?mApaCr+taQdXvqJemKP/QvUDx0xii9L5M+WVbZFtBswweEtSssU+BBwcjqQE?=
 =?us-ascii?Q?un3uXvs7Oox9H0dDN4Y0wiM9dfH0F1VLDI1U5y0fyW9z1Y/pRcRbLvlx0b4U?=
 =?us-ascii?Q?vDdEWx/ugbA8L2YNC4jKsTzMsPA8m4o+BDBWEe00svqW584saH5B5fRHpHjS?=
 =?us-ascii?Q?iuOX+yNb3Gd1mgLt7LaedGah4d+UbF/0qI/q3H0nURYEXDOfpFbtlAcw4LIJ?=
 =?us-ascii?Q?hgEfZwcErGU6ntJzT9IB+YmGBo7syATDrjwVRIsCISmRYv/j8psH4env5Xba?=
 =?us-ascii?Q?RAfEQibc/lkigziP/BuWlHLsiFnpg00Fwt5HT/e1Rt5r9e0tkUn+3cJAycvo?=
 =?us-ascii?Q?wxYjqUV0OW+UOvJovQ+LVJdwCK7FLEf8Q9HdqDOIBfiwA/1SGbrVu7XfOEAC?=
 =?us-ascii?Q?YlXIidH6y2KSUlXl7vY/AYCHlbvTY2jfbKwT2GyZCceOo5OEBs4m3QH5Ix2g?=
 =?us-ascii?Q?/jQZ+3v9FyYOsL6RbT3q6MN5tBrpQO8iqVn7qbGT8Z2WQ4ULOLJVbRNpODEC?=
 =?us-ascii?Q?pqG6imIFkeMQcagSxCyINpDSvVXByguDWK/+g8IdP7JVJT1DTfXwqv/kTg56?=
 =?us-ascii?Q?6qkOab0Y+ef4RaJJfdHDhaNhCTLEyxXa2LbIVk0jdfXgfeImTiPXq3d0QC/f?=
 =?us-ascii?Q?14gG1Mkqb9ivB+gyBYZQa/JxIcc6/Wq2Yq/BDVi2U3rY075WjReMhh49VdoW?=
 =?us-ascii?Q?JkGfkCo6t8EMdBupb8/ZHrNujyV1b40L0f8MRIN2TZnL8ofT6c2K5fvd/hnr?=
 =?us-ascii?Q?miSX0/xG3w73dYuiIXCbWyRB3gqXLRyJLlzzvgUmHfxbkIYoMk7StxL8+p5s?=
 =?us-ascii?Q?8e7dKVfT0FPnSQKj+jkp55/QWRbehN10V9T2BiPCW6U8/5YbCsNy4vjO7G2k?=
 =?us-ascii?Q?DZtcUXebIMEx6oM9fD0Xvzot8HuJHCWlohwNrVTeJ+jgzlij4TjUwOwlylgo?=
 =?us-ascii?Q?jQnuTnmJanuNOEayc19xRpP0CO4ON08M/1QHkH7F1/cD2nttIrhHN23jNPie?=
 =?us-ascii?Q?hubR/c3GruKRloPgDhw8+iC16pX5iA+FERY60c5UmREvaSaBe6iMI1WUj6a7?=
 =?us-ascii?Q?nlSJ/oPVwZ4wQvOmirk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6402200b-9910-47fb-19fe-08dd5d66a149
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 10:55:53.0260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2I+uOYtmWl9yTJh2sxF7iVEm5c2sFKt4/Npd17qLTN+GZY7gLjuflY9cv+Cyu72ZE7pM7qF3+4vsC7bDuOMPTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741344960; x=1772880960;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9WK4uZMSlT+4KVGmx15FNGW3QhZ2wkxdRK1kHciiuDc=;
 b=KQDfTpyS1Vu69XxVaLzx+vUWLsMLgi1288HeJtPvSRpl6lUMsvqunLpw
 HiMOzaxgPaBl2EE4X0N1gXXBQhsX/3Itoe3yG/VyGQ874j1rUZUckHRlb
 mBrbU601hMl9f49UmK0C01xWa1PTZMcA5OT33OMo8yZs3py/YBGnl90dR
 dOtvDDASYzcnlS5W0FYmjzmOLhRO7+jppvJtnckQ7AluySZRw7JTDQtYU
 Cj8591aLERm6seWvKx47hOR3bldHRTWLIdUhq7GL35rDOY/kFsu2eqn5S
 n5V+oZbO5bdPVh56U/T1G9drD+MQlC8ch6iORTmuS/VSf5kjcyLmJKm+N
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KQDfTpyS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ixgbe: add support
 for ACPI WOL for E610
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
> Jedrzej Jagielski
> Sent: Monday, March 3, 2025 5:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/4] ixgbe: add support for=
 ACPI
> WOL for E610
>=20
> Currently only APM (Advanced Power Management) is supported by the ixgbe
> driver. It works for magic packets only, as for different sources of wake=
-up
> E610 adapter utilizes different feature.
>=20
> Add E610 specific implementation of ixgbe_set_wol() callback. When any of
> broadcast/multicast/unicast wake-up is set, disable APM and configure ACP=
I
> (Advanced Configuration and Power Interface).
>=20
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 46 ++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
