Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 511FABAABA1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 01:04:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFCB460DAB;
	Mon, 29 Sep 2025 23:04:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vjuls6qMrkWY; Mon, 29 Sep 2025 23:04:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24DC160DA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759187061;
	bh=D96lgyFlEw6Xbj07aOFjchPeXbY9n+kLh7wj89uolmM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ge4iJvEixUrcYnWpbDjclTh7eU5If6fGRhKW6zRfWuqZxxh8OxuCWF/71gPwokcNr
	 AYpRcpKtxjJc02f6h1QBQpTmyGe7k9V4PxIozzQYwN2kH48YYs7LttEbxqJijmPFWs
	 34dG9205ne1bZkVhz+qABLiRt9lCAf946mRdMkNLqqwriMs2jea5L84lJe1AhdGu9V
	 J5sWG9lyhHgcW2FOcrl4GMjR4WFRpwOy2xM0xrWN9eJlyCUNOtmiPFS1snlDOLFOZP
	 XD7cGGGiz9YfJCOqCHUi0jcj+3FndE1JcHsvK4TUMDpVKHkQqx1U1NSE76WDsxAPkZ
	 GIc2LFks1dzVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24DC160DA3;
	Mon, 29 Sep 2025 23:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 35500CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 23:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2738040B8E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 23:04:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gq6KxdPJIBkR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 23:04:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3579540ADE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3579540ADE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3579540ADE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 23:04:17 +0000 (UTC)
X-CSE-ConnectionGUID: a6aSUcqUQ1epmOwRE/PtRg==
X-CSE-MsgGUID: IEnj024FRT2EgZMdK66GUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="65073735"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="65073735"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 16:04:17 -0700
X-CSE-ConnectionGUID: lh/a05TOTISHY3QOPpqyvw==
X-CSE-MsgGUID: kPeOJlAzSWyU5cKV/OF+rw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 16:04:17 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 16:04:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 16:04:16 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.47)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 16:04:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qQ1VHgXifXJuYPqnzRfJkNSXAoH9bKiJoW6eklgmkhmDy/owMaEWTOZWPYJlt7LDKf3LggnBe9iM6J/OyqQSMMuJXbtZwa5G1+QmisFUTTI+2cTS9Pv5QQMW0QtwofO1/IKlo3jcvrZ9xnFoaS+B9oymzu5AiU5Fc7VkrBwleHF3hfz2AmRVtsUsAILUAw0R4pSwIDPfuF2CMobkEWlg2tDbpsOKfNqyxXPyOSjTP+JudbMxmw92S/ta/ou5gxxT47adQhByaFhxNkONWfswGS3xgr7ZJnQorEYlv8nxpudoQmxRZD7WgKYNJrEbZas+d3f5gmf4ONiN3CuIrNgkZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D96lgyFlEw6Xbj07aOFjchPeXbY9n+kLh7wj89uolmM=;
 b=Kr1M6uy8vFe+gmSkncyfaz72zlGo6dGbS6pG1sV+7fztMT0nK1r9E16Pqm+0OS4wcHJ7wEYmYxBxHlpimtLv+Ve/hMcHLsIoTLIWOxa4BOhybdIfJ5DBDK+77zVta+l0YwD/LKT3b+zHopwutEjGcOQzoqTOvj8uq338ZLL/7SlZj8TTS9IPLTfg5kzbU6q++UWjUCnfWkD5vNVwzA6bVq3mJ3/1UbRzS+21NZd2FJZkT2Z1ZleZ5KKCiVOr24cKnsCfhFz7gxzWIIxnP7xMHubSVdakW3aOl+6xSwkvaiSHaFoe9imxAY5SFJIx62AGE5t1enQgViaaTaUtboNKpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 23:04:14 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.015; Mon, 29 Sep 2025
 23:04:14 +0000
Message-ID: <a7b1bc0a-26f0-4256-b52f-3580711be98f@intel.com>
Date: Mon, 29 Sep 2025 16:04:11 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Alok Tiwari <alok.a.tiwari@oracle.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, Piotr Kwapulinski
 <piotr.kwapulinski@intel.com>
