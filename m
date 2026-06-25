Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UgBQLb9OPWpF1AgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:52:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0198F6C72EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:52:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=fcxYxjBt;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BADBF40F6D;
	Thu, 25 Jun 2026 15:52:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 135ZhruNuDQU; Thu, 25 Jun 2026 15:52:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E95D440F18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782402748;
	bh=SufLLtY/EIFZ2fH8McQTuxnmm014y0toOaN8RJMBuDI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fcxYxjBtt4Y5zgWi3a9X/k2RgDE+572jq3n/tOZvTmFHSox2TPu3uKbisqpz2pRqv
	 YzXeGbwbuA4hdsckEvaiiF+wnUHUX1rkTm44rqsQCaYk4VTpT7nB+3U118tVQGBXUm
	 Hz+P3zvtOJr/AQ7jzkYttwwHPhQ9AZa/3S5ooONyhMvwRoFzX/R7sOSKtuJLAAGM63
	 T+mklcsAFMFxPkcKm54M/q+AEseHrcxdIa1ug7aX6BUy/1jxP2LlJ0iLp10N9kw8qS
	 FvPTAMN7ag1+wU418I0IIQiRPkJUpIkzW+e9+g4jAu2RXC2/4/PlTkvcUTWKP0ZD7J
	 z3/17f8p89vRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E95D440F18;
	Thu, 25 Jun 2026 15:52:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A0CCD2C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 12:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86E1D60E24
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 12:15:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KZpfBRZsxmFo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 12:15:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DEF3660E0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEF3660E0B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DEF3660E0B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 12:15:44 +0000 (UTC)
X-CSE-ConnectionGUID: enhVMh0tQ5aC43oPw7HhrQ==
X-CSE-MsgGUID: UxEOJQ8yTUeZNUYfIWAO3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83047635"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83047635"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 05:15:43 -0700
X-CSE-ConnectionGUID: to6ilUwYTVG35uGlEePTYw==
X-CSE-MsgGUID: bT3YnCFRTHm0Exd1fkU5cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="251118563"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 05:15:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 05:15:42 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 05:15:42 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 05:15:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZIhDdy8F4cQuoUhzMdlIqHa0odQwDYDdCk1NAq9RLSpiiE2/hYlghUlqDYnSSTay9oEkKlGfzSecBkI/yHH9wFWbYXx1RnwUWKb18sMeVnGVxAxXOzIYBArd8MuXDXqVJ5EmdEhLI38+l7MFst7IKzBMB4/aUdI52m/Gf5YRaIraP5ehHmuCYlDl9i9/Hf/CqG2ptyheRVwxLq9+1Ko66dQalEYlHjZ9qZSN+sSGEduidT6NiP7nsTZTDjNs/uvHI62se0Ow9iVJ+Ngs9f+rd+N2yA+OJDeO1OgF5gWU+TEnjlqQ/h6jyci1My4bKa/0sNZXUyqHfE8ZRlydKkp3og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SufLLtY/EIFZ2fH8McQTuxnmm014y0toOaN8RJMBuDI=;
 b=dRK44Ikn8tz2shjs9lmWPON2XAMXUrB1U0WA5rOk62SY5dvef7lI4YQck3xGKKGS6BoUBiLoZARxa6hrfJSUm+IqMyOutE6Z6vQm84IdNqNY3rdI+ZF4IwzabTS3LlIUWsYj1tvDGgJFlE+K2F294+Y8juJzhee5jqSqiXmzr0bmBLwGURYaC2fIX1iiEEn83MtO9oYaoiOIexSd3ZaYr7RbQHtYixXMKjBxO95En7ltVE5V0wfo1LlzMCp/mfPAburznytK3e9WmRYcUBOAdSa2+JCJuPPXyNCaQsc3hUDImJXkR15JyKJ2KOsTtoyOvMcRJfn/Rvv7XTi2DEbh4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by DS7PR11MB7737.namprd11.prod.outlook.com (2603:10b6:8:e1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Thu, 25 Jun
 2026 12:15:39 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0139.018; Thu, 25 Jun 2026
 12:15:38 +0000
Message-ID: <1d226d1e-290d-4220-a1a6-9487c210329a@intel.com>
Date: Thu, 25 Jun 2026 14:17:53 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, <jtornosm@redhat.com>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <aleksandr.loktionov@intel.com>, <jacob.e.keller@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20260623101800.991293-3-jtornosm@redhat.com>
 <20260624163050.1145761-1-horms@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260624163050.1145761-1-horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::10) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|DS7PR11MB7737:EE_
