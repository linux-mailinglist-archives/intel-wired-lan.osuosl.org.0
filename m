Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCzyBP2W3WkmgQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 03:23:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5866A3F4C7A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 03:23:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A468A848D5;
	Tue, 14 Apr 2026 01:23:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LIaNTfINerOQ; Tue, 14 Apr 2026 01:23:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1246A848D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776129786;
	bh=wgw8yUWejr5IoQH8Oq0d0pLuyYhIwZcJ3iaWZpKjXnM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V4WDdiO6HW7I9mKH0jGrgFXGZ8bcxs+5MQ/SIa9ITId+xmsMDmxO7soBflU4PMjhG
	 mHppoM1zg77x0L/IBBSXHQP6fSK8sGS9+fuRgN6x6bYQXJmaVlrvDWMfrHTiiT+xcb
	 QgUx9NqwCAxK7hODENzBF/IiEjiBYlfEgfoVRWSk9Sg6TT7PwWte+ZxHh2VtsE5nvd
	 9Apd/hZ+VeZjHeSsyLiabExCgfQQD/rvsygcdCvefj6/RCSNf3ReB1itVEXDw70h84
	 nItUqdY64yMFg4Ln5ZnZjXhuycF/lPA+xTK/CPdZWN+N4FEywXy1N1MiJyEVZu2cI7
	 ynUIfKF1FlnIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1246A848D0;
	Tue, 14 Apr 2026 01:23:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 98E95283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 01:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AEAE42827
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 01:23:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id osSCnFdv6CKL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 01:23:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9D52B42826
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D52B42826
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D52B42826
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 01:23:01 +0000 (UTC)
X-CSE-ConnectionGUID: 2GfQ/fVtRTCHiX5+AzfS5A==
X-CSE-MsgGUID: KraFAmq+Qle3f8XB+f9zLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77098467"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="77098467"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 18:23:00 -0700
X-CSE-ConnectionGUID: R6DBn6cZRx6qRLrZqba+EQ==
X-CSE-MsgGUID: cbRjOHg4T4SIDO+LA0F5+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="229817001"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 18:23:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 18:22:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 18:22:59 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.67) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 18:22:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bUAnb+SzOaY1TFjsDNSE9IbCvmy9ZCyX/vRZbQRGfqWFWVEEvnUFLj55TVfTmoGT4QeJ7qamj5pGjhsrctgLYegdoAt7dovUrmKr1fDZX0+kq6yFct0zEF88Kkqtcy1QoWjxio3I2TTZzhRwbBNpkRJgt/gZgpajaw9WXYXCs779Vo07zAfUzNRReNgXwjMCffCnR+3vHSzI2EL1oqSkrICyY8mN6PqNxLxVG2QUHxJMxJXAWNIF08aN89TclK8RlxVkST9vDkvvdyAKzPoRKidqrJZOKxlgogZay+qX/N8zn/Rba2JCe42eCa74VIzMwu7n87S7iuqjSDdkzWlCpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgw8yUWejr5IoQH8Oq0d0pLuyYhIwZcJ3iaWZpKjXnM=;
 b=ZNsUdYuL6+7TMvnvN47U7BntP5pR1d0jnpd7/x4Faoo5Z1RKdnYRxYAzFnYkdmE9JjM1AgVfSs1fUJ/7IXfjDs4MGZ41NMJbv8C9rbBNkQ5xfw/PKDLWAC1NadPARrw+8wMv0T0OOobFw/6MOLavU4kC0sFOgLEWjMY785zKFqayJczAnTaJxmAeVZk3HOksOa6miUPO5SZeEQ5WM+jS3eMHrIrBpP3qWr6PA0t6f/mf6a2QxRg4XfYEDsXaLQHoh/w+fbQvMuggVO142oYv8Zp2Q3PBp32qsQ87CdDzgdwkoEZ0X/HTg585EJVSHFJmOnW5m7iFV6ovN5RqXfLA9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.15; Tue, 14 Apr 2026 01:22:54 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.014; Tue, 14 Apr 2026
 01:22:54 +0000
