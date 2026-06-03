Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +qLgE65sIGoN3QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 20:04:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F147963A625
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 20:04:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=1lRJr8UO;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CB1180D01;
	Wed,  3 Jun 2026 18:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9d_IiXczQsiE; Wed,  3 Jun 2026 18:04:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B89080BB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780509866;
	bh=v7gtpduaHVp4RAdeerJGxE1dxnWC0WG5ygLsl8pHejI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1lRJr8UOdEupRwFTD2AvKwUdQhW+6NxrNxt9Oe2guqebjN/6EyDq/HKNR6zwPFD+d
	 ZgF3aHVt91PGqsxwMI1uW5Xn7F0LxplHopyF7boC1SFW9Tc8b1BW8Kw0WRsw+/WqZY
	 At7r9FVYR4cQNfXj46NxxA4BvW67LaLkWId2MJVhGAPLNjrth6ucXegG640bNPC0ZA
	 dwnG1tipiFF5H0bCoLBHyrEId7T3dDeZlJkCzvVzDF1wdQlVU228KbgDW13v1MVGfX
	 WYe1+olXHvz3p27cevRRXvGoFhfm+MajOrKwhIEYyDQc5hkrZTF75ZsUXF6PXW9de9
	 GB4bEuqhfTQMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B89080BB4;
	Wed,  3 Jun 2026 18:04:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F84DDE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 18:04:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20ED080ADC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 18:04:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sYbIlZebuVS3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 18:04:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8340780984
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8340780984
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8340780984
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 18:04:22 +0000 (UTC)
X-CSE-ConnectionGUID: bjia+EUDSl22yyY+SXbvQQ==
X-CSE-MsgGUID: 0ymghv5+RguikXOsX8Dg7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="83908558"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="83908558"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 11:04:21 -0700
X-CSE-ConnectionGUID: fearRayTRX+3L0QwwfgCkw==
X-CSE-MsgGUID: uN7hcAR3SLeiBVnWX/pdXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="274550033"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 11:04:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 11:04:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 11:04:19 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 11:04:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wdruOvvzEEJYh4sx2Ocrg6ptGAEflztbZ+gASuzTgd1MxaNG7rq0FKsuTE7G4wAO0DsEm17MKAEwvNdRiO//1+c62RDUF0G4h1oKBuwBddpl92V7IiSAVDN0eQ1r1yTiMfa7da+4BPtlx5NZ2KVTylbkQ1hfXCk2eZLjLeFU2BGfWTin2XdYuOul/d4JBznMXzutETIYBvf7LuMHCJnhp3+Gxb6Y5z3xQJoFjbPi09jbK1FblZdW3vv5r9tDMwyBok45+/jR+BdDeyEqWY1tBhYzDyRcWdXGlEFoymn7Wigf8023wGDRRsYpbNARhtDeGfV7iuP7enhT+HscKHtMiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v7gtpduaHVp4RAdeerJGxE1dxnWC0WG5ygLsl8pHejI=;
 b=wkYntOSPr7XhEfS7ydlwu7RTL6CxPlr1SfFBw9AQ7BEPHGkc+F+e8gI/k+WxJ2iAOYlwwYcY0rCcKZo8htZ4HUew2Y4PBYNYeB/dQKUnl9FubwxIiVoe1h6UTunkF2xCNLNfFbpOkos/5YaWMDt+vrSghpfbU5jO/yLe9x2/KeybgfuvaOSbjXx6f4N8oukkMpc1NUzDT/vlj0hFBYAI2FiXb5J+rkv8jcqXFf50DKOqJHcHBy6TUXDyDZppoTL9SXtdOJDbFiuOjAyukhbqR6SymsGNoeftzmXOCm05bWr7aVNa/2eRY6bOVqIrzsMMM+NvP3+S8zMTK/wVXleHMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SJ1PR11MB6106.namprd11.prod.outlook.com (2603:10b6:a03:48b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Wed, 3 Jun 2026
 18:04:10 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%3]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 18:04:10 +0000
Message-ID: <eca57807-b961-4930-84db-d8e9c5d18ee0@intel.com>
Date: Wed, 3 Jun 2026 11:04:07 -0700
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Thorsten Leemhuis
 <regressions@leemhuis.info>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Linux kernel regressions list <regressions@lists.linux.dev>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, netdev <netdev@vger.kernel.org>
