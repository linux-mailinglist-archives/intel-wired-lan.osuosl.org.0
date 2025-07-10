Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC97B00EE4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 00:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7012881170;
	Thu, 10 Jul 2025 22:43:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SHXTp9uQD47w; Thu, 10 Jul 2025 22:43:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75E90811BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752187409;
	bh=W2LsU5LNPuDh+45yTwsH4w/FaRhcH1P+b0Oa9YCO/DQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w1Nup2/n3+8DrDEi9kd83rxBHpdbEkLDhQgXoAeE0WGkwUqFcC3U8hs6Luez17uUo
	 6Et4LHea/JMXSwtl8/Vv0i6roR6WQCunyU8hUXPJvxTkj1KzyRTmPLSWOwOsq0LNSC
	 /fLepiZiaZU/OS4uikPWdULYW+nMUr1oPteSMjRbn+srvkWaF9itz6KWeArAo7deIq
	 RpIThxyLYeb6PIP47GX1GvAIeX3wfXsqNsU+PwqFUeuk2XCGyimUtTrolIU2D3wNOq
	 rSV8gl1mt7hyModQlvZSN1iFF4wWfnTVydJjzc7JzrHxDbLiaNaCBd7g1Gl/VP1U4Y
	 aH1h/WNz1ZUxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75E90811BF;
	Thu, 10 Jul 2025 22:43:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1F1EB12E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 22:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0500181119
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 22:43:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BIdsQWjHfaoe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jul 2025 22:43:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E68E81105
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E68E81105
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E68E81105
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jul 2025 22:43:26 +0000 (UTC)
X-CSE-ConnectionGUID: ajP3a8l/Sd2rfNLsQqimNg==
X-CSE-MsgGUID: MVctUlKISMaJZXncpGA/+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="53700892"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; 
 d="asc'?scan'208";a="53700892"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 15:43:26 -0700
X-CSE-ConnectionGUID: Babu2aWwQFy6YPx+NJnSTw==
X-CSE-MsgGUID: 7bD/qF05SgyueG3tZL2Wrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; 
 d="asc'?scan'208";a="156557024"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 15:43:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 15:43:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 15:43:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.89)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 15:43:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P0EGMImCHN2XBC4fJj+AOf4RUV4KKawpB2FbZKG1UPw18jS+wD5kktKxZElT1gcg6+xh9pCK/sMTD/WZGw/ucm1LdC4cAZgtGgMTebRf99UQZr0lF+Ug+2nb+OK17l1hWEFmSqDl7WWILlpM3WFAsyvTgMlQvcj426tt5uSf8/HaC0kWYPimO0Ad3tAOARHMzTzub34Co+EId+WtCqp3EIcLFq1ho7bas97FqvZTU6J7D0nkSUiW6XrjzUxM0K4DVZutNobtzMrtxM0GgRCHN64AeBRLVVeQTN45zl4Ie4IfdI5g4YSFxXQir7CGIgnX6vExqjJhFel6n6L0mvSnzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W2LsU5LNPuDh+45yTwsH4w/FaRhcH1P+b0Oa9YCO/DQ=;
 b=X1GJ3SPUDjwmcF4U/T+1dq8be/sE1VZAb0wGDryQ/A8JnqAjMva1N/Sebx2Lw7T8JjWLoYV7HusM//CLsjmHZR47umPe7wg+OgV7PHYR2YUAKB7HOs1RooXcSlelM/Ii/96CaAOtnTvOgQfWbE6mv4LZ+gYWdlbdXyqOPH/QTW6sEstakZUEWxnd/DmUgaSbqhMF8AWYJp+4Cb48ogIlwwifcCFmkEm2XCH1FcCcyKyK38HCKWUWQG03Hi4m1HBr/uuzyY7lI/M5ZteuJXvVUd7mhRvgedPdYQDOVuW0dbefbdfs6FL9DQu/2KsuvAIQ+qofRxJUQwP1JAIH0/q+sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8237.namprd11.prod.outlook.com (2603:10b6:610:154::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Thu, 10 Jul
 2025 22:43:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8901.024; Thu, 10 Jul 2025
 22:43:22 +0000
