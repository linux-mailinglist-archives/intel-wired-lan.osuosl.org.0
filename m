Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D526A844BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 508438415D;
	Thu, 10 Apr 2025 13:28:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1rJeEH7nv_Gk; Thu, 10 Apr 2025 13:28:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DCDC841CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744291719;
	bh=RS/QogxzTAoj3/+x6kJFMUD7FWqh6CsbHIzJFdKbqFY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Je1ZwtaYgs09GBOZ+JDdnCiyEJNN6wL7JfYKCnafErK9zjwoWY5Tr2WxBAUbRqi4g
	 oZfebmOBxcqhKt2TljwlBTpAoZKNpCodY7D82tvGZrkJvyTpPWcoDKLl9N3pysbQe3
	 efpi4G5WM/AXD/G0r5HEhNHjrpHkyBWr/0Exn5uGGlcfyjO/+e7FqWXfSficjZASXX
	 /UbaNXLbkFlmzAbdQJmUXa0pQKVqNpWeatBaRQfATkoMc+zY0PgXHVTtiv08m91wa2
	 hnWPUiwpR60zwM7utKK/FUTH5JJvZ+kittqKteS8K3AVt86pzudIp6No3esk+MP0uV
	 5qquAEfxmqZ/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DCDC841CB;
	Thu, 10 Apr 2025 13:28:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FF99108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 55B1B8415D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:28:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vSh9weSRWWO0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:28:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80EC083F3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80EC083F3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80EC083F3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:28:37 +0000 (UTC)
X-CSE-ConnectionGUID: a1TLdT7XRhelXR1Qyoohjg==
X-CSE-MsgGUID: YirMKCrSSJWnFTpE3GVy1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="33421611"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="33421611"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:28:36 -0700
X-CSE-ConnectionGUID: U98+6z6rRZe0qEzSXC9Yig==
X-CSE-MsgGUID: GY5T2q9WRiu4kWq+G8yLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="129749065"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 06:28:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 06:28:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 06:28:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 06:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PWGBaT6/cJ1Ho7/oRq/Y6Y6LJcENuQ5GqRPBPgRtY2kcAjvCImkm96U8oaNlwnO9xrBKZBzo9fmdIxfQOusjMGpusKsFVC2iigDBY5mrp5RoUCOJPcuT5DU5YCa1Xbzyo8Gn2yAMpY23svhNe30MZZjYheGSbPJ8FMUjaFaMz2hg6zdP1UFJ8XpLNpZdV68RCOxjIOq+f5M0w+O/aZ+evKaKbnad94Iu72bvP9gxMFZRlE/fYMzCE7lq2Fv9pmIdBIg5GeY0JWCZDbXRoSCyYr2eGQoGCCpabEyjeov6K2mue+0PU2QfdhSoIBUx3vg9XEoCq9m9MmTRsKD7eTRDjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RS/QogxzTAoj3/+x6kJFMUD7FWqh6CsbHIzJFdKbqFY=;
 b=XpcJTxN843G86QDtMvSl7Xi+D1T+QrNnq1EeekGfvfy6bTySxIKpUw4BiYYnd8EOi2YmNst7Sy+x3TW/x1DZR2r23MXf3ToApXHIxdXwy9Mc0f5Y6zuRntp+XDCbIkcrBPUNRXBcAa9NvUf6HKv7wOYhgVAx6NPjDEdPktDLRzU+HIbGN19E36Xa1QsjsTxjjp5nSQ5EaiNVEc0ZBzOlnktOpUtqs6QREfooYZlkrfrm2/ZAk1VD4vyGefoI+aRSdrV/eiLI3ogXOWYYQdloO0SYClIVa1wNoIcvlmrW602bqOBO7ZmEA9NdpahHQ62digHHG8s9Ed3p1bD8b4+ZXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Thu, 10 Apr
 2025 13:28:19 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%3]) with mapi id 15.20.8632.017; Thu, 10 Apr 2025
 13:28:19 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 10/11] idpf: add Tx
 timestamp flows
Thread-Index: AQHbqHPQtaD+3mXpj0iwZ/2q8O6To7OaSiUAgAKb3pA=
Date: Thu, 10 Apr 2025 13:28:19 +0000
Message-ID: <MW4PR11MB5889E02D47253C0951D1B4FB8EB72@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-23-milena.olech@intel.com>
 <2fa01052-a090-42e2-8815-1a5fad2939fc@intel.com>
