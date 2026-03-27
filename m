Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FNZG5e6xmnoNwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 18:12:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC373481D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 18:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A0596123C;
	Fri, 27 Mar 2026 17:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujAdRabCZoEa; Fri, 27 Mar 2026 17:12:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8F6E6125C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774631571;
	bh=vKj4un/lvDgUJcNW/U6RJDqqmmA/ujh90hMcfpjL63k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ijoXtv1cKdjyNPJYZPV4bRavXvN0/BSl658qnxqfp2Je2hc6Yq0d+SDSHRvhqMPJ6
	 YHdSBbzX+h+7dybrQvKWc3oG99hLaKOiOFWVkMqHm17gofoSJD9mteJUbKicsYWILY
	 9gU1YroObjVvVgXBoV9cdd/SxEUieF8Ik+4yg7s/CwGvX2DiLQkgw2yqE20NYrbGM1
	 r1YWq+zvRD+Kl9/Cub7DVOdQSIjcHM5Cyv0yaUerUmz04kalUrOU1pUrMsN5eCBGXD
	 6GZujibb1qfEiAf8jgKlhNu3sgra8Mn1BvshkJiGHm+6tIC20ViSYd0IpGexBNVJfX
	 HU05QsnT7AchA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8F6E6125C;
	Fri, 27 Mar 2026 17:12:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C2655249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 17:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A83F641708
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 17:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lP3VPZIB5VM8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 17:12:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BF40C41687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF40C41687
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF40C41687
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 17:12:49 +0000 (UTC)
X-CSE-ConnectionGUID: u4WiCHXZQEWburlOWg66Bg==
X-CSE-MsgGUID: qNACzgp/TRu0UNle/H6fqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="75677032"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="75677032"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 10:12:48 -0700
X-CSE-ConnectionGUID: EKKldqKASke+drBANfTYaw==
X-CSE-MsgGUID: P7h0h26gQcOqwHhAugMeUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="225386782"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 10:12:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 10:12:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 10:12:47 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 10:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eTH3zYfHnCMHTjafzcmqwxBmYVAKbVfNFh+nF5tPK4XCKD2oF1yZDG4y9NzKphviKh8S02nB/j8qwJqJi3bGAEvrSigum77VdUuNNOVeDrme0ZBcNwXMZI/hKcvWtZYJYtkXgVf5BSXjSyzDL9B4VeYkYZgihDz7EL7Lz6x4DkmqnSmr6wRHmq61nJyyoOBOdk3ZT6uTOPWOkRpVgWZe2Qrnb63UE172o+9xo27gd09DrqKHAlB6xP83UunVMz7M9QnAq1AgwekuyOcNhXEm7jMwIAXrM5fCX2xHuPU//I7rjnRRzM8NLH+0+WqW1GU5Na1DNF5mUZc5I7JZDlEV5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vKj4un/lvDgUJcNW/U6RJDqqmmA/ujh90hMcfpjL63k=;
 b=WBE3thYTupLnHcN6NZIH8lLIcjbYxlksMMJXfEEIBzvzZHbl3FlA1STm+hnOBMUjaKToGPEZvHnf7ga9RcVB4kJ7LIkxSikCPi+gYf+2pGWwG9e3uXymjyx/hvoYE+pwdUiikmI0Qb4c+lobdD7YJ0PdaK62M2A+SBy7k27tXjWt9yC6PTX4mbDisZtqMALlzx4kVENozbJn7TMSQ4pyJ1uXjlqX3prKGQc91oEeiXKtLYE+1QJF1H6aUlqEfZZT/IeF/zNmJjGkORWp7b6Rcl+2QpfHllIXSjveT2uHTWQpOk3tn70dTrBCjI7E4CEe2YwmWwC7AyasZSaxTPMXkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7498.namprd11.prod.outlook.com (2603:10b6:510:276::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Fri, 27 Mar
 2026 17:12:40 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 27 Mar 2026
 17:12:40 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v4 net-next 6/8] ice: implement CPI
 support for E825C
