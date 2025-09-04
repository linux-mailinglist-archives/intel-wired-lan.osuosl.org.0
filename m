Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0911DB42DC9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 02:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0F494189E;
	Thu,  4 Sep 2025 00:01:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LuvO2VikY46G; Thu,  4 Sep 2025 00:01:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CA2C41850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756944114;
	bh=+QNhuiWtYDJnKUUGQG6ezdLkQdBb5FnppQw6lDEfR5U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VkRPtSgk4WzpMnpzbrHBs1Ecc11q2v1R6k/ht2XCcO0LZ4BXx2QfKW7C8b0ISrLDG
	 9fCNEYByjS20f8fjZgVjlsZUhXXZ9GGiv+QTLQK3/LfcYnLy+T7IhNQe5ChsQxIk3Y
	 f9ZrokPrwrF8I86U86ceEmTZXAAk9l2XbMt0mWobxeR98vImYIyYhk06yuOpJsvuOE
	 zNrJreW6itCM63snMt4ElDJaRv9h7z516p/KyXNvCpoNAuf09aIbC5NCg9Ebc+A8yy
	 9skG4c14juqgYJva5OU/i7oe4/vMeToQMRV82Zc5FqWpKdUuOS0eXpSPpVMWnwIQWh
	 UdZbyzPxa3tXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CA2C41850;
	Thu,  4 Sep 2025 00:01:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1AB50106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 00:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 00A4C6F4FD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 00:01:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXd28ctB44DJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 00:01:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05F316F4F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05F316F4F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05F316F4F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 00:01:50 +0000 (UTC)
X-CSE-ConnectionGUID: BxGwN+9oQRC7bhAukKDsAw==
X-CSE-MsgGUID: FV7iqmgbTh62hllaV7+ZPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="63097124"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; 
 d="asc'?scan'208";a="63097124"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 17:01:50 -0700
