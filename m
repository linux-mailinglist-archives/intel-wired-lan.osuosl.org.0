Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13472941576
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 17:30:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8384E4058F;
	Tue, 30 Jul 2024 15:29:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjlF9NLy_7MW; Tue, 30 Jul 2024 15:29:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E125D405A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722353398;
	bh=kMKFWQSzFSicLuP3hXyOobXVe9DNSloBEYE4nJb/Et0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MMuy92WEUd/V9PTRy2+cMtzEDzUB8FzJ3+e5CvW6S15QnmG0Ozbm7SLRzBe7wq4GJ
	 zOymvm9jXGAvcxJXk2Q3QBjArITuCg+0/UsjF3LzUKaovfevS1sGYOmFdVAu9+NCCY
	 JLs3Pn83yT+C2XsZsefwUEvIdgHhuyqwDAF8Hc10AJ30woXHPtQ8V+G1N2aDYIiqqL
	 /EtusnPzPdyGISiY9Pj/t3jth6aQHFUZGYMBBoUy238+skCRijWQ5NlPnNMJrvoRhm
	 cLYncN8GZ+9Tl2+7E30yaBy/mfIViJlsR4CfCI06lMnYhsdzjuvdP/JuQ345YutoE4
	 fdOG2SYJw6n6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E125D405A2;
	Tue, 30 Jul 2024 15:29:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA4F11BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 15:29:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AFE5B404EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 15:29:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYdDP2A8u-tJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 15:29:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC780404C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC780404C0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC780404C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 15:29:53 +0000 (UTC)
