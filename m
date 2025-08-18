Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA17CB2ADF8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 18:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 614FB60610;
	Mon, 18 Aug 2025 16:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N1ogkWkNUb-Y; Mon, 18 Aug 2025 16:21:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 964D960605
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755534118;
	bh=XzX/2RmCH8E6QVEFIVh1ELp7KHeXlUmuOsg7COxebJM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tL3OYId2HZMQJHFVoZtv5lycNt8Ns3hGbe4zUwNK41OgPn6LP24IkJtt48VWAwAqw
	 iRSmcieAZdVCpFXLk8BYVSdPk9hBU/CuXn4yrbPacBkecEUnsz+Dn/YQ7oP8CilWCb
	 mujn1h+NuUnL282IYlxPKFZOk3V4i6ZnnIJu94PpyrR76RLWhnpnKh+TwuQGWJF5Xa
	 H8Pgns8G2b+fbDt3h5FJY2A959d6iu7egqyDf1xgnNi2cG5Uuw3YZjrDuMKgT2Bg1Q
	 i0a/WCYwyBDJeSdtg0OzGAI8WZ2ULgXAPLHZBh6Oe0N2sXX1R/THuNavajHG41kGmp
	 5KsDwEH8gwLfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 964D960605;
	Mon, 18 Aug 2025 16:21:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FC8B75
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 257B9809B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4IMa0ogL7dkN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 16:21:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 552CC809BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 552CC809BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 552CC809BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:21:56 +0000 (UTC)
X-CSE-ConnectionGUID: aR6t8OJMTq2Nue0fGmzMgg==
X-CSE-MsgGUID: RR0VKNGyRyOkz0yJx7BVRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57869336"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57869336"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:21:55 -0700
X-CSE-ConnectionGUID: FD4EE4ojQdKr4AKzg/WLMA==
X-CSE-MsgGUID: AyTIX8/aTo6WWyYB+qOyzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="172040467"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:21:55 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:21:54 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 09:21:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.62)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:21:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xBa0UWoudzC6qULLD+O3CjZ9HrGaPMuETss8tiRW7JbrXplkMj1UvZA9ckJ14XH2SfW3xAuRTlRmY/Nc4BTkatrPOXzi1yqtHgJ1NNpi1M0eZlrq75TxLOZUKSbGCHZ5Z/2zv5Ew3AwG3fmO+3+P2ttb8MXizatmTQS0u/IaJg/AVCdIIXGJq8ejirl4/6cfad8LXjCwvkcdZDvOIi9RVOlC1q7GqXhlmS+5rw43Asbtt7uxWQ1+jwaZtRHRlP81+yQaIl5p5BtqtBPqHy1gno6uwyA5wNdgJ3+69ZOlIKMB7dcKKMx4Gvc8I0vSD1r4U5Iwm/j4h+RFjghe18bUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XzX/2RmCH8E6QVEFIVh1ELp7KHeXlUmuOsg7COxebJM=;
 b=TBUibHQRL5Cv4fizh38ILZ/KgPBtRmzc+4MuQGVms6MPciAvJOFxhMckybWyeRBFVBPORMOO3Nl2PvMvx9KQnZEF9I9hUB7aQBjr8srUyJwL5EEI6xTTRi37cwL6P6PKnQYihaOuspYVGe0PZ6cp/p7LzH7JLTEqb0KLR4bvKDEof9oOa3ckZheNgtVS8kmOlrQa97j1SjLLw7OMrgC3zF2aqQI2FkWPebXkMwWk8PIAIdEc/kHdNEhRavQzhHtz29c1o3PEGZ0QmyejCPZGzEAxh6TJbO2p3a77qqvCXW+MaH9Hqb8UA2dm8qco5XSq1x/YPc46SFo1hl0ZDjs5jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM6PR11MB4689.namprd11.prod.outlook.com (2603:10b6:5:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 16:21:52 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 16:21:52 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Grinberg, Vitaly"
 <vgrinber@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: don't leave device
 non-functional if Tx scheduler config fails
Thread-Index: AQHb9zwFTiE3u7wgXkCkvS0ikSH++bRom07Q
Date: Mon, 18 Aug 2025 16:21:52 +0000
Message-ID: <IA1PR11MB6241790ABFEDB11D36C933098B31A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-2-e113b2baed79@intel.com>
In-Reply-To: <20250717-jk-ddp-safe-mode-issue-v1-2-e113b2baed79@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM6PR11MB4689:EE_
x-ms-office365-filtering-correlation-id: 11394155-c39c-4ce9-c5ec-08ddde735740
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OWxQaU9yQ3d4SExvOWl0eStxM2dPZDQxUUUwY3FJdW5NdmFOMHV1bU9Lc0N3?=
 =?utf-8?B?eWhWTzFMc2dQWHlRNlZNQ296REtOMFlNWk93TEJEamRGS01UelRkTnNlQitC?=
 =?utf-8?B?UittNjE2ZEJSa3JFdytjaUZ0VlhxbFlaeU9JL1UyRTVWcVhYZ29lZk1XRHJP?=
 =?utf-8?B?SGFhcnBUcGJ6RDZRSnpGN085NEhSMmRXSHhqWDFFVmxsdXZ3Vng4aHlPQ3dT?=
 =?utf-8?B?VnJUQlJtaEovL1U3aDRiVzhQbTJ5NTExVEZoZ0pFL2JPK0RLdFJsWlptUFVR?=
 =?utf-8?B?emhnU0EwWGJCNTNhNk0yTmNvNUlZYjhKNk92blliNVM1WDdXM0p2THZnK1VV?=
 =?utf-8?B?bTQ0bmIwUkZtYWZYNHQ0NkY2dVo1bWtnVkVJU3NCa09ueWxNdHc4MUhGOFkz?=
 =?utf-8?B?eVpjSnpheWpMK3dkajZiMk9QZDZ4bDFHT2t6YkFrOXd1aWZtc3hpSVdaTXAr?=
 =?utf-8?B?R3RlY2FIOVd3aTJiWEhwU00rbzFlY1ZlNnFGcUxhNTdPTTlKRTVLd2RreUU1?=
 =?utf-8?B?dVFzdm5Pd0pDOGRFSFVPZmFselRsNWxiRlJyL0J0Y3M3Vzh5SEI0eEVRc2Fj?=
 =?utf-8?B?TEFnWU9TU0ZIQ3JiZzdvYTdBa0M1WnRsR3hrc2FKcFI5OGxuNDUwbDdlYVh4?=
 =?utf-8?B?ODNOTjU2RHdDNnA1Skt6aHdORUdkYWpjU0FsdTVrMzcwS2lERkkzaDI4ZVFN?=
 =?utf-8?B?VUI0eXRwd2xBeVlDYXdqRjhZb1dGN29UK0ptUjU1ekNqR204OHB3ZVVCVW5C?=
 =?utf-8?B?Wmg0UHAybE9ZUDZjTnFvVVoxd0p3bDFEd1ArSGNRODZCaXVXekZDdEN5d3ZW?=
 =?utf-8?B?VDhUNFNlOFRBQUQwdlhGOSthVXV2ZHhZK0phTSt4bDYvQ3BVV0JPbHlyR1VT?=
 =?utf-8?B?aFJ5ejVXTWhhTExUVVpIWmh4bE9aMkt2TDExaHNDcFg3YTc1aVlmS0dIOCt0?=
 =?utf-8?B?MmZsZ0NZeW1SMmJKOXVNOXRmUUNtMzIwY00vL0NwTFBIMFZuNlh5WjcxcThI?=
 =?utf-8?B?c05uZ0Q3c2VvV0p3VXVyNzlhaUdjQk8xTUVnRnpGdWNKUFdMWkxZaS9zNUxo?=
 =?utf-8?B?aFhRV0crbElkYmI3SFNFTWcwUmFJODBGbmxSRXpaeVlOQy9xWVRTNENZUWE4?=
 =?utf-8?B?VjduL0ZnUDU0WUpYT0o2R2V0YU9SWXhYdXRGQWs3TGd1ek8rTUh2bEE2TDd2?=
 =?utf-8?B?UTlnNFpyVk9IY05vMVJhc1laOW9ZeHpuVTc2U2xCZ2NhMUhlNzhqZXhldkpD?=
 =?utf-8?B?YUJZRHJjam5SOG1GR0h2b0ZBMk5CWkhJOWpNelR0Ym9haUNiVi9BSEQ3MU1q?=
 =?utf-8?B?ajBXZC8xaWVmZFQvbitNbHZadUJ3RTA5cENIYWY3ellET0hzWVlrdHRpZERr?=
 =?utf-8?B?QkJiTEtOTnJuZVdEdWJCaEdGMnVXdWtrMWZFV0xVM094aUxIaytNMXd6RDFI?=
 =?utf-8?B?VldjNEltUGJYV2ZwQSthRGp0QmlSenJaTG5RV0lQWUhiTG13THV3WFE5UzR6?=
 =?utf-8?B?MWFVQk5JRVBSZnVBSnpsbUZFV1lCQmU5RXNST0lxQTRmZEptajg5Vzc1ekJ0?=
 =?utf-8?B?S21hd2JDeldxZGppSkZ6ZFRuQzJ3Q1p6VURySER4SU9BUEtFekQ5NmI0L0g3?=
 =?utf-8?B?TXFyd1dlVlJJT1Exb3Q0VnZVOGk0dDBCL3R4SmFadXcvY2t6Tmh1ZHQvaHBS?=
 =?utf-8?B?N0RDS3l3VDgzdDBCUEx3L0xBR2lKTFVYVkxvMUp0bWpTUUpMblRzZW1XMFJP?=
 =?utf-8?B?T2hXOWNHc1FOeFhvc05OT21lTnFScngvZExhek5kWE50dFBTUklHVGNjeDla?=
 =?utf-8?B?MnBBZFQ1SWtRR2pBY05maEJxTnBpMXM4dnNFR2FvcGF5bXVmME5SSWdKYllm?=
 =?utf-8?B?ZFBZZHQzNWUrZGordjVNRGhqRWdvYmJDV3k1bnlZVjdUVllJamZEWUxRcmdl?=
 =?utf-8?B?QUJVSzB6ZDdqVHBzbUlHNytzNUJHdFpHVGkzdUlOY3RpN0U5Y3lhMk14Ukt3?=
 =?utf-8?Q?go2Uufhz2lsBCV00B8qAeQeL2CcOe0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak9CaytiM3liUllQc2xXZzdmd3E2amNnMmRURXBtVzA0YzQxTjA0aEc2RWg2?=
 =?utf-8?B?QTg3Q1dVdThHeTFXeng2eEVFWE55dEhPNnp3QXFmdHhkOFJhak1GODVjZVgx?=
 =?utf-8?B?WktPMmduM2E2OVRrTVZaRy94QUdVNmVXaUxCYndUQUhEMVNMS3lJenBQaU5J?=
 =?utf-8?B?UndlMkErc25IdFczaWQxbFRnVXJsMit6Zjl0YmpEZUlPTTBoVDNNTjh4THFQ?=
 =?utf-8?B?c2pJTGJybmRuUTc2R055NVljQ3RIK0hON2dXZ2Q4bFVPZWEwUUhwM0VUQVhu?=
 =?utf-8?B?UEtURjFPTHJ3RXNYTnNXaDdoNldZeVlaTU5VYUd0dEdtOFpOblNPajQzOXdY?=
 =?utf-8?B?VTJhekN5ekpuS1Y4YlVjcUkwOStIMEZJenJRM1JTTG9Dc0ovSTIrbHpzT1Av?=
 =?utf-8?B?ajJnS1gwWVlaUmxiSnVoZ2YvZmNYMHQvNC9ZU3lINVJhSS95TC93OHFqZVRv?=
 =?utf-8?B?RWM1VzM2emVWb1VVOHR5ZFZpR3JDRktWdkxrZnFsVXBuSkh6M0JBSnoyMC9O?=
 =?utf-8?B?Rmh4Nis3U3pWSDJiVjllUWErUGQvcEphUk9YRFpiMmhIbDRIalI4Y0J1RnZY?=
 =?utf-8?B?ZHE4VG50YzdJYUVLMURtc3Y1RWpLNDRXL3Z0M3pOWnArWll6TmdsVzY3MVdl?=
 =?utf-8?B?aVIvRjlpTFZOck0rWHd4YlltVmNjdGVpVEJkMnlsYzhjZ0xWbEx0QTBPVUtl?=
 =?utf-8?B?N0h6SjhMa0ZVdmRITnpaVzdpTWhZNGdab0Zyd214MEU2RU9IZHRydHRKdGFJ?=
 =?utf-8?B?dElsQ001R3JHNTFkSlJjcmMrQzBBNEFpckFYTU90OFFxZ2laOFNLTHMxZDdM?=
 =?utf-8?B?dTFEY1ZYcHlkZ3lDUlZ2a0xCRXU5aW13b0g3NGxUYVZHMExmZkRTcEFlVk9m?=
 =?utf-8?B?azA4M2Z5a09ldDk3TCszRUpCVkxGWVpQcW1lckdYVjNLRkdHaks1SWIzUC9a?=
 =?utf-8?B?YS90TXlmTVhDM2RUaS94a3h4Q3RyL013ZTEwRXhmUzQ3d0VyNjFlTFNUWUlS?=
 =?utf-8?B?T1U1bWVGcFpMdkRHY1JJN3NHcHlFQVJvRmorMHo2ZlVsYXZnbDhtZzREVkhK?=
 =?utf-8?B?VnVKTlRZaXlIQlFBd2diQUxyYVlPZm1taVJSWnVmdkZUL2MxUEkrQi91ekpL?=
 =?utf-8?B?MCs2ZFJxcEg0ZVdqQ0F2ZVlEd3BjQ29TakcxZHZLUnBIbkxvcGltNUk3cnR1?=
 =?utf-8?B?T1hlNE9ZUnNYaUIxcytLZzNzUm00WFdpaWxTd2dXSVN4MHpBSzJkVm8vUy81?=
 =?utf-8?B?cStERDV3ck9WeWhnTWlZbU52azdEQWdqMlNRUWRpSHlPOGtLcU96c0RmNWw0?=
 =?utf-8?B?a1JNT3NYWlgwNUlNdWFwMk1xcDVueXZYeXBaaHZUNG1JSHVvRkRGL09JbUpI?=
 =?utf-8?B?NUpLVlpMYzBZUHR0SG1lbCtodVRxTyt5Z1YyVHdTQTd0dlR5NHQwdXhCZXpq?=
 =?utf-8?B?UG4vN1RseWJhbG05RklXWHRQd3pTMG5JTE1ia2pHelBLdHZVSzVMSGhpR1Zl?=
 =?utf-8?B?bjNVK1J6RlZoekY0Z0g4SjZIWDQzWFdYZUJQbllCSmN1c0h1dzhpMWMya3pK?=
 =?utf-8?B?NHhjT2VlZEV6QVdMblljRTkyaTcvc0JTR21nalkyMVV0RkJtMlE3YjJmVHlt?=
 =?utf-8?B?UU1VUDZYKy9GQ3ZDWStRU1c2UFpkU2p1ZVp0YWZUa09ZU3A4NlU1T3VhNElt?=
 =?utf-8?B?MUZvMk1JTTBleFdGUGF3R3RSdUNoeFJyTFVhcmFMbHFDWWNSc0xOdlZzNzVu?=
 =?utf-8?B?SVQwcUhaZTVaWk9hZUlmWjl0bGtTQXhUZlFVTkxvbHVxQUhWQmhFRXhFNzVX?=
 =?utf-8?B?TnlnZ1pWNjF0WDAvQ0E2Y2VSVHo2OGI1MTBBdTRqWkYySU9QYXpVVU5zMzFL?=
 =?utf-8?B?Q1RhRzV2WVNvdXJUZ25kSGZLaFBTK29FVEFGMnZsVTltUTQxRlhwY2pLc2Ir?=
 =?utf-8?B?TXJVMDd1RXE4NXZ1Z21YQUVLVEMzMmFBbkt3MlQ0cEp6RTlNZ0ZOZURzSFNp?=
 =?utf-8?B?VEthbjhIYU1yU0NWSlROMndmVzJaUEdDVFNzUWpLMzVtQjF0YmlzRWw3cWg5?=
 =?utf-8?B?OFdCS212am1qV0g4M2plNWIyYkVqOGRuYWRxbTArQVdzYnpFcHFVeElWZU9F?=
 =?utf-8?Q?ovaHyOwHXxEl3utdc2BVSFyCy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11394155-c39c-4ce9-c5ec-08ddde735740
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 16:21:52.2622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ImG01FV3lwduC522t2RDcwL0k0V+FbQnAMMi8SZjrcczlJoPkw2LSo7RdxYYVl2fa+4ZOmu/WATCV7Ka64YvGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4689
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755534116; x=1787070116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XzX/2RmCH8E6QVEFIVh1ELp7KHeXlUmuOsg7COxebJM=;
 b=AP2S6qocl2rQu5vghvBWUhkWHCDNhWXiiF8P61aw8Vz1FBGnDJDqLLz3
 sDGqpKYH66YWg3YCFhv4LKrZ++iEIxs7/FHTg44FmZT2a8174Z4Oe4pRk
 KzTAbqxKknJknVd8zviwd9wclYQ50Q8ARAdGfuUaN0h3ssxUMgYfJhROO
 VO4kf962btEuwIAQjwBeH7vuVcAZSQ8fNqSMLplFRbyzHtrSLjiY7yC7F
 1ACVVAE0lNZvcJsazJIo/BAdEo5sFZQDYfuoe5ecVS7mJ1JQAGltJu+bB
 tmcn7W6R5VrxgZr3MwrYBDvQZilRS5cXlAwI301zLA0Ub3PIPBdGHI16D
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AP2S6qoc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: don't leave device
 non-functional if Tx scheduler config fails
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMTcgSnVseSAyMDI1IDIyOjI3DQo+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBMQU4gPGludGVsLXdpcmVk
LWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5s
b2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBDYzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxl
ckBpbnRlbC5jb20+OyBHcmluYmVyZywgVml0YWx5IDx2Z3JpbmJlckByZWRoYXQuY29tPjsgbmV0
ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
aXdsLW5ldCAyLzJdIGljZTogZG9uJ3QgbGVhdmUgZGV2aWNlIG5vbi1mdW5jdGlvbmFsIGlmIFR4
IHNjaGVkdWxlciBjb25maWcgZmFpbHMNCj4NCj4gVGhlIGljZV9jZmdfdHhfdG9wbyBmdW5jdGlv
biBhdHRlbXB0cyB0byBhcHBseSBUeCBzY2hlZHVsZXIgdG9wb2xvZ3kgY29uZmlndXJhdGlvbiBi
YXNlZCBvbiBOVk0gcGFyYW1ldGVycywgc2VsZWN0aW5nIGVpdGhlciBhIDUgb3IgOSBsYXllciB0
b3BvbG9neS4NCj4NCj4gQXMgcGFydCBvZiB0aGlzIGZsb3csIHRoZSBkcml2ZXIgYWNxdWlyZXMg
dGhlICJHbG9iYWwgQ29uZmlndXJhdGlvbiBMb2NrIiwgd2hpY2ggaXMgYSBoYXJkd2FyZSByZXNv
dXJjZSBhc3NvY2lhdGVkIHdpdGggcHJvZ3JhbW1pbmcgdGhlIEREUCBwYWNrYWdlIHRvIHRoZSBk
ZXZpY2UuIFRoaXMgImxvY2siIGlzIGltcGxlbWVudGVkIGJ5IGZpcm13YXJlIGFzIGEgd2F5IHRv
IGd1YXJhbnRlZSB0aGF0IG9ubHkgb25lIFBGIGNhbiBwcm9ncmFtIHRoZSBERFAgZm9yIGEgZGV2
aWNlLiBVbmxpa2UgYSB0cmFkaXRpb25hbCBsb2NrLCBvbmNlIGEgUEYgaGFzIGFjcXVpcmVkIHRo
aXMgbG9jaywgbm8gb3RoZXIgUEYgd2lsbCBiZSBhYmxlIHRvIGFjcXVpcmUgaXQgYWdhaW4gKGlu
Y2x1ZGluZyB0aGF0IFBGKSB1bnRpbCBhIENPUkVSIG9mIHRoZSBkZXZpY2UuDQo+IEZ1dHVyZSBy
ZXF1ZXN0cyB0byBhY3F1aXJlIHRoZSBsb2NrIHJlcG9ydCB0aGF0IGdsb2JhbCBjb25maWd1cmF0
aW9uIGhhcyBhbHJlYWR5IGNvbXBsZXRlZC4NCj4NCj4gVGhlIGZvbGxvd2luZyBmbG93IGlzIHVz
ZWQgdG8gcHJvZ3JhbSB0aGUgVHggdG9wb2xvZ3k6DQo+DQo+ICogUmVhZCB0aGUgRERQIHBhY2th
Z2UgZm9yIHNjaGVkdWxlciBjb25maWd1cmF0aW9uIGRhdGENCj4gKiBBY3F1aXJlIHRoZSBnbG9i
YWwgY29uZmlndXJhdGlvbiBsb2NrDQo+ICogUHJvZ3JhbSBUeCBzY2hlZHVsZXIgdG9wb2xvZ3kg
YWNjb3JkaW5nIHRvIEREUCBwYWNrYWdlIGRhdGENCj4gKiBUcmlnZ2VyIGEgQ09SRVIgd2hpY2gg
Y2xlYXJzIHRoZSBnbG9iYWwgY29uZmlndXJhdGlvbiBsb2NrDQo+DQo+IFRoaXMgaXMgZm9sbG93
ZWQgYnkgdGhlIGZsb3cgZm9yIHByb2dyYW1taW5nIHRoZSBERFAgcGFja2FnZToNCj4NCj4gKiBB
Y3F1aXJlIHRoZSBnbG9iYWwgY29uZmlndXJhdGlvbiBsb2NrIChhZ2FpbikNCj4gKiBEb3dubG9h
ZCB0aGUgRERQIHBhY2thZ2UgdG8gdGhlIGRldmljZQ0KPiAqIFJlbGVhc2UgdGhlIGdsb2JhbCBj
b25maWd1cmF0aW9uIGxvY2suDQo+DQo+IEhvd2V2ZXIsIGlmIGNvbmZpZ3VyYXRpb24gb2YgdGhl
IFR4IHRvcG9sb2d5IGZhaWxzLCAoaS5lLg0KPiBpY2VfZ2V0X3NldF90eF90b3BvIHJldHVybnMg
YW4gZXJyb3IgY29kZSksIHRoZSBkcml2ZXIgZXhpdHMNCj4gaWNlX2NmZ190eF90b3BvKCkgaW1t
ZWRpYXRlbHksIGFuZCBmYWlscyB0byB0cmlnZ2VyIENPUkVSLg0KPg0KPiBXaGlsZSB0aGUgZ2xv
YmFsIGNvbmZpZ3VyYXRpb24gbG9jayBpcyBoZWxkLCB0aGUgZmlybXdhcmUgcmVqZWN0cyBtb3N0
IEFkbWluUSBjb21tYW5kcywgYXMgaXQgaXMgd2FpdGluZyBmb3IgdGhlIEREUCBwYWNrYWdlIGRv
d25sb2FkIChvciBUeCBzY2hlZHVsZXIgdG9wb2xvZ3kgcHJvZ3JhbW1pbmcpIHRvIG9jY3VyLg0K
Pg0KPiBUaGUgY3VycmVudCBkcml2ZXIgZmxvd3MgYXNzdW1lIHRoYXQgdGhlIGdsb2JhbCBjb25m
aWd1cmF0aW9uIGxvY2sgaGFzIGJlZW4gcmVzZXQgYnkgQ09SRVIgYWZ0ZXIgcHJvZ3JhbW1pbmcg
dGhlIFR4IHRvcG9sb2d5LiBUaHVzLCB0aGUgc2FtZSBQRiBhdHRlbXB0cyB0byBhY3F1aXJlIHRo
ZSBnbG9iYWwgbG9jayBhZ2FpbiwgYW5kIGZhaWxzLiBUaGlzIHJlc3VsdHMgaW4gdGhlIGRyaXZl
ciByZXBvcnRpbmcgImFuIHVua25vd24gZXJyb3Igb2NjdXJyZWQgd2hlbiBsb2FkaW5nIHRoZSBE
RFAgcGFja2FnZSIuDQo+IEl0IHRoZW4gYXR0ZW1wdHMgdG8gZW50ZXIgc2FmZSBtb2RlLCBidXQg
dWx0aW1hdGVseSBmYWlscyB0byBmaW5pc2gNCj4gaWNlX3Byb2JlKCkgc2luY2UgbmVhcmx5IGFs
bCBBZG1pblEgY29tbWFuZCByZXBvcnQgZXJyb3IgY29kZXMsIGFuZCB0aGUgZHJpdmVyIHN0b3Bz
IGxvYWRpbmcgdGhlIGRldmljZSBhdCBzb21lIHBvaW50IGR1cmluZyBpdHMgaW5pdGlhbGl6YXRp
b24uDQo+DQo+IFRoZSBvbmx5IGN1cnJlbnRseSBrbm93biB3YXkgdGhhdCBpY2VfZ2V0X3NldF90
eF90b3BvKCkgY2FuIGZhaWwgaXMgd2l0aCBjZXJ0YWluIG9sZGVyIEREUCBwYWNrYWdlcyB3aGlj
aCBjb250YWluIGludmFsaWQgdG9wb2xvZ3kgY29uZmlndXJhdGlvbiwgb24gZmlybXdhcmUgdmVy
c2lvbnMgd2hpY2ggc3RyaWN0bHkgdmFsaWRhdGUgdGhpcyBkYXRhLiBUaGUgbW9zdCByZWNlbnQg
cmVsZWFzZXMgb2YgdGhlIEREUCBoYXZlIHJlc29sdmVkIHRoZSBpbnZhbGlkIGRhdGEuIEhvd2V2
ZXIsIGl0IGlzIHN0aWxsIHBvb3IgcHJhY3RpY2UgdG8gZXNzZW50aWFsbHkgYnJpY2sgdGhlIGRl
dmljZSwgYW5kIHByZXZlbnQgYWNjZXNzIHRvIHRoZSBkZXZpY2UgZXZlbiB0aHJvdWdoIHNhZmUg
bW9kZSBvciByZWNvdmVyeSBtb2RlLiBJdCBpcyBhbHNvIHBsYXVzaWJsZSB0aGF0IHRoaXMgY29t
bWFuZCBjb3VsZCBmYWlsIGZvciBzb21lIG90aGVyIHJlYXNvbiBpbiB0aGUgZnV0dXJlLg0KPg0K
PiBXZSBjYW5ub3Qgc2ltcGx5IHJlbGVhc2UgdGhlIGdsb2JhbCBsb2NrIGFmdGVyIGEgZmFpbGVk
IGNhbGwgdG8gaWNlX2dldF9zZXRfdHhfdG9wbygpLiBSZWxlYXNpbmcgdGhlIGxvY2sgaW5kaWNh
dGVzIHRvIGZpcm13YXJlIHRoYXQgZ2xvYmFsIGNvbmZpZ3VyYXRpb24gKGRvd25sb2FkaW5nIG9m
IHRoZSBERFApIGhhcyBjb21wbGV0ZWQuIEZ1dHVyZSBhdHRlbXB0cyBieSB0aGlzIG9yIG90aGVy
IFBGcyB0byBsb2FkIHRoZSBERFAgd2lsbCBmYWlsIHdpdGggYSByZXBvcnQgdGhhdCB0aGUgRERQ
IHBhY2thZ2UgaGFzIGFscmVhZHkgYmVlbiBkb3dubG9hZGVkLiBUaGVuLCBQRnMgd2lsbCBlbnRl
ciBzYWZlIG1vZGUgYXMgdGhleSByZWFsaXplIHRoYXQgdGhlIHBhY2thZ2Ugb24gdGhlIGRldmlj
ZSBkb2VzIG5vdCBtZWV0IHRoZSBtaW5pbXVtIHZlcnNpb24gcmVxdWlyZW1lbnQgdG8gbG9hZC4g
VGhlIHJlcG9ydGVkIGVycm9yIG1lc3NhZ2VzIGFyZSBjb25mdXNpbmcsIGFzIHRoZXkgaW5kaWNh
dGUgdGhlIHZlcnNpb24gb2YgdGhlIGRlZmF1bHQgInNhZmUgbW9kZSIgcGFja2FnZSBpbiB0aGUg
TlZNLCByYXRoZXIgdGhhbiB0aGUgdmVyc2lvbiBvZiB0aGUgZmlsZSBsb2FkZWQgZnJvbSAvbGli
L2Zpcm13YXJlLg0KPg0KPiBJbnN0ZWFkLCB3ZSBuZWVkIHRvIHRyaWdnZXIgQ09SRVIgdG8gY2xl
YXIgZ2xvYmFsIGNvbmZpZ3VyYXRpb24uIFRoaXMgaXMgdGhlIGxvd2VzdCBsZXZlbCBvZiBoYXJk
d2FyZSByZXNldCB3aGljaCBjbGVhcnMgdGhlIGdsb2JhbCBjb25maWd1cmF0aW9uIGxvY2sgYW5k
IHJlbGF0ZWQgc3RhdGUuIEl0IGFsc28gY2xlYXJzIGFueSBhbHJlYWR5IGRvd25sb2FkZWQgRERQ
Lg0KPiBDcnVjaWFsbHksIGl0IGRvZXMgKm5vdCogY2xlYXIgdGhlIFR4IHNjaGVkdWxlciB0b3Bv
bG9neSBjb25maWd1cmF0aW9uLg0KPg0KPiBSZWZhY3RvciBpY2VfY2ZnX3R4X3RvcG8oKSB0byBh
bHdheXMgdHJpZ2dlciBhIENPUkVSIGFmdGVyIGFjcXVpcmluZyB0aGUgZ2xvYmFsIGxvY2ssIHJl
Z2FyZGxlc3Mgb2Ygc3VjY2VzcyBvciBmYWlsdXJlIG9mIHRoZSB0b3BvbG9neSBjb25maWd1cmF0
aW9uLg0KPg0KPiBXZSBuZWVkIHRvIHJlLWluaXRpYWxpemUgdGhlIEhXIHN0cnVjdHVyZSB3aGVu
IHdlIHRyaWdnZXIgdGhlIENPUkVSLiBUaHVzLCBpdCBtYWtlcyBzZW5zZSBmb3IgdGhpcyB0byBi
ZSB0aGUgcmVzcG9uc2liaWxpdHkgb2YgaWNlX2NmZ190eF90b3BvKCkgcmF0aGVyIHRoYW4gaXRz
IGNhbGxlciwgaWNlX2luaXRfdHhfdG9wb2xvZ3koKS4gVGhpcyBhdm9pZHMgbmVlZGxlc3MgcmUt
aW5pdGlhbGl6YXRpb24gaW4gY2FzZXMgd2hlcmUgd2UgZG9uJ3QgYXR0ZW1wdCB0byB1cGRhdGUg
dGhlIFR4IHNjaGVkdWxlciB0b3BvbG9neSwgc3VjaCBhcyBpZiBpdCBoYXMgYWxyZWFkeSBiZWVu
IHByb2dyYW1tZWQuDQo+DQo+IFRoZXJlIGlzIG9uZSBjYXRjaDogZmFpbHVyZSB0byByZS1pbml0
aWFsaXplIHRoZSBIVyBzdHJ1Y3Qgc2hvdWxkIHN0b3AgaWNlX3Byb2JlKCkuIElmIHRoaXMgZnVu
Y3Rpb24gZmFpbHMsIHdlIHdvbid0IGhhdmUgYSB2YWxpZCBIVyBzdHJ1Y3R1cmUgYW5kIGNhbm5v
dCBlbnN1cmUgdGhlIGRldmljZSBpcyBmdW5jdGlvbmluZyBwcm9wZXJseS4gVG8gaGFuZGxlIHRo
aXMsIGVuc3VyZQ0KSWNlX2NmZ190eF90b3BvKCkgcmV0dXJucyBhIGxpbWl0ZWQgc2V0IG9mIGVy
cm9yIGNvZGVzLiBTZXQgYXNpZGUgb25lIHNwZWNpZmljYWxseSwgLUVOT0RFViwgdG8gaW5kaWNh
dGUgdGhhdCB0aGUgaWNlX2luaXRfdHhfdG9wb2xvZ3koKSBzaG91bGQgZmFpbCBhbmQgc3RvcCBw
cm9iZS4NCj4NCj4NCj4gT3RoZXIgZXJyb3IgY29kZXMgaW5kaWNhdGUgZmFpbHVyZSB0byBhcHBs
eSB0aGUgVHggc2NoZWR1bGVyIHRvcG9sb2d5LiBUaGlzIGlzIHRyZWF0ZWQgYXMgYSBub24tZmF0
YWwgZXJyb3IsIHdpdGggYW4gaW5mb3JtYXRpb25hbCBtZXNzYWdlIGluZm9ybWluZyB0aGUgc3lz
dGVtIGFkbWluaXN0cmF0b3IgdGhhdCB0aGUgdXBkYXRlZCBUeCB0b3BvbG9neSBkaWQgbm90IGFw
cGx5LiA+IFRoaXMgYWxsb3dzIHRoZSBkZXZpY2UgdG8gbG9hZCBhbmQgZnVuY3Rpb24gd2l0aCB0
aGUgZGVmYXVsdCBUeCBzY2hlZHVsZXIgdG9wb2xvZ3ksIHJhdGhlciB0aGFuIGZhaWxpbmcgdG8g
bG9hZCBlbnRpcmVseS4NCj4NCj4gTm90ZSB0aGF0IHRoaXMgdXNlIG9mIENPUkVSIHdpbGwgbm90
IHJlc3VsdCBpbiBsb29wcyB3aXRoIGZ1dHVyZSBQRnMgYXR0ZW1wdGluZyB0byBhbHNvIGxvYWQg
dGhlIGludmFsaWQgVHggdG9wb2xvZ3kgY29uZmlndXJhdGlvbi4gVGhlIGZpcnN0IFBGIHdpbGwg
YWNxdWlyZSB0aGUgZ2xvYmFsIGNvbmZpZ3VyYXRpb24gbG9jayBhcyBwYXJ0IG9mIHByb2dyYW1t
aW5nIHRoZSBERFAuDQo+IEVhY2ggUEYgYWZ0ZXIgdGhpcyB3aWxsIGF0dGVtcHQgdG8gYWNxdWly
ZSB0aGUgZ2xvYmFsIGxvY2sgYXMgcGFydCBvZiBwcm9ncmFtbWluZyB0aGUgVHggdG9wb2xvZ3ks
IGFuZCB3aWxsIGZhaWwgd2l0aCB0aGUgaW5kaWNhdGlvbiBmcm9tIGZpcm13YXJlIHRoYXQgZ2xv
YmFsIGNvbmZpZ3VyYXRpb24gaXMgYWxyZWFkeSBjb21wbGV0ZS4gVHggc2NoZWR1bGVyIHRvcG9s
b2d5IGNvbmZpZ3VyYXRpb24gaXMgb25seSBwZXJmb3JtZWQgZHVyaW5nIGRyaXZlciBpbml0IChw
cm9iZSBvciBkZXZsaW5rIHJlbG9hZCkgYW5kIG5vdCBkdXJpbmcgY2xlYW51cCBmb3IgYSBDT1JF
UiB0aGF0IGhhcHBlbnMgYWZ0ZXIgcHJvYmUgY29tcGxldGVzLg0KPg0KPiBGaXhlczogOTE0Mjdl
NmQ5MDMwICgiaWNlOiBTdXBwb3J0IDUgbGF5ZXIgdG9wb2xvZ3kiKQ0KPiBTaWduZWQtb2ZmLWJ5
OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGRwLmMgIHwgNDQgKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLSAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWlu
LmMgfCAxNCArKysrKystLS0tDQo+IDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwg
MTcgZGVsZXRpb25zKC0pDQo+DQoNClRlc3RlZC1ieTogUmluaXRoYSBTIDxzeC5yaW5pdGhhQGlu
dGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQo=
