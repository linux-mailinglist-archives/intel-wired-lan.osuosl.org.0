Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9879BB2EE3D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 08:30:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7B3783B9B;
	Thu, 21 Aug 2025 06:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oarhleoF7Q8z; Thu, 21 Aug 2025 06:30:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51EA483B85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755757808;
	bh=sYjM9Zx8CLtpdyCmf2G6ciA00EZYbkLd3dVcDoh4Ulk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v/0e2p/exA3NS1hKGQsloJ1oReltxexg/C1fjfHThlkns4YgcLptGruS2x5rYkEN7
	 PTVR0ea5uUBgOA+vbTIuIVCBwPI4xhuu6yO5AfuK6tsUgXyNRyWX8diLV40qN6rRRN
	 ZyhqJgfbnlyuHCIwhQGSPPaJfGBz+cQlLaG4bHletMQCPAa8Vrm7MQRpRrHXqWLZXt
	 Wj2s5/gsYcisSaDAa8VYoyU4FCwDuHN6kNuvpw0cjKzJgjjwQpxl4Z1JbigAAZhodw
	 ltNhShjmtOF2+KXHmYGi4rieuKnsgpYjipqzOLf1ox6lRmayJ2R4BfZAg3ywIaPec+
	 Dt1QEtuKzvMag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51EA483B85;
	Thu, 21 Aug 2025 06:30:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 206127AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 06:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0684B6155A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 06:30:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eHC0fwhm9LEo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 06:30:05 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 21 Aug 2025 06:30:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 53ABB61554
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53ABB61554
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=priyax.singh@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53ABB61554
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 06:30:05 +0000 (UTC)
X-CSE-ConnectionGUID: Nw0SIPYwQe+nF5U/x0Z14w==
X-CSE-MsgGUID: kvv8yHIkS+aw4Mq5dT8R4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="83456204"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="83456204"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 23:22:56 -0700
X-CSE-ConnectionGUID: SDkGRgX9SuuwjqDgO4pfxw==
X-CSE-MsgGUID: a8kXkKkNTUSIv7JmctwMhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="192011826"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 23:22:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 23:22:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 23:22:53 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 23:22:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rX2RGNwpkad4PWh9+bv3RRrzYCLZK/OF9AjaGdoSMnuudyyeBsL03XKg25jeATpG4w7t7UYDvcVonlJYXukh5Lm/iwzZHD6CVHUvIvXzyqg2rW/Pf1fODW3Rdwhs52w2bTJEj5zjhY0OVSpbYE13OrP32o7eUGvZrNT81+XHH/DNzQLJZwP37GbsMS6p01de0cit3HqPTwIgHXJYOAEafa8LjRDSqjZFU54MPaxFpgOpxxcic5maXkenM/QbGEidii+vqxcShFPYRduzSDCO06HfR1+7sare6lHpuun4PCeuEeYN1cBdoLIp8wOHRKI6nWBzCzDEJtnzTFQTl8aTRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sYjM9Zx8CLtpdyCmf2G6ciA00EZYbkLd3dVcDoh4Ulk=;
 b=KOc4sDf9SW1U+XidOF5tiprki5hJ2CqUohjPFTz9+JFd/+weL/3KDB0dsiGoSmkyfaV0GZ8LclKSqn/AnfzXY/IotQRIQN6yAvkysNkFCI1uhYoP9YI2KZGaSJNs6ZuU9+6/Smnb9caO4ot0DV5l3HmYuS+m/zK1CgYM11qbohuyE0xKOMcRrROUG1RBrGkeZkjPsPacHvjIKJKQtTFUKOzotrkZwRD694HefE5eZO7pMEtoHgXI4PyGOvckKwXl/VwS/aA/Oj4bPNPdPAIHilq6f8kpaNgdfCxEauGHTc/quXjKj9R8t60P9TFyKKUeDyRSYguPSGImkErIDvN0ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 (2603:10b6:518:1::d28) by SJ5PPF6E07EBAE7.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::832) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Thu, 21 Aug
 2025 06:22:50 +0000
Received: from PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480]) by PH3PPF67C992ECC.namprd11.prod.outlook.com
 ([fe80::8435:3b39:7eee:480%4]) with mapi id 15.20.9031.023; Thu, 21 Aug 2025
 06:22:50 +0000