Message-ID: <7f5bb0a1-90f2-44e7-be93-7a2fd4f58dc2@intel.com>
Date: Mon, 13 Apr 2026 18:22:51 -0700
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev
 <sdf@fomichev.me>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <cover.1775648513.git.pabeni@redhat.com>
 <0815f1eb4b60faa653ea703e420395b724d05216.1775648513.git.pabeni@redhat.com>
 <IA3PR11MB89864FAAC7BCD8459A2BCD15E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <2bae0dc2-4035-4fe2-a87e-dc5dae6c7df5@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <2bae0dc2-4035-4fe2-a87e-dc5dae6c7df5@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:303:16d::11) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: 7222f968-d7c5-44e0-a92a-08de99c45a66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: cLgsUjjmq/ovLCSS+2jxR+RiU/3a3bi9BLx0GTN1/z5Iaxn+Jbj1qkbVGxxX2q07RFWKoJZGI6C/VPj3IFgml62s9HhfvJ4tIVRccMjs6UwhsluLRSssUeoKHZ0uh8pqZro7HvkMQ8G+xmYpYybfg39YvrWAmQnDLtQPJFsmg7GZK37JCFvW7LSnI3EM//imX/6bjHRML7z9D+5N8RwTCRMNEY8R3cfyGKWOJbG5BdzcdEXolaT0DcdpusRQkGuAM3w09MaZI+YuDOgEMVpM40qf4Yf1fC37UdL6lJa0PfkvBsJ1PCiBgZRHhFiisvmH32YuvPJc2UY6BlXwolzCjMoYCB7Ty4UWFhm2/wvD2pzAx8BDEjaS0h+jnv7dPV7e7l8fTGShznhkVY1OF5fqVfUPGMgrprVCCgeXsACObKFJG3d+kq27ewn01uSs8+TXfsAHh8ij9i0YjKJW/cKhXNm+r1z9TDwpjjfon4BUyuoRkilEWtT6g4pub25wCwY9SLsDU6PJLtzzjrAhgWoSRnNWGYwNWae7FS54fW+9HEIRUVZ0Q1j9WqMDS+0PQP8f6l1O6NsWn86I85PvW3Ji0Ma0BIsQWrDsfOEvQ33Q7RWstrYnDhQphIvxHNu927NH8LWMAK2pCjOUox0EoklWXQtlbZ5JvS852nCjXcf+xVxLSBZzoKbNcz6qXMa39OirG4j/kUHjB6CM+1QJV2wcBP2jE51rLrUGEdToNs2EvD4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZllJaUQvZWEyQ1dJUm5lSVVyenF1b2VPcFRENURvVHZFVG5LajRoWkdUNDFM?=
 =?utf-8?B?N2Y1aXFYK0pDVk9KMmhYWHZ6RVNUOWlQUWFENnhjVFNWRzVlN3hiZXlxZ2lE?=
 =?utf-8?B?OUZiRm0wK1FVMzhZSXVmTEFkY0o2c1hiZ2VES2VoSWhJQThoVnVKWlJTSmd5?=
 =?utf-8?B?UGIrVzB5cnpuMXE3b3Zick9NeENPMTNSWS9rRWpMenNqelJwZGRLQjFON1k3?=
 =?utf-8?B?TWtSMldUZ0xOTnROWTZFZzNtZzhkWlgrUnVhWUlRcWZFV1I0clNOeHQ2RFVq?=
 =?utf-8?B?OFl5amNCbS9lTEhXTjk3WEZMUEhrRUY4bTV2TmprU2tTZHp4aVpxWmhMRkpL?=
 =?utf-8?B?UW1RSGJWWkxiK1dWM3VqajhrMVpkVDRGcVlnSUdRT2RqaUc2SWgrSlE5Y0tj?=
 =?utf-8?B?QWV0K3BWOHl2eFdjeTlwUE1iR1ozbVhmSXJNeTErcllmZ0FWbVREb2hBeUFt?=
 =?utf-8?B?V3VlU3dsN0FieTl1ck1jUWNsekEvc1Jwblp5RFZyRmRCMlBEeDZubHVhSFdy?=
 =?utf-8?B?ZFA3MTBicHJKZU82akZNZkNDWEUyTS9SYlBCZi9uQ1ZuOHo3NkpTR2QxaXBa?=
 =?utf-8?B?dFZJcDhhZGNzYVBSam5ZVkxqY3NpbGFpQVcxTmtUcnpQWGVJb25yVDg4Mmhz?=
 =?utf-8?B?ZnBOUi9zd3BDZ0xtcWxzQnduaE9nUjE5Rkx5bWZZMkdGWFl4cHNzQTJLa0hr?=
 =?utf-8?B?aDZIdzE1OGVZdEZpRGp1MlhRZWV2WnpndG9FVEZVcmhhTVpEYXZ5bjRhWkhO?=
 =?utf-8?B?Qlpaa0Zaa01TY1YxUjF1Nkp4bUZ0TlNUdDVNOHFmRzc4MWQvUHhYUTNqV0xz?=
 =?utf-8?B?VjlFZi8rZ2grZjdYSFFuVVdxQ1d2ekZIdFpoWkdzNDBjSVFUdXVPL1ZHQXcw?=
 =?utf-8?B?Qy84Rk9VN0ZvSzRJZXc5MEFyVy8vbzd2VjlWMWVLRE15U09rYnNCK3ZKQVFD?=
 =?utf-8?B?T0tJS2djaEZBdVoxaDIzcTFMRFpkOEQ4MEYvSnRNTWd0REowbDl5d0Rjem4z?=
 =?utf-8?B?UllzRDBkZnhXSW83a1ppS21IeWlXS2dVY0pVVmRQVTB0N0l5TXd4RkIwRWl4?=
 =?utf-8?B?ZzAzUTc3RHdXSDE3NWpheWlBUXFJQXovcWN5U0JlbDlMK2lxS0VlVlk5d3BT?=
 =?utf-8?B?Z0gyRzBURDlRNnF4QVNpRDdVVnZqK0FMMWNaTlNjajM2T2hiZHU1MFRVYnd4?=
 =?utf-8?B?NDh4OG9XRy9uOW1wMjYzenAyOElWR2RKZ2FFenFRS1VJMFROZkU1YzY0NTZ0?=
 =?utf-8?B?ZjhaV25UY3EwQngydUJlZGhid2RzU3JNaXFBWG56YWVUSVhmaGxYZHlqaVlJ?=
 =?utf-8?B?cktyKzVQNFBPRGUreE5jMHp6MG5jOFg2bVA4U3VkNWZDWWd5SFR3RXFScjhP?=
 =?utf-8?B?TFpqTjNrUll0c1ZHd3JXZENTc1NueVc5ZTMzcCtuZUhuSmFyZXhoY29VMFh0?=
 =?utf-8?B?UjVoY05MNEZ2K01NRytQYnIvVllWNFlLeFlvcTVJVTVpeVJ2SlFsaWo2NFRZ?=
 =?utf-8?B?M2JRNlR5UFdwakVEcE8xL3I1NjFvME5SMkJXRmFuY3N0RXhoVjg5MnB1Mzlw?=
 =?utf-8?B?R1JVWnBLM2JCeEtka3ZzRmFzS0hMV2oxUmlFM0luaHFMYWJkSGF0YnVManhU?=
 =?utf-8?B?dUZFbW54RzlhZUxnb1k1V2Y4bTYzQ2xHTWxkc2lySTFnUUpjZ1JDRnJma3ZY?=
 =?utf-8?B?QUZnbHRiRGpoOE1Zc2FlMkh0eE9wQ0Mzd3MzZTlLWXN6cVU0MjhNWGJ1aE5i?=
 =?utf-8?B?N1JkM3diVzlibnp3MFgxdGtPNTRlZmlieDBrV2lvSTJzUnRXaG81bVJZKzZ6?=
 =?utf-8?B?ZEM4WkRaV0xINnU4YmhtSGEyalhDdGUrT0FJQW5FU3VEZDA0aDBycEZ4WUN3?=
 =?utf-8?B?OURxU0llbkZyUXVsSEtUZkZPcXBINUVmZk5UVTBuYzEzaUkwL3IwcW16cmcx?=
 =?utf-8?B?Qit4eENtaEtEdlAwdVNkOFVxdzRkYmplSm1XVzdleDE5S1NxOEdlaWxhSzQ1?=
 =?utf-8?B?WFdXQXlPUS9odnRSMWVDRTUzNk5TZHdDbmtQaWMzVUZGU2FrL3FMOWx2cTNk?=
 =?utf-8?B?NVdVY2dSUTJvMlVSbU04SzByRFk0Rk85MWFBWFJTOS9xNTVhYkJ1dHducUlw?=
 =?utf-8?B?OGFpMXVPVktwSzVXS21Oa2s2RDFWK05VbC9yR1R6ZGxMVVBVS3ZtVUFtMWt6?=
 =?utf-8?B?STB3eE1HSWFZVUYzNisrK0wwK3JMN2dZWjJPUkh0NitSVHZ6c0tVSGh4aDY5?=
 =?utf-8?B?Ynl6dzUwSFkzdXNkNlBGTEREaE5LTGpIT0pTY3Y3UmhLM005RHc4MWdBeVly?=
 =?utf-8?B?eWhnNlFZbDJJbXhsV3psclMxckw0UmNQZmFlNmFtRTRhZHowRlFRUT09?=
