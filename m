Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80809BAAB64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 00:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 126C560DA6;
	Mon, 29 Sep 2025 22:53:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kg63XpWx7prX; Mon, 29 Sep 2025 22:53:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BF0260D9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759186433;
	bh=1VLoGbE2LCE0MaobqrqrJI6VCJa/u330Zp6snweHJ7Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DuHKisB8JFK34Tfn4jPVYvq9h8Z9cMZPv/yFBJXbtXpiKSfDuHf+7ULBuvQX65c//
	 xxrtHjvfdJ/JlWS9H+TwAFnssHz9MHfT5uWo6wr6UJ0UhTc9NdvKBpsPk5uE9XxbxW
	 K2F2qbbi7YOv41bhdqzH7u1DgT3FfQIVQXfp4CEBtSxp4U9EHn/h7MvlQC32UV+EnE
	 wOGuXXxq9LVxfaOGkFtKVdJhLX4Nx3GlJsE9OACA8dz7iwhFonBH0pSu0COoytDOKP
	 D25tDnlJTKtwQC3X38X68UJaqJ1ASG1UIQg4JjE+vsPpyt3GYRN4pIiMM1yai0uEUG
	 fJh4VVmbKWuYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BF0260D9F;
	Mon, 29 Sep 2025 22:53:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4107ACF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 22:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32BD18154C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 22:53:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S0Wj_JpLN4ko for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 22:53:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 37DEC8154B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37DEC8154B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37DEC8154B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 22:53:49 +0000 (UTC)
X-CSE-ConnectionGUID: P/lKU0UhTOiFCb14YXN7PQ==
X-CSE-MsgGUID: +ChnnZaVRmalVvGgTuYMJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="86878910"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="86878910"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 15:53:46 -0700
X-CSE-ConnectionGUID: xRCbY21bRnywrLYiDVUmYA==
X-CSE-MsgGUID: mq7fhzWKR8WXWXZORZcklQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; 
 d="asc'?scan'208";a="183538465"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 15:53:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 15:53:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 15:53:44 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.32)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 15:53:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kfz109Un94O+LveJotGlPTjCgvNpjXlrUZbXZQJULWQwbGjSDr7eMtD4cpfVmUdewPyg5sJ7FmX5wO7sqtvdyTVlzAgHbQk4TFguMdQTxkl6O108pzUZoPcd/Bt5eBTGLGuKgmkLlamB0m2GsMnP4AXP3V+NStqezeUCVR2tn12UAOF7Ei9JXrG7n81cyMmKVSzPcRGwSd6hpwn5qjumhkJkzLt4zs5vbvN8Gz66dFzkViHEezzCqEtnfdCulC6q+TWqg0cRj+38OeKNXhUeTAVY+l7mAmnNdbvfpWyIpYKc0zWwYFPafiPBBzJQmq+i16JE1SSX5V1BPjCUu3/uCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1VLoGbE2LCE0MaobqrqrJI6VCJa/u330Zp6snweHJ7Q=;
 b=SvtaDaLaEvzA5SzNyK4wB5Us/Zt5l5TBNRkGJKK6MeUyQ3swFrfcTwtRqjHluza/hM0k+tZ5RUudgb6l5MdyABsrZYZ6YcJXahNB4LO2VU2Y6SIK6SrUdXCIyrH0l0820Wv6GNL7o327PDQxzdVkTuPvAB4dHOQI4EXdit+3RpR7RS50DObaGhK0BuZU+avHf8JY2+gf4U0HALhpsap8RlKEP8pRuDEnRKLUxMpvNteTHyKfD5VVY/YUG+l9AUWXt3dTFfM6p0Aj11xFg73z8VkVHgL+8hf9sjPkDAjNgx9V9cAumv/vkjbbbFcu93CJZZMj5Ut7iX2Bsn14P3+Bgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Mon, 29 Sep
 2025 22:53:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9160.015; Mon, 29 Sep 2025
 22:53:42 +0000
Message-ID: <1dda14ca-7e58-448e-8b05-e5f6293911f0@intel.com>
Date: Mon, 29 Sep 2025 15:53:40 -0700
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>, <krishneil.k.singh@intel.com>,
 <alan.brady@intel.com>, <aleksander.lobakin@intel.com>,
 <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <davem@davemloft.net>, <edumazet@google.com>, 
 <kuba@kernel.org>, <pabeni@redhat.com>, <horms@kernel.org>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>, "Tantilov, Emil
 S" <emil.s.tantilov@intel.com>, Joshua Hay <joshua.a.hay@intel.com>