References: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
 <b60a7ab8-dbab-4684-abf4-4dd2a9024f8d@leemhuis.info>
 <56f5f3da-31b8-4847-b274-ce140bf39617@intel.com>
 <2619ad91-e3c9-439c-86ed-4604c3f5d912@leemhuis.info>
 <f4e402c1-f60c-4349-8bcb-6c135aa3b45d@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <f4e402c1-f60c-4349-8bcb-6c135aa3b45d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0166.namprd04.prod.outlook.com
 (2603:10b6:303:85::21) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SJ1PR11MB6106:EE_
X-MS-Office365-Filtering-Correlation-Id: ddb0e4b1-fca5-439e-cc4e-08dec19a82e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11063799006|22082099003|18002099003|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: aOXjEHEP+0AGEtOmYjBTGmaCUeeF3jwGSltDXS8nFoSIACZraQg0RGYic2aVWLfPVPZsgtjOoDqPWsD/yp6YPr0SpXZ1OHoz/mKUyAnfDZU8SuKroZ6iO7T7LLNN66nmf/wZtb8SimSlgak4pUp7ebUthYZyZ+vdflGl1n6adWsL64K6FbeMq/9Y1GCZnATSMz4iM6U/9zk8krY2qZyN9/dMaK8vLM0YySyIPNMW0e5ddKnyLQXkoq34eVIx1ASvDzl0ojdaFC/lppdTOKuaUuQivEsvWaSsjYmkTMMm6aA/xKECUljhzEWYqhPB1c6GddZfKdEXCSCWVC7vYLqRVvuMkLcErl9nk39Mc05lsLEBWHZrkMZfnWmBTFBMQn29s1f5QoP0Xd0B/ZSeoLWciddUWC8Um8QZZr0uAMPv0/OzfDOckd5UYw4T5rjjJEOBh7uv/9px9SxULm/7jN9PX4WmKc7iOKyUhk4XGWPDVPdCB1zGy/erE1EvCZd8AniPDWX08+LtWKv8ToEgsroKt+RtP6643/ZPnLzcS7vMqmYzetU5Bp5KF8BZehpNHxl2jJW/v0lAV6Q9t7yC7I85cbliANYR51GB/xvPY8FtIzHt0I3oe6q+bxkdIM2jFXud+vjzf6o2kAlZsUwWXgBPsxsdgz4fbNz/UYbnKhKKx+ap1v7I2d6LuPBp2bnR4FV0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11063799006)(22082099003)(18002099003)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEE0UmFzRWdMUVNQS0VEMFo4WnREMHRpNjAweGtVTU5TbldTVUp3QWRvdXlm?=
 =?utf-8?B?ZU4vdTlDQW5wL044VkVVRkU4Mlp2em5Bdkc1WWVwTHVFakZsSnhqa2FFZldo?=
 =?utf-8?B?eC9MU1hMYUR5QlpZWTA5L1pTYUhDNUZzZ20ycFdEbzNoVDNzSFdhOWtrT0hi?=
 =?utf-8?B?eU5ucVJrUWpKcGhhY0xWSzRlYkpLWngxL3BSWGtBNzVSL2R5MTN5MWhFMFNh?=
 =?utf-8?B?blFZSEp4V0FxeFAweGtoNFNyTWJrOXQ0UnJmcUdINEo4TGFFNmRJa3hrZFNJ?=
 =?utf-8?B?aHJQclhCZkc1anYxZk9zQnlYNVVNSjhXUFdFTHRzMmdsYllSYmFEMmlNeFlG?=
 =?utf-8?B?T2k2WStGUjFueWRPQXB5UnlYYlI5bGtXWkJ5clFHWXhLSG1VQlF2czBxcWEv?=
 =?utf-8?B?UFhaTVRnTUhZenBubkNGekVZMGozTzIxem9LRnFPSCtjRUhCdGIxUHRqaDgr?=
 =?utf-8?B?U0NWUzRjWDFPNzZPM0E1VWxVK3lJcndpNm40eWpDbjhPdlZtdGcvZ25GVG43?=
 =?utf-8?B?KzVsWmFaWXlDVEtXWGNkSUE3T3g0MlpWSGlPR05RMDZxamJLaGd0UzBuTWZz?=
 =?utf-8?B?SXJrMXV4dE45bmFxN3EyM1BkNGZWZ2NMRW1hZDBhMTBwZjdjNmR5RTE4bWZp?=
 =?utf-8?B?QXFLQzBHNTBlS0ttV2ZISHpyVjNrN29VSjlIUEt2TFpFNTl2S2YxOVZzZG0x?=
 =?utf-8?B?dXJXdFIrRGtlNnA1N1pnS1VUb0NydGtpbHBQcFdXbmxtMm1nTFA2TGl3UEky?=
 =?utf-8?B?bmo3MVlNRFNRd3p1aTVjVGpIT2RnSGM3MTVhcDllb2ZweFJvYXdEOXR2dnVX?=
 =?utf-8?B?ZHFPeWlJdDB5eTZobkNmZVZqUEZJb0wzdEtkWWtQK2ErbzZpaytxTXRQWStY?=
 =?utf-8?B?L0dGVE9YK2FEUFVOc3hJWnYwblZLVHhmcVBtVnhVSndoTW4wUDNadkVYdFNv?=
 =?utf-8?B?TXpab2VqQnZoQmhKaTNhNnVJTlo0R0RIVkl6cjFlQzZjYWdEeEE3dXA3UlhB?=
 =?utf-8?B?dmZtb2ZscVhwZks4L1Zwb2xuTjlVUEE2Wm9JVEZwQ1RFZVZOOWxEc2NJbHI5?=
 =?utf-8?B?di9ZU3psWVMveGxBekNDYzdUL1U4VEthZWlZMUZDUzNzTGg4S2QvVERLOVZV?=
 =?utf-8?B?TzhTZk40VDhRbjRmdFgyMUxZSjA2Vis5NzU1MTlPWGZJbFplMnNYQkE5VVBp?=
 =?utf-8?B?U04raTZZOStPVDNzZjhPdjNJQ1pEOFZUbW14czViWUEzQ1crL2NFU0IxUFRE?=
 =?utf-8?B?bzN6eE1ZNHFlZkhPdE83NEtvMXF6ZFVFNlo2ZXV2ZmVXRnhzZTNPSDZzN2Rx?=
 =?utf-8?B?V21TL0M0a0h4a0J2ZWhkcTVEWEZWbHdydW9xOG10b3YwaHExQU9XVkZqZGRP?=
 =?utf-8?B?YWNjSXh5NERYRDlZMlRDMU96RlFQbmZwMHl2MkhHTGpsWTVaUnJYTldxYVZO?=
 =?utf-8?B?QVRoWm0wZklEZk1LUWIzdGQ2T1luT3o5aXNHN2F2eW8zK2hZUUJuNUJCaCs4?=
 =?utf-8?B?Um11TWFZT1JtZkd5WVV0ZG5ENmwxM0lKWkJSZGpDZjZPeDJlMWd2bUFrUUFP?=
 =?utf-8?B?VlNZVThtaUZSdmkvNUNWS0RWYWl1YVpXYnluZ3B4YXBsR09rQjVwUzZ5WmpO?=
 =?utf-8?B?S3Rvc2xOVG53dHZSV2MzNEd6czZwWFRLU2dpZVJTYVJzenNCcWJRZmJCeGlK?=
 =?utf-8?B?aU5uSHBic3RjOVBreG8vYkhtV3A3UmYzS29WZDlqUGRGTE1LTnhDUFhKNTUv?=
 =?utf-8?B?UXhSb2VKbS9aM05JdTdjcU5jMTN3QXpHYS9ZSmtVMWVjREhQOGdyb084Wlpr?=
 =?utf-8?B?eVVPMmdaZXJ4MlZJMmZna095YS8rOHFTWEw1SHhGaVpwRzJ3empURVc3KzJC?=
 =?utf-8?B?bThCM0ZCZEd5UHEzK1hRRVFLQWlpbUo3MkpMOE53ZHA2b0lEY29pcVlPbUhl?=
 =?utf-8?B?K2FhOUJXZTVnb3VDZTEvYm1TcUFWbGl6dWx3ZTBZZGM4YmhNeWhpR2tEUDZF?=
 =?utf-8?B?S3drSFhQZytVaEdOMTJEenJidUUyUmcxYXBRQ29WNjZjYit4QmtTUzJaU3VR?=
 =?utf-8?B?eEQ5R2RESVdCanZtcExCUVQ1c1RaVXBXdEswZEFEZTU2LzBmYXptS1pEN0R5?=
 =?utf-8?B?NmNqVmo0b2JuRTcwRWJGeTdnaUlXc3lYazhlOXZjYnFONmZTUDBoUEtXOTBp?=
 =?utf-8?B?RjJTS2pPSFJGRzVXMzNXV2xwUTNISG03Mmp2T2JidFNHSGxuajRDVWtOZE1B?=
 =?utf-8?B?Ri9TYWdvSzlLV0ZIeWQ1djJVd1RKOTdMUWlwUVQ0RCtWRVQ2YTEra1MrS001?=
 =?utf-8?B?Y0MrWDM1RVVIVGd6OExFRUFsWDR1NFNNQTBIb1g1cTloZHJhU3EwejJzRkNj?=
 =?utf-8?Q?EIDx2DVLM1493Dck=3D?=
