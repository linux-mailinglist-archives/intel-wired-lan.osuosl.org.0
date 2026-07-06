Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rQZlCRk8TGo9iAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 01:36:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F59671653C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 01:36:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=oE7frhDK;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5694440748;
	Mon,  6 Jul 2026 23:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R13HBLIYbpXv; Mon,  6 Jul 2026 23:36:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6E184066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783381013;
	bh=I54sQbGtBJD5CxLTO/UwlLJ+F/XAWCGRw1xxAYyzeGI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oE7frhDK3ymSaIsIZQE4UIz2T6IjQgbGlKZvUbC1oWvE8zj9NaJbn8aQE7UrvOx9Q
	 Op9TB7CJIh4QDp9ZGaNWX60lUEzEHzh5WAdlNc1qPd80a/gBgzBisP4U3w8npbize6
	 iwYoiMLfE2ro2o80dKPXXiM9tSI6NBwjKog0MbXBcIzkgVVVB7FPF0lmuL5ll1Va8r
	 vhdg0GaNIaANGOfURxX8/rAwWd/znYapoGHJ6O+GNpZEht44SuJodry1BmoZb4jQIA
	 naTbn2niH1CuMob/8pj6sQWRd7FyKcvFB9fbWtrsUcqrBUkGokXEegpEAtZO3DwhE4
	 66+zllfbCAGQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6E184066D;
	Mon,  6 Jul 2026 23:36:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F3B9033A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 23:36:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E549A400B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 23:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cPkg21kohHnx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 23:36:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 749BC40096
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 749BC40096
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 749BC40096
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 23:36:47 +0000 (UTC)
X-CSE-ConnectionGUID: Re4uvUfyQFO3MyIuGuoj4Q==
X-CSE-MsgGUID: S2mnvFLnShmPelURA2Y1fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83131736"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="83131736"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 16:36:46 -0700
X-CSE-ConnectionGUID: 2mTbWlkoSK2WGz2/McVp9g==
X-CSE-MsgGUID: sFPIDaXXRP6eD6bleazfAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="283942882"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 16:36:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 16:36:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 16:36:29 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 16:36:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S8NmAYb3iGynYfNQOJfk1abGmkak5KWIJcOFKFMqAD7ivC8L0A2uWrRIVJ2L1ehEcwkCi6AJviQqQFZuQQ1YuzrrejsKtlxFRUdDbimdlBzo2eTZ6oLHRfCsz7m98B/jRkq/XB0y0K0nY4Ic+PryVmR18wxlJLTxo1kTCAQSY/LFPzbZsXxqz2Zn2sflP4rmpdGDyqtAJhX86KttOOrxOkW7q0rGhB1++lXmZnDSYW2zyhBbsO1nwbJ8YSR9x2F0M0I0USudrXsgsP4xLi7gSLTtkVGylbRY5JvZz6qxJ1IvYmea9ZaG1qFCVWs/l4bqYbSwSWFuZLySF4KT7a8W+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I54sQbGtBJD5CxLTO/UwlLJ+F/XAWCGRw1xxAYyzeGI=;
 b=xrCDUcSHyQiQ4emIbrOiflr8ma4LkPVQ/UXDhvDiAFOvj7GJXS54cdSmlt2lsaZPLv98kbPdY/L7amQ56B7E2Q4r5Pb+v8sr0sYPfKS1xiyzNQJzESRZi1m4q7iZKMMFT0uhddllTRAg7rEGu+yq8PUgoQsLQnediI0/8ZLBSWXrYByr8ZAVDtojOcD9XASNpQVuJSWC0dlmBWPa89vlTpGyzpOgSk1L6VrhHAIWDIh+ZXKrN6F96N6fwNIfcLkjszzwa6aILHQbapejWXxjDnLc9suQ6bmzZKHXsS0SisdQpMDOUfUeUqtuSJvH4jJMnfBzCSrGGcKjFYzGgrmKXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by SJ0PR11MB5149.namprd11.prod.outlook.com (2603:10b6:a03:2d1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Mon, 6 Jul
 2026 23:36:13 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%6]) with mapi id 15.21.0181.010; Mon, 6 Jul 2026
 23:36:13 +0000
Message-ID: <0a255d23-ad6d-4231-8628-f84d73d96d0e@intel.com>
Date: Mon, 6 Jul 2026 16:36:12 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Michal Wilczynski
 <michal.wilczynski@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <20260514-jk-fix-missing-xa-destroy-v1-1-de437bf52347@intel.com>
 <20260519194602.GK98116@horms.kernel.org>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260519194602.GK98116@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0032.namprd04.prod.outlook.com
 (2603:10b6:303:6a::7) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|SJ0PR11MB5149:EE_
