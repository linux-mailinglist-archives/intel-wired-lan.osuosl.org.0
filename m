Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDiLAJKr3mn5HAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 23:03:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 223CE3FE805
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 23:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E4DF42D27;
	Tue, 14 Apr 2026 21:03:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0WA-zwa4oGg0; Tue, 14 Apr 2026 21:03:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ACEE42D13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776200590;
	bh=p73F1o8clvF1p9PJoD0uwapdSO+HkUJq5T1zZnLrCvM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NUWK1zt2f01NdI+nldOdB4r09N5gejyoaswzKeR71+mC/VXkpKS8pgV8hk/Tkdawq
	 0B0L0GPPKgE1R3RR5Wvtd3ZxE5meH9A2M72NUYCfJRixJCb5WRZiGMZtGhM66lnCM/
	 TIwIVVpv71KJ3bAvEoITxhVleIuXpqMZnsWuwZkY+8NVuNhR2HQYbQtsLpq9iROpcv
	 ceJYIscpsP4ixxIU6vTRkkkp+oCv8abMhQrGQRgq8hL+hHtawsCH89e8uUKd3OQsJt
	 tsDzYIZmpVuAZGzZSTSox0iJOsXPzL/w4OCFiu7FlXSSuMpfunq8g219RC5sap+Pf0
	 LooxBJ0bkSByQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ACEE42D13;
	Tue, 14 Apr 2026 21:03:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F271B283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 21:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E3F8F42D0E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 21:03:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4sdtOJMv260I for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 21:03:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F37242D08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F37242D08
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F37242D08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 21:03:06 +0000 (UTC)
X-CSE-ConnectionGUID: ttzPQWbrSRWS/HUSR4prJA==
X-CSE-MsgGUID: oMxA+GUyQvGdOeVIuN8zzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77194707"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77194707"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 14:03:05 -0700
X-CSE-ConnectionGUID: FgoeFK4LQrC/TiIQ8upybg==
X-CSE-MsgGUID: BHpd7nr7T8KabEy/6YHRaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="260632776"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 14:03:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 14:03:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 14:03:05 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 14:03:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AHnDmRx10dh+YjCO67L9mi/z5Md0DyACiVlVPe5gPVE8tqEzJK56/dClsQUgSaPrZNBevFXiu1p0QDV9hK4r8QBcLlCBkdEvIP20grvd260bbWzR33JNqcSfqUjUhQi3ABrANr88y4bfI52/K/HddXkL1BUQXg7R8Gzsr7YTrpJ4itMAyP1ILDNpHzqc6MQL5m7kT6HhGkyEziEQvk4GfIfcODOhSKjBUZVGsWlNWarDxxv2kgZftqH3CgGY1o8R+7D7EIGCtmc7vXpZIWCyk8ZvqhYH/kq3GltuaR1cDU9o+nvflbL8l38PQUSghM+48H9torDolqtAxBlaA+VPnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p73F1o8clvF1p9PJoD0uwapdSO+HkUJq5T1zZnLrCvM=;
 b=fSsMAhxl5k/7A9uP2GbwIHJwVLYiOQmE8Clsh0TeKQYwhzyLXnUtutSaUZis9ZhGwqLnwHd2vzBwy07nKlTd9e8N3+sVZi10s0pYWUjvTGC5CDprfcoRjGDHUowysVjamPYZHown+p02vCPmGruz/F/hBE85iWIjOSZIWLpQ7xggSJ/e9LbipB5chupz84Z5QEQzbT6tSCoWfW8t99J0LxNiBvGn/e3wUhv5BbhSsoDDe+5csP0FnXv0BtbxOdrCKiUEpXmTH6VtrX4MQPanC1jOt2ctnVUXShUE8w5fzPskobCvS2SMqHECSLmsCT7amhhJekbuWE/FGAc4EaLt+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 CH3PR11MB8658.namprd11.prod.outlook.com (2603:10b6:610:1c5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Tue, 14 Apr
 2026 21:03:02 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 21:03:02 +0000
Message-ID: <5da15f31-e9af-4f8d-82fd-eac29a6d98f6@intel.com>
Date: Tue, 14 Apr 2026 14:02:58 -0700
User-Agent: Mozilla Thunderbird
To: Guangshuo Li <lgs201920130244@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Joshua Hay <joshua.a.hay@intel.com>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Madhu Chittim
 <madhu.chittim@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
CC: <stable@vger.kernel.org>
References: <20260413112030.2694563-1-lgs201920130244@gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260413112030.2694563-1-lgs201920130244@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0255.namprd04.prod.outlook.com
 (2603:10b6:303:88::20) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|CH3PR11MB8658:EE_
X-MS-Office365-Filtering-Correlation-Id: c2481b5e-2ce6-44f7-83a0-08de9a693779
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: qS5insaIkmYDNB8nSlc1SMNMJEP3QLtokZQqCKL0ZjzKJoYUrn8BTM1WMj2Vuoo1PHo+xDPOfGfntYQR2dRMiQeH30IXwVGnXv9biMgCevyA2OSG7URcsOPM3XfWcvQpKz7xf9wwEOiUd5m38/EzX39W23KJdynaEOMlKbqSL+Dg5Ix+XmIRP6g/7389E//UR1hMMbio+OetFpVWASX7DLdGJBd5jp19OtlMbbUip5w8xyuMUCBWAi+TMkx1/pvaXg4lCxQ3Bnr/hvThQsjIZWHFWUJQ0NPczZeqYYy9LpmsT897i+R2D4J5yx1pCnJJXNv/uOY2ilgjNxNWh69rMWonAYLS0PUa1JE5hLgchiXRXYoq4/yQ7xiwoSSk4mtYVWaJacaVz+I9y2lgg4ELp6Y5XD+Dsp8VDGTDeOfNB6szlxFUanyL6ZP34SRx8XrfyXHSoXK6JbUmmqVhYNNC9yFxztJlhoWfUHIi1O/mMr6WZQT0s/AKokg3k60UPv1F/bBware42JECjMfeJWTu1LbOSmaGwYBK1FfElbNuZQSHkaSS1mht8sK/sgmv+9Kldr3j3PQYlL1knd9hVjsyTBlQHDSWfEl4ARbl8daiLT6cGuKiHhmlqFIv8bPLmTUywoWmYZb63jcz/GnTiu/vMMViiJR0GOutX9B7+3bibAQzqCqwR2z/sMkP2YY2J2yWP4fLJbW3ARHUEz21D8w/9FZbDeoRGomlP96jrwFT8vF5svLsl1uj7MFoQt4T82ofT9U/EWDxJ5PDFGEZ90902JdtJjl8D5P8fJ2LqLaahww=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?KzR3K0RLSTBvTG5NSy9KMFcyOUsyUE9KZXpNdGtqV0lOVU5oV3RlSm95RENa?=
 =?utf-8?B?ZmNCZXNFKzZaVGJYd00wYllaOVBzZG90R3h5RXhrRUpnV0hKU0sydFQwUXlo?=
 =?utf-8?B?WDFZYXBRTlFPblZPSVdpT2R2R3pFTU5iT21WTkNxanQ2c2lyNmI4NmVkalo5?=
 =?utf-8?B?NndDdVpWWElTS3JLN0wwZ0lkTnZvOE1OTXUxZjVJMHdFMlEzRmlDU1BVUUpp?=
 =?utf-8?B?NUpTOVlHZVBOSTdsN3MxUzRjS3lIRDBBc2hXRC9mM2VNLythbTRSWGlFUGw3?=
 =?utf-8?B?aVpiY1pkZzVvRmgvNmNhQmlqUGlTcUpFQTFOL2dlclJTcXVGUk9CbC9rQUND?=
 =?utf-8?B?SHhoREpibmVORDZYZVAyN2ZqV3hiMk82d1hpU1RESEtOcGR3K2lMaFBrWkoy?=
 =?utf-8?B?V2xjTG9qdlByRnluTmg2dFJMRm9rYXRkUVc5elJiT2oxMDdIUk80TlBvNUMx?=
 =?utf-8?B?MS9EdnVMbTFnNlM0VUlnQzF0ZXkrcFEzTFdSUkhFS0pPS3k3c1BnS1RucVdP?=
 =?utf-8?B?SmlBNWpEZE5ZaHpVY1FEclJlOWdGWi9Mc0d6Q2hrRGFRZU1sMW1vZUNuSmNU?=
 =?utf-8?B?L281WTBMVW9TaGVPdWpNYitzcXVCRFNST0IrbEdROWFHMXFxc2J6RGhObVNM?=
 =?utf-8?B?TmdEbnkvQkwxaDRZWlJxN2V3dHZLM0NBdENQbkVQelJPM0d6VnZnMHJESk1G?=
 =?utf-8?B?SGdRTWppdU5TaU4wanFtdXB3c3FWeEZ0NzI1eFRCOUl4eHhORDcxWHFGMUdB?=
 =?utf-8?B?VVJHQms0STNaL3MvQ2FSRjMwam1EUm8vZEhzOXdhS3VlajhjZ3c1RVRJV1Fw?=
 =?utf-8?B?RC9NN0RWV1NtQnBiYlFaZlpxTnpRa0pkQ09EMDlKK3VjQlhwTS82N28zY2ZM?=
 =?utf-8?B?R2ptMnJpc2YzSUlpRll3YVJSM29lRWZqeC92aG1TOFp6TlVlNXNCM25zTmlx?=
 =?utf-8?B?aUZtWlRXaXZXWWdmdnJEVW5GVEFjOVg2NnJqcTV0S3JVbTA3bnVmVG90dDdG?=
 =?utf-8?B?Q0pkeEdZdFB4dk1ISHBqWTBvVG9ucDVlWVNOZUJnSi9VNVRsc1NyRjRZdzM5?=
 =?utf-8?B?ZGU5elhYV3JXVXJkVHVHN1JNcjdFdE1rcUxndmJjNjVvNzZnT1BBQUVldy9F?=
 =?utf-8?B?Qy9UNTdXR3ZXS1RpenBFZ1RxNHV0empvQXhsbUJmL1FhSWhhMjVTZllqcWZj?=
 =?utf-8?B?bGZEZ2dLQklQWENVc0g0dzlVNE00RC9nTHdOejZIUzVEdDZhd0ozYlhDSlNU?=
 =?utf-8?B?Z3k2K2tRT3VKcTdBaE5HNS9ZdTNQOUl4ekZ4R29EZXRaZDVXbUdieGRyQUNZ?=
 =?utf-8?B?NTFGQWMybUNQbFNQaWNVYytaZERTMDFvU2VDYk5CUjJLNWtHTFRjQmVhMFUy?=
 =?utf-8?B?VjNieU1hTlUwOXlRYlZHaFh6T0tURG9yc2dpRi9wOG9xUVpSNUttMVZsRmZD?=
 =?utf-8?B?V1hsN0VRZVVudER4ZFBKSmZhd3haNTY2cUp1a09FbDJFcTVMdmVYR2E3YnRm?=
 =?utf-8?B?RVVBOFlBTDl2UHdTcitidjNDTjFSVGJoUVMwSHluNDdqUndyRUdJbmg0bExH?=
 =?utf-8?B?b3dQWXAyWk15VW9HN04wWDRCNUFyVGdqSUprMHR4NE5Ibm85citOWHlTcWl0?=
 =?utf-8?B?MUtLWnFFVG84SGNlN0JZK2FWbDdRSUZEb1BuWHY5djVYMzNjcnBTc1lmRG9M?=
 =?utf-8?B?ZEZzYmZGR2ZlYkREeGFZOHVseHY2Ui9zYVhmekZwZ3htRDJNZ2ZZaHQ4dzV3?=
 =?utf-8?B?a2o1WFVGYVc1Y3Z6bHRWSkdBVDZ2UHc4KzRpb1liUnZUMVV0SEZSZ21ZRUUw?=
 =?utf-8?B?dGh1QWZJTFBvSjJidFhOWGdWVVJHUTFoV0V6NSt6R2ZEZ3NlRC8xNWNiS1Yr?=
 =?utf-8?B?ZmF2dmpMUGlVbWN3RCt0NWJXencvVnFNdVdrQjRJT0ZRK29odzZha1p0clVa?=
 =?utf-8?B?WW9hYVpIQkUxNEpWUWc3R2Vqd2ttM1djeDdpSTBPZVh5UitjaGlHSllseUZW?=
 =?utf-8?B?K1JsdTJ5dVRnOUxLT3VFWFpIckcyaHpHWlhyYkZXKzhJTy83aHNIUHc2T1o0?=
 =?utf-8?B?cWoyRjh3d0NmSzVGOUdKdFZCdVltM0k0dGVYNU1aNXo4d0l3Y05kZzBlYnJG?=
 =?utf-8?B?ckZQbHB0dGxMWVJ0TGFsS09BK1MyVlo4M2RYYUNLdThrc09xb0tFYlROR3NQ?=
 =?utf-8?B?N1kxQWdiSUdtODZHb3d0ZkhrbWhRWVA2K2hUNjBhSkF5WGlZU0RneGVObDI4?=
 =?utf-8?B?SVFLcVllSHE3RFp0SzE3YisxSDljbld1R211QmVoZ0F0Vm9BdE0zWTlQaHN3?=
 =?utf-8?B?TGxjWTdzSDVrVEdyTHNNaVdoaVdvQzJON0R0eHdMMDBkdkY0cmRmc0ROYXd1?=
 =?utf-8?Q?0jYI5k13N++hHqCg=3D?=
X-Exchange-RoutingPolicyChecked: YW059cB8GqwoG+T96PlU+2WuBIIMVLjw4GBgHfkLdhpdSOeWNAdRS8v3gkC0JPazx/r8b0WXBgrhbdWLOl7eETeT/paFbVP5X7qnyi9ZgJmpkloOxPQN0Kgn5qiVSiQy6xQpL2TgxOCS1B1Vx2rcuLq+CYb87Oeu9aPv6414q5vh2bXz4FYIJjdYCjKUvnmgCHX3E6UOAdAREfo+wX+R0XLhxX9otgGg2qr1Hg/rNdkKDr/DzpBGlS6H4YSd3Fn/a4X0B4iHzFH26kgStnY5JEa4i7ZMSgP0qa2x1j+kGXCiWPDxma6834V0qGJXvYCLE5cEr0pmT3PLs3RumF/Rfg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c2481b5e-2ce6-44f7-83a0-08de9a693779
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 21:03:02.7868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MLcCT+11G5KDd35WDtTf8t9qBFpnDAF5yqihXWmtyg2Cf4cCoHaHMKoXjp0uFQB6ODaLrtzQX6hkbBZjuGpO+4bRukWCQRfVZIQjZ7YWm7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8658
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776200587; x=1807736587;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jg5tIUx+gg4fBvYc08Y92aXxrwu3eWi+dP3pAh7MVwI=;
 b=IJ1ThKaBkmPrx8/KnjvE7Ex1p62CUA1cBC2/Mn4zHWPDyEq5k7CVaCM3
 YvYvFozzcx0f1TXjh1PRf3Ayfkjn+p3RVdna3wcEnRLyDzMacgBBjvMHV
 013U9G+xM4wIjsbx30D6wsfj1jH8kvYI20DK5gCqnouGYK/6HJNtSgL/v
 Jj9KEFuBN0KMVYyWnLG13poe0RI74cou1H1nkYhpv3AW7yslR3sJ84F6c
 Bh3HVLg1hEwMQc0boDZ0GrLE3UBzxb4cUNT827gaVPdUxdwAW+SMSw0yu
 a7a6UyrAYLcsMLkdlHNk/UDcRPbn9kjQNRJq39Fm8A5coBPS5lD9geQz/
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IJ1ThKaB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] dpf: fix UAF and double free in
 idpf_plug_vport_aux_dev() error path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lgs201920130244@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:gregkh@linuxfoundation.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 223CE3FE805
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/13/2026 4:20 AM, Guangshuo Li wrote:
> If auxiliary_device_add() fails, idpf_plug_vport_aux_dev() calls
> auxiliary_device_uninit(adev), whose release callback
> idpf_vport_adev_release() frees the containing
> struct iidc_rdma_vport_auxiliary_dev.
> 
> The current error path then accesses adev->id and later frees iadev
> again, which may lead to a use-after-free and double free.
> 
> The issue was identified by a static analysis tool I developed and
> confirmed by manual review.
> 
> Fix it by storing the allocated auxiliary device id in a local
> variable and avoiding direct freeing of iadev after
> auxiliary_device_uninit().
> 
> Fixes: be91128c579c ("idpf: implement RDMA vport auxiliary dev create, init, and destroy")
> Cc: stable@vger.kernel.org
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---