X-Exchange-RoutingPolicyChecked: r+p26zx86MZWbOmJz1k2h/5eg6+o4h8b0anq6pBc1RGIxwmUjHY2KCbXATFH+QxlAWSrSS0gtJBYged90GlCya+/5eJsHZmZlwxSqsGQ3suFcrDSWa+MehWp5Gq47TGTFeDx5h+rmi4UfGSX439vuY1TiQ0Xx2yFnHOesCNDBrUIHofpwcTBu6ykpRJJQOocLVAG+mk6hA9KsNQHxg5GrwpVACruPVDil5UaPaj882dkezvlWveGxUycy36417KDOL2cYCTes4FgSZ/1twQejFL0YebBYFJPy+scIgAPDk4BqufUJadwrbIlk4FBiwyY2ahewSLlCMl30eFef6zqJg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ddb0e4b1-fca5-439e-cc4e-08dec19a82e9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 18:04:10.3293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Se/0JkG7dU0CvufiI3tambYki0/9HWOyHqkuzQfEtTZtaJigHdnZBS1WrzIvWc0CJi6YOqJVnR8yu/WidEpzCMgXMeYhafy0tYsozkjUmkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6106
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780509862; x=1812045862;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+47BiDFu21XY1Roqn3EutkzSQb6gwne2x4nv8i/RSME=;
 b=KYW1XNPOlPvvPOTTR4LC7324OE/uoQdSVQBng66WUEcMu1/jnj1CBR22
 FqHFHcTNNlJobAxi868c+WeXEhCdu4cypSzE+KWGJGhvtK3wJQ9jObzSW
 N0qUMo3zcz7mR5R1UQ9RX0TGyNsvDEKxT7MSFc2JZz2X0CHAT5t5fFRoP
 r6Otx6NywfEGLqRgZygul1g53d6AXviKaZebkPNZlZhX8S+lWbFKdIF4W
 IBFfxNX1bVNzu0++bo5MCYSUbHN6nAH62iTS0tv56rzKCIIqcNUeN+f7d
 P7k47mK51UqI7uy2dXE1GMGCMezkBkw8OOCJeJ2kzPF7EsJ3zUPcyazyR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KYW1XNPO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL
 clock gate timeout and re-enable K1 on Meteor Lake
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:regressions@leemhuis.info,m:dima.ruinskiy@intel.com,m:regressions@lists.linux.dev,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F147963A625