Message-ID: <90721496-8458-4c57-9d1c-2f2bb4f4325f@intel.com>
Date: Thu, 10 Jul 2025 15:43:20 -0700
User-Agent: Mozilla Thunderbird
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
 <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>
Content-Language: en-US
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hGwId3vuAvfKGR3ON0YdpY2D"
X-ClientProxiedBy: MW4PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:303:b9::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8237:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ca5ce54-3011-4184-64e1-08ddc0032c84
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QkFaT3hCanBHOEJhdFlMNE1tQXc2OCtPNGw5bG5XNndFc0preEoxZWJiWFla?=
 =?utf-8?B?VVNUU3BMWnVtWE5iRjRKZ2swM2RsMmt2NFU2OXJJZURvZXhFRUNiZVRvRWpV?=
 =?utf-8?B?bXl4eE02aHJhd1VHdlJMU0NJeUVkUlkvb21va2dvdVF5ZE5pNEo5QWlHc1BR?=
 =?utf-8?B?d09ROHpSdUk3T0MrTjM2VWZLeVA5Y0JBT2FIWTRrQWh2OXlVbGtjSkF5MW9O?=
 =?utf-8?B?a0lhaXFqZ3BaMDBjUHh3OWJNK0lkVndqSkNmN3MxWTE1WmZURVBJM2VwQlQz?=
 =?utf-8?B?YXQ2RWNMZzJYWm1VWEE4VkpTcGxOMlZOdmYxaGx2ajNuSnZqbk5XMDNSTVpn?=
 =?utf-8?B?cVpWUEl3TWRvRWtYTXJFODhia29VWXZvZjdNOUd1b0Ixbk13WXJjd3RWakFt?=
 =?utf-8?B?bkJZTytMOGJYRS9GMmUxOTEvWkpaWE5HeE5kNkdUT3JNNFRacHdlUEltdExT?=
 =?utf-8?B?bzluUUgxWG14Qms3aWRmOWZGTUtZbjhEcnpwVnlLRTg5bGVUM005WUpnV25V?=
 =?utf-8?B?c3BoYVl4YlIxdTJoanMvN2JuMGRDZDJ1OU1QQnordkdveVhZdFA2Y29kQ0N1?=
 =?utf-8?B?dmJXUlFRRkNsenZGTGNUaFU3ajN6ZEYxQTZpV0M0eWExUVpYanEvMGR5akl3?=
 =?utf-8?B?R3lUUUJtVlltWW9NZWJsY3MwMVUrNkgwR01YZ04xR2VLaWxySXF4U0RrWEUw?=
 =?utf-8?B?dkh1MjNoWHVtQnVBOHZjYWpPT25ZZVF5VkxEK3N2dUMwaFVTN3doQkt2aTlj?=
 =?utf-8?B?SDNIN1FkVkZYaldtR1ZrUlhKMDEvZktsUEpHREhTQmU3QUtCeU1HYmpJWXQ4?=
 =?utf-8?B?ZVNrUmVoVVM3SDVTcyt0TGFuTzFPc3ZxUUpvWjc5OFhEbEF2NnpRanVSK00y?=
 =?utf-8?B?UVFxUU9seTZWQmViVllaeDd0amdOd2JpNi9xSU4wUng2T3Vac0VKZXdGc1pw?=
 =?utf-8?B?WWRHQXpKTEhXTnVldGhqNE9jY2d3WEJZMU05UWswZXJ4TGJmeEJ5dENtb2lW?=
 =?utf-8?B?RTIrTkpjdnhmTEVhY3psbXFqSGdMTDBxU3dxeFhFQjBPUTY1c2gwbWkwNTNa?=
 =?utf-8?B?Sm01NmlWTDByRGpnNy93d1RiczBDa3Q2T3pleDNOeXdKcVNJUU4vTldkckJq?=
 =?utf-8?B?ekdwRnlzODkyRWd5cUovTHpPSDVGanBSdS9iTHBSSW1PMW01azhvUWlPN3Bs?=
 =?utf-8?B?YUFQWkxHTzlBV0tka2dXZktQTDM1QlB1NmlqL1VkVFBkSDcveG5mTFg1Zldw?=
 =?utf-8?B?Zyt1c0FEMnFkNnFhVVZ0Y1oyTVh3SkJkWFVBY3VkcFFjMHdiMTVhZXQrc3Yz?=
 =?utf-8?B?WUM4NGtsNUZkbU5rK2lzbzRES3ZkUHRJVGgrTmxPamNrTnVXejRzMWxNeERs?=
 =?utf-8?B?czFDTEZNK3JkcW8wd3RXNUhyNCtoaFJwclB1L3JhQnArOENYWGt6L3dETFE4?=
 =?utf-8?B?QllxWmI5TXZ3c2tVWkpTZ2VzN0hZdEF2VlRXU2tMUHpHN3pRQVZSbmNMR1Zu?=
 =?utf-8?B?Y0ZyenI2SzAxdHltQUQrQ1hRZ0o2NGRrL2YwRkI0SFFvclhZeWlkaTEybXJM?=
 =?utf-8?B?WXRrYmZ4TlllRk8yN2FBZ3hxQWtUak93cGRzQlBLNWpVY1RYVVR1bnFKN0Zp?=
 =?utf-8?B?N3VSTStFdUhBaFQzN1MvdjdqMFJoZmViL2x1UUtnMW5aQlkxUjgyN0lrREdx?=
 =?utf-8?B?Z2ZiNUhQQkhvU0M3c2ZqQXFqSFJYTUhUTkZvQnltaDBqT2QwRjZCNEM1Ui9Y?=
 =?utf-8?B?eWswRzJmdCtjczFNMnlFYnVtdTFCUVZ0djNDdkhqek4zSWIzSXJ4TWdWNDhu?=
 =?utf-8?B?ejYySzJoczdFZHBmVU0vUXVoNnlGTUFmZGs5VzBwMFI0ZktRMlBFaHJqVzY5?=
 =?utf-8?B?YnFhaGNQLzU3QWxMK09MVGVOZXB4L2psYlRjL1NLaFNiU3VLREp5RGhEM255?=
 =?utf-8?Q?RlzTKhrFrW8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDJQM21hWU9LVU95YVJSWk1sbE5EVks0M2o2Q21md2ZhcVFjTVd1R0srMTNR?=
 =?utf-8?B?dE9RVUhWdzZ3bUNLVGRMdXZzTGxrRGx5RUM4aE9PTGorU0pXaGoxTTVmRE9U?=
 =?utf-8?B?aEFqQWVhdVRlQ25xYlZaaWRRZGdKMjdLYjJUTHlaNHJ0ZGp1OFhONFdXTHdn?=
 =?utf-8?B?b0tEOTRVNXUxN2JwQXU1SGNrQXBaa2RPOThlck5nT0E5TDAwZEdFV000dFI3?=
 =?utf-8?B?YzNaaU1RYVpxU3pvblBZazZtRkN2b0ZFWHZidDJ3emZlSTEya3JoV0RpY1A5?=
 =?utf-8?B?QkZYbDlpSHZBaUM4WEtXd0VGQVRCMGdEOFd1aUFHUTdOSTlKYnFBdXFmbnVo?=
 =?utf-8?B?WlFXNmJsMmozbmwwWkgvUlpxdVhFQzAwdU5NUW5GVDdoeDRMWHg4TUVrejNS?=
 =?utf-8?B?TGJoSzk5bEpWN0hJUGJzT3VGbE9nM21yK1JnQmVpeHJkYVVvdnE4SGdkdW5p?=
 =?utf-8?B?b0FZcDhWK1YyMUg0WDNHSlJ3YmdrcGlTRjVpUWZQZnlGZ0Z2U1dsQjFUbzlT?=
 =?utf-8?B?c0hqRjRqL1E1RzBGaTlBYnUzcnh4Ujc1MkdHOG5KR0tlaUFseVdQWGRjOXJz?=
 =?utf-8?B?RGphUGlMVWNCeE9CWnE2VHNOeDR3S0pSand5eDg2NzloeCtIN204YWlLUGRp?=
 =?utf-8?B?WWF4TzNhUlVGZklPQUc4cmswdGlGeTlMYUxoZllrTVA2VG1oYXhOVC9EcXAy?=
 =?utf-8?B?OE1CaTdhRDNqK013NTRVK3dBSmdCNi81ZnNyR0h2cnFkcWhvYmJaQVVxWWVT?=
 =?utf-8?B?cjU1WTRDU1YwYWJ3eVpXZnpVMi9xbjNaWG4zOGsyclZZeE8vUmJ6dDVmSDFJ?=
 =?utf-8?B?aDRxUUUyZ0pwNzlqZC84YUFKcUlJSFp4dkpkb29ycFNoMG4rT01kbExxZ2lL?=
 =?utf-8?B?UDcxRThDNGtzaWJBVVROSHZiOHFlMTYwb0xidHc2SVMvLzEyTE5lekUwRnZD?=
 =?utf-8?B?UEtCVHJoNFZMZ2FiNHNwSjE0K1hBL2lzVHlZWTNIc08xSWxjUHlNUjlEYkNB?=
 =?utf-8?B?Tm4zOE1ROG9hb3NoSGM3cDAzL0M2S0JTeUhqYlFrWVVkV1RSdUplaDloYm9z?=
 =?utf-8?B?bkpJamFnQXFrRGVFcUtpUmNhRVNqNUgzakNuekVnUHVhY09sUGx6RHo5TURJ?=
 =?utf-8?B?WmVFUXJLalkvaGRuQUo2RkZudGhzTTFxc1cwbTZUeHVEblREWnlheTJsbDJD?=
 =?utf-8?B?VEQ5TE5CNFgyQXF5TlNBZUt3VktOSjhJU3p2ZlhvZTlGckxJdkxOek5JMVgr?=
 =?utf-8?B?ZjZtUzl3ZzZiODlSSG9xMWdNdEdzVXh5RGJKZG9pVHIzNWt4U2luMjBTQWtw?=
 =?utf-8?B?QU8rME8vN2JESDd2bSt4WjVWNVgwNEpibEtOczd4cDFYMDJRTG45eTVZb2xR?=
 =?utf-8?B?bDhWTHJwMmFSWHJtSE1FeHloSUNhZ3poRENYTnZBUEFHMFVyTHJHN1d5ckVx?=
 =?utf-8?B?dUo1QndOU2RnWWJNV2lVNXA2OGZtdFNYazRGRXZYRzhPUDh2SWxyVmdXSFhq?=
 =?utf-8?B?ZzN4MVFyME1LdXVyWnlTTWtZb1lMUVI2ZjV0UXhXT1ZwSDR6RVV6c0IxU0tH?=
 =?utf-8?B?YjFTNmVCK214V3hMWnlBMjRjY2ZMSXhVVkxYcXQ3WVlPaFJITnUrY2UxdjVB?=
 =?utf-8?B?WmRaNWI3b3o4aTk4Rk5pdHo4ZFc3OGZzTlduRkFVczNjZ3FBMHgzKzdQUzZL?=
 =?utf-8?B?U1RkYTlZc0Fxd1haL2NvNWwrRFRidzhuMlVhcHlDUUltYlJrdG9GUVFRZFVx?=
 =?utf-8?B?bmovNy8wb1REbkJjcmgrNHVGMWIyT1hjR2ZiaENTN085R3BHZlZvR0hPR1Jx?=
 =?utf-8?B?NGoyUTBNMThYWTlncXV2SEhVN3V4REFBSnhyWXZjSlpWbkk4bjA4SDByWkF3?=
 =?utf-8?B?OHhhcWNoNzFuNWQzQkdhWFJKanM4TXJqanVnMFlyUTZpMktaeDRmTmhrTlFh?=
 =?utf-8?B?c3VBc1htNy82bjd2bEt4NHBpQ0ZWeWxrSE52UmgwR3VRRXAzYTFabGVqTWVp?=
 =?utf-8?B?RStuRmQyOE50TXEvVWxacEcxalJsaU51ZU5kT0gyMHMrL2FKcDMzMy9ici9u?=
 =?utf-8?B?bEVlT1Jka1c1dDBmRjUrRmJya1p1bjM1aGpuN3pPRURNcmNjSGliL2M0RGhO?=
 =?utf-8?B?VmpwRlpzU05xcTZDRnBWQjBMT0FYSG40S2pmWDhuSndXb1dnaUd6aEpsR0N6?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca5ce54-3011-4184-64e1-08ddc0032c84
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2025 22:43:22.2578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /KTVHWWCQ9LIafHVQWzEeWD67VlTWF6KvncQLhFkM4MkgI7bpeP3rR/+qdmZPuW0QoBrtkLYS273gPy/6LHNiBwtX0tD6NoYHSRNNUSy9eM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752187407; x=1783723407;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:mime-version;
 bh=4x+MZB6H1QGmV7VE3ExqUcLDalJXwvrJhVwHiJxIWDc=;
 b=QozoNdpzWn3LvnqOe8t4pqd65CfX4S2sIMD8G8vgC1hfW9I38oeScTPe
 2sDbi58WfcpqJVLCgbJzaVn6i81azW8j72jWi5N0Qk/5Tz/Ghk49UGkpJ
 S7YLSTjEZF7Cu/I6JzY8XZ3LSkhccFZumXBQt/4Tc1BzPonk2gRHnx2l7
 xxxcVX5yM+McDdbLwcC/GyvTJvGr+fklFWgRd48H0fySpEfIJnyIM3oG6
 R79BmonQK6e+YjRKqelr4esQz/JVqr776LSoeAF/qIM6yYjVmco9On8i9
 BroN9iRzufIp6MWkT0EKl8SvVL297IC0To3Afv7jitx58U3Nu65QrxJt5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QozoNdpz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
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

