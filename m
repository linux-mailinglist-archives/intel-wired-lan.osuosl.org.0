Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D92708682C1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 22:13:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 353CD405B1;
	Mon, 26 Feb 2024 21:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuTwjTVQxSyM; Mon, 26 Feb 2024 21:13:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C0DC404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708982035;
	bh=cVArNltwRiy2KeDzkyHyoMMpo0AUCTlTzZrqNnFiUxc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G9VeLF9jAA66zRpOW//djdnIRoRxFDvZ/k40yC8xZ0eA4rzC64sD84PpVgGqXleYq
	 P6gsONnTGv0YmiDMP22hSueyCDM6GzoXyclTsyJJqgTPOSrSrldKAeICt2lZe5gbPX
	 bPFEdYLcq6ORbuRACPGbAfBwwvzOQuvByPaDeNc0QgmxO94xv8TcQbo6ncCpX/SnpO
	 2Ah+ExZLarvLiy/Shwx2n0gUjgVq/T7Z+Q6yVxUAdmy2jTgM3URj3C5lBTWBLUkng6
	 ZeXMyot46PDyYnh1gmDvOOItdld5J1Kvsb1720No7s2IkLtQbSppJvRqdckYTgc2to
	 4n7bC+aVUaOoQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C0DC404E9;
	Mon, 26 Feb 2024 21:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C01D71BF373
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 21:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB52A60857
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 21:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdQ_rmtuD82m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 21:13:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 07193606EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07193606EF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07193606EF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 21:13:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3156717"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3156717"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 13:13:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="6826495"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 13:13:50 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 13:13:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 13:13:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 13:13:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 13:13:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nbJGA2JEuwsR5dw61IDcDPmO8BBPkOy9k5w1z8zEcG+psfGzCAjZEsNfQJJ0TAUXOar5TDM1vBKBW6L0XJe/1MKg3HEhDsczZQ2xZF7RJ6oLkY8qNKq7ypMOnnQmTg3Hle71XQrLJ09dAJb8F6/PiAAR9P2aqUXbkUwoL9uoNmDqRWF4TD0tlWGY62OAQA7uW80X+EvSo5cPucdKcR/+oYi+ARC2sNLhe3HFBKCRErxoa+DQjAf+xWKZ4pSqpSS29ZpX2n71oKFbYhUQV8G+Yvs5wMOWNsaXOIqIR+z0riXI5xC7SBM1Vl8ZBzyN3VCCPr30HUAhE6elwZV8dyUbkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVArNltwRiy2KeDzkyHyoMMpo0AUCTlTzZrqNnFiUxc=;
 b=PQc690doKAlsNnX6qoFiH0LKJgdhjZDlb/og1/RES+hXNQ7csFfjqWPRgZhnhgLhkIgcfcNiGvbJIc/DK45dEI4vAaAwqSVkUMwld15mv1G49cGuFMMwjYYo1mbmPkSDpLz24Y5PhgcskqNuPupXP4R1splLVvVRNcSvFBD5Ag6v6oqIvjVvVOQySY089TMRm2ncOzUP5tu88TeNkbKX2wdXxggBY1SziyANcTGwcZ9LMYAx8YGnw0/nXre/pZBCGgFgZs7WAp7X/DhpR8pxUrEMYEI6LHsQzsMP0ys9cBvF2JMZoiuMF1RlVw5dmKVh02W7FacWoDzByhsPS8yjUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM3PR11MB8684.namprd11.prod.outlook.com (2603:10b6:0:4a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Mon, 26 Feb
 2024 21:13:41 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7339.007; Mon, 26 Feb 2024
 21:13:41 +0000
Message-ID: <7fc79351-d805-4a2f-94a2-5a3828357e0f@intel.com>
Date: Mon, 26 Feb 2024 13:13:39 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Michal Schmidt <mschmidt@redhat.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-3-mschmidt@redhat.com>
 <e03aabf2-2a97-4395-9060-909d3651bcf7@intel.com>
 <CADEbmW19UZ2KvmHr_JrmJ9--yy2L4zOJKAUdJFtN53tWR5nkrA@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CADEbmW19UZ2KvmHr_JrmJ9--yy2L4zOJKAUdJFtN53tWR5nkrA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:303:8c::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM3PR11MB8684:EE_
X-MS-Office365-Filtering-Correlation-Id: 1561803e-7e7a-4379-8ea3-08dc370fcf10
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /m7ojrSMTQzwHUFvfgueRw0igZVuRkIrVfAkIoHPJwEgr9fetvS325tn9dUvuaI1Y1JuesLq8s1clpA7YNe+063bk8wb2/sOJQ5BOFsKzE9aP/efAvYiu0cAJT8LtQp0ot9KYHZmQhjXVl5hrVy9WEsvrQr+aeuSh7tp5sFp/K0zWxcy+ugF4Y9KzaVWCOnvjkonmSPlanCT6OWjfUpiHSQCHUKZ/WVJDBUUy5jo47rwuU49h0rhHJvAbYMJPjkTZTYdP12BLeAOR20vSsCb2C83twhDPTbJTJT2EvWqrUgE+sdWnErsivzDUc457a7HFm0jmOQHEoRJcasI6Wm+VkXYtN3HM0cdAB7ENzSLUpsaNG8q1z14xx+jJ30opgd8fdpbCqGVCfhU/PdSdLV3voXFeTv7Uu5zeF2qP1yRoUrNo+MbYVkG9PMNUXpaVNNlc2yy3gWS+DUvSDiIf6tAjyEWokzHCoK2eVbO60PxSDWXxg5JKF5crGhBR/VqNGrTJdNPi+x7bhPuAUH21YSDJGG9DJ2i1M5HjTWbZCD+8q/mH+qcEznGD6hcd6pX/abljZ/BMbvZTg3cJi2POppXt6EWh+3zn+Nr2iA0dd1zY4VYviycyaC4jNFv9zfXBYK3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STI3OEdTZlVkc201NXZ0MTczUWV3WDhLMUhJam5jaFMwWDJwK1NEZyttNGNp?=
 =?utf-8?B?cWM5QzFERU1pZ2cxSFlhOHZLYURjTGRidXFIZ0hhVk45ZHMzL0h1OVZab29V?=
 =?utf-8?B?L0pmdHBFN2lDUGxJVlM0ZGl1TUl1Z2JNZFZNTjVSWEJtSGpybmMxdCtOVWdX?=
 =?utf-8?B?S212TEhERnFnRFhkMnBWbExyd24zUFoyajFsUi9OeCtaVnphYis5NnhUSldB?=
 =?utf-8?B?K0UrcXk2TmpuVzdpeUFmRklFZS9jemFXZzFySDFJc2VhNmZQeGJSRy9lUWNT?=
 =?utf-8?B?ZTJyWlBMTTdCekxDMFYrMkZieU1hSEpNNTJNbU9CVlFjTk9peFVzZER1MElP?=
 =?utf-8?B?bkUzN2ZFSWVDeFNRS1FXSFpDd1ZWVmV2NnhZTFR1bHJaRUpMV0s4QzR3R3Vw?=
 =?utf-8?B?RVlzb051azl6LzB1R21uOFFFRnBRb2RLZFU2OEx4MHlWRFptM2RPT0VIUWw4?=
 =?utf-8?B?eU01TnhsZ3RVWi9nd2F5WkwyZnV2TnA3YVhqa1l5c1hMTWxyblRXTmJpZTZS?=
 =?utf-8?B?dUk0d1pUUWEzQm15REFNdHJQVGU4cHNsZmVwcTJkTHJGdEZtTXMrekRvQnNy?=
 =?utf-8?B?RnlhbUphbENmNjFnMWRnMFRmRVlMaFdBMU9yTTNnZ3dERElMaWVYQzlLNXB6?=
 =?utf-8?B?Tm1BbmRBb0pYanIxYWRoSlNKa1NtbGc1dWRNcExncGFzL2p0ZEV6bkdRMFA3?=
 =?utf-8?B?aUVXSTZydUVqTDdtNm1Ka284RG1mUGlYNDJoSnZQeEJnMjBNdDNRb3dGb2lY?=
 =?utf-8?B?VlBKVUZ0SGp4dVZ5MUFxRE0rTUZLZlFnVXVrSVE4ZDlMN3B5WlRNcjN4S2Zi?=
 =?utf-8?B?dVhkcy8vNnFEcmRtd0hTYnM2WVFSaWRtZjBQNGtMSDh2eWl0T2M3L2lkaTFV?=
 =?utf-8?B?dTIwZ2hIREJtS3VUbWJiSElqK1ZndVdOUlVCejFjWXFhVXJLUHBYMlR2UlRX?=
 =?utf-8?B?ZC9SRFRJR1dGd1B4bDdySVdqbnQ0aWhtOUhyUDJscE1aUEcwOTdrNVlremNR?=
 =?utf-8?B?VG5mK0dmV0hoenBXYUhqT1c2VzA2QjRRV2Z6a2R3ZUFkNU5NOEJGelJNUFVu?=
 =?utf-8?B?UDFObUJHUUhJZzhlUGs0NXNBSmIzdy9OR2hSTTBWdWhEYTE5a1ZSekZYOUtE?=
 =?utf-8?B?cER5VlFxTFBSN21PMXhHVHZaSzVWL0Q4U1FKek5iMzhMYnJxZ2NESjhoaFAv?=
 =?utf-8?B?NHZQRlA0WFl5cndDbkswa1lqOWJVQlFmUDRDYVJqUEpjOGkzVUNtWGZJQ29o?=
 =?utf-8?B?YlNFaUhMUGZEZFY1Z2NCUUl5bWllc3cwbWgvWUZ1QldIRm52WXVlQlM1cDB1?=
 =?utf-8?B?K3FLNjFHN2VPUlF1b0c3NzdhK2xCQThndzRsSEUvdnIvb0JBRzBydSt3MXRB?=
 =?utf-8?B?ZTljbXBnY2ZweDJVaG5mS3NvaGRCT0JtSDlVMWlmR0tDYWNqWW5YeGpzbzVu?=
 =?utf-8?B?d0xVSXlXQ1VWZWl4NjdWZndXNVJITm9yWGE5VTFRYVE5LzVNUEkxYU1seEFN?=
 =?utf-8?B?NjE0TlJRVDYwVDJLV3RyK0MxTHBEQjM5VW5NbHNXa3g0cmdUcEk3cTVlMVVW?=
 =?utf-8?B?WE9LVkQ5V2pKWml1SGF2Sm52bDUyWWdLU29GaHdEREhqbWxqcndJK0ZnQnls?=
 =?utf-8?B?QmZVeXVJanQwVTdnWVY2T1h2SVg3dFcveUZCNVJ3SGpHMVhVNUNNSzdmdURO?=
 =?utf-8?B?U0hOZ1MzZithWDNDL1FqL1piaForckcweE9VUGhrZE5IS0FZQTVpZjVvaXdH?=
 =?utf-8?B?ZzFRTHpvc1laT2doNnF5V2pmUHBVZk02UFdQWXNkbDVqU2cvMCs0WVUyTkJF?=
 =?utf-8?B?WDhxRy92N1ZoM1E3UWlTejBaN3JZd0k5NEdIRWc0ODBvVmNhR1R2QjlOb0xG?=
 =?utf-8?B?aHRJRE12TGRVZ09MVjAvRHIvdG9kUFVPQkx2RVlyalQ2UVpOK291YWswbzFN?=
 =?utf-8?B?QmxIVHZHbUtkMkE1MUxhRlFoLzB2RGZxOE1yVVNQMU9GSk8vZ1g3UHF4cFcy?=
 =?utf-8?B?YXJQVXEvRFZuZXhiNzFKbmVIQVJTeDBTY1NjYUs2bXRvMW1jT3c0WGFmUStT?=
 =?utf-8?B?M2VZL21yLzB2TEdpcFpqQUZjMVhxeWJJczVxWGlUelpGQzM5VXdyd2J3S1VJ?=
 =?utf-8?B?Rjgwd3V2ZFo5aDhQNFF2RG10REs3eXQzMXdBa1NGUTIwWTU2T1JrT05mUHpv?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1561803e-7e7a-4379-8ea3-08dc370fcf10
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 21:13:41.8835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /JfkY+vOWwTtL4hsfHZorlJjS5ipTPqfqpvwaXzDgfNHu5qKVPiF29v7cc0KANLo8Z1sYzykGyZ+CYT8CM3zEFQL9d6LRnQTSKAFc9sjJas=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8684
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708982032; x=1740518032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4nvH6LSh/NY7Hjq1CoAhxJCrhRYq6UozbKDPQYFQe/o=;
 b=PdczaZ92V4goQI0qv0F8gBaMtg0ZBS0+Tf+2bmKotig4VUGm1GNwAqIU
 35BsCY5gfC9u7y644G5BEG6Bw3MFkdAP3vezR9zTzKpToRsL4DMLkPVRZ
 XADCQqRCane0dpzFYFuHtc4GJmtNYbMsC6ereCb/SkA6BjiQjCyJr3POj
 5vHzvaHjWsSQ1iqbqNcaq4CjPgVseXdWLo3uxscbYUhsuJlsdA9Xn5BPO
 dCbEtxAQmrRxZRGfMnpsHik+LjkbfOk4TtoTtt02HyADu+NdioMdJuuzN
 0gng2Mx8SgBjyI09zvPPmV+oHDsapIBpbVF9hg1DSbSu2tfkYi1H1dSAn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PdczaZ92
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ice: avoid the PTP
 hardware semaphore in gettimex64 path
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/26/2024 12:11 PM, Michal Schmidt wrote:
> On Mon, Feb 26, 2024 at 8:36 PM Jacob Keller <jacob.e.keller@intel.com> wrote:
>> On 2/26/2024 7:11 AM, Michal Schmidt wrote:
>>> The writing is performed indirectly, by the hardware, as a result of
>>> the driver writing GLTSYN_CMD_SYNC in ice_ptp_exec_tmr_cmd. I wasn't
>>> sure if the ice_flush there is enough to make sure GLTSYN_TIME has been
>>> updated, but it works well in my testing.
>>>
>>
>> I believe this is good enough. I don't know the exact timing involved
>> here, but the hardware synchronizes the update to all the PHYs and the
>> MAC and it is supposed to be on the order of nanoseconds.
> 
> Thanks, that's good to know.
> 
>>> My test code can be seen here:
>>> https://gitlab.com/mschmidt2/linux/-/commits/ice-ptp-host-side-lock
>>> It consists of:
>>>  - kernel threads reading the time in a busy loop and looking at the
>>>    deltas between consecutive values, reporting new maxima.
>>>    in the consecutive values;
>>>  - a shell script that sets the time repeatedly;
>>>  - a bpftrace probe to produce a histogram of the measured deltas.
>>> Without the spinlock ptp_gltsyn_time_lock, it is easy to see tearing.
>>> Deltas in the [2G, 4G) range appear in the histograms.
>>> With the spinlock added, there is no tearing and the biggest delta I saw
>>> was in the range [1M, 2M), that is under 2 ms.
>>>
>>
>> Nice.
>>
>>
>> At first, I wasn't convinced we actually need cross-adapter spinlock
>> here. I thought all the flows that took hardware semaphore were on the
>> clock owner. Only the clock owner PF will access the GLTSYN_TIME
>> registers, (gettimex is only exposed through the ptp device, which hooks
>> into the clock owner). Similarly, only the clock owner does adjtime,
>> settime, etc.
> 
> Non-owners do not expose a ptp device to userspace, but they still do
> ice_ptp_periodic_work -> ice_ptp_update_cached_phctime ->
> ice_ptp_read_src_clk_reg, where they read GLTSYN_TIME.
> 

I think we (Karol?) have some work to fix this by refactoring so that
the clock owner does this over auxiliary bus for all PFs, rather than
having 4/8 PFs each with their own background thread we have a single
background thread that reads the value once and updates the cache of all
the PFs. It looks like its still only in internal testing however.. the
current kernel code does what you said above.

Either way, we also have the other flows for E822 devices which also
need to execute timer commands (albiet ones which do not directly affect
the main timer).

It is much simpler to reason about correctness if we simply lock every
executed command and the reads of the main timer. This has the advantage
that we also do not need to lock the timer reads while waiting on
firmware to prep all the PHYs, so it solves a major problem we had
before as well.

Thanks!

>> However... It turns out that at least a couple of flows use the
>> semaphore on non-clock owners. Specifically E822 hardware has to
>> initialize the PHY after a link restart, which includes re-doing Vernier
>> calibration. Each PF handles this itself, but does require use of the
>> timer synchronization commands to do it. In this flow, the main timer is
>> not modified but we still use the semaphore and sync registers.
>>
>> I don't think that impacts the E810 card, but we use the same code flow
>> here. The E822 series hardware doesn't use the AdminQ for the PHY
>> messages, so its faster but I think the locking improvement would still
>> be relevant for them as well.
>>
>> Given all this, I think it makes sense to go this route.
>>
>> I'd like to follow-up with possibly replacing the entire HW semaphore
>> with a mutex initialized here. That would remove a bunch of PCIe posted
>> transactions required to acquire the HW semaphore which would be a
>> further improvement here.
> 
> Yes, I agree and I have already been looking into this.
> Thanks,
> Michal

Ok great. If you think you already have patches for this I can go ahead
and wait on this work instead of duplicating effort.
> 
>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>>
>>> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>>> ---
>>>  drivers/net/ethernet/intel/ice/ice_adapter.c | 2 ++
>>>  drivers/net/ethernet/intel/ice/ice_adapter.h | 6 ++++++
>>>  drivers/net/ethernet/intel/ice/ice_ptp.c     | 8 +-------
>>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 3 +++
>>>  4 files changed, 12 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
>>> index deb063401238..4b9f5d29811c 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
>>> @@ -5,6 +5,7 @@
>>>  #include <linux/mutex.h>
>>>  #include <linux/pci.h>
>>>  #include <linux/slab.h>
>>> +#include <linux/spinlock.h>
>>>  #include <linux/xarray.h>
>>>  #include "ice_adapter.h"
>>>
>>> @@ -38,6 +39,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
>>>       if (!a)
>>>               return NULL;
>>>
>>> +     spin_lock_init(&a->ptp_gltsyn_time_lock);
>>>       refcount_set(&a->refcount, 1);
>>>
>>>       if (xa_is_err(xa_store(&ice_adapters, index, a, GFP_KERNEL))) {
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
>>> index cb5a02eb24c1..9d11014ec02f 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
>>> @@ -4,15 +4,21 @@
>>>  #ifndef _ICE_ADAPTER_H_
>>>  #define _ICE_ADAPTER_H_
>>>
>>> +#include <linux/spinlock_types.h>
>>>  #include <linux/refcount_types.h>
>>>
>>>  struct pci_dev;
>>>
>>>  /**
>>>   * struct ice_adapter - PCI adapter resources shared across PFs
>>> + * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
>>> + *                        register of the PTP clock.
>>>   * @refcount: Reference count. struct ice_pf objects hold the references.
>>>   */
>>>  struct ice_adapter {
>>> +     /* For access to the GLTSYN_TIME register */
>>> +     spinlock_t ptp_gltsyn_time_lock;
>>> +
>>>       refcount_t refcount;
>>>  };
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>>> index c11eba07283c..b6c7246245c6 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>>> @@ -374,6 +374,7 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
>>>       u8 tmr_idx;
>>>
>>>       tmr_idx = ice_get_ptp_src_clock_index(hw);
>>> +     guard(spinlock_irqsave)(&pf->adapter->ptp_gltsyn_time_lock);
>>>       /* Read the system timestamp pre PHC read */
>>>       ptp_read_system_prets(sts);
>>>
>>> @@ -1925,15 +1926,8 @@ ice_ptp_gettimex64(struct ptp_clock_info *info, struct timespec64 *ts,
>>>                  struct ptp_system_timestamp *sts)
>>>  {
>>>       struct ice_pf *pf = ptp_info_to_pf(info);
>>> -     struct ice_hw *hw = &pf->hw;
>>> -
>>> -     if (!ice_ptp_lock(hw)) {
>>> -             dev_err(ice_pf_to_dev(pf), "PTP failed to get time\n");
>>> -             return -EBUSY;
>>> -     }
>>>
>>>       ice_ptp_read_time(pf, ts, sts);
>>> -     ice_ptp_unlock(hw);
>>>
>>>       return 0;
>>>  }
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>>> index 187ce9b54e1a..a47dbbfadb74 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>>> @@ -274,6 +274,9 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
>>>   */
>>>  static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
>>>  {
>>> +     struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
>>> +
>>> +     guard(spinlock_irqsave)(&pf->adapter->ptp_gltsyn_time_lock);
>>>       wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
>>>       ice_flush(hw);
>>>  }
>>
> 
