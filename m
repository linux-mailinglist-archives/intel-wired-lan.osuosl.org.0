Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2481DAD9616
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37A418439F;
	Fri, 13 Jun 2025 20:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HUgh7CDm1kV2; Fri, 13 Jun 2025 20:16:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ECD2843A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749845796;
	bh=o7KQOzWNBm7kyaeXORcURoMc6bt3EkUlwwIkZQIl4jw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gRvryd3RKZgKUWzwy5DFlENavyVqtdFpxoi1etZIE4Na9VbuseNB6p9v6n/nlQrcq
	 0FCZRrka7+sgsi1bCvnidHt8mMn3mPBo+2ESdWyJ7AFNSqbHdeh+erFi5ymN65EZQY
	 /mnzIkqxyk+8zLLZ87jJebyjVh5d7m3IrPKWN1p1/GVLn2Fd3TgyYLq9nRNZ2f0RWG
	 pXY4J4asJSm9Tz8oO5X6a+lowh8a1mpKt4HtEPK3b4HPfqWs/oWXCA3ST/+Quf8no7
	 Q3OM1SiDCXMOknc1xRGWGk6R3n0XmLJ0t/ayAN+isLRywbVwfC6H5enrT/rFSvO4zz
	 ud61v5cuNrY2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8ECD2843A8;
	Fri, 13 Jun 2025 20:16:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CD8541BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3ADC60F0E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:16:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bY3y_wG5TTU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:16:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0568860EFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0568860EFA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0568860EFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:16:33 +0000 (UTC)
X-CSE-ConnectionGUID: mzcDHI8xTDuSpPp3hsULUA==
X-CSE-MsgGUID: 9KTtRcBsRqamsVnFA/I/kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11463"; a="55872985"
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="55872985"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 13:16:33 -0700
X-CSE-ConnectionGUID: iMn1E5pfSNaK6gZenh9FFg==
X-CSE-MsgGUID: h98L+H69Sui6GCL5JcRaWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,234,1744095600"; d="scan'208";a="148285591"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 13:16:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 13:16:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 13 Jun 2025 13:16:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.77) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 13 Jun 2025 13:16:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sHyeV+2ICGfcardSv+fLzP+t+5sG9CAtmbnIXib+uR3eGeQu6S3rewi6+pXcq9ETXcdK9qW8quQ/Of+RXRPd8gqezA2b/wNkw4A01mqSC4wd/9pA9ByCv7lTNaUobpSh9TN6zPqJaAG9z5LOlbhY/tdQsDpYgBXDZZs6avfPw1UGi/B7EheNJD9ZVfntfUKy0xmU+r+quhd7Xa+YrtJ0BPm2nkTCh6Rd/UHF5ocUjYGWAgasows0xwTn67zVrSn7awyZEEHqI3R0mZXxgYyJ5bEXkVbViSnkKb/tRXyCxhrCOEy2TCWnUiV8pVH71MI9gO2I/854Bqs/65yPFQdbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o7KQOzWNBm7kyaeXORcURoMc6bt3EkUlwwIkZQIl4jw=;
 b=BBnPaQC2ndV3423/VVgBCeFfhglQrNEee1ABSCFomT5ZXHVpa7xiBmwru5JmmT/c8ALQTPmjOeJ4SseXK8zn9Zp8ysDXRp7x/0uEIzPmJsLb3gMhJ+gLWmwjFqYezObUrvaOEH9c9bpUZBcRu2WGfqtG4z9GUQasJVHk+bbnSWx+kjlTe4M1zMPCE2SpnXf+wDW5ZoTHZuMf88KbgJdVtb/PAP+i24TjyzUx3z0r4rmvKtL9jRvZ8jtO1+cBwHR/VHyzKvthvFoD7jR+7fmU5N7Cgivl2g98t9zcgrZq7JitJdm6bRU5foWQXvxbGeRh9ng6b791J2aVV8QrwhQeNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by PH8PR11MB6830.namprd11.prod.outlook.com (2603:10b6:510:22e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.23; Fri, 13 Jun
 2025 20:16:00 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%6]) with mapi id 15.20.8835.018; Fri, 13 Jun 2025
 20:16:00 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, Jiri Pirko <jiri@nvidia.com>