--------------hGwId3vuAvfKGR3ON0YdpY2D
Content-Type: multipart/mixed; boundary="------------18ojb9XPNQ3Ypjqp1qhEvDUP";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com
Message-ID: <90721496-8458-4c57-9d1c-2f2bb4f4325f@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
References: <20250704161859.871152-1-michal.kubiak@intel.com>
 <7bbc6b88-760a-4158-bb65-8058393a731d@intel.com>
 <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>
In-Reply-To: <5a48f9b2-9a7f-4887-919c-cd99d8468c44@intel.com>

--------------18ojb9XPNQ3Ypjqp1qhEvDUP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 7/7/2025 4:36 PM, Jacob Keller wrote:
>> I tried to apply these and test them, but I ran into several issues :(=

>>
>> The iperf3 session starts with some traffic and then very quickly dies=

>> to zero:
>>
>>> [  5]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>>> [  8]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 10]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 12]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 14]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>>> [SUM]   4.00-5.00   sec  0.00 Bytes  0.00 bits/sec
>>> - - - - - - - - - - - - - - - - - - - - - - - - -
>>> [  5]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>>> [  8]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 10]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 12]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 14]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>>> [SUM]   5.00-6.00   sec  0.00 Bytes  0.00 bits/sec
>>> - - - - - - - - - - - - - - - - - - - - - - - - -
>>> [  5]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>>> [  8]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 10]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 12]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 14]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>>> [SUM]   6.00-7.00   sec  0.00 Bytes  0.00 bits/sec
>>> - - - - - - - - - - - - - - - - - - - - - - - - -
>>> [  5]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>>> [  8]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 10]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 12]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 14]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>>> [SUM]   7.00-8.00   sec  0.00 Bytes  0.00 bits/sec
>>> - - - - - - - - - - - - - - - - - - - - - - - - -
>>> [  5]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>>> [  8]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 10]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 12]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>>> [ 14]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>>> [SUM]   8.00-9.00   sec  0.00 Bytes  0.00 bits/sec
>>> - - - - - - - - - - - - - - - - - - - - - - - - -
>>> [  5]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>>> [  8]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>>> [ 10]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>>> [ 12]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>>> [ 14]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>>> [SUM]   9.00-10.00  sec  0.00 Bytes  0.00 bits/sec
>>