In-Reply-To: <2fa01052-a090-42e2-8815-1a5fad2939fc@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|CY5PR11MB6344:EE_
x-ms-office365-filtering-correlation-id: 73f60e45-0895-4363-be46-08dd78338ec9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?T13MtOILz/V3jW6N5jsxcSRyQMEDhWYnBauMD/V3ki4s7ukhpkeqn5ANXenl?=
 =?us-ascii?Q?LBnVAqQiDawSvANYspoBuQyn5D+1hHMCZQgmubL4ebgqZJlASaggEyvhNYRg?=
 =?us-ascii?Q?50Z12NSPOjDmzyvEEzsXmGQ6raTI/ofipXhsVddC2PaInc97pBmjB2dxfuW/?=
 =?us-ascii?Q?aDeD6xBotYo8ChYoE9tEu6AvrBPBfbEc55WIDjJmt4g4z5TZCM1UpXF9R4A9?=
 =?us-ascii?Q?Jgb+Jviuejf+gm/GCjb+B5hKjbtnUSmpIpjhGOu9/SlI02rXGU88gh5/6e1V?=
 =?us-ascii?Q?cIiEm7COmPvt2/X2rRnWUnl3Nt4UDB0CMQOqfUW1TDKkl5qJjFvfytKc8lUR?=
 =?us-ascii?Q?xgl9JKJVcC+nfsywD16oXICX68wUQ5fX0cI9zYdaFzXJlvBmmpMpypxmfBIr?=
 =?us-ascii?Q?PRXL2gJ3Bcd7QqbDguKj3m+lx6VLSOK3vQHfZBcweU1dVcCstKOQGFfdhJt7?=
 =?us-ascii?Q?YBrd8rtTt/HYz1KBPC2gigyj769HvHlGPmNRHDe5hcxByj0ZIIOH/ErCUBU7?=
 =?us-ascii?Q?SiXCGVTxmaX4UONSMqluhfBj/o0nb5/cIGlUGz8bg4n5fe3fldiKOEtE0MD6?=
 =?us-ascii?Q?XunVFUgcUGYG/9zi+uStDYw/BsYJ2BTQCoqf4uzOcLh+o6skk9t15j7KssZ2?=
 =?us-ascii?Q?UvcXrYLFdBSNjC9CuPK3xxACsBr755Zh5XHrbmQgMpZFxKrro7Il/cBYR+/o?=
 =?us-ascii?Q?DgExeeWdwl0EIqgJkTzzwD8XGK/1xeL2OGX/5R5J7VoH83WYwTV1H0MA19eu?=
 =?us-ascii?Q?wyzbkQdUD/URrev/pLAWnvpDXsHsbKWbrzJqUXsjUh53x8m021h3EXGUyDg7?=
 =?us-ascii?Q?KJNsfc2rUx2izTHlA0j6twRnJIbCJcT45y/SEzSCQrEzPP2Wrxk5nuIIKirg?=
 =?us-ascii?Q?UqUDN3+QMUbYXRpMA3YlmxkLUsi4y5Pos6RcGATrQ5ccAMs7SIb7H3gxlnJ/?=
 =?us-ascii?Q?4W9daz4QtH4Qa7+agyvYLhxoNOwfCWcVbuanQ9EAgWs8M4g7sVwI6mbJih+A?=
 =?us-ascii?Q?jfVZ/l4kACBHXTLovZUBVMhNJ9DsT8hag0uk7r0kypVQbXEU96Xj/Or3Rh4w?=
 =?us-ascii?Q?NaelrLUWj5+8eOo9RdsM/PAowFIxFx2SAP/x1iFqkTd2HK0kwQnFW652DD+M?=
 =?us-ascii?Q?q3iWUS3150QXmEL5cT42/yLcoENITtaJJrtrDB5XOJluE0ERE3/nAHbLreo9?=
 =?us-ascii?Q?jIEF5iRBVqgXbvIAzgAJECZfSQy9jO6W4nyKM4lYUefDV+dVCFR9ef8Oyzvj?=
 =?us-ascii?Q?UjcAcfEbZMQQjiwUpwKN4SdShqGeJn2rdehmZ/4Sqo4A4g/VZBLyR1IzVk6M?=
 =?us-ascii?Q?vl0mURVa2vK7hOn8NuzNH2bImytDvnviLRtVnB9paZySpzCmbU6iUAbfpMWf?=
 =?us-ascii?Q?qktVTWGRZvpw37jZJHgYfp1nJzdk5A3C+fQ/N1AIzgFlG6PUjcctpgalV+EP?=
 =?us-ascii?Q?8kg+o5rWQS9iEy/4V9iQ0O7XDGlpK/B7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c59d/yb23heU3ze7oTYjVwMrI8Bv4SgsEtmBQXy4Ijcyhka9WxHHyhlyQSmu?=
 =?us-ascii?Q?tTPZpzMMJ9zme7fkFWSjp/L5I9ETquYECJ2qvlsJVg7+vzf+J/bGsD+28Db1?=
 =?us-ascii?Q?CbWPuKOzs6JfKmdgU8QXmpnjQF0xRJgAZ81veEwQmTXPHjsTCHQu9KihU7pa?=
 =?us-ascii?Q?aFiiXqehUY3+3iwP4RYejPmbB/xkJBxZohTi5mJonYUv49Vlf9aoMm0e1VFC?=
 =?us-ascii?Q?7Z1VUEcoPr0BSikmYb3nmOkZstI9ndShVT6hSVr92qnwsjXULlZV1zqlM84v?=
 =?us-ascii?Q?B6JGcFHyqAO0qMERGSNW6rFMgh87kVzqv65edsMUz0icSwSnzXilyDJFsZgu?=
 =?us-ascii?Q?Idl4olHRO+r7thG/IpGCACVv5/ubNkA+Rtems/a6SPS1Ms2yOAI9Tj+lmrKc?=
 =?us-ascii?Q?PiXHBoDnxGC95Sj/Bd2E0b6Jr9Gn19g2b/Rcu54Z+VrA65P5sZ9UmcZ/d6Kb?=
 =?us-ascii?Q?lA/bZMpTeZA32QRzHrpNpyirIEZeJPzyhS6t6t7zEAmAHdSdfe3bpCj8u4oI?=
 =?us-ascii?Q?0TSvPqgs7uv9IuO5Nzjc0Jxql8gjwPxb7phG5bdk+ZL6Ff3k/BhISHXGy293?=
 =?us-ascii?Q?9CAeegFTCf+HLDqjq4WwM8yiLPetjrWKLqUxNYfj2UDCGviNjjo1ooa5H2/x?=
 =?us-ascii?Q?+heL1oJFlID4qvMwNNCrWQGyTov2g/mYlF5OdPw8dEA5PBLKSWnlTSp50wvy?=
 =?us-ascii?Q?+L4gzirO4TLyxOiaYq3/lk3j+uryLk+wn69AO+wJ7LGtHY+Qwla7+mjMsIKv?=
 =?us-ascii?Q?POeerfcJQ6pFbV2QdF61H0VO52GUOWTSVifCegSNeF7CSp51PXX8a3EmHRLg?=
 =?us-ascii?Q?QG6R6MALwyKdn9h4Kl37/YEDdn59zDI+PpbjsXsvU+mpsj5/h7OlbmIeJZ7g?=
 =?us-ascii?Q?SQh27TUZWDaYTzzhn6S2NbZSg2Ocw6P9fXXhl8H0guuSORUvBD/GEIGvo955?=
 =?us-ascii?Q?um4gmn3G0k122H4LRQKIeTFRnaSIAms4rTWwlZzHb/nyBs0HYMy2ry8twQRq?=
 =?us-ascii?Q?2+i6KWDnFBwiqbM3gqlYvEs/qvxFKCh+F5Rfe41OJcrOBD4WrvGMz47kb2QK?=
 =?us-ascii?Q?Y4tD2//hUS6dgMFhcP+59kNPNylG6yI3O1ko+XYlpzBdDRWegI7KRL9Q8obU?=
 =?us-ascii?Q?Y/euiL/wG6EJzLpaxZPBBLkviZEQjOR3XSRmXCHaEYiDrdnr0xdoE2KZeLzu?=
 =?us-ascii?Q?L2DTWtTqJLMHdWIdtSiCofA2kj2ryCLcCcTAUmpIxHOECajc2rgLAqwdXzya?=
 =?us-ascii?Q?iOGQLyqYTewGbH0mqcwBq87Iv+rdepm2/0kxAZUshJWpzU9rSjJwkYrwP9px?=
 =?us-ascii?Q?Kvuy2+n+wEtswhlC4oE6dmAZ+S23bvu5oWnb/ITwx2xFredG6jqw3nNNXnIw?=
 =?us-ascii?Q?JBQMUoD+0RPM0OlnmeuY+r6zikdLdvs7uapTfYSSMnJrrmdpplt/zXonX2KS?=
 =?us-ascii?Q?z22bs71oxEbLagUQ6UvOllYEJrRzWF3XpfC51RM0JgdOs4sjBh6hXtXc5BDS?=
 =?us-ascii?Q?S/h9r5VlYt33vA0Mo9vrKTyI0egncX2bZ5JpADoy8iXuX51CQAEjlKxVegQ/?=
 =?us-ascii?Q?YraYpFjzJbQuM8b79OHNt4HSSzqmkwWRCzkLysJv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f60e45-0895-4363-be46-08dd78338ec9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2025 13:28:19.0266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hULLnYDIThEUd7iIa9ijUf8FTPLfU4rMcUM6+WJlPXmdZA4n3/uyUjTAkrtNIhcnoBcUaC8WbLAW59lxOu7lvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744291717; x=1775827717;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bDl7fRq1bgGfh14urG7fRlXIG/IJpzPIZHmmMiz4IDU=;
 b=fDHtnnAhAXGv+Hy352QZDf7kaXdgR3ow76PwRqjhUnpS2LAmXFq4PhYL
 EiUCUCRK3FjZN/mAXj0ib7CQPRxuQJNFpf9C0sFXR4XiQvn83oOOmWyjb
 /f/jFyU4tX0xWa7qI3sfhleby8Jqk8rYvMSgSk4mUB0Bk+WFrtP2Zhnu+
 foVNBWsN6Hl19wCsO1Z7P3hS34KZFS3ZjjSZanVPq6pejvtiJ5HUhGlfY
 4FNcyX2KZbjtSSram6qJbGNeOlzsPfHmL6CTMSzRF07v3BRAybacF3n/t
 2ByEcwOrN44MAIuzZTYc6SGJMb4wZxoQ0YmfekUKNiH4B+Je7K30HV6Nu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fDHtnnAh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 10/11] idpf: add Tx
 timestamp flows
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