CC: <anthony.l.nguyen@intel.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
 <20250925102329.GE836419@horms.kernel.org>
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
In-Reply-To: <20250925102329.GE836419@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------K2Ib70sGZzjROqH9Lh46EVRH"
X-ClientProxiedBy: MW4PR04CA0230.namprd04.prod.outlook.com
 (2603:10b6:303:87::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: 08d7ccc0-8631-4698-7e36-08ddffac8234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eE0yR2NJTVkyTHVYUkg1Q0xuZnlkS3UwenhqWEgvbjJ0c2V5cUlaN0M4Z0s3?=
 =?utf-8?B?bHU1MWFkY3NkdTluK1g2MHFHYmdMUThDeDFsbW8yUkVxU2UyT0lucm91Skov?=
 =?utf-8?B?bkNnMG1hUEFOL0hldDhDTk5iWjU3N0VLUDJDZXFRY09ROHlldml6N1Z0Z1Bw?=
 =?utf-8?B?K00xMy80TXFYYjdsT1FFL2c4dGR1WjdIK0RzZ1pIZ2JYMEdDdmFaSHc3Tzhv?=
 =?utf-8?B?TC9Mbnh2NTBCSllnZ0d0WFY1ZjlHUXpDYkdUZURYaFFTU1pXMDJwbmRKOXJj?=
 =?utf-8?B?ZW9nMGVWbUdGaUEvTkxaWncwTEdFMUlVakUzeVZUOWpJU1lwbEFNZ0c1Zmxx?=
 =?utf-8?B?OXdkU0g4eTFrenRoWTB1MGRIQVN1SDdid1RoeXZNQWNiN2NWZjZvWmd3SVhP?=
 =?utf-8?B?bGNIVlNKT1lDNkdhQ2lsdXpKT2dpbUlyLzluQkNpeUdyNlBGRFdUQ2xGSVBM?=
 =?utf-8?B?VWhycUtLbE5QUjdpUmMvTjBpUlVwYXV5UFZ6TnE3ajFkTlMvdFNPOXFTTDNw?=
 =?utf-8?B?Snc3RFQ3Y1hER1Y4enFhQ1Zmb09ZRkFBMkxtVzdscGdsczVCVTdCVlp6czF1?=
 =?utf-8?B?LzNpcTRhNGYrRi83eWFzblhJN2R0WVZxTFBDaE0zeXI0Q1ZTQXJ4WmJPQTU0?=
 =?utf-8?B?UVZMU2JGMHMyZU1seXIzU1o3N0ROdzlFQVJOQ00wUGFadVpJclh5NENnYUFy?=
 =?utf-8?B?MWZEenRlbmxnRTFrWGlHOGZRR2R3Zk1zdW1TZ3RnMzBtZ2pYb1VWczdZUjY0?=
 =?utf-8?B?RlF6aVlIbk9EVXVQQmN3RmI5LzI3c1laMW5ZRSt6L0lBYzJYL0hFbWkrMk14?=
 =?utf-8?B?RkRaQVVyNnhXRTBSZ3JCWFJNNTRaaFFNdzlNZVZwZHdpUWFUd2lJdHF1cHRV?=
 =?utf-8?B?Q3ErU0pIL0p4eU91aGV2SWdoYjV0Y2hIZWpSTzlqa29tYjh2ZDlrQVZHWDJa?=
 =?utf-8?B?QlNGNDk5a3gweFhrUVdMclVaTVYrNDQ1OThFaW43ZTAyaCtlMGpjTDdrZjR6?=
 =?utf-8?B?cUJBVmZUdUpFVVVTUUYrcUEyUnNDMU96N000SGRmK2dJZGhsUnlqRTh4dnRE?=
 =?utf-8?B?RjFKYWk2NlNVRE1MWTZFMmt1Wm1QTU9CVjBpZ3JuYUxWcWtrYWtvajVqUkV3?=
 =?utf-8?B?Vy93NHpYWFdKaEN2TU1DL1BEZU40Y1Eyb2NkcWZJcDNpbXpXdVVCcXhDSVRR?=
 =?utf-8?B?ZWE2VGcrVEN6UFQ4K0RLVnJDN1ptelQ3K2F4UlZadFRHcnU5UzcxNDJwajFu?=
 =?utf-8?B?bUUwRE5ralpEWlBwaUNtakNGT2xRbDZwWDZRbVBUZHNWUUllcThaZTNoRnV5?=
 =?utf-8?B?Y3FFM2dQUEdOLzVCSllTUENXK2tLdzBqUjVjM2MrTis4aWFXVjhIdmFkLzNQ?=
 =?utf-8?B?eE5pWHpGQTJqa0xHY3VuMlg2c3hmOW5tYXh1Q1ZhU2hSR2J1b2dObS8vQklG?=
 =?utf-8?B?R1lnNERjUUV5dkpOa2luWlpVVWUxdTRyOVlHQnAzYWswYTF1WnRHNG1jL2Np?=
 =?utf-8?B?bkRFZGtqTlc2VTRpYWREeVUrTGxDV1JvNHpsUGVkQ25aQ1UzUnpDSzFWbC9S?=
 =?utf-8?B?M2duZ3REUUpzQ0VLcFlab2FPZFcyVlNiOXRWcXA0ZkhQVzQ1RDdhaDI5L2pX?=
 =?utf-8?B?RXY2S0JBMjhuNnNQdXdXYm4yUTNIVmwxcXE2ckJxUUhXTWh4N21qRHZUSE1o?=
 =?utf-8?B?UnFwUGVzaEFoUXNiWUZISVN0K2tYRmNDZFhyQXdPbWI2UmF2eG9vaXZNVWhl?=
 =?utf-8?B?VkJnOFZYS1BpcVdpQjEwTjJ3R1pTQXpiUUZuMkFud214UVBLVVliYThGU2Ur?=
 =?utf-8?B?ZjFoa01LdHhueEwyNlkycFF5VkFFUXRBOFRYQ1AzTTVUQlZUaTgyeSs5UWpD?=
 =?utf-8?B?dUJlSmI3KytHL3dMdFd4anlscFNvVUhwMGVvaGNuVi9hWlNoZy9DWnBKK1dk?=
 =?utf-8?Q?ae1wkX7OB7ifQlFhHPYdF5nAFV1Zxk0R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmcrallHNVc1SjdIUFMrSEVmcHpjRUpwQjVTbXZ4T2crS2Q1ZS9lZkQ0UUNl?=
 =?utf-8?B?SFJnRmFaK01ERVNVQ0lVSEhmcG4vVkk2blo5OTFMc1Y1UEVnM3c3RnhTTjY5?=
 =?utf-8?B?SXZuMVZGZUNUdk5pOUFkMGVxL1dPUjcxZmIra2cyQkZGSGdJM3ZIU1B6VWdm?=
 =?utf-8?B?MmRhZjYxNk9ZOFAwZytjZ2FmQ09ybndOeVluWkkvanIxeWRVSjlxOXlNU0p6?=
 =?utf-8?B?SXdkQW5ndjVWWG4yZ3ArRzhXN3FUZkNuQ2ZrNTd1Ukx2QzdtK25ZVmMxbnhu?=
 =?utf-8?B?Nk1FbUtyMGJVOUFocHR3WWluMWZaZHhPaDFWQit4OVh2QXNXaDJQQkZKaWF6?=
 =?utf-8?B?VUVZMlZUWlA4TUlmSUNUUWo3Nm5GbzVFQ3BxaHNrUmNWNzBROHVCeDBvYS81?=
 =?utf-8?B?S2I2aU0wUURBTWY5SjdxRnJtMVhzU2lZYnY4ejJZd01zajF4Rm1yeGxQVjR2?=
 =?utf-8?B?Yk12ZW1xSllTVEpSVWZLWmNhRFhCbEp4dVoxVGcwbHFoRzVhL21yMUptSWdt?=
 =?utf-8?B?Z0xXaGlISFFDNVdIUzZzQVlwZ2lUb1Vkamw5YTc4cENiVGRzUTI2b3hqdjkx?=
 =?utf-8?B?YXZuY2RpZnNuRDBKVzJkWEtPMGR2QXo4YTVoN0NNcVZjRjhKYkxKSjhlOEdI?=
 =?utf-8?B?b1Y0TGh4ckNUSExyVUZFdlR0emVnTk9COUdzSWlvNkYwM0ppTkFrNkpKdDRS?=
 =?utf-8?B?RXRmYU5nSncwQlkrM3h2YUYrSDFOb2hRblhVdDlNYWhOMkIxdWVWUWsvOEJx?=
 =?utf-8?B?NVMvY29KZGh4RU9OK2tUNktOdGs4UGNudnBMT25UdGcrcUR0LzhmWUNhUTBY?=
 =?utf-8?B?WFBvSFZxQ1QrMEJqVGRNMlFrY0pOOUZsL0hQSEFoN1NZUlpjR1Z1eFBVeEw1?=
 =?utf-8?B?Rm1Cb3h4eEg5cTJya2pTL2QxSHRGNEI1SHRiYnEreUd2ZU1LVk9GVHNFd3N3?=
 =?utf-8?B?NnZQd2JTa2hsNnp3RTNhNVZHWjI4b0h3SkJjQ25QWktoWlM3WHFhWHlHNzJ4?=
 =?utf-8?B?bkxDakZEOEdoNFF0S01ZblhSUzB0TVcvWDFUdWNORDNSaTUvOUwycjVEd1A1?=
 =?utf-8?B?WERGN0hndmtiZUsrV0ZoTCtjUklVUVMzTnFSN1BFRDBKam5jeE02SFVSemVW?=
 =?utf-8?B?OVRZMjVUbVg1MTBZVVgwUFRWYmZiS3N6UnAxSEdmUzE0MG5OMmJYdEd2cytU?=
 =?utf-8?B?RGwxMU9lczlRUzEvV0NmbFlUTW1KRzdkY0J1YzEyVXRSNmd5VUx1SjQzd0xv?=
 =?utf-8?B?QXVuSDRIVzB2OWJlcUg2bi9DbzBaUmZLU2NtWnFMVXowSTJCVm1IRk5XZS94?=
 =?utf-8?B?blp4UmJ2OHVuL0xJT0w1UzJBVUtuVzRrVnlxcExZNzh0ZzhOUWRwUFBGOTI0?=
 =?utf-8?B?enI5NURmc3I2blN5QnNMYnVLaEFud2JVc0lqMk55T0tZQTVtcy9sb3JlaVBE?=
 =?utf-8?B?Nkd0dGlyanY5L09mcGhwcnN6YjZjUXkxZ0ljQmVuNkUrc2FUTVJzdWp1Z1RQ?=
 =?utf-8?B?emp0RGU3Y0s0TkkwaWpzRWVzc2dzTkxESHhWMWFlbUtYZjJRYlQ0OHArNDJH?=
 =?utf-8?B?dWl3Mkp1WE9EQVZHQzBjaEN2Q1VEY2ozQjJyOTQ1b1hNd0k1aWZuREF5V2JS?=
 =?utf-8?B?MDExdG45NkFFOG1DUmJnUzlwalJVbFZKRmk2ME1DQTdWODZqNUtmS3JDdmJi?=
 =?utf-8?B?UmQvTzFwcVRuZ1pmclI5Wm5CV1FCNE84OWdRUHJxTzFRYUNiZG5Vc3laeExo?=
 =?utf-8?B?bXF5Q0t4QkxvQkxTNVcyRFhVbHUvYXJhWUIzb0pEVStWTWo3R3hnUXByUVFR?=
 =?utf-8?B?bnlieWlvajk2YmNpSmlsOUpkUTE4NUJZblg2UzNCSit3VVV1bkFaVld4ODFE?=
 =?utf-8?B?TWlobFVpaHF3RnRsaDYzNzJJREZxeHlXNzBXQTBBamlLb0prVEIrcnY0Ky9L?=
 =?utf-8?B?dC9iU2UvWTcwSzduWFYzVVMzSTVqZWJkYTBYSnY1d1VhbzJOTzZ5MmpNWm9U?=
 =?utf-8?B?WEY3UUFhOERFRWZPZGc4MnhzR0JkamxDdHhPNFhXRkU0Y25vRkdCVHlSVVdo?=
 =?utf-8?B?WU41a2M0Vnl2ak9HeTkvcTlJcTBta0lnMFhnTnduKzV4UlQ5c3I3MXhqYUkv?=
 =?utf-8?B?bmJKRWhQMlIxd2tnSFpRQVlLMGVsZ1dFbzhTc20wSUpZMWxhWnF6N1ZaZTg1?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08d7ccc0-8631-4698-7e36-08ddffac8234
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 23:04:14.1848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuTyO9LlcfwzNJLKF5pZry7C68SviHEXAfhebMKcO53nW0vLdECkVmf7j1MNHjsXAZHZL1jmd1PIO3cicfIJZfcFAAUF9E2vHFc23bFSHro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6911
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759187058; x=1790723058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=rVsEy30BPZ9PDMSi3hWTeEhJih7OwZcQeYzBgK1T3wo=;
 b=AcvaC7Za+7LcL5rqry73QibkqT9bW/VpQMvNdzStvPvh7gUCX00J5s3W
 EMl5ZA4B2eMwRMY60tvrfmD6rrCR1PIN3fLmAdwnyYjNCyQhhJfGgJRYs
 h98TiKokhwlOzswMO4IIKCoBAz1RPSl6HUfmuAA21oHpbjxpJaUbZYvZU
 Z+7ekPpoH0luGf083Y1SzlYXcan4fipy5OiUj3SHbR6uKdwjOY+OC8dKq
 rzKAo8YG3cM1SdYz9s6kd07BnvWdbT0Z0fqDDA/yAFxHv17qguVtImypa
 GGE4DlXnoRxehNM89CfOvrP1klHDwD4fuCNpAsZrtV89AgC2rXzKtv43f
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AcvaC7Za
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: avoid redundant call
 to ixgbe_non_sfp_link_config()
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

--------------K2Ib70sGZzjROqH9Lh46EVRH
Content-Type: multipart/mixed; boundary="------------LL4n5zo8000ATudc1oEdLJxA";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>, Alok Tiwari <alok.a.tiwari@oracle.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <a7b1bc0a-26f0-4256-b52f-3580711be98f@intel.com>
Subject: Re: [PATCH net-next] ixgbe: avoid redundant call to
 ixgbe_non_sfp_link_config()
References: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
 <20250925102329.GE836419@horms.kernel.org>
In-Reply-To: <20250925102329.GE836419@horms.kernel.org>

--------------LL4n5zo8000ATudc1oEdLJxA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/25/2025 3:23 AM, Simon Horman wrote:
> On Wed, Sep 24, 2025 at 12:33:54PM -0700, Alok Tiwari wrote:
>> ixgbe_non_sfp_link_config() is called twice in ixgbe_open()
>> once to assign its return value to err and again in the
>> conditional check. This patch uses the stored err value
>> instead of calling the function a second time. This avoids
>> redundant work and ensures consistent error reporting.
>>
>> Also fix a small typo in the ixgbe_remove() comment:
>> "The could be caused" -> "This could be caused".
>>
>> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/n=
et/ethernet/intel/ixgbe/ixgbe_main.c
>> index 90d4e57b1c93..39ef604af3eb 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -7449,7 +7449,7 @@ int ixgbe_open(struct net_device *netdev)
>>  					 adapter->hw.link.link_info.link_cfg_err);
>> =20
>>  		err =3D ixgbe_non_sfp_link_config(&adapter->hw);
>> -		if (ixgbe_non_sfp_link_config(&adapter->hw))
>> +		if (err)
>>  			e_dev_err("Link setup failed, err %d.\n", err);
>>  	}
>> =20
>=20
> I am wondering if there is some intended side-effect of
> calling ixgbe_non_sfp_link_config() twice.
>=20

Good question.

It looks like this was introduced by 4600cdf9f5ac ("ixgbe: Enable link
management in E610 device") which added the calls to ixgbe_open. Of
interest, we do also call this function in ixgbe_up_complete which is
called by ixgbe_open, but only if ixgbe_is_sfp() is false. Not sure why
E610 needs special casing here.

I don't see a reason we need two calls, it looks redundant, and even if
it has some necessary side effect.. that should at least deserve a
comment explaining why.

Hopefully someone from the ixgbe team can pipe in and explain or ACK
this change.

> ...
>=20


--------------LL4n5zo8000ATudc1oEdLJxA--

--------------K2Ib70sGZzjROqH9Lh46EVRH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaNsQbAUDAAAAAAAKCRBqll0+bw8o6Lca
AQCgkg8TFnCKjdnwPlQyqdPaqhctSrUgKpSz22siVfdtHwD/SOmYnJ2BgDUoN502MNm3jGvMITpm
mGnKKk9hNY4qRA0=
=xYCL
-----END PGP SIGNATURE-----

--------------K2Ib70sGZzjROqH9Lh46EVRH--