On 6/3/2026 10:20 AM, Jacob Keller wrote:
> On 6/3/2026 3:42 AM, Thorsten Leemhuis wrote:
>> On 5/6/26 22:13, Jacob Keller wrote:
>>> On 5/6/2026 2:59 AM, Thorsten Leemhuis wrote:
>>>> On 4/17/26 12:43, Dima Ruinskiy wrote:
>>>>> Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
>>>>> disabled K1 by default on Meteor Lake and newer systems due to packet
>>>>> loss observed on various platforms. However, disabling K1 caused an
>>>>> increase in power consumption.
>>>>>
>>>>> To mitigate this, reconfigure the PLL clock gate value so that K1 can
>>>>> remain enabled without incurring the additional power consumption.
>>>>> Re-enable K1 by default, but keep the private flag to support disabling
>>>>> it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
>>>>> be disabled by default on known problematic systems. Currently, this
>>>>> includes the Dell Pro 16 Plus, where the issue has been reported to persist
>>>>> despite the changes to the PLL lock timeout.
>>>>>
>>>>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
>>>>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
>>>>> Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html
>>>>
>>>> What happened to this fix for a regression first reported in January? It
>>>> looks like it fell through the cracks. Or was some other solution found?
>>>>
>>> There has been a bunch of back and forth discussion and varying versions
>>> of a fix for this. Its still in the Intel Wired LAN queue, and is
>>> currently waiting for one the E1000E team to report testing completed.
>>
>> What's the status? Just wondering, as it looks like this didn't make any
>> progress, but it's easy to miss things from where I stand.
>>
>> Ciao, Thorsten
> 
> Pushing Tony to the To line so he won't miss it, since he's back running
> the queue.

It's waiting on testing results from our validation; we're checking with 
them to see its status.

Thanks,
Tony
