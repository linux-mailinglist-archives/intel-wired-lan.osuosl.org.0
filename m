Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D511CAE4EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Dec 2025 23:17:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8830040CCD;
	Mon,  8 Dec 2025 22:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LCvzQhiUaV7Q; Mon,  8 Dec 2025 22:17:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED64D40CC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765232270;
	bh=nkvZyhqY8qTC8lRTw/2MESOLgwCRzDhOJDTR2m3tVwY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nDpx3n6UTmVMCi2rm9rghrwJxWXv9xGF5qrw3EaPtfv92PMPv8EAKxdl0fXnDa11s
	 JLIxwX+2FqJp7z7fvfTVB/DERKNz7xOnV0JL9mryk705bwoSyEe2ycN1aun2wwjLaq
	 KpgPNcP1IJCA+HB9JyZguNbAeYsA5CBh8PWvZjHzNmc4rflnhOfjVOkglMy/MBjsiI
	 +tTpjTRpfyLbCTaomshf98gfkoGN3Am8UiWNyNmhCpQeA8t/7+PL0D0hcQ2eSDjfj/
	 ZePJSnIFGbI3I17XdwMO6JSduV6M0zgsc2zhvQjN9OeqmSWmu7QFuVPQythP6i3vby
	 0pS9/H/Vy60qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED64D40CC9;
	Mon,  8 Dec 2025 22:17:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BF817151
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:17:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A649B40CC6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:17:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T2bAVf9UR_HG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Dec 2025 22:17:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6A5B40CC5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6A5B40CC5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6A5B40CC5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Dec 2025 22:17:47 +0000 (UTC)
X-CSE-ConnectionGUID: FvMXKvW0RQyA3p+X17LkZQ==
X-CSE-MsgGUID: KyRmenfkSd6ieuIQ61Xdiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="71037623"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; 
 d="asc'?scan'208";a="71037623"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 14:17:47 -0800