X-CSE-ConnectionGUID: LPQMuAEdScytKIFX7LZ28g==
X-CSE-MsgGUID: JpHMt20ySvOOk7NK88uhFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30765718"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="30765718"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 08:29:52 -0700
X-CSE-ConnectionGUID: Jqdm/soTThmegpTntEJtIA==
X-CSE-MsgGUID: BmJogqzZQxGGItGfwP38MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="85300321"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 08:29:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 08:29:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 08:29:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 08:29:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bBKA3ya52ICGNJPYhrKpfNr9NEqsfiePN+WWtFE4a8dnejwh3QGxxBTnKzko1dBkCQFc2Ua1s+xQccPsEF6QLrGniOGiJMu/FaYDL0dnBvEsxWhbysW6BvPbFj9lUEHQ/WAS0vdGRktEMpHjYGphkIqnXjkFjwzEIDFgWEn/84hPNJFsMQJnSM2wLk6EwcfW2VfadmHybLvYYf+6psya5+HrJkiXGylrZxTLGWtAr2pxxJfYDmenL7vTMqDx6TE2YSoC11KhmuFzAwfEyN05DEAs56hDYt8lPl5Dlbfnhck+PxnuDaDB/EwRt6Fst3uyLEBu7n062IJdrtayJ+FnTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kMKFWQSzFSicLuP3hXyOobXVe9DNSloBEYE4nJb/Et0=;
 b=EQIBProxnoq699i+AN2iE+8V3VShKDJVxDuSOrxHYpwl9i/0g4Jk4LWF/rc/zvWlfkcNj+Bx/VmmexszTQDLt87T1l1poxlWPUwkzHKODuY+l5kAcgK48xMAPNPQfBeV6IKITPe/hKG7WQ61XrqDDQvTJpTWfKHlI9pHuZEUyZChgZ3+0MefnH4CVxAvEJO+5+NIoEKoWN9VMeTMOYsr5v5990McXLTPp1XUcmoMBdnZvwbvRgKpjO0xScD+pmuy8WMhamBy2nUJiSaNUgr4wjlGapbykZy3lYXvKIyAr8fq9u4ODUTuYvOdUag1sqbb06iEwlPgu2jNyylcMNLukA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV8PR11MB8511.namprd11.prod.outlook.com (2603:10b6:408:1ed::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 15:29:48 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 15:29:48 +0000
Message-ID: <6d7dd029-5e6e-4718-9d95-7008ab8f0131@intel.com>
Date: Tue, 30 Jul 2024 17:29:42 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-15-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-15-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0208.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:6a::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV8PR11MB8511:EE_
X-MS-Office365-Filtering-Correlation-Id: e57e2091-15b5-4f30-7b43-08dcb0ac7271
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGwyaGV4b3BvWlFpZEh5M0thbUtJRVcrVzNnYlhna0M2Tnk2ME1HTm1tdFBI?=
 =?utf-8?B?MWJ4bWhUVWhzcWthMDBBeWxDOTZNOUpNcFJnOCtEd1A1Z0xuNXROaWpyellM?=
 =?utf-8?B?ME1pODkvaUNVdk0vZmtZK3ZpdWJNRERNV1MxbXE5WDdUWlM0Um5pS2JseWJ4?=
 =?utf-8?B?UmdGQ204dDVFcmJwT0dnWnZjTGxlN0w1NlB4OEZNeWpoeFFMTWNhNkMwZHJF?=
 =?utf-8?B?ckVYMkl6cG0zVUpVbUt4YmVXNHJ1RVQvVWhWekpxbU4rMXdlaFAyVjF2WFNk?=
 =?utf-8?B?YUZEOFJYTUE5Ri9QM2w1eWZPN01adUNYbEV2a0I1Y0FsLzFCWk9wOGNTWldD?=
 =?utf-8?B?d0RpYkpTRWdLY3V3Vzd4ZFZUNG8vT3RIMzB5VjVTLzZ5RldVYVV3RXZWenQ0?=
 =?utf-8?B?RU9MSmJMb1Jha0xUM3JpSlVHdEhuR00vUVRPVnBsa1o2UHI0YUlDYWdLZmNw?=
 =?utf-8?B?dmUxNVUvaXVSRkFLT293SnRZQ0xEWnJTY0hxMUIzTFpzRzZ2NkFFK3I0QkV5?=
 =?utf-8?B?VmpPL1poS21CT3dYSk9jclpjRFFxN21FTGNIbEh1Z3hlZFg3OERYbTZTdUhF?=
 =?utf-8?B?VEZMS2RkeXR4UVZEeTczb0FIYUgzZm9sUFdDSlVNUC91T1M3K0kydFFjc2JQ?=
 =?utf-8?B?ckY2VVE4U2hzVmxLUUZhdDEyemJkVmtWRzNvdWVXY0dQdG1lVEtkYlhFL0Ro?=
 =?utf-8?B?NzhrRVduZTZRb3VDaE13ZXFxREZYblhQYWxDd3RZdVExbGtZWFNtSFRKRXFa?=
 =?utf-8?B?T2pYc0E5c1JkaUozejhuZElyRkVLWGRxTU9kSGVZWUdUSmVCYm1DdktaYWVa?=
 =?utf-8?B?bG55OFBPV1Z6c3lvcFU4S3NiWSszRzBmK3pkaU1JdlJ2NjdEZVBBencxNTN0?=
 =?utf-8?B?MmlqRWpzYWpGRlpmdmxILzNYdGQrQXdUU0phZ2Y4RmhYZHRROWVmRDB3T3hG?=
 =?utf-8?B?K3BKUEw2dWlhelpka2ErMENIUW1Demo1T3VjVUxTQm1wSkJodWR3cFpnNUVC?=
 =?utf-8?B?TklOR3RnL3EwSlM1dXY4ajB1RFVvWXMzS2ZvQ3BBcXNnNlVvTVJmVnVuVzNk?=
 =?utf-8?B?UEZ2N0hyd1JlVlNQa2JMeXVFSi9FNk1oNFY4T2xabzI5M3lwM1R3ZGQwOVBU?=
 =?utf-8?B?NzFuMnFjTDBrMXdiQzZTZkIzL1NUVUVFSFVUWFd2VzYxTHdLMjR3RXZRcDB5?=
 =?utf-8?B?R2ZlZWJhRVN1MkhUeDhKU2Mza2JLR0pxRWVUVEt2SGVKREhuV2VXQUtZMFBp?=
 =?utf-8?B?UXU1ZFVoR3prWjllOVhIQTVnbGNsS3R6eVdKWHhlYTU4TDZzY2cvOUdEeDBa?=
 =?utf-8?B?Tm43dzliT25PZWF2STJ1TzlxRWVobjZHb0tvUFVQSmtxeXIrUlpIaXhmTXBo?=
 =?utf-8?B?dCtHY1RDeVVheGtTQStMQ1lDNWJ4S2tubG5zNFA1K3BuTmQvWDl1VDYwVDFX?=
 =?utf-8?B?ZHRlT3kyV0RhTXgwbzAzZ0JTSEY5cjB6SFh5akh0NG9mZzA3TE9GRjlqTTlP?=
 =?utf-8?B?LzhEMERCUWNoS2x5TXBJVHVsRGFxZGNJay8yc3VobEhRT0xCNklUdk5wV2Rm?=
 =?utf-8?B?TXVRVzdhN1Q4RXQ4dkcrM0crakQwbTEyVUFBRngzYkhldmRUVlNGUmdMQmV1?=
 =?utf-8?B?Ymhxa216dnE1SEhyeWthQ2RjTTZVaUFEaDB5REVJdDBXMVRUa2svejZqVjVF?=
 =?utf-8?B?RExmM25qdEF5d2NzL1g5OHpwNUpVVFRpaUtzL2ttUDBIUTh5dUFqK0h3a0J0?=
 =?utf-8?B?VC9Qb0JUSzdjODllU2tXRlkzbFVnSmIzbm9DNFFDTDJMV2VjWFI5SHVpVkY2?=
 =?utf-8?B?UVNCWE1pMHJYZlFObFpqQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXNTa0FSL1NpNUV2MkQvVEpYamlLYWpJdm5oZEoxUGpDSVFLdU90YTEySlZ6?=
 =?utf-8?B?WXZ6VllhbHZQRWEzU1FoQ3dGeVNnVXdET09PMGZ5SzkzWGF5dUUvYk5sYUhH?=
 =?utf-8?B?V1Z0cG8xTGNUdWdCWThzOXFyV0NqOUFoaUg5NlQvaXVFVVVjb0w3aXB5TExx?=
 =?utf-8?B?MzJoR0dKNFhoK0tEK3lHdGNsYnIrMWVjZXcxWEZ0OWtUVmNUTmEyc3hNdTkr?=
 =?utf-8?B?L2hEVk9mdk1TWWpTOStvWW1XbU1BaERNK3BFb1E3b29tbVIwWjNGL0Q2czZq?=
 =?utf-8?B?VThXWC9VaTJEQU5GVktjaFZqS091K0NqUGpKZTZsZU81c09wV3Q1NnJja1Yy?=
 =?utf-8?B?N25MRHdmWDZHQnpYL2xiNTRxV3FQbGhXVS9GbCs2anFhMzhNOXgwSjhYNWRJ?=
 =?utf-8?B?UjZmYk1RdGdZRlg3a0VtY2JBU0laTmRvTUFVVllXODRJQU9PNG15M3MydG1r?=
 =?utf-8?B?S3hHZmQzMEV6SVJzci9ZRFFYdVllSzZMbHpEM2RVajJiakNDanRUbCtpa2Fq?=
 =?utf-8?B?MXh4WE1DV1d1K1RiZDNrQms1NGk2VEpPcDVtNXFjT1NKeUVSZEJxbkI2d0Zw?=
 =?utf-8?B?b0xueXVka1l2Z1NCZElYNXZmTnhieFVoQ0tXMzNZL0FGeC9FNXFtaDJJZmI1?=
 =?utf-8?B?OGd3WVA4bmJFN1lKWE15aDhvK1pYdEpieEZ0QVo1VHJmdGpiYVNlU1RGU0lB?=
 =?utf-8?B?dzU2TUpKN0xwdmJOM0MrVkRoMjFmQmx2cXYyOFNDdVhCdjl6SXM4ZW5tS1h1?=
 =?utf-8?B?MXNRYXppNHpoYWllRUFMNlFMaFJNYzU2cW1mVitReHpBTm9YeEg2NFlNZ2xN?=
 =?utf-8?B?bVRnK0V5T3hzMlF0bm51Zm5LK2lUTEN6NjU4ckVvVGl5Q3NocTJVOFpqbXhm?=
 =?utf-8?B?Z3ZDMDF2OCtWbDNPajh0MDdKbTRtOFVjWmV0QnVvN2pRb2daNkZnVGV0Z0Fh?=
 =?utf-8?B?SUVYbDcxdUtaWlJ4amNxbkJDckVBMEsrbSsvSWhaT1dwbGxySjBtTE1kUFZv?=
 =?utf-8?B?Uk9Zc045clQ2cjNLRDZXRlBpdjVTMzlzTGRJaHM5V2hMWVBBMlEyZE9BVWpW?=
 =?utf-8?B?TGYwNWVBK3RmZEgzZVA0SFVXWXJQZThhSktpN0ZZVWhId2JhTFAreTJHK1JC?=
 =?utf-8?B?angyL1Bzb2JmanBLVldLaVo1eW5OdnE2Sk1pbzRGMUVYMTlmYktrazROMEZk?=
 =?utf-8?B?T1pOTXNwa05Lb1pBRFNEZzA0UW9Jd2VjaXlzN1RmcEthMkxKN0RMUDlzTzRq?=
 =?utf-8?B?NnpQUGlHL2dqaU1jaVVLQUFnNUpkdlFWdTU3T2lQZDQyYWRmbEJrbjkrYm1j?=
 =?utf-8?B?dVE0RldKVGd5OGJmeERYTnIzN1FqYmdNSjloY1I0UkpxcmFzSUo4ZXJ1MHRT?=
 =?utf-8?B?OS9sN2UyZ0JyL0pEc2FnZUhLTjIvamQ2YWlhaFpsYkl6QzhoUG5mN0FUNUdG?=
 =?utf-8?B?M00vd3ZxVE4zNVVBWk5pUlB5ekc0eHQzS1pvWG1rMGtJSnplaXpKa01pNm0r?=
 =?utf-8?B?MnVRVjRsQUhPMGRlOVNmNTIyVDdTa1FRV1VxVG8zbnkrVFRPdytXS3g3bzd4?=
 =?utf-8?B?bm1LVFlyelIzTVY3R1BpYVEwWFJHQkFUczhFSHlBNmJ1T21yajhGeGNtNVpk?=
 =?utf-8?B?SDJvWlhjVUlmVHpiMlV4NzNYcUtKYnBpNnk5UVJHeEpNV1BqZXNReEh6Z1Rh?=
 =?utf-8?B?eUNxaUFpbEkrakZWYnJ5WDBCbG9DYUVXY3ZIa2p6SkFKajF5Z2RPN3ZIUkJ2?=
 =?utf-8?B?eXhIeDUwZ3RIcXF3eXltMmV0bkc3UGJSWjZBUUFZdFJxcVdRcUUvRS9RVXRi?=
 =?utf-8?B?UUhlSXQrdlhPMWpqQmN1bTdoeFJYT1pHZkJaY2FJUnVmOGdCeHBxRUJBNnBO?=
 =?utf-8?B?SHNqUjNIbnZPV2tobVVQWldtSTNraHp1RTFNeWpjRFlUbkdic2ZhcmFaQkFK?=
 =?utf-8?B?R0xnM2toYWNIOHFLWDU0QUF6ZzhoSXZ6d0trN0FuemFZUEgwZFpPbW1oaHMr?=
 =?utf-8?B?UGFnUysrY3lVNjZVcmUrRUw1Qk9lMXdBTmtmdExodGF2bnhiYXFHcGNKb2V2?=
 =?utf-8?B?OUJtSU1vY2RFY2lwaVRwWGlEVDVKOE9vek9VUGFDWG1tM1N1ZWYyQ1BKQjQr?=
 =?utf-8?B?SUpmOXRhN2Z5elNHbVpBWXhWODNFdERjT1pYdXYyOThUS010TVdhcEtxU1FE?=
 =?utf-8?Q?PuEDJF1f2MDu92xkqqWejBk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e57e2091-15b5-4f30-7b43-08dcb0ac7271
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 15:29:48.1601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LhqKsrw7WfVtwqbn2NbNY9XTcAzXrMctGuw86dFEMKiQE5RO05y8HbFMYZU6QUu0+sJwqGOyqMBuiIxwZ0R3lIVywa8OFSB4MsGNdVDFjIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8511
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722353394; x=1753889394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mOOxueeHGMbFoqpBcfiaKpMCF9SLXQVf7U722CvZD+k=;
 b=GvrcEV5QTVQaPgDrUGYOoXhitOzGTKLYCzBZrxFPOhEr+MtX5AwK0pAp
 jqYA1wQ85TtYttsW0AScdt8FsU9Z2xowRtAKAD+BC4NFiQrXsy8Z7JOuQ
 OvCQ7UPHMJNQGv57ndhMUMy5ZO0NvXXSk8UPXRg+TlfYn72KRTbu/cfsd
 jLmAPrjTsgqgAuvq6zNl6zv94I/DC1/IZFs3eKsBllVO7E8OW2y8wzATq
 8PN+/pzrcfbrYW2fiyrNURfAPfEfwfk0lfw6Jxwmc86/iCEzSN8/4ag4X
 hipn1RhVvrPD6sRKGAU33/nO4pUVMimB6gZf4+reUkhrLRM0a54NBof80
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GvrcEV5Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 14/14] iavf: add support
 for Rx timestamps to hotpath
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Sunil Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:15:09 -0400

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add support for receive timestamps to the Rx hotpath. This support only
> works when using the flexible descriptor format, so make sure that we
> request this format by default if we have receive timestamp support
> available in the PTP capabilities.
> 
> In order to report the timestamps to userspace, we need to perform
> timestamp extension. The Rx descriptor does actually contain the "40
> bit" timestamp. However, upper 32 bits which contain nanoseconds are
> conveniently stored separately in the descriptor. We could extract the
> 32bits and lower 8 bits, then perform a bitwise OR to calculate the
> 40bit value. This makes no sense, because the timestamp extension
> algorithm would simply discard the lower 8 bits anyways.
> 
> Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(),
> and extract and forward only the 32bits of nominal nanoseconds.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Sunil Goutham <sgoutham@marvell.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c |  9 +++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 69 +++++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h  |  4 ++
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c | 47 ++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_type.h |  3 +
>  5 files changed, 132 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 61720b27c8f1..03deb3e02279 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -729,6 +729,15 @@ static u8 iavf_select_rx_desc_format(struct iavf_adapter *adapter)
>  	if (!RXDID_ALLOWED(adapter))
>  		return VIRTCHNL_RXDID_1_32B_BASE;
>  
> +	/* Rx timestamping requires the use of flexible NIC descriptors */
> +	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
> +		if (supported_rxdids & BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC))
> +			return VIRTCHNL_RXDID_2_FLEX_SQ_NIC;
> +
> +		dev_dbg(&adapter->pdev->dev,
> +			"Unable to negotiate flexible descriptor format.\n");