X-MS-Office365-Filtering-Correlation-Id: d7f3e61c-153e-45f3-300f-08ded2b377f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|11063799006|5023799004|56012099006|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: NgSfXOA78RwtN5ZSsqeHj/JCFagxNNAk9XJjOP3gXh9t0G+ZPbq+4ZsKYY6tNtWQHGHBw2pkPGr3hgTrPfDsu9e/norBjg55KXZ1vj3MxbjEXZDCfuhlWNDZVjaB1fBOfHBo5FB/Suy4kpIfAK9Gi2Q+booaF5qgCr4sBi8LrTPLz5s5o8bnDZRprlCkcIdBGylAlblxyD28joDxcC7U7lGXx980ckMJH781U/hq86jEOr70cBDTubvd6uPbvgtm/maw6xWwgNz6EpX5GaeV4ywMgxnBMNXasV/LL4ww9H+OyTxAslnYYOxS6F2AO/SB3BUI5c6cIBKzQENVnXqsLPBAL4+52zf8r0F/1jhY2Cb6BtWlH66b7ujhO3Isu/OuBSsWq2NIuevogvksTufwCfKIbjPeklZeQOID1XULv7Rz9tB9Lc7Dx+VC8Bn8M1uBPayV3pQBKrny9ytbcLsRkzgGU8I2T/JhVRslm238bm/j4ODJyeJYjS4+N27vwVZr9fegDmVnYFURQ5Q9zoEK9iPtlSYUfQjTIwG+60QTHpkvODHhDY1o3FATLfsxu84HDFeSUc6a3zBOUn4Nzxk0LWDqHPkNhkIHrgFg61i++Y9YWBzN2kypVpYGuZNchhxn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(11063799006)(5023799004)(56012099006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTB2UkZkeEMzMXQydjdTK2RoZnFEVFZvL2pmRHkzY3BmR2cvcXNpaFd3NTEw?=
 =?utf-8?B?MzZtR003TGw4amFlMzBmQWloU3hNMm9LWGU5NmdFM2FsUlQzVVNoWXQzQ2VN?=
 =?utf-8?B?bkVvWmU5VE82Znp4eUlQUGt4QkFFM0RvaUpCY2M1RWVOTXhCZktBOENIdGhP?=
 =?utf-8?B?YXhRWVhhU01sV3ltQmM5cldpZ0lhbHBuU3hKQWluTDRQdXMxUWZvOHZWU0tG?=
 =?utf-8?B?dmY0MUtEQmNLQ2k1d1hQM2c0RncveVM2NE9udnM1dXg5YnRjVjlSSE9KUEpV?=
 =?utf-8?B?TW5RYVNKNDBpYThFTk0wREdIdStKNSthRHpJU09EazlOa2Q3cUgvY1J5b2hu?=
 =?utf-8?B?ZWtjS0FRVEdxZ0V3NU8rVStDbVAxTkUyT2dYczNuMW1jZ0RLbnJqSEdKTkR0?=
 =?utf-8?B?UEtMbC9CRGZadll3U1pjblk2MTdCby9pc2JWNXlGaGFkNXpKYkF3VHgxSmFX?=
 =?utf-8?B?bzkrUU1sL0ZqbTMzb0xzTW01eUQyOVg4Tjd0VzJZbmp2M0VadUFxTERFcUxz?=
 =?utf-8?B?blNTVy9VWkdNdEZ0Vyt0VURObE9KRGdrVzE0VEVldkwvK0M4L2NZV0x0Q1Bu?=
 =?utf-8?B?SG9aS1h3bzZlaDRHdUtpbG0wSTIxd1hJVk80UmRCVUVsSFlhTFdubyt5NkpP?=
 =?utf-8?B?WWNZeDNrVHVMMGd4RC9xNDlEejZ1ZHNrNU5vNU5jeU1lWkdrRTlMVVM4T0lw?=
 =?utf-8?B?L3dlMFRONGdrSFZCamt5NFJIclVyclRWWWZZZDZ5My9HaVg3eElPNHRCN2lx?=
 =?utf-8?B?cVF1cnJGb1lZNnNDMmMxZE9lMFl6eXBBekNuV1ZUcWJSbnJtYXNUYUFGYzU3?=
 =?utf-8?B?d2lqYnp2Y3ZKbFdKQU1ETzNSZ3U3NldQWmM5WUhhWHlSK3lzR0k4bXlpYTdW?=
 =?utf-8?B?RUQrTktta3FmUG1Sd2tHQ0Nxdjg4b2NxNkZQZVJtWW1NK1pER2RPaE5nYmw2?=
 =?utf-8?B?SmozaGVQQmE1ZHV3UDVWd1dXWVY2UVBHQ2d1UVQ3Y0NOdXJ4MGZkWjBYM3Rx?=
 =?utf-8?B?ZTJlSUhKRUZKYktMRXMrOXgzc0g0b1pTc0FteXdRZnVFVWhFWEFwOUNnMk9n?=
 =?utf-8?B?T3h2bUhWUGpZZ2lkbzdIRU1jOG11cUVyN3dHVnNrcFRCaHozZ0ZObVZLMEJR?=
 =?utf-8?B?SG9RYzNQMmJZdTN1YlJxUm84ckU2U3BzNVBURVVhbEdwRFZkWFRNT01YTVhS?=
 =?utf-8?B?Mzc5WkRYQkNQeUdaZTFFT05ORjVlM2NyTW5vQ1l0R1FQcFE5NStxZEVTcjd6?=
 =?utf-8?B?OXZNL1Q1aGVpUml1d3l2Q0pEdDVKRnlFdHpWUUVZL3hIYVVmV0lneUxKWURW?=
 =?utf-8?B?NUV0QVZkUStoQ2EvaFBvZzEwUjBsdnh1dnR4OVl4Qjdvb0FNSE5CVXZqSGdh?=
 =?utf-8?B?U3p1YlV2dk5NWjRRRGlLTmRJd05wSlFtdy9KbytMOGV2MmVmU1RsSG1mbWdw?=
 =?utf-8?B?NVZFYS9oNVNGcngxME9way9sWExFWkF3Y09qTy9KZVFIaERrZTA3Yk1EOHRj?=
 =?utf-8?B?ZC9RQ0ZPaDE2WjY5SFBQLzdJOVpMNkNVOGJCNkpkMmZiTHY3TmZmNnNFamlW?=
 =?utf-8?B?TGRBMFlwRXlXYW1qMWpSMjlQTnJyRnB5YW9LRC9OVjg2YmpMelZBeC82NGlC?=
 =?utf-8?B?VVgwcDk4Q1RzemhKUVJzV2tXM0JLNUYwQm9wS2UrMnJOYzZYZ3J2L0Y2RGgv?=
 =?utf-8?B?SFpyL3Z2NXU4M2RJQjd6Q0VleU5xK0NNNkMvYmNXOVhFVG96bVJwVEFCWDVy?=
 =?utf-8?B?a2dGZFNrS2xoN2kvZC9udGpGd0tXV3VYSmtFcnF3STU2RmdDTmxOLzFHQUhR?=
 =?utf-8?B?S0FQRU03ejQxd2o3L3NzSFByMUN5UUN4VUE3OGZ1bGxIVVpCU2tydldtQ3Uw?=
 =?utf-8?B?U2JBNXBOaGthSG1yLzl5M2dydStLWU5PU0dadE8rSHZwd3YzbHgwVVE0TU04?=
 =?utf-8?B?bWtLWlVYS1p1Q1dQQWJLNERKS2NPU0ZmbjE2VlczS3QvZ1R5Rk5uY3RpRVFw?=
 =?utf-8?B?Q1ZoK2ZxNW92TFhYMkpleGFIZHY5aFlIc1YzL2h2SWRtcGpvNVdUV0l1MUox?=
 =?utf-8?B?NktBZEV3U1pRL1lGZG5QSTljZkh5Q0FOaVlZVGErYzZ4a0dZdzhtVUNSTEhm?=
 =?utf-8?B?bC82bU8wYnJ2a1RXZElPWE5vWFVSaXl2UFRFSVlEdUdiOEtzV3VrUkFnbXRW?=
 =?utf-8?B?MXlpMnF1UEhUSmdya3RnaU1TNFNRQTFVbjg2S3B5YTk1RUlncFFVaVNlTzFt?=
 =?utf-8?B?c2JvUVFDRUlyRUMycXd1SHdpaEVET1RWSUNXem00NlFQTVNJS3RZblJtakE5?=
 =?utf-8?B?Mk5mZGh3UWlmMDRkZTF0ZjBtS3pHUkNjS3BSUWx2ejV1MVFCQyt6alZGeVJa?=
 =?utf-8?Q?EBPcE6i8BauWtvqc=3D?=
X-Exchange-RoutingPolicyChecked: jWXLfb1DrCpG2Wx0q+DS1u3OiQ2d86o4aw7tlgYhU403SievGqPF2PtFt1CCJJNjeBo9AOk/UM5KX7b69m0/8A5XGMR3Kf8Mk8Cq3PYovfd5DaxHFYdpe4iL/03eRSUSZSEniMkow5nh1JLzdkxLH6Bf/2bWLsHFg8V39jYPuIX/gFnqNnGFrfEU7JFexOyebujHHCwOf0Wt3WCh0Gyshw4TgL8iWCyI0qlAHqK1PhG/TMM8PP8gWitzYkYTW+zuM70whxJnGcNhPi8a19Un9NVsQ8p0Qjg6QxMIegKuOvUIMn4Uye6OeDximA0ckyLygoZJNGFvHMiG9WzagIYY1w==
X-MS-Exchange-CrossTenant-Network-Message-Id: d7f3e61c-153e-45f3-300f-08ded2b377f3
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 12:15:38.8547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c1Dwh1ElXoj0XZkYICLzmLJWuKtpWdq5RdlZw06RMUOsew4wXysiaMdXyJpeT+P6wU16CL7PbppCORwp1rLk2UOUuMqQ87ab0XgrN57irC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7737
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 25 Jun 2026 15:52:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782389745; x=1813925745;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oEU2blchPkcYMZXSGzdQu0t+BSA4+soI+xnhu3gsfqE=;
 b=Lwf8mzoXlCw55MMmn1W6IFCN9GQcIObnEkMDWOrxKmfG4SQ3FepO6UH8
 Jdm4wpy1I6gRFcWrrCD7c6Oh/q7Kz7lnYlfYoKo4sxNL9VhSkj4A9EkTK
 jzWjiTvPgLtZofSCweB+RsnDwJLGKSz02jtnEhQRSIERgDFA4k/PSc1Em
 XXCSWfXn3JfsgvnF2VOzsX77eTcOJihNRwYS59tm7q+o4HspmkamGx8x/
 FD0KNB6/kaNhIwh7dMc4n+hILEhPafThZap7nplvgGm6B3v1ikI7sJrde
 P4eWjfPtSl7u+Jzuh0ZSCxZFtG3mHHl/KC2gBEbniF+s68a3XiA3kY9ww
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lwf8mzoX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v7 2/4] i40e: skip unnecessary VF
 reset when setting trust
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0198F6C72EE