X-CSE-ConnectionGUID: AcBSA1P6TsSJ9Om6oU8kZA==
X-CSE-MsgGUID: Nbfcg9CKSP6zr8DH8Nehhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; 
 d="asc'?scan'208";a="176077811"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 17:01:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 17:01:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 17:01:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.79)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 17:01:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JGnvak1Hbc40wYAOkRhdfb96VG9cX87jIjVmv7182AwJV/3df9gKE0tOW+UlCVjpxDHIXB52lOKdYPWPeRev00/L3v9Y8pi8F4QNLQrFajYACLwjTpA28e1RhVADnISQ5OeEoN9ts1GBZqcPIt9rOuYBgqVYpf3le7eHGtZaLYIc1u381QDGi5P+uPY9ylb9lBSjVKwQX4fvytbybljuBM83OsVzv9Ye1od42MHr21QFUqBuIyEUia6xalPhRaiFEYINlEjq57EZYdI6HI1EV9NJB5Q6XIZhyRonalEEPJcGDc54VKBEU253CGp3EfcHzMfTI1S+UBot9vT7cKmuJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+QNhuiWtYDJnKUUGQG6ezdLkQdBb5FnppQw6lDEfR5U=;
 b=BWrzeO7pPyozxLTo1xClhvwimjlVaX8kLuC5MRcSdMKisj1wzRc9rMpAkerpVBsB4rK3u+kJ3pqrmzotTMvc6fawXFG+/QsUqpg5+lJybC19qewthZLjQdgTM6nGUjMegxHp03VtVazpo6uVrPOgU6KID366/Yr7n29icR9s8S0heO0bzGd1LcrLFgdOaLvUnaoSSa4mKxSXMA/aHf0KaEw5ZKdPmtYcNTFrvDKHk0S5tf+kTBvMdlwsoXOaSLIE47M0O3rFfuTW/3VmLhjlIw8g1EVKjTY+1YtBUZQqxMe0vOokmGXfT1OiAkco4QvoDSBxfwZVNNWwUcLptzj+VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH8PR11MB9457.namprd11.prod.outlook.com (2603:10b6:610:2c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 00:01:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 00:01:42 +0000
Message-ID: <c8e9a2c0-343c-4732-b2d1-1edf8a708765@intel.com>
Date: Wed, 3 Sep 2025 17:01:40 -0700
User-Agent: Mozilla Thunderbird
To: mohammad heib <mheib@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <przemyslawx.patynowski@intel.com>, <jiri@resnulli.us>,
 <netdev@vger.kernel.org>, <horms@kernel.org>,
 <aleksandr.loktionov@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20250903190229.49193-1-mheib@redhat.com>
 <6033dd40-8adc-48f4-9acb-be50d992add7@intel.com>
 <7a6d4052-537d-4de6-b1af-a26e362704ab@redhat.com>
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
In-Reply-To: <7a6d4052-537d-4de6-b1af-a26e362704ab@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------liANNm6OLK0wNVm1hy4RYaPu"
X-ClientProxiedBy: MW4PR03CA0102.namprd03.prod.outlook.com
 (2603:10b6:303:b7::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH8PR11MB9457:EE_
X-MS-Office365-Filtering-Correlation-Id: bff6c44f-e68b-4491-eaaf-08ddeb463a8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Sysya21mVjV0S1VUYlc3TlJWZ1dwbG5vSnhyZStTSC9tTHIvVEtoQy9hb1hw?=
 =?utf-8?B?NFUvYmZsWmpyek1TdTQ5VVdXd0dXcGk2N3ZMUE1FemdDT1dlK1lERHUrN2VN?=
 =?utf-8?B?Wkd2V2QwSGFoWWRqNnJpRHRIUHI1dUo2cjIxTVFOSEJnY2tCWjc3UVJpSENp?=
 =?utf-8?B?TkFRdmlWSjBrWld0NWtkeUlqdHJCUnc3TW9ZSFp4L3ZyYUtSdkkvWmZra0c4?=
 =?utf-8?B?c3ZUS1BzbHhuZ3BEZGYrWGVuOXdjRFFYaUtWMjUrMDllQS9BaUZsT0ZGWTd3?=
 =?utf-8?B?Q3Zaa3dWd0hSUzBTMlhEMGVDWVc4dEVzRjF0YmNpT0N0dFY0aHhUZkVTc3px?=
 =?utf-8?B?L3JWQ3lvMTJzQXJ0dHNHa0V0M2pqaHZPUjZzcnZZNzVuR0hxQkMraEM4Wllq?=
 =?utf-8?B?UjZPRU83U3Q2N1MvRFJ5SjV5d0RGQjFJQlh1UGpNbUJwL2JsRkR3NGpiaGc5?=
 =?utf-8?B?bHJGdHdIMzg1MThrMWUvWTc1b21aY2E4aXZ2bk9RdHZ6c3JaVWxhUFlxSlBU?=
 =?utf-8?B?TWxRREFHUWtDUUNqeXhnZzVxaHZWK2FJZ3REK3FFcmpuVHBXSzhQa3dPQ281?=
 =?utf-8?B?MmxxNXBaY2NHek92ZmQxaXdrY3ZQb242VGhpT3kvU2JML2J4YlZTWWU1QUNp?=
 =?utf-8?B?cmwxVnNSeDRCUzM4WkNWeE5QdHJMY2I5K2gxeXo2NHIvVDltcnZPTzVycU9C?=
 =?utf-8?B?SXRlemJ4dGV6M3RsN3BtejFZbjZjQ1FpZ2hZSTc5dVJkZExwRWIzZFRkZFhJ?=
 =?utf-8?B?T1RoZzZzUmlZNWg2bU1Qa1Z5VVNBRkJGWHhEOVByWXlUKzVIeENpcVB6Zy8v?=
 =?utf-8?B?R1AybmQ0QjNJbjJpS2I3Uk5LVVh3bzZFK2J6SDRLWDc3dFZ2MS9tNXpqREg4?=
 =?utf-8?B?L3ZwODRtMDlUTUxnZEtlZDdSUlpaRlBTei82ajhLek9NOGpwU3RtRnFrTFRD?=
 =?utf-8?B?R3BJYTYwaG5QTkFDYnV6SE4rbWR5S25Ka2pDdzhERUx3NVAvZ1IvZm42WHBZ?=
 =?utf-8?B?NXhBcS9lQm1kYklEZ1VQeEFtRS82QThyR1N5NGhpQXFJenNFMEFpOWhYL3N6?=
 =?utf-8?B?RUhQOFE0cEtuWVpiMXhxeTdqYW5TTHV6dzU0MHFnMUc3TVhSUjZHSVIxZ1RI?=
 =?utf-8?B?Mnh6RGJrdDROc2lORFJ1YTRJU0NUS3FvdWpERm5XTndvd1U4bk9GN0ZmcjF4?=
 =?utf-8?B?TUVocDk0TDJPV0hlWThqb0hjeHBESmVMUU1nMXM0T25iUGZvUmlud3ViT0Vz?=
 =?utf-8?B?RjR5a1UrSytvV0EvdTg2ejhWYmltQ1o5K1o1M0RvSG9aNUdEREplZ05zbWE3?=
 =?utf-8?B?eE9sQ285bVVyOGtncmFuMXRvT091bFdvNyt2THNjSHJhQ0dGMmtHZnloYS80?=
 =?utf-8?B?eGZBV2hrMDgvQVJMMmNqN2VOUENFZlJwMmJxMkdCcXI4MUJId21kZ0MwUW00?=
 =?utf-8?B?Nk9DQ0lQK3FIaWQxM2M3UWVobFQ0ZXFQZzY0YU11Mmg3Mzd2amJnV3dNbFBm?=
 =?utf-8?B?RTBXQmJaQW8xNDZiVnRHb1RSVE5hNXRhVm1OZGpsdmY0Qm9IdEVxcHJsSEF3?=
 =?utf-8?B?emZSNWx3azV0Q0xLcTFBMkZlblAxOHVlOUpEdVZ2YWp2T3VjbkMzSWZMS1Fl?=
 =?utf-8?B?V0x2OS9lR0hGemdlOWN5ZFVLU2s5TDY1R1NaSzVlTFc0VmxSbjBNYlNYaHM5?=
 =?utf-8?B?aTBGZHBsQ3E4VWFkbVJnOGZ0ckcyWWVkSW5JRmNIcXJVNmEzTkl6WndiK0dp?=
 =?utf-8?B?YXM2MmpZSk43YUpGL1NzdHhwcUN5YVFiU280UVI5SGxHRjBTZ3pmY1JQb1Ur?=
 =?utf-8?B?Wlk0QytwNGRiODZHVXBwOFdzUmpGb1FZc0M1ZzhTcFFwcTZkQmtRdXo1REtn?=
 =?utf-8?B?andTby8waHlDRG8zcERlelRzTEVxVlhheVRBYmNZWTJ2bEFaV2w4Z2hsQ1B2?=
 =?utf-8?Q?jkyppd46tmc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDJEVDFJQkc1SmNYYmRWSHc2R0xGUHpwbGhiTlNBbzc4MUV6RXNqY2VnNkhj?=
 =?utf-8?B?eWpkSVlZVXg3ZFhpSlozMHVOZFZQNnROVTBsRU9xZzd3V1lUS1JKTGhIcnNp?=
 =?utf-8?B?WWw4WDRnWVdsSi9yTUpOUWhNMDRqOXlvOGtwUE9ab3pKYVBJbStVTEFyUFpV?=
 =?utf-8?B?UTAxcU50UmdLVEh4TFlheTNZL1Z5NWRrdi9uTmJ3MVhEbmxNSFhiRmRwMlhS?=
 =?utf-8?B?eWp0bkZMR3lDamJ4cGpERkhPdlF6MHM3MEtVZWpzOFl2QXVOYk1ndFV3d0N3?=
 =?utf-8?B?UVRwcElRVjV0Tyt3TStKMUZYdEdYM3ArSTRsS20zUjMxbHE1SkFOSkZZMk85?=
 =?utf-8?B?MHhFMXJHZW1zdXF5SmtqRnFsTVFFL1h6N044WmpYbFpKcHVvVVRxbyt0SkhO?=
 =?utf-8?B?TU1paEZOemN0NDNSZ3g1d0dMSzVzelhaWWF0Skk2bnc1elJUMUFNSUMwc2Nu?=
 =?utf-8?B?L3RTL28wSFRxOGpNNzl3M2dSQmNMK3lwYTBYL0UvQmJQVk9kdk1CV1hFbTlE?=
 =?utf-8?B?SitJMWNHZEpQbEZnalpTRUFYNW53NktBaUlBK2dwNWduS1N3UjFHRE9wcjJL?=
 =?utf-8?B?R0JRVXFKVVNDaDJoUVAyako0WEdSdEJnRVZ3TzZtcmhRbnoxQXB1M0drMm1P?=
 =?utf-8?B?R1d6UjdiZ01TN1NwOVBnMUlCRTVLcGY5V29YK2NUZkRwdGhXd290QlpXa3FN?=
 =?utf-8?B?cjYxQ1NOZ0lVTGhSN2hWVzc5NlRNd2JDQlNEVTJvc3lOWlNWb2YrbzJudmZj?=
 =?utf-8?B?UE11S3ZzMDVEbTI5aVAvYjEzbTZabEIrbjZLWUVuM0E2eFVwQjJ5N2lDVFZn?=
 =?utf-8?B?WEpMNEdJRjltUkZ0a2dFeklRMFNQOEJUYlJwbXliTGlKd21tUFRBbldjRGE4?=
 =?utf-8?B?dnVjS3NRbVdZUGtTQ0FlVjVVVTJ4dzlzZjl3ajZrcEY1cVAwQmZTZG84eUts?=
 =?utf-8?B?UjdKYlJZQitkMCtYc0lnZlhST1BJTEVXWTA1L0JWME1tSWFYdXhNNnk4N2xt?=
 =?utf-8?B?a0tsdStzNDVMSlV5OGxnNnVzWlQ1NGlSVjVpS2RZeEE2NnVPSHhadmhkQ0Nx?=
 =?utf-8?B?UmkzcHZzWC8xUFZUVDc2eHFwQnpKUmFVa3Q0eHI5YVhYRTZtUzFhVmlnRmJu?=
 =?utf-8?B?NkJWcHFpbVYyMGczQ3VYTVN1UU9SdlVlVnZOa0gwZ3BEMHZPY3kwL204bmEx?=
 =?utf-8?B?MjVRc0FEclozRnVkT1UyR0xTczViNWduRmVYOHhGeWlJeitzTmxkMCtNY2xW?=
 =?utf-8?B?TWErT0dOa2FjVGErUWR6VE9rNXNUeCtBTTFkNW5ISytOQTZnQ2Q2SVRUOVJN?=
 =?utf-8?B?cFQ0QUlaZm93UnBoSzlBVm9FQ055emtpNEpjUzJhL1lJSWc5TWpaSmhlaFlY?=
 =?utf-8?B?cXVuTGo4dTVtOTZKNDhGSGl2MWsvWFJmV1pxVGVlQVBBeEhEMVJGM09ObFo4?=
 =?utf-8?B?bFhGQ1ZXMXN4cE9BaTgwUUh0b1NkcFhtQUZzM1RaRVRJYlJNV2taOHZvTUdN?=
 =?utf-8?B?MXdPdGIvNERFRGJyN1hLaUpwNUdjbDhsWXAvQWszdDhPSnBJTnZtYlVLYXhu?=
 =?utf-8?B?RzVzRmUvT1JCSVduNE9tSWpsV0Y0M05zMVd2NnZOK3pCWE1GbFFMSnFSMzdW?=
 =?utf-8?B?SU1oVWwwUGFmelZNSWtjYzc3bU9UWGl0WmJ4MCs4ZjRreFIwYWRjVTBPV295?=
 =?utf-8?B?Z3Q4TFd6V1FlYVpoUi9IYTdoVFF6NlJNZ3VWZ3FzQXpiYlJodTljRXN5SFJI?=
 =?utf-8?B?NldTcUgySWNIYnY5NHZvTVU2KytxY2wzanUyRUcySFM5a3lEUGE1b1ZtK3BF?=
 =?utf-8?B?TWhsa1lEQS93RVYzZGdDSldrVTBKN3BxRmUvMGoxa3liTmFRZzlibDNHZTZL?=
 =?utf-8?B?UEw2YXpqSkFrWlhxbnU5Q1ZENFVBT01jZnZUSWtTL2JtVlNTVUlSNTd2QjZh?=
 =?utf-8?B?K2RqbVVtcmg1VFk4SWJ1ZnBTbmRBMnU5UDgrajd5amlkUm1YdWVLNTNvck9T?=
 =?utf-8?B?T0l1cTJEdFVUdWI3blFxL0E4UEdUc1RRaGhaa0Zab3hobHNYcEdWOWU5aW9r?=
 =?utf-8?B?d0swVlhVYTd6Z2s5eGt6SDE3WnFxZkY5QUlNWnpuWVMraWFwaUs1RVVLL2Mx?=
 =?utf-8?B?cVRVcGFYNUNtek96KytBWitTWWN0OG4zbXRaVWVGc2lBSzY0UjFvblR1dXlB?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bff6c44f-e68b-4491-eaaf-08ddeb463a8d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 00:01:42.0978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vsIS7mptFeYczSUtyAwQC32qP7Y3GIaSTFg7a2mDD6mMJgtSFoj2ZjJbhoiFG4BPrSFLFY6DjWNPsHHfMavokVBiXlh373jOrXhl4WSZN3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9457
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756944111; x=1788480111;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=+QNhuiWtYDJnKUUGQG6ezdLkQdBb5FnppQw6lDEfR5U=;
 b=RbOf8BdAWDOIM4yz8VNRstmmttPUsw+c9Zg2gZGM+cesm/XmWggaI/rO
 B8cOK7KXES/46F75WdAu22xgAsd8a5NuLC98FG6ViZq+EW6PiCzvURSFI
 pI/prq77xh7tZzh1YOOojSH77A5BTpEsyvbXKrpy6iLfU+lGFtzIIw/J5
 wGTahKX1COVadNI9mmYJnNkvbBxUDG2zJ1EwjMkBfc9SqGc/T5nCidic3
 DkjRfHr8JVHb2rejBCXf8T4QHKE/VGYBO9aeCeN9ZLmTwXbEnYze2nfix
 I5osd8igQ2yiPIofLWGZSFH/vY1t7BlhbJ+WHnSvi6RCmlK4HcGDTgEWG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RbOf8BdA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next, v2,
 1/2] devlink: Add new "max_mac_per_vf" generic device param
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

--------------liANNm6OLK0wNVm1hy4RYaPu
Content-Type: multipart/mixed; boundary="------------6bXza0ZXKN2bWffnR18uQ4PN";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: mohammad heib <mheib@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <c8e9a2c0-343c-4732-b2d1-1edf8a708765@intel.com>
Subject: Re: [PATCH net-next,v2,1/2] devlink: Add new "max_mac_per_vf" generic
 device param
References: <20250903190229.49193-1-mheib@redhat.com>
 <6033dd40-8adc-48f4-9acb-be50d992add7@intel.com>
 <7a6d4052-537d-4de6-b1af-a26e362704ab@redhat.com>
In-Reply-To: <7a6d4052-537d-4de6-b1af-a26e362704ab@redhat.com>

--------------6bXza0ZXKN2bWffnR18uQ4PN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/3/2025 2:44 PM, mohammad heib wrote:
> Hi Jacob,
>=20
> Thanks for the review.
>=20
> It=E2=80=99s indeed an easy change. I=E2=80=99m wondering why untrusted=
 VFs were=20
> originally limited to 16+2 MACs, and if changing this (overwriting that=
=20
> behavior) could be risky.
>=20
> Anyway, I applied your suggestions in v3.
>=20

The limit appears to come from 5f527ba962e2 ("i40e: Limit the number of
MAC and VLAN addresses that can be added for VFs") which is from 2016.
The commit message unfortunately does not describe a reason for the
specific limit. Prior to this change, any VF could use any number of
MACs, and thus could cause resource starvation for all VFs. Curiously
this limit was set to 8 originally.

In 2017, this limit was increased by commit 4dbc56613962 ("i40e: Allow
untrusted VFs to have more filters") to 12 filters. It has some
justification:

> Our original filter limit of 8 was based on behavior that we saw from
> Linux VMs. Now we're running Other Operating Systems under KVM and we
> see that they commonly use more MAC filters. Since it seems weird to
> require people to enable trusted VFs just to boot their OS, bump the
> number of filters allowed by default.


In 2019 the limit was further increased to 18 via commit 06b6e2a2333e
("i40e: Able to add up to 16 MAC filters on an untrusted VF") which
increased the limit to up to 16 MAC filters (16 + 1 for broadcast and 1
for the default unicast address). Little to no justification is provided
as to why 16 was chosen.

I tried looking through internal change logs on the out-of-tree releases
we have for i40e, and it also has a limit of 18 (16 + 2). It looks this
change possibly came as part of a request from customers, which I cannot
find any publicly sharable information on.

Given all this, as far as I can tell the only thing that an untrusted VF
could do is consume more MAC filter resources that otherwise would go to
the PF or another VF. By allowing the system administrator to tune this
to any value, I think it gives more flexibility to all customers, and
will prevent us from needing to further continue to raise this limit to
one that matches their environment. There is an absolute upper bound of
MAC filters available in hardware, but each system may have many or few
VFs and can better use that limit with a control knob to limit untrusted
VFs to the appropriate maximum that is suitable within their constraints.=


Going with resources (eventually) would allow even more flexibility by
not requiring the same limit on all VFs, and by providing clear limits
on the hardware upper bound to the userspace. However, I think that can
be handled separately, and this simple knob is a much needed step in the
right direction. Its clear we (Intel) have had to change this value *3*
times already just for i40e. (from 0 to 8, to 12, to 18).

I suspect ice also has the exact same limitation, and we can and should
generate a patch to enable the same behavior in ice. I have no problem
with doing that as a follow-up after this merges. No need to add more
work to your plate here.

Thanks,
Jake

--------------6bXza0ZXKN2bWffnR18uQ4PN--

--------------liANNm6OLK0wNVm1hy4RYaPu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaLjW5AUDAAAAAAAKCRBqll0+bw8o6Ong
AP97xhaOSEjlfXijQFAU4xJdaRyIX3J6PfTpW36ewPSYNQEAwaT4RWori8tHsAeKz9jZuARbN1ie
AKKDhc9cak26/gY=
=OSRh
-----END PGP SIGNATURE-----

--------------liANNm6OLK0wNVm1hy4RYaPu--
