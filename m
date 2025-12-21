Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40ACFCD3EB8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 11:43:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72ED060E3E;
	Sun, 21 Dec 2025 10:42:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id awmtEhm7oO6M; Sun, 21 Dec 2025 10:42:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E34C60E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766313763;
	bh=Sj9N+2l4PuT/EA49bdFsli4NlkadJXfQRgCoC4p/MaM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3EKph8E+1TFEGTYX/zlf9uloqpQTxqAix+9L3oR/u2t+bvC3Pegla0rhROGR1JFkD
	 3mZQ+HpqDNPe2bRZmWm2llffZA3g0K0IAsLR0b5dJFXMwq6h0Q+Un4hhOMwMnb9FK1
	 Unmdv0dhdaDTyzc5daOaOpRzdh121cpD1kuZ6PogaxwZZCkstUdt4Qrxlq0CZf/2nr
	 bzIo9sFxbwhh6j6y56dlqYOBkkHwZgapSrYOg+w+wDKserbVNkpnggFrczXN2GHhMh
	 /fN6kLZCTDNJOHROLqsOWIuWJPl5J+Ykf3ZQpFOtLof5LD5WMoSpjjUkYWFcpq0bwx
	 6hfmHpJLdbDtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E34C60E2F;
	Sun, 21 Dec 2025 10:42:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D0745119
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 10:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6F8B403E6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 10:42:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGSNc4co47i5 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 10:42:40 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 21 Dec 2025 10:42:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E199400A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E199400A7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E199400A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 10:42:40 +0000 (UTC)
X-CSE-ConnectionGUID: vGlY/7jwRU+RZBHvFwXcUQ==
X-CSE-MsgGUID: d5NqxkXKTMG+Wlr4WeJKzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11648"; a="90865220"
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="90865220"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 02:35:34 -0800
X-CSE-ConnectionGUID: ByQjD98XS72xuQi/3MLfeQ==
X-CSE-MsgGUID: +2YLcwFHSoKDTnJhnfDquw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,164,1763452800"; d="scan'208";a="236689240"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 02:35:33 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 02:35:33 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 21 Dec 2025 02:35:33 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 02:35:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rDL1u2LvC+JlKa5zhjZEvkHbO/E+3nq1bJ29VNIpCwgQJ92C9dPwTJLI3jWY7FYoQhDqnxiqwksc4vqEulWd0ajfC4wdbujvZp2OUlM/F0jNGB43z6wxPfBzj8r5qOsoLhBiFPWhePtE8VajpcvwITPeHTUUDpR64iq7q7uNWMvtaTJ6X2aSIZbW1rAUOKUp17UaWCxtT5KQ0Hy0VgFYdq32BExIyqt4SFuYReLtncW6akzFUE6mSSOfEHoh6gEjVBX95ADy3lZXIdIRgXhyiqodiOT+tLoVcJ1apSDE4SYWyCoMHAqq4xyp/gHqBitxblzmQM1cRUH1F/+PcHOwkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sj9N+2l4PuT/EA49bdFsli4NlkadJXfQRgCoC4p/MaM=;
 b=mxPhWPznsdY5q8UCg0PNJqoJgqZrZwY77sHBxUaPHViS+GCQBpuf31UxyUc/tQeDUO9CHO79Dg4anvpha43ifUWLuLCMO5mY9gZHbXfTRD/FZPbrd5K/c2bGsNbd6bD4DqdoY1ebv4IZDZH5Mo0uVvss5PXAVw4SGDdJdw8d1O3PStW3yQysWfjWMCQmZUvALO+IqQe++/gBIJcSanIP97/B8h5oubSKbQqSMdeR6P2uJ/Gxrt666i7DIQnZvLnJHUAC8eshCCSpOamR9SBz5Ndyar6wFg24M2ZVIizE5LpWn7mSnbcX71q+dIP2TZnTYleylF0VNcQ+PdySgLYFvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sun, 21 Dec
 2025 10:35:31 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce%5]) with mapi id 15.20.9434.001; Sun, 21 Dec 2025
 10:35:31 +0000