Thread-Topic: [PATCH net-next v5 1/3] dpll: add reference-sync netlink
 attribute
Thread-Index: AQHb2b2jm8j7Gad43k+QVUg5vsXf0bP+pMqAgALnAAA=
Date: Fri, 13 Jun 2025 20:16:00 +0000
Message-ID: <SJ2PR11MB845226B24E9E3B33A5DE39009B77A@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250610040436.1669826-1-arkadiusz.kubalewski@intel.com>
 <20250610040436.1669826-2-arkadiusz.kubalewski@intel.com>
 <20250611165415.3c9ed314@kernel.org>
In-Reply-To: <20250611165415.3c9ed314@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|PH8PR11MB6830:EE_
x-ms-office365-filtering-correlation-id: 48ad1249-b40a-48be-830a-08ddaab71d41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?626c6T8crWV5zWacljI+mE6zEwwu6V92d2AK5/rHG6hJL1XK3VbFRQDmfWzO?=
 =?us-ascii?Q?AF105rfhAHzjEcwJwqCD8xQvnDPIckufnUmd5+buhD4nRjTtSQnxjv+BsXDQ?=
 =?us-ascii?Q?hMDgNyQtt9DqQ/KfLQZapixs1HwQwS283/RwJQ/jdptAV2hJ3/sd1JaQuxDR?=
 =?us-ascii?Q?0TmVG34TBW6w4XVA6n98Z3GMUP0j/NrMBH+H8fbDCU8gfGfSyRhFIniHc+Qb?=
 =?us-ascii?Q?BY0LhE2xx6NLiOXzFd62PJgZuZs3D8oM5nuCqDlw384GqX5IzQ7TZRQIJOdr?=
 =?us-ascii?Q?DSOT3rFKXCyGtpaZB1O3sHxnG2Hq67SQi959I9aInjo7GAU4n5Hpug7GMtNO?=
 =?us-ascii?Q?TMUgvHeCA5gC8YhN/usfXW24xZLABDdQe0L+E4AG3viC/lqA+DQ8B4ksRnjU?=
 =?us-ascii?Q?QVAaNnXQ7Ic8UwCHV+3R12C1tJvwDGif0kmiQRwN6KB1qHi8tTRdFNFEwI4b?=
 =?us-ascii?Q?P2GrIiD5Jcz0xBwphCWgTAUoroUZi9el0g5/AZQY+A65+qtpiX26lcdANbBg?=
 =?us-ascii?Q?i6VN21fD+VERdqQGe6d/WrXib9x/YEY/dNaoX+IBd/eWPkP24o+iewDkUWcT?=
 =?us-ascii?Q?1L6J6S6AgaY646jIZTelE4iORdPN1hEZ0rQSVnwjJkoDBmcKgkrsO9bbTizm?=
 =?us-ascii?Q?bsNEkkKaQXlaRKDV+qkUCCWq3j3ye0ymU4SNSd9eyFt54y8KCkgj54fhryeS?=
 =?us-ascii?Q?l8pf+vFnLCyttbndzQrkT4A81hC56vTU5ua/+y9xmfoMCek86XjaI40eVJ9T?=
 =?us-ascii?Q?wela8ONH8zu1jNBdgUHPrWv7FWEjT9Yfnjoh9SMuKOeoBnC5AtJiIYQBHCXP?=
 =?us-ascii?Q?BHph1V24OfWr3JdANvA3d84Ic185YKsfuOdXFbq/UHxKlgACM4MxxxYYnIN1?=
 =?us-ascii?Q?uH8RZw8VyGftJi4aYwdgXIu/2pb6aluQ5OWmjE4rXPmm/3nTPxOp9trm6FbH?=
 =?us-ascii?Q?I5KoPA5NWEygmH6XMEGC+qGb0d4czSG9vuxFeWC8CMW2qIT52oex9n/2qf8P?=
 =?us-ascii?Q?7tq0C52OWNkqsRQ5E1S+qFZdBWRyccdVYuOICo5hoM09iJaUi8AO18Jv0RuW?=
 =?us-ascii?Q?qo4jyc7oWTOO0BnQwKvbq6hQyK/33bTa/RDpJuIg8zeC7AZJvrX/potmsJXW?=
 =?us-ascii?Q?0+5BgUkz//tFbbvw2zAanOWnzjbRJZF/y9GAP7km8L74/UMb/GGUU8K4bMlA?=
 =?us-ascii?Q?9bYq+lzC4u6anpD15+XHCVaPugjN32LL7YfyswJKcXvcX+w3WL0Gb1ujo9PS?=
 =?us-ascii?Q?9tDDbjOfySMveM45UqJj2xT+uRjDqQRHLy/YVCFlSHyNAWCH4dxApznsgukW?=
 =?us-ascii?Q?7SQPmm5H2TbNeSJk879n/G9qIalV9OJYhSITYrTKjNobheMnI1wgkZFHkl5z?=
 =?us-ascii?Q?cSwBKvtxjZuogAduBeN9V4AN0Kobq71Rud5+G2jBKq3VCicM4A5KeeWntxY+?=
 =?us-ascii?Q?SoopVXSIJB6HRRRj6xlRlnGuJMbJH2dKLzFpvqTkgkA8KIl4qc/AFF9HwY0q?=
 =?us-ascii?Q?ruHdsd84iYQJ2+I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OFfnj3WC4m/M561OHSGFXIgxCdpDW7jXp+PQCi40U34h9HsTx9EJsQIOunsy?=
 =?us-ascii?Q?2O7eSHD5l6h+ZZQ5CY+uf75BwS9G0xqjPDFGIocLJUOmmiTTfA4SxuFV8KfM?=
 =?us-ascii?Q?WjwRrvNT1Z/R4NU9xN+R8yhuDOHYpbhuD/gGrHR8YF55O5vnWq29P/5dqFo2?=
 =?us-ascii?Q?GcG9fjRP8ULals3ACAbaXbO2nUhF8vKz2R89zrr2/o0aTn4dVlKff3kvzx/9?=
 =?us-ascii?Q?hyKvy4Wayz3yFjotrTkzY/IpyzyVccM3uReXV4MqQJTQdHnCvGfudZWDrOMn?=
 =?us-ascii?Q?W7zYK1wyDg9AxjJApk5nKnjVqGlyNs6mwELxPF2NhzBGh5JUfefq5aXFwXXs?=
 =?us-ascii?Q?BZfO9FObkbmO8tjS2wVIQkuyTVP+EIGXGzf2NlV7l1gaNg9GkS3crtRg9O5X?=
 =?us-ascii?Q?AzsdDTh1q6IPPt45eRCG1PqmBS+GdDtHci+vqVVFEI9R9JD+mqheGajjF+/x?=
 =?us-ascii?Q?xRE4kifYsPcPCQFENdXXi/K4vXo/HIMeU0JY9Sp0+TANsJDRBrLrEh5+9J/K?=
 =?us-ascii?Q?aiopgwLG1+y9NuWaaeUmVRbnnqNeyLNTlI3K0mvV9Q85gflr9e9fdhA1u4IU?=
 =?us-ascii?Q?GcJr56BX7QfLuGggCozgY3Vlg7Mkxa9/fmYSFrMGeyT3uvDPpjNsAA5Mguw3?=
 =?us-ascii?Q?cHm71kpATaKPy/8MnPkWRcxvCcnjcFAMzxq5cQBllixGgdA/32wUErEsTu97?=
 =?us-ascii?Q?S3LbQxXM9U9BFD4csh4YKzhdN+mDP4Vlag7+hB8jwG0QswKqqcrp+CS9tw9p?=
 =?us-ascii?Q?TK/Bb90S0XI0K00eQlwjiE22vKr6gPTo/PmJ+ae0RFYQxr5OunMNiZe+ctxS?=
 =?us-ascii?Q?ern8JpyDfYU8YMeI98oKxZOxKXSzGOtmm58XUYDzDCpfnVSEzLaGh/O8UWXF?=
 =?us-ascii?Q?kUyAyQmLKp0zRDP6Ck3PNkENGliKrApuGJjWB5vM6d/hyzyJ9MTovP30oH8Z?=
 =?us-ascii?Q?WhYiAsHC9SczYlRaNjHHfekN+zE3d49YY1suz7m/ZRb/6N+N8Nx796On920M?=
 =?us-ascii?Q?ixoT6scu+kaP3Bf+RzvrG/gVcGHRBx3uPYrzhZLi+bTkEBLz3tvcCXlnoB7H?=
 =?us-ascii?Q?JXh/sez+fhzpznMv0dtMNqgmsd7gTQ6rzC7lxtMyIk9htlpy9ix1isbSjEot?=
 =?us-ascii?Q?yLUErWn2LQkUsbAnRPey6Poucnf6FMrKunG81EP5iljo/mgxtAXm5YMFg198?=
 =?us-ascii?Q?SEfDgvZNaGZy4d/NdqEor5wNeKgIQTBR7UQCOibM5hVbrJyV/PrEoHOSGGMI?=
 =?us-ascii?Q?ijy1Ct0G/E9o1LsBlhdteRXXWbD/EBJ+oopnCmnitJdAkFTk6+xrw7s0ODen?=
 =?us-ascii?Q?37veSRwUj4GHE2FA6b11+jfBw1wsEpt1PmOjClULeFHxfxLIaGmGPkN2eQTP?=
 =?us-ascii?Q?ShBJuOp33ic3nRFh+dUoSkUptzVUZ+e7nxAsU8yBvKZgNSmsnNklwXuKSIeM?=
 =?us-ascii?Q?S6oLPkQAARk6wpoT53gIXiZiqE7OjpRx3va7Zur0AUaUoL5hvKY4VdSuWDOe?=
 =?us-ascii?Q?RJTrK2LSh6x0YXq48Ti507IZGigbL6jOak1dB6Elih1AexB8829nExE9umFW?=
 =?us-ascii?Q?NKNTHOyVf9REx4SD6E7HKUh6230le4d7n5KkvyhnxE80qTfsfzu9WaGXNXt7?=
 =?us-ascii?Q?EA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48ad1249-b40a-48be-830a-08ddaab71d41
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2025 20:16:00.2512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tJTh9V0MSKXzsuXWvyYfUQO8jXuyGNbaFM+BWzHo/TNxueT6jpIDSLlPfNsLqD4Esunq3Rj8+zzfjxXcNZxRLCLJS5bzbvFX+A6YCDOnSdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749845794; x=1781381794;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jxHCwGeVSk4nQTsdHesYiaMIcIfuoJ/B1/VVmfARJMM=;
 b=gncL7l0DYxORGyk8OOIuhtAPii1wYyeYHbLuRTseGSibkVuZ6ctbg/ps
 3w55FOp141ldIaEnfhZtDMS+8NLjz+qXHMvCDqfCJotCh0Su0O0Bd9LSe
 dmDsVFb/iWOUR9OjHcup2VSHM3yBRVoklbvfkYgMnBxKCGKow7tjlEfMX
 u7t7YlMAGUThE2ZJ0D672jAsgfeubFQMgBAaAWFdbCR9weKD7gcFq7cxG
 XMzVZvgWQ/xx6c5T3hWsMi9aZNIun0Zsb4WP4XMDVNx6WqY5bttmFMzA2
 Td3/kegjyF51SYt8r8jxrfTSRSYAEdI+WJEdfL8LEvP3Vqhy+uZRZiS68
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gncL7l0D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/3] dpll: add
 reference-sync netlink attribute
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

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Thursday, June 12, 2025 1:54 AM
>
>On Tue, 10 Jun 2025 06:04:34 +0200 Arkadiusz Kubalewski wrote:
>> +The device may support the Reference SYNC feature, which allows the
>>combination
>> +of two inputs into a input pair. In this configuration, clock signals
>> +from both inputs are used to synchronize the dpll device. The higher
>>frequency
>                                                ^^^^
>                                                DPLL ?
>

Sure, fixed in v6.

>> +signal is utilized for the loop bandwidth of the DPLL, while the lower
>>frequency
>> +signal is used to syntonize the output signal of the DPLL device. This
>>feature
>> +enables the provision of a high-quality loop bandwidth signal from an
>>external
>> +source.
>
>Looks like there is a conflict between this series and patches sent
>by Tony the day before. You'll have to rebase.
>--
>pw-bot: cr

Also rebased

Thank you!
Arkadiusz