References: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
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
In-Reply-To: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------s8YC5xAGgKNEZTivc4OKXvDr"
X-ClientProxiedBy: MW4PR03CA0073.namprd03.prod.outlook.com
 (2603:10b6:303:b6::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV2PR11MB6022:EE_
X-MS-Office365-Filtering-Correlation-Id: c900cfb8-bd34-4af6-e4d8-08ddffab09b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NStGUTlPNWczTndGQTR2UHVScEIzcCtRazhuVElaWVozTGkxNUdPVTN1aDA4?=
 =?utf-8?B?QmNDRTkxT2tzSFVGRzd1LzJONWN0UERhUXcrcE5FaGRBQjhpUURjbktpZCtn?=
 =?utf-8?B?M3hpaUZVci9yTlRFNng2NW5mUVdCNExaVWx4WTE1RzFmVmZRdHRBOFFyQTFa?=
 =?utf-8?B?dHVoNTJoLzUvWi9Yc1F2S0xPN0VkMTgzemY4Ni8yRUhUVldoaCtGK1ZrVk9v?=
 =?utf-8?B?bmZ0ZktWMk1KZHoyUmZDOStRM2FzU282SVJmUjdLaXRqOERnMldTY3UvQnc3?=
 =?utf-8?B?RTBIY1drbzgxM05RMklnMGpHb1BQdUtoRFVYRWFPMjVmMFJ5MHI4WTV6ZE9r?=
 =?utf-8?B?U2JWOG4rSXZTVmJPOFFZbDVZM3FRR2RKK3pTS0lOSkNHNnFFRENVWjBKS3dO?=
 =?utf-8?B?cGI4Q1BYcnBxWGc2d0ZwTHlsWTJFRWdZSUM0cFVMUGpLNHVWc2FPTXEvRWYr?=
 =?utf-8?B?amgxTUh0ZlBmWUdPb3huRVk0L3pRTEhHSTFXaWhxaWVEa3F4WGp3OHZISFJH?=
 =?utf-8?B?WnFzQWk5VzZFR3R3aEdkMGdoTHlDUXBURHNhNXZmSkRSaU14YWN6WVhOUWJF?=
 =?utf-8?B?UmlCUVJPTmZ5cEVvbHg5NVg1ZklHOEZCOGRkMkdpVzUvT1dQR2htN1BzTEg2?=
 =?utf-8?B?WTlkbmJZaE90dWJCSmdwb0dlL0xFeTYrVS9FTk91ZVhrbmg1UXJORW5hSWVE?=
 =?utf-8?B?S1lMRE9XZG1tWEJqQ2FEUG5pZWJESEVTOTIrQW05VWhEUkVwU0hZeEN4Mk1S?=
 =?utf-8?B?NjFDTkJabG0ybi9Xayt3NWtvMzBHaXIzRWVBZGdaSW1XdG5qM3lnNTM5YnZu?=
 =?utf-8?B?TERWNHRGbklrWkczYlJMMTl6OWc1YmNWZFZRdkNLazNyZHZndEpZc3M2MkNO?=
 =?utf-8?B?eGdSMk13MHF2aFVES3lCb2hsQWdOeGN2RmFnOWM3cnVTVFhhUDEvMGpvWW9s?=
 =?utf-8?B?SHhuM09FOFpjd2wrTHl5Z01JcTBmUytjZnpidW4yWW4zQ0tSVERXcW1zWUM4?=
 =?utf-8?B?WkdwL0hmVisxdEpjN3NIeFZWSkxzMkVKb0Y1cndpMmFtNjNONnZnNUpFRi9V?=
 =?utf-8?B?aUM2cjJ1UmdKNFJ0aUxIenh1MlR1eHhHZGU0M2g4Rkcwb05ZYk80OGZ0R2Yz?=
 =?utf-8?B?UG91RWQweDF4VmN5NnN6VUlpS05XNWRxRkl3dFVEWFBJSUpZM1FZc0N0eVFI?=
 =?utf-8?B?dGk0Mk03dGxBY1VudHZ4VnpEOWc2a0tSZFVlMEptSGc1bE1JNGRlUXhtc0NW?=
 =?utf-8?B?bG9XWjh1a2lrTWVQMFB0OTkwc0xZUzI5eTFPRUN2UkovV2xFM0RTaXpKQ21J?=
 =?utf-8?B?QmsvbkFOOUI2T045dDdlcS9xMjc0TmVuRkdoeWZqeTl5b1V0Y21FVjgxU3pF?=
 =?utf-8?B?eE45c2lwYUxNd3BxVzNsUXJmVWdDMGNIekt6dEdZQTQxZDM4dHdyQVRpSVlj?=
 =?utf-8?B?ZlovUXJXYzEvaU9rdEhnR1R5Z3JQWk9Sbkh3M3RIUWFHTW5jVi80Z2w5eDcy?=
 =?utf-8?B?UnEzOGdjY2twUllza25VRjR6THZhTGNLUEhBVzJGUUdvTnRTR1VEcEcreUQz?=
 =?utf-8?B?MkpZOUY1TjNtRWNkaU9saUdrL2ZUMGNEV3IxaURvdysvc1ZSRm04akNCRTJO?=
 =?utf-8?B?VUhwT1h0WFRwVmZFWTNWbGJRTEpOeFdyMjZ4L0hIMCtqc0hGK3VXYjFLYjJ6?=
 =?utf-8?B?Y1FhdmRYQzl2U0FhWHR5cW00c2Zmd1owUkZjdGxDTEJIV1h6WWRZUWJVTEdl?=
 =?utf-8?B?S201aXF3aWQrR0pnVW5DZE9vOWc5SFRodjJVdXBIdFRqNEEybDFUMGRXdG9U?=
 =?utf-8?B?TDdiMFVkZm1BOFV0VEJSSTROVUo3T2paZWxoejJlLys3eHdxK3RhNmRJcXN0?=
 =?utf-8?B?VHdraGpoZ2FRSVA0ek5XSWY3TXJqUzRlN0k5czd0c1BkdHh2MWd6ZkFKM1U0?=
 =?utf-8?B?VXdKYTNQczRJMHJiRldoMy8vYkduMklZa3V5NEJqNzIrMTdZL0U1K2lXZWF3?=
 =?utf-8?B?U21rTi9ET0VYZ3VoQVppODR3dzBCV1YxTlRwN05pTGN6eEFyQlBScXdUV3JX?=
 =?utf-8?Q?K8auJo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVJPbHFCcm1xZkF6ZFBlVDZHSVVMeE11Z1JtSC9UVEM1SUlVQTBIWXl0ZlpW?=
 =?utf-8?B?US9iVG9wM2ZyNGdFZkZFeU1VUGw2M0lWdFBxclpPd2tyWC9BOVBWU3VaT0ta?=
 =?utf-8?B?U0EwcjZhdDJDQlBZa0s4Z21sVHZxV2s5eHEyN28vbXdOZ2ZGVVk5b1RLbW9J?=
 =?utf-8?B?dnpYbHB2N2dPMFZ4dGdrWlpGS0ViamZNTUVGTG5YNHdqU1dHYzFITDRLRHJy?=
 =?utf-8?B?ZFhWeTRDWDEvWkhjbUU3Z2gzakJ5NzhCSWpTcy81SXBKMmxFUm10MUZQWkF3?=
 =?utf-8?B?RHBsZVh4cHRtR3JhYWVPaHc3em1jcnh3bDV4aERYNWV1OWlCTXR1cTkvVjZQ?=
 =?utf-8?B?NHRiQjVzMXEvQVJneWRmMVJXZmtJQjkvRk90cEZRb3JpVHhpV29sZnZkT2h4?=
 =?utf-8?B?L0tKYVBTbkV1VG4xTk90dUtXQURhUEgzWFhzSWxzQTRVUnBlQWlBVmF2cXYz?=
 =?utf-8?B?Y0czZ3BsTkdQaGdYc2ROSFRZZzZuWm9WZHNvd0FjSTk2ZmsrbFJNelVldm1i?=
 =?utf-8?B?YStGTkJ1aWxSN1hQSjlOdEZnUGxnOGd1a1hPaXBXSjJwc0Z6T2o4WmJUSHJS?=
 =?utf-8?B?THZCRUpJNUF4akV6S2w3cERnRlNEcXd6eEtJT0tXWXpzQUtablF0UGhUakNI?=
 =?utf-8?B?a1hqWGl0U0NsbzgxOFJ5VHZRNGVCS3RQMEtjV3QrWUU0LzRUUUJDR3FsZjF0?=
 =?utf-8?B?Y1FVbUpBQU0yT05uelN5Ujl3THlQQnh4dHBhT2paTUxheUM3UVBBRjR2NUZY?=
 =?utf-8?B?a3AwR241WUMvSnFNRUhRTnFEc04yTEJEaVlmclJzSU1Ob2plMnN0QXBDTkY0?=
 =?utf-8?B?bUk5U2tTWlJtNGg2OWc1VkJhdk5Ma2grQkdheXU4c1dOMjhQZU9pT0dpZkQz?=
 =?utf-8?B?dWlhMVdvYlMyM014WGxpbXVzejR1bzlVS2Vja3V2S3VkdXlHeUVqNmlFWHNn?=
 =?utf-8?B?S21CSFdQM0lSYVRYbTAyaVhIUjlNZGNJQXNyNVd1WnFoc2tqSVROcXVlUDZa?=
 =?utf-8?B?ZjlRQjJOdkNrKzhFcURGQVN0YVNtL3YwQzdGa2pDQkZzVWdGbjRaR3IyN1hO?=
 =?utf-8?B?L2ZvcnBteGRiVy92LzRaWVR1Sno3bVFEKzZoaW13U1RRM3BsNzk0WjlHbnFX?=
 =?utf-8?B?WUg0SjJORXlmVUU0WHFXdjBGU2dqZFBzVFprclZ3blRHaFZUK210N3hIWW81?=
 =?utf-8?B?L01ZVXhnUEdmNmcyMHlLSktJTHcwMGo1Vmw0aFhXQ2l1QnNGV2FERnlNQlFM?=
 =?utf-8?B?SGtHbnRTYWgwMnVWQUdFVU82WURlRjBpNCtMdDBTRW9EajdPZnM2b1NZNVhP?=
 =?utf-8?B?aUsvQnFkSGNsMnJIcS9zVzdYYkM0aWpNVHlhTDVJK2pidG1sZ1BsQ0syaHVw?=
 =?utf-8?B?RHBBODV0VFE2NVRJcXA4UHhSS3JYNFhzYTFBMFVMVncyZktZUWl6eStiL1R6?=
 =?utf-8?B?QmNud2k0NDNQRU5PZjRrVWpHbEd3SFI5ZWlQVkROZUhNYnM2alJFK2x0ZnM3?=
 =?utf-8?B?bGJxN2lYVFF1M2w5akFaT3hkT09YalA3N05RNmk0UGJLUmdhcTV4M2RkZUVy?=
 =?utf-8?B?MW8zRE9tQVJPT3pyaTdYdTd1QkR6eStlMjU5YXZEOWd6aXZYaW9DOGVFNXV5?=
 =?utf-8?B?NzUxQ3ZVVDM3cGNGWm9ndTFUOERpNEhyNFRTbTY3Z1FQSmtmbGhPUDBnWnJF?=
 =?utf-8?B?cnZCTkhDdXZHcVJ6dDZIMTR6UUU3S0FTQVNxanlnZ2oyaTV4dzRhZjRaYlU4?=
 =?utf-8?B?ZEsxU0l0SDlJZ3R3ZzdCVGxjanhCWTBSSTRZZnhtM0VmWnRabHFhUFovOFVw?=
 =?utf-8?B?MzZSUlMyVyt6UEIxTjlQZ3RlcFJuS2xkUkNaNjR4aEhLVEVXeWhpSS83dEli?=
 =?utf-8?B?UExVZDZXY3ZON201Ui9mN2I1VDJ6RGpzWXJZV2VFTVBEOGs0eGNzNnV0THJs?=
 =?utf-8?B?VWZCbmp1NTE1VEZwMEpyeXprUHZzdHNWbEZBUXFCUG1VeEEyTm4ybUhGWnU4?=
 =?utf-8?B?R2FhSVdSNnN0RHJiQ2hVMmptdlB3QzFVZWtYYzdScjI0d2JTM0l2SW9Wd05z?=
 =?utf-8?B?OHUyWTJ0UC9PbGFkZEdOL0JRdGRmV2hrRE04MER2Q29iMDFsc2M3Z1BpUHFN?=
 =?utf-8?B?OHlBQ3Y3REMvYjcyNFJ6MVFxTkxhYWtnTTY4cWUrSUFPZ1JwbGp5RUFMOHdl?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c900cfb8-bd34-4af6-e4d8-08ddffab09b7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 22:53:42.5965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ngSWXkv6DZuEWI6zfh7jVl9raY18WiotwJGbOtWcYKGc56+pmTexPLQM26yh/byFZ8PmEzeTpEplAQSsp2LYdXn8hLyS9EkQQj1nbw2xMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759186430; x=1790722430;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version;
 bh=XHgCGzyf/VTowHBracXQrO662LE+mtU7aRFR+Jdongg=;
 b=VHLNYifCVQQSjLhxRNw8+OQN6jrb6XxxChctEPy+9ctpMhJDM7A684//
 5oleUp0tl0SbG/o5J7Srek0ZuygwWrkixn82CXUPT7nb0rbmrqInJuhLp
 z2LoGXc1epT0ZeLnoMUGjS0FLU3eXpDTfhsEmuMXPcUGoDyYYzENs7eCH
 j62MbhQFH3nNlX1NGOZai1plXTd6M8l830j2SY1Eg6ypa5rpa3K2O/Iy9
 CWf8+5Ny8MZl8eO1+O4C7mp+fBrFDz0YnBEXbDMqsEyY/CUzc2SHauexe
 9dZ2pEvnt17oYBwymziI77uByIQnFY4akXdSmPeYVpn+6JmI2NY4opp0S
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VHLNYifC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free
 function for dma_alloc_coherent
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

--------------s8YC5xAGgKNEZTivc4OKXvDr
Content-Type: multipart/mixed; boundary="------------W1T0PlmnfegAt0GGE0hxfVQ5";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, krishneil.k.singh@intel.com,
 alan.brady@intel.com, aleksander.lobakin@intel.com, andrew+netdev@lunn.ch,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>
Message-ID: <1dda14ca-7e58-448e-8b05-e5f6293911f0@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free function
 for dma_alloc_coherent
References: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250925180212.415093-1-alok.a.tiwari@oracle.com>

--------------W1T0PlmnfegAt0GGE0hxfVQ5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 9/25/2025 11:02 AM, Alok Tiwari wrote:
> The mailbox receive path allocates coherent DMA memory with
> dma_alloc_coherent(), but frees it with dmam_free_coherent().
> This is incorrect since dmam_free_coherent() is only valid for
> buffers allocated with dmam_alloc_coherent().
>=20
> Fix the mismatch by using dma_free_coherent() instead of
> dmam_free_coherent
>=20
> Fixes: e54232da1238 ("idpf: refactor idpf_recv_mb_msg")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---

This is tagged for net, not iwl-net. The fix seems obvious to me, and
unlikely to be covered well by validation tests, due to being an error
cleanup flow.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

I don't have an issue with this being taken directly to net, but would
appreciate an ACK by someone from the idpf driver team first to make
sure we're in agreement. Alternatively, if anyone has objection and
would prefer I pick this up for IWL net dev-queue, please let me know.


>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/=
net/ethernet/intel/idpf/idpf_virtchnl.c
> index 6330d4a0ae07..c1f34381333d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -702,9 +702,9 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
>  		/* If post failed clear the only buffer we supplied */
>  		if (post_err) {
>  			if (dma_mem)
> -				dmam_free_coherent(&adapter->pdev->dev,
> -						   dma_mem->size, dma_mem->va,
> -						   dma_mem->pa);
> +				dma_free_coherent(&adapter->pdev->dev,
> +						  dma_mem->size, dma_mem->va,
> +						  dma_mem->pa);
>  			break;
>  		}
> =20


--------------W1T0PlmnfegAt0GGE0hxfVQ5--

--------------s8YC5xAGgKNEZTivc4OKXvDr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaNsN9AUDAAAAAAAKCRBqll0+bw8o6GkE
AP0ZlgGN74jJOJAmmr4x5EtzHYc4zwSU4b1Hbv88RyqhogD/dfoMHJRPFa+sCGgevEOis5F6jPst
6yFF/vTq2CLlPgY=
=ZVph
-----END PGP SIGNATURE-----

--------------s8YC5xAGgKNEZTivc4OKXvDr--