On 4/8/2025 11:31 PM, Jacob Keller wrote:

>On 4/8/2025 3:31 AM, Milena Olech wrote:
>> +/**
>> + * idpf_ptp_tstamp_extend_32b_to_64b - Convert a 32b nanoseconds Tx or =
Rx
>> + *				       timestamp value to 64b.
>> + * @cached_phc_time: recently cached copy of PHC time
>> + * @in_timestamp: Ingress/egress 32b nanoseconds timestamp value
>> + *
>> + * Hardware captures timestamps which contain only 32 bits of nominal
>> + * nanoseconds, as opposed to the 64bit timestamps that the stack expec=
ts.
>> + *
>> + * Return: Tx timestamp value extended to 64 bits based on cached PHC t=
ime.
>> + */
>> +u64 idpf_ptp_tstamp_extend_32b_to_64b(u64 cached_phc_time, u32 in_times=
tamp)
>> +{
>> +	s64 delta;
>> +
>> +	delta =3D in_timestamp - lower_32_bits(cached_phc_time);
>> +
>> +	return cached_phc_time + delta;
>> +}
>
>
>This logic looks quite different from what we did in ice and iavf, which
>was based on the math from timecounters. It looks like you do check if
>the value is too old which is good to verify. Perhaps I'm just
>misunderstanding the math.
>
>For clarity, here's what we have in ice:
>
>> static u64 ice_ptp_extend_32b_ts(u64 cached_phc_time, u32 in_tstamp)
>> {
>>         u32 delta, phc_time_lo;
>>         u64 ns;
>>=20
>>         /* Extract the lower 32 bits of the PHC time */
>>         phc_time_lo =3D (u32)cached_phc_time;
>>=20
>>         /* Calculate the delta between the lower 32bits of the cached PH=
C
>>          * time and the in_tstamp value
>>          */
>>         delta =3D (in_tstamp - phc_time_lo);
>>=20
>>         /* Do not assume that the in_tstamp is always more recent than t=
he
>>          * cached PHC time. If the delta is large, it indicates that the
>>          * in_tstamp was taken in the past, and should be converted
>>          * forward.
>>          */
>>         if (delta > (U32_MAX / 2)) {
>>                 /* reverse the delta calculation here */
>>                 delta =3D (phc_time_lo - in_tstamp);
>>                 ns =3D cached_phc_time - delta;
>>         } else {
>>                 ns =3D cached_phc_time + delta;
>>         }
>>=20
>>         return ns;
>> }
>
>
>In particular, this ensures that we correctly handle the case where a
>timestamp is captured just before an update to the cached PHC time.
>Without that check, you can't guarantee that the timestamp is updated
>correctly with lockess PHC updating.
>
>With these checks, as long as the timestamp is recent, we can extend it
>safely without worrying about whether the cached PHC time we are using
>is slightly old or not. (As long as its no more than 2 seconds old).
>
>Could you explain why this was changed for idpf?
>
>Bonus points if we extracted this method into libie/libeth and shared it
>across ice, idpf, and iavf, which I believe recently gained support for
>timestamping as well.
>

TBH I've started using the same algorithm at the beginning, but then I
tried to introduce some simplifications, and this is the final shape.
But after checking it again for both positive and negative delta I see
some discrepancies in timestamps values. So in the next version I'll
switch to well-known method from ice/iavf.

Milena