X-CSE-ConnectionGUID: NtM6Xd73TFWX6hMVuXui7Q==
X-CSE-MsgGUID: hWa8LlWkSgCqu2Jgd+1i4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; 
 d="asc'?scan'208";a="196516061"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 14:17:45 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 14:17:45 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 14:17:45 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 14:17:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l0R8wq2MqJ1DJFP6cCYdzPzarphyDBaUiPxUyGtKk0lOSfVuK/jxFI4anjqXYXSi/SpdSTaS2pqgTUzuSbGsm+Piu/N3DNDwieSiG2Tg9C2H1gaIhEB/IdxpTpESgH9evBMnTw7opzg7TVNT3kSY27uL6jnbC8TiK3LWz7wcKr/cERKICuNyTdS9BBIFK7TmD1IXdzV5ukH7CiyF4hiVQVXbraT8p5FMvmzcBoMEdOKeLeOMXs1BHKYih0CHx9HdfjBzFnQY9CDRjuKW6OWJXUnoN5NlqtAZBKq45sRt9P1zyXvAGzD62xW5wKQGjAFnRL3GTbESfdSh+Rxix3Qk3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nkvZyhqY8qTC8lRTw/2MESOLgwCRzDhOJDTR2m3tVwY=;
 b=SN4kRSIy96Aeq8V6NvRneW/Apk6Xk5evXxxiTJvT7315BLwQWvt5Kj0gdi3oQiRBJicTUhav3/A6zgV9XTFjxCWpp2r9JDeYT9Zmju/DpJvDJf4WzSs+nFKiHZqTshSXLZ49xUEGACOl9aiLVKMwz3Fj/LPn9lwaLHiK3IZLHOKOZqv0mRMtmJyEAUW3WQNC9uP3yEfMT2drVBV+5Y5CdidSacYR31KZJGz2ySgcracLkFZImPrsK+w9VYx6DF+lFZlwycXsS1jM2wlW4YgOOdkLu46qqqxq01xqkjllmzH6MFYEmEQRDZBzXoWIX3jUxrBo14yQxZ8oTdcJZAYecw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4573.namprd11.prod.outlook.com (2603:10b6:806:98::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Mon, 8 Dec
 2025 22:17:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 22:17:42 +0000
Message-ID: <634a259a-d645-4e01-bbf2-a6f3eb7572c8@intel.com>
Date: Mon, 8 Dec 2025 14:17:41 -0800
User-Agent: Mozilla Thunderbird
To: Ding Hui <dinghui@sangfor.com.cn>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251206134609.10565-1-dinghui@sangfor.com.cn>
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
In-Reply-To: <20251206134609.10565-1-dinghui@sangfor.com.cn>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wl45iUfz3c0ML9nEY5deIpay"
X-ClientProxiedBy: MW4PR04CA0229.namprd04.prod.outlook.com
 (2603:10b6:303:87::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4573:EE_
X-MS-Office365-Filtering-Correlation-Id: 92ff7b1e-e020-4820-6a13-08de36a79af8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVB4aFlIZVBFTk05bEx2Nm8xc2Q5bUtOWHFsZ1RVZjZOeHY5Ym5hdG9JVk4v?=
 =?utf-8?B?eW12d20vVml2dlJNK1NyaXVoemE5V0s5SEhrb0F2ZXFXUEhKUVFtbVFLZlNt?=
 =?utf-8?B?Zzk3MDdyMDN4RlFsS0diakxoYThXbk5zYndmY0tPSnd1TmlEYXdGWWJQRjF6?=
 =?utf-8?B?SXNydjdsV3NGamVYeEN6T09GUDdlTWVFalRQaUJPVUpNVHhrM2NKZEhUNk9Q?=
 =?utf-8?B?UDRlRlFkM2RVdVpBSVEwZDNha1FqS3JYMmhrTEc1cEtTSGlsZ2I2RTNFeGVk?=
 =?utf-8?B?TDkveEg3NjJxRFJ6ZjJQNkVYMElpYjdjS2tZeldxelZLMXJrelFieU45RWRS?=
 =?utf-8?B?MWZweDRlWWpRWnJHTjB0WVZERW9hZjVMQ1J6Qlh6NjVqN1J6cm5wY1hOUHhS?=
 =?utf-8?B?SEdTb2FvUDlROTVzN3ZrNkp1QS8vS3dRbmcwd2J3Zk4zTW44bDZZT0tmcHVP?=
 =?utf-8?B?OGNZenJTQllBMURKYUJ5RUp5YzFxNE4rWm1kakRRMWE2b0Q0cmFJUHExeUVI?=
 =?utf-8?B?RDdHaXoxR1lnR3FoMnc2RG1idi9kSkRNc0VUZkw0bzdvNjRJSUVDTWJFV3Jn?=
 =?utf-8?B?VHVWaG1Nc2RoWHc3Z3ZpbTBXc0RLMjFKUU43TVVaWmo5am8zUjlJRjd5bTk4?=
 =?utf-8?B?anNqZzZzMjB1UExpcDlHYldySXN3S2NSUW1kaWxTQWhaRGtzWlBaMFdjU3Ja?=
 =?utf-8?B?Yk1GUGtiL1NLMjk0Q0tEbWpiYXJWZXRtUDk0MG1UbDVwTGJ4NmF2bkFrSGd3?=
 =?utf-8?B?bFJtbFg4TWhveDN1OUxqTWNpN3NCUU9vNEI0YVZ4UXArYi9FQm1uMTNzNTds?=
 =?utf-8?B?c2NJZHVyaGdOcmswaklLbENsUnBQeE44UWNmK0xrdTluZDRCY1preHltRHJx?=
 =?utf-8?B?SGUvbTF0Sm5IdjdDVmpwVVBSSDJCd2dGRStJNXpsTnppd3lra3lYcHdnaHFM?=
 =?utf-8?B?VVFTci9jcVJrNkZBVjl1cG5JTGs5c3pvL0p6Tm95bUtPOWF4eVRPUTdieHlB?=
 =?utf-8?B?dE5MTklNMzYwUUJOWmZYME50dnZoRHFzcm1PZkF5OWNmakZ5SE5ZdnNycE1s?=
 =?utf-8?B?OFpWRjhTQmgxZDlmK3A2S1ZtTDZpMUxRVlBUNUxQcFdBb01MMUpZd2ZjUS9w?=
 =?utf-8?B?amphanNuODA0OTFEdFEwbzMxUnVoU0t1ZlErVTZTaHBsVm0xK29rL0pzNHR6?=
 =?utf-8?B?YmcrNGdVTnYrSmoyN1phakxzalp0MTFwemVNZEVBTjVNU21CWW1tcnltTjJV?=
 =?utf-8?B?WjN6MjcrOVBrNmd5QVZWY0h4cE9YSlBhUm1oTk0xdG81OC9qNHV5bmxhTUY4?=
 =?utf-8?B?M0R5cXQ4eFJsY3Z3NEJDdEFUS0VuTTBzZzBiQVF2WFVWVTZIMFJTdVF4RmV1?=
 =?utf-8?B?ZUYrTGhaSU1yU0VOZUREdU1BdDNGSGxpQ2VlNDE2NGMrM0JaQWFJRkFyU0Zs?=
 =?utf-8?B?RWt6d013WXJqQy83cWhnSzdpSmdidmNodW16WVY4M2FuSmdXNW1WZzhZZVV5?=
 =?utf-8?B?VGRVY1J1dHpjRUpxSU5KQmREK0d4YWxRUzRyZ1lOcTM5ekRjMysxT3RuMWQ5?=
 =?utf-8?B?NUR2T0EzWjFZcUNvbk9RaXl3cE1kNFpya1RZWW5iaUVzTUtMNUxJbGVydzNJ?=
 =?utf-8?B?dzVCSDdRQjIwREFkR1lTajdzUmdMMlJuV1RJQkMxT0RrSXJ0R0FTSVhqRDc2?=
 =?utf-8?B?dEdDT2NvYys4aG1aUUJkVU9udGRwaGVkL01FeFhrcmJFbW9TRkQzYmNOMDZD?=
 =?utf-8?B?elRUQmZWSmdDc292QUNiM0E5bVhpb1JURlUxS3BYTGtBUkt2MnVZVjAzWktu?=
 =?utf-8?B?SW92UEc5ajJ5S2VZNTRJWnJUQlBNbDhFRHdwVTJzZEp0ck1WRzNSMW0yRWdI?=
 =?utf-8?B?aUlnV2ZhOG9SUXQ2bUlXVVJFK2tBS0tJeU14QitvR0xIdDFZRXJ3RDdHYlU2?=
 =?utf-8?Q?5vmdOdz9SjF7Ypn0RATb1er3fTQcGUR5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGVDMEpwS0lqdnZacTJCWE44eXZqS0JXMzlhSEp6RlZucm9aRFEzeVpXd0Z1?=
 =?utf-8?B?S2hpckFSV2dlMDdrazkzNk5jZWtBV1VmbU5wWlFxV3FPbFYzR3NxT2hiSXJV?=
 =?utf-8?B?SEdvMkdZT0lCWlF2VCtEa0w5RUlXVGFYQnFnL1ltV0hTTUtJbHVWMUpobWY5?=
 =?utf-8?B?bGFrbUwzUzI0eU1XK3BlbFpieTFiN2QzSmtKR1FuQ3NkbDJ0eXdrWC8xdU1a?=
 =?utf-8?B?RnliMkc5bDYxdmJ2L1JDQmJ4Y3RTd0lCcU9zczVSbU9uUlY4cHpHdC9aZ3Yw?=
 =?utf-8?B?dHorOVVLV0RqMjNtY2JZakVWM0VhdGV6UWJSUUs0M3lPQm0vczFTWGNOcTYv?=
 =?utf-8?B?ampOMy80c1BDRUtCWERZWkRhOEhsOHhHcmRPNEVJdWMzYk1zNDNBYk1ZOEpC?=
 =?utf-8?B?bVU4WEwzWWFhWlFEK1NadzRzaTBYeHRobXNwOHgwdDhLNEpPNFlsa1VxYmdI?=
 =?utf-8?B?UFVUbU43S0xBV2lpM0JTa0hyWWtoRTJNT2d1VzJwTXlXaFBJa0Z3Wk9PWUpn?=
 =?utf-8?B?a2dvSUx1a1VNYVkzcDR1eXhKT0FiRWpBL29BU1lGdHVVdmlhM2NsVU81VXMy?=
 =?utf-8?B?cXlBcDR5NVNGKzBaWDJoWktsNUhOODNmdmtuRmZnUndCL3BxVDVSMlp1SUNJ?=
 =?utf-8?B?blhvdmt0OTBHVGxjdGRJRFQ5aS9YWkRhQ29zck1WVHJ6L2tIQlRUZHVBYXl6?=
 =?utf-8?B?Wnl0dGVhb1VDQ01LVHAwOE9MZ2hNZjQ4Ym40RnpyaVZ4a2VEaEFlbFowZnVp?=
 =?utf-8?B?WlE3c25JSTNJWW5JRTNaNXVNZFZQQnE2UFA4M0w5TjI1TE41MUF2ZGlxM0lt?=
 =?utf-8?B?NE56TXZsZnk3MVQ2U2JZRlkvM1VUQk8rdGxESll1OG5BVmNPdWpnYytEdXZP?=
 =?utf-8?B?R0YxekdZVC9NYS9nMFhINno0S01QWUlqV2RWREVxSUhtWmpBNUlmWXRhN2ZH?=
 =?utf-8?B?SCswNjN3QUtrQlhSRFJWbEZVdklKQ1htNEUzcW5WNXp0VzZIRnBrR3ZQcGIy?=
 =?utf-8?B?NmtRemZVZ2xIYWRWWGxLdWR0TGEzNVRnTkNjcWhjS2IvdElxSkVMVHNGS1Qy?=
 =?utf-8?B?TjB4TnNiKzhBZTlwMkRHbm5UMWxmNHk5NzM0Zkp0TWQ2cHVVYWFFZTU5aU1z?=
 =?utf-8?B?YThTcXljTzVqQ1BUZEZ6U3hBNHljd1prbk1aZzVOKy82N0hmN21FcFdZcFM4?=
 =?utf-8?B?OEdQQ0czMHVQdVMwQmprbFpRVnBjNCt2STRXUlpVcXdhS25yVEsrWVR6enBv?=
 =?utf-8?B?VDJxdHpqUGpjQlpYUjJTWXB4LzR6dHdsNk5sc1pHbW4vOE0rRmZ1SUNZMmgv?=
 =?utf-8?B?dVNhWmlpRFZqQ1UzVytUbDNLMWFMdWVRaWdDSlFHRmpKOTIxaW52LzNGcUJt?=
 =?utf-8?B?R2FQZSthTWF2aU9YTFQ2eGtjMjdXdmY0NWFPNzFpNDdNWmtDYm0xRU9MWU5G?=
 =?utf-8?B?TDJKTGVGWml0YnlhaXUvc21saVVmbGE5N055Z0w4elB3QXJFTUsyeTJOUk5L?=
 =?utf-8?B?NTA3bHRGaWhtRlp0YmdsZGtnM0syMEU0QXFEYVcxeXgzZW16QUlGRlFHa0F3?=
 =?utf-8?B?bm5nOFlOY29kRkRJNTdaWUpjbEZubmY0VzhFTnBGRmsxcXlZY1dETVNMLyta?=
 =?utf-8?B?OCtqblVOczFUS1NkbjRBUURiVktQNU02MSttb05PTjY2Sk5Qd21IU2hlTGds?=
 =?utf-8?B?WWZMLzNNaHdRbFozYWVzdENLMDZWRjhXSm5zNFJwcE5sdEkvSmRZWEEzank3?=
 =?utf-8?B?Nlk1TlJrajBJT3l1RHhIY3RrWDhud1BsTVZxbmI1TlF2SVUrRFByZHVOYWM0?=
 =?utf-8?B?MCtpRmNWUGZzQ2Uwd2ovOHZpMzhtQzYvSndhWGg5Qk04WVFIM0trMEpkQVF5?=
 =?utf-8?B?N1Ewc0p5b3RXK2tXNmQ1cTF2MzNXRTR1WEFlc3NYNWFVVEZyVm5yTFYvS0J4?=
 =?utf-8?B?N04xNU9STGR2OVQzSzQwaFZDRnN0VnNFdWltSHhIMnluTmpkQlI2OCtUQVNV?=
 =?utf-8?B?Ty9hdmU1UzdScWp6RTlzMk5mY0ZwMDVmWmNNNXloYmVpemI3ZmY2bS9vZ1Jr?=
 =?utf-8?B?OUtqVHZTZUdWaXNhQ3JoMEsvRGlsRzNnZzRLN2ltTERTYWpYd1laMFBmc2Jt?=
 =?utf-8?B?RnFKeHREaXJwSG4wTGw1Ykc5WnpkaEwwMUhIK1RpZldTb2tFZGFyeGdVMisy?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92ff7b1e-e020-4820-6a13-08de36a79af8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 22:17:42.1477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BM6P7hkfPAhtOFXWIJP9Qc1rEWPrrSmqlEyf6xXNyeoyHDyf9aWw+0UHgT7+1mTad6mxsxdROLuhspsL8wSRKTwVgnUFcAnJxAnanbEIpzE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4573
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765232268; x=1796768268;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=H/0HH/lVZrimL7hdu7dnxwlqXuW0A+BcdEqW60bbwl0=;
 b=UPuZH+rNBtX/N5ts6wtlLz3mxowXhxa6pAknYBLaiPWKkfH7Hpb7/P4x
 9pYr0/evAoE3KDPPskDVLTVk0j7LPm0f21LCBD6/7JZs3rQzxd3rf8PS9
 X/xdmq26KHLcNlT3I+1VOPCPjtFzU4f4xBt+3g/e2M9sigTMRtucxJMWN
 AE+rpQY+Ka24IJSq5c50XeNDTADDaEZxa/G1s/WAimfjf3HKgw80zYIzh
 kOCDUgFsdLmPTB2s5W01oNZEZArja1uDmK1B9o03EfHDr9fOuWdHEXHbw
 X7xUqKAMWaQehH7BYbZJWl6lGk8GUJHMLm1QFznq9CiQmHLtHSFbRMUF1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UPuZH+rN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [Patch net v2] ice: Fix incorrect timeout
 ice_release_res()
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

--------------wl45iUfz3c0ML9nEY5deIpay
Content-Type: multipart/mixed; boundary="------------VtZ6cQt8JwQctfhJCNJwNrLs";
 protected-headers="v1"
Message-ID: <634a259a-d645-4e01-bbf2-a6f3eb7572c8@intel.com>
Date: Mon, 8 Dec 2025 14:17:41 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Patch net v2] ice: Fix incorrect timeout ice_release_res()
To: Ding Hui <dinghui@sangfor.com.cn>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251206134609.10565-1-dinghui@sangfor.com.cn>
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
In-Reply-To: <20251206134609.10565-1-dinghui@sangfor.com.cn>

--------------VtZ6cQt8JwQctfhJCNJwNrLs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 12/6/2025 5:46 AM, Ding Hui wrote:
> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
> to microseconds.
>=20
> But the ice_release_res() function was missed, and its logic still
> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
>=20
> So correct the issue by usecs_to_jiffies().
>=20
> Found by inspection of the DDP downloading process.
> Compile and modprobe tested only.
>=20
> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_=
sq_done timeout")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Thanks for catching this!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> ---
> v1->v2: rebase to net branch and add commit log.
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/=
ethernet/intel/ice/ice_common.c
> index 046bc9c65c51..785bf5cc1b25 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2251,7 +2251,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_=
aq_res_ids res)
>  	/* there are some rare cases when trying to release the resource
>  	 * results in an admin queue timeout, so handle them correctly
>  	 */
> -	timeout =3D jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
> +	timeout =3D jiffies + 10 * usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT)=
;
>  	do {
>  		status =3D ice_aq_release_res(hw, res, 0, NULL);
>  		if (status !=3D -EIO)


--------------VtZ6cQt8JwQctfhJCNJwNrLs--

--------------wl45iUfz3c0ML9nEY5deIpay
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaTdOhQUDAAAAAAAKCRBqll0+bw8o6Hzi
AQCq04MzhSmQWLw5OUsO110D+KUORHpl8ugxKOKK8mH+RQD/cT4td4Z4uwMSQt2Nr5/1k1SRZ7LN
7qentNxC0aU96gc=
=yQ/9
-----END PGP SIGNATURE-----

--------------wl45iUfz3c0ML9nEY5deIpay--
