Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A74A84B8F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 19:48:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55D2484046;
	Thu, 10 Apr 2025 17:48:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2WSbTRJAa60U; Thu, 10 Apr 2025 17:48:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFA848401D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744307291;
	bh=C7Q5DttpafrqDTdxTFoKU53MxeV4Nmz3vosy5Ijs8pQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AKScA+vBc2kVKMq0ljuVo5SnSy0Ke8vvLkh65aCOP/9L3wWN8PpZEorTZSl5tZn2d
	 0I20LTFKYaiqBEB3c2r3/ksiKBZ0Ind5zX51KIqeLpF5Q3hvpLp8xNoFn+qseCbT/x
	 LckKm9/zKlh3eXgPTM7OBmKuytfOyfYSP4F9aNAeciMi4cmgkDJxTZMD3snUoTfX/O
	 a1WKuwbR3qjUtWn+q79mY3JiNlWqaq6cvI0FES5fc6qgDtpAnF3ZckvmbwVJgHj95s
	 1wQB1bzrdot5eGrmNfhmMae7gUaE6rvfoLYVcgUlZtyLuVKGhampiMMHckHBmyoA+h
	 ipRyNXudqvMZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFA848401D;
	Thu, 10 Apr 2025 17:48:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EDDC3138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 17:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D39056F5A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 17:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QRSIHY0qMKEG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 17:48:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=dan.j.williams@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D259E6F559
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D259E6F559
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D259E6F559
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 17:48:08 +0000 (UTC)
X-CSE-ConnectionGUID: xGz1nMn0TDaf8+G4R/TY3Q==
X-CSE-MsgGUID: rJ17V+v7R2m2ihxilpd0Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="49498649"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="49498649"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 10:48:08 -0700
X-CSE-ConnectionGUID: 2c+wW4hnRFydxWhEDK3gQw==
X-CSE-MsgGUID: 6BjO/SoMTd+n9Bzyfi0+XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="133082892"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 10:48:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 10:48:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 10:48:07 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 10:48:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EnEn5DVVv3DpjwMtxVAhQZHn5groUB36rEeqwvELcMk3Zu9+Z4e9tPZ86WUglEX6VHM2n3rmpcM/XRfMUqDRnK4C9zHxPn38Ik5hIeQo+HPDCbRrgHgVWlCDN6dJjLdJlq7M/6v/n20dMz1ZvgEysllxQ/wECFytymgN48OpNqbEhOGSYMYxd84hecp45rQAptPCFp0dGzq9DuMl4OS6bBSEelTsZE26SSFImHEe957elgoa1Luko1/fsakZQX+oBsbdjo3ss89SB4nNNHIeEPriWXns0mIDL64NM4Bf2F+TFyJbaJ76bBJmmbCQGbRlK62ymHK5Ox/PtwIqgt+PDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7Q5DttpafrqDTdxTFoKU53MxeV4Nmz3vosy5Ijs8pQ=;
 b=KMO6qhbrJ63LpyRSOJC9heecNriVv/cIxORZwN9LUTJ4dUg4E1uulgyqwBVKfiZRsvJ8wSFB6HWPitm+i1wvKO0u+RYWyhBsLqJvjFgLmennfXw9vf7cfpAGLmojKuhV2IzO2qoWE2nCZ+Vil2mpepZdQyF9OVk8oelSsH/0VfafjYZHciWsP8mLIJ3Sp6A7zZn3UTNNeXBmh3Nhh3dTx8XAJoRiXKpnuQAmO7NCoBOLaK/0YO90KltIM0L/n68kidjjRuktAs+ipIuw7Fq/fC4Nhc53LnZcTWKlnGOsk1zC6h7Qu9IDYGYPShyukcjwsXv18WZoo7sYoHhrWiAy2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6)
 by IA1PR11MB8831.namprd11.prod.outlook.com (2603:10b6:208:597::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Thu, 10 Apr
 2025 17:48:04 +0000
Received: from PH8PR11MB8107.namprd11.prod.outlook.com
 ([fe80::6b05:74cf:a304:ecd8]) by PH8PR11MB8107.namprd11.prod.outlook.com
 ([fe80::6b05:74cf:a304:ecd8%3]) with mapi id 15.20.8606.033; Thu, 10 Apr 2025
 17:48:04 +0000
Date: Thu, 10 Apr 2025 10:48:00 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Dan Williams <dan.j.williams@intel.com>
Message-ID: <67f8045059dde_71fe2949d@dwillia2-xfh.jf.intel.com.notmuch>
References: <202504050434.Eb4vugh5-lkp@intel.com>
 <67f72679bb038_2ce629469@dwillia2-mobl3.amr.corp.intel.com.notmuch>
 <20250410115956.GQ1778492@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250410115956.GQ1778492@nvidia.com>
X-ClientProxiedBy: MW4PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:303:b9::28) To PH8PR11MB8107.namprd11.prod.outlook.com
 (2603:10b6:510:256::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8107:EE_|IA1PR11MB8831:EE_
X-MS-Office365-Filtering-Correlation-Id: a8daa41f-150c-4716-def3-08dd7857d820
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wGgSomImBthzr6AKoyX38X9/cVHcJ2KEfnObHC4wp57o9FwdxgiS85GyGJU+?=
 =?us-ascii?Q?+OsUfcYTM83SjCLFXFF9YSt1Dzvs5oq0PkFv6RxBBVwCRy8Y0AD+6vPM7xQf?=
 =?us-ascii?Q?Iffv8dRoFtimnRZbk6gKiFOfu422oU0EDCQYKWl9PUzcIMNyDJvUMo66GjXJ?=
 =?us-ascii?Q?WuHeB4RamZ0E+SmVG5lbL8+UAHxIjpbH4YoQ/IffLJ9OcBAb89Mv560GJ2SC?=
 =?us-ascii?Q?ax5HOMFC6gnHN//xQvyiv8fy5Xn0y8BE6ysOx931z5AwVcqN/+sS/sB/J0H4?=
 =?us-ascii?Q?F4CrddgErUSY1gTYG+oyDrBkdDpRrpip7a/F6LpzQthKQgPYiOruMS47n94N?=
 =?us-ascii?Q?p7ysabBELIGx0d+u+C+zDbsssyS3OLgjW1MHq9y8ArEKUQUP9/N0gcaz6mGx?=
 =?us-ascii?Q?PBwcb1wRYI9Upp52r5xDDvds5S98n2nuyHKUwPDfcL2kd9AzVIzgwEfWpzAL?=
 =?us-ascii?Q?QOBNK2Cx56Zj/+0reHE33jcr3eu1HgD/DWoti5H6K6bAzcP0psMc/RHtparK?=
 =?us-ascii?Q?LxjHjr54PCHmVo7D5XpYyynuzL52BUutrgZSIPGy2PXf2G6Nbz2DEVwNwJQx?=
 =?us-ascii?Q?GRShz3CW1TZaunthbThaaUa9T+QJI8vm9FWQggQmCcvLVAYUKX0AVj2PMFGK?=
 =?us-ascii?Q?IAjegDd4tDRTKeB29GShVB/gMphnv+lhB+2yAMSo8jklzBoSMQKyyQfZCNzu?=
 =?us-ascii?Q?J4s2Kgm6qS4Mu61qJdBRE2H9eRKDfTagjeS4MrpWrt19PKmEkkZNcReoHBwR?=
 =?us-ascii?Q?unoAgVCFcQ30v2E7Ratjn1OotIGBAONhnQUAWXstiKbIMm4LZ7mdkrV2kx68?=
 =?us-ascii?Q?kQcnogNY2fDNX/QdrBBA/diA2LON04jfCZq1lPGA1PCD4K6Rs4nXMEO+SacU?=
 =?us-ascii?Q?gfXro3SnD0I98vsJ50DqVvo0tQhl+OprSm4X1SnlUWmYFK44IfKlwJ8R4lIj?=
 =?us-ascii?Q?9zAFbBg/LkTTiNjfFr6O5oM3Tqmu8R9tq+4xEMW1sh1FmHeFmRirUNG+RXBX?=
 =?us-ascii?Q?/lGgsTTP2ag/o5NYQSZa+0QOFoaXSsWGsd7WFvome+yXkZEkz6jnALPojUIF?=
 =?us-ascii?Q?WzO61W9IvKRhO42MHsTfnz9T8u8N58Q9uYqEYNDc4dUbacBWXv6bnd19f615?=
 =?us-ascii?Q?Qp3rYd64GHfHhOuFgXhxddJFEUw5nc1GW6hGF0pOn4Yffn+2X/IU2mkyRsyc?=
 =?us-ascii?Q?K9l+upO00V1XvzkNWryVtgkpcvkNasjEIiWEByHACqOfwzDZnQW5cOn5fhsM?=
 =?us-ascii?Q?LkowcLrMHScRC9+g3bkZaIayjP5Jrv0RjAWzXXVwy1GJv/Qrsj6sHzArSjLN?=
 =?us-ascii?Q?CxWp4FMeWKu+nZ51b/QUSVEFHghL+3JETRlCSklDy+8wGTlg0/xav9wQB4aJ?=
 =?us-ascii?Q?5/MqLnEXjDn7KPnXaSg3kKvOt17H?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8107.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z5K0M0KM/zPrxmKodvUoJyf87tAkbwDTM+lG30e/oLc56W2s+wxdOnJ0srrN?=
 =?us-ascii?Q?OPLQSsHCHpEWNrvQlta2lA7uWbKYb/26pvY1YMNZHVij0oSQ2z4tDv1EiYWY?=
 =?us-ascii?Q?FiM5YaDf+CcdQFBvVZ9hL+5iXXDw8XP/rJirfF39cqJJznLoc/M6UBPAqEEV?=
 =?us-ascii?Q?negvgdIc0Le1kQA6zYWzpJyVApp6G38Y5qcaF2iLLUKtzwplcwHb46Ag4U2E?=
 =?us-ascii?Q?RxLQ4k72o/Qx+ZcCbEA+ieZXG4pIk0K5UcFtZKP8TfYBGz9xOJY91F7vGIq4?=
 =?us-ascii?Q?J6U3Jwzj8Z1z5IQrSGLI5DyXF3ShMjhA4b87jjh42f4GnU4UilFhtfMOpqdw?=
 =?us-ascii?Q?uCYhOIc57EjXXqL9Vp9jhZpjqTLI6g9exq8WNxjL2TkS30rWqy2ZCLa6I7KX?=
 =?us-ascii?Q?9qILz46G80lw0IKyI0pN9sRl3FT0i1a3QplzJ0cH2NXqnoi+DczPyMRLzy5H?=
 =?us-ascii?Q?z+RJ6jVJsltaL5WoOEQQ/avww7mrQ/oJS7jrUeovAa8cC8xaEp9LeCMnwEpb?=
 =?us-ascii?Q?WqPcepTOrcyWEz5apD1UMrYnnx5uMkmvGJ7UqCQ29mmMz01IhylreU7NsLNU?=
 =?us-ascii?Q?kx+nIaZokZ+OW0T33DawpHdC6BcZmuevOUsADYxcgWxf6QnBe7qhCU4VSWQP?=
 =?us-ascii?Q?NqJ2mZ7WiuCeuHv7VkZZLrNrIoEaJ/ofvrVR5jLAhBtTvcNLq9bS2s1lBGO7?=
 =?us-ascii?Q?i6yArYDlThApq3dZjRP+DESg7mk1owBBreVF8eIuOVORe/CQAKmaUgpJruee?=
 =?us-ascii?Q?2yhmx/fU9hJhyM4QJUbHUzeUOBxFNdCMWx1i+DO/yCNaqYz2x2a4/29fiPEi?=
 =?us-ascii?Q?0voPSI2JwOeFdGO/efVHhyvauT02i1/Xbs/UtUtA56PDbLLrIzVbWJATN2N8?=
 =?us-ascii?Q?pFfF5hWr8OQGVbuuRUBwL0YxnqHLCdi24QytD1tNZvuqtu/H1v9aHdX2xs88?=
 =?us-ascii?Q?SA7JhJ/H947baHWXArA6EcfnWL/WBOGmnC0nnHYsjrtw1I8JM+AQulAeDR/t?=
 =?us-ascii?Q?9x/f29x7kjFvOH9aDqiMaOztoKj1rfBBwXhB1Vw6+FRyptCJWEODW1NU/maq?=
 =?us-ascii?Q?repCniE62XalXod4b1QFGxDrCZM60zvEr/oK0vM1NJXBzNMKB4d60cqSa4lf?=
 =?us-ascii?Q?96XnrQOW3yYKpNxv88hYVF/dmcErAKEg2mcv7B/d0LxEdSBIgvdaMghp1GXe?=
 =?us-ascii?Q?SAVtmfpO88qStYEbsxR88YUgqZEUB4ovaJNlcxKan0Zsqf9l42ol2PffxGoA?=
 =?us-ascii?Q?gKf7ruI/iJp9uJtqgAI8yzPMXsE4szNiFteXATU92Xs62rjP67Fpzv1ie0UW?=
 =?us-ascii?Q?V3ZkxUJYirGgUwBWFSUjUj1L5+46hftipalg0Cm25PSujdYITec+FqlQNr7r?=
 =?us-ascii?Q?x11qQomkMGARUCLzg7AbKCsNKpP+CVXGggq5AOd0RlRJy054Kqyuk5VJI3bD?=
 =?us-ascii?Q?vfcv33jhsS3BikfYBZgmJNgLPOnnv7loxMgvzUNBbk56zPHYteez9bUveuce?=
 =?us-ascii?Q?2r38sCynjqyCF0vyi8+6pVRj8sd8y6/W0OPWTIAkON9qs/ryZNbCwiOj5iOs?=
 =?us-ascii?Q?0JIYExrafalEEe0KJ7zDahsjq2QRHMuMqIgIW0rGAwIdWySe4PTrHCbNrLMq?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8daa41f-150c-4716-def3-08dd7857d820
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8107.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 17:48:04.1510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rKImsafCRH272aErr8xidw/ffzKliIsxPI2SClU9tXqYQjSZ8g6ZXgpWzFWQolfYTzX4LEcSkbwF54tX4zO+mXUJapVaBEWkPBl3j6Zifzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8831
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744307289; x=1775843289;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p33E5q6EsEgtw/zyg6Y2Y5axHPlFrG5J6G1y1P5qoH0=;
 b=UO+n2xxlhL8emzsL1qdF1zOywMyUeeh0TDivw2kMYoY0+PTPPK9uELto
 tkE0XARLlHmyWWdhXR2nHkL7hOGnn/SHHfKLWN8kTNnHfeYrYTY4u+cX/
 itZVDXEJtsOndN/FHuuF/4EdlmfWHY5ZUZ+aq58ygrw9Rd3jqUCC6KKRd
 NVp65N/KcUoYQJMDJam2qKLutVg3bWgyHaLJN2+QuM3gCTDa3tSGiseLa
 khOHpwM7p15biDu90D/7qlunGzLa3wBqfidr+C4sSNx9VXp7D2GhCxmsq
 ltI9ZsiYRMn5hkdK01CrZCkVRE1lkQRP+CMZwkOsh/x5fa/iIvsejFuoq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UO+n2xxl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/12]
 include/linux/build_bug.h:78:41: error: static assertion failed:
 "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) ==
 __alignof__(uuid_t)"
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Intel
 Wired LAN <intel-wired-lan@lists.osuosl.org>, linux-cxl@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jason Gunthorpe wrote:
> On Wed, Apr 09, 2025 at 07:01:29PM -0700, Dan Williams wrote:
> 
> > diff --git a/include/uapi/cxl/features.h b/include/uapi/cxl/features.h
> > index dd8874860cec..06a1ae3f3fd0 100644
> > --- a/include/uapi/cxl/features.h
> > +++ b/include/uapi/cxl/features.h
> > @@ -14,7 +14,8 @@ typedef unsigned char __uapi_uuid_t[16];
> >  #ifdef __KERNEL__
> >  #include <linux/uuid.h>
> >  static_assert(sizeof(__uapi_uuid_t) == sizeof(uuid_t) &&
> > -	      __alignof__(__uapi_uuid_t) == __alignof__(uuid_t));
> > +	      __alignof__(struct { __uapi_uuid_t uuid; }) ==
> > +		      __alignof__(struct { uuid_t uuid; }));
> 
> Really? I'm surprised that the struct wrapper increases the
> alignment..

I was also surprised that gcc has different rules for this alignment
across compilers. Empirically this change solves the assertion, but I
admit this was just the result of tinkering until the error goes away.

For this arm-gcc-8.5.0 compiler the alignments are:

1: __uapi_uuid_t
4: uuid_t
4: struct { __uapi_uuid_t uuid; }
4: struct { uuid_t uuid; }

For x86-gcc-14.2.1:

1: __uapi_uuid_t
1: uuid_t
1: struct { __uapi_uuid_t uuid; }
1: struct { uuid_t uuid; }

So your intution that the struct wrapper does not matter holds in that
latter case.