Thread-Index: AQHcvT5IeTGOkRvw4Uycl9iBx0X66LXCnG0Q
Date: Fri, 27 Mar 2026 17:12:40 +0000
Message-ID: <IA3PR11MB8986A25079EA6C95E701DCDBE557A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
 <20260326162832.3135857-7-grzegorz.nitka@intel.com>
In-Reply-To: <20260326162832.3135857-7-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7498:EE_
x-ms-office365-filtering-correlation-id: 7c99f656-9c08-46ed-cd93-08de8c240d7e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: uEhdCGDiizq93ja8v50Ar7y3UYuXz/PsFqEMGylKOEaLoexknJ+/gx60MPpq57r6XqLuV+38/cKo1gRuAxdqzfi810E5it1WJ7R6CkWkoxJPLZKR0O0DT09+1Wo7MBqlyeLWlqavI0DO3aNfMyhuAwFEbHofcmNeaoUtbDfCZi2fcGY0MY2PpUMJ37EUj+dU7L2S4axFTaYX91YfMSEMQ565fr9ybt7IHhDuP6MfjP+FIT2mTIsDeyXQHLw7FhS28Mw5MDXRog4iEIfoIpdzE07AI+l3vIhO8WkPVPJ6K2dP8LkPNrrN+IbvK8ll78IgO4nUxayL40xvQEmXlwsywexP9X6k9mdEEfGZQI9WMJKtAZRLxAKhDaODfFT5ZU/XDhZqtyfIUry1JQfeG8jP53g+pZWKPQttqs7nQNwClAWdRb4ZwmjKHWFQQtPrSmvjuoW4v9lWt2Hn0j0Q47HjZ0h38eXlUyCW0yv98u+r4Q5qKlUyrBcaJ0aDsXADXbUaz+KI4EbLNW5EIyclGtF5kbzdzN+yz0ImmJ+cymFdVfM/013sx2YHK8wWMxU4OnLi1FtTQHrQ0MAn/Y+acixmy8KDaMFwM5HxmzlxaJvBn9npPAn7kjY6OkwgtL9Pp9qtcjTlAvVXi+kuGt0A40pCBDLZbUIkdF9HnN9/LZSbNno1V+HNhiAemtK+LXuZ2fvHx0detGLXEg1Wv8k9SOUj+Elb+caYQQjIFXOdQ2AcY68N+0lWrZBulLuwm+x0KNDvEZAb6P+fzOpRM+C9PigIHW3VHQngTBBBWY+eAppLFuo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XbKYThe8ahOS5LdVyfpFV4wrRjg5lY/EBf4MU0PrcL66/KRTwsbBxkdtrMNW?=
 =?us-ascii?Q?QamGugqZmKrkn8A+UR7UA8+GaFd+7wlee7j5s6vC7vYwvlc9FAK6kBN4w44O?=
 =?us-ascii?Q?Ji6iU7xUdLlqVBmZlcwMw58capN9W9Xqq1cTna+xATM/y3TntidyttbHbY9j?=
 =?us-ascii?Q?NFA1Ra0oH1hpGCGMLWn0EieYRbha48f5/RGsHGQ5IKj8ZE452D0xEqb723IB?=
 =?us-ascii?Q?nus9rbGnbH7AX85A7h0qCLKA6zCk9Bts4fo7wiBOtzD0hhgnXcaQO46AWJiZ?=
 =?us-ascii?Q?1kUf57FFmN7ZxBFTdxnxokcoC1U7HFnFfly3YM/E8nWIl8exr2PbqA9eEpBp?=
 =?us-ascii?Q?8GPtNSnTODPikSSRQoP66dmGfhBjwnm2aNUC92wIrsL/tB+qUW9OjLA3cexk?=
 =?us-ascii?Q?mSQGcBajMaYtqN6zMcc3KQxI4nDBDzfZcmQA/TAP4ZUkFDeFjBRsY/UJcy3U?=
 =?us-ascii?Q?1MfF2/x9sRyN8kGLxbzJvpP1FlNMM2YW0kmxbc0wPsC5xx58zOyFHGKmpbVb?=
 =?us-ascii?Q?Eg2nAVPrZa5xFq/s86c6wUUcJq9EblZfGE40XokVzvBZZnx2xU0bbE7j/wT5?=
 =?us-ascii?Q?nRWgZh2vw7uK+EKBHNMltdZ67RnavHL1HzB1UdIKEtGPF+ymkK2w5F44vogO?=
 =?us-ascii?Q?nRKIP6YKuqJR+l8Dece0fEm68+kfgtja5kqryDH+Y8TM6dJfD2af+68TOPlP?=
 =?us-ascii?Q?y3zJRHYcSCLPcBJPqW8HaRMxoI4brlHjVmDA6+ojw8jiKUwP8GIrHQvg5Wbo?=
 =?us-ascii?Q?gygBqTcxaw8/gyNkxjKP20SZhXIYISIBloT+i/HUebX9nQFKS15TlD8Mrx9A?=
 =?us-ascii?Q?ZEgBqq4om4m7XnXiFpw6HXeFgOBgyqWE3z9vIr8mCJUnzFBxOXtUEK/1Z/lX?=
 =?us-ascii?Q?fL/sQjA54+YUD7g0wYsfomkjOD+p/+47gSFVkenHBQ34qav93ZKRlWtHgCko?=
 =?us-ascii?Q?UlyoN17yY2v8WwI6f/3y/NW/4e3xBuv2pwxR3hPA9e8ho9gu5Jy+m5ATavnj?=
 =?us-ascii?Q?8dGB7kFrhh/4EVvO1hRPzfGQZr5ra2WArEIo2YWgZmkR5KcWjKNmCUaec6KL?=
 =?us-ascii?Q?JdSbp+BXlcF+hbMgqgRn8WS8EAITY+4J1v81n5M/hBuD91NHFTbqzU4RiTZv?=
 =?us-ascii?Q?vSHCNaazPpcXs/VbJdtnGTNBTYYV+6+xs/oB7/g4B+oncsAF4a4H+MP+6nUx?=
 =?us-ascii?Q?qd+CdoK/RUT6Hs45UtYAOPXf6OALISgD+aisxjAHuZjLwl9WDG9AJpuSRn5h?=
 =?us-ascii?Q?/kJXtZAHRIxJSsP+nD0o2oDuuT62S30ppMYD4jVViKnlgNjbbtYDLGgDpnVd?=
 =?us-ascii?Q?u8szw6kQ1Yx315aouicuquAhCTb4UWL8OrbhkzTd1isA3OBCyeTlXhcf189h?=
 =?us-ascii?Q?5Bd0d0L0skJQcJI64mMT2X389DbFg3oj+1ujWvgMJdGj2sin+gIMAtzj0NSj?=
 =?us-ascii?Q?MbspqB4h5BrcuOC79NuMNdWCRBLVLSCGpQ1IS4H/2CnoT9m4phBFICPjGVO/?=
 =?us-ascii?Q?u2baQgz5CfoQNT+8pSt1QymwXMpFvBn7XS0pe//3iAZGB3w/KTMZ79tXOsR6?=
 =?us-ascii?Q?z+uYeswiOL4ZawFtFAXSqdxVCcOyU/1xltLZdKV7uqzOsuwkEOdtb6wCODH0?=
 =?us-ascii?Q?UzJ3xJ9d/ju4ht3/OZqd7pNaSA1MboDs8//TYeGpTDO2XOrduAxBdOJk5tPz?=
 =?us-ascii?Q?ttlgZYY7EWYCbTTQhH/urtiLnGB17va9urvEJV4gaoHj+JVL48Xm0ZKJppJz?=
 =?us-ascii?Q?EAkqEtOYRY0840hExix3Ws6+0Qnrfig=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RY38GIq7qzYqK5JVz+v0fNBR8Qn5Ph5x7fzPXVYuKdGRu2iadvFW6cjPReRNGt0U8JyWSV8I0XNvBrj+zyMApgI90KgqsNtJElPWXTWuPe2zvu5oAG3Iz/8NnNqkd+Ve5Grm8e1B+Sh6bpOlOZC6iKsuL8QcTvSlGZhyLAcFOrk/MA+58NwH4pBdlgfHp98CzNswDZNpmI/iexK7cn8Me/2ewYViag8iIzLufuE55TXmH2VjLllZPOYNAW/qsztShbfuuaLDYjvocIUBSMpTCzUQZwOi5Z4T/UwgracdC59XGYKSkHMr4Ys/qXFrFhm4mgJUnEkuyKdJnR6NmKxitA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c99f656-9c08-46ed-cd93-08de8c240d7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 17:12:40.5585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v6yhb3sGk/cDtvi1vA7BIZLuI3JjABVoyu7dhIoOQmRsU5Tav5V2H0mqB/h7VEABytfAH+sO81nXAv8h84mCL6Ke4Ty4VNSrYOxq53Mb0BE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7498
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774631570; x=1806167570;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fNAm3YhbGxiIn5K4791FSOiex1fInoJLgYVmMUHhhGo=;
 b=JMkI/Ohhigf3c/5tqonATuP+0EiH/V4kko0zKbmjjRIBq53a7tox5RB4
 GSUTfyiFNZhkan/xvSMxTv3EU7tnOSbM/iwmuhWpTqZy5Rre/k73kqHMv
 vNEqY0MDKWr7g6xlBJibLTeqjtwOIGWVlhL5p+Dag82Y0Yew/iSaTHyFw
 MhYPVM6KMSaH4NXxgdI5eem/buOua05BdQwNJ3LpYNQs+GLVb4r47Iidb
 VNCz98b9Q6WQT8e/wmVCllOBc1il3QrAA0NtIyW11ymSl4139SwwsiDKD
 bdtTmAhsZR1Hv044QogUufTD5k4W0wjyINlKW9LQ+Zmtvvy0IpFCgEqBL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JMkI/Ohh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 6/8] ice: implement CPI
 support for E825C
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6DC373481D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, March 26, 2026 5:29 PM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v4 net-next 6/8] ice: implement
> CPI support for E825C
>=20
> Add full CPI (Converged PHY Interface) command handling required for
> E825C devices. The CPI interface allows the driver to interact with
> PHY-side control logic through the LM/PHY command registers,
> including enabling/disabling/selection of PHY reference clock.
>=20
> This patch introduces:
>  - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
>    request/acknowledge state machine, including REQ/ACK protocol,
>    command execution, and response handling
>  - helper functions for reading/writing PHY registers over Sideband
>    Queue
>  - CPI command execution API (ice_cpi_exec) and a helper for
> enabling or
>    disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY
> clocking')
>  - addition of the non-posted write opcode (wr_np) to SBQ
>  - Makefile integration to build CPI support together with the PTP
> stack
>=20
> This provides the infrastructure necessary to support PHY-side
> configuration flows on E825C and is required for advanced link
> control and Tx reference clock management.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile      |   2 +-
>  drivers/net/ethernet/intel/ice/ice_cpi.c     | 347
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_cpi.h     |  69 ++++
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
>  4 files changed, 420 insertions(+), 3 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 5b2c666496e7..38db476ab2ec 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o

...

> +
> +union cpi_reg_phy_cmd_data {
> +	struct {
> +		u16 data;
> +		u16 opcode : 8;
> +		u16 portlane : 3;
> +		u16 reserved_13_11: 3;
> +		u16 error : 1;
> +		u16 ack : 1;
> +	} __packed field;
> +	u32 val;
> +};
Why not use FIELD_GET()/FIELD_PREP() with GENMASK()? Bitfields are compiled=
 differently on LE nd BE CPUs.

> +
> +union cpi_reg_lm_cmd_data {
> +	struct {
> +		u16 data;
> +		u16 opcode : 8;
> +		u16 portlane : 3;
> +		u16 reserved_12_11: 2;
> +		u16 get_set : 1;
> +		u16 cpi_reset : 1;
> +		u16 cpi_req : 1;
> +	} __packed field;
> +	u32 val;
> +};
Why not use FIELD_GET()/FIELD_PREP() with GENMASK()? Bitfields are compiled=
 differently on LE nd BE CPUs.


...

>=20
>  #define ICE_SBQ_MSG_FLAGS	0x40
> --
> 2.39.3