X-MS-Office365-Filtering-Correlation-Id: 3267f8ad-2158-45b3-ea7a-08dedbb75e08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|3023799007|6133799003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: z4A2x8jTnWgL7wxMm6CfJ6eKu0DjAfHCYus1QG7ebyJDeUkiKcWz71hlhVafAWt3QCWGGmr8e0pmGgcbawtmTrk8+Ly8iJURQefnAENCuX1/qJOANxk8K1n/sa+9kWA22ElymL5u7dDPIsEvyObb6cM1vmWO1VNR68Uict3folK3DD6cb3sDEEFik2QVAYTpLBCn7oRJQASGrap4Ffzkh4BzblEpSupgJm5X6Vex9oE9KaIwCketxWRu+yTGBtXs6wDTKoTjHga2mQYNJVktgYtZsqwOkOU1BY5Z+6cFQCNjNpvLPf4239h1ler5eT4B2InMrkWeQ8sNn5B8WyV7fvhFDMlo/9AXltDptbsxhcFtDdQvzYFHl7+KdQJdnC9sSPcHV/TW6oe5Sm4AybcLE6UuapHvBbxseB4uU/RX4lHl4wiudMUaQOnsoXrTYlJhlDblknlBBZUcXjxKq5iUnaYL31Sw44GyEOl1bV+Ay12031O/yCrSiTIGCyh86gjrCkywy9vl0mJZnPM9Jj+uh1vMfdzmVw1EyoJVZTNNXCv+1yVDjk6gtDMbJCpHjUk1AC6vrGlbIfiFa06RXwkW4aOWHsQnH7W/Qc9j4D1kr98Yu35zTwjRx9aHQxhbXFVWkp/qiwdRSFwx43iwySjrkNN/VhTuBaxV7r4C3Hrd4wE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(3023799007)(6133799003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXU1UnVLYm9iODNTZWJIaHlmdlAyN0hqVzBEU282OXFQR3BGK04rSGpCMy9M?=
 =?utf-8?B?ZEdTWk42T00yOWQwN2JCVU5DZVkrOWpRNWE1YWxtSkpWMkZMODRjUmtld2pn?=
 =?utf-8?B?ZEw0Nk96ZXBBZUJKT3R1bWQzOTBJcGZOUTFwdUVtaG1sQ01ISGFSbE1RbG9y?=
 =?utf-8?B?dFArY0phMEdUODM2UnBVNzZDNEx0YldDRm51dXZ4UGVWYlRCcUNpOGZyS0U3?=
 =?utf-8?B?blRiK2VydFZYcFY0bEgyUVNoSi9DalNJMnUyWVJJNjdoZWtaVUpUOTFUNmFy?=
 =?utf-8?B?MjZMdTgrckNBMkxCWTRsR2l0cjFRZmFUWFpHMUMyZFhDZXJrL0xucHdpZERP?=
 =?utf-8?B?cmtzYUFqMjJjdE8raWdDU0tFNkdDMytCKzVZY055WUpyV3lESXVJMnJRWDNx?=
 =?utf-8?B?V2JMREZHbWlRbi9ZSzRqQVBwdk9yNmFkV3N3NlBMV0w4dFdEQkNURWhXeWZR?=
 =?utf-8?B?ZUxBbEs2V2NwNEYrTU5Ib1lNeXhMWmZUQTdNVkdLTGtINEp6K1BQeTBKdmw1?=
 =?utf-8?B?YlMxSFV0NFZtWnRDRi9oSFpsU21DZ2IyL0htdi9Gb0RYUGtTbC8xVEd0NmNz?=
 =?utf-8?B?eUQ0eUlNZ3p3aGMyMDVROTNodnFUSmdHY3J0RVVsdEk5U2ZjUU9YdDNRNTdZ?=
 =?utf-8?B?OUdpSEQrdVIvRnBycHF0NEdRMHFFc2kxUGRhUHoraVFORGU0SnlyWTJEckJS?=
 =?utf-8?B?YVFtRUhvQm11aDFQVmZKa3FoQm5SRzQycHUxUXhPU0FhWjFWMytWRURySnhP?=
 =?utf-8?B?NER3bjV2Y2pyQTl5OEREUmVmVlZ4YnVPdHFsZ3Y1SXJYZHczRHVISHowM1Jp?=
 =?utf-8?B?Z1luM25sRGFJSkttZ0Z4Ly82Y0pqT25YejdYTUhtbW9LREVDdkJjYlZKMVNW?=
 =?utf-8?B?R25vTW0xYXRPUkY5RUp4cDZiT0hiNmpaR0VaTmNEcUFES0hDZmw2QXdPb2s2?=
 =?utf-8?B?VnpMWnBraGtIV2Zzb0p6SGdzTWNGTUE0eWpWV1ZmUTlBRHVMcnJGUWdVM0Qr?=
 =?utf-8?B?NVV2TS9SYnFJSjZNZHVmNTVQbGxqRkpwNUFWYzJvZ1llR0M5OVVsUnVXa0VJ?=
 =?utf-8?B?c3BUbkN5SU5YOUxuMVdqemMwSDAvWnFFRlBhbk9KM012UHczWXJIWmF2M1Vi?=
 =?utf-8?B?bGlmeXdyRkVKNGIwOTVaUVdvVXNubHFLUDBrdUgzdUhpSEtTM1hzY3BzRGRw?=
 =?utf-8?B?Umh0dWhTQU1iZEYzZnlLQ2s1SkUwWjJLcUtlUzFRS0ZVeE1EczNWKzVNaEhN?=
 =?utf-8?B?TTVLVTVvQzFtSGhpK0cxbmY3R0hVLzJlN0lENmVHK1FJZDdORDNNU0tGN24v?=
 =?utf-8?B?akJJTDQyOTRlTUNNREdVV0F1cWt2RDNtTmNaMXRVR3ZxZjdIOEo1Z1pUTnds?=
 =?utf-8?B?UGtiQlVoL2NUaVczZm1iem9adThHck1lSjRITFJvMkJacEhnZEc1NjJEVXhB?=
 =?utf-8?B?bVZzQ0xSOEU4M0V3UHBSY0FVNzZKeGhzajBGY29kQVl4QS9xTE1DZXowQzBn?=
 =?utf-8?B?VUV0K0Noa0pIZHdGT2VZb0RkVDJnam1Kbm1GazI2YklNeEtseTRMZ1FzQVhy?=
 =?utf-8?B?aHIrRjlaclE3N2VMWDZWYjZaSWJNcEE0eXFGTXBwRjR0bGVObmFaZXJWV2xz?=
 =?utf-8?B?MlF0QzI4Z0w0cnp6ZnEvZUM2SzFNZWNDYXJYMEIvRVJYUGp4MVpKZnpaTE9a?=
 =?utf-8?B?UGU2L0dzYndpbHh3UjlpVFNiTGFZam1SV0xlVXhUbnlxTjJ0L0tKaTJiWFBl?=
 =?utf-8?B?LzFzbzc1eGJHa3JuUWd1WndpUTFlNFArZlBDbHI4aG9ISkhmV3dQbVlERHpv?=
 =?utf-8?B?SEJmNllrSEMzZHVmQnRCR0k0Z0RINUt1OEtpd2N1SlhHVlNDVEFHSlpCZ255?=
 =?utf-8?B?SWRJUVNhSlpRUWJ1b1dOa092dWRKU0RKUDlPZURzOXZNOG1QZHovckFpSEwr?=
 =?utf-8?B?bHUyQmVlZDdKdFQ1bk9SL2NtLzR5NlN5ZEZhVEhXbzN3ZGRFM0dqT2lNYUF5?=
 =?utf-8?B?U3FlZFNaaDFISUhTd3VhbDRPaXNXSkRhRUdNcXpFcE81YW1STUhhUnRlUzVC?=
 =?utf-8?B?eTVTR0xMc250ak54NFhLS0NYNmZZTHVqYXhNMzE2SHh2ME9KdVE4NDJzS0cw?=
 =?utf-8?B?MmFaNmE1SnFwQ1dndDUxYzk1UUtMSmNIT0hjak1odG9oR1pnL0Uway9Zby9p?=
 =?utf-8?B?aWlOaEFvQjViS1ZtYXBUNW5PM3ZrbnBEbHlYYmQ2QVQwdWYzemtOL3RYcXl6?=
 =?utf-8?B?b3RaTFE1WG9KZWVIREZjdm5JZHV1TkZFZFRFa3lhU2lUMUtOUytpdW4xWXQ0?=
 =?utf-8?B?OVRYZVRnRi9zQ0pNbGpPSWErZnJKL1ZOVDZyUlFMUVp5cUNKNFNhQT09?=
X-Exchange-RoutingPolicyChecked: ZnoXTh3EZfz6RDu+VDvTFcKIkK1NlPcDZntfAvxFAbRZ6h7RCer2gQkr1soJI9XJiQPagoBuEOve/vkX3qhVm36u96izM1IDSLfoTt8pibPxCqEygq/ia+3iQtrVParQ1vVHL46NWwqODyQAcQvh7TJKznU3tj2yTWf4ULq8UA1TbA5gQzWeIbVue6rfbQfTbkUR5JU1ATz51eg2BibWgLdTDyvyFpQLPnVWv8dXfr6Ptwo0afh7pT/BQnHrAglEPRuJmiqocC6zogV3GAvmAHf/y7U7jLQnie3ZT12qptsnjs+y0J+wqTWfIVaugVPTmnfeUtTklgiDrXkYFID52w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3267f8ad-2158-45b3-ea7a-08dedbb75e08
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 23:36:13.8124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L52SaESBWZ4cqttAehzzesC/ITBjRnRI5MsvwfRInnS8iOhUqpAenZ/dY8g3tp0vwX8TJLUW5pUfU49U3VvbQxtcIx+yCfMhUd9RkRnUMWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5149
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783381010; x=1814917010;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZIoUMZslMAMHRTYXEfiO16qz/eabq08eSPRjA9QXXxc=;
 b=AoNbZwc3K0Ilr2A7X7HM61c5wjcf1eIst31KX2vi0Rj9U8nVHWXCYrEI
 xyRYCpBOipb/85/dZmd2sDqMdog3afspzc2gNbD1rl8SN+o29/DZhYsnb
 ZiGAVsyQmiA7MX6AfFzcu5YQuJZaPtc8t0+RvZhc2G+LKaCVgnagNhhkF
 AoPQn7a+670bbF0TWVilCRQ1EVbE+bfDp9+6H9tLp8lgEt09ZoQhwP93H
 CNIRCakuMdR8HcnxxO1zgxv8eMMgvZUAPqZW4fFhFjR6pbwVoAaMTYOLF
 HlFKugAiEGqzi+dvY11fnABjQEw7jq9f5n1yFsTcCCnjD5FTL2cLWVfSZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AoNbZwc3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing xa_destroy
 for sched_node_ids
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:michal.wilczynski@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F59671653C

On 5/19/2026 12:46 PM, Simon Horman wrote:
> On Thu, May 14, 2026 at 09:55:21AM -0700, Jacob Keller wrote:
>> Commit 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
>> added a sched_node_ids xarray to the port info structure, but never called
>> xa_destroy on it.
>>
>> Since xarrays can allocate internal memory, this can result in a memory
>> leak even if every element in the xarray has been removed.
>>
>> Add a call to xa_destroy the structure during ice_deinit_hw(), and one to
>> the unrolling cleanup path during errors in ice_init_hw(). While here,
>> remove the overly verbose comment explaining the nature of the
>> sched_node_ids xarray.
>>
>> This was caught by Sashiko during development of unrelated code.
>>
>> Fixes: 16dfa49406bc ("ice: Introduce new parameters in ice_sched_node")
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

Sashiko pointed out the following concerns:

> Is it possible for hw->port_info to be freed but not set to NULL before we
> reach this point?
> In ice_init_hw(), if an error occurs after port_info is allocated, the
> err_unroll_alloc path calls devm_kfree() on hw->port_info but leaves the
> pointer dangling:
> ice_common.c:ice_init_hw() {
> ...
> err_unroll_alloc:
>         devm_kfree(ice_hw_to_dev(hw), hw->port_info);
> ...
> }
> If the device falls back to safe mode after this failure and later calls
> ice_deinit_hw(), does dereferencing hw->port_info here result in a
> use-after-free regression?
> Additionally, if the device boots in firmware recovery mode, ice_init_hw()
> might be skipped entirely, leaving hw->port_info as NULL.
> If a devlink reload later triggers ice_deinit_hw(), will taking the address
> of sched_node_ids from a NULL port_info pointer cause a null pointer
> dereference?
> Would it make sense to guard this call by checking if hw->port_info is
> valid?
This is a valid concern because ice_init_hw and ice_deinit_hw() can be
called from devlink reload, which doesn't appear to be blocked during
recovery mode. As a result, we might potentially access a NULL pointer.

Its concern about a dangling port_info is invalid is harder to trace,
because at least ice_probe() exits immediately if it fails ice_init_hw.
However, we also call it from other places that was less obvious.

Regardless, I submitted a v2 which moves the sched_node_ids out of
port_info and into hw, which makes the life cycle management much simpler.

As a result, I did *not* include either your or Aleksandrs reviewd-by
tags, because the patch is substantially different from v1.

Thanks,
Jake