Message-ID: <bcbee634-e38b-4c6d-804a-14fd746c7ae0@intel.com>
Date: Sun, 21 Dec 2025 12:35:24 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-3-enjuk@amazon.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20251025150136.47618-3-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 819008dc-ddfb-4d95-ffa9-08de407caa27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NDlDV05wMWFGb0o0cVdFTkpXdDZON3dRUFBHYnF4amtjNlh2OXAyaDFpYndm?=
 =?utf-8?B?aFAxKzZ5YU5qajFtdEozN0NyY1dWTTFFN3h0MjdyS3MyQWhrUFIrcVFzckxZ?=
 =?utf-8?B?T3pOOVZ5WFVIZ1hWWlpreEtjZWJoTWxOVVJTZXZQam5oV3BJT1V4QnFudmRk?=
 =?utf-8?B?V0dxUkpwZlRRWlY5RjArRVJmc2ZncWFBTXJFUWJSWU5pOFBZZ1dyeW5PY0FC?=
 =?utf-8?B?YTg0ODBVY3FJc0VaMEFXdW1tSFpuMTFtY1lHQWg3S1JuN09ZOTF3dEEvcThN?=
 =?utf-8?B?NjRJeUc0ZmFvWk5XVlZGQzB0c0liNVBCRXdBV1lLd0x2Qms4dVZYR3RNbjA1?=
 =?utf-8?B?V1haMXhEZk9zODJPaVNJaTZvUVIveXBIcjRFZzFuZCtHeXVLN3E1RnMzVWlt?=
 =?utf-8?B?QXhrUXcrcTRwZjI4MmFzZTc0Vzg2WUdMb01CZE5WNnhrNEg5Q3RYbVBUZlJi?=
 =?utf-8?B?RVhjaEljUXVGWnJBYmtrTEdyVmtDQ3FUYko5SlR6MGtNa0tKUE9yUi9kUmxD?=
 =?utf-8?B?T1hXZWNOZktiYVU2OXlWZ2U2SjFLVnBvY3RJTkpuZ0tJY2wyY1huWmo3d0pP?=
 =?utf-8?B?VXpkbjBncXQwRnJuM1dTR0VmT0VPbTdkWWFVSEpQdEt2cU9aZ1Jva3U2aFh1?=
 =?utf-8?B?bFd6NkoyUlY0bEN0c05JaXNPNVkvamNmQTZpV1dRZWNxZllxamRCWWV1TE5E?=
 =?utf-8?B?TzBDLzBVaGhJUHFjSmpSTFNhdWVhcVZBM3FhWmJseTAyVXRCMmtxcngrVEFt?=
 =?utf-8?B?aEl2OTVSSnhsS1o1VW8xblJXcGZxQnJybE5YN1Y4cFFwSEhBdU1RNjEyaDVY?=
 =?utf-8?B?TERKbGV6R1BseWJ1UHZuNEdEVjNIam9RUDl6eXJHaGlOK21zUDAzTXVQeHhn?=
 =?utf-8?B?N3RhekF1T041MjlnWEF5aVkyYVBCMWZwRjRqTjVFVzU4VnBmQ2xFSzU2dUd4?=
 =?utf-8?B?VXFVeGlhWTBlMEVnMDBCZTFETTJwU1BOZmJoRTRyaXhIU1kyRlZFbWhVVm1M?=
 =?utf-8?B?QXhmck5SUGhjVFRidStsaGZmdG56NDZFcStiUGVSY0RMTGtuMFV3ZzhBeTZW?=
 =?utf-8?B?Q1RYNjVZR2o5M0txcy9MUWpYNEw2WmFhMlJNVmhLWXBGVHVYL0NPU1RpeFhJ?=
 =?utf-8?B?ZzJLeE1hVmxub2dqNEZtejJqOXR4UzBTbkdXL1diV1BwUGNHcmlqdkNOZ2hT?=
 =?utf-8?B?RkI1MTU0SENEa2YramMvdFAwRjJWL1dibXNYRmsyVzRmd2U3N3FUUi91SHda?=
 =?utf-8?B?Qk40WDVNQTMzTXBnbzVFdmY4b2lSNTRVeXhzR1h6TG54eXBQSDVFbU14OFVr?=
 =?utf-8?B?VUZMU0xEdkF5QmtpVzA0SnpGbk9JTFVGMHM3RTFjbzlPb0dLOERiNThlRjZ2?=
 =?utf-8?B?cjREVjAzUzhxL2hldG5lRHlXY2ZYZUdzb1Q0VlowS2xXK0N1eHI0QjRobDla?=
 =?utf-8?B?SWZPV044YjZrQ1d5dE8vVXY5dEhpTTVhcXI5ZytScWJieHo4R2xmNzVOMXpM?=
 =?utf-8?B?QTdyMTdtWEVFbEZySlEySFdZUndMalZNSytIYi9zTEhWdFRSMm1aNisxNFFI?=
 =?utf-8?B?STdqQTluU3hhRWY1OEpQRERLb1U1TXRxS3I3ZWFRUms2dHZnTGlGTkZWWmpX?=
 =?utf-8?B?QkxQYjZJVmtyamZXKzNOR0ltamhwVitaSzRnWG1oK0lyYlNxakxxbld5WVdi?=
 =?utf-8?B?Tzl2ZmMzMFN1aGdnUlRWSnJsV0FDQ1JaaHFObjhocFc2QWhPSjRCcGludHVS?=
 =?utf-8?B?QjNhVlBtd1UrVjlxVmJoNzB5MXRPWGhsTlJyandldWRHK2YzTkxtZFl0MlBk?=
 =?utf-8?B?ZHFYTk5QSzVUeE9ldUJDcm1zdnZTVkNMc0NMMTRZUlB5cVJKcE5va25rVVkz?=
 =?utf-8?B?bVZQdGx3TUdpOXRFdDRHUWwxWHFLRWs5K3Q5MEZFSTZuM2NjU2szQWhxR0xN?=
 =?utf-8?Q?b7LdCzYFyk8fX3Ady1epiIQlUsr8jgHm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mi96WGY5aDlzSFVMekFla0FKbk1rRkRLcUp4c2pKSGJiVnNoVW1IK1ZHUGZv?=
 =?utf-8?B?ekdveWl5dHV3ZUkzWVAxVm81V08zNmZrY01OZTlSTExncEttaU9xdFVEQjBr?=
 =?utf-8?B?dTduNDBKR3hEcDA5UE16RXJnKzFlQUJ0M1dxWGFtZFJWMGpFTDF4Njl2NVBO?=
 =?utf-8?B?bytpSWFlTHVWdmp2MkQ4NmdZN3NpQUNpZXpPSmo1STlxSkI1TUdqWXFQK256?=
 =?utf-8?B?eHlnZlFSQzlNL21NZDVCT0ZheWp4WTBMYnFTdTM0dGlFM2dOL216Z0NOdnhy?=
 =?utf-8?B?M0FCdVdYeHQ5enIrdVJwaXRqQTdLdnl6NGg1d3ZHcHR3eDRnc3YzTFN0NTZX?=
 =?utf-8?B?aWVyOTZCTnM4ZUpBbnVGK1pwdGJJSFMvZndxMStUUExmOEhrUFJJY2Z3S29C?=
 =?utf-8?B?ZWpzcVZLQkdxRUEzSm5mR2VHQXRYNkYrbzBlQ1ZFdVdQdWNMTnJXYW1OeUZu?=
 =?utf-8?B?MGg5UUsvRDlLNEgzTmNVd3NSeWc5ZkhjRzd2V01lV05OSXZteWY3Y21JdHln?=
 =?utf-8?B?RnhsY2E5d05LTy84cTlsTkE3cW1tT2dhRHc5d29XT21UOHdrNFRlT1BROG1V?=
 =?utf-8?B?V0JFYzlSSDcvdFllZ2Z1MlZkVXNNY2RRWjQ1Q2NmOHN1VVRKMTdUVWZWVVU4?=
 =?utf-8?B?akJOVnRRUk04RWVzYW40Z0VqNjBoN0tJenBrMkNUbkVHNm8wYmJYSTVJTlpr?=
 =?utf-8?B?QUY1dXFQZXI1dkxvVEx1N0RXNlAwdWZFR1F1VXFzU3VucHJIQkJtbEdKQ3h5?=
 =?utf-8?B?dzJNREQ5bzZYaCtQN1pwak9hQnJuNnhpRHZGNHM0dVVEM09HeXdMeCsxS1do?=
 =?utf-8?B?Smw4Qm9jc0E5UGNPdTVYbStPdGRlaHg1S0VpeWdBVDA3aktIWjdzWmdpZUc2?=
 =?utf-8?B?Zm05ZnpCa0J0QmZMKzhGRm94VDRDWWsvLzJrWGlOWlhJbm5USDAzYkZSczhG?=
 =?utf-8?B?MHdMUkRFK1FwMks2Y1k5VmtTT3lQYlNudEIzSGh2QlhyOWJUU29WRFJlZVJI?=
 =?utf-8?B?d3drRXc4OUZUb1piem9iVWRmL2JaeUJoT3R6dHdQcEhncS9rMk9CS1BldW5E?=
 =?utf-8?B?enlsS2h2WW85cDNwR2o1Q0swUGU0djloM3pNeGVkRy9hejB2STFvN0ZpYjBn?=
 =?utf-8?B?U1NJTm9scHlZTDNBYlBQOGJNRkNqMVhyTUdKV3R1RmM2dFA2VGdob2l3ZTlh?=
 =?utf-8?B?QzZxQnZjbFljdCtpNTdLMmcySFkvbkVWM1VZbmdhSGhlekZGOU5HVVpZaEds?=
 =?utf-8?B?Tm9KWmxTaElQdlZiRVVNYVZlTi9VM3o2ZHpZL0RNSnh5Uk5CTHFUQU52ZEw0?=
 =?utf-8?B?Tk42MTBWcVVWTzE2RmZ4RHRqSkJuTzlTWDlhMkV2UlFsNmQ4MjNZQ0RWZ2N1?=
 =?utf-8?B?alhpeVVXTTdKR0NlUkVVU2ZlK2V2UmU2QU42K0xpTlRaN2dXNURPM2xrMmNC?=
 =?utf-8?B?ZTNVOWxYNmtCTU5icitTZkkvMnB3bHZOcTdBMS9oM3U0d01QRENaMjIrSmk4?=
 =?utf-8?B?WjRaRVpISjRPcmtndEhPU0tWL1pJTU1RUDRiVDd6UzRqUDA0U1hLWWI2SUtB?=
 =?utf-8?B?UzIzYzFyNU5qdlRVdER3cFhPNjJhUHZ6cGQ2VlJKb3BvbHNEbFMrcFlwclcv?=
 =?utf-8?B?ODlnampYSitiZWN6NGRoVGs1Yjd0YnJjbTJUUWZ2eUFyVlFFU2czaG9uaEZC?=
 =?utf-8?B?a0k1dlpnc0xoWUFlVW04WjRQOXNyMTdRV0dHOHFSenE0VEd5WGFlalY1Y2xH?=
 =?utf-8?B?UHdRcHJTRlR6VHFpZ29KQ0FzZ3ZQOTBYNTFFVUh1RXE0R08xOEV6V0xzOHNy?=
 =?utf-8?B?eGQxM284SW5GRm9jMVhxekd3Wi9ZNlgyWG1zWlRxcjYwNm1xWE1Ed3pZVEV6?=
 =?utf-8?B?Y0ZvdHFwN1E4SUJwTVM1VGc2aHplVmd6OE5xTmFJcTBmOHJDbHFRalJzZ00z?=
 =?utf-8?B?NjFVWUlFb2FyaVY5dTdSQzh4NXphWk9iMGNUbjkyeUUxNEdVcFRhYVgvVWpT?=
 =?utf-8?B?QVRQZlE5RmlHNWFtYmhvL09KcXU5K3ZZeW8xUWNZZ3NaRHFmTXVOV0RKYzJZ?=
 =?utf-8?B?WmlCa2EvaUJjSWZUV1M0NzhTRzZoVzVVYXRKU2N6Z3JKUXlBZ2pFdFArTW5a?=
 =?utf-8?B?V2I3M2RRSllQeEdmRTFIZWJKbjlwYW83QUNTNjBBTGhpYmkyVURPMGJxUmhE?=
 =?utf-8?B?K0FtRmQ4YmhrcHphaWZ1dXlYN2xkbURIK1E2b3lGVXIxQnZia1VqRkNuaHI2?=
 =?utf-8?B?Y1BZbG1OenQyVUhoWkJXbFg1Vm1FYjVFeTJXUnVTYkdSSnZEcXNQTEp5aUhj?=
 =?utf-8?B?OWpSVC9EdDBReGFUMmVFVnRqVGRBL1BDRWZCcWdzckk4NFFzdHJDeVUwZXhl?=
 =?utf-8?Q?GUY0dlJrqzl/YB4U=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 819008dc-ddfb-4d95-ffa9-08de407caa27
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2025 10:35:31.0271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bpMAV2c3zm2WIwNrbWJ7vAo5S8jL5/1CdlUO6e+F9qfkczVzQgZDkhJjRILIQl5fe3Rv4/1XTe+erBqQItpdLIeC5ESG/K1fT5J10AiOBb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766313761; x=1797849761;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ljGqG6THQq6PYuaBfh2CNsm7f/Ma75IotUS6+QLELd8=;
 b=D6zIhrNHYJXGf6DQkoAcJsHBjvXLGU+fzLU7oLzO2YLbpcxAsr2Wzybc
 khgLqPN98v/NWvfZYBfeYQj/WK2oTzFLbH1zWPO/m/doQL1NqTWd4Iu2b
 +ZgOwj5QIdV3ryfRniW/2n0qNXKa7QUrdtcU2IgbD6OWAkWgH6kWnn5qX
 UDFQHGnDi/8cn89VUtAo+/qVNispbDotz7v+iISZWghjaGkNSLuS1UO8K
 PjzF4cgvWNVwZVdwK6pmOXux41hYJpmFOWgAHZf2xV8IwMHwfF8DFK/Rw
 0FPdCcsduJ1kracM4JRyHFWz8Qk67CC15c0YtwE+ML3SQfrgeZSrT3R3A
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D6zIhrNH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/3] igc: expose RSS key
 via ethtool get_rxfh
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



On 25/10/2025 18:01, Kohei Enju wrote:
> Implement igc_ethtool_get_rxfh_key_size() and extend
> igc_ethtool_get_rxfh() to return the RSS key to userspace.
> 
> This can be tested using `ethtool -x <dev>`.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 17 +++++++++++++----
>   1 file changed, 13 insertions(+), 4 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
