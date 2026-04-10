Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOPbCxKx2GljgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 10:13:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEDF3D3D6B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 10:13:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 11EC060803;
	Fri, 10 Apr 2026 08:13:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vQUNDEp3becE; Fri, 10 Apr 2026 08:13:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 794FA60A7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775808783;
	bh=tFHP/gwbWRsqkxNOLSWxFxCUrI3yeOpogzki9gUdfkA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WHFP1Ywrz0pCdwZ+hVXb/h5KIUo5aDo/WIVf+ulxI2picPTmODW7mR3I6iD2CGwPp
	 c9bkzm0d6GXKD+OTdncawP1tMofGm7UP/chRGy3aCKsKmvr1yV6nKOy2WVRf2rYCph
	 fYfX0aBXshOy1M8+qXpiEh8UiYlmDiXd5Uk5leQL543kZJda6ZBHz1At+2U5geJ96i
	 CP90qG1RC6Zv59woAsWTj6Gp94nDbdxScbW7eVeOKwjZOX/7YrySGclImOvdhXXioK
	 5QoU0m45Daa+ccYH6djzwIdwyLRSBWtlXyOnM1HBI/fL8Qij1/ToN32nlLkb67PfkP
	 jI+4OyDPsaV3Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 794FA60A7D;
	Fri, 10 Apr 2026 08:13:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EEFFF194
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 08:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC33B821FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 08:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0auUYrbQQcyG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 08:13:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F1ADB821F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1ADB821F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1ADB821F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 08:12:59 +0000 (UTC)
X-CSE-ConnectionGUID: 1RLZqtT7SECKsr2WMWR28A==
X-CSE-MsgGUID: Z4OM/n+LSWa1Ql3tfIATkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77010425"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77010425"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 01:12:59 -0700
X-CSE-ConnectionGUID: wx2VQJuzSey6kK9s5lMPsQ==
X-CSE-MsgGUID: BYFC4UysTR+xZjbNBc87bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="259487853"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 01:12:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 01:12:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 01:12:57 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 01:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b2JGj8vm5kRJFUiQy9X1Kb50g9NF6Sk/UTb55JHXfj2U0X7NhUAp7F18Mu5H35bUlgMjjs0gMDB5pmEqmkRwxkH9AZAYJLl49t3N/A4jA2BdhRin2CLhYxRn3nGSUI7CQ3Uue3KHDRmzG3Ew0CQYDaG/fp+cQdp3p9HQmy8e2nXii4JrylNfusAnsRlwcoqsIUtHGY0Fu+WgBAF0BQTpD33/nEFco63sDfd6pkdWEXrXE0xcHhYFwsnDtPjKF9AKUx2kDgolj3cwQhgwgcQy/XY1DswiEjd5rRtg0664oj08ZEHVXiqhL4qMn8hpvcO32N/nm7T6WCUN8xJ7L21RPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tFHP/gwbWRsqkxNOLSWxFxCUrI3yeOpogzki9gUdfkA=;
 b=cLPOCFq6STIOfJUMsFH2pw1zBBjWgM1Wx/0sddQmpRoXRAPRf52RqWOMJ0NntTyGm6ySC8wT/GXlex3gmVxBtbpqFBa+pHXPCCSkLfxMgt9tW5YOqeR0ETbQCrCUr+hNAqOu6+uDxAZlV6TTO/ZFLXWmvodqXVGgIX0/HUKsFHFZjS+m+iT2/PI+5a2KpHJepGzWO4VJX6MikPE896xwtHTlKTxno5KjSqPir6/tjK6uJQbyuo0O+kcPG1/E9sfVrC9X+NygqkIvw02x1HwdL/6lxTAmSAvxNQgIXRC+MnJu1e/Seo/XWe6JByG5gkua/ruDnhpkVCKmf3+X+jBnAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CO1PR11MB4961.namprd11.prod.outlook.com (2603:10b6:303:93::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Fri, 10 Apr
 2026 08:12:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 10 Apr 2026
 08:12:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Piotr Raczynski
 <piotr.raczynski@intel.com>, Jiri Pirko <jiri@resnulli.us>, Simon Horman
 <horms@kernel.org>, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 stable <stable@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix double free in
 ice_sf_eth_activate() error path
Thread-Index: AQHcyDM4TEtzVbvVME+lHtoegk6+m7XX8yXA
Date: Fri, 10 Apr 2026 08:12:48 +0000
Message-ID: <IA3PR11MB8986987C46119C4E11DB604DE5592@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2026040919-junior-glue-10d0@gregkh>
In-Reply-To: <2026040919-junior-glue-10d0@gregkh>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CO1PR11MB4961:EE_
x-ms-office365-filtering-correlation-id: 763987e2-5bcf-4f0a-4480-08de96d8f3fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: EZM7k2lZkKjk2F7GHu+pKisL196Ul8rfQLTLtYSyJR/88T4AsuBQHVh8Xs5THMJosGS+ys8jkg24QFpzvpQckUFyAfvSOW6qp8kmPv2T2m7CgmXCOJCyaVIFaOnhA/8eM/vQFbJUi5pLvuL8R/SSI0VjWFvelkVLaDsyRMBeKA4l0OyAXI/QSxTL5EVPud5GYDdu6o58Rm88y+rGzk8wssptweV4dp38zx+oI/VmHcW4ivCFHK5P9967GaLjeCv6dDtPaPHq/BW34QlQZn3ahmXaV0haOmFk24WVMQDOLeIHDyeQuBMTvFr5vzxueV+OZnCSLSiQbFufLU5rBEPp+rQs1kkDH4Jk98pfQaoQ+jEoGVl7RYqRxX4ZgsH192gdo5z6Z9JzC69NCGaEpetYDTiGry4fm3aAakZu5URvJoXxpACi8syx8H5Cl1/zWUwy6Ivl04DrPO2TORJFDC9aYDF7bVI0QKVb4bG+lCw2b4d5zwE3vwFZYPQg2SFiYRGOxr4QFP2LnK2HYDdEJt5FjmnzH13XrYFz3jLRQGtLVe0jA/4+uCdRNX1lIfc0myspD6k6ziFlLR0ZA1qm54ctK8gndQBo9thoDjwNXqc3PWQw0et3cajGQhbJk93BTXmIODcwi4OGkuXwfD3CHqKWF4gF9hcR1C8LuSGUR2uUoBSzpj6D/HgkHkHmIGXbyQZ7L4jTQjfAh6u16iaIYDcXfSyCatvom5FvtqKeDyQK7xISqKLYrGRxVRvbcKgKpfLam/rJzPbB3Mk9TAaSVKfh9ujFm5YrLYjJAJdr/UZbfVU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9YRL78/A3Bodab6OM+aeqm/pT7EXWECddLoETp/mbHbmVmVCBH4veWoz7xgW?=
 =?us-ascii?Q?SXJwaTsDEwjBnn4owAh9kmx5Y4kh14Jrfa5kxe3lVxpp1DTvvXWCp+w9noOc?=
 =?us-ascii?Q?oHTwsletbblHcoqbJFAkGj3Y7rcVb220iD58w+D0ryHH/bOMJ3kHd1TZFARj?=
 =?us-ascii?Q?LBx0tnp/sZDw/Jd6ZbOczspby2KFAiy9U65LeTlj+2N29h3h7/GGMqgjFD08?=
 =?us-ascii?Q?VzZ/4bzDXGG2momKpK9gnNyY61K0H4jJOXNvn93zyoOcjonmgDE48/wKP9fO?=
 =?us-ascii?Q?g3TxJbSlE2aVIqa+KokRYZUOtKglEPNSgmlPIURuXJvjNa5tk1WYuYrzY1QG?=
 =?us-ascii?Q?V85R2tdRuzTyYVqJGbymMuIZRwMSjhS3+WkoD8VkzlDXSzMdQ2nF+2F2aZvj?=
 =?us-ascii?Q?F6IRDwkJkZk9BcWmYyobZLkWx0Ue4D1jQBPsvIhdd6B0rEvlLO2Lw3wLhBbu?=
 =?us-ascii?Q?VC4MjYT4T70t/22nkjFaVpm6komkWUheVpUzftT8+9e0HQL5e8486O+O4Cv5?=
 =?us-ascii?Q?FUom9Qj/HB5B/PLMSNgS4rfcOZmrqSMkV+/9FIXJvDlAvWtcAVy4bO6u7NJm?=
 =?us-ascii?Q?SDgTZa88rCKQH9zlYzSPONNERxS4BmE3uC9AOSm967LuZ/UuGq7kHpP4Xcex?=
 =?us-ascii?Q?HvgmzAQfq8Jqwl3L6JmqVUpGu+UcT04vw3GKgpAV+qUS2/8fA6pCNmwXaT2Q?=
 =?us-ascii?Q?0lf0uq5AELV5Orpzd/lUcpYl82dkQfWIs5tVCsD/CGdWsGuRjZ49PzSKZIf0?=
 =?us-ascii?Q?lkJk40+UFJZiLODWAp/ieQJ+CponuOzZAA5XXw5dRvOnv45f53o7tRsElCR8?=
 =?us-ascii?Q?fSl7p5nmVgZlWTgd+fqS79UIwtA4+93ittVcoHhvRnNZJJdq4G57IK5hDTh4?=
 =?us-ascii?Q?/wYmrmStjSPv6f3vtAG5ul8zSgtQhlGld8gf4pDRso4oyc+SKDZTyXhc15gT?=
 =?us-ascii?Q?dKe915esq8seuDkvE1o7Hl7gncjGLAVgSqIoIuCBUEkE0aqRdQFPQdemqjr+?=
 =?us-ascii?Q?uNXC8A55eTDFmQAneKF9nkxdDiAla4Rjh1afTIwWWmF+nJR+zCQSB8q4BbxM?=
 =?us-ascii?Q?ivcEr6J/7XiGdo3LtT5b3XSfkIJk0hMWL3XG1REy44nmAYUmk1hy7wh+XPUC?=
 =?us-ascii?Q?eXeRwInfVUi85yliuSRW/74FvNMDWIIYxh4kV4EJbwGNLyEQT36amu5bkFtY?=
 =?us-ascii?Q?vkirAuoUsIwtkL3imczYfN1BJdhvz8l0AHm3O/eNEkZrV8PB7QBphgrGds61?=
 =?us-ascii?Q?nYNyLATtbwSfwVrM6jQuqslVio2fF0GT40Y9T7hDb0CCpdWocsXr9+zHOhSj?=
 =?us-ascii?Q?/6igY3ew0ue3UqggH08vctEHGyx2eBGYv4GIMr5NjlW6grgtic6IToAGL8a9?=
 =?us-ascii?Q?TjdFnNCo35jDxQ61c0ksFq6ccbJLiFPumXD2kx9TgbsYVou2Mkj6ALC4yPNz?=
 =?us-ascii?Q?M0yo5rXDgX76NIpLfLO7CrPu+9xsEZQgh/dUw+jzuCpKmUL0coAyeOM4TwJN?=
 =?us-ascii?Q?PQmuX6LYp024LGMXzw4rkCoBKigpMKYwb0QorBrhVSxhsKYoCKNqmNjv8fN/?=
 =?us-ascii?Q?TTqjBRhIEFRerAWt2fkWo6vIiJRyczkAKLVfOPdrlB5PARk/poDT7Ob9sIQv?=
 =?us-ascii?Q?0hK0V8VMWlpktFHWcHYYqlWaezVl257Zeq1o1snM/1uQYKWMrXA9uEW/6b+b?=
 =?us-ascii?Q?ZR5+ou6FLuxx2G3haHDXmuXj3xEiDkIBSrebFrgs2qXYIEtU+lPYHBt02xCT?=
 =?us-ascii?Q?OppvKEWGWiA88HzwteVWx/CUCZ+eGTQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: B+SmnTmrIuCYor6j4mM99fOuF2Yr0xlnH34iOC/aLJHdd93AFB+XHvReY6/eiDRuURaCCdRUE6usq1XHHsS1i+K5kwhOzcm1vLpafnPUZ/znNrtYeKqvn0ulzn7I4OdU/HF04K38Uacmpt0TCW0RiLKOUoKtwLn92/cQX7o8ObN15uBFZVr+jWXcLPtyrDgxo+bpWrYwcK6kRZJUCEBb2bKp3SNhrZf/yj6dIPlMPQOQge+XI0rTgx/rXJcD5S4w2qENrLwD6KT5vQHDDUB1xNjOdYdLJz2JjMkAZjLY4sPR87Eu5QkqFtv7InqACgURM0fESRdT7zkjNnq8bz5feA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 763987e2-5bcf-4f0a-4480-08de96d8f3fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2026 08:12:48.3447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IyXuBjtmnN9IKfegBmBGv8gUxG7zJHPrWdfbikEUjLysTnX2lE0ABQh8oaS11nCffXcty1Nu+rLtdHeh/MtwzoIaDBPxt8Fg7zsoiKVisDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4961
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775808781; x=1807344781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SJV0mL7kdr8Wq2gS/8k/BUHQGP6tNTG4wz4CjBzMQ1g=;
 b=d0ADOKPCOOETDMwcjwhPMmehvv8pries0PXu4Un5WlHeH5UB8MVJ0jyJ
 f10oAsc2tzCb8SKJ+7FcMo/Rx0ey77+MOx5IXYtmqVczl3/B+ubypOeJl
 xqO1t2+hPgFJLi9VO2nkzOFdw6bW5pa07zXXfT5p1hxf3CjhsutUSkEAz
 RDlXmIcOqRblzEuy9JNDhYf8Umgys7DeuyAx/KgcOSJdPHpa7vXWWZjPX
 iQd+Tp/uz4S//xTywWMpQ4hw+btoAEdW4iFOCzslaNpH46lHKQILUI0ZA
 omAMyLW/9Yv6tYyqyY6XMuE77E0hmP1Zc3kUxzH8Nl1upVdZrhYs2Ip3F
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d0ADOKPC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix double free in
 ice_sf_eth_activate() error path
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:piotr.raczynski@intel.com,m:jiri@resnulli.us,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:stable@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6FEDF3D3D6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Greg Kroah-Hartman
> Sent: Thursday, April 9, 2026 5:11 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Piotr Raczynski <piotr.raczynski@intel.com>; Jiri
> Pirko <jiri@resnulli.us>; Simon Horman <horms@kernel.org>; Michal
> Swiatkowski <michal.swiatkowski@linux.intel.com>; stable
> <stable@kernel.org>
> Subject: [Intel-wired-lan] [PATCH net] ice: fix double free in
> ice_sf_eth_activate() error path
>=20
> When auxiliary_device_add() fails, the aux_dev_uninit label calls
> auxiliary_device_uninit() and falls through to sf_dev_free and
> xa_erase.
> The uninit invokes ice_sf_dev_release(), which already frees sf_dev
> via
> kfree() and erases the entry from ice_sf_aux_id.  The fall-through
> then double-frees sf_dev and double-erases the id.
>=20
> This is reachable from userspace via the devlink port function state-
> set netlink command.
>=20
> Fix this by returning right after uninit because the release callback
> handles all cleanup correctly.
>=20
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: Andrew Lunn <andrew+netdev@lunn.ch>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: Piotr Raczynski <piotr.raczynski@intel.com>
> Cc: Jiri Pirko <jiri@resnulli.us>
> Cc: Simon Horman <horms@kernel.org>
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Fixes: 177ef7f1e2a0 ("ice: base subfunction aux driver")
> Cc: stable <stable@kernel.org>
> Assisted-by: gregkh_clanker_t1000
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> index 2cf04bc6edce..6bc8aa896762 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> @@ -304,7 +304,9 @@ ice_sf_eth_activate(struct ice_dynamic_port
> *dyn_port,
>  	return 0;
>=20
>  aux_dev_uninit:
> +	/* ice_sf_dev_release() frees sf_dev and erases the xa entry */
>  	auxiliary_device_uninit(&sf_dev->adev);
> +	return err;
>  sf_dev_free:
>  	kfree(sf_dev);
>  xa_erase:
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