1. Remember about pci_*().
2. We usually don't put '.' to the end of kernel messages.

> +	}
> +
>  	/* Warn if the PF does not list support for the default legacy
>  	 * descriptor format. This shouldn't happen, as this is the format
>  	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> index 7754f4f24052..5fd17f8d1f36 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -440,6 +440,9 @@ void iavf_ptp_release(struct iavf_adapter *adapter)
>  	}
>  	adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
>  	mutex_unlock(&adapter->ptp.aq_cmd_lock);
> +
> +	adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
> +	iavf_ptp_disable_rx_tstamp(adapter);
>  }
>  
>  /**
> @@ -473,3 +476,69 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
>  		iavf_ptp_disable_rx_tstamp(adapter);
>  	}
>  }
> +
> +/**
> + * iavf_ptp_extend_32b_timestamp - Convert a 32b nanoseconds timestamp to 64b
> + * nanoseconds
> + * @cached_phc_time: recently cached copy of PHC time
> + * @in_tstamp: Ingress/egress 32b nanoseconds timestamp value
> + *
> + * Hardware captures timestamps which contain only 32 bits of nominal
> + * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
> + *
> + * Extend the 32bit nanosecond timestamp using the following algorithm and
> + * assumptions:
> + *
> + * 1) have a recently cached copy of the PHC time
> + * 2) assume that the in_tstamp was captured 2^31 nanoseconds (~2.1
> + *    seconds) before or after the PHC time was captured.
> + * 3) calculate the delta between the cached time and the timestamp
> + * 4) if the delta is smaller than 2^31 nanoseconds, then the timestamp was
> + *    captured after the PHC time. In this case, the full timestamp is just
> + *    the cached PHC time plus the delta.
> + * 5) otherwise, if the delta is larger than 2^31 nanoseconds, then the
> + *    timestamp was captured *before* the PHC time, i.e. because the PHC
> + *    cache was updated after the timestamp was captured by hardware. In this
> + *    case, the full timestamp is the cached time minus the inverse delta.
> + *
> + * This algorithm works even if the PHC time was updated after a Tx timestamp
> + * was requested, but before the Tx timestamp event was reported from
> + * hardware.
> + *
> + * This calculation primarily relies on keeping the cached PHC time up to
> + * date. If the timestamp was captured more than 2^31 nanoseconds after the
> + * PHC time, it is possible that the lower 32bits of PHC time have
> + * overflowed more than once, and we might generate an incorrect timestamp.
> + *
> + * This is prevented by (a) periodically updating the cached PHC time once
> + * a second, and (b) discarding any Tx timestamp packet if it has waited for
> + * a timestamp for more than one second.
> + *
> + * Return: extended timestamp (to 64b)

...but here you actually need a period :D

> + */
> +u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32 in_tstamp)
> +{
> +	const u64 mask = GENMASK_ULL(31, 0);
> +	u32 delta;
> +	u64 ns;
> +
> +	/* Calculate the delta between the lower 32bits of the cached PHC
> +	 * time and the in_tstamp value
> +	 */
> +	delta = (in_tstamp - (u32)(cached_phc_time & mask));

`cached_phc_time & GENMASK_ULL(31, 0)` == lower_32_bits(cached_phc_time)

> +
> +	/* Do not assume that the in_tstamp is always more recent than the
> +	 * cached PHC time. If the delta is large, it indicates that the
> +	 * in_tstamp was taken in the past, and should be converted
> +	 * forward.
> +	 */
> +	if (delta > (mask / 2)) {

1. `mask / 2` == S32_MAX.
2. Parenthesis are redundant here.

> +		/* reverse the delta calculation here */
> +		delta = ((u32)(cached_phc_time & mask) - in_tstamp);

Here as well.

> +		ns = cached_phc_time - delta;
> +	} else {
> +		ns = cached_phc_time + delta;
> +	}

1. (u32) casts are not needed since your mask ends with bit 31.
2. (cached_phc_time & mask) is used two times. Perhaps you needed

	u32 low = lower_32_bits(cached_phc_time);

	delta = in_tstamp - low;
	if (delta > S32_MAX)
		ns = cached_phc_time - (low - in_tstamp);
	else
		ns = cached_phc_time + delta;


> +
> +	return ns;
> +}

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 997fd0d520a9..8d74549c3535 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -1085,6 +1085,52 @@ static void iavf_flex_rx_hash(const struct iavf_ring *ring,
>  	}
>  }
>  
> +/**
> + * iavf_flex_rx_tstamp - Capture Rx timestamp from the descriptor
> + * @rx_ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received
> + *
> + * Read the Rx timestamp value from the descriptor and pass it to the stack.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + */
> +static void iavf_flex_rx_tstamp(const struct iavf_ring *rx_ring,
> +				const struct iavf_rx_desc *rx_desc,
> +				struct sk_buff *skb)
> +{
> +	struct skb_shared_hwtstamps *skb_tstamps;
> +	struct iavf_adapter *adapter;
> +	__le64 qw2 = rx_desc->qw2;
> +	__le64 qw3 = rx_desc->qw3;
> +	bool tstamp_valid;
> +	u32 tstamp;
> +	u64 ns;
> +
> +	/* Skip processing if timestamps aren't enabled */
> +	if (!(rx_ring->flags & IAVF_TXRX_FLAGS_HW_TSTAMP))
> +		return;
> +
> +	/* Check if this Rx descriptor has a valid timestamp */
> +	tstamp_valid = le64_get_bits(qw2, IAVF_PTP_40B_TSTAMP_VALID);
> +	if (!tstamp_valid)
> +		return;

Read/convert descriptor qwords when you actually need them.

	if (!(rx_ring->flags & HW_TSTAMP))
		return;

	if (!le64_get_bits(rx_desc->qw2, TSTAMP_VALID))
		return;

	tstamp = le64_get_bits(rx_desc->qw3, ...

> +
> +	adapter = netdev_priv(rx_ring->netdev);
> +
> +	/* the ts_low field only contains the valid bit and sub-nanosecond
> +	 * precision, so we don't need to extract it.
> +	 */
> +	tstamp = le64_get_bits(qw3, IAVF_RXD_FLEX_QW3_TSTAMP_HIGH_M);
> +	ns = iavf_ptp_extend_32b_timestamp(adapter->ptp.cached_phc_time,
> +					   tstamp);
> +
> +	skb_tstamps = skb_hwtstamps(skb);
> +	memset(skb_tstamps, 0, sizeof(*skb_tstamps));
> +	skb_tstamps->hwtstamp = ns_to_ktime(ns);

Ah, so many times I've seen this pattern :D

&skb_shared_hwtstamps is 2 fields. One field you always initialize
above, the other one needs to be cleared. IOW, just do

	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps){
		.hwtstamp	= ns_to_ktime(ns),
	};

That's it!

Thanks,
Olek