X-Exchange-RoutingPolicyChecked: ZfeJs+QU3mUgxgYbxqRDzk7UXbP+NIGMU7EGF6UR4PEwj8aJITAuD1ZwBzPmqg4n9NFbFhkZ5R47o1mSHsfNFWMf9cPGn/5uu9z2spr5k0ayJW/Hcn3cZ+9xh3AB/eWYHJTnrCJASRifz468cGIPAO7rmnxR5MykvbBJffEhItZhIb3A3kgWumprE+rmRT4kgaTDuu/ApJEEl4DIdvbpzp/C399rhzlAuub+hLu3lsO6tvg6RL5cdGbkH1LWjysjBI3xjYCA/7V5c/ZhRITmpRqvUyTGKxMchPkZfn/5tm5WQLlJBSzhmzkq6bmaaub/ZMbY2Vx5rjqZS0LYdRBaAg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7222f968-d7c5-44e0-a92a-08de99c45a66
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2026 01:22:54.3785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ycoNIp0q44GqO4BN8TEMCfgGjZ3uZzBCjBZfndV8LrahjSVA3mPIOLL6ogWWGbNvawbZ5nXQzsMq6I7kY/3N1gq+A/8+iIJV4yZz6swrsTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776129783; x=1807665783;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lnNNZLW+cSASeAuma9EHOxE0+dylGtVnmQxac2pSK2M=;
 b=clRNDLnr9OFfaX9lub6a3PnITtQIQ+qIiUSw3pbOEgvE89BTsnSgOgKH
 vsz6sOQeZ1HVTkaDGATXqqa9Sd8M2yDXevkJBj4UHKF4FxfDt8Gp7x5nC
 x9Nb+iv7dtlz5ZIgzQCBSD+1TNyVI0tKUJcoEnv+4YXD2N7mw/xLDI95T
 3K4BZY1t+tqW6RXkUBle4SiBJzV/QAVMWfck2Ob/f7zSJBrSx/UnGBwHa
 dQaUQsiwfsFTrPPxtb2IsJ1vznS0tJde62Kmkg97KmFxwV97BWfB1IB8C
 WHCO9QgIJdnVqmCgWL6zGcv9QxiIevuoDyyzwbsA2NjtwN2zcwT21Sf1Z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=clRNDLnr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
 per-queue stats
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5866A3F4C7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/2026 7:44 AM, Paolo Abeni wrote:
> On 4/8/26 2:07 PM, Loktionov, Aleksandr wrote:
>>> -----Original Message-----
>>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>>> Of Paolo Abeni
>>> Sent: Wednesday, April 8, 2026 1:44 PM
>>> To: intel-wired-lan@lists.osuosl.org
>>> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
>>> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
>>> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
>>> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
>>> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
>>> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
>>> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
>>> <sdf@fomichev.me>; netdev@vger.kernel.org
>>> Subject: [Intel-wired-lan] [PATCH iwl-next 1/2] i40e: implement basic
>>> per-queue stats
>>>
>>> Only expose the counters currently available (bytes, packets); add
>>> account for base stats to deal with ring clear.
>>>
>>> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
>>> ---
>>>  drivers/net/ethernet/intel/i40e/i40e.h      |   7 ++
>>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 133
>>> ++++++++++++++++++++
>>>  2 files changed, 140 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
>>> b/drivers/net/ethernet/intel/i40e/i40e.h
>>> index dcb50c2e1aa2..fe642c464e9c 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>>> @@ -836,16 +836,23 @@ struct i40e_vsi {
>>>  	struct i40e_eth_stats eth_stats;
>>>  	struct i40e_eth_stats eth_stats_offsets;
>>>  	u64 tx_restart;
>>
>> ...
>>
>>> +static void i40e_zero_tx_ring_stats(struct netdev_queue_stats_tx *tx)
>>> {
>>> +	tx->bytes = 0;
>>> +	tx->packets = 0;
>>> +	tx->stop = 0;
>>> +	tx->wake = 0;
>>> +	tx->hw_drops = 0;
>>> +}
>>> +
>>> +static void i40e_add_tx_ring_stats(struct i40e_ring *tx_ring,
>>> +				   struct netdev_queue_stats_tx *tx) {
>>> +	u64 bytes, packets;
>>> +	unsigned int start;
>>> +
>>> +	do {
>>> +		start = u64_stats_fetch_begin(&tx_ring->syncp);
>>> +		bytes = tx_ring->stats.bytes;
>>> +		packets = tx_ring->stats.packets;
>>> +	} while (u64_stats_fetch_retry(&tx_ring->syncp, start));
>>> +
>>> +	tx->bytes += bytes;
>>> +	tx->packets += packets;
>>> +
>>> +	tx->stop += tx_ring->tx_stats.tx_stopped;
>>> +	tx->wake += tx_ring->tx_stats.restart_queue;
>>> +	tx->hw_drops += tx_ring->tx_stats.tx_busy; }
>> Why the reads are outside the seqlock region? 
>> On 32-bit kernels, unprotected u64 reads can tear IMHO
> 

Paolo is correct that just moving these into the do/while loop is
useless, since the increments aren't protected properly.

> Currently there is no seqlock on the write side; to keep the series
> small I preferred avoid fixing the pre-existing issue. In any case I
> think moving stop, wake, hw_drops (and others) under seqlock protection
> is an orthogonal change.
> 
> /P

I ended up doing some work on ice to fix a lot of similar issues a few
months ago.. The intel drivers weren't using u64_stats_t, and several
error/debug counters were not being handled appropriately.

I'd personally prefer fixing existing issues before we compound them by
adding even more incorrect code. Even on 64bit systems we need to use
READ_ONCE/WRITE_ONCE or local64_t, which the u64_stats_t type uses
internally.

I can understand the desire to limit scope of work, and the issues may
feel "minor" but ultimately I'd rather not see us continue making the
problem bigger instead of fixing it.

However.. if other maintainers feel strongly that the additions are
acceptable despite being incorrect w.r.t. the stats logic, I suppose we
can continue this and have someone from Intel look into cleaning up the
mess like I did for ice.

It looks like the series has some other requested changes either way though.
