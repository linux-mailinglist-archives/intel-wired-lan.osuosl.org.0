Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E863EB3C411
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 23:07:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17529617A8;
	Fri, 29 Aug 2025 21:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pz5_9woPX3gK; Fri, 29 Aug 2025 21:07:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69A44617AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756501634;
	bh=zhnvhB5khc0sfurnKmSx63JRfP9FxBNFYuFXvRfY9ow=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2OH+Gk5vFmpWfhOlg5qo1lCpc16ay79lZaSXlNJ5RZckFr4b2fxna4HksHDozovbg
	 pVptlkVvqTai+Qgq3WQH+1EXkrXLExO1HMErUYjMK99CNQ7jirlTZbyzvjtP5xMrb1
	 MvcurOFqov/5SoOxzH6Nav+IkzGtxy6PyA9CrpetvQIQfnb9FPMVoRWlPlNCJTuL/C
	 VYGmsCEidb0r9STxSR1Z2biJE4mDJkoNs/GTgsnnCnA/cOxoloms+vzW+6TEscLFb+
	 us/ZPYd1hn+bAY+CcYTWmlb91oQtUJOzV73zS6ApUwdXOzqaCu/8eS94S4GfRGuqrg
	 3eaISWHGxftpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69A44617AA;
	Fri, 29 Aug 2025 21:07:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D155169
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 21:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADE52617A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 21:07:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3t6GIxqPP0wq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 21:07:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4D68617A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4D68617A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4D68617A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 21:07:11 +0000 (UTC)
X-CSE-ConnectionGUID: FmTFTSP3Q4ahHi2rqL4L/A==
X-CSE-MsgGUID: wwzTikZKSiqg82kDxg5lqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="62438975"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="62438975"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 14:07:11 -0700
X-CSE-ConnectionGUID: ARPVWAFoSXG7iPhHpbECww==
X-CSE-MsgGUID: 4jFDbRBzT7iMg4ob7bTynw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; 
 d="asc'?scan'208";a="174838345"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 14:07:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 14:07:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 14:07:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.75)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 14:07:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fUlNKNu6z9LevxUnoBvJpnNClCxOJ45cYPr2NOjuuyfFc6Pb8JgUUknYnzO32mfpJRnVUTGST+nuhmXLD8DmNlu/YF6t2gzqwgamhzQgf82RuxUpJbTvmGDUCzy/mKSMq5KwCWjju9aOyj77RNX9uqeooJaSwxTMdJhzeC14J+k5X5LaxbEVbhT9Nn27LktLxeyaTN9HuLDNaYWvEkMQnTwKJ22VyKJSJQc9+bu9MybEDWBvaxsPPkt04peo3Hno+umuNFiJmKZAqmQpeN6L+qrJ3ynM2Zplwf7po9AU934fpc10zlH87chpMEX+TtfsWF1Vz+/NeAk8d/5rzbtjSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhnvhB5khc0sfurnKmSx63JRfP9FxBNFYuFXvRfY9ow=;
 b=oo6y+5wetyig5p1jmGnkO3823Q6jGhSSmBv/lutU3Yb32OLsKii70M1up9Dbz/02RQk4BGcGkt95NkdTJCqe6eVGCi/ni0c9bkGygTWoTZpx0865W9M9LzOEvSQgvYpB1q5xWwda8foNncSNKzkvPOpaFVi41l67LD1em1VmfKX/jCPKLZNNqbr4T5QZRW0RSAfKC8Ho1qX0BKx/iBlIPkuhcMOoYYRCAasZaUDnKHybLfrQz8pgMjN8ir3LuBmmyawxhAW1w0wdNYnCgU3Nw1IaYCIEGDrzotfSXYqLKBeFEoONWnCE8Usg8UtO1YAY2DbrASfnRarN6jR4SC6Mkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB6903.namprd11.prod.outlook.com (2603:10b6:510:228::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.22; Fri, 29 Aug
 2025 21:07:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 21:07:04 +0000
Message-ID: <b5afc53d-7ffc-494c-b38a-cf49a2c7f05a@intel.com>
Date: Fri, 29 Aug 2025 14:07:02 -0700
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <larysa.zaremba@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20250812001921.4076454-1-joshua.a.hay@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250812001921.4076454-1-joshua.a.hay@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6n0nOTSXsg3hxxXpyQGQ6dTM"
X-ClientProxiedBy: MW4PR04CA0196.namprd04.prod.outlook.com
 (2603:10b6:303:86::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB6903:EE_
X-MS-Office365-Filtering-Correlation-Id: bfbd1918-5f36-4f38-4ac5-08dde7400143
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2VmQWVhNFo4K1EvRVVrWmxZS3JuWGo1ZUxDK1ZzRmY5WWpSMWRsQ0lOQTRJ?=
 =?utf-8?B?NWljSnFLdkMzaWxub2cwU0dSdlJvcytRNkRvRTQySXlSVkJRcktJMWx2eGp6?=
 =?utf-8?B?bk56YUY4dG14UTFrVnM3K1UwWGhQcXNqUERjWm8wbmlzZnpUQUZNd2lWT3dW?=
 =?utf-8?B?cjhwNkZ0T1I3bVlIRFErR1k1dXBBWVh5WnNJN2Y1b21FOTBwOTNtcXJCK2dD?=
 =?utf-8?B?QWtOZ0dPZjhoQmxBT0c4cE5RSzAvanBSYUFIZjVaM0ZaemJiSThJcWVqSkZS?=
 =?utf-8?B?ekNLaTNKOFNqbkRqaTBNSFQxSW5IRWRRNGZjTGxURXFoeW1yRkhkRW94S3E4?=
 =?utf-8?B?ZGE5S1dQZFkvTVdqU1NjLytpM2tSak9iZi8wcm1TcHlMT2d2QVFBYUNvZDVj?=
 =?utf-8?B?L2pveFpNRGViNE4xeFZmK3gyemx3aXRyZ0xOT1c3ODludS9yLzU0U0M3YlRI?=
 =?utf-8?B?TUF4RzFFTUZQdmJZZVJuRzZDV0FPOHd1VGJtUlZiNnFkR0lsbC9BR2N5UGx4?=
 =?utf-8?B?cmFPaUFXVUJScVdOcGpGbkloYnRhYS82WFNTUkdsMVBBTW43SUEzbjlTMTll?=
 =?utf-8?B?akNEK1NPUjV0MHMzY0ZDeUhKZ2lYRmhBL25IS1lhTi8wblZCeVRFcGJEQlQ1?=
 =?utf-8?B?TGxLNUtiRXF6eVhyak0ra2xpdHVtenRQaHZpZXVUMWltVUgzWW40MlppYjVH?=
 =?utf-8?B?Nlg3REZLaW1QNitkWVovb0FPZ3ZoMHVPOENwR01DY2NSYVdaaHN2dUVYWTE3?=
 =?utf-8?B?Vi9FWVNLanZWeE0yaFV3M3YzZXd4UVo2VkhTRVg0Q25oSkVRRVdIOHZhK0Fv?=
 =?utf-8?B?RVpMZUFUb0svNVA5VEgrdVA3L0tHKzN1ZjR5MHlOVUZQbTRVQzRIV05mbUNq?=
 =?utf-8?B?QlQ5T0JmMUJKbU1GRkNXQmVTYVFLMEZCSUlycWhKckE3dmdpWUUvVlNOUXh0?=
 =?utf-8?B?bm9tZmpNUy9NSTI5NXNWOXdOUlhTc2ozd1dtMEpwNVdrbjNmbEtDWHVrQWt3?=
 =?utf-8?B?ZlBLWlBrSnhONStuU0hGck1WUFVOVzFGaTQ1bk5WS2Q3dzZHcnl6dVllamtC?=
 =?utf-8?B?OFdDK2tSUk9RZFVKb3E2b25rNklRYW5tdWVzUzZuUHpVeVJZbHpvSExlZjlO?=
 =?utf-8?B?eDl2dWVLTlZZRjRPUWdVL2tMazBxbHhBODhLVFJMeEVCWDZiaUxnWkRuNVBx?=
 =?utf-8?B?N3RqOEY2MzBudStuZmJCV2lnQnRMZWJrYmE5elhKLzNFaEpqc3J3UTR5NEM1?=
 =?utf-8?B?Z1Z6c2R3OE83N1RXMFBoelM2dFBqcHo0anVZb0didUNqOE5MZklSSFZVZlhG?=
 =?utf-8?B?T2hYbUN2VnpiYkoydjBxaStGTkpzaFJFL3c0TE1ndjZ4NjBOclMwSEJycXdS?=
 =?utf-8?B?ZmVrcmR1N2FSOGo3RXR0QlRBRFBOMHRBeTBmKzhabUpqaXRac3ZlVEFNL2R3?=
 =?utf-8?B?R2poaVRvcmEwSWFwYWRsei9TRDlBYU1yMzRSYUhyUXh5ZnFQV2wvRUgyU2lp?=
 =?utf-8?B?TWFaVHZqNnpIRnNWWmd5L3NRQ2NIOWUyNitmYy9QSE1yUHp4a1RmWGl3UW9V?=
 =?utf-8?B?TktmZmxEQS9yMStXU3pvN0h2UWtFWlRVNW9rcUttcDRIMy8vZkd5bEtwcE5o?=
 =?utf-8?B?WDh0Z0I3cDlreFRZQmxTNWQvcDMyU2xYL1FVM3dCN0pnaTh3Q3hMakJGUXV4?=
 =?utf-8?B?T2ZOOTJIRkEvQXp0S1FsN0I5S2dmRDQzeWtGOTIyS20xeXhqaTl5TjJvNTA2?=
 =?utf-8?B?NWpJUkU2UFE4b1JGaUNjYTBCa3RwQVU0WEZpSE5EWDNjZlFyM1pad0NraUFx?=
 =?utf-8?B?RjhxYUo4MUdGRHB5djFXbUJ2Smd6dVdSblJWeUNYaTdlNXhTZ2ZzYndScXI4?=
 =?utf-8?B?L3RJdHZjWkhTay8wdmE5c2xFdXZBMFEzdVhMOHB4Q001ai9HNDVRTktiSmVV?=
 =?utf-8?Q?sQ+TYSnET3E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXIvUmFpZlltWGE2ZnhuMWFuMVZ5bUQrbkI4VUxLZE1MQlZEVHFRc3hqMHln?=
 =?utf-8?B?NFUxOTRVcUJTS0dYbFZVZFdYTjZDNHNOUGk5a2hkZFdscmlkdjczT0lpUytW?=
 =?utf-8?B?N3Z2eUt3MmMxWTZWMGlDdndsWUxiYTQwcCt3cE5ldkVTRHNGY2ZIb20xOHda?=
 =?utf-8?B?cXZXcEdqakVQb3k5RkxVYko5SWlNeTZ5QzNvNU1rYjhkQkNlK1NNZkxybWxk?=
 =?utf-8?B?dHIwMjh4eS9YcncxaWt6YjJ3dnFRTDFlSmdJVnpCMVNVN2RIUmhFaXlqU29U?=
 =?utf-8?B?NTJFQ1hQZTlKRlVGU1Z5aVFHRmE3U1hUVElxSS9qekVFT2hzTWdFWFZiSVUr?=
 =?utf-8?B?QklHWjlSVHg3YlVzZ0FBM016L3IvVWtRb3NmNm5KL1dkc2ViU2FHb0txQmFh?=
 =?utf-8?B?K004WERpL3NMRkJPYkRpR2xKc0JpUkhURXl3MFNQUFpEM1RpYld5OGxPdGtL?=
 =?utf-8?B?RVhacU9LNlFFZFg1L0lqditGQ3NhV0ZIeTFvemM1Q1p0K1N5M2FVQ3dvYU9S?=
 =?utf-8?B?anpZeUxTQk8xTXMzQ3c5UVFSSkY4T3pKR1B2L01Ddi9HMVdqU0VITG5FekZX?=
 =?utf-8?B?M3JQcHhubmNVUDdIMGhQU2FmYlBPSnZrL2pWdXllQ0cyOVgxNk5FMEI1cGxW?=
 =?utf-8?B?UTRMcytwOGt1ZU5yTmxFOTVkTjM0TnhUYlBlUGhkaXdSenFibVV0cllhSnJV?=
 =?utf-8?B?cHlCa0w4YTZrd2QzSi9ydGdjSUZHWDZtam90MmhWSkhoNEJFbVVVNkVnWXVQ?=
 =?utf-8?B?MENRSnE3V0dZUmNTTGYxYk9HMGRqT0dYYkNpOHBGY2RyQ09TOWNyNEJZdGQz?=
 =?utf-8?B?anYyT0svZUlDcktFS0NVcURQMVgxSUhoMnpEQWR0UDhNZm1oRUpGdDZXaW5p?=
 =?utf-8?B?UTFHckxCT2tkaDhzcllLQTRNWUpiZ0ZiYmkyQWhjVC9OTm1YMjR3TVd6RG5O?=
 =?utf-8?B?Mm83NjgyQVdOVGRXdjZScUYzZVZiMnh2WlNySFhtK0J3WXA1bncyVUU1c2xW?=
 =?utf-8?B?K2JKTlM0VjVnVndqbCttTGxGa0FFVC83dnZMN3NvUGRWc1JhTUZEMXJsRWtJ?=
 =?utf-8?B?cnY1dFJ2RkU4V3dlTTBsL2ZkMzIxQWtsQXRlRmlqcVU1UzFHa1MxWHBpbnU2?=
 =?utf-8?B?U2tjeWZzbnF3RmhkL3IzcURFbWtlcWJuL0NFaTRjcW1BcVhWYy9RYXkzMHdI?=
 =?utf-8?B?bFhXdGtISi9jM2hDNnY5d1VmNnp1NWplKzVWVm9MZzBSaUlaWFhVV2lraXQ0?=
 =?utf-8?B?ZGpYb05OMElqUmE4U1BMcjNKbFRlYlhwMW1Hb0tHeUhKcTUwb29RZnZuRTZv?=
 =?utf-8?B?SGw3TnFkMk5YV2RTOXlaRXI5ak5EWWIxN0RuVzFoeExDd1llREhjK0FReVhW?=
 =?utf-8?B?UU1WSVFWd0tJZE13cVp0dUt0OEkzMEczWGpZdmRtUmhPaWZ6RVRmcEszajc5?=
 =?utf-8?B?dFVNdUZuUUVwMDF5R1VIOStoVnNjbk9BRE9QeDR4TkNncytVanlQMjZySHZP?=
 =?utf-8?B?VytraVN2M0djODZ5TmcvMUY2L1BUelZpZ3d1bncvd0tvU1U3bnp3YlB2UDhK?=
 =?utf-8?B?bjU1WHN2OEJFMFFJTlI5MW1EQ3E3R0UzMStwZHlROGNZN1RmQktISDFhYUxI?=
 =?utf-8?B?QjNSU1ZhQ05uREVtR2xVbmlvRjg4MTNQekgzc1RIc0s4ZWZJOXpDRWtaZHlj?=
 =?utf-8?B?NnpYN3QzQmdwRitPdHZONlBQc1MxTnVsU3lIbXFFUnlLTTNiVHYyeG90K0xN?=
 =?utf-8?B?THBXTXhoVUM1SlkyMHo1ZkJ3WVFCeEgvNGplaHN6amNFcis1UzI0K0hXbHpN?=
 =?utf-8?B?SmdvcVZHMHpWRHp4TngvQW5ueXFhUDBlT25LUFQrcHNFbUtkaUxlclpkTnQ1?=
 =?utf-8?B?ZkJ4bmpkaHQ1QnZjQytCSWxnV0I3VTNsdlR3a2UyUElaQ25rOElWUlJlWFlu?=
 =?utf-8?B?aTlZR3hkdDdZZ2pBREt6aUk2UU5OdllrK2dUbE0xWkZKeitkUEM3S202OXRw?=
 =?utf-8?B?L3pvRVB3S3V2UkV0VFpWQmpnaDFTVzJMV1lCMEpJYjg2c1NUSGZEd0tqTmhz?=
 =?utf-8?B?NFJhY2orRjVVVjlzQ1ZVVFdXSHhqY3NzT1hJeDlETkpQRWJLU3laY29iT3J3?=
 =?utf-8?B?R0FhR3BZb0xLa3dIdzYyZGFqYnJNck5SNk1TSUxMclhhNUJLaEJvbXNkeVVF?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbd1918-5f36-4f38-4ac5-08dde7400143
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2025 21:07:04.3052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lgD2U8B+chSkgKPHTteoE++JPXoWCNfyPfktu/zEExnXu7nZjnaYWAtxJlOcW7J6ybdhUFoC1TZDRNEWggKiO5pxTCrw713MpNzu7E7NeBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6903
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756501632; x=1788037632;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=FCd483xiYWl0GaXD8rMNw93+1RETYxqmN/0XY6MZQuo=;
 b=UNz4cVoikekEJxpygS5+7kWTJr71MYXklTtgz5XuH5kQ2s3e5Tbi1pcJ
 fxo5B6tvx7pLL1m5qP5mZP6U8Mdva0XUc/27Uu/bgIPfzS4EmcJOx10zc
 +J34ZXS8ld4ZI01cRbMoGmd7qDCuZjEAqtdKFJK/yRmCODRVrDEfkMPsI
 eXbcXjvPKBSx2ctJcIefA4kzTE/+PIiGer1nIV1livD7Jc581+nfkXuMq
 YDK29dFFQ+Am5I8gJcAbWyPsPCa9Vbur4XtFTMNCM3/AGLZCd6HknrbzB
 WWb7lkNNMUG3QKr4C82J5PW0uRGXS83i5uJckqW7y178Ghl7Qcg7pXoni
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UNz4cVoi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix UAF in RDMA core
 aux dev deinitialization
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

--------------6n0nOTSXsg3hxxXpyQGQ6dTM
Content-Type: multipart/mixed; boundary="------------QqK0OAu6lUBnbFN4FpiUcq3n";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Joshua Hay <joshua.a.hay@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, larysa.zaremba@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <b5afc53d-7ffc-494c-b38a-cf49a2c7f05a@intel.com>
Subject: Re: [Intel-wired-lan][PATCH iwl-net] idpf: fix UAF in RDMA core aux
 dev deinitialization
References: <20250812001921.4076454-1-joshua.a.hay@intel.com>
In-Reply-To: <20250812001921.4076454-1-joshua.a.hay@intel.com>

--------------QqK0OAu6lUBnbFN4FpiUcq3n
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/11/2025 5:19 PM, Joshua Hay wrote:
> Free the adev->id before auxiliary_device_uninit. The call to uninit
> triggers the release callback, which frees the iadev memory containing =
the
> adev. The previous flow results in a UAF during rmmod due to the adev->=
id
> access.
>=20
> [264939.604077] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [264939.604093] BUG: KASAN: slab-use-after-free in idpf_idc_deinit_core=
_aux_device+0xe4/0x100 [idpf]
> [264939.604134] Read of size 4 at addr ff1100109eb6eaf8 by task rmmod/1=
7842
>=20
> ...
>=20
> [264939.604635] Allocated by task 17597:
> [264939.604643]  kasan_save_stack+0x20/0x40
> [264939.604654]  kasan_save_track+0x14/0x30
> [264939.604663]  __kasan_kmalloc+0x8f/0xa0
> [264939.604672]  idpf_idc_init_aux_core_dev+0x4bd/0xb60 [idpf]
> [264939.604700]  idpf_idc_init+0x55/0xd0 [idpf]
> [264939.604726]  process_one_work+0x658/0xfe0
> [264939.604742]  worker_thread+0x6e1/0xf10
> [264939.604750]  kthread+0x382/0x740
> [264939.604762]  ret_from_fork+0x23a/0x310
> [264939.604772]  ret_from_fork_asm+0x1a/0x30
>=20
> [264939.604785] Freed by task 17842:
> [264939.604790]  kasan_save_stack+0x20/0x40
> [264939.604799]  kasan_save_track+0x14/0x30
> [264939.604808]  kasan_save_free_info+0x3b/0x60
> [264939.604820]  __kasan_slab_free+0x37/0x50
> [264939.604830]  kfree+0xf1/0x420
> [264939.604840]  device_release+0x9c/0x210
> [264939.604850]  kobject_put+0x17c/0x4b0
> [264939.604860]  idpf_idc_deinit_core_aux_device+0x4f/0x100 [idpf]
> [264939.604886]  idpf_vc_core_deinit+0xba/0x3a0 [idpf]
> [264939.604915]  idpf_remove+0xb0/0x7c0 [idpf]
> [264939.604944]  pci_device_remove+0xab/0x1e0
> [264939.604955]  device_release_driver_internal+0x371/0x530
> [264939.604969]  driver_detach+0xbf/0x180
> [264939.604981]  bus_remove_driver+0x11b/0x2a0
> [264939.604991]  pci_unregister_driver+0x2a/0x250
> [264939.605005]  __do_sys_delete_module.constprop.0+0x2eb/0x540
> [264939.605014]  do_syscall_64+0x64/0x2c0
> [264939.605024]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>=20
> Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, i=
nit, and destroy")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_idc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/e=
thernet/intel/idpf/idpf_idc.c
> index 4d2905103215..7e20a07e98e5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
> @@ -247,10 +247,10 @@ static void idpf_unplug_aux_dev(struct auxiliary_=
device *adev)
>  	if (!adev)
>  		return;
> =20
> +	ida_free(&idpf_idc_ida, adev->id);
> +
>  	auxiliary_device_delete(adev);
>  	auxiliary_device_uninit(adev);
> -
> -	ida_free(&idpf_idc_ida, adev->id);

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  }
> =20
>  /**


--------------QqK0OAu6lUBnbFN4FpiUcq3n--

--------------6n0nOTSXsg3hxxXpyQGQ6dTM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLIWdgUDAAAAAAAKCRBqll0+bw8o6E5v
AP92snmsbxGsVwY1SJWVeTmT9bNeQRj6TyC8gcKczEEg2QEAifJSb7zNWBMW200bNpgY+XNLzjU0
Yqj8acDI5LeXQwo=
=lNLT
-----END PGP SIGNATURE-----

--------------6n0nOTSXsg3hxxXpyQGQ6dTM--