I got this to work with the following diff:

diff --git i/drivers/net/ethernet/intel/ice/ice_txrx.h
w/drivers/net/ethernet/intel/ice/ice_txrx.h
index 42e74925b9df..6b72608a20ab 100644
--- i/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ w/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -342,7 +342,6 @@ struct ice_rx_ring {
        struct ice_tx_ring *xdp_ring;
        struct ice_rx_ring *next;       /* pointer to next ring in
q_vector */
        struct xsk_buff_pool *xsk_pool;
-       u32 nr_frags;
        u16 rx_buf_len;
        dma_addr_t dma;                 /* physical address of ring */
        u8 dcb_tc;                      /* Traffic class of ring */
diff --git i/drivers/net/ethernet/intel/ice/ice_txrx.c
w/drivers/net/ethernet/intel/ice/ice_txrx.c
index 062291dac99c..403b5c54fd2a 100644
--- i/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ w/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -831,8 +831,7 @@ static int ice_clean_rx_irq(struct ice_rx_ring
*rx_ring, int budget)

                /* retrieve a buffer from the ring */
                rx_buf =3D &rx_ring->rx_fqes[ntc];
-               if (!libeth_xdp_process_buff(xdp, rx_buf, size))
-                       break;
+               libeth_xdp_process_buff(xdp, rx_buf, size);

                if (++ntc =3D=3D cnt)
                        ntc =3D 0;
@@ -852,25 +851,18 @@ static int ice_clean_rx_irq(struct ice_rx_ring
*rx_ring, int budget)

                xdp->data =3D NULL;
                rx_ring->first_desc =3D ntc;
-               rx_ring->nr_frags =3D 0;
                continue;
 construct_skb:
                skb =3D xdp_build_skb_from_buff(&xdp->base);
+               xdp->data =3D NULL;
+               rx_ring->first_desc =3D ntc;

                /* exit if we failed to retrieve a buffer */
                if (!skb) {
-                       rx_ring->ring_stats->rx_stats.alloc_page_failed++=
;
-                       xdp_verdict =3D ICE_XDP_CONSUMED;
-                       xdp->data =3D NULL;
-                       rx_ring->first_desc =3D ntc;
-                       rx_ring->nr_frags =3D 0;
+                       rx_ring->ring_stats->rx_stats.alloc_buf_failed++;=

                        break;
                }

-               xdp->data =3D NULL;
-               rx_ring->first_desc =3D ntc;
-               rx_ring->nr_frags =3D 0;
-
                stat_err_bits =3D BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
                if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
                                              stat_err_bits))) {


--->8---

The essential change is to not break if libeth_xdp_process_buff returns
false, since we still need to move the ring forward in this case, and
the usual reason it returns false is the zero-length descriptor we
sometimes get when using larger MTUs.

I also dropped some of the updates and re-ordered how we assign
xdp->data, and fixed the bug with the ring stats using alloc_page_failed
instead of alloc_buf_failed like we should have. I think this could be
further improved or cleaned up, but might be better to wait until the
full usage of the XDP helpers.

Regardless, we need something like this to fix the issues with larger MTU=
=2E

--------------18ojb9XPNQ3Ypjqp1qhEvDUP--

--------------hGwId3vuAvfKGR3ON0YdpY2D
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaHBCCAUDAAAAAAAKCRBqll0+bw8o6Dqs
AQCsKSf2cAUW53quQrjXM8K4DGtTIi8E7vJ/lTCHIc5JIwD/flQ9TmqQm0KcEP7I6KkGWziq79kM
YpAS68Ts4PaMWw0=
=gsdd
-----END PGP SIGNATURE-----

--------------hGwId3vuAvfKGR3ON0YdpY2D--