This doesn't look right. The commit message analysis seems to match this
fix from Greg KH:

https://lore.kernel.org/intel-wired-lan/2026041432-tapestry-condition-22ff@gregkh/

But the changes do not make any sense to me. It looks like a poorly done
AI-generated "fix" which is not correct. Greg's version does look like
it properly resolves this.

> v2:
>   - note that the issue was identified by my static analysis tool
>   - and confirmed by manual review
> 

What even is this change log?? I see that version was sent and everyone
else was sane enough to just silently reject or ignore the v1...

>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> index 6dad0593f7f2..2a18907643fc 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -59,6 +59,7 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
>  	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
>  	struct auxiliary_device *adev;
>  	int ret;
> +	int adev_id;
>  

You create a local variable here...

>  	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
>  	if (!iadev)
> @@ -74,11 +75,14 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
>  		goto err_ida_alloc;
>  	}
>  	adev->id = ret;
> +	adev->id = adev_id;

adev_is is never initialized, so you assign a random garbage
uninitialized value. This is obviously wrong and will lead to worse
errors than the failed cleanup.

I'm rejecting this patch in favor of the clearly appropriate fix from Greg.

>  	adev->dev.release = idpf_vport_adev_release;
>  	adev->dev.parent = &cdev_info->pdev->dev;
>  	sprintf(name, "%04x.rdma.vdev", cdev_info->pdev->vendor);
>  	adev->name = name;
>  
> +	/* iadev is owned by the auxiliary device */
> +	iadev = NULL;>  	ret = auxiliary_device_init(adev);
>  	if (ret)
>  		goto err_aux_dev_init;
> @@ -92,7 +96,7 @@ static int idpf_plug_vport_aux_dev(struct iidc_rdma_core_dev_info *cdev_info,
>  err_aux_dev_add:
>  	auxiliary_device_uninit(adev);
>  err_aux_dev_init:
> -	ida_free(&idpf_idc_ida, adev->id);
> +	ida_free(&idpf_idc_ida, adev_id);
>  err_ida_alloc:
>  	vdev_info->adev = NULL;
>  	kfree(iadev);