From: "Singh, PriyaX" <priyax.singh@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter for
 buffer allocation failures
Thread-Index: AQHcCHzKm0URyTWIbkCtGiy+UHkQJLRsqjpggAALXmA=
Date: Thu, 21 Aug 2025 06:22:49 +0000
Message-ID: <PH3PPF67C992ECCA25302AB283AF3CBDBDF9132A@PH3PPF67C992ECC.namprd11.prod.outlook.com>
References: <20250808155310.1053477-1-michal.kubiak@intel.com>
 <PH0PR11MB5013285B7475C7F6ABEC1E4E9632A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013285B7475C7F6ABEC1E4E9632A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF67C992ECC:EE_|SJ5PPF6E07EBAE7:EE_
x-ms-office365-filtering-correlation-id: 4e0942c8-18f0-4c1a-599a-08dde07b2743
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sMXthBg3K03qsb4/9/7VHUfm8jHpfuJvE3gLd7auk7rS9kFJ0I2ToqJVWfEN?=
 =?us-ascii?Q?KW2+EuqexSD8rvi4pVKhMLMnJqfKovwCMk/HAJJubkkZxHcTuml/+q0lr1jq?=
 =?us-ascii?Q?1dvN1nyBqC1YgdazQ04cdr78McjBqqXOthu/jlGV8bwqbFvjFn5Xz69Ccqol?=
 =?us-ascii?Q?Mig3uScIj1C7LjHeY5EQlHPHgA8N6gFYovhxG03R9bsX9NlMyiB7OJH/+1qV?=
 =?us-ascii?Q?+VANRT8GMv2S0h0UKp1FkuNY47JnpL8TCzGOltiU2Iz3P+H0wrTx5sLfs4RG?=
 =?us-ascii?Q?sotOL7PbNGAur1Y9jpuMq9GYITRhQWULAcJAsd0lcU0CZhT7tU49QPVDtR/H?=
 =?us-ascii?Q?ynQ/Azf5Nk96ud9fqpVAtaPybdYQzmSeCgFyB4h1Z1aZ+lnDU/xn1JekMGzQ?=
 =?us-ascii?Q?Ymt/p29ayrnh6KDxBfTF7i13gKBflHRYCFmxBwAFJH2YfQDOp5q8eAFIAleQ?=
 =?us-ascii?Q?VbYRoPqvwOET3VjSkR6hql7DioybFgEzcknwtcVIQsP3SbET4nE+3cxnHsHu?=
 =?us-ascii?Q?pedEOmS7/IjU8QGlceRpsRBhU4pAZ8wxYLBlC5vXpzFwNGnASnr7UTo5W9RV?=
 =?us-ascii?Q?AMVXk9xbeqIuvKs/RJk05/QVxGf17nibVFnOtiSTmvBY3W4e10SI+L+XhJrb?=
 =?us-ascii?Q?iIghgFLvnXBAwcAbFc9a31LsCuG7oFVbW8RU9QPveyFojceWA6BKIq8G2REa?=
 =?us-ascii?Q?jJEM0ckW9xmqh4pe91C2L/x/1LpjnFmb/5dyLoTrtaZgq/asfqoxWPnkkF1a?=
 =?us-ascii?Q?2WVW+k56rQzy7PRydNdBiAWuY0ow9EX8Uc+glVVV3Wg2OJ2eMvmJJH3wsAl7?=
 =?us-ascii?Q?EGeICrtR08tPraEj7nFk62Br3wx1c06lR6JkhmnglztYwMXM5TUFF0uo/XhT?=
 =?us-ascii?Q?PadSF8v+I4FdSPq2V2FVnIGQIzOtfZT48/HfIkESfzMQ+EjN9VT1XK1v/KwA?=
 =?us-ascii?Q?stUxe9H2FozWkZKJ+jE/dySSH/AHDz1/0jmxyidbv1UTtgWErE1U9pMZz8K5?=
 =?us-ascii?Q?f8KfFXWnrIDNB5oMbzsGOJkeh9kz3ZpONTeMZ8oRtrjlBT/qTO6FgkAe8x3Z?=
 =?us-ascii?Q?hHUdGbQ1TkR+v2LHr5ntatWZZ0L5DFn8WTWvlmuXfJ8ZNkfr1w+xtilQwzts?=
 =?us-ascii?Q?+8V8Pgml261uY7oRGEUjnUeSfOnnR4mk7UYr9mcqndnb8zX2dFvR1qqt5jdV?=
 =?us-ascii?Q?Lz6wyakJhr8TI/IGlP5t5/ewf203FQE6Pl4o6eCcKG12WPKVHiH+pz1ZvwWC?=
 =?us-ascii?Q?tr2FNvZjPu4w+puyCzkXKpWegixJh9r9Wuvm9/jaP+aW5uOZNs2S5SUOeuix?=
 =?us-ascii?Q?6WwKJ6oOXNTYF34QWnFiKGjU2ab7AWJrW76wrwzSjzK7ZtNvVWbtYn3qUhMj?=
 =?us-ascii?Q?l+U8xVe4SVP/DHkpBxGemqDj7jn87772TwqM8O2ZUk4Pqj44dqru1X330uTF?=
 =?us-ascii?Q?H2h550/768mFVXGaGibQ1trYfeZGiRVn5U06Ety0w1TiIxtFTRL/NK/8yERs?=
 =?us-ascii?Q?ZByc1Qcz10pXAro=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF67C992ECC.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F5qp7R568rljSdakst/79cDtIM6nAeQ+Yh4yroWJiCja5sLCGPwW+4xKZkCD?=
 =?us-ascii?Q?JV/ovCKCFrcFTx30aZuu5UiXR+6U0oDTw1pSrAdfZe1TMLSmT/AOSOK2qAPV?=
 =?us-ascii?Q?M+oGRvJDAMzHRI0UpISgISzZB1tRS0klJUVEVgddqAs96QlLm3j+kCez8OPu?=
 =?us-ascii?Q?dx095nACnb/4XD7JAcuH+kPmBoV0D82RgXtLi7mXLqbjFf0g0BOOELMEH58p?=
 =?us-ascii?Q?k/uxxV0Ck+ouhZnq8fPxMvjbRsajE7OY4waILha5aPa1TZQ97iC+PtOI/PQf?=
 =?us-ascii?Q?91uDg2Db8ErntTrcpFl3kyp0EbBKLpf/yUVKPW7MKpiFBnonbt/Vw5izeQgJ?=
 =?us-ascii?Q?mKIhv8mlBX6vp2oFPn0EQUHX5JiQEm/MgR0E8+jkxYHAU5CYEN+JzCG7Qo5h?=
 =?us-ascii?Q?iTeooWjMWEMfRpmnRElBOm65Ep5RHtBThNMLtrG1nw++3crmZ5cHm4yUIfbV?=
 =?us-ascii?Q?rYqdp/4urSmf5QBNTy967rkZsIGKQuN/wh+DsAcxUrHSWn0AqTa5mN/RmUW1?=
 =?us-ascii?Q?y6tVKBU3q6oaFC6dCy+wGy5lGAmRGsXnwpFMuc3nn5q5bIOX4+rnXCZ9ruGD?=
 =?us-ascii?Q?D6unIZGnY0M95MV4s/RPLJ6eKa34Q8ZLCZEwMwfTxQf9hLDpRibXKf2FGkyL?=
 =?us-ascii?Q?KUJCpFYnzSckvWwgyIe2qjsugrWFX21rYQnyoBTPhEObXP5imW0vvudS6t80?=
 =?us-ascii?Q?wntpGnzGsPaBzTZYKa33LmstbFwCmFV0fswW6kAjNNck7+PR0tdX/gpwGYrX?=
 =?us-ascii?Q?IXZj/cgXw3n0+cQzHdaprcldK31wEFS5rgtdTzH8g1h4Ed1wsBam0LKo6SJP?=
 =?us-ascii?Q?LH718hHMT8N8FUT9lWslSelIGHX0l6fqPCdLON5A7r0LJjfwcLS8pBJRYGWw?=
 =?us-ascii?Q?XmMYd1HMk0/1ln4b5ySSc6sMrOploImhAkZU/vhf/dyhJlj5gH3cr2EF+g+h?=
 =?us-ascii?Q?Qg7I3TxOAvbmJGONSVFW2hMnfTBE7dzSKPjKzUqQgnh9x2rikMM+gfVxaEYf?=
 =?us-ascii?Q?ebv+Y58bOdxtwCu8xRp247bNJMXS0XFLBEvyTDHBoPLNjGiLUjx7WT5C2S1a?=
 =?us-ascii?Q?iSVWD9DGKXpXXoV1O5yzkuL4quPZZxL5mgs2vI2dCds3tmQFUOeM59Og3wks?=
 =?us-ascii?Q?vlKFNz2xvLC08uqYRl1Q00YffqbXF361Q+X/LwU1a3r/fzWM1rt8n5UQZB1g?=
 =?us-ascii?Q?p49adXDRwxPhgSyWceZLJx2ezwAQ+B/MDnMAD0zh9cKF8TAve0hYO2kQTUel?=
 =?us-ascii?Q?A8RK8If7nMQnlc4paj27imFyBjetoc1axL8U3VrM1f0EpUX8eMJyA4FawJSC?=
 =?us-ascii?Q?buo5OBtaCP6UUAMfkIMvhf7auzBhFEpIGCFQW+7K7rXvZBTTS1ZQY8QFATVW?=
 =?us-ascii?Q?JJaLTsHtoVcREPkHgSzSzkp9wqwPQeZ00xb0+4E7r/c8SLallZbe7ohk19hF?=
 =?us-ascii?Q?oXCfS9IUYXe6Li1I08gBnnAE/6SG1sMjslPA9CpzXlqvmpgplEIIaXG5ybIZ?=
 =?us-ascii?Q?W1ZK6R00op6+mOFFyHPI9BLgD5ub/AJdknCPo1sfsOeBQm61ZTjyMdhgUTVD?=
 =?us-ascii?Q?y2fUXVhyQQAzqJ9/iFkY+Fl1ZpbVY47gglo9yYCp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF67C992ECC.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e0942c8-18f0-4c1a-599a-08dde07b2743
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 06:22:50.0754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bSWQsxIMlxrOBGCu+htsxUqUGIGaqc1hKU6k8phF9wygWE8qwOliubKSbWgr/Hnt2WfC6wgaTQq3Wcez9OS24Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF6E07EBAE7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755757806; x=1787293806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fJEKmpPf83xviXYzdYxkcXjvT0yXn+8vgGh7VwspY1k=;
 b=Xs9dsBZCC01VOk4SgkH4XI8z0+Xry3WUclBz1vvXDD9mSqGJT+fK6pfx
 +HbDMSPrRErQkcx06mnEcZcrdEJDRe8kkVXYbgydI1t2hzeRGD3xarz5s
 ymFcoF9IUZtlKUITVDLTZaIn13Wy9YB0CDHHCjqPm9IIyDiJWeNwblqbJ
 JfdtQ+ZolMwxWDXwhtWLlFG9F2SoaLgsWLkJDF7/MUkUe+lEvYerTL52e
 aMiuk+PwoiZe+xoM+fuYaTkZuCPNxPioBbQKkjL6nnLFTLfxhBpRL2IAC
 HgQv2toJNwbg/R59jblyKYossQhGwlRCEGsps1ha2wsB5e5ST/mnBeBe/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xs9dsBZC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter
 for buffer allocation failures
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Kubiak
> Sent: Friday, August 8, 2025 9:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kubiak, Michal <michal.kubiak@intel.com>;
> Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix incorrect counter for=
 buffer
> allocation failures
>=20
> Currently, the driver increments `alloc_page_failed` when buffer allocati=
on
> fails in `ice_clean_rx_irq()`. However, this counter is intended for page
> allocation failures, not buffer allocation issues.
>=20
> This patch corrects the counter by incrementing `alloc_buf_failed` instea=
d,
> ensuring accurate statistics reporting for buffer allocation failures.
>=20
> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> Reported-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 93907ab2eac7..1b1ebfd347ef 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1337,7 +1337,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring
> *rx_ring, int budget)
>  			skb =3D ice_construct_skb(rx_ring, xdp);
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
> -			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> +			rx_ring->ring_stats->rx_stats.alloc_buf_failed++;
>  			xdp_verdict =3D ICE_XDP_CONSUMED;
>  		}
>  		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
> --
> 2.45.2

Tested-by: Priya Singh <priyax.singh@intel.com>