On 6/24/26 18:30, Simon Horman wrote:
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://netdev-ai.bots.linux.dev/sashiko/
> ---
> i40e: skip unnecessary VF reset when setting trust
> 
> This patch avoids the ~10 second VF reset delay on trust changes by
> flipping the I40E_VIRTCHNL_VF_CAP_PRIVILEGE bit directly, and only
> resorting to a full reset when revoking trust from a VF that has
> advanced features (ADQ, cloud filters, UC/MC promisc) configured.
> 
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> index a26c3d47ec15..0cc434b26eb8 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> @@ -4987,19 +5004,20 @@ int i40e_ndo_set_vf_trust(struct net_device *netdev, int vf_id, bool setting)
>>   	set_bit(__I40E_MACVLAN_SYNC_PENDING, pf->state);
>>   	pf->vsi[vf->lan_vsi_idx]->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
>>   
>> -	i40e_vc_reset_vf(vf, true);
>> +	/* Reset only if revoking trust and VF has advanced features configured */
>> +	if (!setting &&
>> +	    (vf->adq_enabled || vf->num_cloud_filters > 0 ||
>> +	     test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states) ||
>> +	     test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))) {
> 
> [High]
> Does this revoke-trust heuristic miss MAC/VLAN filters that were only
> installable while the VF was trusted?

No.

> 
> A trusted VF is allowed to add many more MAC addresses than
> I40E_VC_MAX_MAC_ADDR_PER_VF (i40e_check_vf_permission() uses
> I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF) and more than I40E_VC_MAX_VLAN_PER_VF
> VLANs.  These quotas are enforced only at add-time.
> 
> The previous always-reset path went through i40e_vc_reset_vf() ->
> i40e_cleanup_reset_vf() -> i40e_free_vf_res() -> i40e_vsi_release(),
> which destroyed the VSI and its mac_filter_hash, and reset
> vf->num_vlan = 0.

Current "reset only on revoke" does exactly the same.

> 
> The new fast path only flips the PRIVILEGE bit, leaving any

NOPE.
New "fast path" only *TESTS* the PRIVILEGE bit,
it does not "clear" it in fast path.

This is just negated/wrong/inverted logic on AI side


