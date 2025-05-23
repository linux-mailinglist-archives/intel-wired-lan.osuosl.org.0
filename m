Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E82AC1D00
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 08:32:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B88F60B04;
	Fri, 23 May 2025 06:32:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vPJxWTHxswFI; Fri, 23 May 2025 06:32:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E72EF6084F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747981930;
	bh=lB7YSou4BzxNbyqnbjvEmXQ8car3MI4ZCMEGKKkE9ZE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ljaIshYaSSEK1MObBJnz8yvT5KAXsYuuduQnA4I2S6zhFgdwe8DZq8YzXco8tE+IZ
	 +Z9gQFvz0o+MLLhWuClij0O6zX7Xkh7doZtfdgkwkIknjm0BG2Giw8bxLck2nxewMl
	 FNcOlJqOYbx2TwNQp5iOnTeprJd10WH+Z4gHuMO5uY6O0smgdHAG+chi43CMmYXHg8
	 JIPXZA+YezaFIvNOl/3V8en+kWzLg3IoaMuZTB6V4uHwLwHgKzkR385DYBDo6ZHMiz
	 11Ik+MxcVCmLz/P54faknT85LgiCVnRMSwWeD0N354h1XFSr8WARzr850aiDurW414
	 5fnEDNXm0wG3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E72EF6084F;
	Fri, 23 May 2025 06:32:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A36A9179
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 06:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 952B741AB6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 06:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fi3vzI6OKdZS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 06:32:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C160A41AB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C160A41AB4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C160A41AB4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 06:32:05 +0000 (UTC)
X-CSE-ConnectionGUID: cfHmT6CPRGOv8cRhTs4bfQ==
X-CSE-MsgGUID: i7HECzjkRPO1u0j8S6IFBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60281190"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="60281190"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:32:05 -0700
X-CSE-ConnectionGUID: FjxOO4PYQjmApPsbhBgROA==
X-CSE-MsgGUID: fgxdXrVJQwGIPev3Vhyhfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="145983960"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:32:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 23:32:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 23:32:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.67)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 23:32:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iG/BR4Zesh/2zVuJvdftWWjQuPTBwa57JUDmAOd/aUrWOMst+PVFikmBA8OqRRAHBHswzSjtBG4muTSYaZpIXtm3LbExfJ6T+ziLeF5ssCItAxofwC10PEjrwVvzUPYj6NcuU915d6Nidl4psKKoU1cA22OyOpoKd6ijmAoGq0VhKUnw5wf4kAy0TSLv7yxsG1aEa7+UHlpcKz4mb7CgE9oUdz9tZu1ZPYXZw/MLidz5EuLJDsaXj0iceZNgcYA7E23TYpqcnwl8XFutOLmfWNXRZ34/Ep8G6YPRwTXBh4DZBQO2B3o8DI7XI6lL5G6JeJXPeBt7zN/SQ7rTmBxFsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lB7YSou4BzxNbyqnbjvEmXQ8car3MI4ZCMEGKKkE9ZE=;
 b=nkprMdDNeDwNLzI0ApTydUju54SlgNwDoCWVb9Y47Ghg7Lt2IgcrB0L90Hy5HmruRLaxJlrTZDu5CYZQpVsftLtER7XdTxpRm34BKFVwxD+JJuKeX4Aj4gHTpqTqcWzXBPcbo5k/lMANeXx6EYheUb1wkmXkV9Az4ZLLK/GnoJ1pyXgZRzGtZww0CEd3RE04dmOAK+XHG3Yd6wz92IJq/CGEHK7ClomNVA3YMkvEuRiBcwCgWQvD6XxohcF4KKD27ncsWjxSqjAiza6o4kjpWkooTb3hT/JVxmaM84GdCRbi9XNeisLcAO/or/Wgdg0Mbh2UDHE635vKo64CquW0Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB7450.namprd11.prod.outlook.com (2603:10b6:510:27e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Fri, 23 May
 2025 06:31:21 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8769.019; Fri, 23 May 2025
 06:31:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in
 eswitch lag check
Thread-Index: AQHbyz1/xulJ5E2QcU6SSgpj2g02SLPfwgrg
Date: Fri, 23 May 2025 06:31:21 +0000
Message-ID: <SJ0PR11MB586614BE03439D4404F1F47DE598A@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250522171657.3784177-1-david.m.ertman@intel.com>
In-Reply-To: <20250522171657.3784177-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB7450:EE_
x-ms-office365-filtering-correlation-id: 1a2d1aae-3717-49ef-885b-08dd99c36eb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3xX5VjCzQcWHTiE7qx+A+QL6dVBJAgTi2yWOdHjcrtG7NVw7xlkjLzZHl39N?=
 =?us-ascii?Q?lo3ZpJNlsWJuHDvRqfkNpFqUA8az8SFkUajsmQFL22ZzBFK8TY5AYXvvnxBN?=
 =?us-ascii?Q?VOKefnrS8aYkPOJNhLxCT+p+6+yPWFp265aS1n5S15jTuIQ2eDkQal9GUt5i?=
 =?us-ascii?Q?b5i+0YBdMNP5V/W39Qe0e50oPgQt0+p1O0+XrW5hJXOFErdKA+sv9U4l4ByO?=
 =?us-ascii?Q?zmzJ8uvEzRikiI6VsS/gNwq0OcIceiIWJFRi/FCBaRQYLA0PL0MD3vk6igee?=
 =?us-ascii?Q?oOfVU1YL3rQ43cIaia0UGTzzRB3OLmrNujbeJxVTdBt5QpK3izjoGEaQWIw4?=
 =?us-ascii?Q?58ZmXFCPCJKgPqHTf7k81N+4UouRb0B87hK6LlBZqMqsbd/4DTZlCXuDQRm/?=
 =?us-ascii?Q?9FbTPWU52Ef8tP047GtRJ3wFVXqG6kfaktgfoHig3N2IfqIw5ECN9d9DwDue?=
 =?us-ascii?Q?eYuVyJvgGicmMXQ7S7LkvoOwH9RBUqNUMddGYnZOhpc64X27M2whbYbaa6yk?=
 =?us-ascii?Q?yRDCElO77I8A0tYjj+JBFGcM6lgsBp9nRwjK8bgpaO3cfTPBgMXkTIB6rhYP?=
 =?us-ascii?Q?DFaas6wpb7AQi05UotCmHjTa+HWw/fx2DZP8rCmdwR12JaRtoIrtM+ZHK8DJ?=
 =?us-ascii?Q?rZ9hXBBj6fkAo5Dj/CIbDrc1umbzy3sUmMYDdzszSU73Df+TXLalqmMEL7s6?=
 =?us-ascii?Q?4i2/dtLDAjAxSrCXQW+rlTfegh2lxECWR5PP+jlbzzBU8hbtncwk2wp6mR8p?=
 =?us-ascii?Q?WhdNOWFqo8ZUbnEXu/rXHix41O6bToBOrczKeH//CO+fX+JNjGoeb4tCwPXo?=
 =?us-ascii?Q?beCixY0Z6vkl2I+mi988/6UOhkFMg+mcmwhEh40vzKoiKWjxF9ogFBEMeVGu?=
 =?us-ascii?Q?dBPUinY1jdA3QPoePNgzmvww6wlpTBD0j6E/6VTir/rTe9/ekTJNRVPNiG8b?=
 =?us-ascii?Q?9qYenrhFEdV82+pkxeX/8QX9dzZMECzJW8qv9XLNhbuZ5tMyDHiLtW2xZw8q?=
 =?us-ascii?Q?4bQd/YabHsC2jy7wbB1YhqlkBECXewuLYwL3wjE5aIrc1K1JD+9tnuYVFeh0?=
 =?us-ascii?Q?Ll8sVj/it9GCojDVwH4fwypyplpgff9fNWDOYGlk9o8I1LzmOV8hdG7uo6UB?=
 =?us-ascii?Q?DB6oOy9DfHdc7kcuYZyDt5XBZ9q5g2TfZghWL7DPwjJe5xX72s1iDjTJ2AGi?=
 =?us-ascii?Q?oNPCAZQErvwm5B6eM7+F7WmPdWYb+L5/9mSAdXGl2cT9ivlZqRIUbfCO7s02?=
 =?us-ascii?Q?rWBsDQLqDBPft4o5Uz7f4t3P2+dArv7t2hDC6+kZ9UOVSTY2d0VO7DgF8UyR?=
 =?us-ascii?Q?QBPCnYkTqTFSo0GpWdM3lP4MXiLCa3yn2YeV7IXj/XY8NMn9FYRyQ8jjc3OE?=
 =?us-ascii?Q?VgPFuZnm+DqxY9oy210RTZe2xkW0X+z85kz3Z35uwxpb3AqIP23DihhL3GPf?=
 =?us-ascii?Q?i1Uw+9PW76ZiW+mrVEi3AHoN0I4hk2kw6woW874bfi6eY2S67huoUA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2qZrQmCv/oX/JcnWtcgG207YWdVd13NEqaa1psRkU2nW+/nSpgCNjZFgkNrt?=
 =?us-ascii?Q?tBBmkGN69ftlDBzbtG70JEAxgq88LClQNP5xa1WdZeE7kL3U27j5Z1e9LbGP?=
 =?us-ascii?Q?24aVNURgF6GvsB7rrGG9fuDfrtiU6N32wWVvNKI2fSaw0AS8nANDgsQ1Ra2M?=
 =?us-ascii?Q?3W3TzqugmBWcJhmbUYTTvEnCjFooCCYshWrrOs7sGN4RsPAVg5nyxi4u+8uP?=
 =?us-ascii?Q?gD/NnNsn3coD21dqwTXdWsXP1DSZrfchJANs5swK11bPl1Dj2PRjC3FhgLBO?=
 =?us-ascii?Q?Cz660/tPKhhm0lSjtKln7+NAuiq3VxGpN6KeJ4CgebzY4LT0Nvq6ogEvnZwY?=
 =?us-ascii?Q?JHscUa5iNdsBIK6U4hy5pjXzkykyVAUBGWG7qt+jmyNLrR1jGRHFQWKkhbx+?=
 =?us-ascii?Q?lqfGiefKVoG6fYUoHbvgdukA+qeoSvuHF8Nu0BgJdnyEpSeuC0saxCrCl3E8?=
 =?us-ascii?Q?X3vlSPXpTOMab6oTmZPnoQqZF4f/bjECDzVeURT83ok3v24axlQk+vwhLvkY?=
 =?us-ascii?Q?AYkcBJNu70YXIFl8FGibYrjo+zsbCThADqxkFbNzUD+joEXJmzuTpR2i9zq5?=
 =?us-ascii?Q?z9IUYOVN1yv/nu63qKZ1zG7mvP/+OKnCHxYfAClLJkLrfTT1Es58z0y8sSwM?=
 =?us-ascii?Q?6+7+VKHBClsPPWrGV8tqCv1DAzwDXJp0iUSor+9eeUVMn1PXaV2eAVeWyBRz?=
 =?us-ascii?Q?Jb8QwSGrdDnABeoVrm8tV7B88OeL66wRaq544Sxd55jakf1r2NZLLpUoaql7?=
 =?us-ascii?Q?pKKa9y3kVvUZyI78751+Ui3RhtKWTl+OXqeNnNxQZ0tjYN0hHjmgiFUjoKze?=
 =?us-ascii?Q?Sp82UZxsP+jpi6n+bTj5r4Vzw+EXO5JhwtEOH0eILQS0dCfDCONosNTgRBf7?=
 =?us-ascii?Q?PBcFBEGne9k1ryWgDnJS7npKXQ1YNkVvKX9bqXGHuLNiyVZ/Xt1vkLfcwQhE?=
 =?us-ascii?Q?Uj10z2hqaHYotUJjCWKo86CWGl0l8oWkLNGeuS4xY69QTkt1wDE3NAaxnXnP?=
 =?us-ascii?Q?wSMgAWkGpM30xeZJGUVIodJXkpNj2D1W926FwvX1UMwCBypHsQDpnIx8ZKzY?=
 =?us-ascii?Q?203CZ1A4ktNfVZhAIMv9MdDxO4gbfzdvv5CcQSNFK78imYkIliloa6VtVY6t?=
 =?us-ascii?Q?OXF9DSrRvIUgruaqPzWq+Z1daZylFpeQ2JTpfmRMttDqSgzB+nqos0LcPJ5V?=
 =?us-ascii?Q?OjmK01HFsHOFPz31MieaL4b1y7TaVA67+1ae07UVIlPibWrSdMLJBLoVYz+M?=
 =?us-ascii?Q?2/R9N35GVEXnqtDN22r1rpdOJwRhPJEKqmrCjgyyqBoiFV3Evz2AXhF8I96Y?=
 =?us-ascii?Q?LzqUu7XTuLurUa8hOsZYnmWqeuDtwL+KA9FYwv5URqCc8W2sVkksZbNtjBH1?=
 =?us-ascii?Q?05Cj172W0+If4dE+R7EwfsbT861xbX9X1qiPBA4i6finTmhrTG4NraitI/Co?=
 =?us-ascii?Q?APaadt+O1u0iocGRNmX42MqYTcHEfe5cu4qCQlEyQIFlQw1uM5kdndBneXjw?=
 =?us-ascii?Q?IYHKsNZ4ocW90mjEwcBcKEoxXQhzzSrij+QnMXMxBeGGej4lwo+zDGxcvIhE?=
 =?us-ascii?Q?JGEloc6oAtwjtqEcGCffgh4MEGsUYd2PlIrrAk0SbYGjn1f6fe3NZn3qJiix?=
 =?us-ascii?Q?+g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a2d1aae-3717-49ef-885b-08dd99c36eb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2025 06:31:21.0968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PGKGkprJ/iI79ifYy5v6nrssY4kLymsD5RE7yDuzaf4JSHDm4SY4fV1nHSxD033FkSV8Iu1R9t1s3lqSdUz9bk+vo4BVO9O4WpV66xRxiNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7450
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747981927; x=1779517927;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E1Bl6jRsW+avwmb5CwH9GC9gUXZOTSVie/M5mUVieAA=;
 b=A3z3d3hF4qTfBDq6RistZQPcXnihM1/dNfRovVP6hwj4FEPpn3tpNxp0
 5hnf1gihwTtuADkjvKnebuSD19Xefrnr3QVXTTJ2Dky1igjU1kEyz5DKe
 Y8yVCGGmmURMISl12Nrnhg3QPF3TKAGL2P/QNS+bpC6Xk9jHs5+V5wNHR
 9x5QU7YLMBbXrpHBPwwWe29xQuC2/OMPxTQI77CcWsqn9zy5nFC7FT6Kd
 YdHsuBySZL3KDmyw3//gF7NhkFzcE9MGq9jPfIhyec810ufAa4/q57ud9
 LXXM4hJ39iCclT7gpSGulxQE4XRs3xzSHKDHX3zp+qGKf4hLmTVbmikeJ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A3z3d3hF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in
 eswitch lag check
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Dave Ertman
> Sent: Thursday, May 22, 2025 7:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in
> eswitch lag check
>=20
> The function ice_lag_is_switchdev_running() is being called from
> outside of the LAG event handler code.  This results in the lag-
> >upper_netdev being NULL sometimes.  To avoid a NULL-pointer
> dereference, there needs to be a check before it is dereferenced.
>=20
> Fixes: 776fe19953b0 ("ice: block default rule setting on LAG
> interface")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
> b/drivers/net/ethernet/intel/ice/ice_lag.c
> index c5e3ada4746c..e22f2e5a3b19 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lag.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
> @@ -2798,6 +2798,9 @@ bool ice_lag_is_switchdev_running(struct ice_pf
> *pf)
>  	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) || !lag)
>  		return false;
>=20
> +	if (!lag->upper_netdev)
> +		return false;
> +
>  	rcu_read_lock();
>  	for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
>  		struct ice_netdev_priv *priv =3D netdev_priv(tmp_nd);
> --
> 2.49.0

